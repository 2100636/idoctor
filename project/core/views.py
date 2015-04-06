# -*- coding: utf-8 -*-
#!/usr/bin/env python

from django.shortcuts import get_object_or_404, render_to_response, redirect
from django.template import RequestContext
from project.core.models import Page, Service
from project import settings


def indexView(request, template_name="core/index.html"):
    pages = Page.objects.all()
    services = Service.objects.filter(main_check=True)[:6]
    return render_to_response(template_name, locals(),
                              context_instance=RequestContext(request))


def articlesView(request, template_name="core/articles.html"):
    pages = Page.objects.all()
    services = Service.objects.filter(main_check=True)[:6]
    return render_to_response(template_name, locals(),
                              context_instance=RequestContext(request))


def serviceView(request, slug, template_name="core/service.html"):
    user = request.user
    service = Service.objects.get(slug=slug)
    return render_to_response(template_name, locals(),
                              context_instance=RequestContext(request))


def articleView(request, slug, template_name="core/article.html"):
    user = request.user
    #service = Service.objects.get(slug=slug)
    return render_to_response(template_name, locals(),
                              context_instance=RequestContext(request))