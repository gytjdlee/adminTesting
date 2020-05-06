from __future__ import unicode_literals
from django.http import HttpResponseRedirect
from django.shortcuts import render, redirect
from datetime import datetime
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.urls import reverse_lazy
from bootstrap_modal_forms.generic import BSModalCreateView, BSModalUpdateView, BSModalDeleteView

from .models import *
from .forms import FaqForm



# Create your views here.
def index(request):
    faq_list = Faq.objects.all()
    paginator = Paginator(faq_list, 15)
    page = request.GET.get('page')
    faqs = paginator.get_page(page)
    context = {'faqs' : faqs}
    return render(request, 'index.html', context)

def home(request):
    return render(request, 'main.html')


# 테스팅 용도
def get_key():
    with open('static/other/keyfile.lst', encoding='utf-8') as txtfile:
        for row in txtfile.readlines():
            key = row

    return key

def test(request):
    if request.method == 'POST':
        faq_id= request.POST['faq_id']
        faq_type= request.POST['faq_type']
        faq_question= request.POST['faq_question']
        faq_answer= request.POST['faq_answer']

        faq_list = Faq.objects.filter(
            faq_id__startswith=faq_id,
            faq_type__startswith=faq_type,
            faq_question__startswith=faq_question,
            faq_answer__startswith=faq_answer
        ).order_by('-id')

        #faq_list = Faq.objects.raw('SELECT id, faq_id, faq_type, PASSWORD(faq_question) as faq_question, faq_answer FROM home_faq order by 1 desc')

        paginator = Paginator(faq_list, 15)
        page = request.GET.get('page')
        faqs = paginator.get_page(page)
        context = {'faqs': faqs}
        return render(request, 'test.html', context)

    else:
        faq_list = Faq.objects.all().order_by('-id')
        paginator = Paginator(faq_list, 15)
        page = request.GET.get('page')
        faqs = paginator.get_page(page)
        context = {'faqs': faqs}
        return render(request, 'test.html', context)

    #return render(request, 'test1.html', { 'form': form })

def test_insert(request):
    if request.method == 'POST':
        form = FaqForm(request.POST)
        if form.is_valid():
            form.save()
        return redirect('/home/test')
    else:
        form = FaqForm()

    return render(request, 'test.html', {'form': form})


def test_delete(request):
    if request.method == 'POST':
        getObject= Faq.objects.get(id = request.POST['id'])
        getObject.delete()
        return redirect('/home/test')

    return render(request, 'test.html')

def test_update(request):
    if request.method == 'POST':
        getObject = Faq.objects.get(id = request.POST['id']) # pk에 해당하는 업데이트 대상을 가져옴
        form = FaqForm(request.POST) # 입력값 가져옴

        if form.is_valid():
            #print(form.cleaned_data) # 콘솔 찍기. 디버깅

            getObject.faq_id = form.cleaned_data['faq_id']
            getObject.faq_type = form.cleaned_data['faq_type']
            getObject.faq_question = form.cleaned_data['faq_question']
            getObject.faq_answer = form.cleaned_data['faq_answer']
            getObject.save()

        return redirect('/home/test')

    else:
        form = FaqForm()

    return render(request, 'test.html', {'form': form})


########################################################################

def test1(request):
    #faq_list = Faq.objects.filter(faq_id="test@test.com")
    faq_list = Faq.objects.all()
    paginator = Paginator(faq_list, 15)
    page = request.GET.get('page')
    faqs = paginator.get_page(page)
    context = {'faqs': faqs}
    return render(request, 'test.html', context)

def testGraph(request):
    return render(request, 'testGraph.html')


# AJAX UnLimit Scrolling Test

def post_list(request):
    post_list = Post.objects.all().order_by('-id')
    paginator = Paginator(post_list, 15)
    page = request.POST.get('page')

    try:
        post_list = paginator.page(page)
    except PageNotAnInteger:
        post_list = paginator.page(1)
    except EmptyPage:
        post_list = paginator.page(paginator.num_pages)

    context = {'post_list':post_list}
    return render(request, 'post_list.html', context)

def post_list_ajax(request): #Ajax 로 호출하는 함수
    post_list = Post.objects.all().order_by('-id')
    paginator = Paginator(post_list, 15)
    page = request.POST.get('page')

    #faqs = paginator.get_page(page)

    try:
        if int(page) > paginator.num_pages:
            post_list = Post.objects.filter(id=30000)
        else:
            post_list = paginator.get_page(page)

    except PageNotAnInteger:
        post_list = paginator.get_page(1)
    except EmptyPage:
        post_list = paginator.get_page(paginator.num_pages)

    context = {'post_list':post_list}
    return render(request, 'post_list_ajax.html', context) #Ajax 로 호출하는 템플릿은 _ajax로 표시


def post_detail(request,post_id):
    post = get_object_or_404(Post, pk=post_id)
    post.read += 1
    post.save()
    context = {'post':post}
    return render(request, 'post/post_detail.html', context)

def post_search(request):
    if request.method == 'POST':
        search_text = request.POST['search_text']
    else:
        search_text = ''
    post_list = Post.objects.filter(Q(title__contains = search_text) | Q(content__contains = search_text))
    context = { 'post_list': post_list }
    return render(request, 'post/ajax_result.html', context)
