# Create your models here.
from django import forms
from .models import *
from bootstrap_modal_forms.forms import BSModalForm

# Create your models here.

class AccountForm(forms.ModelForm):
    class Meta:
        model = Account
        fields = ['account_requestor', 'account_svr', 'account_user', 'account_host', 'account_pass', 'account_grant',
                  'account_db', 'account_table', 'account_info', 'account_url']

#class PostForm(forms.ModelForm):

#    class Meta:
#        model = Post
#        fields = ('title', 'text',)
