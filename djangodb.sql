-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: djangodb
-- ------------------------------------------------------
-- Server version	5.7.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
<<<<<<< HEAD
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
=======
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
>>>>>>> 1e9bc497e2a180ad8a36288732549c78e9de9b02
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
<<<<<<< HEAD
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add songlist',7,'add_songlist'),(26,'Can change songlist',7,'change_songlist'),(27,'Can delete songlist',7,'delete_songlist'),(28,'Can view songlist',7,'view_songlist'),(29,'Can add members',8,'add_members'),(30,'Can change members',8,'change_members'),(31,'Can delete members',8,'delete_members'),(32,'Can view members',8,'view_members'),(33,'Can add member',9,'add_member'),(34,'Can change member',9,'change_member'),(35,'Can delete member',9,'delete_member'),(36,'Can view member',9,'view_member'),(37,'Can add orderhistory',10,'add_orderhistory'),(38,'Can change orderhistory',10,'change_orderhistory'),(39,'Can delete orderhistory',10,'delete_orderhistory'),(40,'Can view orderhistory',10,'view_orderhistory'),(41,'Can add messages',11,'add_messages'),(42,'Can change messages',11,'change_messages'),(43,'Can delete messages',11,'delete_messages'),(44,'Can view messages',11,'view_messages'),(45,'Can add product',12,'add_product'),(46,'Can change product',12,'change_product'),(47,'Can delete product',12,'delete_product'),(48,'Can view product',12,'view_product'),(49,'Can add product',13,'add_product'),(50,'Can change product',13,'change_product'),(51,'Can delete product',13,'delete_product'),(52,'Can view product',13,'view_product');
=======
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add songlist',7,'add_songlist'),(26,'Can change songlist',7,'change_songlist'),(27,'Can delete songlist',7,'delete_songlist'),(28,'Can view songlist',7,'view_songlist');
>>>>>>> 1e9bc497e2a180ad8a36288732549c78e9de9b02
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(45) NOT NULL,
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'sony'),(2,'canon'),(3,'nikon'),(4,'panasonic');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
<<<<<<< HEAD
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
=======
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
>>>>>>> 1e9bc497e2a180ad8a36288732549c78e9de9b02
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
<<<<<<< HEAD
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(12,'donate','product'),(8,'member','members'),(11,'message','messages'),(9,'music','member'),(10,'music','orderhistory'),(7,'music','songlist'),(13,'product','product'),(6,'sessions','session');
=======
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'music','songlist'),(6,'sessions','session');
>>>>>>> 1e9bc497e2a180ad8a36288732549c78e9de9b02
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
<<<<<<< HEAD
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
=======
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
>>>>>>> 1e9bc497e2a180ad8a36288732549c78e9de9b02
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
<<<<<<< HEAD
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-09-17 06:04:07.633128'),(2,'auth','0001_initial','2018-09-17 06:04:11.485910'),(3,'admin','0001_initial','2018-09-17 06:04:12.448175'),(4,'admin','0002_logentry_remove_auto_add','2018-09-17 06:04:12.457151'),(5,'admin','0003_logentry_add_action_flag_choices','2018-09-17 06:04:12.464725'),(6,'contenttypes','0002_remove_content_type_name','2018-09-17 06:04:13.148432'),(7,'auth','0002_alter_permission_name_max_length','2018-09-17 06:04:13.486036'),(8,'auth','0003_alter_user_email_max_length','2018-09-17 06:04:14.128154'),(9,'auth','0004_alter_user_username_opts','2018-09-17 06:04:14.166866'),(10,'auth','0005_alter_user_last_login_null','2018-09-17 06:04:14.402340'),(11,'auth','0006_require_contenttypes_0002','2018-09-17 06:04:14.410357'),(12,'auth','0007_alter_validators_add_error_messages','2018-09-17 06:04:14.438326'),(13,'auth','0008_alter_user_username_max_length','2018-09-17 06:04:14.656441'),(14,'auth','0009_alter_user_last_name_max_length','2018-09-17 06:04:15.111760'),(15,'music','0001_initial_manual','2018-09-17 06:04:15.333990'),(16,'sessions','0001_initial','2018-09-17 06:04:15.489993'),(17,'donate','0001_initial','2018-09-30 02:07:39.627650'),(18,'donate','0002_auto_20180922_1041','2018-09-30 02:07:39.637656'),(19,'donate','0002_auto_20180921_0942','2018-09-30 02:07:39.644655'),(20,'donate','0003_merge_20180923_2149','2018-09-30 02:07:39.654660'),(21,'message','0001_initial','2018-09-30 02:07:39.660656'),(22,'message','0002_auto_20180922_1041','2018-09-30 02:07:39.668735'),(23,'message','0002_auto_20180921_0942','2018-09-30 02:07:39.675660'),(24,'message','0003_merge_20180923_2149','2018-09-30 02:07:39.682668'),(25,'music','0002_songlist_last_modified_at','2018-09-30 02:07:39.689462'),(26,'music','0003_auto_20180926_2017','2018-09-30 02:07:39.696678'),(27,'music','0004_auto_20180929_1532','2018-09-30 02:07:39.703683'),(28,'music','0005_auto_20180929_1533','2018-09-30 02:07:39.709857'),(29,'product','0001_initial','2018-09-30 02:07:39.716951'),(30,'member','0001_initial','2018-10-04 01:27:10.237384'),(31,'member','0002_auto_20180920_1330','2018-10-04 01:27:10.252996'),(32,'donate','0002_auto_20180922_2013','2018-10-05 10:40:06.775893'),(33,'donate','0002_auto_20180921_1654','2018-10-05 10:40:06.832397'),(34,'donate','0004_merge_20181005_1839','2018-10-05 10:40:06.848062'),(35,'makefriends','0001_initial','2018-10-05 10:40:18.720774'),(36,'makefriends','0002_auto_20180924_2007','2018-10-05 10:40:18.767683'),(37,'message','0002_auto_20180922_2013','2018-10-05 10:40:18.814898'),(38,'message','0002_auto_20180921_1654','2018-10-05 10:40:18.860925'),(39,'message','0004_merge_20181005_1839','2018-10-05 10:40:18.892192'),(40,'music','0006_orderhistory_this_song_like_or_not','2018-10-05 10:40:18.914011'),(41,'music','0007_auto_20181003_1634','2018-10-05 10:40:18.933864');
=======
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-09-17 06:04:07.633128'),(2,'auth','0001_initial','2018-09-17 06:04:11.485910'),(3,'admin','0001_initial','2018-09-17 06:04:12.448175'),(4,'admin','0002_logentry_remove_auto_add','2018-09-17 06:04:12.457151'),(5,'admin','0003_logentry_add_action_flag_choices','2018-09-17 06:04:12.464725'),(6,'contenttypes','0002_remove_content_type_name','2018-09-17 06:04:13.148432'),(7,'auth','0002_alter_permission_name_max_length','2018-09-17 06:04:13.486036'),(8,'auth','0003_alter_user_email_max_length','2018-09-17 06:04:14.128154'),(9,'auth','0004_alter_user_username_opts','2018-09-17 06:04:14.166866'),(10,'auth','0005_alter_user_last_login_null','2018-09-17 06:04:14.402340'),(11,'auth','0006_require_contenttypes_0002','2018-09-17 06:04:14.410357'),(12,'auth','0007_alter_validators_add_error_messages','2018-09-17 06:04:14.438326'),(13,'auth','0008_alter_user_username_max_length','2018-09-17 06:04:14.656441'),(14,'auth','0009_alter_user_last_name_max_length','2018-09-17 06:04:15.111760'),(15,'music','0001_initial_manual','2018-09-17 06:04:15.333990'),(16,'sessions','0001_initial','2018-09-17 06:04:15.489993'),(17,'donate','0001_initial','2018-09-30 02:07:39.627650'),(18,'donate','0002_auto_20180922_1041','2018-09-30 02:07:39.637656'),(19,'donate','0002_auto_20180921_0942','2018-09-30 02:07:39.644655'),(20,'donate','0003_merge_20180923_2149','2018-09-30 02:07:39.654660'),(21,'message','0001_initial','2018-09-30 02:07:39.660656'),(22,'message','0002_auto_20180922_1041','2018-09-30 02:07:39.668735'),(23,'message','0002_auto_20180921_0942','2018-09-30 02:07:39.675660'),(24,'message','0003_merge_20180923_2149','2018-09-30 02:07:39.682668'),(25,'music','0002_songlist_last_modified_at','2018-09-30 02:07:39.689462'),(26,'music','0003_auto_20180926_2017','2018-09-30 02:07:39.696678'),(27,'music','0004_auto_20180929_1532','2018-09-30 02:07:39.703683'),(28,'music','0005_auto_20180929_1533','2018-09-30 02:07:39.709857'),(29,'product','0001_initial','2018-09-30 02:07:39.716951');
>>>>>>> 1e9bc497e2a180ad8a36288732549c78e9de9b02
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
<<<<<<< HEAD
-- Table structure for table `friends_chat`
--

DROP TABLE IF EXISTS `friends_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friends_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberId` int(11) NOT NULL,
  `messages` longtext NOT NULL,
  `messagesUpdate` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends_chat`
--

LOCK TABLES `friends_chat` WRITE;
/*!40000 ALTER TABLE `friends_chat` DISABLE KEYS */;
INSERT INTO `friends_chat` VALUES (1,2,'hi i\'m emo !','2018-09-24 19:01:03.000000'),(2,1,'hello !','2018-09-24 19:01:08.000000'),(3,3,'goodnight !','2018-09-24 19:01:13.000000'),(4,5,'chat room is not bad !','2018-09-24 19:01:18.000000'),(5,4,'hello, chat room is really awesome !!','2018-09-24 19:01:25.000000'),(6,6,'hi, i\'m Jay Joe !','2018-09-24 19:01:30.000000');
/*!40000 ALTER TABLE `friends_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `birth` date NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `job` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('王栗弘','Men','1979-02-08','d3567636@nhasag.net','歌手\r',1),('王惠甫','Men','1975-02-16','d3616052@nwytg.net','幼稚園園長\r',2),('吳玉鳳','Women','1957-03-19','superwu@jourrapide.net','藝人\r',3),('吳俊義','Men','1995-03-02','sMenilepig@gmail.com','電競選手\r',4),('李逸憲','Men','1990-06-05','tryit@gmail.com','房仲\r',5),('杜協丹','Women','1952-03-31','ilehWomenouz@sharklasers.com','和尚\r',6),('周劫圇','Men','1983-06-08','ibu27146@awsoo.net','廚師\r',7),('林阿真','Women','2001-09-26','jenny1212@hotmail.net.tw','學生\r',8),('林姿英','Women','1980-06-25','uqq05285@nbzMenr.com','建築師\r',9),('林美智','Women','1999-06-16','sMenile_611@hotmail.net','研究員\r',10),('柯佩姍','Women','1977-02-26','MenoMenoLeo@hotmail.com','餐廳老闆\r',11),('宵禁疼','Men','1947-08-23','cMenq38335@nbzMenr.net','工程師\r',12),('張旭程','Men','1966-07-27','r77992288@yahoo.net.tw','公務員\r',13),('張家瑜','Men','1942-04-02','crououki@Womenakeinbox.com','財務規劃分析師\r',14),('張惠昀','Women','1983-07-28','iskedhe@mailnesia.net','歌手\r',15),('淋菌截','Men','1974-03-02','avl93880@nbzMenr.edu.net','教師\r',16),('郭柏廷','Men','1988-08-08','p14479663@hotmail.com','作家\r',17),('郭家康','Men','1984-03-05','orange8979@hotmail.edu.tw','自由業\r',18),('陳于倫','Women','1986-01-20','nMenw69092@awsoo.com','律師\r',19),('陳佑甄','Women','1984-12-05','orange8979@hotmail.edu.net','幼稚園老師\r',20),('陳冠廷','Men','1962-03-30','cgtn12@dayrep.net','室內設計師\r',21),('陳茂恒','Men','1979-12-12','localking@gmail.net','工程師\r',22),('陳香涵','Women','1979-01-20','Meniconago@hotmail.net','家管\r',23),('陸亞谷','Women','1977-09-28','sen31049@awsoo.edu.net','學生\r',24),('程韻云','Women','1972-03-06','lqWomen64354@nbzMenr.net','待業\r',25),('馮依婷','Women','1958-07-17','ypp22890@nbzMenr.net','漫畫家\r',26),('黃行佩','Women','1970-09-08','eltibcivde@mailnesia.edu','製造業經理\r',27),('黃定國','Men','1972-08-05','crazydissy@hotmail.edu','主廚\r',28),('黃勇仰','Men','1949-11-18','yongyang36160@starkedupay.edu','體育老師\r',29),('黃彥傑','Men','1982-08-09','p14479663@hotmail.edu','作業員\r',30),('黃星均','Men','2000-07-16','wang0909@gmail.edu','學生\r',31),('黃毅愛','Women','1962-02-01','sunny001@gmail.edu','家管\r',32),('楊家洋','Men','1968-01-31','criawaew@Womenakeinbox.edu','車輛技師\r',33),('溫邵右','Men','1993-11-25','ben24367949@yahoo.edu.net','記者\r',34),('葉子毓','Men','1978-06-12','udpig10228@yahoo.edu.tw','保險業務員\r',35),('葉學俐','Men','1992-01-25','ben24367949@yahoo.edu.tw','記者\r',36),('詹佩珊','Women','1980-03-02','tpeggyw@Mensn.com','警察\r',37),('劉筱婷','Women','1993-01-09','Menountainking@gmail.com','實況主\r',38),('賴俐恭','Women','1950-09-27','portned34@gustr.com','驗光師\r',39),('關鈞蕙','Women','1964-04-12','hWomenq83717@nbzMenr.com','小說家\r',40),('吳柏定','Men','1953-08-01','gaogao@new.com.tw','律師\r',41),('劉建佳','Men','1964-07-30','liucc@gmail.net','企業家\r',42),('曹文彬','Men','1957-09-06','renewgo1762@msa.hinet.net','檢察官\r',43),('林怡桓','Women','1995-10-13','iggg123789@hotmail.com','設計師\r',44),('楊仰天','Men','2001-06-21','d3567636@csda.net','學生\r',45),('潘雅晴','Women','1999-11-11','zxq35pp6@nwytg.edu','學生\r',46),('賴耀文','Men','1951-12-30','littlelie@yahoo.com.tw','醫師\r',47),('謝雅筑','Women','1988-03-27','hsiehyaya@nycda.com.tw','家管\r',48),('涂虹欣','Women','1977-04-16','csgo@hrraf.net','待業\r',49),('吳康宏','Men','1975-05-04','d123789gga@nwytg.com','精算師\r',50);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(200) NOT NULL,
  `job` varchar(45) NOT NULL,
  `birthday` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (2,'王大同','0000','wang@yahoo.com','學生','2002-01-23');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `email` varchar(200) NOT NULL,
  `song` varchar(10) NOT NULL,
  `content` longtext NOT NULL,
  `response` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
=======
>>>>>>> 1e9bc497e2a180ad8a36288732549c78e9de9b02
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `modelnumber` varchar(45) NOT NULL,
  `modelname` varchar(45) NOT NULL,
  `productimage` varchar(45) NOT NULL,
  `description` varchar(300) NOT NULL,
  `categoryid` varchar(45) NOT NULL,
  PRIMARY KEY (`productid`),
  KEY `products_categoryid_dd8a17ec_fk_categories_categoryid` (`categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
<<<<<<< HEAD
INSERT INTO `products` VALUES (1,'a01','毛哥','a01.jpg','No001','M'),(6,'a02','昇哥','a02.jpg','No02','M'),(7,'a03','小偉','a03.jpg','No03','M'),(8,'a04','小越','a04.jpg','No04','M'),(9,'a05','龍哥','box.jpg','No05','M'),(17,'a06','SUNNI','a06.gif','No06','F'),(18,'a07','RAINI','a07.jpg','No07','F'),(21,'a08','Shiny','a08.jpg','Wonderful','F');
=======
INSERT INTO `products` VALUES (1,'a01','毛哥','a01.jpg','No001','M'),(6,'a02','昇哥','a02.jpg','No02','M'),(7,'a03','小偉','a03.jpg','No03','M'),(8,'a04','小越','a04.jpg','No04','M'),(9,'a05','龍哥','a05.jpg','No05','M'),(17,'a06','SUNNI','a06.gif','No06','F'),(18,'a07','RAINI','a07.jpg','No07','F'),(21,'a08','Shiny','a08.jpg','Wonderful','F');
>>>>>>> 1e9bc497e2a180ad8a36288732549c78e9de9b02
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songlist`
--

DROP TABLE IF EXISTS `songlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `songlist` (
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `singer` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mood` int(11) NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
<<<<<<< HEAD
  `last_modified_at` datetime DEFAULT NULL,
=======
>>>>>>> 1e9bc497e2a180ad8a36288732549c78e9de9b02
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songlist`
--

LOCK TABLES `songlist` WRITE;
/*!40000 ALTER TABLE `songlist` DISABLE KEYS */;
<<<<<<< HEAD
INSERT INTO `songlist` VALUES ('讓每個人都心碎','黃大煒','抒情',1,'https://www.youtube.com/watch?v=t4Ts-ysl1IU\r',1,NULL),('千年之戀 ','戴愛玲&信樂團','搖滾',1,'https://www.youtube.com/watch?v=2Pfu8b38pzg\r',2,NULL),('勢在必行','陳勢安&畢書盡','搖滾',1,'https://www.youtube.com/watch?v=BhHdmugCPjo\r',3,NULL),('王妃','蕭敬騰','搖滾',1,'https://www.youtube.com/watch?v=ekDzlSB1p28\r',4,NULL),('世界之巔','王繹龍','搖滾',1,'https://www.youtube.com/watch?v=kWza7FCobCQ&list=PLfM2O09OaV4P9WZQ0n_hm4ujorUciTVvw&index=22\r',5,NULL),('夠了','羅志祥','搖滾',1,'https://www.youtube.com/watch?v=R3rkSM3xO_k&list=PLfM2O09OaV4P9WZQ0n_hm4ujorUciTVvw&index=55\r',6,NULL),('離開地球表面','五月天','搖滾',1,'https://www.youtube.com/watch?v=rtKK2mu4BVc\r',7,NULL),('One Night In北京 ','信樂團','搖滾',1,'https://www.youtube.com/watch?v=-zvvtzyZ-Tw\r',8,NULL),('觸電','芭比','電音',1,'https://www.youtube.com/watch?v=BcXEgxrmdlU&list=PLfM2O09OaV4P9WZQ0n_hm4ujorUciTVvw&index=5\r',9,NULL),('社會搖','蕭全','電音',1,'https://www.youtube.com/watch?v=ITfanx1Fbcs\r',10,NULL),('青春修煉手冊','TFBOYS','輕快',1,'https://www.youtube.com/watch?v=sW1dKgOK1kQ\r',11,NULL),('兩腳書櫥的逃亡','韋禮安','輕快',1,'https://www.youtube.com/watch?v=NMnwWz_qjV0\r',12,NULL),('雙手插口袋','頑童MJ116&張震嶽','嘻哈',1,'https://www.youtube.com/watch?v=BE2oPBr76Ck\r',13,NULL),('貧民百萬歌星','MC HotDog','嘻哈',1,'https://www.youtube.com/watch?v=e87RsA9Y5lI\r',14,NULL),('Just Believe','頑童MJ116','嘻哈',1,'https://www.youtube.com/watch?v=iwvzGpevJjM\r',15,NULL),('朋友','周華健','勵志',1,'https://www.youtube.com/watch?v=6lbPgfKK7m4\r',16,NULL),('向前走','林強','勵志',1,'https://www.youtube.com/watch?v=gD14iiXq7Xw\r',17,NULL),('天高地厚','信樂團','勵志',1,'https://www.youtube.com/watch?v=-KXjU0XjhRY\r',18,NULL),('陽光宅男','周杰倫','勵志',1,'https://www.youtube.com/watch?v=qQ7g1tfEGFc\r',19,NULL),('倔強','五月天','勵志',1,'https://www.youtube.com/watch?v=R2s-H_crYkc\r',20,NULL),('愛最閃耀','許馨文','抒情',2,'https://www.youtube.com/watch?v=4IN_BeUOVn4&t=8s\r',21,NULL),('給我你的愛','Tank(呂建中)','抒情',2,'https://www.youtube.com/watch?v=9CInTGdSTf0\r',22,NULL),('童話 ','光良','抒情',2,'https://www.youtube.com/watch?v=bBcp_ljCBGU\r',23,NULL),('另一個天堂','王力宏& 张靓颖','抒情',2,'https://www.youtube.com/watch?v=bXT7ZipPwxs\r',24,NULL),('非妳莫屬','Tank(呂建中)','抒情',2,'https://www.youtube.com/watch?v=Cd9NzIlCWio\r',25,NULL),('謝謝你愛我','謝和弦','抒情',2,'https://www.youtube.com/watch?v=edTQsoNcADA\r',26,NULL),('老伴','李榮浩','抒情',2,'https://www.youtube.com/watch?v=ELS8Q_Ws3kU\r',27,NULL),('小幸運','田馥甄','抒情',2,'https://www.youtube.com/watch?v=GCgvpwLNvtY\r',28,NULL),('修煉愛情','林俊傑','抒情',2,'https://www.youtube.com/watch?v=LWV-f6dMN3Q\r',29,NULL),('Beautiful love','蔡健雅','抒情',2,'https://www.youtube.com/watch?v=-QOFyrYTk4w\r',30,NULL),('簡單愛','周杰倫','抒情',2,'https://www.youtube.com/watch?v=V-COB2hZqUg\r',31,NULL),('魚仔','盧廣仲','抒情',2,'https://www.youtube.com/watch?v=ybfWYpYhTQQ\r',32,NULL),('還是會','韋禮安','抒情',2,'https://www.youtube.com/watch?v=ZiPQ3GtQeDU\r',33,NULL),('我們不一樣','大壯','搖滾',2,'https://www.youtube.com/watch?v=ekDzlSB1p28\r',34,NULL),('對面女孩看過來','任賢齊','輕快',2,'https://www.youtube.com/watch?v=6aosRlnxg9I\r',35,NULL),('所謂的愛','宋念宇','輕快',2,'https://www.youtube.com/watch?v=90c68uAy6Vw\r',36,NULL),('脫掉','杜德偉','輕快',2,'https://www.youtube.com/watch?v=bqWfosgn_QI\r',37,NULL),('真的不想嘴','聖結石','輕快',2,'https://www.youtube.com/watch?v=fWuq67-VSTM\r',38,NULL),('情非得已','庾澄慶','輕快',2,'https://www.youtube.com/watch?v=hjVmn6WoZR4\r',39,NULL),('如果的事','范瑋琪&張韶涵','輕快',2,'https://www.youtube.com/watch?v=kQOgXPuluEY\r',40,NULL),('香奈兒','王菲','輕快',2,'https://www.youtube.com/watch?v=qHpZ8W8Sqns\r',41,NULL),('Di Da Di','李玟','輕快',2,'https://www.youtube.com/watch?v=zUnkE09Yrv8\r',42,NULL),('迷途羔羊','兄弟本色','嘻哈',2,'https://www.youtube.com/watch?v=CPY6AML_GCY\r',43,NULL),('SPOTLIGHT','頑童MJ116','嘻哈',2,'https://www.youtube.com/watch?v=hDj47GTTjpQ\r',44,NULL),('FLY OUT','兄弟本色','嘻哈',2,'https://www.youtube.com/watch?v=-sM8SynMM5I\r',45,NULL),('女爵','楊乃文','抒情',3,'https://www.youtube.com/watch?v=1M-0vbDTxJw\r',46,NULL),('我多麼羨慕你','江美琪','抒情',3,'https://www.youtube.com/watch?v=57boyq7doDE\r',47,NULL),('貧窮或富有','李榮浩','抒情',3,'https://www.youtube.com/watch?v=7F4EjGU4q-o\r',48,NULL),('玉蝴蝶','謝霆鋒','抒情',3,'https://www.youtube.com/watch?v=9viavzAf20o\r',49,NULL),('她說','林俊傑','抒情',3,'https://www.youtube.com/watch?v=BocMPQv9brE\r',50,NULL),('是我不夠好','李毓芬','抒情',3,'https://www.youtube.com/watch?v=BsvIwqyiaJw&list=PLfM2O09OaV4P9WZQ0n_hm4ujorUciTVvw&index=2\r',51,NULL),('I Believe','范逸臣','抒情',3,'https://www.youtube.com/watch?v=dI5zpKaNR84\r',52,NULL),('你那麼愛她','林隆璇&李聖傑','抒情',3,'https://www.youtube.com/watch?v=dy70lVVxhh4\r',53,NULL),('以後別做朋友','周興哲','抒情',3,'https://www.youtube.com/watch?v=Ew4VvF0DPMc\r',54,NULL),('大海','張雨生','抒情',3,'https://www.youtube.com/watch?v=EXaLvBGqQww\r',55,NULL),('可惜不是你','梁靜茹','抒情',3,'https://www.youtube.com/watch?v=k_l7FVsqUyM\r',56,NULL),('浪費','林宥嘉','抒情',3,'https://www.youtube.com/watch?v=LTzy8NF3BDo\r',57,NULL),('聽海','張惠妹','抒情',3,'https://www.youtube.com/watch?v=mLk61pfiHQ0&list=RDEMmgjtJ5JXys0k3D88B1TTrA&index=9\r',58,NULL),('人質','張惠妹','抒情',3,'https://www.youtube.com/watch?v=o4JrzNdpKw4\r',59,NULL),('心動','林曉培','抒情',3,'https://www.youtube.com/watch?v=rAXmU300DRc\r',60,NULL),('Forever love','王力宏','抒情',3,'https://www.youtube.com/watch?v=ULcmgv837MQ\r',61,NULL),('眼底星空','李聖傑','抒情',3,'https://www.youtube.com/watch?v=VLp9Nb2dXW8\r',62,NULL),('說走就走','陶喆','抒情',3,'https://www.youtube.com/watch?v=ZRmhR3oj4cE&list=RDZRmhR3oj4cE&start_radio=1\r',63,NULL),('愛我別走','張震嶽','悲傷',3,'https://www.youtube.com/watch?v=zPeMFCDPgKE\r',64,NULL),('李白','李榮浩','迷幻',3,'https://www.youtube.com/watch?v=wdypZWuoKvQ\r',65,NULL),('凉凉(三生三世十里桃花)','楊宗緯&張碧晨','悲傷',3,'https://www.youtube.com/watch?v=pb-kc6DWIDI\r',66,NULL),('讓我留在你身邊','陳奕迅','悲傷',3,'https://www.youtube.com/watch?v=y_cRDZXc3Hk\r',67,NULL),('漂向北方','黃明志&王力宏','搖滾',3,'https://www.youtube.com/watch?v=qIF8xvSA0Gw\r',68,NULL),('你把我灌醉','黃大煒','抒情',4,'https://www.youtube.com/watch?v=ecJymYI6MQU\r',69,NULL),('春泥','庾澄慶','抒情',4,'https://www.youtube.com/watch?v=xAh377i2Rmg\r',70,NULL),('倒帶','蔡依林','抒情',4,'https://www.youtube.com/watch?v=1Si6L6IGYS0\r',71,NULL),('我們的愛','F.I.R.','抒情',4,'https://www.youtube.com/watch?v=88D2-J_pk7A\r',72,NULL),('年少有為','李榮浩','抒情',4,'https://www.youtube.com/watch?v=Dnj5Tcpev0Q\r',73,NULL),('新不了情','萬芳','抒情',4,'https://www.youtube.com/watch?v=Dw-R85AcN_w\r',74,NULL),('別說沒愛過','韋禮安','抒情',4,'https://www.youtube.com/watch?v=Eip1p8H0YII\r',75,NULL),('失戀無罪','aLin','抒情',4,'https://www.youtube.com/watch?v=lmFlqWPzl-E\r',76,NULL),('输了你赢了世界又如何','林俊傑','抒情',4,'https://www.youtube.com/watch?v=NiHF-cwto_A\r',77,NULL),('唯一','王力宏','抒情',4,'https://www.youtube.com/watch?v=P7Qv4AV_StM\r',78,NULL),('哭笑不得','柯有綸','抒情',4,'https://www.youtube.com/watch?v=s_rKuSsd7TQ\r',79,NULL),('背叛','曹格','抒情',4,'https://www.youtube.com/watch?v=xHsSWiLsIRY\r',80,NULL),('紳士','薛之謙','悲傷',4,'https://www.youtube.com/watch?v=Ndp0sZ5LyvI\r',81,NULL),('菊花台','周杰倫','悲傷',4,'https://www.youtube.com/watch?v=PdjbRvvJAzg\r',82,NULL),('壞人','方炯鑌','悲傷',4,'https://www.youtube.com/watch?v=UC1hDJs_xhI\r',83,NULL),('黃昏','周傳雄','悲傷',4,'https://www.youtube.com/watch?v=6ca_YHZvzls\r',84,NULL),('不讓我的眼淚陪我過夜','齊秦','悲傷',4,'https://www.youtube.com/watch?v=Bs9eJsvAUGM\r',85,NULL),('手放開','李聖傑','悲傷',4,'https://www.youtube.com/watch?v=g7xmoYFFduk\r',86,NULL),('waiting for  You','胡彥斌','悲傷',4,'https://www.youtube.com/watch?v=H4KIBqcH8iw\r',87,NULL),('聽說愛情回來過','林憶蓮','悲傷',4,'https://www.youtube.com/watch?v=qSnSCOMVSYQ\r',88,NULL),('無字的情批','游鴻明','悲傷',4,'https://www.youtube.com/watch?v=tatY0dK607w\r',89,NULL),('你把我灌醉','鄧紫棋','搖滾',4,'https://www.youtube.com/watch?v=l8pJxVZKW6w\r',90,NULL),('光年之外','鄧紫棋','搖滾',4,'https://www.youtube.com/watch?v=T4SimnaiktU\r',91,NULL),('你媽沒有告訴你嗎','謝和弦','搖滾',5,'https://www.youtube.com/watch?v=5wUTi0YcH9k\r',92,NULL),('誰是老大','施文彬','搖滾',5,'https://www.youtube.com/watch?v=9atxVFtfr24&list=PLfM2O09OaV4P9WZQ0n_hm4ujorUciTVvw&index=32\r',93,NULL),('七仔','施文彬','搖滾',5,'https://www.youtube.com/watch?v=CUfGDJd3K9A\r',94,NULL),('所以我停下來','那我懂你意思了','搖滾',5,'https://www.youtube.com/watch?v=Gp6XKEE8B2E\r',95,NULL),('零','柯有綸','搖滾',5,'https://www.youtube.com/watch?v=kgDL9p0w2-k\r',96,NULL),('樹枝孤鳥','五佰','搖滾',5,'https://www.youtube.com/watch?v=ObSPLQ-1fJI\r',97,NULL),('再會中港路','玖壹壹','電音',5,'https://www.youtube.com/watch?v=lgLF1eMF-zI\r',98,NULL),('Bad Boy','張惠妹','輕快',5,'https://www.youtube.com/watch?v=FCNVAWwh9CQ\r',99,NULL),('無情的情書','動力火車','搖滾',5,'https://www.youtube.com/watch?v=pPr8vkMAe9w\r',100,NULL);
/*!40000 ALTER TABLE `songlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `todo`
--

DROP TABLE IF EXISTS `todo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `todo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `text` longtext NOT NULL,
  `last_modified_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `todo`
--

LOCK TABLES `todo` WRITE;
/*!40000 ALTER TABLE `todo` DISABLE KEYS */;
INSERT INTO `todo` VALUES (1,'hello','omg','2018-09-20 07:29:32.396805','2018-09-20 07:29:32.396805');
/*!40000 ALTER TABLE `todo` ENABLE KEYS */;
UNLOCK TABLES;
=======
INSERT INTO `songlist` VALUES ('讓每個人都心碎','黃大煒','抒情',1,'https://www.youtube.com/watch?v=t4Ts-ysl1IU\r',1),('千年之戀 ','戴愛玲&信樂團','搖滾',1,'https://www.youtube.com/watch?v=2Pfu8b38pzg\r',2),('勢在必行','陳勢安&畢書盡','搖滾',1,'https://www.youtube.com/watch?v=BhHdmugCPjo\r',3),('王妃','蕭敬騰','搖滾',1,'https://www.youtube.com/watch?v=ekDzlSB1p28\r',4),('世界之巔','王繹龍','搖滾',1,'https://www.youtube.com/watch?v=kWza7FCobCQ&list=PLfM2O09OaV4P9WZQ0n_hm4ujorUciTVvw&index=22\r',5),('夠了','羅志祥','搖滾',1,'https://www.youtube.com/watch?v=R3rkSM3xO_k&list=PLfM2O09OaV4P9WZQ0n_hm4ujorUciTVvw&index=55\r',6),('離開地球表面','五月天','搖滾',1,'https://www.youtube.com/watch?v=rtKK2mu4BVc\r',7),('One Night In北京 ','信樂團','搖滾',1,'https://www.youtube.com/watch?v=-zvvtzyZ-Tw\r',8),('觸電','芭比','電音',1,'https://www.youtube.com/watch?v=BcXEgxrmdlU&list=PLfM2O09OaV4P9WZQ0n_hm4ujorUciTVvw&index=5\r',9),('社會搖','蕭全','電音',1,'https://www.youtube.com/watch?v=ITfanx1Fbcs\r',10),('青春修煉手冊','TFBOYS','輕快',1,'https://www.youtube.com/watch?v=sW1dKgOK1kQ\r',11),('兩腳書櫥的逃亡','韋禮安','輕快',1,'https://www.youtube.com/watch?v=NMnwWz_qjV0\r',12),('雙手插口袋','頑童MJ116&張震嶽','嘻哈',1,'https://www.youtube.com/watch?v=BE2oPBr76Ck\r',13),('貧民百萬歌星','MC HotDog','嘻哈',1,'https://www.youtube.com/watch?v=e87RsA9Y5lI\r',14),('Just Believe','頑童MJ116','嘻哈',1,'https://www.youtube.com/watch?v=iwvzGpevJjM\r',15),('朋友','周華健','勵志',1,'https://www.youtube.com/watch?v=6lbPgfKK7m4\r',16),('向前走','林強','勵志',1,'https://www.youtube.com/watch?v=gD14iiXq7Xw\r',17),('天高地厚','信樂團','勵志',1,'https://www.youtube.com/watch?v=-KXjU0XjhRY\r',18),('陽光宅男','周杰倫','勵志',1,'https://www.youtube.com/watch?v=qQ7g1tfEGFc\r',19),('倔強','五月天','勵志',1,'https://www.youtube.com/watch?v=R2s-H_crYkc\r',20),('愛最閃耀','許馨文','抒情',2,'https://www.youtube.com/watch?v=4IN_BeUOVn4&t=8s\r',21),('給我你的愛','Tank(呂建中)','抒情',2,'https://www.youtube.com/watch?v=9CInTGdSTf0\r',22),('童話 ','光良','抒情',2,'https://www.youtube.com/watch?v=bBcp_ljCBGU\r',23),('另一個天堂','王力宏& 张靓颖','抒情',2,'https://www.youtube.com/watch?v=bXT7ZipPwxs\r',24),('非妳莫屬','Tank(呂建中)','抒情',2,'https://www.youtube.com/watch?v=Cd9NzIlCWio\r',25),('謝謝你愛我','謝和弦','抒情',2,'https://www.youtube.com/watch?v=edTQsoNcADA\r',26),('老伴','李榮浩','抒情',2,'https://www.youtube.com/watch?v=ELS8Q_Ws3kU\r',27),('小幸運','田馥甄','抒情',2,'https://www.youtube.com/watch?v=GCgvpwLNvtY\r',28),('修煉愛情','林俊傑','抒情',2,'https://www.youtube.com/watch?v=LWV-f6dMN3Q\r',29),('Beautiful love','蔡健雅','抒情',2,'https://www.youtube.com/watch?v=-QOFyrYTk4w\r',30),('簡單愛','周杰倫','抒情',2,'https://www.youtube.com/watch?v=V-COB2hZqUg\r',31),('魚仔','盧廣仲','抒情',2,'https://www.youtube.com/watch?v=ybfWYpYhTQQ\r',32),('還是會','韋禮安','抒情',2,'https://www.youtube.com/watch?v=ZiPQ3GtQeDU\r',33),('我們不一樣','大壯','搖滾',2,'https://www.youtube.com/watch?v=ekDzlSB1p28\r',34),('對面女孩看過來','任賢齊','輕快',2,'https://www.youtube.com/watch?v=6aosRlnxg9I\r',35),('所謂的愛','宋念宇','輕快',2,'https://www.youtube.com/watch?v=90c68uAy6Vw\r',36),('脫掉','杜德偉','輕快',2,'https://www.youtube.com/watch?v=bqWfosgn_QI\r',37),('真的不想嘴','聖結石','輕快',2,'https://www.youtube.com/watch?v=fWuq67-VSTM\r',38),('情非得已','庾澄慶','輕快',2,'https://www.youtube.com/watch?v=hjVmn6WoZR4\r',39),('如果的事','范瑋琪&張韶涵','輕快',2,'https://www.youtube.com/watch?v=kQOgXPuluEY\r',40),('香奈兒','王菲','輕快',2,'https://www.youtube.com/watch?v=qHpZ8W8Sqns\r',41),('Di Da Di','李玟','輕快',2,'https://www.youtube.com/watch?v=zUnkE09Yrv8\r',42),('迷途羔羊','兄弟本色','嘻哈',2,'https://www.youtube.com/watch?v=CPY6AML_GCY\r',43),('SPOTLIGHT','頑童MJ116','嘻哈',2,'https://www.youtube.com/watch?v=hDj47GTTjpQ\r',44),('FLY OUT','兄弟本色','嘻哈',2,'https://www.youtube.com/watch?v=-sM8SynMM5I\r',45),('女爵','楊乃文','抒情',3,'https://www.youtube.com/watch?v=1M-0vbDTxJw\r',46),('我多麼羨慕你','江美琪','抒情',3,'https://www.youtube.com/watch?v=57boyq7doDE\r',47),('貧窮或富有','李榮浩','抒情',3,'https://www.youtube.com/watch?v=7F4EjGU4q-o\r',48),('玉蝴蝶','謝霆鋒','抒情',3,'https://www.youtube.com/watch?v=9viavzAf20o\r',49),('她說','林俊傑','抒情',3,'https://www.youtube.com/watch?v=BocMPQv9brE\r',50),('是我不夠好','李毓芬','抒情',3,'https://www.youtube.com/watch?v=BsvIwqyiaJw&list=PLfM2O09OaV4P9WZQ0n_hm4ujorUciTVvw&index=2\r',51),('I Believe','范逸臣','抒情',3,'https://www.youtube.com/watch?v=dI5zpKaNR84\r',52),('你那麼愛她','林隆璇&李聖傑','抒情',3,'https://www.youtube.com/watch?v=dy70lVVxhh4\r',53),('以後別做朋友','周興哲','抒情',3,'https://www.youtube.com/watch?v=Ew4VvF0DPMc\r',54),('大海','張雨生','抒情',3,'https://www.youtube.com/watch?v=EXaLvBGqQww\r',55),('可惜不是你','梁靜茹','抒情',3,'https://www.youtube.com/watch?v=k_l7FVsqUyM\r',56),('浪費','林宥嘉','抒情',3,'https://www.youtube.com/watch?v=LTzy8NF3BDo\r',57),('聽海','張惠妹','抒情',3,'https://www.youtube.com/watch?v=mLk61pfiHQ0&list=RDEMmgjtJ5JXys0k3D88B1TTrA&index=9\r',58),('人質','張惠妹','抒情',3,'https://www.youtube.com/watch?v=o4JrzNdpKw4\r',59),('心動','林曉培','抒情',3,'https://www.youtube.com/watch?v=rAXmU300DRc\r',60),('Forever love','王力宏','抒情',3,'https://www.youtube.com/watch?v=ULcmgv837MQ\r',61),('眼底星空','李聖傑','抒情',3,'https://www.youtube.com/watch?v=VLp9Nb2dXW8\r',62),('說走就走','陶喆','抒情',3,'https://www.youtube.com/watch?v=ZRmhR3oj4cE&list=RDZRmhR3oj4cE&start_radio=1\r',63),('愛我別走','張震嶽','悲傷',3,'https://www.youtube.com/watch?v=zPeMFCDPgKE\r',64),('李白','李榮浩','迷幻',3,'https://www.youtube.com/watch?v=wdypZWuoKvQ\r',65),('凉凉(三生三世十里桃花)','楊宗緯&張碧晨','悲傷',3,'https://www.youtube.com/watch?v=pb-kc6DWIDI\r',66),('讓我留在你身邊','陳奕迅','悲傷',3,'https://www.youtube.com/watch?v=y_cRDZXc3Hk\r',67),('漂向北方','黃明志&王力宏','搖滾',3,'https://www.youtube.com/watch?v=qIF8xvSA0Gw\r',68),('你把我灌醉','黃大煒','抒情',4,'https://www.youtube.com/watch?v=ecJymYI6MQU\r',69),('春泥','庾澄慶','抒情',4,'https://www.youtube.com/watch?v=xAh377i2Rmg\r',70),('倒帶','蔡依林','抒情',4,'https://www.youtube.com/watch?v=1Si6L6IGYS0\r',71),('我們的愛','F.I.R.','抒情',4,'https://www.youtube.com/watch?v=88D2-J_pk7A\r',72),('年少有為','李榮浩','抒情',4,'https://www.youtube.com/watch?v=Dnj5Tcpev0Q\r',73),('新不了情','萬芳','抒情',4,'https://www.youtube.com/watch?v=Dw-R85AcN_w\r',74),('別說沒愛過','韋禮安','抒情',4,'https://www.youtube.com/watch?v=Eip1p8H0YII\r',75),('失戀無罪','aLin','抒情',4,'https://www.youtube.com/watch?v=lmFlqWPzl-E\r',76),('输了你赢了世界又如何','林俊傑','抒情',4,'https://www.youtube.com/watch?v=NiHF-cwto_A\r',77),('唯一','王力宏','抒情',4,'https://www.youtube.com/watch?v=P7Qv4AV_StM\r',78),('哭笑不得','柯有綸','抒情',4,'https://www.youtube.com/watch?v=s_rKuSsd7TQ\r',79),('背叛','曹格','抒情',4,'https://www.youtube.com/watch?v=xHsSWiLsIRY\r',80),('紳士','薛之謙','悲傷',4,'https://www.youtube.com/watch?v=Ndp0sZ5LyvI\r',81),('菊花台','周杰倫','悲傷',4,'https://www.youtube.com/watch?v=PdjbRvvJAzg\r',82),('壞人','方炯鑌','悲傷',4,'https://www.youtube.com/watch?v=UC1hDJs_xhI\r',83),('黃昏','周傳雄','悲傷',4,'https://www.youtube.com/watch?v=6ca_YHZvzls\r',84),('不讓我的眼淚陪我過夜','齊秦','悲傷',4,'https://www.youtube.com/watch?v=Bs9eJsvAUGM\r',85),('手放開','李聖傑','悲傷',4,'https://www.youtube.com/watch?v=g7xmoYFFduk\r',86),('waiting for  You','胡彥斌','悲傷',4,'https://www.youtube.com/watch?v=H4KIBqcH8iw\r',87),('聽說愛情回來過','林憶蓮','悲傷',4,'https://www.youtube.com/watch?v=qSnSCOMVSYQ\r',88),('無字的情批','游鴻明','悲傷',4,'https://www.youtube.com/watch?v=tatY0dK607w\r',89),('你把我灌醉','鄧紫棋','搖滾',4,'https://www.youtube.com/watch?v=l8pJxVZKW6w\r',90),('光年之外','鄧紫棋','搖滾',4,'https://www.youtube.com/watch?v=T4SimnaiktU\r',91),('你媽沒有告訴你嗎','謝和弦','搖滾',5,'https://www.youtube.com/watch?v=5wUTi0YcH9k\r',92),('誰是老大','施文彬','搖滾',5,'https://www.youtube.com/watch?v=9atxVFtfr24&list=PLfM2O09OaV4P9WZQ0n_hm4ujorUciTVvw&index=32\r',93),('七仔','施文彬','搖滾',5,'https://www.youtube.com/watch?v=CUfGDJd3K9A\r',94),('所以我停下來','那我懂你意思了','搖滾',5,'https://www.youtube.com/watch?v=Gp6XKEE8B2E\r',95),('零','柯有綸','搖滾',5,'https://www.youtube.com/watch?v=kgDL9p0w2-k\r',96),('樹枝孤鳥','五佰','搖滾',5,'https://www.youtube.com/watch?v=ObSPLQ-1fJI\r',97),('再會中港路','玖壹壹','電音',5,'https://www.youtube.com/watch?v=lgLF1eMF-zI\r',98),('Bad Boy','張惠妹','輕快',5,'https://www.youtube.com/watch?v=FCNVAWwh9CQ\r',99),('無情的情書','動力火車','搖滾',5,'https://www.youtube.com/watch?v=pPr8vkMAe9w\r',100);
/*!40000 ALTER TABLE `songlist` ENABLE KEYS */;
UNLOCK TABLES;
>>>>>>> 1e9bc497e2a180ad8a36288732549c78e9de9b02
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

<<<<<<< HEAD
-- Dump completed on 2018-10-05 19:43:43
=======
-- Dump completed on 2018-10-03 11:16:19
>>>>>>> 1e9bc497e2a180ad8a36288732549c78e9de9b02
