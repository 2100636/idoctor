# -*- coding: utf-8 -*-
#!/usr/bin/env python
from django.contrib import admin
from project.core.models import Page, PageImage, Article, ArticleImage, Faq, Review, Menu, Service, ServiceStep, \
    ServiceStepImage, Category, Price, Slider
from image_cropping import ImageCroppingMixin
# from mptt_tree_editor.admin import TreeEditor


# class MenuAdmin(TreeEditor):
#     """
#     Управление категориями
#     Как будут отображаться поля категорий в разделе администрирования
#     """
#     list_display = ("indented_short_title", "actions_column", 'name')
#     list_display_links = ('name',)
#     list_per_page = 20
#     search_fields = ['name']
#     # exclude = ('created_at', 'updated_at',)
#     prepopulated_fields = {'slug': ('name',)}


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
    prepopulated_fields = {'slug': ('name', )}


class ServiseImageInline(ImageCroppingMixin, admin.StackedInline):
    model = ServiceStepImage
    fields = ('service_step', 'image', 'cropping')


class ServiceStepInline(admin.StackedInline):
    model = ServiceStep
    # inlines = [ServiseImageInline, ]


class ServiceAdmin(admin.ModelAdmin):
    model = Service
    inlines = [ServiceStepInline, ServiseImageInline]
    prepopulated_fields = {'slug': ('name',)}


class PriceAdmin(admin.ModelAdmin):
    model = Price
    prepopulated_fields = {'slug': ('name',)}


admin.site.register(Page, PageAdmin)
admin.site.register(Article, ArticleAdmin)
admin.site.register(Faq)
admin.site.register(Review)
# admin.site.register(Menu, MenuAdmin)
admin.site.register(Service, ServiceAdmin)
admin.site.register(Price, PriceAdmin)
admin.site.register(Category)
admin.site.register(Slider)

