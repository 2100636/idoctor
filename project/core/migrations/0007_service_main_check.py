# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0006_auto_20150406_0735'),
    ]

    operations = [
        migrations.AddField(
            model_name='service',
            name='main_check',
            field=models.BooleanField(default=False, verbose_name='\u041e\u0442\u043e\u0431\u0440\u0430\u0436\u0430\u0442\u044c \u043d\u0430 \u0433\u043b\u0430\u0432\u043d\u043e\u0439'),
        ),
    ]
