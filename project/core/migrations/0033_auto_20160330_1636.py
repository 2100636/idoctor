# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0032_auto_20160121_2211'),
    ]

    operations = [
        migrations.AlterField(
            model_name='page',
            name='description',
            field=models.TextField(default=b'', verbose_name='\u0411\u0435\u043b\u044b\u0439 \u0444\u043e\u043d', blank=True),
        ),
        migrations.AlterField(
            model_name='page',
            name='description0',
            field=models.TextField(default=b'', verbose_name='\u0421\u0438\u043d\u0438\u0439 \u0444\u043e\u043d', blank=True),
        ),
        migrations.AlterField(
            model_name='page',
            name='description2',
            field=models.TextField(default=b'', verbose_name='\u0421\u0435\u0440\u044b\u0439 \u0444\u043e\u043d', blank=True),
        ),
        migrations.AlterField(
            model_name='page',
            name='image',
            field=models.ImageField(upload_to=b'pages', verbose_name='\u0418\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435', blank=True),
        ),
        migrations.AlterField(
            model_name='page',
            name='meta_title',
            field=models.CharField(help_text='<title>\u0417\u0430\u0433\u043e\u043b\u043e\u0432\u043e\u043a</title>', max_length=255, verbose_name='\u0417\u0430\u0433\u043e\u043b\u043e\u0432\u043e\u043a', blank=True),
        ),
    ]
