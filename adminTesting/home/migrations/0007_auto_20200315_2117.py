# Generated by Django 3.0.2 on 2020-03-15 12:17

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0006_auto_20200310_2201'),
    ]

    operations = [
        migrations.AlterField(
            model_name='testnum',
            name='num_date',
            field=models.DateTimeField(verbose_name=datetime.datetime(2020, 3, 15, 21, 17, 2, 291748)),
        ),
    ]