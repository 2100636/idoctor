# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0018_video'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='video',
            options={'verbose_name': '\u0412\u0438\u0434\u0435\u043e', 'verbose_name_plural': '\u0412\u0438\u0434\u0435\u043e'},
        ),
        migrations.AddField(
            model_name='video',
            name='videoyoutube',
            field=models.CharField(default=False, max_length=100, verbose_name='ID \u0420\u043e\u043b\u0438\u043a\u0430 Youtube'),
        ),
    ]
