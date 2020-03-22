# Create your models here.
from django import forms
from .models import Faq

# Create your models here.

class FaqForm(forms.Form):
    class Meta:
        model = Faq
        fields = ['faq_id','faq_type','faq_question','faq_answer']

#class PostForm(forms.ModelForm):

#    class Meta:
#        model = Post
#        fields = ('title', 'text',)

