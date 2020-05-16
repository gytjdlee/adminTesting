from __future__ import unicode_literals
from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.urls import reverse
from datetime import datetime
from django.contrib.auth.models import User
from django.contrib import auth

def loginHome(request):
    return render(request, 'login.html')

def login(request):
     if request.method == 'POST':
         v_Account = request.POST['v_Account']
         v_Password = request.POST['v_Password']
         user = auth.authenticate(request, username=v_Account, password=v_Password)

         if user is not None:
            auth.login(request, user)
            return redirect(reverse('home'))
         else:
             return render(request, 'login.html', {'error': '계정 또는 패스워드가 부정확합니다.'})
     else:
         return render(request, 'login.html')

def logout(request):
    auth.logout(request)
    return redirect('/')
