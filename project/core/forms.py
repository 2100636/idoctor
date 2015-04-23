# -*- coding: utf-8 -*-
#!/usr/bin/env python
from django import forms
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