from __future__ import unicode_literals
from django.http import HttpResponse
from django.shortcuts import render
from datetime import datetime

def login(request):
    return render(request, 'login.html')
