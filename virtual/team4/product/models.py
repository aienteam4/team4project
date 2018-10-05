from django.db import models
# Create your models here.

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

class Songlist(models.Model):
    name = models.CharField(max_length=50)
    singer = models.CharField(max_length=45)
    type = models.CharField(max_length=45, blank=True, null=True)
    mood = models.IntegerField()
    url = models.CharField(max_length=200)
    last_modified_at = models.DateTimeField()

    class Meta:
        db_table = 'songlist'        
