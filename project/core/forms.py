# -*- coding: utf-8 -*-
#!/usr/bin/env python
from django import forms
from django.forms import ModelForm, Form
from models import Review
from django.forms.extras.widgets import SelectDateWidget
from django.utils.translation import ugettext_lazy as _


class ContactForm(forms.Form):
    name = forms.CharField(max_length=100,widget=forms.TextInput(attrs={
        'placeholder': u'Ваше имя',
        'class': "form-control"
    }))
    phone = forms.CharField(max_length=100, widget=forms.TextInput(attrs={
        'placeholder': u'Ваш телефон',
        'class': "form-control"
    }))
    text = forms.CharField(widget=forms.Textarea(attrs={
        'placeholder': u'Опишите Вашу проблему',
        'class': "form-control"
    }))

# форма для отзывов на основании модели
class ReviewForm(ModelForm):
    class Meta:
        model = Review
        # fields = "__all__"
        exclude = ('active',)
    def __init__(self, *args, **kwargs):
        super(ReviewForm, self).__init__(*args, **kwargs)
        # for field in self.fields:
        #     self.fields[field].widget.attrs = {'placeholder': self.fields[field].label, 'class': 'form-control'}
        #     self.fields[field].label = ''
        self.fields['name'].widget.attrs = {'placeholder': u'Ваше имя', 'class': 'form-control'}
        self.fields['name'].label = ''
        self.fields['description'].widget.attrs = {'placeholder': u'Напишите тут свой отзыв', 'class': 'form-control'}
        self.fields['description'].label = ''
        self.fields['image'].widget.attrs = {'class': 'form-control'}
        self.fields['image'].label = 'Ваша фотография'

        # пример фукнции map
        # def f(field):
        #     self.fields[field].widget.attrs = {'placeholder': self.fields[field].label, 'class': 'form-control'}
        # map(f, self.fields)



