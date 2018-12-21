from __future__ import unicode_literals

from django.contrib.auth.models import User
from django.db import models
from django.dispatch import receiver
from django.db.models.signals import post_save
from django.utils.encoding import python_2_unicode_compatible
from datetime import datetime


# Create your models here.

class Brand(models.Model):
    name = models.CharField(max_length=50)
        
    def __str__(self):
        return self.name

@python_2_unicode_compatible
class Profile(models.Model):
    brand = models.ForeignKey(Brand,null=True, blank=True, on_delete=models.CASCADE)
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    location = models.CharField(max_length=30, blank=True)
    birthdate = models.DateField(null=True, blank=True)

    class Meta:
        verbose_name = 'profile'
        verbose_name_plural = 'profiles'
    
    def __str__(self):
        return self.user.username
    


@receiver(post_save, sender=User)
def create_or_update_user_profile(sender, instance, created, **kwargs):
    if created:
        Profile.objects.create(user=instance)
    instance.profile.save()


class Register(models.Model):
    brands = models.ForeignKey(Brand, on_delete=models.CASCADE)
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

    def __str__(self):
        return self.name


