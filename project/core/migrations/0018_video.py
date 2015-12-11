# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
import ckeditor.fields


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0017_review_active'),
    ]

    operations = [
        migrations.CreateModel(
            name='Video',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.CharField(max_length=200, verbose_name='\u041d\u0430\u0437\u0432\u0430\u043d\u0438\u0435 \u0432\u0438\u0434\u0435\u043e')),
                ('slug', models.SlugField(unique=True, verbose_name='\u0421\u0441\u044b\u043b\u043a\u0430')),
                ('description', ckeditor.fields.RichTextField(verbose_name='\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435')),
                ('image', models.ImageField(upload_to=b'videos', verbose_name='\u0418\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435')),
                ('isbig', models.BooleanField(default=False, verbose_name='\u0411\u043e\u043b\u044c\u0448\u043e\u0439 \u0431\u043b\u043e\u043a')),
            ],
            options={
                'verbose_name': '\u0412\u0438\u0434\u043e\u0441',
                'verbose_name_plural': '\u0412\u0438\u0434\u043e\u0441\u044b',
            },
        ),
    ]
