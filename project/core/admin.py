# -*- coding: utf-8 -*-
#!/usr/bin/env python
from django.contrib import admin
from project.core.models import Page, PageImage, Article, ArticleImage, Faq, Review, Menu, Service, ServiceStep, ServiceStepImage


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


class ServiseImageInline(admin.StackedInline):
    model = ServiceStepImage


class ServiceStepInline(admin.StackedInline):
    model = ServiceStep
    # inlines = [ServiseImageInline, ]


class ServiceAdmin(admin.ModelAdmin):
    model = Service
    inlines = [ServiceStepInline, ServiseImageInline]
    prepopulated_fields = {'slug': ('name',)}


admin.site.register(Page, PageAdmin)
admin.site.register(Article, ArticleAdmin)
admin.site.register(Faq)
admin.site.register(Review)
admin.site.register(Menu)
admin.site.register(Service, ServiceAdmin)
