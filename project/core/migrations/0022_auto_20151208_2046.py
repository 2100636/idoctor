# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import image_cropping.fields


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0021_auto_20151205_1756'),
    ]

    operations = [
        migrations.AddField(
            model_name='review',
            name=b'cropping',
            field=image_cropping.fields.ImageRatioField(b'image', '281x171', hide_image_field=False, size_warning=False, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='\u041e\u0431\u0440\u0435\u0437\u043a\u0430 \u0444\u043e\u0442\u043e'),
        ),
        migrations.AlterField(
            model_name='page',
            name='meta_title',
            field=models.CharField(help_text='<title>\u0417\u0430\u0433\u043e\u043b\u043e\u0432\u043e\u043a</title>', max_length=255, verbose_name='\u0417\u0430\u0433\u043e\u043b\u043e\u0432\u043e\u043a', blank=True),
        ),
    ]
