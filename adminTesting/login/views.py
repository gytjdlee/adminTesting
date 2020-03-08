from __future__ import unicode_literals
from django.http import HttpResponse
from django.shortcuts import render
from datetime import datetime
from django.contrib.auth.models import User
from django.contrib import auth

def loginHome(request):
    return render(request, 'login.html')


def login(request):
     if request.method == "1POST":
         username = request.POST['inputAccount']
         password = request.POST['inputPassword']
         user = auth.authenticate(request, username=username, password=password)
         if user is not None:
            auth.login(request, user)
            return redirect('home')
         else:
             return render(request, 'login.html', {'error': 'username or password is incorrect'})
     else:
         return render(request, 'login_imsi.html')

def logout(request):
    auth.logout(request)
    return redirect('home')

def loginimsi(request):
    return render(request, 'login_imsi.html')
