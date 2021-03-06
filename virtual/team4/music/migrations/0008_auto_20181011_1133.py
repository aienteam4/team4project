# Generated by Django 2.1.1 on 2018-10-11 03:33

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('music', '0007_auto_20181003_1634'),
    ]

    operations = [
        migrations.CreateModel(
            name='Members',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=45)),
                ('email', models.CharField(max_length=200)),
                ('password', models.CharField(max_length=45)),
                ('job', models.CharField(max_length=45)),
                ('birthday', models.DateTimeField(max_length=45)),
                ('gender', models.CharField(max_length=10)),
            ],
            options={
                'db_table': 'members',
                'managed': True,
            },
        ),
        migrations.AlterField(
            model_name='orderhistory',
            name='member',
            field=models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='music.Members'),
        ),
        migrations.AlterField(
            model_name='orderhistory',
            name='order_time',
            field=models.DateTimeField(auto_now=True),
        ),
        migrations.AlterField(
            model_name='songlist',
            name='last_modified_at',
            field=models.DateTimeField(auto_now=True),
        ),
        migrations.DeleteModel(
            name='Member',
        ),
    ]
