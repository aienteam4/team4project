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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-11 10:15:53
