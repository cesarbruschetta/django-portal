# Create your views here.
# -*- coding: utf-8 -*-

from django.http import HttpResponse, Http404, HttpResponseRedirect
from django.shortcuts import render_to_response, get_object_or_404
from django.template import RequestContext
from django.core.exceptions import ObjectDoesNotExist

from models import Pagina, ItemMenu


def main_page(request):
    return render_to_response(
           'main_page.html',RequestContext(request))


def pagina(request, slug):
    pagina = Pagina.objects.get(slug=slug)
    return render_to_response('pagina.html', locals(),
                              context_instance=RequestContext(request))