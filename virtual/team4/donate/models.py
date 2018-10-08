# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey has `on_delete` set to the desired behavior.
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Product(models.Model):
    productid = models.AutoField(primary_key=True)
    modelnumber = models.CharField(max_length=45)
    modelname = models.CharField(max_length=45)
    productimage = models.CharField(max_length=45)
    description = models.CharField(max_length=300)
    categoryid = models.CharField(max_length=45)

    class Meta:
        managed = True
        db_table = 'products'
