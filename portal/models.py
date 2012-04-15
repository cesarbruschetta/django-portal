# -*- coding: utf-8 -*-
from django.db import models

# Create your models here.
from django.db.models import signals
from django.template.defaultfilters import slugify
from django.contrib import admin
#from django.core.urlresolvers import reverse
from datetime import datetime

# Import our custom widget and our model from where they're defined
from tinymce.widgets import TinyMCE


# Create your models here.

class Pagina(models.Model):
    class Meta:
        ordering = ('-publicacao',)
    
    titulo = models.CharField(max_length=200)
    conteudo = models.TextField()
    publicacao = models.DateTimeField(default=datetime.now, blank=True)
    slug = models.SlugField(max_length=100, blank=True)
    
    def __str__(self):
        return '%s, %s' % (self.titulo, self.publicacao)

    class Admin(admin.ModelAdmin):
        list_display = ('titulo', 'publicacao',)
        #list_filter = ('nome', )
        ordering = ('titulo', )
        #search_fields = ('codigo', )
        
        formfield_overrides = { models.TextField: {'widget': TinyMCE(attrs={'cols': 80, 'rows': 30}),}}
    
    def get_absolute_url(self):
        #return reverse('portal.views.pagina', kwargs={'slug': self.slug})
        return '/pg/%s' % self.slug 
        
class ItemMenu(models.Model):
    
    titulo = models.CharField(max_length=50)
    pagina = models.ForeignKey(Pagina)
    ordem = models.IntegerField()
    
    def __str__(self):
       return '%s, %s, %s' % (self.titulo, self.pagina.titulo, self.ordem)

    class Admin(admin.ModelAdmin):
        list_display = ('titulo','pagina', 'ordem',)
        #list_filter = ('titulo', )
        ordering = ('titulo', )
        search_fields = ('titulo', )

    
# SIGNALS
def pagina_pre_save(signal, instance, sender, **kwargs):
    instance.slug = slugify(instance.titulo)

signals.pre_save.connect(pagina_pre_save, sender=Pagina)    