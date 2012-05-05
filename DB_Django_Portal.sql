-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.62-0ubuntu0.10.04.1


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema DjangoPortal
--

CREATE DATABASE IF NOT EXISTS DjangoPortal;
USE DjangoPortal;
CREATE TABLE  `DjangoPortal`.`auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
CREATE TABLE  `DjangoPortal`.`auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
CREATE TABLE  `DjangoPortal`.`auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_fbfc09f1` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
CREATE TABLE  `DjangoPortal`.`auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
INSERT INTO `DjangoPortal`.`auth_permission` VALUES  (1,'Can add permission',1,'add_permission'),
 (2,'Can change permission',1,'change_permission'),
 (3,'Can delete permission',1,'delete_permission'),
 (4,'Can add group',2,'add_group'),
 (5,'Can change group',2,'change_group'),
 (6,'Can delete group',2,'delete_group'),
 (7,'Can add user',3,'add_user'),
 (8,'Can change user',3,'change_user'),
 (9,'Can delete user',3,'delete_user'),
 (10,'Can add message',4,'add_message'),
 (11,'Can change message',4,'change_message'),
 (12,'Can delete message',4,'delete_message'),
 (13,'Can add content type',5,'add_contenttype'),
 (14,'Can change content type',5,'change_contenttype'),
 (15,'Can delete content type',5,'delete_contenttype'),
 (16,'Can add session',6,'add_session'),
 (17,'Can change session',6,'change_session'),
 (18,'Can delete session',6,'delete_session'),
 (19,'Can add site',7,'add_site'),
 (20,'Can change site',7,'change_site'),
 (21,'Can delete site',7,'delete_site'),
 (22,'Can add log entry',8,'add_logentry'),
 (23,'Can change log entry',8,'change_logentry'),
 (24,'Can delete log entry',8,'delete_logentry'),
 (25,'Can add pagina',9,'add_pagina'),
 (26,'Can change pagina',9,'change_pagina'),
 (27,'Can delete pagina',9,'delete_pagina'),
 (28,'Can add item menu',10,'add_itemmenu'),
 (29,'Can change item menu',10,'change_itemmenu'),
 (30,'Can delete item menu',10,'delete_itemmenu');
CREATE TABLE  `DjangoPortal`.`auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
INSERT INTO `DjangoPortal`.`auth_user` VALUES  (1,'admin','Cesar Augusto','Bruschetta','cesarbruschetta@hotmail.com','sha1$719ba$4a9e5d0f63220e738f087c200be0d54a6b36114b',1,1,1,'2012-04-29 18:22:51','2012-04-14 16:40:14');
CREATE TABLE  `DjangoPortal`.`auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
CREATE TABLE  `DjangoPortal`.`auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
CREATE TABLE  `DjangoPortal`.`django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
INSERT INTO `DjangoPortal`.`django_admin_log` VALUES  (1,'2012-04-14 20:22:11',1,9,'home','Pagina Inicial, 2012-04-14 20:20:27',1,''),
 (2,'2012-04-15 09:50:59',1,10,'1','home, Pagina Inicial, 1',1,''),
 (3,'2012-04-15 11:08:30',1,7,'1','localhost:8000',2,'Modificado domain e name.'),
 (4,'2012-04-15 11:08:42',1,7,'1','localhost:8000',2,'Modificado name.'),
 (5,'2012-04-15 12:25:19',1,9,'1','Home, 2012-04-15 12:23:01',1,''),
 (6,'2012-04-15 12:26:04',1,9,'2','Quem Somos, 2012-04-15 12:25:29',1,''),
 (7,'2012-04-15 12:30:25',1,10,'2','Home, Home, 1',1,''),
 (8,'2012-04-15 12:30:42',1,10,'3','Quem Somos, Quem Somos, 2',1,''),
 (9,'2012-04-15 15:51:16',1,9,'1','Nosso Produtos, 2012-04-15 12:23:01',2,'Modificado titulo e slug.'),
 (10,'2012-04-15 15:51:19',1,9,'1','Nosso Produtos, 2012-04-15 12:23:01',2,'Nenhum campo modificado.'),
 (11,'2012-04-15 15:52:21',1,10,'2','Nosso Produtos, Nosso Produtos, 1',2,'Modificado titulo.'),
 (12,'2012-04-15 15:55:38',1,10,'2','Nosso Produtos, Nosso Produtos, 3',2,'Modificado ordem.'),
 (13,'2012-04-15 15:55:56',1,10,'3','Quem Somos, Quem Somos, 1',2,'Modificado ordem.'),
 (14,'2012-04-15 15:56:02',1,10,'2','Nosso Produtos, Nosso Produtos, 2',2,'Modificado ordem.'),
 (15,'2012-04-29 14:57:45',1,7,'1','http://www.cabportal.com/Sites/Django',2,'Modificado domain.'),
 (16,'2012-04-29 18:23:54',1,7,'1','http://django.cabportal.com',2,'Modificado domain e name.'),
 (17,'2012-04-29 18:38:25',1,9,'2','Quem Somos, 2012-04-15 12:25:29',2,'Modificado conteudo.'),
 (18,'2012-04-29 18:41:05',1,9,'2','Quem Somos, 2012-04-15 12:25:29',2,'Modificado conteudo.'),
 (19,'2012-04-29 18:46:29',1,9,'1','Nosso Produtos, 2012-04-15 12:23:01',2,'Modificado conteudo.'),
 (20,'2012-04-29 18:47:06',1,9,'1','Nosso Produtos, 2012-04-15 12:23:01',2,'Modificado conteudo.'),
 (21,'2012-04-29 18:50:30',1,9,'3','Comentarios sobre Nos, 2012-04-29 18:47:32',1,''),
 (22,'2012-04-29 18:51:00',1,10,'4','Comentarios, Comentarios sobre Nos, 3',1,''),
 (23,'2012-04-29 18:51:35',1,9,'3','Comentarios sobre Nos, 2012-04-29 18:47:32',2,'Modificado conteudo.'),
 (24,'2012-04-29 18:55:17',1,9,'1','Nosso Produtos, 2012-04-15 12:23:01',2,'Modificado conteudo.'),
 (25,'2012-04-29 18:55:36',1,9,'1','Nosso Produtos, 2012-04-15 12:23:01',2,'Modificado conteudo.'),
 (26,'2012-04-29 18:56:00',1,9,'1','Nosso Produtos, 2012-04-15 12:23:01',2,'Modificado conteudo.'),
 (27,'2012-04-29 18:57:15',1,9,'3','Comentarios sobre Nos, 2012-04-29 18:47:32',2,'Modificado conteudo.'),
 (28,'2012-04-29 18:57:25',1,9,'3','Comentarios sobre Nos, 2012-04-29 18:47:32',2,'Modificado conteudo.'),
 (29,'2012-04-29 20:36:03',1,3,'1','admin',2,'Modificado first_name e last_name.');
CREATE TABLE  `DjangoPortal`.`django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
INSERT INTO `DjangoPortal`.`django_content_type` VALUES  (1,'permission','auth','permission'),
 (2,'group','auth','group'),
 (3,'user','auth','user'),
 (4,'message','auth','message'),
 (5,'content type','contenttypes','contenttype'),
 (6,'session','sessions','session'),
 (7,'site','sites','site'),
 (8,'log entry','admin','logentry'),
 (9,'pagina','portal','pagina'),
 (10,'item menu','portal','itemmenu');
CREATE TABLE  `DjangoPortal`.`django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
INSERT INTO `DjangoPortal`.`django_session` VALUES  ('1aa820b25657736573a3380a0839c284','YTgyZTBhNTYxMTVmYTMyNDAxMjNmZDYzNmYzNDVkODcxZDNkMGZjMDqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2012-05-01 19:27:13'),
 ('df0efc1382c20cfdee4026d3cb7e1a0e','MTllNjg3MmNlM2VjOTUxNzU2NWViNzhhYmE2MmVkYTA0Y2YwYzBjYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-04-28 16:40:43'),
 ('ef70e3a8c503974de5a295b2bfc0a0a5','MTllNjg3MmNlM2VjOTUxNzU2NWViNzhhYmE2MmVkYTA0Y2YwYzBjYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-04-29 09:50:45'),
 ('d01c519f8ab7a28066d279daa9bf7693','MTllNjg3MmNlM2VjOTUxNzU2NWViNzhhYmE2MmVkYTA0Y2YwYzBjYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-04-29 15:50:43'),
 ('c66ff60e1ec0fa4a1e3341cd3764b8c4','MTllNjg3MmNlM2VjOTUxNzU2NWViNzhhYmE2MmVkYTA0Y2YwYzBjYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-05-05 12:43:19'),
 ('11b55ce7f6c703984c6189de60dcbc2f','MTllNjg3MmNlM2VjOTUxNzU2NWViNzhhYmE2MmVkYTA0Y2YwYzBjYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-05-06 17:46:04'),
 ('dbda75e966cfc053fc21ef338dc25d6c','MTllNjg3MmNlM2VjOTUxNzU2NWViNzhhYmE2MmVkYTA0Y2YwYzBjYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-05-13 14:55:07'),
 ('5eca0dd948361fd19172e4ed0ae6ecc6','MTllNjg3MmNlM2VjOTUxNzU2NWViNzhhYmE2MmVkYTA0Y2YwYzBjYjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2012-05-13 18:22:51');
CREATE TABLE  `DjangoPortal`.`django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
INSERT INTO `DjangoPortal`.`django_site` VALUES  (1,'http://django.cabportal.com','Django');
CREATE TABLE  `DjangoPortal`.`portal_itemmenu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `pagina_id` varchar(100) NOT NULL,
  `ordem` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `portal_itemmenu_6961d7bc` (`pagina_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
INSERT INTO `DjangoPortal`.`portal_itemmenu` VALUES  (2,'Nosso Produtos','1',2),
 (3,'Quem Somos','2',1),
 (4,'Comentarios','3',3);
CREATE TABLE  `DjangoPortal`.`portal_pagina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `conteudo` longtext NOT NULL,
  `publicacao` datetime NOT NULL,
  `slug` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `portal_pagina_a951d5d6` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
INSERT INTO `DjangoPortal`.`portal_pagina` VALUES  (1,'Nosso Produtos','<h3>Exemplo 1</h3>\r\n<p><img style=\"float: right; margin: 10px;\" src=\"../../../../media/images/icons/work.png\" alt=\"\" width=\"128\" height=\"128\" /></p>\r\n<p><span id=\"result_box\" lang=\"pt\"><span class=\"hps\">Bem-vindo &agrave;</span> <span class=\"hps\">segunda-feira,</span> <span class=\"hps\">para cancelar a resposta</span><span>.</span> <span class=\"hps\">Nossa na&ccedil;&atilde;o</span> <span class=\"hps\">n&atilde;o pode</span> <span class=\"hps\">s&aacute;bio</span><span>,</span> <span class=\"hps\">ou</span> <span class=\"hps\">&eacute; a vida</span> <span class=\"hps\">de um homem</span><span>, exceto</span></span><span id=\"result_box\" lang=\"pt\"> <span class=\"hps\">clicando aqui.</span> <span class=\"hps\">Mas aqui</span> <span class=\"hps\">o autor do</span> <span class=\"hps\">port&atilde;o.</span> <span class=\"hps\">Mais</span> <span class=\"hps\">mais mais mais.</span> <span class=\"hps\">No</span> <span class=\"hps\">endere&ccedil;o</span> <span class=\"hps\">do produto</span> <span class=\"hps\">E</span><span>-mail</span> <span class=\"hps\">quiver</span> <span class=\"hps\">voc&ecirc;</span> <span class=\"hps\">de vez em quando</span><span>.</span><br /><br /></span></p>\r\n<ul>\r\n<li><span id=\"result_box\" lang=\"pt\">&nbsp;&nbsp;&nbsp;&nbsp; <span class=\"hps\">Bem-vindo &agrave;</span> <span class=\"hps\">segunda-feira,</span> <span class=\"hps\">para cancelar a resposta</span><span>.</span></span></li>\r\n<li><span id=\"result_box\" lang=\"pt\">&nbsp;&nbsp;&nbsp;&nbsp; <span class=\"hps\">Bem-vindo &agrave;</span> <span class=\"hps\">segunda-feira,</span> <span class=\"hps\">para cancelar a resposta</span><span>.</span></span></li>\r\n<li><span id=\"result_box\" lang=\"pt\">&nbsp;&nbsp;&nbsp;&nbsp; <span class=\"hps\">Bem-vindo &agrave;</span> <span class=\"hps\">segunda-feira,</span> <span class=\"hps\">para cancelar a resposta</span><span>.</span></span></li>\r\n</ul>\r\n<h3>Exemplo 2</h3>\r\n<p><img style=\"float: left; margin-left: 15px; margin-right: 15px; margin-top: 10px; margin-bottom: 10px;\" src=\"../../../../media/images/icons/work.png\" alt=\"\" width=\"128\" height=\"128\" /></p>\r\n<p><span id=\"result_box\" lang=\"pt\"><span class=\"hps\">Bem-vindo &agrave;</span> <span class=\"hps\">segunda-feira,</span> <span class=\"hps\">para cancelar a resposta</span><span>.</span> <span class=\"hps\">Nossa na&ccedil;&atilde;o</span> <span class=\"hps\">n&atilde;o pode</span> <span class=\"hps\">s&aacute;bio</span><span>,</span> <span class=\"hps\">ou</span> <span class=\"hps\">&eacute; a vida</span> <span class=\"hps\">de um homem</span><span>, exceto</span></span><span id=\"result_box\" lang=\"pt\"> <span class=\"hps\">clicando aqui.</span> <span class=\"hps\">Mas aqui</span> <span class=\"hps\">o autor do</span> <span class=\"hps\">port&atilde;o.</span> <span class=\"hps\">Mais</span> <span class=\"hps\">mais mais mais.</span> <span class=\"hps\">No</span> <span class=\"hps\">endere&ccedil;o</span> <span class=\"hps\">do produto</span> <span class=\"hps\">E</span><span>-mail</span> <span class=\"hps\">quiver</span> <span class=\"hps\">voc&ecirc;</span> <span class=\"hps\">de vez em quando</span><span>.</span><br /></span></p>\r\n<ul>\r\n<li><span id=\"result_box\" lang=\"pt\">&nbsp;&nbsp;&nbsp;&nbsp; <span class=\"hps\">Bem-vindo &agrave;</span> <span class=\"hps\">segunda-feira,</span> <span class=\"hps\">para cancelar a resposta</span><span>.</span></span></li>\r\n<li><span id=\"result_box\" lang=\"pt\">&nbsp;&nbsp;&nbsp;&nbsp; <span class=\"hps\">Bem-vindo &agrave;</span> <span class=\"hps\">segunda-feira,</span> <span class=\"hps\">para cancelar a resposta</span><span>.</span></span></li>\r\n<li><span id=\"result_box\" lang=\"pt\">&nbsp;&nbsp;&nbsp;&nbsp; <span class=\"hps\">Bem-vindo &agrave;</span> <span class=\"hps\">segunda-feira,</span> <span class=\"hps\">para cancelar a resposta</span><span>.</span></span></li>\r\n</ul>','2012-04-15 12:23:01','nosso-produtos'),
 (2,'Quem Somos','<p><span id=\"result_box\" lang=\"pt\"><span class=\"hps\"><img style=\"float: left; margin: 10px;\" src=\"../../../../media/images/icons/work.png\" alt=\"\" width=\"110\" height=\"110\" />Bem-vindo &agrave;</span> <span class=\"hps\">segunda-feira,</span> <span class=\"hps\">para cancelar a resposta</span><span>.</span> <span class=\"hps\">Em seguida, voc&ecirc;</span> <span class=\"hps\">usar mais</span> <span class=\"hps\">alternativa</span><span>, agora</span> <span class=\"hps\">mais algumas</span> <span class=\"hps\">ideias</span><span>,</span> <span class=\"hps\">mais dispostos</span> <span class=\"hps\">para o conte&uacute;do In&iacute;cio</span><span>.</span> <span class=\"hps\">Saiba mais</span> <span class=\"hps\">tinha</span><span>.</span> <span class=\"hps\">Pois &eacute;</span> <span class=\"hps\">com</span> <span class=\"hps\">um jogo de</span> <span class=\"hps\">arco</span> <span class=\"hps\">e bugs</span> <span class=\"hps\">ou adicionar</span> <span class=\"hps\">a um monte</span> <span class=\"hps\">mais.</span> <span class=\"hps\">&Agrave;s vezes</span> <span class=\"hps\">voc&ecirc; faz.</span> <span class=\"hps\">Precisamos de mais</span> <span class=\"hps\">massa</span> <span class=\"hps\">do curso que voc&ecirc;</span> <span class=\"hps\">deseja que o seu</span> <span class=\"hps\">quiver</span><span>.</span> <span class=\"hps\">Mas, por algum</span> <span class=\"hps\">irritante</span> <span class=\"hps\">foi dito</span><span>,</span> <span class=\"hps\">mas porque havia</span> <span class=\"hps\">um alpendre</span> <span class=\"hps\">oco.</span> <span class=\"hps\">Sobre</span><span>, tornou-se</span> <span class=\"hps\">agrados</span> <span class=\"hps\">bandidos</span> <span class=\"hps\">em massa,</span> <span class=\"hps\">mais</span> <span class=\"hps\">medo</span> <span class=\"hps\">do que o riso</span><span>, exceto no</span> <span class=\"hps\">mais</span> <span class=\"hps\">pelo medo de</span> <span class=\"hps\">voc&ecirc;.</span> <span class=\"hps\">Bem-vindo ao</span> <span class=\"hps\">meu conhecimento,</span> <span class=\"hps\">eu serei sempre</span> <span class=\"hps\">mais,</span> <span class=\"hps\">mais mais mais.</span> <span class=\"hps\">Alguma dor, mas</span> <span class=\"hps\">os mouros, a</span> <span class=\"hps\">mais</span> <span class=\"hps\">com</span> <span class=\"hps\">cativante.</span> <span class=\"hps\">Como</span> <span class=\"hps\">capital</span> <span class=\"hps\">puro.</span> <span class=\"hps\">Uma gota</span> <span class=\"hps\">REEMBOLSO</span> <span class=\"hps\">DE CAIXA</span><span>, nos</span> <span class=\"hps\">membros da sua</span><span>, por favor,</span> <span class=\"hps\">como</span> <span class=\"hps\">as massas.</span> <span class=\"hps\">Emprego</span> <span class=\"hps\">em sil&ecirc;ncio,</span> <span class=\"hps\">pelo casamento</span> <span class=\"hps\">que a nossa</span> <span class=\"hps\">rotatividade e</span> <span class=\"hps\">dirigir</span> <span class=\"hps\">a classe</span><span>,</span> <span class=\"hps\">himenaeos</span> <span class=\"hps\">muito</span> <span class=\"hps\">iniciantes.</span></span></p>\r\n<p><span id=\"result_box\" lang=\"pt\"><br /> <span class=\"hps\">Nossos servi&ccedil;os incluem:</span><br /><br />&nbsp;&nbsp;&nbsp;&nbsp; <span class=\"hps\">Servi&ccedil;o</span> <span class=\"hps\">1 -</span> <span class=\"hps\">Isto &eacute; usado</span> <span class=\"hps\">para cancelar a resposta</span><span>.</span><br />&nbsp;&nbsp;&nbsp;&nbsp; <span class=\"hps\">Servi&ccedil;o 2</span> <span class=\"hps\">-</span> <span class=\"hps\">Isto &eacute; usado</span> <span class=\"hps\">para cancelar a resposta</span><span>.</span><br />&nbsp;&nbsp;&nbsp;&nbsp; <span class=\"hps\">Servi&ccedil;o 3</span> <span class=\"hps\">-</span> <span class=\"hps\">Isto &eacute; usado</span> <span class=\"hps\">para cancelar a resposta</span><span>.</span><br />&nbsp;&nbsp;&nbsp;&nbsp; <span class=\"hps\">Servi&ccedil;o 4</span> <span class=\"hps\">-</span> <span class=\"hps\">Isto &eacute; usado</span> <span class=\"hps\">para cancelar a resposta</span><span>.</span></span></p>','2012-04-15 12:25:29','quem-somos'),
 (3,'Comentarios sobre Nos','<h3>Mr Joe Bloggs</h3>\r\n<p><img style=\"float: right; margin: 10px;\" src=\"../../../../media/images/icons/testimonial.png\" alt=\"\" width=\"128\" height=\"128\" /></p>\r\n<p><span id=\"result_box\" lang=\"pt\"><span class=\"hps\">Bem-vindo &agrave;</span> <span class=\"hps\">segunda-feira,</span> <span class=\"hps\">para cancelar a resposta</span><span>.</span> <span class=\"hps\">Nossa na&ccedil;&atilde;o</span> <span class=\"hps\">n&atilde;o pode</span> <span class=\"hps\">s&aacute;bio</span><span>,</span> <span class=\"hps\">ou</span> <span class=\"hps\">&eacute; a vida</span> <span class=\"hps\">de um homem</span><span>, exceto</span></span><span id=\"result_box\" lang=\"pt\"> <span class=\"hps\">clicando aqui.</span> <span class=\"hps\">Mas aqui</span> <span class=\"hps\">o autor do</span> <span class=\"hps\">port&atilde;o.</span> <span class=\"hps\">Mais</span> <span class=\"hps\">mais mais mais.</span> <span class=\"hps\">No</span> <span class=\"hps\">endere&ccedil;o</span> <span class=\"hps\">do produto</span> <span class=\"hps\">E</span><span>-mail</span> <span class=\"hps\">quiver</span> <span class=\"hps\">voc&ecirc;</span> <span class=\"hps\">de vez em quando</span><span>.</span> <span class=\"hps\">Obtemos</span> <span class=\"hps\">n&atilde;o mais</span><span>, a terra</span> <span class=\"hps\">n&atilde;o mais</span> <span class=\"hps\">do homem.</span> <span class=\"hps\">Tropas frescas</span> <span class=\"hps\">da terra</span> <span class=\"hps\">daylit</span><span>, foram</span> <span class=\"hps\">irritante</span> <span class=\"hps\">que ele cres&ccedil;a</span> <span class=\"hps\">forte</span> <span class=\"hps\">no tempo</span> <span class=\"hps\">do Menu</span> <span class=\"hps\">do arco.</span> <span class=\"hps\">Aqui est&aacute;</span> <span class=\"hps\">a resposta.</span> <span class=\"hps\">A fim</span> <span class=\"hps\">de que o conte&uacute;do</span> <span class=\"hps\">de um ou</span> <span class=\"hps\">mais do que</span> <span class=\"hps\">de solicitude</span> <span class=\"hps\">para o</span> <span class=\"hps\">artigo</span> <span class=\"hps\">completo.</span></span></p>\r\n<p><span lang=\"pt\"><span class=\"hps\"><br /></span></span></p>\r\n<h3>Mr Bob Smith</h3>\r\n<p><img style=\"float: left; margin: 10px;\" src=\"../../../../media/images/icons/testimonial.png\" alt=\"\" width=\"128\" height=\"128\" /></p>\r\n<p><span id=\"result_box\" lang=\"pt\"><span class=\"hps\">Bem-vindo &agrave;</span> <span class=\"hps\">segunda-feira,</span> <span class=\"hps\">para cancelar a resposta</span><span>.</span> <span class=\"hps\">Nossa na&ccedil;&atilde;o</span> <span class=\"hps\">n&atilde;o pode</span> <span class=\"hps\">s&aacute;bio</span><span>,</span> <span class=\"hps\">ou</span> <span class=\"hps\">&eacute; a vida</span> <span class=\"hps\">de um homem</span><span>, exceto</span></span><span id=\"result_box\" lang=\"pt\"> <span class=\"hps\">clicando aqui.</span> <span class=\"hps\">Mas aqui</span> <span class=\"hps\">o autor do</span> <span class=\"hps\">port&atilde;o.</span> <span class=\"hps\">Mais</span> <span class=\"hps\">mais mais mais.</span> <span class=\"hps\">No</span> <span class=\"hps\">endere&ccedil;o</span> <span class=\"hps\">do produto</span> <span class=\"hps\">E</span><span>-mail</span> <span class=\"hps\">quiver</span> <span class=\"hps\">voc&ecirc;</span> <span class=\"hps\">de vez em quando</span><span>.</span> <span class=\"hps\">Obtemos</span> <span class=\"hps\">n&atilde;o mais</span><span>, a terra</span> <span class=\"hps\">n&atilde;o mais</span> <span class=\"hps\">do homem.</span> <span class=\"hps\">Tropas frescas</span> <span class=\"hps\">da terra</span> <span class=\"hps\">daylit</span><span>, foram</span> <span class=\"hps\">irritante</span> <span class=\"hps\">que ele cres&ccedil;a</span> <span class=\"hps\">forte</span> <span class=\"hps\">no tempo</span> <span class=\"hps\">do Menu</span> <span class=\"hps\">do arco.</span> <span class=\"hps\">Aqui est&aacute;</span> <span class=\"hps\">a resposta.</span> <span class=\"hps\">A fim</span> <span class=\"hps\">de que o conte&uacute;do</span> <span class=\"hps\">de um ou</span> <span class=\"hps\">mais do que</span> <span class=\"hps\">de solicitude</span> <span class=\"hps\">para o</span> <span class=\"hps\">artigo</span> <span class=\"hps\">completo.</span></span></p>\r\n<p><span lang=\"pt\"><span class=\"hps\"><br /></span></span></p>','2012-04-29 18:47:32','comentarios-sobre-nos');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
