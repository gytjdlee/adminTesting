from __future__ import unicode_literals
from django.http import HttpResponse
from django.shortcuts import render
from datetime import datetime

# Create your views here.
def adminAccount(request):
    return render(request, 'adminAccount.html')