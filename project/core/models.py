# -*- coding: utf-8 -*-
#!/usr/bin/env python
from django.db import models
from mptt.models import MPTTModel, TreeForeignKey
from ckeditor.fields import RichTextField
from image_cropping import ImageRatioField


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

    class Meta:
        verbose_name = u'Страница'
        verbose_name_plural = u'Страницы'

    def __unicode__(self):
        return self.name

    def get_url(self):
        return '/pages/%s' % self.slug

    def get_images(self):
        return PageImage.objects.filter(page=self.id)


class PageImage(models.Model):
    image = models.ImageField(verbose_name=u'Изображение для страницы', upload_to='pages')
    page = models.ForeignKey(Page)

    class Meta:
        verbose_name = u'Изображение для страницы'
        verbose_name_plural = u'Изображение для страниц'


class Article(models.Model):
    name = models.CharField(verbose_name=u'Название статьи', max_length=200)
    slug = models.SlugField(u'Ссылка', max_length=50, unique=True)
    description = RichTextField(verbose_name=u'Описание')
    image = models.ImageField(verbose_name=u'Изображение', upload_to='pages')

    class Meta:
        verbose_name = u'Статья'
        verbose_name_plural = u'Статьи'

    def __unicode__(self):
        return self.name

    def url(self):
        return '/article/%s' % self.slug

    def get_images(self):
        return ArticleImage.objects.filter(article=self.id)


class ArticleImage(models.Model):
    image = models.ImageField(verbose_name=u'Изображение для статьи', upload_to='articles')
    article = models.ForeignKey(Article)

    class Meta:
        verbose_name = u'Изображение для статьи'
        verbose_name_plural = u'Изображения для статьи'


class Service(models.Model):
    name = models.CharField(verbose_name=u'Название статьи', max_length=200)
    slug = models.SlugField(u'Ссылка', max_length=50, unique=True)
    description = RichTextField(verbose_name=u'Краткое описание')
    image = models.ImageField(verbose_name=u'Иконка', upload_to='service')
    main_check = models.BooleanField(verbose_name=u'Отображать на главной', default=False)

    class Meta:
        verbose_name = u'Услуга'
        verbose_name_plural = u'Услуги'

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
    description = RichTextField(verbose_name=u'Описание этапа')
    service = models.ForeignKey(Service)

    class Meta:
        verbose_name = u'Этап услуги'
        verbose_name_plural = u'Этапы услуги'

    def __unicode__(self):
        return "%s - %s" % (self.service.name, self.name)

    def get_images(self):
        return ServiceStepImage.objects.filter(service_step=self.id)


class ServiceStepImage(models.Model):
    image = models.ImageField(verbose_name=u'Изображение для статьи', upload_to='service')
    cropping = ImageRatioField('image', '281x171', verbose_name=u'Обрезка фото')
    service = models.ForeignKey(Service)
    service_step = models.ForeignKey(ServiceStep)

    class Meta:
        verbose_name = u'Изображение для этапа услуги'
        verbose_name_plural = u'Изображения для этапа услуги'

    def url(self):
        return "/media/%s" % self.image


class Faq(models.Model):
    name = models.CharField(verbose_name=u'Вопрос', max_length=240)
    description = RichTextField(verbose_name=u'Ответ')

    def __unicode__(self):
        return self.name


class Review(models.Model):
    name = models.CharField(verbose_name=u'Название статьи', max_length=200)
    description = models.TextField(verbose_name=u'Описание')
    image = models.ImageField(verbose_name=u'Фото', upload_to='reviews')

    class Meta:
        verbose_name = u'Отзыв'
        verbose_name_plural = u'Отзывы'

    def __unicode__(self):
        return self.name


class Category(MPTTModel):
    name = models.CharField(verbose_name=u'Название категории', max_length=244)
    slug = models.SlugField(verbose_name=u'Ссылка', max_length=50, unique=True)
    image = models.ImageField(verbose_name=u'Изображение категории', upload_to="category", blank=True)
    parent = TreeForeignKey('self', verbose_name=u'Родительская категория',
                            related_name='children', blank=True,
                            help_text=u'Родительская категория для этой категории', null=True)

    class Meta:
        verbose_name = u'Категоиря устройства'
        verbose_name_plural = u'Категории устройств'

    def __unicode__(self):
        return self.name

    def url(self):
        return "/%s" % self.slug


class Price(models.Model):
    name = models.CharField(verbose_name=u'Название прайса', max_length=200)
    slug = models.SlugField(u'Ссылка', max_length=50, unique=True)
    description = RichTextField(verbose_name=u'Описание')
    image = models.ImageField(verbose_name=u'Изображение', upload_to="category")
    category = models.ForeignKey(Category, verbose_name=u'Категория устройства')

    class Meta:
        verbose_name = u'Прайс'
        verbose_name_plural = u'Прайсы'

    def __unicode__(self):
        return self.name

    def image_url(self):
        return "/media/%s" % self.image

    def url(self):
        return "/price/%s" % self.slug


class Slider(models.Model):
    name = models.CharField(verbose_name=u"Названия слайда", max_length=100)
    image = models.ImageField(verbose_name=u"Добавить изображение слайда", upload_to="slider")

    class Meta:
        verbose_name = u'Слайд'
        verbose_name_plural = u'Слайды'

    def __unicode__(self):
        return self.name