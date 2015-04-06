# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0003_menu'),
    ]

    operations = [
        migrations.CreateModel(
            name='Service',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=200, verbose_name='\u041d\u0430\u0437\u0432\u0430\u043d\u0438\u0435 \u0441\u0442\u0430\u0442\u044c\u0438')),
                ('slug', models.SlugField(unique=True, verbose_name='\u0421\u0441\u044b\u043b\u043a\u0430')),
                ('description', models.TextField(verbose_name='\u041a\u0440\u0430\u0442\u043a\u043e\u0435 \u043e\u043f\u0438\u0441\u0430\u043d\u0438\u0435')),
                ('image', models.ImageField(upload_to=b'service', verbose_name='\u0418\u043a\u043e\u043d\u043a\u0430')),
            ],
        ),
        migrations.CreateModel(
            name='ServiceStep',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=244, verbose_name='\u041d\u0430\u0437\u0432\u0430\u043d\u0438\u0435 \u044d\u0442\u0430\u043f\u0430')),
                ('description', models.TextField(verbose_name='\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435 \u044d\u0442\u0430\u043f\u0430')),
                ('service', models.ForeignKey(to='core.Service')),
            ],
        ),
        migrations.CreateModel(
            name='ServiceStepImage',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('image', models.ImageField(upload_to=b'service', verbose_name='\u0418\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435 \u0434\u043b\u044f \u0441\u0442\u0430\u0442\u044c\u0438')),
                ('article', models.ForeignKey(to='core.ServiceStep')),
            ],
        ),
    ]
