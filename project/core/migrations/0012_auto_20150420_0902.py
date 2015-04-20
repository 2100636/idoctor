# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0011_category_price'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='article',
            options={'verbose_name': '\u0421\u0442\u0430\u0442\u044c\u044f', 'verbose_name_plural': '\u0421\u0442\u0430\u0442\u044c\u0438'},
        ),
        migrations.AlterModelOptions(
            name='articleimage',
            options={'verbose_name': '\u0418\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435 \u0434\u043b\u044f \u0441\u0442\u0430\u0442\u044c\u0438', 'verbose_name_plural': '\u0418\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u044f \u0434\u043b\u044f \u0441\u0442\u0430\u0442\u044c\u0438'},
        ),
        migrations.AlterModelOptions(
            name='category',
            options={'verbose_name': '\u041a\u0430\u0442\u0435\u0433\u043e\u0438\u0440\u044f \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430', 'verbose_name_plural': '\u041a\u0430\u0442\u0435\u0433\u043e\u0440\u0438\u0438 \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432'},
        ),
        migrations.AlterModelOptions(
            name='page',
            options={'verbose_name': '\u0421\u0442\u0440\u0430\u043d\u0438\u0446\u0430', 'verbose_name_plural': '\u0421\u0442\u0440\u0430\u043d\u0438\u0446\u044b'},
        ),
        migrations.AlterModelOptions(
            name='pageimage',
            options={'verbose_name': '\u0418\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435 \u0434\u043b\u044f \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u044b', 'verbose_name_plural': '\u0418\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435 \u0434\u043b\u044f \u0441\u0442\u0440\u0430\u043d\u0438\u0446'},
        ),
        migrations.AlterModelOptions(
            name='price',
            options={'verbose_name': '\u041f\u0440\u0430\u0439\u0441', 'verbose_name_plural': '\u041f\u0440\u0430\u0439\u0441\u044b'},
        ),
        migrations.AlterModelOptions(
            name='review',
            options={'verbose_name': '\u041e\u0442\u0437\u044b\u0432', 'verbose_name_plural': '\u041e\u0442\u0437\u044b\u0432\u044b'},
        ),
        migrations.AlterModelOptions(
            name='service',
            options={'verbose_name': '\u0423\u0441\u043b\u0443\u0433\u0430', 'verbose_name_plural': '\u0423\u0441\u043b\u0443\u0433\u0438'},
        ),
        migrations.AlterModelOptions(
            name='servicestep',
            options={'verbose_name': '\u042d\u0442\u0430\u043f \u0443\u0441\u043b\u0443\u0433\u0438', 'verbose_name_plural': '\u042d\u0442\u0430\u043f\u044b \u0443\u0441\u043b\u0443\u0433\u0438'},
        ),
        migrations.AlterModelOptions(
            name='servicestepimage',
            options={'verbose_name': '\u0418\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435 \u0434\u043b\u044f \u044d\u0442\u0430\u043f\u0430 \u0443\u0441\u043b\u0443\u0433\u0438', 'verbose_name_plural': '\u0418\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u044f \u0434\u043b\u044f \u044d\u0442\u0430\u043f\u0430 \u0443\u0441\u043b\u0443\u0433\u0438'},
        ),
        migrations.AddField(
            model_name='price',
            name='category',
            field=models.ForeignKey(default=1, verbose_name='\u041a\u0430\u0442\u0435\u0433\u043e\u0440\u0438\u044f \u0443\u0441\u0442\u0440\u043e\u0439\u0441\u0442\u0432\u0430', to='core.Category'),
            preserve_default=False,
        ),
    ]
