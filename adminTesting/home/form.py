from django import forms
from .models import userInfo

class PostForm(forms.Form): #forms의 ModelForm 클래스를 상속 받는다.

    class Meta:
        model = userInfo
        fields = ('userId','userPassword',)