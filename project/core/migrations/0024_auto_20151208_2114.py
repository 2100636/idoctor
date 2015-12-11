# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import image_cropping.fields


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0023_remove_servicestepimage_cropping'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='review',
            name=b'cropping',
        ),
        migrations.AddField(
            model_name='servicestepimage',
            name=b'cropping',
            field=image_cropping.fields.ImageRatioField(b'image', '281x171', hide_image_field=False, size_warning=False, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='\u041e\u0431\u0440\u0435\u0437\u043a\u0430 \u0444\u043e\u0442\u043e'),
        ),
    ]
