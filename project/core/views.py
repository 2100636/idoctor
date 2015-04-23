# -*- coding: utf-8 -*-
#!/usr/bin/env python
from django.shortcuts import get_object_or_404, render_to_response, redirect
from django.http import HttpResponseRedirect
from django.core.mail import send_mail, EmailMultiAlternatives
from django.template import RequestContext
from project.core.models import Page, Service, Review, Article, Faq, Category, Price
from project.core.forms import ContactForm
from project.settings import ADMIN_EMAIL
from project import settings


def indexView(request, template_name="core/index.html"):
    title = 'Главная'
    pages = Page.objects.all()
    reviews = Review.objects.all()[:6]
    articles = Article.objects.all()[:6]
    services = Service.objects.filter(main_check=True)[:6]
    return render_to_response(template_name, locals(),
                              context_instance=RequestContext(request))


def articlesView(request, template_name="core/articles.html"):
    title = 'Статьи'
    articles = Article.objects.all()
    return render_to_response(template_name, locals(),
                              context_instance=RequestContext(request))


def articleView(request, slug, template_name="core/article.html"):
    user = request.user
    article = Article.objects.get(slug=slug)
    title = article.name
    return render_to_response(template_name, locals(),
                              context_instance=RequestContext(request))


def faqView(request, template_name="core/faq.html"):
    title = 'faq'
    faqs = Faq.objects.all()
    return render_to_response(template_name, locals(),
                              context_instance=RequestContext(request))


def serviceView(request, slug, template_name="core/service.html"):
    user = request.user
    service = Service.objects.get(slug=slug)
    title = service.name
    if request.method == "POST":
        form = ContactForm(request.POST)
        if form.is_valid():
            subject = u'id70.ru форма'
            message = u'Имя: %s \n Телефон: %s \n Описание проблемы: %s' % (request.POST['name'], request.POST['phone'], request.POST['text'])
            send_mail(subject, message, 'teamer777@gmail.com', [ADMIN_EMAIL], fail_silently=False)
            return redirect('/contacts')
        else:
            form = ContactForm(request.POST)
    else:
        form = ContactForm()
    return render_to_response(template_name, locals(),
                              context_instance=RequestContext(request))


def contactView(request, template_name="core/contact.html"):
    user = request.user
    if request.method == "POST":
        form = ContactForm(request.POST)
        if form.is_valid():
            subject = u'id70.ru форма'
            message = u'Имя: %s \n Телефон: %s \n Описание проблемы: %s' % (request.POST['name'], request.POST['phone'], request.POST['text'])
            send_mail(subject, message, 'teamer777@gmail.com', [ADMIN_EMAIL], fail_silently=False)
            return redirect('/contacts')
        else:
            form = ContactForm(request.POST)
    else:
        form = ContactForm()
    #service = Service.objects.get(slug=slug)
    title = 'Контакты'
    return render_to_response(template_name, locals(),
                              context_instance=RequestContext(request))


def aboutView(request, template_name="core/about.html"):
    user = request.user
    title = 'О нас'
    #service = Service.objects.get(slug=slug)
    return render_to_response(template_name, locals(),
                              context_instance=RequestContext(request))

def category_view(request, category_slug, template_name="category/category.html"):
    """Представление для просмотра конкретной категории"""
    c = get_object_or_404(Category, slug=category_slug)
    title = c.name
    prices = set()
    if c.level == 0:
        loop_category = Category.objects.filter(tree_id=c.tree_id)
        for category in loop_category:
            cat_prices = Price.objects.filter(category=c)
            prices = prices | set(cat_prices)
    else:
        prices = Price.objects.filter(category=c)
    return render_to_response(template_name, locals(),
                              context_instance=RequestContext(request))


def price_view(request, slug, template_name="category/price.html"):
    price = Price.objects.get(slug=slug)
    title = price.name
    return render_to_response(template_name, locals(),
                              context_instance=RequestContext(request))