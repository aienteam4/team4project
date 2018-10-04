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
INSERT INTO `member` VALUES ('王栗弘','Men','1979-02-09','d3567636@nhasag.net','歌手\r',1),('王惠甫','Men','1975-02-16','d3616052@nwytg.net','幼稚園園長\r',2),('吳玉鳳','Women','1957-03-19','superwu@jourrapide.net','藝人\r',3),('吳俊義','Men','1995-03-02','sMenilepig@gmail.com','電競選手\r',4),('李逸憲','Men','1990-06-05','tryit@gmail.com','房仲\r',5),('杜協丹','Women','1952-03-31','ilehWomenouz@sharklasers.com','和尚\r',6),('周劫圇','Men','1983-06-08','ibu27146@awsoo.net','廚師\r',7),('林阿真','Women','2001-09-26','jenny1212@hotmail.net.tw','學生\r',8),('林姿英','Women','1980-06-25','uqq05285@nbzMenr.com','建築師\r',9),('林美智','Women','1999-06-16','sMenile_611@hotmail.net','研究員\r',10),('柯佩姍','Women','1977-02-26','MenoMenoLeo@hotmail.com','餐廳老闆\r',11),('宵禁疼','Men','1947-08-23','cMenq38335@nbzMenr.net','工程師\r',12),('張旭程','Men','1966-07-27','r77992288@yahoo.net.tw','公務員\r',13),('張家瑜','Men','1942-04-02','crououki@Womenakeinbox.com','財務規劃分析師\r',14),('張惠昀','Women','1983-07-28','iskedhe@mailnesia.net','歌手\r',15),('淋菌截','Men','1974-03-02','avl93880@nbzMenr.edu.net','教師\r',16),('郭柏廷','Men','1988-08-08','p14479663@hotmail.com','作家\r',17),('郭家康','Men','1984-03-05','orange8979@hotmail.edu.tw','自由業\r',18),('陳于倫','Women','1986-01-20','nMenw69092@awsoo.com','律師\r',19),('陳佑甄','Women','1984-12-05','orange8979@hotmail.edu.net','幼稚園老師\r',20),('陳冠廷','Men','1962-03-30','cgtn12@dayrep.net','室內設計師\r',21),('陳茂恒','Men','1979-12-12','localking@gmail.net','工程師\r',22),('陳香涵','Women','1979-01-20','Meniconago@hotmail.net','家管\r',23),('陸亞谷','Women','1977-09-28','sen31049@awsoo.edu.net','學生\r',24),('程韻云','Women','1972-03-06','lqWomen64354@nbzMenr.net','待業\r',25),('馮依婷','Women','1958-07-17','ypp22890@nbzMenr.net','漫畫家\r',26),('黃行佩','Women','1970-09-08','eltibcivde@mailnesia.edu','製造業經理\r',27),('黃定國','Men','1972-08-05','crazydissy@hotmail.edu','主廚\r',28),('黃勇仰','Men','1949-11-18','yongyang36160@starkedupay.edu','體育老師\r',29),('黃彥傑','Men','1982-08-09','p14479663@hotmail.edu','作業員\r',30),('黃星均','Men','2000-07-16','wang0909@gmail.edu','學生\r',31),('黃毅愛','Women','1962-02-01','sunny001@gmail.edu','家管\r',32),('楊家洋','Men','1968-01-31','criawaew@Womenakeinbox.edu','車輛技師\r',33),('溫邵右','Men','1993-11-25','ben24367949@yahoo.edu.net','記者\r',34),('葉子毓','Men','1978-06-12','udpig10228@yahoo.edu.tw','保險業務員\r',35),('葉學俐','Men','1992-01-25','ben24367949@yahoo.edu.tw','記者\r',36),('詹佩珊','Women','1980-03-02','tpeggyw@Mensn.com','警察\r',37),('劉筱婷','Women','1993-01-09','Menountainking@gmail.com','實況主\r',38),('賴俐恭','Women','1950-09-27','portned34@gustr.com','驗光師\r',39),('關鈞蕙','Women','1964-04-12','hWomenq83717@nbzMenr.com','小說家\r',40),('吳柏定','Men','1953-08-01','gaogao@new.com.tw','律師\r',41),('劉建佳','Men','1964-07-30','liucc@gmail.net','企業家\r',42),('曹文彬','Men','1957-09-06','renewgo1762@msa.hinet.net','檢察官\r',43),('林怡桓','Women','1995-10-13','iggg123789@hotmail.com','設計師\r',44),('楊仰天','Men','2001-06-21','d3567636@csda.net','學生\r',45),('潘雅晴','Women','1999-11-11','zxq35pp6@nwytg.edu','學生\r',46),('賴耀文','Men','1951-12-30','littlelie@yahoo.com.tw','醫師\r',47),('謝雅筑','Women','1988-03-27','hsiehyaya@nycda.com.tw','家管\r',48),('涂虹欣','Women','1977-04-16','csgo@hrraf.net','待業\r',49),('吳康宏','Men','1975-05-04','d123789gga@nwytg.com','精算師\r',50);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `song` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `response` longtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='點歌紀錄';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderhistory`
--

LOCK TABLES `orderhistory` WRITE;
/*!40000 ALTER TABLE `orderhistory` DISABLE KEYS */;
INSERT INTO `orderhistory` VALUES (1,1,60,'2018-10-03 09:28:52',1,1,0),(17,1,4,'2018-10-03 09:50:02',2,1,0),(18,1,8,'2018-10-03 09:50:04',3,2,0),(19,1,2,'2018-10-03 09:50:09',4,2,0),(20,1,1,'2018-10-03 09:50:11',5,1,0),(21,1,7,'2018-10-03 09:50:13',6,1,0),(22,1,11,'2018-10-03 09:50:17',7,1,0),(23,1,13,'2018-10-03 09:50:24',8,1,0),(24,1,3,'2018-10-03 09:52:00',9,1,1);
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
  `modelnumber` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `modelname` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `productimage` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `categoryid` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songlist`
--

LOCK TABLES `songlist` WRITE;
/*!40000 ALTER TABLE `songlist` DISABLE KEYS */;
INSERT INTO `songlist` VALUES ('讓每個人都心碎','黃大煒','抒情',1,'https://www.youtube.com/watch?v=t4Ts-ysl1IU\r',1,'2018-09-21 01:06:52.277894'),('千年之戀 ','戴愛玲&信樂團','搖滾',1,'https://www.youtube.com/watch?v=2Pfu8b38pzg\r',2,'2018-09-21 01:06:52.277894'),('勢在必行','陳勢安&畢書盡','搖滾',1,'https://www.youtube.com/watch?v=BhHdmugCPjo\r',3,'2018-09-21 01:06:52.277894'),('王妃','蕭敬騰','搖滾',1,'https://www.youtube.com/watch?v=ekDzlSB1p28\r',4,'2018-09-21 01:06:52.277894'),('世界之巔','王繹龍','搖滾',1,'https://www.youtube.com/watch?v=kWza7FCobCQ',5,'2018-09-21 01:06:52.277894'),('夠了','羅志祥','搖滾',1,'https://www.youtube.com/watch?v=R3rkSM3xO_k',6,'2018-09-21 01:06:52.277894'),('離開地球表面','五月天','搖滾',1,'https://www.youtube.com/watch?v=rtKK2mu4BVc\r',7,'2018-09-21 01:06:52.277894'),('One Night In北京 ','信樂團','搖滾',1,'https://www.youtube.com/watch?v=-zvvtzyZ-Tw\r',8,'2018-09-21 01:06:52.277894'),('觸電','芭比','電音',1,'https://www.youtube.com/watch?v=BcXEgxrmdlU',9,'2018-09-21 01:06:52.277894'),('社會搖','蕭全','電音',1,'https://www.youtube.com/watch?v=ITfanx1Fbcs\r',10,'2018-09-21 01:06:52.277894'),('青春修煉手冊','TFBOYS','輕快',1,'https://www.youtube.com/watch?v=sW1dKgOK1kQ\r',11,'2018-09-21 01:06:52.277894'),('兩腳書櫥的逃亡','韋禮安','輕快',1,'https://www.youtube.com/watch?v=NMnwWz_qjV0\r',12,'2018-09-21 01:06:52.277894'),('雙手插口袋','頑童MJ116&張震嶽','嘻哈',1,'https://www.youtube.com/watch?v=BE2oPBr76Ck\r',13,'2018-09-21 01:06:52.277894'),('貧民百萬歌星','MC HotDog','嘻哈',1,'https://www.youtube.com/watch?v=e87RsA9Y5lI\r',14,'2018-09-21 01:06:52.277894'),('Just Believe','頑童MJ116','嘻哈',1,'https://www.youtube.com/watch?v=iwvzGpevJjM\r',15,'2018-09-21 01:06:52.277894'),('朋友','周華健','勵志',1,'https://www.youtube.com/watch?v=6lbPgfKK7m4\r',16,'2018-09-21 01:06:52.277894'),('向前走','林強','勵志',1,'https://www.youtube.com/watch?v=gD14iiXq7Xw\r',17,'2018-09-21 01:06:52.277894'),('天高地厚','信樂團','勵志',1,'https://www.youtube.com/watch?v=-KXjU0XjhRY\r',18,'2018-09-21 01:06:52.277894'),('陽光宅男','周杰倫','勵志',1,'https://www.youtube.com/watch?v=qQ7g1tfEGFc\r',19,'2018-09-21 01:06:52.277894'),('倔強','五月天','勵志',1,'https://www.youtube.com/watch?v=R2s-H_crYkc\r',20,'2018-09-21 01:06:52.277894'),('愛最閃耀','許馨文','抒情',2,'https://www.youtube.com/watch?v=4IN_BeUOVn4\r',21,'2018-09-21 01:06:52.277894'),('給我你的愛','Tank(呂建中)','抒情',2,'https://www.youtube.com/watch?v=9CInTGdSTf0\r',22,'2018-09-21 01:06:52.277894'),('童話 ','光良','抒情',2,'https://www.youtube.com/watch?v=bBcp_ljCBGU\r',23,'2018-09-21 01:06:52.277894'),('另一個天堂','王力宏& 张靓颖','抒情',2,'https://www.youtube.com/watch?v=bXT7ZipPwxs\r',24,'2018-09-21 01:06:52.277894'),('非妳莫屬','Tank(呂建中)','抒情',2,'https://www.youtube.com/watch?v=Cd9NzIlCWio\r',25,'2018-09-21 01:06:52.277894'),('謝謝你愛我','謝和弦','抒情',2,'https://www.youtube.com/watch?v=edTQsoNcADA\r',26,'2018-09-21 01:06:52.277894'),('老伴','李榮浩','抒情',2,'https://www.youtube.com/watch?v=ELS8Q_Ws3kU\r',27,'2018-09-21 01:06:52.277894'),('小幸運','田馥甄','抒情',2,'https://www.youtube.com/watch?v=GCgvpwLNvtY\r',28,'2018-09-21 01:06:52.277894'),('修煉愛情','林俊傑','抒情',2,'https://www.youtube.com/watch?v=LWV-f6dMN3Q\r',29,'2018-09-21 01:06:52.277894'),('Beautiful love','蔡健雅','抒情',2,'https://www.youtube.com/watch?v=-QOFyrYTk4w\r',30,'2018-09-21 01:06:52.277894'),('簡單愛','周杰倫','抒情',2,'https://www.youtube.com/watch?v=V-COB2hZqUg\r',31,'2018-09-21 01:06:52.277894'),('魚仔','盧廣仲','抒情',2,'https://www.youtube.com/watch?v=ybfWYpYhTQQ\r',32,'2018-09-21 01:06:52.277894'),('還是會','韋禮安','抒情',2,'https://www.youtube.com/watch?v=ZiPQ3GtQeDU\r',33,'2018-09-21 01:06:52.277894'),('我們不一樣','大壯','搖滾',2,'https://www.youtube.com/watch?v=ekDzlSB1p28\r',34,'2018-09-21 01:06:52.277894'),('對面女孩看過來','任賢齊','輕快',2,'https://www.youtube.com/watch?v=6aosRlnxg9I\r',35,'2018-09-21 01:06:52.277894'),('所謂的愛','宋念宇','輕快',2,'https://www.youtube.com/watch?v=90c68uAy6Vw\r',36,'2018-09-21 01:06:52.277894'),('脫掉','杜德偉','輕快',2,'https://www.youtube.com/watch?v=bqWfosgn_QI\r',37,'2018-09-21 01:06:52.277894'),('真的不想嘴','聖結石','輕快',2,'https://www.youtube.com/watch?v=fWuq67-VSTM\r',38,'2018-09-21 01:06:52.277894'),('情非得已','庾澄慶','輕快',2,'https://www.youtube.com/watch?v=hjVmn6WoZR4\r',39,'2018-09-21 01:06:52.277894'),('如果的事','范瑋琪&張韶涵','輕快',2,'https://www.youtube.com/watch?v=kQOgXPuluEY\r',40,'2018-09-21 01:06:52.277894'),('香奈兒','王菲','輕快',2,'https://www.youtube.com/watch?v=qHpZ8W8Sqns\r',41,'2018-09-21 01:06:52.277894'),('Di Da Di','李玟','輕快',2,'https://www.youtube.com/watch?v=zUnkE09Yrv8\r',42,'2018-09-21 01:06:52.277894'),('迷途羔羊','兄弟本色','嘻哈',2,'https://www.youtube.com/watch?v=CPY6AML_GCY\r',43,'2018-09-21 01:06:52.277894'),('SPOTLIGHT','頑童MJ116','嘻哈',2,'https://www.youtube.com/watch?v=hDj47GTTjpQ\r',44,'2018-09-21 01:06:52.277894'),('FLY OUT','兄弟本色','嘻哈',2,'https://www.youtube.com/watch?v=-sM8SynMM5I\r',45,'2018-09-21 01:06:52.277894'),('女爵','楊乃文','抒情',3,'https://www.youtube.com/watch?v=1M-0vbDTxJw\r',46,'2018-09-21 01:06:52.277894'),('我多麼羨慕你','江美琪','抒情',3,'https://www.youtube.com/watch?v=57boyq7doDE\r',47,'2018-09-21 01:06:52.277894'),('貧窮或富有','李榮浩','抒情',3,'https://www.youtube.com/watch?v=7F4EjGU4q-o\r',48,'2018-09-21 01:06:52.277894'),('玉蝴蝶','謝霆鋒','抒情',3,'https://www.youtube.com/watch?v=9viavzAf20o\r',49,'2018-09-21 01:06:52.277894'),('她說','林俊傑','抒情',3,'https://www.youtube.com/watch?v=BocMPQv9brE\r',50,'2018-09-21 01:06:52.277894'),('是我不夠好','李毓芬','抒情',3,'https://www.youtube.com/watch?v=BsvIwqyiaJw',51,'2018-09-21 01:06:52.277894'),('I Believe','范逸臣','抒情',3,'https://www.youtube.com/watch?v=dI5zpKaNR84\r',52,'2018-09-21 01:06:52.277894'),('你那麼愛她','林隆璇&李聖傑','抒情',3,'https://www.youtube.com/watch?v=dy70lVVxhh4\r',53,'2018-09-21 01:06:52.277894'),('以後別做朋友','周興哲','抒情',3,'https://www.youtube.com/watch?v=Ew4VvF0DPMc\r',54,'2018-09-21 01:06:52.277894'),('大海','張雨生','抒情',3,'https://www.youtube.com/watch?v=EXaLvBGqQww\r',55,'2018-09-21 01:06:52.277894'),('可惜不是你','梁靜茹','抒情',3,'https://www.youtube.com/watch?v=k_l7FVsqUyM\r',56,'2018-09-21 01:06:52.277894'),('浪費','林宥嘉','抒情',3,'https://www.youtube.com/watch?v=LTzy8NF3BDo\r',57,'2018-09-21 01:06:52.277894'),('聽海','張惠妹','抒情',3,'https://www.youtube.com/watch?v=mLk61pfiHQ0',58,'2018-09-21 01:06:52.277894'),('人質','張惠妹','抒情',3,'https://www.youtube.com/watch?v=o4JrzNdpKw4\r',59,'2018-09-21 01:06:52.277894'),('心動','林曉培','抒情',3,'https://www.youtube.com/watch?v=rAXmU300DRc\r',60,'2018-09-21 01:06:52.277894'),('Forever love','王力宏','抒情',3,'https://www.youtube.com/watch?v=ULcmgv837MQ\r',61,'2018-09-21 01:06:52.277894'),('眼底星空','李聖傑','抒情',3,'https://www.youtube.com/watch?v=VLp9Nb2dXW8\r',62,'2018-09-21 01:06:52.277894'),('說走就走','陶喆','抒情',3,'https://www.youtube.com/watch?v=ZRmhR3oj4cE',63,'2018-09-21 01:06:52.277894'),('愛我別走','張震嶽','悲傷',3,'https://www.youtube.com/watch?v=zPeMFCDPgKE\r',64,'2018-09-21 01:06:52.277894'),('李白','李榮浩','迷幻',3,'https://www.youtube.com/watch?v=wdypZWuoKvQ\r',65,'2018-09-21 01:06:52.277894'),('凉凉(三生三世十里桃花)','楊宗緯&張碧晨','悲傷',3,'https://www.youtube.com/watch?v=pb-kc6DWIDI\r',66,'2018-09-21 01:06:52.277894'),('讓我留在你身邊','陳奕迅','悲傷',3,'https://www.youtube.com/watch?v=y_cRDZXc3Hk\r',67,'2018-09-21 01:06:52.277894'),('漂向北方','黃明志&王力宏','搖滾',3,'https://www.youtube.com/watch?v=qIF8xvSA0Gw\r',68,'2018-09-21 01:06:52.277894'),('你把我灌醉','黃大煒','抒情',4,'https://www.youtube.com/watch?v=ecJymYI6MQU\r',69,'2018-09-21 01:06:52.277894'),('春泥','庾澄慶','抒情',4,'https://www.youtube.com/watch?v=xAh377i2Rmg\r',70,'2018-09-21 01:06:52.277894'),('倒帶','蔡依林','抒情',4,'https://www.youtube.com/watch?v=1Si6L6IGYS0\r',71,'2018-09-21 01:06:52.277894'),('我們的愛','F.I.R.','抒情',4,'https://www.youtube.com/watch?v=88D2-J_pk7A\r',72,'2018-09-21 01:06:52.277894'),('年少有為','李榮浩','抒情',4,'https://www.youtube.com/watch?v=Dnj5Tcpev0Q\r',73,'2018-09-21 01:06:52.277894'),('新不了情','萬芳','抒情',4,'https://www.youtube.com/watch?v=Dw-R85AcN_w\r',74,'2018-09-21 01:06:52.277894'),('別說沒愛過','韋禮安','抒情',4,'https://www.youtube.com/watch?v=Eip1p8H0YII\r',75,'2018-09-21 01:06:52.277894'),('失戀無罪','aLin','抒情',4,'https://www.youtube.com/watch?v=lmFlqWPzl-E\r',76,'2018-09-21 01:06:52.277894'),('输了你赢了世界又如何','林俊傑','抒情',4,'https://www.youtube.com/watch?v=NiHF-cwto_A\r',77,'2018-09-21 01:06:52.277894'),('唯一','王力宏','抒情',4,'https://www.youtube.com/watch?v=P7Qv4AV_StM\r',78,'2018-09-21 01:06:52.277894'),('哭笑不得','柯有綸','抒情',4,'https://www.youtube.com/watch?v=s_rKuSsd7TQ\r',79,'2018-09-21 01:06:52.277894'),('背叛','曹格','抒情',4,'https://www.youtube.com/watch?v=xHsSWiLsIRY\r',80,'2018-09-21 01:06:52.277894'),('紳士','薛之謙','悲傷',4,'https://www.youtube.com/watch?v=Ndp0sZ5LyvI\r',81,'2018-09-21 01:06:52.277894'),('菊花台','周杰倫','悲傷',4,'https://www.youtube.com/watch?v=PdjbRvvJAzg\r',82,'2018-09-21 01:06:52.277894'),('壞人','方炯鑌','悲傷',4,'https://www.youtube.com/watch?v=UC1hDJs_xhI\r',83,'2018-09-21 01:06:52.277894'),('黃昏','周傳雄','悲傷',4,'https://www.youtube.com/watch?v=6ca_YHZvzls\r',84,'2018-09-21 01:06:52.277894'),('不讓我的眼淚陪我過夜','齊秦','悲傷',4,'https://www.youtube.com/watch?v=Bs9eJsvAUGM\r',85,'2018-09-21 01:06:52.277894'),('手放開','李聖傑','悲傷',4,'https://www.youtube.com/watch?v=g7xmoYFFduk\r',86,'2018-09-21 01:06:52.277894'),('waiting for  You','胡彥斌','悲傷',4,'https://www.youtube.com/watch?v=H4KIBqcH8iw\r',87,'2018-09-21 01:06:52.277894'),('聽說愛情回來過','林憶蓮','悲傷',4,'https://www.youtube.com/watch?v=qSnSCOMVSYQ\r',88,'2018-09-21 01:06:52.277894'),('無字的情批','游鴻明','悲傷',4,'https://www.youtube.com/watch?v=tatY0dK607w\r',89,'2018-09-21 01:06:52.277894'),('你把我灌醉','鄧紫棋','搖滾',4,'https://www.youtube.com/watch?v=l8pJxVZKW6w\r',90,'2018-09-21 01:06:52.277894'),('光年之外','鄧紫棋','搖滾',4,'https://www.youtube.com/watch?v=T4SimnaiktU\r',91,'2018-09-21 01:06:52.277894'),('你媽沒有告訴你嗎','謝和弦','搖滾',5,'https://www.youtube.com/watch?v=5wUTi0YcH9k\r',92,'2018-09-21 01:06:52.277894'),('誰是老大','施文彬','搖滾',5,'https://www.youtube.com/watch?v=9atxVFtfr24',93,'2018-09-21 01:06:52.277894'),('七仔','施文彬','搖滾',5,'https://www.youtube.com/watch?v=CUfGDJd3K9A\r',94,'2018-09-21 01:06:52.277894'),('所以我停下來','那我懂你意思了','搖滾',5,'https://www.youtube.com/watch?v=Gp6XKEE8B2E\r',95,'2018-09-21 01:06:52.277894'),('零','柯有綸','搖滾',5,'https://www.youtube.com/watch?v=kgDL9p0w2-k\r',96,'2018-09-21 01:06:52.277894'),('樹枝孤鳥','五佰','搖滾',5,'https://www.youtube.com/watch?v=ObSPLQ-1fJI\r',97,'2018-09-21 01:06:52.277894'),('再會中港路','玖壹壹','電音',5,'https://www.youtube.com/watch?v=lgLF1eMF-zI\r',98,'2018-09-21 01:06:52.277894'),('Bad Boy','張惠妹','輕快',5,'https://www.youtube.com/watch?v=FCNVAWwh9CQ\r',99,'2018-09-21 01:06:52.277894'),('無情的情書','動力火車','搖滾',5,'https://www.youtube.com/watch?v=pPr8vkMAe9w\r',100,'2018-09-21 01:06:52.277894');
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

-- Dump completed on 2018-10-04 11:03:28
