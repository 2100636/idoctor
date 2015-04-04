# -*- coding: utf-8 -*-
#!/usr/bin/env python
from django.contrib import admin
from project.core.models import Page, PageImage, Article, ArticleImage, Faq, Review, Menu


class PageImagesInline(admin.StackedInline):
    model = PageImage


class PageAdmin(admin.ModelAdmin):
    model = Page
    inlines = [PageImagesInline, ]


class ArticleImagesInline(admin.StackedInline):
    model = ArticleImage


class ArticleAdmin(admin.ModelAdmin):
    model = Article
    inlines = [ArticleImagesInline, ]

admin.site.register(Page, PageAdmin)
admin.site.register(Article, ArticleAdmin)
admin.site.register(Faq)
admin.site.register(Review)
admin.site.register(Menu)
