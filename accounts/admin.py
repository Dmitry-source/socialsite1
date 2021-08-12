from django.contrib import admin

from django.contrib.auth.admin import UserAdmin
from .models import Account


# Register your models here.

class AccountUserAdmin(UserAdmin):
    
    model = Account
    list_display = ['username', 'city',  'last_name', 'first_name', 'patronymic_name', 'phone', 'email', 'is_superuser' ]

admin.site.register(Account, AccountUserAdmin)

