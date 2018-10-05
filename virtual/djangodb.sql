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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add songlist',7,'add_songlist'),(26,'Can change songlist',7,'change_songlist'),(27,'Can delete songlist',7,'delete_songlist'),(28,'Can view songlist',7,'view_songlist'),(29,'Can add messages',8,'add_messages'),(30,'Can change messages',8,'change_messages'),(31,'Can delete messages',8,'delete_messages'),(32,'Can view messages',8,'view_messages'),(33,'Can add product',9,'add_product'),(34,'Can change product',9,'change_product'),(35,'Can delete product',9,'delete_product'),(36,'Can view product',9,'view_product'),(37,'Can add friends_ chat',10,'add_friends_chat'),(38,'Can change friends_ chat',10,'change_friends_chat'),(39,'Can delete friends_ chat',10,'delete_friends_chat'),(40,'Can view friends_ chat',10,'view_friends_chat');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'donate','product'),(10,'makefriends','friends_chat'),(8,'message','messages'),(7,'music','songlist'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
=======
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
>>>>>>> d31cf3c16e31b18026abd8a92cbcbdfeabd380c7
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
<<<<<<< HEAD
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-09-17 06:04:07.633128'),(2,'auth','0001_initial','2018-09-17 06:04:11.485910'),(3,'admin','0001_initial','2018-09-17 06:04:12.448175'),(4,'admin','0002_logentry_remove_auto_add','2018-09-17 06:04:12.457151'),(5,'admin','0003_logentry_add_action_flag_choices','2018-09-17 06:04:12.464725'),(6,'contenttypes','0002_remove_content_type_name','2018-09-17 06:04:13.148432'),(7,'auth','0002_alter_permission_name_max_length','2018-09-17 06:04:13.486036'),(8,'auth','0003_alter_user_email_max_length','2018-09-17 06:04:14.128154'),(9,'auth','0004_alter_user_username_opts','2018-09-17 06:04:14.166866'),(10,'auth','0005_alter_user_last_login_null','2018-09-17 06:04:14.402340'),(11,'auth','0006_require_contenttypes_0002','2018-09-17 06:04:14.410357'),(12,'auth','0007_alter_validators_add_error_messages','2018-09-17 06:04:14.438326'),(13,'auth','0008_alter_user_username_max_length','2018-09-17 06:04:14.656441'),(14,'auth','0009_alter_user_last_name_max_length','2018-09-17 06:04:15.111760'),(15,'music','0001_initial_manual','2018-09-17 06:04:15.333990'),(16,'sessions','0001_initial','2018-09-17 06:04:15.489993'),(17,'donate','0001_initial','2018-09-22 12:13:38.370054'),(18,'donate','0002_auto_20180922_2013','2018-09-22 12:13:38.403846'),(19,'message','0001_initial','2018-09-22 12:13:38.663675'),(20,'message','0002_auto_20180922_2013','2018-09-22 12:13:38.699203'),(21,'music','0002_songlist_last_modified_at','2018-09-22 12:13:39.364843'),(22,'makefriends','0001_initial','2018-09-22 23:13:27.465997');
=======
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-09-17 06:04:07.633128'),(2,'auth','0001_initial','2018-09-17 06:04:11.485910'),(3,'admin','0001_initial','2018-09-17 06:04:12.448175'),(4,'admin','0002_logentry_remove_auto_add','2018-09-17 06:04:12.457151'),(5,'admin','0003_logentry_add_action_flag_choices','2018-09-17 06:04:12.464725'),(6,'contenttypes','0002_remove_content_type_name','2018-09-17 06:04:13.148432'),(7,'auth','0002_alter_permission_name_max_length','2018-09-17 06:04:13.486036'),(8,'auth','0003_alter_user_email_max_length','2018-09-17 06:04:14.128154'),(9,'auth','0004_alter_user_username_opts','2018-09-17 06:04:14.166866'),(10,'auth','0005_alter_user_last_login_null','2018-09-17 06:04:14.402340'),(11,'auth','0006_require_contenttypes_0002','2018-09-17 06:04:14.410357'),(12,'auth','0007_alter_validators_add_error_messages','2018-09-17 06:04:14.438326'),(13,'auth','0008_alter_user_username_max_length','2018-09-17 06:04:14.656441'),(14,'auth','0009_alter_user_last_name_max_length','2018-09-17 06:04:15.111760'),(15,'music','0001_initial_manual','2018-09-17 06:04:15.333990'),(16,'sessions','0001_initial','2018-09-17 06:04:15.489993'),(17,'donate','0001_initial','2018-09-30 02:07:39.627650'),(18,'donate','0002_auto_20180922_1041','2018-09-30 02:07:39.637656'),(19,'donate','0002_auto_20180921_0942','2018-09-30 02:07:39.644655'),(20,'donate','0003_merge_20180923_2149','2018-09-30 02:07:39.654660'),(21,'message','0001_initial','2018-09-30 02:07:39.660656'),(22,'message','0002_auto_20180922_1041','2018-09-30 02:07:39.668735'),(23,'message','0002_auto_20180921_0942','2018-09-30 02:07:39.675660'),(24,'message','0003_merge_20180923_2149','2018-09-30 02:07:39.682668'),(25,'music','0002_songlist_last_modified_at','2018-09-30 02:07:39.689462'),(26,'music','0003_auto_20180926_2017','2018-09-30 02:07:39.696678'),(27,'music','0004_auto_20180929_1532','2018-09-30 02:07:39.703683'),(28,'music','0005_auto_20180929_1533','2018-09-30 02:07:39.709857'),(29,'product','0001_initial','2018-09-30 02:07:39.716951');
>>>>>>> d31cf3c16e31b18026abd8a92cbcbdfeabd380c7
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
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'alanchen1','alan1@gmail.com','1111',33),(5,'alanchen2','alan2@gmail.com','1111',28);
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
>>>>>>> d31cf3c16e31b18026abd8a92cbcbdfeabd380c7
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
<<<<<<< HEAD
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
=======
  PRIMARY KEY (`productid`),
  KEY `products_categoryid_dd8a17ec_fk_categories_categoryid` (`categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
>>>>>>> d31cf3c16e31b18026abd8a92cbcbdfeabd380c7
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
<<<<<<< HEAD
=======
INSERT INTO `products` VALUES (1,'a01','毛哥','a01.jpg','No001','M'),(6,'a02','昇哥','a02.jpg','No02','M'),(7,'a03','小偉','a03.jpg','No03','M'),(8,'a04','小越','a04.jpg','No04','M'),(9,'a05','龍哥','a05.jpg','No05','M'),(17,'a06','SUNNI','a06.gif','No06','F'),(18,'a07','RAINI','a07.jpg','No07','F'),(21,'a08','Shiny','a08.jpg','Wonderful','F');
>>>>>>> d31cf3c16e31b18026abd8a92cbcbdfeabd380c7
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
  `last_modified_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songlist`
--

LOCK TABLES `songlist` WRITE;
/*!40000 ALTER TABLE `songlist` DISABLE KEYS */;
INSERT INTO `songlist` VALUES ('讓每個人都心碎','黃大煒','抒情',1,'https://www.youtube.com/watch?v=t4Ts-ysl1IU\r',1,'2018-09-22 12:13:38.741308'),('千年之戀 ','戴愛玲&信樂團','搖滾',1,'https://www.youtube.com/watch?v=2Pfu8b38pzg\r',2,'2018-09-22 12:13:38.741308'),('勢在必行','陳勢安&畢書盡','搖滾',1,'https://www.youtube.com/watch?v=BhHdmugCPjo\r',3,'2018-09-22 12:13:38.741308'),('王妃','蕭敬騰','搖滾',1,'https://www.youtube.com/watch?v=ekDzlSB1p28\r',4,'2018-09-22 12:13:38.741308'),('世界之巔','王繹龍','搖滾',1,'https://www.youtube.com/watch?v=kWza7FCobCQ&list=PLfM2O09OaV4P9WZQ0n_hm4ujorUciTVvw&index=22\r',5,'2018-09-22 12:13:38.741308'),('夠了','羅志祥','搖滾',1,'https://www.youtube.com/watch?v=R3rkSM3xO_k&list=PLfM2O09OaV4P9WZQ0n_hm4ujorUciTVvw&index=55\r',6,'2018-09-22 12:13:38.741308'),('離開地球表面','五月天','搖滾',1,'https://www.youtube.com/watch?v=rtKK2mu4BVc\r',7,'2018-09-22 12:13:38.741308'),('One Night In北京 ','信樂團','搖滾',1,'https://www.youtube.com/watch?v=-zvvtzyZ-Tw\r',8,'2018-09-22 12:13:38.741308'),('觸電','芭比','電音',1,'https://www.youtube.com/watch?v=BcXEgxrmdlU&list=PLfM2O09OaV4P9WZQ0n_hm4ujorUciTVvw&index=5\r',9,'2018-09-22 12:13:38.741308'),('社會搖','蕭全','電音',1,'https://www.youtube.com/watch?v=ITfanx1Fbcs\r',10,'2018-09-22 12:13:38.741308'),('青春修煉手冊','TFBOYS','輕快',1,'https://www.youtube.com/watch?v=sW1dKgOK1kQ\r',11,'2018-09-22 12:13:38.741308'),('兩腳書櫥的逃亡','韋禮安','輕快',1,'https://www.youtube.com/watch?v=NMnwWz_qjV0\r',12,'2018-09-22 12:13:38.741308'),('雙手插口袋','頑童MJ116&張震嶽','嘻哈',1,'https://www.youtube.com/watch?v=BE2oPBr76Ck\r',13,'2018-09-22 12:13:38.741308'),('貧民百萬歌星','MC HotDog','嘻哈',1,'https://www.youtube.com/watch?v=e87RsA9Y5lI\r',14,'2018-09-22 12:13:38.741308'),('Just Believe','頑童MJ116','嘻哈',1,'https://www.youtube.com/watch?v=iwvzGpevJjM\r',15,'2018-09-22 12:13:38.741308'),('朋友','周華健','勵志',1,'https://www.youtube.com/watch?v=6lbPgfKK7m4\r',16,'2018-09-22 12:13:38.741308'),('向前走','林強','勵志',1,'https://www.youtube.com/watch?v=gD14iiXq7Xw\r',17,'2018-09-22 12:13:38.741308'),('天高地厚','信樂團','勵志',1,'https://www.youtube.com/watch?v=-KXjU0XjhRY\r',18,'2018-09-22 12:13:38.741308'),('陽光宅男','周杰倫','勵志',1,'https://www.youtube.com/watch?v=qQ7g1tfEGFc\r',19,'2018-09-22 12:13:38.741308'),('倔強','五月天','勵志',1,'https://www.youtube.com/watch?v=R2s-H_crYkc\r',20,'2018-09-22 12:13:38.741308'),('愛最閃耀','許馨文','抒情',2,'https://www.youtube.com/watch?v=4IN_BeUOVn4&t=8s\r',21,'2018-09-22 12:13:38.741308'),('給我你的愛','Tank(呂建中)','抒情',2,'https://www.youtube.com/watch?v=9CInTGdSTf0\r',22,'2018-09-22 12:13:38.741308'),('童話 ','光良','抒情',2,'https://www.youtube.com/watch?v=bBcp_ljCBGU\r',23,'2018-09-22 12:13:38.741308'),('另一個天堂','王力宏& 张靓颖','抒情',2,'https://www.youtube.com/watch?v=bXT7ZipPwxs\r',24,'2018-09-22 12:13:38.741308'),('非妳莫屬','Tank(呂建中)','抒情',2,'https://www.youtube.com/watch?v=Cd9NzIlCWio\r',25,'2018-09-22 12:13:38.741308'),('謝謝你愛我','謝和弦','抒情',2,'https://www.youtube.com/watch?v=edTQsoNcADA\r',26,'2018-09-22 12:13:38.741308'),('老伴','李榮浩','抒情',2,'https://www.youtube.com/watch?v=ELS8Q_Ws3kU\r',27,'2018-09-22 12:13:38.741308'),('小幸運','田馥甄','抒情',2,'https://www.youtube.com/watch?v=GCgvpwLNvtY\r',28,'2018-09-22 12:13:38.741308'),('修煉愛情','林俊傑','抒情',2,'https://www.youtube.com/watch?v=LWV-f6dMN3Q\r',29,'2018-09-22 12:13:38.741308'),('Beautiful love','蔡健雅','抒情',2,'https://www.youtube.com/watch?v=-QOFyrYTk4w\r',30,'2018-09-22 12:13:38.741308'),('簡單愛','周杰倫','抒情',2,'https://www.youtube.com/watch?v=V-COB2hZqUg\r',31,'2018-09-22 12:13:38.741308'),('魚仔','盧廣仲','抒情',2,'https://www.youtube.com/watch?v=ybfWYpYhTQQ\r',32,'2018-09-22 12:13:38.741308'),('還是會','韋禮安','抒情',2,'https://www.youtube.com/watch?v=ZiPQ3GtQeDU\r',33,'2018-09-22 12:13:38.741308'),('我們不一樣','大壯','搖滾',2,'https://www.youtube.com/watch?v=ekDzlSB1p28\r',34,'2018-09-22 12:13:38.741308'),('對面女孩看過來','任賢齊','輕快',2,'https://www.youtube.com/watch?v=6aosRlnxg9I\r',35,'2018-09-22 12:13:38.741308'),('所謂的愛','宋念宇','輕快',2,'https://www.youtube.com/watch?v=90c68uAy6Vw\r',36,'2018-09-22 12:13:38.741308'),('脫掉','杜德偉','輕快',2,'https://www.youtube.com/watch?v=bqWfosgn_QI\r',37,'2018-09-22 12:13:38.741308'),('真的不想嘴','聖結石','輕快',2,'https://www.youtube.com/watch?v=fWuq67-VSTM\r',38,'2018-09-22 12:13:38.741308'),('情非得已','庾澄慶','輕快',2,'https://www.youtube.com/watch?v=hjVmn6WoZR4\r',39,'2018-09-22 12:13:38.741308'),('如果的事','范瑋琪&張韶涵','輕快',2,'https://www.youtube.com/watch?v=kQOgXPuluEY\r',40,'2018-09-22 12:13:38.741308'),('香奈兒','王菲','輕快',2,'https://www.youtube.com/watch?v=qHpZ8W8Sqns\r',41,'2018-09-22 12:13:38.741308'),('Di Da Di','李玟','輕快',2,'https://www.youtube.com/watch?v=zUnkE09Yrv8\r',42,'2018-09-22 12:13:38.741308'),('迷途羔羊','兄弟本色','嘻哈',2,'https://www.youtube.com/watch?v=CPY6AML_GCY\r',43,'2018-09-22 12:13:38.741308'),('SPOTLIGHT','頑童MJ116','嘻哈',2,'https://www.youtube.com/watch?v=hDj47GTTjpQ\r',44,'2018-09-22 12:13:38.741308'),('FLY OUT','兄弟本色','嘻哈',2,'https://www.youtube.com/watch?v=-sM8SynMM5I\r',45,'2018-09-22 12:13:38.741308'),('女爵','楊乃文','抒情',3,'https://www.youtube.com/watch?v=1M-0vbDTxJw\r',46,'2018-09-22 12:13:38.741308'),('我多麼羨慕你','江美琪','抒情',3,'https://www.youtube.com/watch?v=57boyq7doDE\r',47,'2018-09-22 12:13:38.741308'),('貧窮或富有','李榮浩','抒情',3,'https://www.youtube.com/watch?v=7F4EjGU4q-o\r',48,'2018-09-22 12:13:38.741308'),('玉蝴蝶','謝霆鋒','抒情',3,'https://www.youtube.com/watch?v=9viavzAf20o\r',49,'2018-09-22 12:13:38.741308'),('她說','林俊傑','抒情',3,'https://www.youtube.com/watch?v=BocMPQv9brE\r',50,'2018-09-22 12:13:38.741308'),('是我不夠好','李毓芬','抒情',3,'https://www.youtube.com/watch?v=BsvIwqyiaJw&list=PLfM2O09OaV4P9WZQ0n_hm4ujorUciTVvw&index=2\r',51,'2018-09-22 12:13:38.741308'),('I Believe','范逸臣','抒情',3,'https://www.youtube.com/watch?v=dI5zpKaNR84\r',52,'2018-09-22 12:13:38.741308'),('你那麼愛她','林隆璇&李聖傑','抒情',3,'https://www.youtube.com/watch?v=dy70lVVxhh4\r',53,'2018-09-22 12:13:38.741308'),('以後別做朋友','周興哲','抒情',3,'https://www.youtube.com/watch?v=Ew4VvF0DPMc\r',54,'2018-09-22 12:13:38.741308'),('大海','張雨生','抒情',3,'https://www.youtube.com/watch?v=EXaLvBGqQww\r',55,'2018-09-22 12:13:38.741308'),('可惜不是你','梁靜茹','抒情',3,'https://www.youtube.com/watch?v=k_l7FVsqUyM\r',56,'2018-09-22 12:13:38.741308'),('浪費','林宥嘉','抒情',3,'https://www.youtube.com/watch?v=LTzy8NF3BDo\r',57,'2018-09-22 12:13:38.741308'),('聽海','張惠妹','抒情',3,'https://www.youtube.com/watch?v=mLk61pfiHQ0&list=RDEMmgjtJ5JXys0k3D88B1TTrA&index=9\r',58,'2018-09-22 12:13:38.741308'),('人質','張惠妹','抒情',3,'https://www.youtube.com/watch?v=o4JrzNdpKw4\r',59,'2018-09-22 12:13:38.741308'),('心動','林曉培','抒情',3,'https://www.youtube.com/watch?v=rAXmU300DRc\r',60,'2018-09-22 12:13:38.741308'),('Forever love','王力宏','抒情',3,'https://www.youtube.com/watch?v=ULcmgv837MQ\r',61,'2018-09-22 12:13:38.741308'),('眼底星空','李聖傑','抒情',3,'https://www.youtube.com/watch?v=VLp9Nb2dXW8\r',62,'2018-09-22 12:13:38.741308'),('說走就走','陶喆','抒情',3,'https://www.youtube.com/watch?v=ZRmhR3oj4cE&list=RDZRmhR3oj4cE&start_radio=1\r',63,'2018-09-22 12:13:38.741308'),('愛我別走','張震嶽','悲傷',3,'https://www.youtube.com/watch?v=zPeMFCDPgKE\r',64,'2018-09-22 12:13:38.741308'),('李白','李榮浩','迷幻',3,'https://www.youtube.com/watch?v=wdypZWuoKvQ\r',65,'2018-09-22 12:13:38.741308'),('凉凉(三生三世十里桃花)','楊宗緯&張碧晨','悲傷',3,'https://www.youtube.com/watch?v=pb-kc6DWIDI\r',66,'2018-09-22 12:13:38.741308'),('讓我留在你身邊','陳奕迅','悲傷',3,'https://www.youtube.com/watch?v=y_cRDZXc3Hk\r',67,'2018-09-22 12:13:38.741308'),('漂向北方','黃明志&王力宏','搖滾',3,'https://www.youtube.com/watch?v=qIF8xvSA0Gw\r',68,'2018-09-22 12:13:38.741308'),('你把我灌醉','黃大煒','抒情',4,'https://www.youtube.com/watch?v=ecJymYI6MQU\r',69,'2018-09-22 12:13:38.741308'),('春泥','庾澄慶','抒情',4,'https://www.youtube.com/watch?v=xAh377i2Rmg\r',70,'2018-09-22 12:13:38.741308'),('倒帶','蔡依林','抒情',4,'https://www.youtube.com/watch?v=1Si6L6IGYS0\r',71,'2018-09-22 12:13:38.741308'),('我們的愛','F.I.R.','抒情',4,'https://www.youtube.com/watch?v=88D2-J_pk7A\r',72,'2018-09-22 12:13:38.741308'),('年少有為','李榮浩','抒情',4,'https://www.youtube.com/watch?v=Dnj5Tcpev0Q\r',73,'2018-09-22 12:13:38.741308'),('新不了情','萬芳','抒情',4,'https://www.youtube.com/watch?v=Dw-R85AcN_w\r',74,'2018-09-22 12:13:38.741308'),('別說沒愛過','韋禮安','抒情',4,'https://www.youtube.com/watch?v=Eip1p8H0YII\r',75,'2018-09-22 12:13:38.741308'),('失戀無罪','aLin','抒情',4,'https://www.youtube.com/watch?v=lmFlqWPzl-E\r',76,'2018-09-22 12:13:38.741308'),('输了你赢了世界又如何','林俊傑','抒情',4,'https://www.youtube.com/watch?v=NiHF-cwto_A\r',77,'2018-09-22 12:13:38.741308'),('唯一','王力宏','抒情',4,'https://www.youtube.com/watch?v=P7Qv4AV_StM\r',78,'2018-09-22 12:13:38.741308'),('哭笑不得','柯有綸','抒情',4,'https://www.youtube.com/watch?v=s_rKuSsd7TQ\r',79,'2018-09-22 12:13:38.741308'),('背叛','曹格','抒情',4,'https://www.youtube.com/watch?v=xHsSWiLsIRY\r',80,'2018-09-22 12:13:38.741308'),('紳士','薛之謙','悲傷',4,'https://www.youtube.com/watch?v=Ndp0sZ5LyvI\r',81,'2018-09-22 12:13:38.741308'),('菊花台','周杰倫','悲傷',4,'https://www.youtube.com/watch?v=PdjbRvvJAzg\r',82,'2018-09-22 12:13:38.741308'),('壞人','方炯鑌','悲傷',4,'https://www.youtube.com/watch?v=UC1hDJs_xhI\r',83,'2018-09-22 12:13:38.741308'),('黃昏','周傳雄','悲傷',4,'https://www.youtube.com/watch?v=6ca_YHZvzls\r',84,'2018-09-22 12:13:38.741308'),('不讓我的眼淚陪我過夜','齊秦','悲傷',4,'https://www.youtube.com/watch?v=Bs9eJsvAUGM\r',85,'2018-09-22 12:13:38.741308'),('手放開','李聖傑','悲傷',4,'https://www.youtube.com/watch?v=g7xmoYFFduk\r',86,'2018-09-22 12:13:38.741308'),('waiting for  You','胡彥斌','悲傷',4,'https://www.youtube.com/watch?v=H4KIBqcH8iw\r',87,'2018-09-22 12:13:38.741308'),('聽說愛情回來過','林憶蓮','悲傷',4,'https://www.youtube.com/watch?v=qSnSCOMVSYQ\r',88,'2018-09-22 12:13:38.741308'),('無字的情批','游鴻明','悲傷',4,'https://www.youtube.com/watch?v=tatY0dK607w\r',89,'2018-09-22 12:13:38.741308'),('你把我灌醉','鄧紫棋','搖滾',4,'https://www.youtube.com/watch?v=l8pJxVZKW6w\r',90,'2018-09-22 12:13:38.741308'),('光年之外','鄧紫棋','搖滾',4,'https://www.youtube.com/watch?v=T4SimnaiktU\r',91,'2018-09-22 12:13:38.741308'),('你媽沒有告訴你嗎','謝和弦','搖滾',5,'https://www.youtube.com/watch?v=5wUTi0YcH9k\r',92,'2018-09-22 12:13:38.741308'),('誰是老大','施文彬','搖滾',5,'https://www.youtube.com/watch?v=9atxVFtfr24&list=PLfM2O09OaV4P9WZQ0n_hm4ujorUciTVvw&index=32\r',93,'2018-09-22 12:13:38.741308'),('七仔','施文彬','搖滾',5,'https://www.youtube.com/watch?v=CUfGDJd3K9A\r',94,'2018-09-22 12:13:38.741308'),('所以我停下來','那我懂你意思了','搖滾',5,'https://www.youtube.com/watch?v=Gp6XKEE8B2E\r',95,'2018-09-22 12:13:38.741308'),('零','柯有綸','搖滾',5,'https://www.youtube.com/watch?v=kgDL9p0w2-k\r',96,'2018-09-22 12:13:38.741308'),('樹枝孤鳥','五佰','搖滾',5,'https://www.youtube.com/watch?v=ObSPLQ-1fJI\r',97,'2018-09-22 12:13:38.741308'),('再會中港路','玖壹壹','電音',5,'https://www.youtube.com/watch?v=lgLF1eMF-zI\r',98,'2018-09-22 12:13:38.741308'),('Bad Boy','張惠妹','輕快',5,'https://www.youtube.com/watch?v=FCNVAWwh9CQ\r',99,'2018-09-22 12:13:38.741308'),('無情的情書','動力火車','搖滾',5,'https://www.youtube.com/watch?v=pPr8vkMAe9w\r',100,'2018-09-22 12:13:38.741308');
/*!40000 ALTER TABLE `songlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

<<<<<<< HEAD
-- Dump completed on 2018-09-24 20:09:47
=======
-- Dump completed on 2018-10-03 11:16:19
>>>>>>> d31cf3c16e31b18026abd8a92cbcbdfeabd380c7
