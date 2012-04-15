Introduction
============

Django Site

Sistema simples para a criação de um site utilizando o Framework Django

Este sistema possui dois tipos de conteudo sendo:
* Pagina = é destinado as paginas de conteudo do site
* Item Menu = destinadoa criar o meu principal do site, e linkar o menu com suas paginas

Pre-requisitos
	Python =  2.6
	Mysql server >= 5.1.61
		

Instalação
	django = 1.3
	django-tinymce = 1.5
	MySQL_python = 1.2.3
	DateTime = 3.0
	feedparser = 5.1.1
	
Patch de correção do 'django-tinymce'
	Alterar a linha do arquivo /tinymce/widget.py da lib  'django-tinymce', como descrito abaixo
	
	Index: widgets.py
	===================================================================
	--- widgets.py
	+++ widgets.py
	@@ -14,7 +14,7 @@
 
	-from django.forms.util import smart_unicode
	+from django.utils.encoding import smart_unicode
 
 