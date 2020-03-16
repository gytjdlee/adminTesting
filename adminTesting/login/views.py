from __future__ import unicode_literals
from django.http import HttpResponse
from django.shortcuts import render
from datetime import datetime
from django.contrib.auth.models import User
from django.contrib import auth

def loginHome(request):
    return render(request, 'login.html')


def login(request):
     if request.method == "post":

         username = request.POST['v_Account']
         password = request.POST['v_Password']

         user = auth.authenticate(request, username=username, password=password)

         if user is not None:
            auth.login(request, user)
            return redirect('')
         else:
             return render(request, 'login.html', {'error': 'username or password is incorrect'})
     else:
         return render(request, 'login_imsi.html')

def logout(request):
    auth.logout(request)
    return redirect('')

def loginimsi(request):
    return render(request, 'login_imsi.html')
