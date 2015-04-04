# -*- coding: utf-8 -*-
#!/usr/bin/env python

from django.db import models


class Page(models.Model):
    name = models.CharField(verbose_name=u'Название страницы', max_length=200)
    description = models.TextField(verbose_name=u'Описание')

    def __unicode__(self):
        return self.name
