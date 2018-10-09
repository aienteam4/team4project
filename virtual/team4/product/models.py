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

class Category(models.Model):
    categoryid = models.AutoField(primary_key=True)
    categoryname = models.CharField(max_length=45)
    class Meta:
        managed = False
        db_table = 'categories'
# Create your models here.
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

class Friends_Chat(models.Model):
    memberId = models.IntegerField()
    messages = models.TextField()
    messagesUpdate = models.DateTimeField(auto_now=True) 

    class Meta:
        managed = True
        db_table = 'Friends_Chat'





