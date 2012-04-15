# -*- coding: utf-8 -*-

from django.conf.urls.defaults import patterns, include, url
from django.conf import settings

# Uncomment the next two lines to enable the admin:
from django.contrib import admin


from portal.views import *

admin.autodiscover()

urlpatterns = patterns('',
    # Url do Portal
    url(r'^$', main_page, name='home'),
    url(r'^pg/(?P<slug>[\w_-]+)/$', pagina),                   

    # Examples:
    # url(r'^$', 'django_portal.views.home', name='home'),
    # url(r'^django_portal/', include('django_portal.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Url dos arquivos estaticos do portal
    (r'^media/(.*)$', 'django.views.static.serve',
        {'document_root': settings.MEDIA_ROOT}),

    # Url para O TunyMCE Editor                   
    (r'^tinymce/', include('tinymce.urls')),                       

    # Uncomment the next line to enable the admin:
    url(r'^admin/', include(admin.site.urls)),
)
