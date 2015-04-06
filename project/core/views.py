# -*- coding: utf-8 -*-
#!/usr/bin/env python

from django.shortcuts import get_object_or_404, render_to_response, redirect
from django.template import RequestContext
from project.core.models import Page, Service, Review, Article
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


def serviceView(request, slug, template_name="core/service.html"):
    user = request.user
    service = Service.objects.get(slug=slug)
    title = service.name
    return render_to_response(template_name, locals(),
                              context_instance=RequestContext(request))


def contactView(request, template_name="core/contact.html"):
    user = request.user
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