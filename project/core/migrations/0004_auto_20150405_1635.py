# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import mptt.fields


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0003_menu'),
    ]

    operations = [
        migrations.AddField(
            model_name='menu',
            name='level',
            field=models.PositiveIntegerField(default=1, editable=False, db_index=True),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='menu',
            name='lft',
            field=models.PositiveIntegerField(default='', editable=False, db_index=True),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='menu',
            name='rght',
            field=models.PositiveIntegerField(default='', editable=False, db_index=True),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='menu',
            name='tree_id',
            field=models.PositiveIntegerField(default=1, editable=False, db_index=True),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='menu',
            name='parent',
            field=mptt.fields.TreeForeignKey(related_name='children', blank=True, to='core.Menu', help_text='\u0420\u043e\u0434\u0438\u0442\u0435\u043b\u044c\u0441\u043a\u0430\u044f \u043a\u0430\u0442\u0435\u0433\u043e\u0440\u0438\u044f \u0434\u043b\u044f \u044d\u0442\u043e\u0439 \u043a\u0430\u0442\u0435\u0433\u043e\u0440\u0438\u0438', null=True, verbose_name='\u0420\u043e\u0434\u0438\u0442\u0435\u043b\u044c\u0441\u043a\u0430\u044f \u043a\u0430\u0442\u0435\u0433\u043e\u0440\u0438\u044f'),
        ),
    ]
