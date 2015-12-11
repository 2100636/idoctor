# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0014_slider'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='slider',
            options={'verbose_name': '\u0421\u043b\u0430\u0439\u0434', 'verbose_name_plural': '\u0421\u043b\u0430\u0439\u0434\u044b'},
        ),
        migrations.AddField(
            model_name='category',
            name='description',
            field=models.TextField(default=b'', verbose_name='\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435'),
        ),
    ]
