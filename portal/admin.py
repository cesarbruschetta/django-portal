from django.contrib import admin
from models import Pagina, ItemMenu

admin.site.register(Pagina,admin_class=Pagina.Admin)
admin.site.register(ItemMenu,admin_class=ItemMenu.Admin)
