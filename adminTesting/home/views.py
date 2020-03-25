from __future__ import unicode_literals
from django.http import HttpResponseRedirect
from django.shortcuts import render, redirect
from datetime import datetime
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

from .models import *
from .forms import FaqForm

# Create your views here.
def index(request):
    #return HttpResponse("Hello, World!")

    #f1 = Faq(faq_id='test@test.com', faq_type='Q', faq_question='Hi', faq_answer='N')
    #f1.save()

    #faqs = Faq.objects.all()
    #context = {'faqs' : faqs}
    #msg = 'My Message'

    #return render(request, 'index.html', context)

    faq_list = Faq.objects.all()
    paginator = Paginator(faq_list, 10)
    page = request.GET.get('page')
    faqs = paginator.get_page(page)
    context = {'faqs' : faqs}
    return render(request, 'index.html', context)

    #return render(request, 'home/templates/index.html', {'message': msg})



def home(request):
    return render(request, 'main.html')



# 테스팅 용도

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

        paginator = Paginator(faq_list, 10)
        page = request.GET.get('page')
        faqs = paginator.get_page(page)
        context = {'faqs': faqs}
        return render(request, 'test.html', context)

    else:
        faq_list = Faq.objects.all().order_by('-id')
        paginator = Paginator(faq_list, 10)
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


########################################################################

def test1(request):
    #faq_list = Faq.objects.filter(faq_id="test@test.com")
    faq_list = Faq.objects.all()
    paginator = Paginator(faq_list, 10)
    page = request.GET.get('page')
    faqs = paginator.get_page(page)
    context = {'faqs': faqs}
    return render(request, 'test.html', context)

def testGraph(request):
    return render(request, 'testGraph.html')

