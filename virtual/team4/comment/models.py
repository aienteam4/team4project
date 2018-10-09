# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Messages(models.Model):
    name = models.CharField(max_length=45)
    gender = models.CharField(max_length=2, null=True)
    email = models.CharField(max_length=200, null=True)
    song = models.CharField(max_length=10, null=True)
    content = models.TextField()
    response = models.TextField( null=True)

    class Meta:
        managed = False
        db_table = 'messages'
