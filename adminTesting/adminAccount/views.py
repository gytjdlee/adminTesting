from __future__ import unicode_literals
from .models import Faq
from django.http import HttpResponse
from django.shortcuts import render
from datetime import datetime
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

# Create your views here.
def adminAccount(request):
    faq_list = Faq.objects.all()
    paginator = Paginator(faq_list, 10)
    page = request.GET.get('page')
    faqs = paginator.get_page(page)
    context = {'faqs' : faqs}
    return render(request, 'adminAccount.html', context)

def adminAccount_select(request):
    return render(request, 'adminAccount_Select.html')

