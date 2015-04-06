# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0004_service_servicestep_servicestepimage'),
    ]

    operations = [
        migrations.AlterField(
            model_name='servicestepimage',
            name='article',
            field=models.ForeignKey(to='core.Service'),
        ),
    ]
