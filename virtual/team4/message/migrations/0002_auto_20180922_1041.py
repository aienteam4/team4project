# Generated by Django 2.1.1 on 2018-09-22 02:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('message', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='messages',
            name='response',
            field=models.TextField(blank='true'),
        ),
    ]
