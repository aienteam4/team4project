from django.db import models


class Product(models.Model):
    productid = models.AutoField(primary_key=True)
    modelnumber = models.CharField(max_length=45)
    modelname = models.CharField(max_length=45)
    productimage = models.CharField(max_length=45)
    description = models.CharField(max_length=300)
    categoryid = models.CharField(max_length=45)

    class Meta:
        managed = False
        db_table = 'products'

class Category(models.Model):
    categoryid = models.AutoField(primary_key=True)
    categoryname = models.CharField(max_length=45)
    class Meta:
        managed = False
        db_table = 'categories'
# Create your models here.
