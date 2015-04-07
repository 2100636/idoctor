# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import image_cropping.fields


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0008_auto_20150406_1700'),
    ]

    operations = [
        migrations.AddField(
            model_name='servicestepimage',
            name=b'cropping',
            field=image_cropping.fields.ImageRatioField(b'image', '880x320', hide_image_field=False, size_warning=False, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='\u041e\u0431\u0440\u0435\u0437\u043a\u0430 \u0444\u043e\u0442\u043e'),
        ),
    ]
