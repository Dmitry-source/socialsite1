from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.

class Account(AbstractUser):

    patronymic_name = models.CharField(max_length=150, blank=True, null=True)
    birthday = models.DateTimeField(blank=True, null=True)
    city = models.CharField(max_length=150, blank=True, null=True)
    photo = models.ImageField(upload_to='accounts/%Y/%m/%d/', blank=True, null=True)
    description=models.TextField(blank=True, null=True)
    phone=models.CharField(max_length=50, blank=True, null=True)
    telegram = models.CharField(max_length=50, blank=True, null=True)
   

    def __str__(self):
        return '{}'.format(self.username)


    class Meta:
        swappable = 'AUTH_USER_MODEL'  # ONLY for AbstractUser

