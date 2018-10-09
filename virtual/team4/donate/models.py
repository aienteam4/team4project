
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

class Apnews(models.Model):
    id = models.AutoField(primary_key=True)
    time = models.CharField(max_length=45)
    category = models.CharField(max_length=45)
    title = models.CharField(max_length=300)
    link = models.CharField(max_length=300)

    class Meta:
        managed = True
        db_table = 'apnews'