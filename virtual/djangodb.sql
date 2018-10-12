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
-- Table structure for table `apnews`
--

DROP TABLE IF EXISTS `apnews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `apnews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(45) NOT NULL,
  `category` varchar(45) NOT NULL,
  `title` varchar(300) NOT NULL,
  `link` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13688 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apnews`
--

LOCK TABLES `apnews` WRITE;
/*!40000 ALTER TABLE `apnews` DISABLE KEYS */;
INSERT INTO `apnews` VALUES (13657,'15:38','地產','188萬搶租台北101　北市商辦空置率創...','https://tw.finance.appledaily.com/realtime/20181011/1445588/'),(13658,'15:38','政治','國安基金5000億銀彈備戰 　藍委：若違...','https://tw.news.appledaily.com/politics/realtime/20181011/1445749/'),(13659,'15:38','論壇','民主聖地豈容一黨之獨享','https://tw.news.appledaily.com/forum/realtime/20181011/1445660/'),(13660,'15:38','特企','\n【特企】保暖商機無限 蜂巢晶格『石墨烯』...   \n','https://tw.news.appledaily.com/life/realtime/20181011/1444678/'),(13661,'15:37','社會','​醉漢跳河與警對峙　警消合力拉上岸化解鬧...','https://tw.news.appledaily.com/local/realtime/20181011/1445787/'),(13662,'15:35','體育','洋基輸紅襪　史坦頓沒打點遭紐媒毒舌罵翻','https://tw.sports.appledaily.com/realtime/20181011/1445628/'),(13663,'15:35','生活','台中國際動畫影展開幕　徵選台灣藝術家到法...','https://tw.news.appledaily.com/life/realtime/20181011/1445764/'),(13664,'15:34','財經','川普罵聲不斷　Fed主席堅持繼續升息','https://tw.finance.appledaily.com/realtime/20181011/1445797/'),(13665,'15:29','財經','【美股崩盤1】台股今暴跌660點史上最慘...','https://tw.finance.appledaily.com/realtime/20181011/1445393/'),(13666,'15:28','體育','【更新】阪神17來首度墊底　監督金本知憲...','https://tw.sports.appledaily.com/realtime/20181011/1445563/'),(13667,'15:28','生活','竹市曙光女中響應國際女童日　齊力助養14...','https://tw.news.appledaily.com/life/realtime/20181011/1445790/'),(13668,'15:25','娛樂','楊丞琳看獨居老人噴淚　難忘吃東西出聲被爸...','https://tw.entertainment.appledaily.com/realtime/20181011/1445775/'),(13669,'15:24','財經','【美股崩盤】外資大逃亡　今大賣台股302...','https://tw.finance.appledaily.com/realtime/20181011/1445789/'),(13670,'15:23','女生','極品正妹實習營養師上表特　網友喊：我缺營...','https://tw.news.appledaily.com/girl/realtime/20181011/1445748/'),(13671,'15:22','社會','打錯檔釀禍　頭城火車站前汽車猛撞1死3傷','https://tw.news.appledaily.com/local/realtime/20181011/1445693/'),(13672,'15:22','國際','日本皇族絢子月底出嫁　政府將給3000萬','https://tw.news.appledaily.com/international/realtime/20181011/1445788/'),(13673,'15:21','財經','【美股崩盤7】上證暴跌逾5%　韓股跌幅7...','https://tw.finance.appledaily.com/realtime/20181011/1445507/'),(13674,'15:21','娛樂','黃明志湊齊亞洲辣妹　嬌喘示範「老司機愛聽...','https://tw.entertainment.appledaily.com/realtime/20181011/1445779/'),(13675,'15:20','生活','​老男人注意！尿柱細軟無力　小心攝護腺肥...','https://tw.news.appledaily.com/life/realtime/20181011/1445599/'),(13676,'15:19','娛樂','藍葦華視帝加持最美的風景　冷看盧廣仲','https://tw.entertainment.appledaily.com/realtime/20181011/1445732/'),(13677,'15:16','社會','揹5通緝躲8年沒事　酒醉仰躺引擎蓋吐真言...','https://tw.news.appledaily.com/local/realtime/20181011/1445776/'),(13678,'15:15','生活','女警太正！網友想「揪團自首」　鍵盤柯南揭...','https://tw.news.appledaily.com/life/realtime/20181011/1445780/'),(13679,'15:15','生活','首例！資方控工會不誠信協商　提勞動裁決','https://tw.news.appledaily.com/life/realtime/20181011/1445786/'),(13680,'15:14','社會','趙藤雄妻贈兒1.2億股票　抗繳5510萬...','https://tw.news.appledaily.com/local/realtime/20181011/1445729/'),(13681,'15:14','生活','官媒新聞消失　立委批小公廣已出現寒蟬效應','https://tw.news.appledaily.com/life/realtime/20181011/1445673/'),(13682,'15:12','政治','前大使湯繼仁國慶昏倒送醫　外交部：派專人...','https://tw.news.appledaily.com/politics/realtime/20181011/1445679/'),(13683,'15:11','財經','【美股崩盤4】財金雙首長宣布：國安基金5...','https://tw.finance.appledaily.com/realtime/20181011/1445489/'),(13684,'15:10','財經','【美股崩盤5】台股跌幅6.31%全球最重...','https://tw.finance.appledaily.com/realtime/20181011/1445483/'),(13685,'15:10','政治','​翁章梁提觀光四大主軸　吳芳銘：打造友善...','https://tw.news.appledaily.com/politics/realtime/20181011/1445767/'),(13686,'15:07','國際','美國會年度報告　指中共擴大社會控制侵蝕香...','https://tw.news.appledaily.com/international/realtime/20181011/1445774/'),(13687,'15:06','國際','中國民主？正妹唱國歌被批不愛國　遭全面封...','https://tw.news.appledaily.com/international/realtime/20181011/1445463/');
/*!40000 ALTER TABLE `apnews` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add songlist',7,'add_songlist'),(26,'Can change songlist',7,'change_songlist'),(27,'Can delete songlist',7,'delete_songlist'),(28,'Can view songlist',7,'view_songlist'),(29,'Can add members',8,'add_members'),(30,'Can change members',8,'change_members'),(31,'Can delete members',8,'delete_members'),(32,'Can view members',8,'view_members'),(33,'Can add member',9,'add_member'),(34,'Can change member',9,'change_member'),(35,'Can delete member',9,'delete_member'),(36,'Can view member',9,'view_member'),(37,'Can add orderhistory',10,'add_orderhistory'),(38,'Can change orderhistory',10,'change_orderhistory'),(39,'Can delete orderhistory',10,'delete_orderhistory'),(40,'Can view orderhistory',10,'view_orderhistory'),(41,'Can add messages',11,'add_messages'),(42,'Can change messages',11,'change_messages'),(43,'Can delete messages',11,'delete_messages'),(44,'Can view messages',11,'view_messages'),(45,'Can add product',12,'add_product'),(46,'Can change product',12,'change_product'),(47,'Can delete product',12,'delete_product'),(48,'Can view product',12,'view_product'),(49,'Can add product',13,'add_product'),(50,'Can change product',13,'change_product'),(51,'Can delete product',13,'delete_product'),(52,'Can view product',13,'view_product');
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(12,'donate','product'),(8,'member','members'),(11,'message','messages'),(9,'music','member'),(10,'music','orderhistory'),(7,'music','songlist'),(13,'product','product'),(6,'sessions','session');
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-09-17 06:04:07.633128'),(2,'auth','0001_initial','2018-09-17 06:04:11.485910'),(3,'admin','0001_initial','2018-09-17 06:04:12.448175'),(4,'admin','0002_logentry_remove_auto_add','2018-09-17 06:04:12.457151'),(5,'admin','0003_logentry_add_action_flag_choices','2018-09-17 06:04:12.464725'),(6,'contenttypes','0002_remove_content_type_name','2018-09-17 06:04:13.148432'),(7,'auth','0002_alter_permission_name_max_length','2018-09-17 06:04:13.486036'),(8,'auth','0003_alter_user_email_max_length','2018-09-17 06:04:14.128154'),(9,'auth','0004_alter_user_username_opts','2018-09-17 06:04:14.166866'),(10,'auth','0005_alter_user_last_login_null','2018-09-17 06:04:14.402340'),(11,'auth','0006_require_contenttypes_0002','2018-09-17 06:04:14.410357'),(12,'auth','0007_alter_validators_add_error_messages','2018-09-17 06:04:14.438326'),(13,'auth','0008_alter_user_username_max_length','2018-09-17 06:04:14.656441'),(14,'auth','0009_alter_user_last_name_max_length','2018-09-17 06:04:15.111760'),(15,'music','0001_initial_manual','2018-09-17 06:04:15.333990'),(16,'sessions','0001_initial','2018-09-17 06:04:15.489993'),(17,'donate','0001_initial','2018-09-30 02:07:39.627650'),(18,'donate','0002_auto_20180922_1041','2018-09-30 02:07:39.637656'),(19,'donate','0002_auto_20180921_0942','2018-09-30 02:07:39.644655'),(20,'donate','0003_merge_20180923_2149','2018-09-30 02:07:39.654660'),(21,'message','0001_initial','2018-09-30 02:07:39.660656'),(22,'message','0002_auto_20180922_1041','2018-09-30 02:07:39.668735'),(23,'message','0002_auto_20180921_0942','2018-09-30 02:07:39.675660'),(24,'message','0003_merge_20180923_2149','2018-09-30 02:07:39.682668'),(25,'music','0002_songlist_last_modified_at','2018-09-30 02:07:39.689462'),(26,'music','0003_auto_20180926_2017','2018-09-30 02:07:39.696678'),(27,'music','0004_auto_20180929_1532','2018-09-30 02:07:39.703683'),(28,'music','0005_auto_20180929_1533','2018-09-30 02:07:39.709857'),(29,'product','0001_initial','2018-09-30 02:07:39.716951'),(30,'member','0001_initial','2018-10-04 01:27:10.237384'),(31,'member','0002_auto_20180920_1330','2018-10-04 01:27:10.252996');
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
INSERT INTO `django_session` VALUES ('0sdlh0yo52whihf9bo8ltfukrjhqx5wd','MzU5NzA4MzFjN2MzMThjNmZhMTNiMTU4YjNkOTk1YTlkOGZiMzhjOTp7Im1lbWJlcklkIjoyfQ==','2018-10-22 09:34:49.307464'),('9vdummdztaxxtc1626cuwn6n21t1zzh0','YWRiY2ViZjI5MjRhZWNhYjkwOGQ2Y2IxZTJiOWZmZGNhOTljMzlkMTp7ImNhcHRjaGEiOiI2NUQ3MyJ9','2018-10-25 02:41:03.432371'),('f179ih70igj7ckldhqlx3msvn34k07ud','MjUyMTc0ZGRlODEyYzQwNDU1OTE1MTFjNTJlMWMzZjE0OWYwMTNiYzp7ImNhcHRjaGEiOiI1QjA0RiJ9','2018-10-25 02:53:33.638692'),('ofc1bg8eq6n8mp2majs2vles2g3ey5c1','ZjZjYzU1OWQwZDFjZWMyNTA2ZmE5MmRkMmEyODljY2RhNDZkODkwNzp7ImNhcHRjaGEiOiJBMURIQiJ9','2018-10-25 01:49:11.760259');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
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
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `job` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'王栗弘','0000','d3567636@nhasag.net','歌手\r','1979-02-08','Men'),(2,'王惠甫','0000','d3616052@nwytg.net','幼稚園園長\r','1975-02-16','Men'),(3,'吳玉鳳','0000','superwu@jourrapide.net','藝人\r','1957-03-19','Women'),(4,'吳俊義','0000','sMenilepig@gmail.com','電競選手\r','1995-03-02','Men'),(5,'徐奶麟','0000','nene@pchome.com.tw','罵人專家','1956-07-07','Men'),(6,'杜老爺','0000','ilehWomenouz@sharklasers.com','房仲業務員','1942-07-13','Women'),(7,'周劫圇','0000','ibu27146@awsoo.net','廚師\r','1983-06-08','Men'),(8,'林阿真','0000','jenny1212@hotmail.net.tw','學生\r','2001-09-26','Women'),(9,'林姿英','0000','uqq05285@nbzMenr.com','建築師\r','1980-06-25','Women'),(10,'林美智','0000','sMenile_611@hotmail.net','研究員\r','1999-06-16','Women'),(11,'柯佩姍','0000','MenoMenoLeo@hotmail.com','餐廳老闆\r','1977-02-26','Women'),(12,'宵禁疼','0000','cMenq38335@nbzMenr.net','工程師\r','1947-08-23','Men'),(13,'張旭程','0000','r77992288@yahoo.net.tw','公務員\r','1966-07-27','Men'),(14,'張家瑜','0000','crououki@Womenakeinbox.com','財務規劃分析師\r','1942-04-02','Men'),(15,'張惠昀','0000','iskedhe@mailnesia.net','歌手\r','1983-07-28','Women'),(16,'淋菌截','0000','avl93880@nbzMenr.edu.net','教師\r','1974-03-02','Men'),(17,'郭柏廷','0000','p14479663@hotmail.com','作家\r','1988-08-08','Men'),(18,'郭家康','0000','orange8979@hotmail.edu.tw','自由業\r','1984-03-05','Men'),(19,'陳于倫','0000','nMenw69092@awsoo.com','律師\r','1986-01-20','Women'),(20,'陳佑甄','0000','orange8979@hotmail.edu.net','幼稚園老師\r','1984-12-05','Women'),(21,'陳冠廷','0000','cgtn12@dayrep.net','室內設計師\r','1962-03-30','Men'),(22,'陳茂恒','0000','localking@gmail.net','工程師\r','1979-12-12','Men'),(23,'陳香涵','0000','Meniconago@hotmail.net','家管\r','1979-01-20','Women'),(24,'陸亞谷','0000','sen31049@awsoo.edu.net','學生\r','1977-09-28','Women'),(25,'程韻云','0000','lqWomen64354@nbzMenr.net','待業\r','1972-03-06','Women'),(26,'馮依婷','0000','ypp22890@nbzMenr.net','漫畫家\r','1958-07-17','Women'),(27,'黃行佩','0000','eltibcivde@mailnesia.edu','製造業經理\r','1970-09-08','Women'),(28,'黃定國','0000','crazydissy@hotmail.edu','主廚\r','1972-08-05','Men'),(29,'黃勇仰','0000','yongyang36160@starkedupay.edu','體育老師\r','1949-11-18','Men'),(30,'黃彥傑','0000','p14479663@hotmail.edu','作業員\r','1982-08-09','Men'),(31,'黃星均','0000','wang0909@gmail.edu','學生\r','2000-07-16','Men'),(32,'黃毅愛','0000','sunny001@gmail.edu','家管\r','1962-02-01','Women'),(33,'楊家洋','0000','criawaew@Womenakeinbox.edu','車輛技師\r','1968-01-31','Men'),(34,'溫邵右','0000','ben24367949@yahoo.edu.net','記者\r','1993-11-25','Men'),(35,'葉子毓','0000','udpig10228@yahoo.edu.tw','保險業務員\r','1978-06-12','Men'),(36,'葉學俐','0000','ben24367949@yahoo.edu.tw','記者\r','1992-01-25','Men'),(37,'詹佩珊','0000','tpeggyw@Mensn.com','警察\r','1980-03-02','Women'),(38,'劉筱婷','0000','Menountainking@gmail.com','實況主\r','1993-01-09','Women'),(39,'賴俐恭','0000','portned34@gustr.com','驗光師\r','1950-09-27','Women'),(40,'關鈞蕙','0000','hWomenq83717@nbzMenr.com','小說家\r','1964-04-12','Women'),(41,'吳柏定','0000','gaogao@new.com.tw','律師\r','1953-08-01','Men'),(42,'劉建佳','0000','liucc@gmail.net','企業家\r','1964-07-30','Men'),(43,'曹文彬','0000','renewgo1762@msa.hinet.net','檢察官\r','1957-09-06','Men'),(44,'林怡桓','0000','iggg123789@hotmail.com','設計師\r','1995-10-13','Women'),(45,'楊仰天','0000','d3567636@csda.net','學生\r','2001-06-21','Men'),(46,'潘雅晴','0000','zxq35pp6@nwytg.edu','學生\r','1999-11-11','Women'),(47,'賴耀文','0000','littlelie@yahoo.com.tw','醫師\r','1951-12-30','Men'),(48,'謝雅筑','0000','hsiehyaya@nycda.com.tw','家管\r','1988-03-27','Women'),(49,'涂虹欣','0000','csgo@hrraf.net','待業\r','1977-04-16','Women'),(50,'吳康宏','0000','d123789gga@nwytg.com','精算師\r','1975-05-04','Men'),(53,'你好嗎','0000','hello@gmail.com','售票員','1989-10-19','Women'),(54,'台灣人','0000','taiwan@yahoo.com.tw','政客','1985-01-16','Women'),(55,'我是誰','0000','who@gmail.com','待業中','1989-03-23','Women'),(61,'胡瓜','000','hugua@gmail.com','藝人','1953-06-24','Men'),(62,'王小名','0000','wanwan@yaoo','流鶯','1985-06-23','Women'),(65,'徐奶霖','0000','hsu@yahoo.com.tw','罵人專家','1952-04-24','Men'),(66,'admin','admin','admin@gmail.com','站主','2018-10-10','Men');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderhistory`
--

DROP TABLE IF EXISTS `orderhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `order_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order_num` int(11) NOT NULL,
  `this_song_order_num` int(11) NOT NULL,
  `this_song_like_or_not` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name_idx` (`member_id`),
  KEY `song_id_idx` (`song_id`),
  CONSTRAINT `orderhistory_member_id_id_b3796d8c_fk_member_id` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`),
  CONSTRAINT `orderhistory_song_id_id_51cc8720_fk_songlist_id` FOREIGN KEY (`song_id`) REFERENCES `songlist` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='點歌紀錄';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderhistory`
--

LOCK TABLES `orderhistory` WRITE;
/*!40000 ALTER TABLE `orderhistory` DISABLE KEYS */;
INSERT INTO `orderhistory` VALUES (1,1,60,'2018-10-03 09:28:52',1,6,0),(17,1,4,'2018-10-03 09:50:02',2,6,1),(18,1,8,'2018-10-03 09:50:04',3,2,0),(19,1,2,'2018-10-03 09:50:09',4,3,0),(20,1,1,'2018-10-03 09:50:11',5,3,0),(21,1,7,'2018-10-03 09:50:13',6,2,0),(22,1,11,'2018-10-03 09:50:17',7,10,1),(23,1,13,'2018-10-03 09:50:24',8,9,0),(24,1,3,'2018-10-03 09:52:00',9,1,1),(25,1,97,'2018-10-04 06:08:41',10,18,1),(26,1,26,'2018-10-04 06:08:47',11,7,1),(27,1,98,'2018-10-04 06:08:52',12,10,0),(28,1,56,'2018-10-04 06:09:20',13,4,1),(29,1,68,'2018-10-04 06:11:40',14,2,0),(30,1,58,'2018-10-04 06:13:33',15,5,0),(31,1,51,'2018-10-04 06:13:37',16,21,1),(32,1,84,'2018-10-04 06:13:58',17,1,1),(33,1,99,'2018-10-04 06:13:58',18,21,0),(34,1,49,'2018-10-04 06:14:00',19,7,0),(35,1,24,'2018-10-04 06:14:01',20,6,0),(36,1,82,'2018-10-04 06:14:05',21,1,0),(37,1,21,'2018-10-04 06:20:23',22,7,0),(38,1,93,'2018-10-04 06:21:14',23,36,1),(39,1,62,'2018-10-04 06:21:17',24,5,0),(40,1,28,'2018-10-04 06:21:22',25,5,0),(41,1,88,'2018-10-04 06:21:27',26,5,1),(42,1,57,'2018-10-04 06:21:28',27,6,0),(43,1,100,'2018-10-04 06:21:30',28,17,1),(44,1,27,'2018-10-04 06:21:32',29,5,0),(45,1,35,'2018-10-04 06:21:36',30,6,0),(46,1,48,'2018-10-04 06:21:41',31,4,0),(47,1,83,'2018-10-04 06:26:37',32,1,1),(48,1,47,'2018-10-04 06:26:48',33,3,1),(49,1,43,'2018-10-04 06:26:52',34,5,0),(50,1,54,'2018-10-04 06:26:59',35,5,0),(51,1,16,'2018-10-04 06:27:05',36,2,0),(52,1,59,'2018-10-04 06:27:06',37,5,0),(53,1,94,'2018-10-04 06:30:05',38,15,0),(54,1,55,'2018-10-04 06:30:06',39,2,0),(55,1,74,'2018-10-04 06:30:08',40,2,0),(56,1,19,'2018-10-04 06:30:09',41,5,0),(57,1,30,'2018-10-04 06:31:38',42,5,0),(58,1,61,'2018-10-04 06:31:42',43,7,0),(59,1,71,'2018-10-04 06:32:39',44,3,1),(60,1,37,'2018-10-04 06:32:40',45,7,0),(61,1,6,'2018-10-04 06:32:48',46,9,1),(62,1,63,'2018-10-04 06:38:39',47,4,1),(63,1,12,'2018-10-04 07:06:56',48,2,0),(64,1,96,'2018-10-04 07:06:57',49,13,0),(65,1,86,'2018-10-04 07:06:59',50,2,1),(66,1,77,'2018-10-04 07:07:00',51,2,0),(67,1,46,'2018-10-04 07:07:01',52,4,0),(68,1,39,'2018-10-04 07:07:03',53,3,0),(69,1,44,'2018-10-04 07:09:54',54,4,0),(70,1,40,'2018-10-04 07:17:37',55,2,0),(71,1,52,'2018-10-04 07:17:42',56,9,1),(72,1,15,'2018-10-04 07:18:53',57,2,0),(73,1,67,'2018-10-04 07:18:56',58,3,0),(74,1,23,'2018-10-04 07:18:56',59,6,0),(75,1,92,'2018-10-04 07:20:39',60,7,1),(76,1,36,'2018-10-04 07:26:31',61,6,0),(77,1,95,'2018-10-04 07:40:02',62,12,0),(78,1,25,'2018-10-04 07:43:20',63,4,0),(79,1,32,'2018-10-04 07:44:31',64,2,0),(80,1,41,'2018-10-04 07:53:54',65,14,1),(81,1,20,'2018-10-04 08:01:59',66,1,0),(82,1,85,'2018-10-04 08:02:05',67,1,0),(83,1,14,'2018-10-04 08:05:18',68,5,0),(84,1,53,'2018-10-04 08:05:28',69,5,1),(85,1,42,'2018-10-04 08:06:38',70,2,0),(86,1,79,'2018-10-04 08:06:48',71,2,1),(87,1,31,'2018-10-04 08:08:36',72,3,0),(88,1,50,'2018-10-04 08:16:03',73,3,1),(89,1,65,'2018-10-04 09:49:13',74,4,0),(90,1,22,'2018-10-04 09:56:52',75,1,0),(91,1,64,'2018-10-04 09:56:57',76,2,0),(92,1,33,'2018-10-04 09:57:48',77,2,0),(93,1,81,'2018-10-04 09:58:38',78,1,0),(94,1,10,'2018-10-04 11:25:44',79,1,0),(95,1,45,'2018-10-04 12:42:00',80,3,0),(96,1,5,'2018-10-05 06:38:40',81,6,0),(97,1,66,'2018-10-05 06:53:53',82,1,0),(98,1,89,'2018-10-05 07:01:35',83,1,1),(99,1,73,'2018-10-05 07:02:12',84,1,1),(100,1,38,'2018-10-05 07:23:42',85,1,0),(101,1,29,'2018-10-05 07:32:08',86,1,0),(102,1,80,'2018-10-05 07:59:30',87,1,0),(103,2,100,'2018-10-10 18:31:41',18,18,1),(104,2,81,'2018-10-05 09:17:49',3,1,1),(105,2,60,'2018-10-05 09:17:54',6,3,1),(106,2,77,'2018-10-05 09:22:23',6,1,1),(107,2,67,'2018-10-05 09:22:35',8,2,1),(108,2,19,'2018-10-05 09:25:57',11,3,0),(109,2,89,'2018-10-05 09:26:21',11,2,0),(110,2,97,'2018-10-10 17:22:22',23,13,0),(111,2,57,'2018-10-05 09:30:18',13,2,0),(112,2,28,'2018-10-08 17:26:52',17,5,1),(113,2,26,'2018-10-10 17:31:54',20,7,1),(114,2,31,'2018-10-08 17:30:40',19,5,0),(115,2,64,'2018-10-05 09:41:12',20,5,0),(116,2,22,'2018-10-05 10:04:02',22,4,0),(117,2,80,'2018-10-08 03:06:40',23,4,0),(118,2,56,'2018-10-08 00:23:39',23,3,1),(119,2,30,'2018-10-09 05:12:46',25,4,0),(120,2,35,'2018-10-08 18:05:24',25,3,0),(121,2,85,'2018-10-08 03:18:36',24,1,0),(122,2,10,'2018-10-08 17:10:35',29,5,0),(123,2,17,'2018-10-08 03:34:03',29,4,0),(124,2,65,'2018-10-08 17:30:44',31,5,0),(125,2,36,'2018-10-08 17:22:55',31,4,0),(126,2,38,'2018-10-08 00:40:48',33,4,0),(127,2,79,'2018-10-08 00:41:24',33,3,1),(128,2,54,'2018-10-08 00:26:25',39,8,1),(129,2,40,'2018-10-08 18:16:18',34,2,0),(130,2,48,'2018-10-08 05:51:42',37,4,1),(131,2,96,'2018-10-08 17:10:31',41,7,0),(132,2,4,'2018-10-08 05:51:55',38,3,0),(133,2,51,'2018-10-08 18:16:21',45,9,0),(134,2,15,'2018-10-08 18:18:07',39,2,0),(135,2,59,'2018-10-09 04:44:33',42,4,0),(136,2,45,'2018-10-08 18:16:41',43,4,1),(137,2,9,'2018-10-09 05:00:10',43,3,0),(138,2,90,'2018-10-08 05:52:25',42,1,0),(139,2,92,'2018-10-10 17:31:50',52,10,0),(140,2,11,'2018-10-08 05:52:43',45,2,0),(141,2,14,'2018-10-08 05:54:53',48,4,0),(142,2,2,'2018-10-08 05:54:56',48,3,0),(143,2,99,'2018-10-08 05:55:01',49,3,0),(144,2,55,'2018-10-09 05:12:59',51,4,0),(145,2,12,'2018-10-08 17:25:57',52,4,0),(146,2,95,'2018-10-08 00:40:58',57,7,0),(147,2,68,'2018-10-10 17:28:21',59,7,1),(148,2,5,'2018-10-08 06:30:50',55,2,0),(149,2,66,'2018-10-08 00:41:02',56,2,0),(150,2,33,'2018-10-08 06:31:07',57,2,0),(151,2,58,'2018-10-08 06:36:02',57,1,1),(152,2,63,'2018-10-10 17:31:51',62,5,0),(153,2,20,'2018-10-08 06:43:00',60,2,0),(154,2,98,'2018-10-08 18:16:41',65,6,0),(155,2,46,'2018-10-08 06:43:06',61,1,0),(156,2,93,'2018-10-10 17:53:14',73,12,1),(157,2,94,'2018-10-10 17:31:52',66,4,0),(158,2,83,'2018-10-08 17:36:02',65,2,0),(159,2,24,'2018-10-08 06:54:19',67,3,0),(160,2,47,'2018-10-08 07:00:51',67,2,0),(161,2,3,'2018-10-08 17:25:10',68,2,0),(162,2,71,'2018-10-08 07:02:50',68,1,0),(163,2,25,'2018-10-09 04:44:31',73,5,0),(164,2,42,'2018-10-08 07:15:58',70,1,0),(165,2,6,'2018-10-08 18:18:55',78,8,1),(166,2,49,'2018-10-08 17:26:52',75,4,0),(167,2,91,'2018-10-08 07:19:07',73,1,0),(168,2,43,'2018-10-08 07:23:28',74,1,0),(169,2,84,'2018-10-08 07:24:12',75,1,1),(170,2,32,'2018-10-10 17:11:48',77,2,1),(171,2,44,'2018-10-08 07:33:30',79,3,1),(172,2,16,'2018-10-08 07:33:44',79,2,1),(173,2,86,'2018-10-08 07:34:42',81,2,1),(174,2,8,'2018-10-08 17:11:22',83,2,1),(175,2,61,'2018-10-08 07:50:33',83,1,1),(176,2,88,'2018-10-08 07:53:24',84,1,1),(177,2,72,'2018-10-09 05:12:58',86,2,0),(178,2,73,'2018-10-08 17:12:50',86,1,1),(179,2,7,'2018-10-08 17:35:57',88,2,1),(180,2,75,'2018-10-08 18:01:34',89,1,1),(181,2,39,'2018-10-08 18:18:00',91,2,0),(182,2,53,'2018-10-08 19:09:27',92,1,0),(183,2,29,'2018-10-09 04:54:49',93,1,1),(184,2,41,'2018-10-09 04:57:22',94,1,1),(185,2,27,'2018-10-09 05:13:01',95,1,0),(186,2,50,'2018-10-10 17:28:17',96,1,1),(187,2,13,'2018-10-10 17:31:45',97,1,0),(188,2,69,'2018-10-10 17:31:50',98,1,0);
/*!40000 ALTER TABLE `orderhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'a01','毛哥','a01.jpg','<a target=\'blank\' href=\'https://www.messenger.com/t/274160709884780\'><img src=\'https://facebook.botframework.com/Content/MessageUs.png\'></a>','M'),(6,'a02','昇哥','a02.jpg','<a target=\'blank\' href=\'https://www.messenger.com/t/274160709884780\'><img src=\'https://facebook.botframework.com/Content/MessageUs.png\'></a>','M'),(7,'a03','小偉','a03.jpg','<a target=\'blank\' href=\'https://www.messenger.com/t/274160709884780\'><img src=\'https://facebook.botframework.com/Content/MessageUs.png\'></a>','M'),(8,'a04','小越','a04.jpg','<a target=\'blank\' href=\'https://www.messenger.com/t/274160709884780\'><img src=\'https://facebook.botframework.com/Content/MessageUs.png\'></a>','M'),(9,'a05','龍哥','a05.jpg','<a target=\'blank\' href=\'https://www.messenger.com/t/274160709884780\'><img src=\'https://facebook.botframework.com/Content/MessageUs.png\'></a>','M'),(22,'a06','JENNI','superstar_fQLiO5H.gif','<a target=\'blank\' href=\'https://www.messenger.com/t/274160709884780\'><img src=\'https://facebook.botframework.com/Content/MessageUs.png\'></a>','F'),(23,'a07','JOLLI','superstar_FfPZf76.gif','<a target=\'blank\' href=\'https://www.messenger.com/t/274160709884780\'><img src=\'https://facebook.botframework.com/Content/MessageUs.png\'></a>','F'),(24,'a08','SAMMI','superstar.gif','<a target=\'blank\' href=\'https://www.messenger.com/t/274160709884780\'><img src=\'https://facebook.botframework.com/Content/MessageUs.png\'></a>','F');
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
INSERT INTO `songlist` VALUES ('讓每個人都心碎','黃大煒','抒情',1,'https://www.youtube.com/watch?v=t4Ts-ysl1IU\r',1,'2018-09-21 01:06:52.277894'),('千年之戀 ','戴愛玲&信樂團','搖滾',1,'https://www.youtube.com/watch?v=2Pfu8b38pzg\r',2,'2018-09-21 01:06:52.277894'),('勢在必行','陳勢安&畢書盡','搖滾',1,'https://www.youtube.com/watch?v=BhHdmugCPjo\r',3,'2018-09-21 01:06:52.277894'),('王妃','蕭敬騰','搖滾',1,'https://www.youtube.com/watch?v=ekDzlSB1p28\r',4,'2018-09-21 01:06:52.277894'),('世界之巔','王繹龍','搖滾',1,'https://www.youtube.com/watch?v=kWza7FCobCQ',5,'2018-09-21 01:06:52.277894'),('夠了','羅志祥','搖滾',1,'https://www.youtube.com/watch?v=R3rkSM3xO_k',6,'2018-09-21 01:06:52.277894'),('離開地球表面','五月天','搖滾',1,'https://www.youtube.com/watch?v=rtKK2mu4BVc\r',7,'2018-09-21 01:06:52.277894'),('One Night In北京 ','信樂團','搖滾',1,'https://www.youtube.com/watch?v=-zvvtzyZ-Tw\r',8,'2018-09-21 01:06:52.277894'),('觸電','芭比','電音',1,'https://www.youtube.com/watch?v=BcXEgxrmdlU',9,'2018-09-21 01:06:52.277894'),('社會搖','蕭全','電音',1,'https://www.youtube.com/watch?v=ITfanx1Fbcs\r',10,'2018-09-21 01:06:52.277894'),('青春修煉手冊','TFBOYS','輕快',1,'https://www.youtube.com/watch?v=sW1dKgOK1kQ\r',11,'2018-09-21 01:06:52.277894'),('兩腳書櫥的逃亡','韋禮安','輕快',1,'https://www.youtube.com/watch?v=NMnwWz_qjV0\r',12,'2018-09-21 01:06:52.277894'),('雙手插口袋','頑童MJ116&張震嶽','嘻哈',1,'https://www.youtube.com/watch?v=BE2oPBr76Ck\r',13,'2018-09-21 01:06:52.277894'),('貧民百萬歌星','MC HotDog','嘻哈',1,'https://www.youtube.com/watch?v=e87RsA9Y5lI\r',14,'2018-09-21 01:06:52.277894'),('Just Believe','頑童MJ116','嘻哈',1,'https://www.youtube.com/watch?v=iwvzGpevJjM\r',15,'2018-09-21 01:06:52.277894'),('朋友','周華健','勵志',1,'https://www.youtube.com/watch?v=6lbPgfKK7m4\r',16,'2018-09-21 01:06:52.277894'),('向前走','林強','勵志',1,'https://www.youtube.com/watch?v=gD14iiXq7Xw\r',17,'2018-09-21 01:06:52.277894'),('天高地厚','信樂團','勵志',1,'https://www.youtube.com/watch?v=-KXjU0XjhRY\r',18,'2018-09-21 01:06:52.277894'),('陽光宅男','周杰倫','勵志',1,'https://www.youtube.com/watch?v=qQ7g1tfEGFc\r',19,'2018-09-21 01:06:52.277894'),('倔強','五月天','勵志',1,'https://www.youtube.com/watch?v=R2s-H_crYkc\r',20,'2018-09-21 01:06:52.277894'),('愛最閃耀','許馨文','抒情',2,'https://www.youtube.com/watch?v=4IN_BeUOVn4\r',21,'2018-09-21 01:06:52.277894'),('給我你的愛','Tank(呂建中)','抒情',2,'https://www.youtube.com/watch?v=9CInTGdSTf0\r',22,'2018-09-21 01:06:52.277894'),('童話 ','光良','抒情',2,'https://www.youtube.com/watch?v=bBcp_ljCBGU\r',23,'2018-09-21 01:06:52.277894'),('另一個天堂','王力宏& 张靓颖','抒情',2,'https://www.youtube.com/watch?v=bXT7ZipPwxs\r',24,'2018-09-21 01:06:52.277894'),('非妳莫屬','Tank(呂建中)','抒情',2,'https://www.youtube.com/watch?v=Cd9NzIlCWio\r',25,'2018-09-21 01:06:52.277894'),('謝謝你愛我','謝和弦','抒情',2,'https://www.youtube.com/watch?v=edTQsoNcADA\r',26,'2018-09-21 01:06:52.277894'),('老伴','李榮浩','抒情',2,'https://www.youtube.com/watch?v=ELS8Q_Ws3kU\r',27,'2018-09-21 01:06:52.277894'),('小幸運','田馥甄','抒情',2,'https://www.youtube.com/watch?v=GCgvpwLNvtY\r',28,'2018-09-21 01:06:52.277894'),('修煉愛情','林俊傑','抒情',2,'https://www.youtube.com/watch?v=LWV-f6dMN3Q\r',29,'2018-09-21 01:06:52.277894'),('Beautiful love','蔡健雅','抒情',2,'https://www.youtube.com/watch?v=-QOFyrYTk4w\r',30,'2018-09-21 01:06:52.277894'),('簡單愛','周杰倫','抒情',2,'https://www.youtube.com/watch?v=V-COB2hZqUg\r',31,'2018-09-21 01:06:52.277894'),('魚仔','盧廣仲','抒情',2,'https://www.youtube.com/watch?v=ybfWYpYhTQQ\r',32,'2018-09-21 01:06:52.277894'),('還是會','韋禮安','抒情',2,'https://www.youtube.com/watch?v=ZiPQ3GtQeDU\r',33,'2018-09-21 01:06:52.277894'),('我們不一樣','大壯','搖滾',2,'https://www.youtube.com/watch?v=ekDzlSB1p28\r',34,'2018-09-21 01:06:52.277894'),('對面女孩看過來','任賢齊','輕快',2,'https://www.youtube.com/watch?v=6aosRlnxg9I\r',35,'2018-09-21 01:06:52.277894'),('所謂的愛','宋念宇','輕快',2,'https://www.youtube.com/watch?v=90c68uAy6Vw\r',36,'2018-09-21 01:06:52.277894'),('脫掉','杜德偉','輕快',2,'https://www.youtube.com/watch?v=bqWfosgn_QI\r',37,'2018-09-21 01:06:52.277894'),('真的不想嘴','聖結石','輕快',2,'https://www.youtube.com/watch?v=fWuq67-VSTM\r',38,'2018-09-21 01:06:52.277894'),('情非得已','庾澄慶','輕快',2,'https://www.youtube.com/watch?v=hjVmn6WoZR4\r',39,'2018-09-21 01:06:52.277894'),('如果的事','范瑋琪&張韶涵','輕快',2,'https://www.youtube.com/watch?v=kQOgXPuluEY\r',40,'2018-09-21 01:06:52.277894'),('香奈兒','王菲','輕快',2,'https://www.youtube.com/watch?v=qHpZ8W8Sqns\r',41,'2018-09-21 01:06:52.277894'),('Di Da Di','李玟','輕快',2,'https://www.youtube.com/watch?v=zUnkE09Yrv8\r',42,'2018-09-21 01:06:52.277894'),('迷途羔羊','兄弟本色','嘻哈',2,'https://www.youtube.com/watch?v=CPY6AML_GCY\r',43,'2018-09-21 01:06:52.277894'),('SPOTLIGHT','頑童MJ116','嘻哈',2,'https://www.youtube.com/watch?v=hDj47GTTjpQ\r',44,'2018-09-21 01:06:52.277894'),('FLY OUT','兄弟本色','嘻哈',2,'https://www.youtube.com/watch?v=-sM8SynMM5I\r',45,'2018-09-21 01:06:52.277894'),('女爵','楊乃文','抒情',3,'https://www.youtube.com/watch?v=1M-0vbDTxJw\r',46,'2018-09-21 01:06:52.277894'),('我多麼羨慕你','江美琪','抒情',3,'https://www.youtube.com/watch?v=57boyq7doDE\r',47,'2018-09-21 01:06:52.277894'),('貧窮或富有','李榮浩','抒情',3,'https://www.youtube.com/watch?v=7F4EjGU4q-o\r',48,'2018-09-21 01:06:52.277894'),('玉蝴蝶','謝霆鋒','抒情',3,'https://www.youtube.com/watch?v=9viavzAf20o\r',49,'2018-09-21 01:06:52.277894'),('她說','林俊傑','抒情',3,'https://www.youtube.com/watch?v=BocMPQv9brE\r',50,'2018-09-21 01:06:52.277894'),('是我不夠好','李毓芬','抒情',3,'https://www.youtube.com/watch?v=BsvIwqyiaJw',51,'2018-09-21 01:06:52.277894'),('I Believe','范逸臣','抒情',3,'https://www.youtube.com/watch?v=dI5zpKaNR84\r',52,'2018-09-21 01:06:52.277894'),('你那麼愛她','林隆璇&李聖傑','抒情',3,'https://www.youtube.com/watch?v=dy70lVVxhh4\r',53,'2018-09-21 01:06:52.277894'),('以後別做朋友','周興哲','抒情',3,'https://www.youtube.com/watch?v=Ew4VvF0DPMc\r',54,'2018-09-21 01:06:52.277894'),('大海','張雨生','抒情',3,'https://www.youtube.com/watch?v=EXaLvBGqQww\r',55,'2018-09-21 01:06:52.277894'),('可惜不是你','梁靜茹','抒情',3,'https://www.youtube.com/watch?v=k_l7FVsqUyM\r',56,'2018-09-21 01:06:52.277894'),('浪費','林宥嘉','抒情',3,'https://www.youtube.com/watch?v=LTzy8NF3BDo\r',57,'2018-09-21 01:06:52.277894'),('聽海','張惠妹','抒情',3,'https://www.youtube.com/watch?v=mLk61pfiHQ0',58,'2018-09-21 01:06:52.277894'),('人質','張惠妹','抒情',3,'https://www.youtube.com/watch?v=o4JrzNdpKw4\r',59,'2018-09-21 01:06:52.277894'),('心動','林曉培','抒情',3,'https://www.youtube.com/watch?v=rAXmU300DRc\r',60,'2018-09-21 01:06:52.277894'),('Forever love','王力宏','抒情',3,'https://www.youtube.com/watch?v=ULcmgv837MQ\r',61,'2018-09-21 01:06:52.277894'),('眼底星空','李聖傑','抒情',3,'https://www.youtube.com/watch?v=VLp9Nb2dXW8\r',62,'2018-09-21 01:06:52.277894'),('說走就走','陶喆','抒情',3,'https://www.youtube.com/watch?v=ZRmhR3oj4cE',63,'2018-09-21 01:06:52.277894'),('愛我別走','張震嶽','悲傷',3,'https://www.youtube.com/watch?v=zPeMFCDPgKE\r',64,'2018-09-21 01:06:52.277894'),('李白','李榮浩','迷幻',3,'https://www.youtube.com/watch?v=wdypZWuoKvQ\r',65,'2018-09-21 01:06:52.277894'),('凉凉(三生三世十里桃花)','楊宗緯&張碧晨','悲傷',3,'https://www.youtube.com/watch?v=pb-kc6DWIDI\r',66,'2018-09-21 01:06:52.277894'),('讓我留在你身邊','陳奕迅','悲傷',3,'https://www.youtube.com/watch?v=y_cRDZXc3Hk\r',67,'2018-09-21 01:06:52.277894'),('漂向北方','黃明志&王力宏','搖滾',3,'https://www.youtube.com/watch?v=qIF8xvSA0Gw\r',68,'2018-09-21 01:06:52.277894'),('你把我灌醉','黃大煒','抒情',4,'https://www.youtube.com/watch?v=ecJymYI6MQU\r',69,'2018-09-21 01:06:52.277894'),('春泥','庾澄慶','抒情',4,'https://www.youtube.com/watch?v=xAh377i2Rmg\r',70,'2018-09-21 01:06:52.277894'),('倒帶','蔡依林','抒情',4,'https://www.youtube.com/watch?v=1Si6L6IGYS0\r',71,'2018-09-21 01:06:52.277894'),('我們的愛','F.I.R.','抒情',4,'https://www.youtube.com/watch?v=88D2-J_pk7A\r',72,'2018-09-21 01:06:52.277894'),('年少有為','李榮浩','抒情',4,'https://www.youtube.com/watch?v=Dnj5Tcpev0Q\r',73,'2018-09-21 01:06:52.277894'),('新不了情','萬芳','抒情',4,'https://www.youtube.com/watch?v=Dw-R85AcN_w\r',74,'2018-09-21 01:06:52.277894'),('別說沒愛過','韋禮安','抒情',4,'https://www.youtube.com/watch?v=Eip1p8H0YII\r',75,'2018-09-21 01:06:52.277894'),('失戀無罪','aLin','抒情',4,'https://www.youtube.com/watch?v=lmFlqWPzl-E\r',76,'2018-09-21 01:06:52.277894'),('输了你赢了世界又如何','林俊傑','抒情',4,'https://www.youtube.com/watch?v=NiHF-cwto_A\r',77,'2018-09-21 01:06:52.277894'),('唯一','王力宏','抒情',4,'https://www.youtube.com/watch?v=P7Qv4AV_StM\r',78,'2018-09-21 01:06:52.277894'),('哭笑不得','柯有綸','抒情',4,'https://www.youtube.com/watch?v=s_rKuSsd7TQ\r',79,'2018-09-21 01:06:52.277894'),('背叛','曹格','抒情',4,'https://www.youtube.com/watch?v=xHsSWiLsIRY\r',80,'2018-09-21 01:06:52.277894'),('紳士','薛之謙','悲傷',4,'https://www.youtube.com/watch?v=Ndp0sZ5LyvI\r',81,'2018-09-21 01:06:52.277894'),('菊花台','周杰倫','悲傷',4,'https://www.youtube.com/watch?v=PdjbRvvJAzg\r',82,'2018-09-21 01:06:52.277894'),('壞人','方炯鑌','悲傷',4,'https://www.youtube.com/watch?v=UC1hDJs_xhI\r',83,'2018-09-21 01:06:52.277894'),('黃昏','周傳雄','悲傷',4,'https://www.youtube.com/watch?v=6ca_YHZvzls\r',84,'2018-09-21 01:06:52.277894'),('不讓我的眼淚陪我過夜','齊秦','悲傷',4,'https://www.youtube.com/watch?v=Bs9eJsvAUGM\r',85,'2018-09-21 01:06:52.277894'),('手放開','李聖傑','悲傷',4,'https://www.youtube.com/watch?v=g7xmoYFFduk\r',86,'2018-09-21 01:06:52.277894'),('waiting for  You','胡彥斌','悲傷',4,'https://www.youtube.com/watch?v=H4KIBqcH8iw\r',87,'2018-09-21 01:06:52.277894'),('聽說愛情回來過','林憶蓮','悲傷',4,'https://www.youtube.com/watch?v=qSnSCOMVSYQ\r',88,'2018-09-21 01:06:52.277894'),('無字的情批','游鴻明','悲傷',4,'https://www.youtube.com/watch?v=tatY0dK607w\r',89,'2018-09-21 01:06:52.277894'),('你把我灌醉','鄧紫棋','搖滾',4,'https://www.youtube.com/watch?v=l8pJxVZKW6w\r',90,'2018-09-21 01:06:52.277894'),('光年之外','鄧紫棋','搖滾',4,'https://www.youtube.com/watch?v=T4SimnaiktU\r',91,'2018-09-21 01:06:52.277894'),('你媽沒有告訴你嗎','謝和弦','搖滾',5,'https://www.youtube.com/watch?v=5wUTi0YcH9k\r',92,'2018-09-21 01:06:52.277894'),('誰是老大','施文彬','搖滾',5,'https://www.youtube.com/watch?v=9atxVFtfr24',93,'2018-09-21 01:06:52.277894'),('七仔','施文彬','搖滾',5,'https://www.youtube.com/watch?v=CUfGDJd3K9A\r',94,'2018-09-21 01:06:52.277894'),('所以我停下來','那我懂你意思了','搖滾',5,'https://www.youtube.com/watch?v=Gp6XKEE8B2E\r',95,'2018-09-21 01:06:52.277894'),('零','柯有綸','搖滾',5,'https://www.youtube.com/watch?v=kgDL9p0w2-k\r',96,'2018-09-21 01:06:52.277894'),('樹枝孤鳥','五佰','搖滾',5,'https://www.youtube.com/watch?v=ObSPLQ-1fJI\r',97,'2018-09-21 01:06:52.277894'),('再會中港路','玖壹壹','電音',5,'https://www.youtube.com/watch?v=lgLF1eMF-zI\r',98,'2018-09-21 01:06:52.277894'),('Bad Boy','張惠妹','輕快',5,'https://www.youtube.com/watch?v=FCNVAWwh9CQ\r',99,'2018-09-21 01:06:52.277894'),('無情的情書','動力火車','搖滾',5,'https://www.youtube.com/watch?v=pPr8vkMAe9w\r',100,'2018-09-21 01:06:52.277894');
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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-11 16:07:49
