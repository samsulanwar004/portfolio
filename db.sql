/*
SQLyog Enterprise v12.09 (64 bit)
MySQL - 10.1.16-MariaDB : Database - portofolio
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`portofolio` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `portofolio`;

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `categories` */

insert  into `categories`(`id`,`name`,`created_at`,`updated_at`) values (1,'Pemrograman PHP','2017-08-25 04:11:54',NULL);

/*Table structure for table `cms_apicustom` */

DROP TABLE IF EXISTS `cms_apicustom`;

CREATE TABLE `cms_apicustom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aksi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kolom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderby` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_query_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sql_where` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parameters` longtext COLLATE utf8_unicode_ci,
  `responses` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `cms_apicustom` */

/*Table structure for table `cms_apikey` */

DROP TABLE IF EXISTS `cms_apikey`;

CREATE TABLE `cms_apikey` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `screetkey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hit` int(11) DEFAULT NULL,
  `status` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `cms_apikey` */

/*Table structure for table `cms_dashboard` */

DROP TABLE IF EXISTS `cms_dashboard`;

CREATE TABLE `cms_dashboard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `cms_dashboard` */

/*Table structure for table `cms_email_queues` */

DROP TABLE IF EXISTS `cms_email_queues`;

CREATE TABLE `cms_email_queues` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_at` datetime DEFAULT NULL,
  `email_recipient` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_from_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_cc_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_content` text COLLATE utf8_unicode_ci,
  `email_attachments` text COLLATE utf8_unicode_ci,
  `is_sent` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `cms_email_queues` */

/*Table structure for table `cms_email_templates` */

DROP TABLE IF EXISTS `cms_email_templates`;

CREATE TABLE `cms_email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `cms_email_templates` */

insert  into `cms_email_templates`(`id`,`name`,`slug`,`subject`,`content`,`description`,`from_name`,`from_email`,`cc_email`,`created_at`,`updated_at`) values (1,'Email Template Forgot Password Backend','forgot_password_backend',NULL,'<p>Hi,</p><p>Someone requested forgot password, here is your new password : </p><p>[password]</p><p><br></p><p>--</p><p>Regards,</p><p>Admin</p>','[password]','System','system@crudbooster.com',NULL,'2017-08-23 07:55:01',NULL);

/*Table structure for table `cms_logs` */

DROP TABLE IF EXISTS `cms_logs`;

CREATE TABLE `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ipaddress` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `useragent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_users` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `cms_logs` */

insert  into `cms_logs`(`id`,`ipaddress`,`useragent`,`url`,`description`,`id_cms_users`,`created_at`,`updated_at`) values (1,'::1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36','http://localhost/portofolio/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-08-23 07:57:52',NULL),(2,'::1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36','http://localhost/portofolio/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-08-24 03:04:54',NULL),(3,'::1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36','http://localhost/portofolio/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-08-24 03:37:14',NULL),(4,'::1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36','http://localhost/portofolio/public/admin/categories/add-save','Add New Data PHP at Categories',1,'2017-08-24 03:39:39',NULL),(5,'::1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36','http://localhost/portofolio/public/admin/users/add-save','Add New Data Samsul Anwar at Users',1,'2017-08-24 03:45:17',NULL),(6,'::1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36','http://localhost/portofolio/public/admin/logout','admin@crudbooster.com logout',1,'2017-08-24 03:45:50',NULL),(7,'::1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36','http://localhost/portofolio/public/admin/login','samsul@rebelworks.co login with IP Address ::1',2,'2017-08-24 03:46:08',NULL),(8,'::1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36','http://localhost/portofolio/public/admin/posts/add-save','Add New Data Menampilkan string at Post',2,'2017-08-24 04:00:51',NULL),(9,'::1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36','http://localhost/portofolio/public/admin/logout','samsul@rebelworks.co logout',2,'2017-08-24 04:11:23',NULL),(10,'::1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36','http://localhost/portofolio/public/admin/login','admin@crudbooster.com login with IP Address ::1',1,'2017-08-24 04:12:03',NULL),(11,'::1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36','http://localhost/portofolio/public/admin/posts/delete/1','Delete data Menampilkan string at Post',1,'2017-08-24 04:12:27',NULL),(12,'::1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36','http://localhost/portofolio/public/admin/categories/delete/1','Delete data PHP at Categories',1,'2017-08-24 04:12:34',NULL),(13,'::1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36','http://localhost/portofolio/public/admin/module_generator/delete/13','Delete data Categories at Module Generator',1,'2017-08-24 04:12:49',NULL),(14,'::1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36','http://localhost/portofolio/public/admin/module_generator/delete/12','Delete data Post at Module Generator',1,'2017-08-24 04:12:54',NULL),(15,'127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36','http://portofolio.local/admin/login','admin@crudbooster.com login with IP Address 127.0.0.1',1,'2017-08-24 06:23:13',NULL),(16,'127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36','http://portofolio.local/admin/login','admin@crudbooster.com login with IP Address 127.0.0.1',1,'2017-08-25 02:33:11',NULL),(17,'127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36','http://portofolio.local/admin/login','admin@crudbooster.com login with IP Address 127.0.0.1',1,'2017-08-25 04:11:32',NULL),(18,'127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36','http://portofolio.local/admin/categories/add-save','Add New Data Pemrograman PHP at Categories',1,'2017-08-25 04:11:54',NULL),(19,'127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36','http://portofolio.local/admin/posts/add-save','Add New Data Membuat OOP sederhana at Post',1,'2017-08-25 07:45:07',NULL),(20,'127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36','http://portofolio.local/admin/posts/delete/1','Delete data Membuat OOP sederhana at Post',1,'2017-08-25 08:11:07',NULL),(21,'127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36','http://portofolio.local/admin/posts/add-save','Add New Data Iki Title at Post',1,'2017-08-25 08:11:41',NULL),(22,'127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36','http://portofolio.local/admin/menu_management/add-save','Add New Data Halaman Web at Menu Management',1,'2017-08-25 08:18:46',NULL),(23,'127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36','http://portofolio.local/admin/menu_management/edit-save/3','Update data Halaman Web at Menu Management',1,'2017-08-25 08:22:09',NULL),(24,'127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36','http://portofolio.local/admin/posts/edit-save/1','Update data Iki Title at Post',1,'2017-08-25 08:25:04',NULL),(25,'127.0.0.1','Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.101 Safari/537.36','http://portofolio.local/admin/posts/delete/1','Delete data Iki Title at Post',1,'2017-08-25 08:26:06',NULL);

/*Table structure for table `cms_menus` */

DROP TABLE IF EXISTS `cms_menus`;

CREATE TABLE `cms_menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'url',
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_dashboard` tinyint(1) NOT NULL DEFAULT '0',
  `id_cms_privileges` int(11) DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `cms_menus` */

insert  into `cms_menus`(`id`,`name`,`type`,`path`,`color`,`icon`,`parent_id`,`is_active`,`is_dashboard`,`id_cms_privileges`,`sorting`,`created_at`,`updated_at`) values (1,'Categories','Route','AdminCategoriesControllerGetIndex',NULL,'fa fa-list',0,1,0,1,1,'2017-08-24 06:23:50',NULL),(2,'Post','Route','AdminPostsControllerGetIndex',NULL,'fa fa-clipboard',0,1,0,1,2,'2017-08-24 06:27:02',NULL),(3,'Halaman Web','Route','home','normal','fa fa-globe',0,1,0,1,NULL,'2017-08-25 08:18:46','2017-08-25 08:22:09');

/*Table structure for table `cms_moduls` */

DROP TABLE IF EXISTS `cms_moduls`;

CREATE TABLE `cms_moduls` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_protected` tinyint(1) NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `cms_moduls` */

insert  into `cms_moduls`(`id`,`name`,`icon`,`path`,`table_name`,`controller`,`is_protected`,`is_active`,`created_at`,`updated_at`) values (1,'Notifications','fa fa-cog','notifications','cms_notifications','NotificationsController',1,1,'2017-08-23 07:55:00',NULL),(2,'Privileges','fa fa-cog','privileges','cms_privileges','PrivilegesController',1,1,'2017-08-23 07:55:00',NULL),(3,'Privileges Roles','fa fa-cog','privileges_roles','cms_privileges_roles','PrivilegesRolesController',1,1,'2017-08-23 07:55:00',NULL),(4,'Users','fa fa-users','users','cms_users','AdminCmsUsersController',0,1,'2017-08-23 07:55:00',NULL),(5,'Settings','fa fa-cog','settings','cms_settings','SettingsController',1,1,'2017-08-23 07:55:00',NULL),(6,'Module Generator','fa fa-database','module_generator','cms_moduls','ModulsController',1,1,'2017-08-23 07:55:00',NULL),(7,'Menu Management','fa fa-bars','menu_management','cms_menus','MenusController',1,1,'2017-08-23 07:55:00',NULL),(8,'Email Template','fa fa-envelope-o','email_templates','cms_email_templates','EmailTemplatesController',1,1,'2017-08-23 07:55:00',NULL),(9,'Statistic Builder','fa fa-dashboard','statistic_builder','cms_statistics','StatisticBuilderController',1,1,'2017-08-23 07:55:00',NULL),(10,'API Generator','fa fa-cloud-download','api_generator','','ApiCustomController',1,1,'2017-08-23 07:55:00',NULL),(11,'Logs','fa fa-flag-o','logs','cms_logs','LogsController',1,1,'2017-08-23 07:55:00',NULL),(12,'Categories','fa fa-list','categories','categories','AdminCategoriesController',0,0,'2017-08-24 06:23:50',NULL),(13,'Post','fa fa-clipboard','posts','posts','AdminPostsController',0,0,'2017-08-24 06:27:02',NULL);

/*Table structure for table `cms_notifications` */

DROP TABLE IF EXISTS `cms_notifications`;

CREATE TABLE `cms_notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_users` int(11) DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `cms_notifications` */

/*Table structure for table `cms_privileges` */

DROP TABLE IF EXISTS `cms_privileges`;

CREATE TABLE `cms_privileges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_superadmin` tinyint(1) DEFAULT NULL,
  `theme_color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `cms_privileges` */

insert  into `cms_privileges`(`id`,`name`,`is_superadmin`,`theme_color`,`created_at`,`updated_at`) values (1,'Super Administrator',1,'skin-red','2017-08-23 07:55:01',NULL),(2,'Admin',0,'skin-blue',NULL,NULL);

/*Table structure for table `cms_privileges_roles` */

DROP TABLE IF EXISTS `cms_privileges_roles`;

CREATE TABLE `cms_privileges_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_visible` tinyint(1) DEFAULT NULL,
  `is_create` tinyint(1) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  `is_edit` tinyint(1) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `id_cms_moduls` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `cms_privileges_roles` */

insert  into `cms_privileges_roles`(`id`,`is_visible`,`is_create`,`is_read`,`is_edit`,`is_delete`,`id_cms_privileges`,`id_cms_moduls`,`created_at`,`updated_at`) values (1,1,0,0,0,0,1,1,'2017-08-23 07:55:01',NULL),(2,1,1,1,1,1,1,2,'2017-08-23 07:55:01',NULL),(3,0,1,1,1,1,1,3,'2017-08-23 07:55:01',NULL),(4,1,1,1,1,1,1,4,'2017-08-23 07:55:01',NULL),(5,1,1,1,1,1,1,5,'2017-08-23 07:55:01',NULL),(6,1,1,1,1,1,1,6,'2017-08-23 07:55:01',NULL),(7,1,1,1,1,1,1,7,'2017-08-23 07:55:01',NULL),(8,1,1,1,1,1,1,8,'2017-08-23 07:55:01',NULL),(9,1,1,1,1,1,1,9,'2017-08-23 07:55:01',NULL),(10,1,1,1,1,1,1,10,'2017-08-23 07:55:01',NULL),(11,1,0,1,0,1,1,11,'2017-08-23 07:55:01',NULL),(12,1,1,1,1,1,1,12,NULL,NULL),(13,1,1,1,1,1,1,13,NULL,NULL),(14,1,1,1,1,1,2,13,NULL,NULL),(15,1,1,1,1,1,2,12,NULL,NULL),(16,1,1,1,1,1,1,12,NULL,NULL),(17,1,1,1,1,1,1,13,NULL,NULL);

/*Table structure for table `cms_settings` */

DROP TABLE IF EXISTS `cms_settings`;

CREATE TABLE `cms_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `content_input_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dataenum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `helper` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_setting` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `cms_settings` */

insert  into `cms_settings`(`id`,`name`,`content`,`content_input_type`,`dataenum`,`helper`,`created_at`,`updated_at`,`group_setting`,`label`) values (1,'login_background_color',NULL,'text',NULL,'Input hexacode','2017-08-23 07:55:01',NULL,'Login Register Style','Login Background Color'),(2,'login_font_color',NULL,'text',NULL,'Input hexacode','2017-08-23 07:55:01',NULL,'Login Register Style','Login Font Color'),(3,'login_background_image',NULL,'upload_image',NULL,NULL,'2017-08-23 07:55:01',NULL,'Login Register Style','Login Background Image'),(4,'email_sender','support@crudbooster.com','text',NULL,NULL,'2017-08-23 07:55:01',NULL,'Email Setting','Email Sender'),(5,'smtp_driver','mail','select','smtp,mail,sendmail',NULL,'2017-08-23 07:55:01',NULL,'Email Setting','Mail Driver'),(6,'smtp_host','','text',NULL,NULL,'2017-08-23 07:55:01',NULL,'Email Setting','SMTP Host'),(7,'smtp_port','25','text',NULL,'default 25','2017-08-23 07:55:01',NULL,'Email Setting','SMTP Port'),(8,'smtp_username','','text',NULL,NULL,'2017-08-23 07:55:01',NULL,'Email Setting','SMTP Username'),(9,'smtp_password','','text',NULL,NULL,'2017-08-23 07:55:01',NULL,'Email Setting','SMTP Password'),(10,'appname','Portofolio','text',NULL,NULL,'2017-08-23 07:55:01',NULL,'Application Setting','Application Name'),(11,'default_paper_size','Legal','text',NULL,'Paper size, ex : A4, Legal, etc','2017-08-23 07:55:01',NULL,'Application Setting','Default Paper Print Size'),(12,'logo',NULL,'upload_image',NULL,NULL,'2017-08-23 07:55:01',NULL,'Application Setting','Logo'),(13,'favicon',NULL,'upload_image',NULL,NULL,'2017-08-23 07:55:01',NULL,'Application Setting','Favicon'),(14,'api_debug_mode','true','select','true,false',NULL,'2017-08-23 07:55:01',NULL,'Application Setting','API Debug Mode'),(15,'google_api_key','','text',NULL,NULL,'2017-08-23 07:55:01',NULL,'Application Setting','Google API Key'),(16,'google_fcm_key','','text',NULL,NULL,'2017-08-23 07:55:01',NULL,'Application Setting','Google FCM Key');

/*Table structure for table `cms_statistic_components` */

DROP TABLE IF EXISTS `cms_statistic_components`;

CREATE TABLE `cms_statistic_components` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_statistics` int(11) DEFAULT NULL,
  `componentID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `component_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `area_name` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sorting` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `config` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `cms_statistic_components` */

/*Table structure for table `cms_statistics` */

DROP TABLE IF EXISTS `cms_statistics`;

CREATE TABLE `cms_statistics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `cms_statistics` */

/*Table structure for table `cms_users` */

DROP TABLE IF EXISTS `cms_users`;

CREATE TABLE `cms_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cms_privileges` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `cms_users` */

insert  into `cms_users`(`id`,`name`,`photo`,`email`,`password`,`id_cms_privileges`,`created_at`,`updated_at`,`status`) values (1,'Super Admin',NULL,'admin@crudbooster.com','$2y$10$Sio6pdmLAceC7OKFrwKf/u9TF92mP4uAkCX3cyJ8Q9vLgLMCGtQ6C',1,'2017-08-23 07:55:00',NULL,'Active'),(2,'Samsul Anwar','uploads/2017-08/whatsapp-image-2017-02-07-at-175522.jpeg','samsul@rebelworks.co','$2y$10$L2ViWFyFMIA8TpUpDfi91.Uu0bvGejrfKmERvjNip/ouqQN3nwf36',2,'2017-08-24 03:45:17',NULL,NULL);

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (1,'2016_08_07_145904_add_table_cms_apicustom',1),(2,'2016_08_07_150834_add_table_cms_dashboard',1),(3,'2016_08_07_151210_add_table_cms_logs',1),(4,'2016_08_07_152014_add_table_cms_privileges',1),(5,'2016_08_07_152214_add_table_cms_privileges_roles',1),(6,'2016_08_07_152320_add_table_cms_settings',1),(7,'2016_08_07_152421_add_table_cms_users',1),(8,'2016_08_07_154624_add_table_cms_moduls',1),(9,'2016_08_17_225409_add_status_cms_users',1),(10,'2016_08_20_125418_add_table_cms_notifications',1),(11,'2016_09_04_033706_add_table_cms_email_queues',1),(12,'2016_09_16_035347_add_group_setting',1),(13,'2016_09_16_045425_add_label_setting',1),(14,'2016_09_17_104728_create_nullable_cms_apicustom',1),(15,'2016_10_01_141740_add_method_type_apicustom',1),(16,'2016_10_01_141846_add_parameters_apicustom',1),(17,'2016_10_01_141934_add_responses_apicustom',1),(18,'2016_10_01_144826_add_table_apikey',1),(19,'2016_11_14_141657_create_cms_menus',1),(20,'2016_11_15_132350_create_cms_email_templates',1),(21,'2016_11_15_190410_create_cms_statistics',1),(22,'2016_11_17_102740_create_cms_statistic_components',1),(23,'2017_08_24_031258_create_posts_table',2),(24,'2017_08_24_031503_create_categories_table',2);

/*Table structure for table `posts` */

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `categories_id` int(11) DEFAULT NULL,
  `cms_users_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `posts` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
