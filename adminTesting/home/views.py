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
        v_id = request.POST['v_id']

        faq_list = Faq.objects.filter(faq_id__startswith=v_id)
        paginator = Paginator(faq_list, 10)
        page = request.GET.get('page')
        faqs = paginator.get_page(page)
        context = {'faqs': faqs}
        return render(request, 'test.html', context)

    else:
        faq_list = Faq.objects.all()
        paginator = Paginator(faq_list, 10)
        page = request.GET.get('page')
        faqs = paginator.get_page(page)
        context = {'faqs': faqs}
        return render(request, 'test.html', context)

    #return render(request, 'test1.html', { 'form': form })

########################################################################

#return render(request, 'dojo/post_form.html',{ 'form': form })
#class FaqForm(forms.ModelForm):
#    faq_id = forms.CharField()

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

def post(request):
    form = FaqForm()
    return render(request, 'main.html', {"form":form})





