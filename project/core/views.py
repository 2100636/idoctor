# -*- coding: utf-8 -*-
#!/usr/bin/env python

from django.shortcuts import get_object_or_404, render_to_response, redirect
from django.template import RequestContext
from project.core.models import Page
from project import settings


def indexView(request, template_name="core/index.html"):
    pages = Page.objects.all()
    return render_to_response(template_name, locals(),
                              context_instance=RequestContext(request))