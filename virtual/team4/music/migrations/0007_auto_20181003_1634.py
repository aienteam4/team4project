# Generated by Django 2.1.1 on 2018-10-03 08:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('music', '0006_orderhistory_this_song_like_or_not'),
    ]

    operations = [
        migrations.AlterField(
            model_name='orderhistory',
            name='this_song_like_or_not',
            field=models.IntegerField(blank=True, null=True),
        ),
    ]