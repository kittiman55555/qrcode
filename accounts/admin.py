from django.contrib import admin
from accounts.models import Brands, Register
# Register your models here.

class RegisterAdmin(admin.ModelAdmin):
    list_display = ('brands', 'id', 'name', 'date', 'phone', 'address', 'code','item_number')
    list_display_links = ('id', 'name')
    list_per_page = 25


admin.site.register(Register, RegisterAdmin)
admin.site.register(Brands)
