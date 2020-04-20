from __future__ import unicode_literals
from django.http import HttpResponse
from django.shortcuts import render, redirect
from datetime import datetime
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.urls import reverse_lazy
from bootstrap_modal_forms.generic import BSModalCreateView, BSModalUpdateView, BSModalDeleteView

from .models import *
from .forms import *

# faq_list = Faq.objects.filter(faq_id="test@test.com")
# Create your views here.

def account(request):
    if request.method == 'POST':
        account_requestor = request.POST['account_requestor']
        account_devteam = request.POST['account_devteam']
        account_svr = request.POST['account_svr']
        account_user = request.POST['account_user']
        account_host = request.POST['account_host']
        account_grant = request.POST['account_grant']
        account_db = request.POST['account_db']
        account_table = request.POST['account_table']
        account_url = request.POST['account_url']

        print("input val : " + account_user)

        account_list = Account.objects.filter(
            account_requestor__startswith=account_requestor,
            account_devteam__startswith=account_devteam,
            account_svr__startswith=account_svr,
            account_user__contains=account_user,
            account_host__startswith=account_host,
            account_grant__contains=account_grant,
            account_db__startswith=account_db,
            account_table__startswith=account_table,
            account_url__contains=account_url,
            account_del_yn='N' # 계정 삭제여부

        ).order_by('-id')

        page = request.GET.get('page')
        pagelist = request.GET.get('pagelist')

        if pagelist is None:
            pagelist = 10

        print(pagelist)
        paginator = Paginator(account_list, pagelist)
        accounts = paginator.get_page(page)
        context = {'accounts': accounts, 'pagelist': pagelist}
        return render(request, 'adminAccount.html', context)

    else:
        #account_list = Account.objects.all().order_by('-id')
        page = request.GET.get('page')
        pagelist = request.GET.get('pagelist')

        if pagelist is None:
            pagelist = 10

        #print("test" + pagelist)
        print(pagelist)

        account_list = Account.objects.filter(account_del_yn='N').order_by('-id')
        paginator = Paginator(account_list, pagelist)
        accounts = paginator.get_page(page)
        context = {'accounts': accounts, 'pagelist': pagelist}
        return render(request, 'adminAccount.html', context)


def account_insert(request):
    if request.method == 'POST':
        form = AccountForm(request.POST)
        if form.is_valid():
            modify_form = form.save(commit=False)

            modify_form.account_sql = "/*" + form.cleaned_data['account_url'] + \
            "*/" + " grant " + form.cleaned_data['account_grant'] + " on " + \
            form.cleaned_data['account_db'] + "." + form.cleaned_data['account_table'] + \
            " to " + "'" + form.cleaned_data['account_user'] + "'@'" + form.cleaned_data['account_host'] + \
            "' identified by '" + form.cleaned_data['account_pass'] + "';"

            # ex) /*ARCG-9999*/grant select, insert, update, delete on admdb.* to 'deal_detail'@'10.11.12.%' identified by 'password';
            #print(modify_form.account_sql)

            #modify_form.account_sql = form.cleaned_data['account_svr']+' show '+form.cleaned_data['account_user']
            #print("============ 'sql' :" + modify_form.account_sql)

            modify_form.save()
            return redirect('/adminAccount')
        else:
            print('test')
            return redirect('/adminAccount')

    else:
        form = AccountForm()

    return render(request, 'adminAccount.html', {'form': form})

#def account_update(request):
#    if request.method == 'POST':
#        account = Account.objects.get(id = request.POST['id'])
#        form = AccountForm(request.POST)
#
#        if form.is_valid():
#            print(form.cleaned_data)
#
#        return redirect('/adminAccount')
#
#    else:
#        form = AccountForm()
#
#    return render(request, 'adminAccount.html', {'form': form})

def account_update(request):
    if request.method == 'POST':
        account = Account.objects.get(id=request.POST['id'])
        form = AccountUpdateForm(request.POST)

        if form.is_valid():
            account.account_update_dt = datetime.now()
            account.account_requestor = form.cleaned_data['account_requestor']
            account.account_devteam = form.cleaned_data['account_devteam']
            account.account_svr = form.cleaned_data['account_svr']
            account.account_user = form.cleaned_data['account_user']
            account.account_host = form.cleaned_data['account_host']
            account.account_pass = form.cleaned_data['account_pass']
            account.account_grant = form.cleaned_data['account_grant']
            account.account_grant_with = form.cleaned_data['account_grant_with']
            account.account_db = form.cleaned_data['account_db']
            account.account_table = form.cleaned_data['account_table']
            account.account_info = form.cleaned_data['account_info']
            account.account_url = form.cleaned_data['account_url']

            account.account_sql = "/*" + form.cleaned_data['account_url'] + \
                                  "*/" + " grant " + form.cleaned_data['account_grant'] + " on " + \
                                  form.cleaned_data['account_db'] + "." + form.cleaned_data['account_table'] + \
                                  " to " + "'" + form.cleaned_data['account_user'] + "'@'" + form.cleaned_data[
                                      'account_host'] + \
                                  "' identified by '" + form.cleaned_data['account_pass'] + "';"
            account.save()

        return redirect('/adminAccount')

    else:
        form = AccountForm()

    return render(request, 'adminAccount.html', {'form': form})

def account_delete(request):
    if request.method == 'POST':
        account = Account.objects.get(id = request.POST['id']) # pk에 해당하는 업데이트 대상을 가져옴
        form = AccountDelForm(request.POST) # 입력값 가져옴

        if form.is_valid():
            print(form.cleaned_data) # 콘솔 찍기. 디버깅

            account.account_del_yn = 'Y'
            account.account_update_dt = datetime.now()
            account.account_del_dt = datetime.now()
            account.account_del_reason = form.cleaned_data['account_del_reason']
            account.account_del_note = form.cleaned_data['account_del_note']
            account.save()

        return redirect('/adminAccount')

    else:
        form = AccountForm()

    return render(request, 'adminAccount.html', {'form': form})


def account_fast_select(request):
    if request.method == 'POST':
        account_user = request.POST['account_user']
        #print("input val : " + account_user)
        account_list = Account.objects.filter(
            account_user__contains=account_user,
            account_del_yn = 'N'  # 계정 삭제여부
        ).order_by('-id')

        paginator = Paginator(account_list, 10)
        page = request.GET.get('page')
        accounts = paginator.get_page(page)
        context = {'accounts': accounts}
        return render(request, 'adminAccount.html', context)

    else:
        #account_list = Account.objects.all().order_by('-id')
        account_list = Account.objects.filter(account_del_yn='N').order_by('-id')
        paginator = Paginator(account_list, 10)
        page = request.GET.get('page')
        accounts = paginator.get_page(page)
        context = {'accounts' : accounts}
        return render(request, 'adminAccount.html', context)

def account_selectDel(request):
    faq_list = Faq.objects.filter(faq_id="test@test.com")
    paginator = Paginator(faq_list, 10)
    page = request.GET.get('page')
    faqs = paginator.get_page(page)
    context = {'faqs': faqs}
    return render(request, 'adminAccount_selectDel.html', context)

def account_fn_search(request):
    if request.method == 'POST':
        faq_list = Faq.objects.filter(faq_id="test@test.com")
        paginator = Paginator(faq_list, 10)
        page = request.GET.get('page')
        faqs = paginator.get_page(page)
        context = {'faqs' : faqs}
    return render(request, 'adminAccount.html', context)
