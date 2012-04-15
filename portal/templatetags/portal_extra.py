# -*- coding: utf-8 -*-

from django import template
from django.contrib.sites.models import Site

from RssFeed import RSSFeed
from portal.models import ItemMenu

register = template.Library()
    
@register.filter
def get_RSS(self):
    url = 'http://rss.home.uol.com.br/index.xml'
    timeout = 60
    
    itens = RSSFeed(url, timeout)
    itens.update()
    
    return itens.items

@register.filter
def get_Menu(self):
    return ItemMenu.objects.all().order_by('ordem')

@register.filter
def get_Site(self):
    current_site = Site.objects.get_current()
    return current_site.name