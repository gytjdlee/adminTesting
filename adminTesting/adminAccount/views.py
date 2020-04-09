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
            account_user__startswith=account_user,
            account_host__startswith=account_host,
            account_grant__contains=account_grant,
            account_db__startswith=account_db,
            account_table__startswith=account_table,
            account_url__contains=account_url
        ).order_by('-id')

        paginator = Paginator(account_list, 10)
        page = request.GET.get('page')
        accounts = paginator.get_page(page)
        context = {'accounts': accounts}
        return render(request, 'adminAccount.html', context)

    else:
        account_list = Account.objects.all().order_by('-id')
        paginator = Paginator(account_list, 10)
        page = request.GET.get('page')
        accounts = paginator.get_page(page)
        context = {'accounts' : accounts}
        return render(request, 'adminAccount.html', context)


def account_insert(request):
    if request.method == 'POST':
        form = AccountForm(request.POST)
        if form.is_valid():
            form.save()
        return redirect('/adminAccount')
    else:
        form = AccountForm()

    return render(request, 'adminAccount.html', {'form': form})

def account_update(request):
    return render(request, 'adminAccount_Select.html')

def account_delete(request):
    return render(request, 'adminAccount_Select.html')


def account_fast_select(request):
    if request.method == 'POST':
        account_user = request.POST['account_user']
        #print("input val : " + account_user)
        account_list = Account.objects.filter(
            account_user__startswith=account_user
        ).order_by('-id')

        paginator = Paginator(account_list, 10)
        page = request.GET.get('page')
        accounts = paginator.get_page(page)
        context = {'accounts': accounts}
        return render(request, 'adminAccount.html', context)

    else:
        account_list = Account.objects.all().order_by('-id')
        paginator = Paginator(account_list, 10)
        page = request.GET.get('page')
        accounts = paginator.get_page(page)
        context = {'accounts' : accounts}
        return render(request, 'adminAccount.html', context)

def account_select(request):
    faq_list = Faq.objects.filter(faq_id="test@test.com")
    paginator = Paginator(faq_list, 10)
    page = request.GET.get('page')
    faqs = paginator.get_page(page)
    context = {'faqs': faqs}
    return render(request, 'adminAccount_Select.html', context)

def account_fn_search(request):
    if request.method == 'POST':
        faq_list = Faq.objects.filter(faq_id="test@test.com")
        paginator = Paginator(faq_list, 10)
        page = request.GET.get('page')
        faqs = paginator.get_page(page)
        context = {'faqs' : faqs}
    return render(request, 'adminAccount.html', context)
