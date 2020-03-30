# Create your models here.
from django import forms
from .models import Faq
from bootstrap_modal_forms.forms import BSModalForm

# Create your models here.

class FaqForm(forms.ModelForm):
    class Meta:
        model = Faq
        fields = ['faq_id','faq_type','faq_question','faq_answer']

#class PostForm(forms.ModelForm):

#    class Meta:
#        model = Post
#        fields = ('title', 'text',)

