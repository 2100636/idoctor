# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0020_auto_20151205_1641'),
    ]

    operations = [
        migrations.DeleteModel(
            name='Homepage',
        ),
        migrations.AddField(
            model_name='page',
            name='meta_description',
            field=models.CharField(help_text='\u041d\u0443\u0436\u043d\u043e \u0434\u043b\u044f \u0421\u0415\u041e', max_length=255, verbose_name='\u041c\u0435\u0442\u0430 \u043e\u043f\u0438\u0441\u0430\u043d\u0438\u0435', blank=True),
        ),
        migrations.AddField(
            model_name='page',
            name='meta_keywords',
            field=models.CharField(max_length=255, verbose_name='\u041c\u0435\u0442\u0430 \u043a\u043b\u044e\u0447\u0435\u0432\u044b\u0435 \u0441\u043b\u043e\u0432\u0430', blank=True),
        ),
        migrations.AddField(
            model_name='page',
            name='meta_title',
            field=models.CharField(help_text='\u0417\u0430\u0433\u043e\u043b\u043e\u0432\u043e\u043a \u0432 \u043e\u043a\u043d\u0435 \u0431\u0440\u0430\u0443\u0437\u0435\u0440\u0430', max_length=255, verbose_name='\u0417\u0430\u0433\u043e\u043b\u043e\u0432\u043e\u043a', blank=True),
        ),
    ]
