# Generated by Django 2.1.1 on 2018-09-22 23:11

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Friends_Chat',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('memberId', models.IntegerField()),
                ('messages', models.TextField()),
                ('messagesUpdate', models.DateTimeField(auto_now_add=True)),
            ],
            options={
                'db_table': 'Friends_Chat',
            },
        ),
    ]
