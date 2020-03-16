# Create your models here.
from django import forms
from .models import Faq

# Create your models here.

class FaqForm(forms.Form):
    class Meta:
        faq_id = forms.CharField()

#class PostForm(forms.ModelForm):

#    class Meta:
#        model = Post
#        fields = ('title', 'text',)

