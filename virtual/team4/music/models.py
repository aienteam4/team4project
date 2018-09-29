# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Songlist(models.Model):
    name = models.CharField(max_length=50)
    singer = models.CharField(max_length=45)
    type = models.CharField(max_length=45, blank=True, null=True)
    mood = models.IntegerField()
    url = models.CharField(max_length=200)
    last_modified_at = models.DateTimeField()

    class Meta:
        db_table = 'songlist'


class Member(models.Model):
    name = models.CharField(max_length=50)
    gender = models.CharField(max_length=10)
    birth = models.DateField()
    email = models.CharField(max_length=50)
    job = models.CharField(max_length=50, blank=True, null=True)

    class Meta:
        db_table = 'member'


class OrderHistory(models.Model):
    member = models.ForeignKey(Member, models.DO_NOTHING)
    song = models.ForeignKey(Songlist, models.DO_NOTHING)
    order_time = models.DateTimeField()
    order_num = models.IntegerField()
    this_song_order_num = models.IntegerField()

    class Meta:
        db_table = 'orderhistory'
