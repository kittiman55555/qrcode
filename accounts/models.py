from django.db import models
from datetime import datetime
from django.contrib.auth.models import User
# Create your models here.
class Brands(models.Model):
    name = models.CharField(max_length=50)

    
    

class Register(models.Model):
    brands = models.ForeignKey(Brands, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    name = models.CharField(max_length=50)
    date = models.DateTimeField(default=datetime.now, blank=True)
    phone = models.CharField(max_length=10)
    address = models.TextField()
    item_number = models.CharField(max_length=50)
    code = models.CharField(max_length=50)
    running = models.CharField(max_length=50)
    http_user = models.CharField(max_length=50)
    latitude = models.CharField(max_length=50, blank=True)
    longitude = models.CharField(max_length=50, blank=True)
    cf1 = models.CharField(max_length=50, blank=True)
    cf2 = models.CharField(max_length=50, blank=True)
    cf3 = models.CharField(max_length=50, blank=True)
    cf4 = models.CharField(max_length=50, blank=True)
    cf5 = models.CharField(max_length=50, blank=True)
    cf6 = models.CharField(max_length=50, blank=True)
    cf7 = models.CharField(max_length=50, blank=True)
    cf8 = models.CharField(max_length=50, blank=True)
    cf9 = models.CharField(max_length=50, blank=True)
    cf10 = models.CharField(max_length=50, blank=True)

