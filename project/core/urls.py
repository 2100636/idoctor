# -*- coding: utf-8 -*-
#!/usr/bin/env python

from django.conf.urls import patterns, include, url

urlpatterns = patterns('project.core.views',
    # Главная страница
    url(r'^$', 'indexView',
        {'template_name': 'core/index.html'},
        name='indexView'),

    url(r'^service/(?P<slug>[-\w]+)/$', 'serviceView',
        {'template_name':'core/service.html'},
        name='serviceView'),
)
