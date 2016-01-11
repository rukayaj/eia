# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0031_auto_20160107_0959'),
    ]

    operations = [
        migrations.AlterField(
            model_name='removalflag',
            name='metadata',
            field=models.OneToOneField(to='core.MetaData'),
        ),
    ]