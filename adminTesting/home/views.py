from __future__ import unicode_literals
from .models import Faq
from .form import PostForm
from django.http import HttpResponse
from django.shortcuts import render
from datetime import datetime
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

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
    paginator = Paginator(faq_list, 5)
    page = request.GET.get('page')
    faqs = paginator.get_page(page)
    context = {'faqs' : faqs}
    return render(request, 'index.html', context)

    #return render(request, 'home/templates/index.html', {'message': msg})

def main(request):
    return render(request, 'main.html')

def test(request):
    return render(request, 'test.html')
#def list_faq(request):

#    faq_list = Faq.objects.all()
#    paginator = Paginator(faq_list, 4)
#    page = request.GET.get('page')
#    faqs = paginator.get_page(page)

#    context = {'faqs' : faqs}
#    return render(request, 'list_faqs.html', context)

def post(request):
    form = PostForm()
    return render(request, 'main.html', {"form":form})

