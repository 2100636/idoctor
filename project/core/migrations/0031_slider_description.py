# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import ckeditor.fields


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0030_auto_20151213_1948'),
    ]

    operations = [
        migrations.AddField(
            model_name='slider',
            name='description',
            field=ckeditor.fields.RichTextField(default=b'', null=True, verbose_name='\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435', blank=True),
        ),
    ]
