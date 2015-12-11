# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0024_auto_20151208_2114'),
    ]

    operations = [
        migrations.AddField(
            model_name='review',
            name='title',
            field=models.CharField(default=b'', max_length=200, verbose_name='\u041d\u0430\u0437\u0432\u0430\u043d\u0438\u0435 \u0441\u0442\u0430\u0442\u044c\u0438'),
        ),
        migrations.AlterField(
            model_name='review',
            name='name',
            field=models.CharField(max_length=200, verbose_name='\u0410\u0432\u0442\u043e\u0440 \u043e\u0442\u0437\u044b\u0432\u0430'),
        ),
    ]
