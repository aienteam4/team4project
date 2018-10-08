from django.db import models

# Create your models here.

class Friends_Chat(models.Model):
    memberId = models.IntegerField()
    message = models.TextField()
    messageUpdate = models.DateTimeField(auto_now_add=True) 

    class Meta:
        managed = False
        db_table = 'Friends_Chat'

