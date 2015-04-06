# -*- coding: utf-8 -*-
#!/usr/bin/env python

from django.conf.urls import patterns, include, url

urlpatterns = patterns('project.core.views',
    # Главная страница
    url(r'^$', 'indexView',
        {'template_name': 'core/index.html'},
        name='indexView'),

    url(r'^articles$', 'articlesView',
        {'template_name': 'core/articles.html'},
        name='articlesView'),

    url(r'^about$', 'aboutView',
        {'template_name': 'core/about.html'},
        name='aboutView'),

    url(r'^contacts$', 'contactView',
        {'template_name': 'core/contact.html'},
        name='contactView'),

    url(r'^service/(?P<slug>[-\w]+)/$', 'serviceView',
        {'template_name':'core/service.html'},
        name='serviceView'),

    url(r'^article/(?P<slug>[-\w]+)/$', 'articleView',
        {'template_name':'core/article.html'},
        name='articleView'),
)
