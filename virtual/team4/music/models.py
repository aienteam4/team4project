# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models

#歌曲資料表
class Songlist(models.Model):
    name = models.CharField(max_length=50)
    singer = models.CharField(max_length=45)
    type = models.CharField(max_length=45, blank=True, null=True)
    mood = models.IntegerField()
    url = models.CharField(max_length=200)
    last_modified_at = models.DateTimeField(auto_now=True)

    class Meta:
        db_table = 'songlist'

#會員資料表 (測試)
class Member(models.Model):
    name = models.CharField(max_length=45)
    email = models.CharField(max_length=200)
    password = models.CharField(max_length=45)
    job = models.CharField(max_length=45)
    birthday = models.DateTimeField(max_length=45)
    gender = models.CharField(max_length=10)

    class Meta:
        managed = True
        db_table = 'members'
# 喜好資料表
class Orderhistory(models.Model):
    member = models.ForeignKey('Member', models.DO_NOTHING)
    song = models.ForeignKey('Songlist', models.DO_NOTHING)
    order_time = models.DateTimeField(auto_now=True)
    order_num = models.IntegerField()
    this_song_order_num = models.IntegerField()
    this_song_like_or_not = models.IntegerField(blank=True, null=True)

    class Meta:
        db_table = 'orderhistory'

