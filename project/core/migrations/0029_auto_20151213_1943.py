# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import ckeditor.fields


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0028_auto_20151213_1920'),
    ]

    operations = [
        migrations.AddField(
            model_name='category',
            name='small_description',
            field=ckeditor.fields.RichTextField(default=b'', verbose_name='\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435 \u043f\u043e\u0434 \u0438\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435\u043c'),
        ),
        migrations.AlterField(
            model_name='category',
            name='description',
            field=ckeditor.fields.RichTextField(default=b'', verbose_name='\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435 \u043d\u0430 \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0435'),
        ),
    ]
