from __future__ import unicode_literals
from django.db import models

# Create your models here.

class userInfo(models.Model):
    userId = models.CharField(max_length=20)
    userPassword = models.CharField(max_length=50)

    def __str__(self):
        return self.userId
