# -*- coding: utf-8 -*-
#!/usr/bin/env python
from django.db import models
from mptt.models import MPTTModel, TreeForeignKey
from ckeditor.fields import RichTextField


class Menu(MPTTModel):
    name = models.CharField(verbose_name=u'Имя ссылки', max_length=244)
    slug = models.SlugField(verbose_name=u'Ссылка', max_length=50, unique=True)
    parent = TreeForeignKey('self', verbose_name=u'Родительская категория',
                            related_name='children', blank=True,
                            help_text=u'Родительская категория для этой категории', null=True)

    def __unicode__(self):
        return self.name

    def url(self):
        if self.slug == 'home':
            return '/'
        else:
            return "/%s" % self.slug


class Page(models.Model):
    name = models.CharField(verbose_name=u'Название страницы', max_length=200)
    slug = models.SlugField(u'Ссылка', max_length=50, unique=True)
    description = RichTextField(verbose_name=u'Описание')
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

    def url(self):
        return '/article/%s' % self.slug

    def get_images(self):
        return ArticleImage.objects.filter(article=self.id)


class ArticleImage(models.Model):
    image = models.ImageField(verbose_name=u'Изображение для статьи', upload_to='articles')
    article = models.ForeignKey(Article)


class Service(models.Model):
    name = models.CharField(verbose_name=u'Название статьи', max_length=200)
    slug = models.SlugField(u'Ссылка', max_length=50, unique=True)
    description = models.TextField(verbose_name=u'Краткое описание')
    image = models.ImageField(verbose_name=u'Иконка', upload_to='service')
    main_check = models.BooleanField(verbose_name=u'Отображать на главной', default=False)

    def __unicode__(self):
        return self.name

    def get_url(self):
        return '/service/%s' % self.slug

    def get_icon(self):
        return "/media/%s" % self.image

    def get_steps(self):
        return ServiceStep.objects.filter(service=self.id)


class ServiceStep(models.Model):
    name = models.CharField(verbose_name=u'Название этапа', max_length=244)
    description = models.TextField(verbose_name=u'Описание этапа')
    service = models.ForeignKey(Service)

    def __unicode__(self):
        return "%s - %s" % (self.service.name, self.name)

    def get_images(self):
        return ServiceStepImage.objects.filter(service_step=self.id)


class ServiceStepImage(models.Model):
    image = models.ImageField(verbose_name=u'Изображение для статьи', upload_to='service')
    service = models.ForeignKey(Service)
    service_step = models.ForeignKey(ServiceStep)

    def url(self):
        return "/media/%s" % self.image


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