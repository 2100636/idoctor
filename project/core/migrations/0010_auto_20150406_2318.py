# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import image_cropping.fields
import ckeditor.fields


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0009_servicestepimage_cropping'),
    ]

    operations = [
        migrations.AlterField(
            model_name='article',
            name='description',
            field=ckeditor.fields.RichTextField(verbose_name='\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435'),
        ),
        migrations.AlterField(
            model_name='faq',
            name='description',
            field=ckeditor.fields.RichTextField(verbose_name='\u041e\u0442\u0432\u0435\u0442'),
        ),
        migrations.AlterField(
            model_name='service',
            name='description',
            field=ckeditor.fields.RichTextField(verbose_name='\u041a\u0440\u0430\u0442\u043a\u043e\u0435 \u043e\u043f\u0438\u0441\u0430\u043d\u0438\u0435'),
        ),
        migrations.AlterField(
            model_name='servicestep',
            name='description',
            field=ckeditor.fields.RichTextField(verbose_name='\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435 \u044d\u0442\u0430\u043f\u0430'),
        ),
        migrations.AlterField(
            model_name='servicestepimage',
            name=b'cropping',
            field=image_cropping.fields.ImageRatioField(b'image', '281x171', hide_image_field=False, size_warning=False, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='\u041e\u0431\u0440\u0435\u0437\u043a\u0430 \u0444\u043e\u0442\u043e'),
        ),
    ]
