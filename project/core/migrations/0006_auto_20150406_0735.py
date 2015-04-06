# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0005_auto_20150406_0734'),
    ]

    operations = [
        migrations.RenameField(
            model_name='servicestepimage',
            old_name='article',
            new_name='service',
        ),
        migrations.AddField(
            model_name='servicestepimage',
            name='service_step',
            field=models.ForeignKey(default=1, to='core.ServiceStep'),
            preserve_default=False,
        ),
    ]
