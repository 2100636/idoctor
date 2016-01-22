# -*- coding: utf-8 -*-
#!/usr/bin/env python

from django.conf.urls import patterns, include, url

urlpatterns = patterns('project.core.views',
    # Главная страница
    url(r'^$', 'indexView',
        {'template_name': 'core/index.html'},
        name='indexView'),

    url(r'^zakaz_zvonok_form', 'zakaz_zvonokForm',
        {'template_name': 'core/zakaz_zvonok_form.html'},
        name='zakaz_zvonokForm'),

    url(r'^review_form$', 'reviewForm',
        {'template_name': 'core/review_form.html'},
        name='reviewForm'),

    url(r'^articles$', 'articlesView',
        {'template_name': 'core/articles.html'},
        name='articlesView'),

    url(r'^faq', 'faqView',
        {'template_name': 'core/faq.html'},
        name='faqView'),

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

    # Просмотр категории
    url(r'^category/(?P<category_slug>[-\w]+)/$', 'category_view',
       {'template_name':'category/category.html'},
       name='category_view'),

    url(r'^price/(?P<slug>[-\w]+)/$', 'price_view',
       {'template_name':'category/price.html'},
       name='price_view'),

    # Страница
    url(r'^page/(?P<slug>[-\w]+)/$', 'pageView',
       {'template_name':'core/page.html'},
       name='page_view'),
)
