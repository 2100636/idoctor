# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0031_slider_description'),
    ]

    operations = [
        migrations.AddField(
            model_name='page',
            name='description0',
            field=models.TextField(default=b'', verbose_name='\u0421\u0438\u043d\u0438\u0439 \u0444\u043e\u043d'),
        ),
        migrations.AddField(
            model_name='page',
            name='description2',
            field=models.TextField(default=b'', verbose_name='\u0421\u0435\u0440\u044b\u0439 \u0444\u043e\u043d'),
        ),
        migrations.AddField(
            model_name='page',
            name='name_admin',
            field=models.CharField(default=b'', max_length=200, verbose_name='\u041d\u0430\u0437\u0432\u0430\u043d\u0438\u0435 \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u044b \u0432 \u0430\u0434\u043c\u0438\u043d\u043a\u0435'),
        ),
        migrations.AlterField(
            model_name='page',
            name='description',
            field=models.TextField(default=b'', verbose_name='\u0411\u0435\u043b\u044b\u0439 \u0444\u043e\u043d'),
        ),
        migrations.AlterField(
            model_name='page',
            name='meta_title',
            field=models.TextField(help_text='<title>\u0417\u0430\u0433\u043e\u043b\u043e\u0432\u043e\u043a</title>', max_length=255, verbose_name='\u0417\u0430\u0433\u043e\u043b\u043e\u0432\u043e\u043a', blank=True),
        ),
        migrations.AlterField(
            model_name='page',
            name='name',
            field=models.CharField(max_length=200, verbose_name='\u041d\u0430\u0437\u0432\u0430\u043d\u0438\u0435 \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u044b - \u0437\u0430\u0433\u043e\u043b\u043e\u0432\u043e\u043a h1'),
        ),
    ]
