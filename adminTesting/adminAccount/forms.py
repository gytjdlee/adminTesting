# Create your models here.
from django import forms
from .models import *
from bootstrap_modal_forms.forms import BSModalForm

# Create your models here.

#########################################################################
# account
#########################################################################
# account insert
class AccountForm(forms.ModelForm):
    class Meta:
        model = Account
        fields = ['account_requestor', 'account_devteam', 'account_svr', 'account_user', 'account_host', 'account_pass', 'account_grant',
                  'account_db', 'account_table', 'account_info', 'account_url']
# account delete
class AccountDelForm(forms.ModelForm):
    class Meta:
        model = Account
        fields = ['account_requestor', 'account_svr', 'account_user', 'account_host', 'account_pass', 'account_grant',
                  'account_db', 'account_table', 'account_info', 'account_url', 'account_del_reason', 'account_del_note']
# account update
class AccountUpdateForm(forms.ModelForm):
    class Meta:
        model = Account
        fields = ['account_requestor', 'account_devteam', 'account_svr', 'account_user', 'account_host', 'account_pass', 'account_grant',
                  'account_grant_with', 'account_db', 'account_table', 'account_info', 'account_url']

#########################################################################
# account repository
#########################################################################

class AccountRepositoryForm(forms.ModelForm):
    class Meta:
        model = AccountRepository
        fields = ['repository_team', 'repository_name', 'repository_url', 'account_user', 'url', 'info']
