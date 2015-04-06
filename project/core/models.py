# -*- coding: utf-8 -*-
#!/usr/bin/env python
from django.db import models
from mptt.models import MPTTModel, TreeForeignKey


class Menu(MPTTModel):
    name = models.CharField(verbose_name=u'Имя ссылки', max_length=244)
    slug = models.SlugField(verbose_name=u'Ссылка', max_length=50, unique=True)
    parent = TreeForeignKey('self', verbose_name=u'Родительская категория',
                            related_name='children', blank=True,
                            help_text=u'Родительская категория для этой категории', null=True)

    def __unicode__(self):
        return self.name


class Page(models.Model):
    name = models.CharField(verbose_name=u'Название страницы', max_length=200)
    slug = models.SlugField(u'Ссылка', max_length=50, unique=True)
    description = models.TextField(verbose_name=u'Описание')
    image = models.ImageField(verbose_name=u'Изображение', upload_to='pages')

    def __unicode__(self):
        return self.name

    def get_url(self):
        return '/pages/%s' % self.slug

    def get_images(self):
        return PageImage.objects.filter(page=self.id)


class PageImage(models.Model):
    image = models.ImageField(verbose_name=u'Изображение для страницы', upload_to='pages')
    page = models.ForeignKey(Page)


class Article(models.Model):
    name = models.CharField(verbose_name=u'Название статьи', max_length=200)
    slug = models.SlugField(u'Ссылка', max_length=50, unique=True)
    description = models.TextField(verbose_name=u'Описание')
    image = models.ImageField(verbose_name=u'Изображение', upload_to='pages')

    def __unicode__(self):
        return self.name

    def get_url(self):
        return '/article/%s' % self.slug

    def get_images(self):
        return ArticleImage.objects.filter(article=self.id)


class ArticleImage(models.Model):
    image = models.ImageField(verbose_name=u'Изображение для статьи', upload_to='articles')
    article = models.ForeignKey(Article)


class Faq(models.Model):
    name = models.CharField(verbose_name=u'Вопрос', max_length=240)
    description = models.TextField(verbose_name=u'Ответ')

    def __unicode__(self):
        return self.name


class Review(models.Model):
    name = models.CharField(verbose_name=u'Название статьи', max_length=200)
    description = models.TextField(verbose_name=u'Описание')
    image = models.ImageField(verbose_name=u'Фото', upload_to='reviews')

    def __unicode__(self):
        return self.name