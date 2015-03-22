CREATE DATABASE  IF NOT EXISTS `leisurea` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `leisurea`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: leisure
-- ------------------------------------------------------
-- Server version	5.6.16

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
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `activity_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(2000) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `type_id` tinyint(4) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` timestamp NULL DEFAULT NULL,
  `active_flag` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=291 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (269,'Cycle in the park',11,7,1,4,'2014-04-23 04:23:07','2014-04-23 04:23:07',0),(270,'Play Bowling with friends',11,256,1,6,'2014-04-23 04:23:51','2014-04-23 04:23:51',1),(271,'Spend some time in the Pool',11,15,1,4,'2014-04-23 04:38:41','2014-04-23 04:38:41',1),(272,'fdsgfdsgsdfgsdfgsdfgdfsddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfdsgfdsgsdfgsdfgsdfgdfsddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfdsgfdsgsdfgsdfgsdfgdfsddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfdsgfdsgsdfgsdfgsdfgdfsddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfdsgfdsgsdfgsdfgsdfgdfsddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfdsgfdsgsdfgsdfgsdfgdfsddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfdsgfdsgsdfgsdfgsdfgdfsddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfdsgfdsgsdfgsdfgsdfgdfsddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfdsgfdsgsdfgsdfgsdfgdfsddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfdsgfdsgsdfgsdfgsdfgdfsddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfdsgfdsgsdfgsdfgsdfgdfsddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfdsgfdsgsdfgsdfgsdfgdfsddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfdsgfdsgsdfgsdfgsdfgdfsddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfdsgfdsgsdfgsdfgsdfgdfsddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfdsgfdsgsdfgsdfgsdfgdfsddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfdsgfdsgsdfgsdfgsdfgdfsddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfdsgfdsgsdfgsdfgsdfgdfsddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfdsgfdsgsdfgsdfgsdfgdfsddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfdsgfdsgsdfgsdfgsdfgdfsddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddfdsgfdsgsdfgsdfgsdfgdfsdddddddddddddddddddd',11,2,1,5,'2014-04-23 04:53:05','2014-04-23 04:53:05',0),(273,'Playing bowling for fun',12,256,1,6,'2014-04-24 04:47:06','2014-04-24 04:47:06',1),(274,'I like fishing early morning',12,255,1,7,'2014-04-24 04:47:28','2014-04-24 04:47:28',1),(275,'Reading interesting books at home',12,6,1,5,'2014-04-24 04:48:30','2014-04-24 04:48:30',1),(276,'No no no',12,2,1,5,'2014-04-24 04:48:41','2014-04-24 04:48:41',1),(277,'I like flying on the balloon',12,257,1,4,'2014-04-24 04:49:44','2014-04-24 04:49:44',1),(278,'Reading books on physics',17,6,1,4,'2014-04-24 05:20:23','2014-04-24 05:20:23',1),(279,'Play bowling with Cutrapali',17,256,1,6,'2014-04-24 05:23:33','2014-04-24 05:23:33',1),(280,'Doing yoga in the morning on Tuesday',11,258,1,4,'2014-04-28 19:29:07','2014-04-28 19:29:07',1),(281,'Sitting in a boring room and watching TV',11,2,1,5,'2014-04-28 19:59:38','2014-04-28 19:59:38',1),(282,'Playing football with my friends',11,259,1,4,'2014-04-28 21:20:45','2014-04-28 21:20:45',1),(283,'Play bowling',11,256,1,6,'2014-05-12 20:10:14','2014-04-28 21:37:25',0),(284,'Flying on paraplane !',11,257,1,4,'2014-05-10 06:28:57','2014-04-28 21:42:26',1),(285,'Make barbecue with friends',11,260,1,7,'2014-05-10 05:57:30','2014-05-10 05:57:30',1),(286,'I like reading different interesting books.',19,6,1,5,'2014-05-11 07:36:33','2014-05-11 07:36:33',1),(287,NULL,19,256,1,6,'2014-05-11 07:39:35','2014-05-11 07:39:35',1),(288,'Skating with my friends',11,4,1,7,'2014-05-12 18:48:06','2014-05-12 18:48:06',1),(289,'Fishing with my father!!!',11,255,1,7,'2014-05-19 10:47:49','2014-05-12 18:48:56',1),(290,NULL,11,256,1,6,'2014-05-12 19:24:54','2014-05-12 19:24:45',0);
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `call_log`
--

DROP TABLE IF EXISTS `call_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `call_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `procedure_name` varchar(45) DEFAULT NULL,
  `data` varchar(1000) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_ip` varchar(45) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1596 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `call_log`
--

LOCK TABLES `call_log` WRITE;
/*!40000 ALTER TABLE `call_log` DISABLE KEYS */;
INSERT INTO `call_log` VALUES (1571,'get_activities','CALL get_activities(\'11\',NULL,NULL,NULL,\'1000\',\'0\');',11,'127.0.0.1','2014-05-25 08:34:30'),(1572,'get_types','CALL get_types();',11,'127.0.0.1','2014-05-25 08:34:30'),(1573,'get_similar_users','CALL get_similar_users(\'11\',NULL,\'10\',\'0\');',11,'127.0.0.1','2014-05-25 08:34:37'),(1574,'get_categories_count','CALL get_categories_count(NULL,NULL,\'10\',\'0\');',11,'127.0.0.1','2014-05-25 08:34:40'),(1575,'get_types','CALL get_types();',11,'127.0.0.1','2014-05-25 08:35:07'),(1576,'get_categories_count','CALL get_categories_count(NULL,NULL,\'10\',\'0\');',11,'127.0.0.1','2014-05-25 08:35:07'),(1577,'get_activities','CALL get_activities(\'11\',NULL,NULL,NULL,\'1000\',\'0\');',11,'127.0.0.1','2014-05-25 08:35:18'),(1578,'get_similar_users','CALL get_similar_users(\'11\',NULL,\'10\',\'0\');',11,'127.0.0.1','2014-05-25 08:36:34'),(1579,'get_similar_users','CALL get_similar_users(\'11\',NULL,\'10\',\'0\');',11,'127.0.0.1','2014-05-25 08:38:38'),(1580,'get_types','CALL get_types();',11,'127.0.0.1','2014-05-25 08:38:40'),(1581,'get_activities','CALL get_activities(\'11\',NULL,NULL,NULL,\'1000\',\'0\');',11,'127.0.0.1','2014-05-25 08:38:40'),(1582,'get_similar_users','CALL get_similar_users(\'11\',NULL,\'10\',\'0\');',11,'127.0.0.1','2014-05-25 08:39:25'),(1583,'get_types','CALL get_types();',11,'127.0.0.1','2014-05-25 08:39:26'),(1584,'get_activities','CALL get_activities(\'11\',NULL,NULL,NULL,\'1000\',\'0\');',11,'127.0.0.1','2014-05-25 08:39:26'),(1585,'get_categories_count','CALL get_categories_count(NULL,NULL,\'10\',\'0\');',11,'127.0.0.1','2014-05-25 08:39:30'),(1586,'get_types','CALL get_types();',11,'127.0.0.1','2014-05-25 08:39:40'),(1587,'get_activities','CALL get_activities(\'11\',NULL,NULL,NULL,\'1000\',\'0\');',11,'127.0.0.1','2014-05-25 08:39:40'),(1588,'get_categories_count','CALL get_categories_count(NULL,NULL,\'10\',\'0\');',11,'127.0.0.1','2014-05-25 08:39:42'),(1589,'get_similar_users','CALL get_similar_users(\'11\',NULL,\'10\',\'0\');',11,'127.0.0.1','2014-05-25 08:39:43'),(1590,'get_activities','CALL get_activities(\'12\',NULL,NULL,NULL,\'10\',\'0\');',11,'127.0.0.1','2014-05-25 08:39:44'),(1591,'get_user_by_id','CALL get_user_by_id(\'12\');',11,'127.0.0.1','2014-05-25 08:39:44'),(1592,'get_types','CALL get_types();',11,'127.0.0.1','2014-05-25 08:40:20'),(1593,'get_activities','CALL get_activities(\'11\',NULL,NULL,NULL,\'1000\',\'0\');',11,'127.0.0.1','2014-05-25 08:40:20'),(1594,'get_types','CALL get_types();',11,'127.0.0.1','2014-05-25 15:16:44'),(1595,'get_categories_count','CALL get_categories_count(NULL,NULL,\'10\',\'0\');',11,'127.0.0.1','2014-05-25 15:16:45');
/*!40000 ALTER TABLE `call_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `type_id` tinyint(3) DEFAULT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `active_flag` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Going to Fitness club',4,'2014-02-27 08:14:12',1),(2,'Watching TV',5,'2014-02-27 08:14:12',1),(3,'Meeting Friends',6,'2014-02-27 08:14:12',1),(4,'Skating',7,'2014-02-27 08:14:12',1),(6,'Reading',NULL,'2014-03-01 12:23:49',1),(7,'Cycling',NULL,'2014-03-03 20:33:55',1),(8,'Snowboarding',4,'2014-03-03 20:36:28',1),(9,'Listening to Music',5,'2014-03-06 07:07:19',1),(10,'Going on a picnic',6,'2014-03-26 05:52:58',1),(11,'Carting',4,'2014-03-26 06:26:41',1),(12,'Pool',7,'2014-03-26 06:38:05',1),(13,'Riding a scooter',7,'2014-03-26 20:27:09',1),(14,'Visit a pool',4,'2014-03-26 20:29:56',1),(15,'Swimming',4,'2014-04-15 19:46:13',1),(16,'Running',4,'2014-04-15 19:49:31',1),(17,'Boxing',4,'2014-04-15 20:12:19',1),(18,'Kayaking',4,'2014-04-15 20:16:09',1),(19,'Drifting',4,'2014-04-15 20:37:53',1),(20,'Riding a horse',4,'2014-04-15 20:47:47',1),(21,'Laying on a bed',5,'2014-04-15 20:51:56',1),(255,'Fishing',7,'2014-04-20 12:09:16',1),(256,'Bowling',6,'2014-04-20 12:26:54',1),(257,'Flying',4,'2014-04-24 04:49:44',1),(258,'Yoga',4,'2014-04-28 19:29:05',1),(259,'Football',4,'2014-04-28 21:20:44',1),(260,'Barbecue',7,'2014-05-10 05:57:30',1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `city_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(50) NOT NULL,
  `country_id` smallint(5) unsigned NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=601 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'A Corua (La Corua)',87,'2006-02-15 02:45:25'),(2,'Abha',82,'2006-02-15 02:45:25'),(3,'Abu Dhabi',101,'2006-02-15 02:45:25'),(4,'Acua',60,'2006-02-15 02:45:25'),(5,'Adana',97,'2006-02-15 02:45:25'),(6,'Addis Abeba',31,'2006-02-15 02:45:25'),(7,'Aden',107,'2006-02-15 02:45:25'),(8,'Adoni',44,'2006-02-15 02:45:25'),(9,'Ahmadnagar',44,'2006-02-15 02:45:25'),(10,'Akishima',50,'2006-02-15 02:45:25'),(11,'Akron',103,'2006-02-15 02:45:25'),(12,'al-Ayn',101,'2006-02-15 02:45:25'),(13,'al-Hawiya',82,'2006-02-15 02:45:25'),(14,'al-Manama',11,'2006-02-15 02:45:25'),(15,'al-Qadarif',89,'2006-02-15 02:45:25'),(16,'al-Qatif',82,'2006-02-15 02:45:25'),(17,'Alessandria',49,'2006-02-15 02:45:25'),(18,'Allappuzha (Alleppey)',44,'2006-02-15 02:45:25'),(19,'Allende',60,'2006-02-15 02:45:25'),(20,'Almirante Brown',6,'2006-02-15 02:45:25'),(21,'Alvorada',15,'2006-02-15 02:45:25'),(22,'Ambattur',44,'2006-02-15 02:45:25'),(23,'Amersfoort',67,'2006-02-15 02:45:25'),(24,'Amroha',44,'2006-02-15 02:45:25'),(25,'Angra dos Reis',15,'2006-02-15 02:45:25'),(26,'Anpolis',15,'2006-02-15 02:45:25'),(27,'Antofagasta',22,'2006-02-15 02:45:25'),(28,'Aparecida de Goinia',15,'2006-02-15 02:45:25'),(29,'Apeldoorn',67,'2006-02-15 02:45:25'),(30,'Araatuba',15,'2006-02-15 02:45:25'),(31,'Arak',46,'2006-02-15 02:45:25'),(32,'Arecibo',77,'2006-02-15 02:45:25'),(33,'Arlington',103,'2006-02-15 02:45:25'),(34,'Ashdod',48,'2006-02-15 02:45:25'),(35,'Ashgabat',98,'2006-02-15 02:45:25'),(36,'Ashqelon',48,'2006-02-15 02:45:25'),(37,'Asuncin',73,'2006-02-15 02:45:25'),(38,'Athenai',39,'2006-02-15 02:45:25'),(39,'Atinsk',80,'2006-02-15 02:45:25'),(40,'Atlixco',60,'2006-02-15 02:45:25'),(41,'Augusta-Richmond County',103,'2006-02-15 02:45:25'),(42,'Aurora',103,'2006-02-15 02:45:25'),(43,'Avellaneda',6,'2006-02-15 02:45:25'),(44,'Bag',15,'2006-02-15 02:45:25'),(45,'Baha Blanca',6,'2006-02-15 02:45:25'),(46,'Baicheng',23,'2006-02-15 02:45:25'),(47,'Baiyin',23,'2006-02-15 02:45:25'),(48,'Baku',10,'2006-02-15 02:45:25'),(49,'Balaiha',80,'2006-02-15 02:45:25'),(50,'Balikesir',97,'2006-02-15 02:45:25'),(51,'Balurghat',44,'2006-02-15 02:45:25'),(52,'Bamenda',19,'2006-02-15 02:45:25'),(53,'Bandar Seri Begawan',16,'2006-02-15 02:45:25'),(54,'Banjul',37,'2006-02-15 02:45:25'),(55,'Barcelona',104,'2006-02-15 02:45:25'),(56,'Basel',91,'2006-02-15 02:45:25'),(57,'Bat Yam',48,'2006-02-15 02:45:25'),(58,'Batman',97,'2006-02-15 02:45:25'),(59,'Batna',2,'2006-02-15 02:45:25'),(60,'Battambang',18,'2006-02-15 02:45:25'),(61,'Baybay',75,'2006-02-15 02:45:25'),(62,'Bayugan',75,'2006-02-15 02:45:25'),(63,'Bchar',2,'2006-02-15 02:45:25'),(64,'Beira',63,'2006-02-15 02:45:25'),(65,'Bellevue',103,'2006-02-15 02:45:25'),(66,'Belm',15,'2006-02-15 02:45:25'),(67,'Benguela',4,'2006-02-15 02:45:25'),(68,'Beni-Mellal',62,'2006-02-15 02:45:25'),(69,'Benin City',69,'2006-02-15 02:45:25'),(70,'Bergamo',49,'2006-02-15 02:45:25'),(71,'Berhampore (Baharampur)',44,'2006-02-15 02:45:25'),(72,'Bern',91,'2006-02-15 02:45:25'),(73,'Bhavnagar',44,'2006-02-15 02:45:25'),(74,'Bhilwara',44,'2006-02-15 02:45:25'),(75,'Bhimavaram',44,'2006-02-15 02:45:25'),(76,'Bhopal',44,'2006-02-15 02:45:25'),(77,'Bhusawal',44,'2006-02-15 02:45:25'),(78,'Bijapur',44,'2006-02-15 02:45:25'),(79,'Bilbays',29,'2006-02-15 02:45:25'),(80,'Binzhou',23,'2006-02-15 02:45:25'),(81,'Birgunj',66,'2006-02-15 02:45:25'),(82,'Bislig',75,'2006-02-15 02:45:25'),(83,'Blumenau',15,'2006-02-15 02:45:25'),(84,'Boa Vista',15,'2006-02-15 02:45:25'),(85,'Boksburg',85,'2006-02-15 02:45:25'),(86,'Botosani',78,'2006-02-15 02:45:25'),(87,'Botshabelo',85,'2006-02-15 02:45:25'),(88,'Bradford',102,'2006-02-15 02:45:25'),(89,'Braslia',15,'2006-02-15 02:45:25'),(90,'Bratislava',84,'2006-02-15 02:45:25'),(91,'Brescia',49,'2006-02-15 02:45:25'),(92,'Brest',34,'2006-02-15 02:45:25'),(93,'Brindisi',49,'2006-02-15 02:45:25'),(94,'Brockton',103,'2006-02-15 02:45:25'),(95,'Bucuresti',78,'2006-02-15 02:45:25'),(96,'Buenaventura',24,'2006-02-15 02:45:25'),(97,'Bydgoszcz',76,'2006-02-15 02:45:25'),(98,'Cabuyao',75,'2006-02-15 02:45:25'),(99,'Callao',74,'2006-02-15 02:45:25'),(100,'Cam Ranh',105,'2006-02-15 02:45:25'),(101,'Cape Coral',103,'2006-02-15 02:45:25'),(102,'Caracas',104,'2006-02-15 02:45:25'),(103,'Carmen',60,'2006-02-15 02:45:25'),(104,'Cavite',75,'2006-02-15 02:45:25'),(105,'Cayenne',35,'2006-02-15 02:45:25'),(106,'Celaya',60,'2006-02-15 02:45:25'),(107,'Chandrapur',44,'2006-02-15 02:45:25'),(108,'Changhwa',92,'2006-02-15 02:45:25'),(109,'Changzhou',23,'2006-02-15 02:45:25'),(110,'Chapra',44,'2006-02-15 02:45:25'),(111,'Charlotte Amalie',106,'2006-02-15 02:45:25'),(112,'Chatsworth',85,'2006-02-15 02:45:25'),(113,'Cheju',86,'2006-02-15 02:45:25'),(114,'Chiayi',92,'2006-02-15 02:45:25'),(115,'Chisinau',61,'2006-02-15 02:45:25'),(116,'Chungho',92,'2006-02-15 02:45:25'),(117,'Cianjur',45,'2006-02-15 02:45:25'),(118,'Ciomas',45,'2006-02-15 02:45:25'),(119,'Ciparay',45,'2006-02-15 02:45:25'),(120,'Citrus Heights',103,'2006-02-15 02:45:25'),(121,'Citt del Vaticano',41,'2006-02-15 02:45:25'),(122,'Ciudad del Este',73,'2006-02-15 02:45:25'),(123,'Clarksville',103,'2006-02-15 02:45:25'),(124,'Coacalco de Berriozbal',60,'2006-02-15 02:45:25'),(125,'Coatzacoalcos',60,'2006-02-15 02:45:25'),(126,'Compton',103,'2006-02-15 02:45:25'),(127,'Coquimbo',22,'2006-02-15 02:45:25'),(128,'Crdoba',6,'2006-02-15 02:45:25'),(129,'Cuauhtmoc',60,'2006-02-15 02:45:25'),(130,'Cuautla',60,'2006-02-15 02:45:25'),(131,'Cuernavaca',60,'2006-02-15 02:45:25'),(132,'Cuman',104,'2006-02-15 02:45:25'),(133,'Czestochowa',76,'2006-02-15 02:45:25'),(134,'Dadu',72,'2006-02-15 02:45:25'),(135,'Dallas',103,'2006-02-15 02:45:25'),(136,'Datong',23,'2006-02-15 02:45:25'),(137,'Daugavpils',54,'2006-02-15 02:45:25'),(138,'Davao',75,'2006-02-15 02:45:25'),(139,'Daxian',23,'2006-02-15 02:45:25'),(140,'Dayton',103,'2006-02-15 02:45:25'),(141,'Deba Habe',69,'2006-02-15 02:45:25'),(142,'Denizli',97,'2006-02-15 02:45:25'),(143,'Dhaka',12,'2006-02-15 02:45:25'),(144,'Dhule (Dhulia)',44,'2006-02-15 02:45:25'),(145,'Dongying',23,'2006-02-15 02:45:25'),(146,'Donostia-San Sebastin',87,'2006-02-15 02:45:25'),(147,'Dos Quebradas',24,'2006-02-15 02:45:25'),(148,'Duisburg',38,'2006-02-15 02:45:25'),(149,'Dundee',102,'2006-02-15 02:45:25'),(150,'Dzerzinsk',80,'2006-02-15 02:45:25'),(151,'Ede',67,'2006-02-15 02:45:25'),(152,'Effon-Alaiye',69,'2006-02-15 02:45:25'),(153,'El Alto',14,'2006-02-15 02:45:25'),(154,'El Fuerte',60,'2006-02-15 02:45:25'),(155,'El Monte',103,'2006-02-15 02:45:25'),(156,'Elista',80,'2006-02-15 02:45:25'),(157,'Emeishan',23,'2006-02-15 02:45:25'),(158,'Emmen',67,'2006-02-15 02:45:25'),(159,'Enshi',23,'2006-02-15 02:45:25'),(160,'Erlangen',38,'2006-02-15 02:45:25'),(161,'Escobar',6,'2006-02-15 02:45:25'),(162,'Esfahan',46,'2006-02-15 02:45:25'),(163,'Eskisehir',97,'2006-02-15 02:45:25'),(164,'Etawah',44,'2006-02-15 02:45:25'),(165,'Ezeiza',6,'2006-02-15 02:45:25'),(166,'Ezhou',23,'2006-02-15 02:45:25'),(167,'Faaa',36,'2006-02-15 02:45:25'),(168,'Fengshan',92,'2006-02-15 02:45:25'),(169,'Firozabad',44,'2006-02-15 02:45:25'),(170,'Florencia',24,'2006-02-15 02:45:25'),(171,'Fontana',103,'2006-02-15 02:45:25'),(172,'Fukuyama',50,'2006-02-15 02:45:25'),(173,'Funafuti',99,'2006-02-15 02:45:25'),(174,'Fuyu',23,'2006-02-15 02:45:25'),(175,'Fuzhou',23,'2006-02-15 02:45:25'),(176,'Gandhinagar',44,'2006-02-15 02:45:25'),(177,'Garden Grove',103,'2006-02-15 02:45:25'),(178,'Garland',103,'2006-02-15 02:45:25'),(179,'Gatineau',20,'2006-02-15 02:45:25'),(180,'Gaziantep',97,'2006-02-15 02:45:25'),(181,'Gijn',87,'2006-02-15 02:45:25'),(182,'Gingoog',75,'2006-02-15 02:45:25'),(183,'Goinia',15,'2006-02-15 02:45:25'),(184,'Gorontalo',45,'2006-02-15 02:45:25'),(185,'Grand Prairie',103,'2006-02-15 02:45:25'),(186,'Graz',9,'2006-02-15 02:45:25'),(187,'Greensboro',103,'2006-02-15 02:45:25'),(188,'Guadalajara',60,'2006-02-15 02:45:25'),(189,'Guaruj',15,'2006-02-15 02:45:25'),(190,'guas Lindas de Gois',15,'2006-02-15 02:45:25'),(191,'Gulbarga',44,'2006-02-15 02:45:25'),(192,'Hagonoy',75,'2006-02-15 02:45:25'),(193,'Haining',23,'2006-02-15 02:45:25'),(194,'Haiphong',105,'2006-02-15 02:45:25'),(195,'Haldia',44,'2006-02-15 02:45:25'),(196,'Halifax',20,'2006-02-15 02:45:25'),(197,'Halisahar',44,'2006-02-15 02:45:25'),(198,'Halle/Saale',38,'2006-02-15 02:45:25'),(199,'Hami',23,'2006-02-15 02:45:25'),(200,'Hamilton',68,'2006-02-15 02:45:25'),(201,'Hanoi',105,'2006-02-15 02:45:25'),(202,'Hidalgo',60,'2006-02-15 02:45:25'),(203,'Higashiosaka',50,'2006-02-15 02:45:25'),(204,'Hino',50,'2006-02-15 02:45:25'),(205,'Hiroshima',50,'2006-02-15 02:45:25'),(206,'Hodeida',107,'2006-02-15 02:45:25'),(207,'Hohhot',23,'2006-02-15 02:45:25'),(208,'Hoshiarpur',44,'2006-02-15 02:45:25'),(209,'Hsichuh',92,'2006-02-15 02:45:25'),(210,'Huaian',23,'2006-02-15 02:45:25'),(211,'Hubli-Dharwad',44,'2006-02-15 02:45:25'),(212,'Huejutla de Reyes',60,'2006-02-15 02:45:25'),(213,'Huixquilucan',60,'2006-02-15 02:45:25'),(214,'Hunuco',74,'2006-02-15 02:45:25'),(215,'Ibirit',15,'2006-02-15 02:45:25'),(216,'Idfu',29,'2006-02-15 02:45:25'),(217,'Ife',69,'2006-02-15 02:45:25'),(218,'Ikerre',69,'2006-02-15 02:45:25'),(219,'Iligan',75,'2006-02-15 02:45:25'),(220,'Ilorin',69,'2006-02-15 02:45:25'),(221,'Imus',75,'2006-02-15 02:45:25'),(222,'Inegl',97,'2006-02-15 02:45:25'),(223,'Ipoh',59,'2006-02-15 02:45:25'),(224,'Isesaki',50,'2006-02-15 02:45:25'),(225,'Ivanovo',80,'2006-02-15 02:45:25'),(226,'Iwaki',50,'2006-02-15 02:45:25'),(227,'Iwakuni',50,'2006-02-15 02:45:25'),(228,'Iwatsuki',50,'2006-02-15 02:45:25'),(229,'Izumisano',50,'2006-02-15 02:45:25'),(230,'Jaffna',88,'2006-02-15 02:45:25'),(231,'Jaipur',44,'2006-02-15 02:45:25'),(232,'Jakarta',45,'2006-02-15 02:45:25'),(233,'Jalib al-Shuyukh',53,'2006-02-15 02:45:25'),(234,'Jamalpur',12,'2006-02-15 02:45:25'),(235,'Jaroslavl',80,'2006-02-15 02:45:25'),(236,'Jastrzebie-Zdrj',76,'2006-02-15 02:45:25'),(237,'Jedda',82,'2006-02-15 02:45:25'),(238,'Jelets',80,'2006-02-15 02:45:25'),(239,'Jhansi',44,'2006-02-15 02:45:25'),(240,'Jinchang',23,'2006-02-15 02:45:25'),(241,'Jining',23,'2006-02-15 02:45:25'),(242,'Jinzhou',23,'2006-02-15 02:45:25'),(243,'Jodhpur',44,'2006-02-15 02:45:25'),(244,'Johannesburg',85,'2006-02-15 02:45:25'),(245,'Joliet',103,'2006-02-15 02:45:25'),(246,'Jos Azueta',60,'2006-02-15 02:45:25'),(247,'Juazeiro do Norte',15,'2006-02-15 02:45:25'),(248,'Juiz de Fora',15,'2006-02-15 02:45:25'),(249,'Junan',23,'2006-02-15 02:45:25'),(250,'Jurez',60,'2006-02-15 02:45:25'),(251,'Kabul',1,'2006-02-15 02:45:25'),(252,'Kaduna',69,'2006-02-15 02:45:25'),(253,'Kakamigahara',50,'2006-02-15 02:45:25'),(254,'Kaliningrad',80,'2006-02-15 02:45:25'),(255,'Kalisz',76,'2006-02-15 02:45:25'),(256,'Kamakura',50,'2006-02-15 02:45:25'),(257,'Kamarhati',44,'2006-02-15 02:45:25'),(258,'Kamjanets-Podilskyi',100,'2006-02-15 02:45:25'),(259,'Kamyin',80,'2006-02-15 02:45:25'),(260,'Kanazawa',50,'2006-02-15 02:45:25'),(261,'Kanchrapara',44,'2006-02-15 02:45:25'),(262,'Kansas City',103,'2006-02-15 02:45:25'),(263,'Karnal',44,'2006-02-15 02:45:25'),(264,'Katihar',44,'2006-02-15 02:45:25'),(265,'Kermanshah',46,'2006-02-15 02:45:25'),(266,'Kilis',97,'2006-02-15 02:45:25'),(267,'Kimberley',85,'2006-02-15 02:45:25'),(268,'Kimchon',86,'2006-02-15 02:45:25'),(269,'Kingstown',81,'2006-02-15 02:45:25'),(270,'Kirovo-Tepetsk',80,'2006-02-15 02:45:25'),(271,'Kisumu',52,'2006-02-15 02:45:25'),(272,'Kitwe',109,'2006-02-15 02:45:25'),(273,'Klerksdorp',85,'2006-02-15 02:45:25'),(274,'Kolpino',80,'2006-02-15 02:45:25'),(275,'Konotop',100,'2006-02-15 02:45:25'),(276,'Koriyama',50,'2006-02-15 02:45:25'),(277,'Korla',23,'2006-02-15 02:45:25'),(278,'Korolev',80,'2006-02-15 02:45:25'),(279,'Kowloon and New Kowloon',42,'2006-02-15 02:45:25'),(280,'Kragujevac',108,'2006-02-15 02:45:25'),(281,'Ktahya',97,'2006-02-15 02:45:25'),(282,'Kuching',59,'2006-02-15 02:45:25'),(283,'Kumbakonam',44,'2006-02-15 02:45:25'),(284,'Kurashiki',50,'2006-02-15 02:45:25'),(285,'Kurgan',80,'2006-02-15 02:45:25'),(286,'Kursk',80,'2006-02-15 02:45:25'),(287,'Kuwana',50,'2006-02-15 02:45:25'),(288,'La Paz',60,'2006-02-15 02:45:25'),(289,'La Plata',6,'2006-02-15 02:45:25'),(290,'La Romana',27,'2006-02-15 02:45:25'),(291,'Laiwu',23,'2006-02-15 02:45:25'),(292,'Lancaster',103,'2006-02-15 02:45:25'),(293,'Laohekou',23,'2006-02-15 02:45:25'),(294,'Lapu-Lapu',75,'2006-02-15 02:45:25'),(295,'Laredo',103,'2006-02-15 02:45:25'),(296,'Lausanne',91,'2006-02-15 02:45:25'),(297,'Le Mans',34,'2006-02-15 02:45:25'),(298,'Lengshuijiang',23,'2006-02-15 02:45:25'),(299,'Leshan',23,'2006-02-15 02:45:25'),(300,'Lethbridge',20,'2006-02-15 02:45:25'),(301,'Lhokseumawe',45,'2006-02-15 02:45:25'),(302,'Liaocheng',23,'2006-02-15 02:45:25'),(303,'Liepaja',54,'2006-02-15 02:45:25'),(304,'Lilongwe',58,'2006-02-15 02:45:25'),(305,'Lima',74,'2006-02-15 02:45:25'),(306,'Lincoln',103,'2006-02-15 02:45:25'),(307,'Linz',9,'2006-02-15 02:45:25'),(308,'Lipetsk',80,'2006-02-15 02:45:25'),(309,'Livorno',49,'2006-02-15 02:45:25'),(310,'Ljubertsy',80,'2006-02-15 02:45:25'),(311,'Loja',28,'2006-02-15 02:45:25'),(312,'London',102,'2006-02-15 02:45:25'),(313,'London',20,'2006-02-15 02:45:25'),(314,'Lublin',76,'2006-02-15 02:45:25'),(315,'Lubumbashi',25,'2006-02-15 02:45:25'),(316,'Lungtan',92,'2006-02-15 02:45:25'),(317,'Luzinia',15,'2006-02-15 02:45:25'),(318,'Madiun',45,'2006-02-15 02:45:25'),(319,'Mahajanga',57,'2006-02-15 02:45:25'),(320,'Maikop',80,'2006-02-15 02:45:25'),(321,'Malm',90,'2006-02-15 02:45:25'),(322,'Manchester',103,'2006-02-15 02:45:25'),(323,'Mandaluyong',75,'2006-02-15 02:45:25'),(324,'Mandi Bahauddin',72,'2006-02-15 02:45:25'),(325,'Mannheim',38,'2006-02-15 02:45:25'),(326,'Maracabo',104,'2006-02-15 02:45:25'),(327,'Mardan',72,'2006-02-15 02:45:25'),(328,'Maring',15,'2006-02-15 02:45:25'),(329,'Masqat',71,'2006-02-15 02:45:25'),(330,'Matamoros',60,'2006-02-15 02:45:25'),(331,'Matsue',50,'2006-02-15 02:45:25'),(332,'Meixian',23,'2006-02-15 02:45:25'),(333,'Memphis',103,'2006-02-15 02:45:25'),(334,'Merlo',6,'2006-02-15 02:45:25'),(335,'Mexicali',60,'2006-02-15 02:45:25'),(336,'Miraj',44,'2006-02-15 02:45:25'),(337,'Mit Ghamr',29,'2006-02-15 02:45:25'),(338,'Miyakonojo',50,'2006-02-15 02:45:25'),(339,'Mogiljov',13,'2006-02-15 02:45:25'),(340,'Molodetno',13,'2006-02-15 02:45:25'),(341,'Monclova',60,'2006-02-15 02:45:25'),(342,'Monywa',64,'2006-02-15 02:45:25'),(343,'Moscow',80,'2006-02-15 02:45:25'),(344,'Mosul',47,'2006-02-15 02:45:25'),(345,'Mukateve',100,'2006-02-15 02:45:25'),(346,'Munger (Monghyr)',44,'2006-02-15 02:45:25'),(347,'Mwanza',93,'2006-02-15 02:45:25'),(348,'Mwene-Ditu',25,'2006-02-15 02:45:25'),(349,'Myingyan',64,'2006-02-15 02:45:25'),(350,'Mysore',44,'2006-02-15 02:45:25'),(351,'Naala-Porto',63,'2006-02-15 02:45:25'),(352,'Nabereznyje Telny',80,'2006-02-15 02:45:25'),(353,'Nador',62,'2006-02-15 02:45:25'),(354,'Nagaon',44,'2006-02-15 02:45:25'),(355,'Nagareyama',50,'2006-02-15 02:45:25'),(356,'Najafabad',46,'2006-02-15 02:45:25'),(357,'Naju',86,'2006-02-15 02:45:25'),(358,'Nakhon Sawan',94,'2006-02-15 02:45:25'),(359,'Nam Dinh',105,'2006-02-15 02:45:25'),(360,'Namibe',4,'2006-02-15 02:45:25'),(361,'Nantou',92,'2006-02-15 02:45:25'),(362,'Nanyang',23,'2006-02-15 02:45:25'),(363,'NDjamna',21,'2006-02-15 02:45:25'),(364,'Newcastle',85,'2006-02-15 02:45:25'),(365,'Nezahualcyotl',60,'2006-02-15 02:45:25'),(366,'Nha Trang',105,'2006-02-15 02:45:25'),(367,'Niznekamsk',80,'2006-02-15 02:45:25'),(368,'Novi Sad',108,'2006-02-15 02:45:25'),(369,'Novoterkassk',80,'2006-02-15 02:45:25'),(370,'Nukualofa',95,'2006-02-15 02:45:25'),(371,'Nuuk',40,'2006-02-15 02:45:25'),(372,'Nyeri',52,'2006-02-15 02:45:25'),(373,'Ocumare del Tuy',104,'2006-02-15 02:45:25'),(374,'Ogbomosho',69,'2006-02-15 02:45:25'),(375,'Okara',72,'2006-02-15 02:45:25'),(376,'Okayama',50,'2006-02-15 02:45:25'),(377,'Okinawa',50,'2006-02-15 02:45:25'),(378,'Olomouc',26,'2006-02-15 02:45:25'),(379,'Omdurman',89,'2006-02-15 02:45:25'),(380,'Omiya',50,'2006-02-15 02:45:25'),(381,'Ondo',69,'2006-02-15 02:45:25'),(382,'Onomichi',50,'2006-02-15 02:45:25'),(383,'Oshawa',20,'2006-02-15 02:45:25'),(384,'Osmaniye',97,'2006-02-15 02:45:25'),(385,'ostka',100,'2006-02-15 02:45:25'),(386,'Otsu',50,'2006-02-15 02:45:25'),(387,'Oulu',33,'2006-02-15 02:45:25'),(388,'Ourense (Orense)',87,'2006-02-15 02:45:25'),(389,'Owo',69,'2006-02-15 02:45:25'),(390,'Oyo',69,'2006-02-15 02:45:25'),(391,'Ozamis',75,'2006-02-15 02:45:25'),(392,'Paarl',85,'2006-02-15 02:45:25'),(393,'Pachuca de Soto',60,'2006-02-15 02:45:25'),(394,'Pak Kret',94,'2006-02-15 02:45:25'),(395,'Palghat (Palakkad)',44,'2006-02-15 02:45:25'),(396,'Pangkal Pinang',45,'2006-02-15 02:45:25'),(397,'Papeete',36,'2006-02-15 02:45:25'),(398,'Parbhani',44,'2006-02-15 02:45:25'),(399,'Pathankot',44,'2006-02-15 02:45:25'),(400,'Patiala',44,'2006-02-15 02:45:25'),(401,'Patras',39,'2006-02-15 02:45:25'),(402,'Pavlodar',51,'2006-02-15 02:45:25'),(403,'Pemalang',45,'2006-02-15 02:45:25'),(404,'Peoria',103,'2006-02-15 02:45:25'),(405,'Pereira',24,'2006-02-15 02:45:25'),(406,'Phnom Penh',18,'2006-02-15 02:45:25'),(407,'Pingxiang',23,'2006-02-15 02:45:25'),(408,'Pjatigorsk',80,'2006-02-15 02:45:25'),(409,'Plock',76,'2006-02-15 02:45:25'),(410,'Po',15,'2006-02-15 02:45:25'),(411,'Ponce',77,'2006-02-15 02:45:25'),(412,'Pontianak',45,'2006-02-15 02:45:25'),(413,'Poos de Caldas',15,'2006-02-15 02:45:25'),(414,'Portoviejo',28,'2006-02-15 02:45:25'),(415,'Probolinggo',45,'2006-02-15 02:45:25'),(416,'Pudukkottai',44,'2006-02-15 02:45:25'),(417,'Pune',44,'2006-02-15 02:45:25'),(418,'Purnea (Purnia)',44,'2006-02-15 02:45:25'),(419,'Purwakarta',45,'2006-02-15 02:45:25'),(420,'Pyongyang',70,'2006-02-15 02:45:25'),(421,'Qalyub',29,'2006-02-15 02:45:25'),(422,'Qinhuangdao',23,'2006-02-15 02:45:25'),(423,'Qomsheh',46,'2006-02-15 02:45:25'),(424,'Quilmes',6,'2006-02-15 02:45:25'),(425,'Rae Bareli',44,'2006-02-15 02:45:25'),(426,'Rajkot',44,'2006-02-15 02:45:25'),(427,'Rampur',44,'2006-02-15 02:45:25'),(428,'Rancagua',22,'2006-02-15 02:45:25'),(429,'Ranchi',44,'2006-02-15 02:45:25'),(430,'Richmond Hill',20,'2006-02-15 02:45:25'),(431,'Rio Claro',15,'2006-02-15 02:45:25'),(432,'Rizhao',23,'2006-02-15 02:45:25'),(433,'Roanoke',103,'2006-02-15 02:45:25'),(434,'Robamba',28,'2006-02-15 02:45:25'),(435,'Rockford',103,'2006-02-15 02:45:25'),(436,'Ruse',17,'2006-02-15 02:45:25'),(437,'Rustenburg',85,'2006-02-15 02:45:25'),(438,'s-Hertogenbosch',67,'2006-02-15 02:45:25'),(439,'Saarbrcken',38,'2006-02-15 02:45:25'),(440,'Sagamihara',50,'2006-02-15 02:45:25'),(441,'Saint Louis',103,'2006-02-15 02:45:25'),(442,'Saint-Denis',79,'2006-02-15 02:45:25'),(443,'Sal',62,'2006-02-15 02:45:25'),(444,'Salala',71,'2006-02-15 02:45:25'),(445,'Salamanca',60,'2006-02-15 02:45:25'),(446,'Salinas',103,'2006-02-15 02:45:25'),(447,'Salzburg',9,'2006-02-15 02:45:25'),(448,'Sambhal',44,'2006-02-15 02:45:25'),(449,'San Bernardino',103,'2006-02-15 02:45:25'),(450,'San Felipe de Puerto Plata',27,'2006-02-15 02:45:25'),(451,'San Felipe del Progreso',60,'2006-02-15 02:45:25'),(452,'San Juan Bautista Tuxtepec',60,'2006-02-15 02:45:25'),(453,'San Lorenzo',73,'2006-02-15 02:45:25'),(454,'San Miguel de Tucumn',6,'2006-02-15 02:45:25'),(455,'Sanaa',107,'2006-02-15 02:45:25'),(456,'Santa Brbara dOeste',15,'2006-02-15 02:45:25'),(457,'Santa F',6,'2006-02-15 02:45:25'),(458,'Santa Rosa',75,'2006-02-15 02:45:25'),(459,'Santiago de Compostela',87,'2006-02-15 02:45:25'),(460,'Santiago de los Caballeros',27,'2006-02-15 02:45:25'),(461,'Santo Andr',15,'2006-02-15 02:45:25'),(462,'Sanya',23,'2006-02-15 02:45:25'),(463,'Sasebo',50,'2006-02-15 02:45:25'),(464,'Satna',44,'2006-02-15 02:45:25'),(465,'Sawhaj',29,'2006-02-15 02:45:25'),(466,'Serpuhov',80,'2006-02-15 02:45:25'),(467,'Shahr-e Kord',46,'2006-02-15 02:45:25'),(468,'Shanwei',23,'2006-02-15 02:45:25'),(469,'Shaoguan',23,'2006-02-15 02:45:25'),(470,'Sharja',101,'2006-02-15 02:45:25'),(471,'Shenzhen',23,'2006-02-15 02:45:25'),(472,'Shikarpur',72,'2006-02-15 02:45:25'),(473,'Shimoga',44,'2006-02-15 02:45:25'),(474,'Shimonoseki',50,'2006-02-15 02:45:25'),(475,'Shivapuri',44,'2006-02-15 02:45:25'),(476,'Shubra al-Khayma',29,'2006-02-15 02:45:25'),(477,'Siegen',38,'2006-02-15 02:45:25'),(478,'Siliguri (Shiliguri)',44,'2006-02-15 02:45:25'),(479,'Simferopol',100,'2006-02-15 02:45:25'),(480,'Sincelejo',24,'2006-02-15 02:45:25'),(481,'Sirjan',46,'2006-02-15 02:45:25'),(482,'Sivas',97,'2006-02-15 02:45:25'),(483,'Skikda',2,'2006-02-15 02:45:25'),(484,'Smolensk',80,'2006-02-15 02:45:25'),(485,'So Bernardo do Campo',15,'2006-02-15 02:45:25'),(486,'So Leopoldo',15,'2006-02-15 02:45:25'),(487,'Sogamoso',24,'2006-02-15 02:45:25'),(488,'Sokoto',69,'2006-02-15 02:45:25'),(489,'Songkhla',94,'2006-02-15 02:45:25'),(490,'Sorocaba',15,'2006-02-15 02:45:25'),(491,'Soshanguve',85,'2006-02-15 02:45:25'),(492,'Sousse',96,'2006-02-15 02:45:25'),(493,'South Hill',5,'2006-02-15 02:45:25'),(494,'Southampton',102,'2006-02-15 02:45:25'),(495,'Southend-on-Sea',102,'2006-02-15 02:45:25'),(496,'Southport',102,'2006-02-15 02:45:25'),(497,'Springs',85,'2006-02-15 02:45:25'),(498,'Stara Zagora',17,'2006-02-15 02:45:25'),(499,'Sterling Heights',103,'2006-02-15 02:45:25'),(500,'Stockport',102,'2006-02-15 02:45:25'),(501,'Sucre',14,'2006-02-15 02:45:25'),(502,'Suihua',23,'2006-02-15 02:45:25'),(503,'Sullana',74,'2006-02-15 02:45:25'),(504,'Sultanbeyli',97,'2006-02-15 02:45:25'),(505,'Sumqayit',10,'2006-02-15 02:45:25'),(506,'Sumy',100,'2006-02-15 02:45:25'),(507,'Sungai Petani',59,'2006-02-15 02:45:25'),(508,'Sunnyvale',103,'2006-02-15 02:45:25'),(509,'Surakarta',45,'2006-02-15 02:45:25'),(510,'Syktyvkar',80,'2006-02-15 02:45:25'),(511,'Syrakusa',49,'2006-02-15 02:45:25'),(512,'Szkesfehrvr',43,'2006-02-15 02:45:25'),(513,'Tabora',93,'2006-02-15 02:45:25'),(514,'Tabriz',46,'2006-02-15 02:45:25'),(515,'Tabuk',82,'2006-02-15 02:45:25'),(516,'Tafuna',3,'2006-02-15 02:45:25'),(517,'Taguig',75,'2006-02-15 02:45:25'),(518,'Taizz',107,'2006-02-15 02:45:25'),(519,'Talavera',75,'2006-02-15 02:45:25'),(520,'Tallahassee',103,'2006-02-15 02:45:25'),(521,'Tama',50,'2006-02-15 02:45:25'),(522,'Tambaram',44,'2006-02-15 02:45:25'),(523,'Tanauan',75,'2006-02-15 02:45:25'),(524,'Tandil',6,'2006-02-15 02:45:25'),(525,'Tangail',12,'2006-02-15 02:45:25'),(526,'Tanshui',92,'2006-02-15 02:45:25'),(527,'Tanza',75,'2006-02-15 02:45:25'),(528,'Tarlac',75,'2006-02-15 02:45:25'),(529,'Tarsus',97,'2006-02-15 02:45:25'),(530,'Tartu',30,'2006-02-15 02:45:25'),(531,'Teboksary',80,'2006-02-15 02:45:25'),(532,'Tegal',45,'2006-02-15 02:45:25'),(533,'Tel Aviv-Jaffa',48,'2006-02-15 02:45:25'),(534,'Tete',63,'2006-02-15 02:45:25'),(535,'Tianjin',23,'2006-02-15 02:45:25'),(536,'Tiefa',23,'2006-02-15 02:45:25'),(537,'Tieli',23,'2006-02-15 02:45:25'),(538,'Tokat',97,'2006-02-15 02:45:25'),(539,'Tonghae',86,'2006-02-15 02:45:25'),(540,'Tongliao',23,'2006-02-15 02:45:25'),(541,'Torren',60,'2006-02-15 02:45:25'),(542,'Touliu',92,'2006-02-15 02:45:25'),(543,'Toulon',34,'2006-02-15 02:45:25'),(544,'Toulouse',34,'2006-02-15 02:45:25'),(545,'Trshavn',32,'2006-02-15 02:45:25'),(546,'Tsaotun',92,'2006-02-15 02:45:25'),(547,'Tsuyama',50,'2006-02-15 02:45:25'),(548,'Tuguegarao',75,'2006-02-15 02:45:25'),(549,'Tychy',76,'2006-02-15 02:45:25'),(550,'Udaipur',44,'2006-02-15 02:45:25'),(551,'Udine',49,'2006-02-15 02:45:25'),(552,'Ueda',50,'2006-02-15 02:45:25'),(553,'Uijongbu',86,'2006-02-15 02:45:25'),(554,'Uluberia',44,'2006-02-15 02:45:25'),(555,'Urawa',50,'2006-02-15 02:45:25'),(556,'Uruapan',60,'2006-02-15 02:45:25'),(557,'Usak',97,'2006-02-15 02:45:25'),(558,'Usolje-Sibirskoje',80,'2006-02-15 02:45:25'),(559,'Uttarpara-Kotrung',44,'2006-02-15 02:45:25'),(560,'Vaduz',55,'2006-02-15 02:45:25'),(561,'Valencia',104,'2006-02-15 02:45:25'),(562,'Valle de la Pascua',104,'2006-02-15 02:45:25'),(563,'Valle de Santiago',60,'2006-02-15 02:45:25'),(564,'Valparai',44,'2006-02-15 02:45:25'),(565,'Vancouver',20,'2006-02-15 02:45:25'),(566,'Varanasi (Benares)',44,'2006-02-15 02:45:25'),(567,'Vicente Lpez',6,'2006-02-15 02:45:25'),(568,'Vijayawada',44,'2006-02-15 02:45:25'),(569,'Vila Velha',15,'2006-02-15 02:45:25'),(570,'Vilnius',56,'2006-02-15 02:45:25'),(571,'Vinh',105,'2006-02-15 02:45:25'),(572,'Vitria de Santo Anto',15,'2006-02-15 02:45:25'),(573,'Warren',103,'2006-02-15 02:45:25'),(574,'Weifang',23,'2006-02-15 02:45:25'),(575,'Witten',38,'2006-02-15 02:45:25'),(576,'Woodridge',8,'2006-02-15 02:45:25'),(577,'Wroclaw',76,'2006-02-15 02:45:25'),(578,'Xiangfan',23,'2006-02-15 02:45:25'),(579,'Xiangtan',23,'2006-02-15 02:45:25'),(580,'Xintai',23,'2006-02-15 02:45:25'),(581,'Xinxiang',23,'2006-02-15 02:45:25'),(582,'Yamuna Nagar',44,'2006-02-15 02:45:25'),(583,'Yangor',65,'2006-02-15 02:45:25'),(584,'Yantai',23,'2006-02-15 02:45:25'),(585,'Yaound',19,'2006-02-15 02:45:25'),(586,'Yerevan',7,'2006-02-15 02:45:25'),(587,'Yinchuan',23,'2006-02-15 02:45:25'),(588,'Yingkou',23,'2006-02-15 02:45:25'),(589,'York',102,'2006-02-15 02:45:25'),(590,'Yuncheng',23,'2006-02-15 02:45:25'),(591,'Yuzhou',23,'2006-02-15 02:45:25'),(592,'Zalantun',23,'2006-02-15 02:45:25'),(593,'Zanzibar',93,'2006-02-15 02:45:25'),(594,'Zaoyang',23,'2006-02-15 02:45:25'),(595,'Zapopan',60,'2006-02-15 02:45:25'),(596,'Zaria',69,'2006-02-15 02:45:25'),(597,'Zeleznogorsk',80,'2006-02-15 02:45:25'),(598,'Zhezqazghan',51,'2006-02-15 02:45:25'),(599,'Zhoushan',23,'2006-02-15 02:45:25'),(600,'Ziguinchor',83,'2006-02-15 02:45:25');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `country_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `country` varchar(50) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Afghanistan','2006-02-15 02:44:00'),(2,'Algeria','2006-02-15 02:44:00'),(3,'American Samoa','2006-02-15 02:44:00'),(4,'Angola','2006-02-15 02:44:00'),(5,'Anguilla','2006-02-15 02:44:00'),(6,'Argentina','2006-02-15 02:44:00'),(7,'Armenia','2006-02-15 02:44:00'),(8,'Australia','2006-02-15 02:44:00'),(9,'Austria','2006-02-15 02:44:00'),(10,'Azerbaijan','2006-02-15 02:44:00'),(11,'Bahrain','2006-02-15 02:44:00'),(12,'Bangladesh','2006-02-15 02:44:00'),(13,'Belarus','2006-02-15 02:44:00'),(14,'Bolivia','2006-02-15 02:44:00'),(15,'Brazil','2006-02-15 02:44:00'),(16,'Brunei','2006-02-15 02:44:00'),(17,'Bulgaria','2006-02-15 02:44:00'),(18,'Cambodia','2006-02-15 02:44:00'),(19,'Cameroon','2006-02-15 02:44:00'),(20,'Canada','2006-02-15 02:44:00'),(21,'Chad','2006-02-15 02:44:00'),(22,'Chile','2006-02-15 02:44:00'),(23,'China','2006-02-15 02:44:00'),(24,'Colombia','2006-02-15 02:44:00'),(25,'Congo, The Democratic Republic of the','2006-02-15 02:44:00'),(26,'Czech Republic','2006-02-15 02:44:00'),(27,'Dominican Republic','2006-02-15 02:44:00'),(28,'Ecuador','2006-02-15 02:44:00'),(29,'Egypt','2006-02-15 02:44:00'),(30,'Estonia','2006-02-15 02:44:00'),(31,'Ethiopia','2006-02-15 02:44:00'),(32,'Faroe Islands','2006-02-15 02:44:00'),(33,'Finland','2006-02-15 02:44:00'),(34,'France','2006-02-15 02:44:00'),(35,'French Guiana','2006-02-15 02:44:00'),(36,'French Polynesia','2006-02-15 02:44:00'),(37,'Gambia','2006-02-15 02:44:00'),(38,'Germany','2006-02-15 02:44:00'),(39,'Greece','2006-02-15 02:44:00'),(40,'Greenland','2006-02-15 02:44:00'),(41,'Holy See (Vatican City State)','2006-02-15 02:44:00'),(42,'Hong Kong','2006-02-15 02:44:00'),(43,'Hungary','2006-02-15 02:44:00'),(44,'India','2006-02-15 02:44:00'),(45,'Indonesia','2006-02-15 02:44:00'),(46,'Iran','2006-02-15 02:44:00'),(47,'Iraq','2006-02-15 02:44:00'),(48,'Israel','2006-02-15 02:44:00'),(49,'Italy','2006-02-15 02:44:00'),(50,'Japan','2006-02-15 02:44:00'),(51,'Kazakstan','2006-02-15 02:44:00'),(52,'Kenya','2006-02-15 02:44:00'),(53,'Kuwait','2006-02-15 02:44:00'),(54,'Latvia','2006-02-15 02:44:00'),(55,'Liechtenstein','2006-02-15 02:44:00'),(56,'Lithuania','2006-02-15 02:44:00'),(57,'Madagascar','2006-02-15 02:44:00'),(58,'Malawi','2006-02-15 02:44:00'),(59,'Malaysia','2006-02-15 02:44:00'),(60,'Mexico','2006-02-15 02:44:00'),(61,'Moldova','2006-02-15 02:44:00'),(62,'Morocco','2006-02-15 02:44:00'),(63,'Mozambique','2006-02-15 02:44:00'),(64,'Myanmar','2006-02-15 02:44:00'),(65,'Nauru','2006-02-15 02:44:00'),(66,'Nepal','2006-02-15 02:44:00'),(67,'Netherlands','2006-02-15 02:44:00'),(68,'New Zealand','2006-02-15 02:44:00'),(69,'Nigeria','2006-02-15 02:44:00'),(70,'North Korea','2006-02-15 02:44:00'),(71,'Oman','2006-02-15 02:44:00'),(72,'Pakistan','2006-02-15 02:44:00'),(73,'Paraguay','2006-02-15 02:44:00'),(74,'Peru','2006-02-15 02:44:00'),(75,'Philippines','2006-02-15 02:44:00'),(76,'Poland','2006-02-15 02:44:00'),(77,'Puerto Rico','2006-02-15 02:44:00'),(78,'Romania','2006-02-15 02:44:00'),(79,'Runion','2006-02-15 02:44:00'),(80,'Russian Federation','2006-02-15 02:44:00'),(81,'Saint Vincent and the Grenadines','2006-02-15 02:44:00'),(82,'Saudi Arabia','2006-02-15 02:44:00'),(83,'Senegal','2006-02-15 02:44:00'),(84,'Slovakia','2006-02-15 02:44:00'),(85,'South Africa','2006-02-15 02:44:00'),(86,'South Korea','2006-02-15 02:44:00'),(87,'Spain','2006-02-15 02:44:00'),(88,'Sri Lanka','2006-02-15 02:44:00'),(89,'Sudan','2006-02-15 02:44:00'),(90,'Sweden','2006-02-15 02:44:00'),(91,'Switzerland','2006-02-15 02:44:00'),(92,'Taiwan','2006-02-15 02:44:00'),(93,'Tanzania','2006-02-15 02:44:00'),(94,'Thailand','2006-02-15 02:44:00'),(95,'Tonga','2006-02-15 02:44:00'),(96,'Tunisia','2006-02-15 02:44:00'),(97,'Turkey','2006-02-15 02:44:00'),(98,'Turkmenistan','2006-02-15 02:44:00'),(99,'Tuvalu','2006-02-15 02:44:00'),(100,'Ukraine','2006-02-15 02:44:00'),(101,'United Arab Emirates','2006-02-15 02:44:00'),(102,'United Kingdom','2006-02-15 02:44:00'),(103,'United States','2006-02-15 02:44:00'),(104,'Venezuela','2006-02-15 02:44:00'),(105,'Vietnam','2006-02-15 02:44:00'),(106,'Virgin Islands, U.S.','2006-02-15 02:44:00'),(107,'Yemen','2006-02-15 02:44:00'),(108,'Yugoslavia','2006-02-15 02:44:00'),(109,'Zambia','2006-02-15 02:44:00');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `error_log`
--

DROP TABLE IF EXISTS `error_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `error_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `error_text` varchar(1000) DEFAULT NULL,
  `debug_data` varchar(1000) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28665 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `error_log`
--

LOCK TABLES `error_log` WRITE;
/*!40000 ALTER TABLE `error_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `error_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type` (
  `type_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `active_flag` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
INSERT INTO `type` VALUES (4,'Sport/Fitness','2014-02-20 08:18:13',1),(5,'Socializing/Communicating','2014-05-13 19:51:47',1),(6,'At Home','2014-05-13 19:52:06',1),(7,'Out of Home','2014-02-20 08:32:14',1),(8,'Other','2014-02-20 08:32:20',1);
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `display_name` varchar(100) DEFAULT NULL,
  `token` varchar(300) DEFAULT NULL,
  `profile_id` varchar(50) DEFAULT NULL,
  `provider` varchar(10) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `city_id` smallint(5) unsigned DEFAULT NULL,
  `fb_link` varchar(100) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` timestamp NULL DEFAULT NULL,
  `active_flag` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (11,'Sergey Liakh','CAALGlu0XkXwBAOmKhoVZCw1CAmeIkWL6A09SXLMmg9r30uhg7mCiXtHHhxWx6kpv8DZC4SNLrzZANRItZAP9mWBmAzKcaSJWFMf4Yk9HCGZBZC0uUU9jks5sCZCbFXPRQSO1mtj2dBhZBZBZCGEztP8fJCHM2E6KVPO2ozcyZA0hthtTAueYZC3WTgcDq96cfbtMK4BEXzf1ww41EQZDZD','761506520550840','FB','$2a$08$WRDAwK0pmeJ9.u2CHceWX.xuYoTKwDLWmSzD5s5pCavk6VqWeanF6','Serg','Liakh','liakh@ukr.net',NULL,'https://www.facebook.com/app_scoped_user_id/761506520550840/','2014-05-25 07:41:04','2014-05-25 07:45:31',1),(12,'Richard Branson',NULL,NULL,NULL,'$2a$08$/TP8hOkCgM3WbClJZgnbeulLGuIWNPxhiAUA4ceVLcEQfA0fBOUNe',NULL,NULL,'richard.branson@gmail.com',NULL,NULL,'2014-04-24 04:46:23','2014-04-24 04:46:23',1),(13,'Paul Smith',NULL,NULL,NULL,'$2a$08$2bbBfDctmXQSzszoOocoA.UOWfz7JbCk.uhhTwveasMsK9fePzn7G',NULL,NULL,'paul.smith@gmail.com',NULL,NULL,'2014-04-24 05:06:41','2014-04-24 05:06:41',1),(14,'Monika Levinski',NULL,NULL,NULL,'$2a$08$la3ThFr0IOCaRE504jmJ2.7Wg8TqZd/QvYlT2EgLhDWUkyjOJstS.',NULL,NULL,'monika.levinski@gmail.com',NULL,NULL,'2014-04-24 05:09:24','2014-04-24 05:09:24',1),(15,'Bruce Lee',NULL,NULL,NULL,'$2a$08$rncu0jqIg8t0miwaSP5Fi.E.veNXOqTO6lrRC1fMM/zOA6pYYo/R6',NULL,NULL,'bruce.lee@gmail.com',NULL,NULL,'2014-04-24 05:10:43','2014-04-24 05:10:43',1),(16,'Will Smith',NULL,NULL,NULL,'$2a$08$I4ytBYK1/G00oUHUMMsusOFxkcTa9KMEKAQCP/kyL0ylHCOBLMi3u',NULL,NULL,'will.smith@gmail.com',NULL,NULL,'2014-04-24 05:15:42','2014-04-24 05:15:42',1),(17,'Sheldon Cooper',NULL,NULL,NULL,'$2a$08$HNXTgYmbPabQi1bQ.YJ3qunJorkvihfhAxQpxbyCjM26W8gDeLLxi',NULL,NULL,'sheldon.cooper@gmail.com',NULL,NULL,'2014-04-24 05:19:47','2014-04-24 05:19:47',1),(19,'Snizhana Hluhovata','CAAGMdCWx4loBAJeS4Owdkpna1azCm3iE6VJAsB8Bat7AZCLrI8HPwsSWuwlLqNcVMBF8pDWw3oJcpEAZCObyRKMZA8OZCH4vIlzIpHFUilBFhiBYfDSN8WjbH6AlcZCWM8PorlQid9EN1bowUrrCoBZAia64HyX8EUZAAOmmeu674ZBMJTagxBRGQX6ZCSWlZBIAIZD','100002170348344','FB',NULL,'Snizhana','Hluhovata','snezhana_gl@bigmir.net',NULL,'https://www.facebook.com/snizhana.hluhovata','2014-04-27 11:03:58','2014-04-27 11:03:58',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'leisure'
--
/*!50003 DROP PROCEDURE IF EXISTS `add_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `add_user`(IN in_display_name varchar(100),
							IN in_email varchar(50),
							IN in_password varchar(60),
							IN in_city_id int)
BEGIN
INSERT INTO `user` 
(`display_name`, `email`,`password`, `city_id`) 
VALUES(in_display_name, in_email, in_password, in_city_id);

SELECT last_insert_id() last_insert_id from dual;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_activity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `delete_activity`(IN in_activity_id INT)
BEGIN
UPDATE activity
	SET active_flag = 0
	WHERE activity_id = in_activity_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_activities` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `get_activities`(IN in_owner_id INT, 
								IN in_category_id INT, 
								IN in_city_id INT, 
								IN in_type_id INT,
								IN in_records_count INT,
								IN in_records_offset INT)
    READS SQL DATA
BEGIN
     SELECT a.activity_id activity_id,
			c.name title,
			c.category_id category_id,
			a.description description,
			a.owner_id owner_id,
			u.display_name owner_name,
			u.profile_id owner_profile_id,
			a.city_id city_id,
			t.name type,
			t.type_id type_id
     FROM activity a 
		LEFT JOIN category c on a.category_id = c.category_id
		LEFT JOIN user u on a.owner_id = u.user_id
		LEFT JOIN type t on a.type_id = t.type_id
	
     WHERE (a.owner_id = in_owner_id OR in_owner_id is null)
     AND (a.city_id = in_city_id OR in_city_id is null)
     AND (a.category_id = in_category_id OR in_category_id is null)
	 AND (a.type_id = in_type_id OR in_type_id is null)
	 AND a.active_flag = 1
	 ORDER BY a.last_update DESC
	LIMIT in_records_offset, in_records_count;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_categories` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `get_categories`(IN in_keywords VARCHAR(100))
    READS SQL DATA
BEGIN
     SELECT `category_id`,
			`name`,
			`type_id`
FROM `category`
     WHERE (UPPER(`name`) LIKE CONCAT('%',UPPER(in_keywords),'%') OR in_keywords is null)
	 LIMIT 10;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_categories_count` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `get_categories_count`(IN in_type_id INT, 
								 IN in_keywords VARCHAR(100),
								 IN in_records_count INT,
								 IN in_records_offset INT)
    READS SQL DATA
BEGIN
     SELECT c.category_id,
			c.name,
			c.type_id,
			count(a.activity_id) activity_count
FROM category c
LEFT JOIN activity a ON c.category_id = a.category_id
     WHERE (UPPER(c.name) LIKE CONCAT('%',UPPER(in_keywords),'%') OR in_keywords is null OR in_keywords = '')
	 AND (c.type_id = in_type_id OR in_type_id is null)
     AND a.active_flag = 1
	 AND c.active_flag = 1
GROUP BY c.name
ORDER BY activity_count DESC
LIMIT in_records_offset, in_records_count;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_common_activities` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `get_common_activities`(IN in_current_user_id INT, IN in_user_id INT)
    READS SQL DATA
BEGIN
	SELECT  c.name title,
			c.category_id category_id,
			a.description description

     FROM activity a 
		LEFT JOIN category c on a.category_id = c.category_id 

	WHERE a.owner_id = in_user_id
	AND a.category_id IN (SELECT DISTINCT category_id from activity where owner_id = in_current_user_id)
	AND a.active_flag = 1
	ORDER BY a.last_update DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_similar_users` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `get_similar_users`(IN in_user_id INT,
								IN in_keywords VARCHAR(100),
								IN in_records_count INT,
								IN in_records_offset INT)
    READS SQL DATA
BEGIN
		 SELECT u.user_id user_id,
				u.profile_id profile_id,
				u.display_name user_name,
				count(a.activity_id) activity_count
		 FROM `user` u
			LEFT JOIN `activity` a ON a.owner_id = u.user_id
						AND a.category_id IN (SELECT DISTINCT category_id from activity where owner_id = in_user_id and active_flag = 1)
						AND a.active_flag = 1
		WHERE u.user_id <> in_user_id
			AND (UPPER(display_name) LIKE CONCAT('%',UPPER(in_keywords),'%') OR in_keywords is null)
		GROUP BY u.user_id
		ORDER BY activity_count DESC
		LIMIT in_records_offset, in_records_count;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_statistics` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `get_statistics`(IN from_date datetime, IN to_date datetime)
BEGIN
DECLARE count_not_registered_visitors INT;
DECLARE count_registered_visitors INT;
DECLARE count_added_activity INT;
DECLARE count_registered_facebook INT;
DECLARE count_registered_email INT;
DECLARE count_errors INT;

select count(distinct user_ip) 
from call_log
where create_date > from_date 
and create_date < to_date
and user_id is null
into count_not_registered_visitors;

select count(distinct user_id) 
from call_log
where create_date > from_date 
and create_date < to_date
and user_id is not null
into count_registered_visitors;

select count(distinct user_id) 
from call_log
where create_date > from_date 
and create_date < to_date
and procedure_name = 'insert_activity'
into count_added_activity;

select count(user_id) 
from user
where profile_id is not null
and create_date > from_date 
and create_date < to_date
into count_registered_facebook;

select count(user_id) 
from user
where profile_id is null
and create_date > from_date 
and create_date < to_date
into count_registered_email;

select count(log_id) 
from error_log
where create_date > from_date 
and create_date < to_date
into count_errors;

select count_not_registered_visitors, 
		count_registered_visitors, 
		count_added_activity, 
		count_registered_facebook, 
		count_registered_email,
		count_errors 
from dual;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_types` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `get_types`()
    READS SQL DATA
BEGIN
     SELECT `type_id`, `name`
     FROM `type`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `get_user`(IN user_email VARCHAR(100))
    READS SQL DATA
BEGIN
     SELECT `user_id`, `password`, `display_name`, `first_name`, `last_name`, `email`
     FROM `user` WHERE email = user_email AND `active_flag` = 1
	 LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_user_by_id` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `get_user_by_id`(IN in_user_id int)
BEGIN
SELECT `user_id`, `password`, `display_name`, `profile_id`, `fb_link`, `email`
     FROM `user` WHERE user_id = in_user_id AND `active_flag` = 1
	 LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_user_by_profile` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `get_user_by_profile`(IN in_profile_id VARCHAR(50))
BEGIN
SELECT `user_id`, `password`, `display_name`, `first_name`, `last_name`, `email`, `profile_id`
     FROM `user` WHERE profile_id = in_profile_id AND `active_flag` = 1
	 LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_activity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `insert_activity`(IN in_description varchar(2000), 
										IN in_owner_id INT,
										IN in_city_id INT,
										IN in_type_id INT,
										IN in_category_id INT,
										IN in_category_name varchar(100))
BEGIN

DECLARE cat_id INT;

IF in_category_id IS NOT null
	THEN SET cat_id = in_category_id;
END IF;

IF in_category_id IS null
	THEN SELECT category_id 
	INTO cat_id
	from category 
	where UPPER(name) = UPPER(in_category_name)
	LIMIT 1;
END IF;

IF cat_id IS null
	THEN 	
	INSERT INTO `category`
	(`name`,`type_id`)
	VALUES
	(in_category_name, in_type_id);
	SET cat_id = LAST_INSERT_ID();
END IF;


     INSERT INTO `activity`
(`description`,
`owner_id`,
`category_id`,
`city_id`,
`type_id`,
`create_date`,
`last_update`)
VALUES
(
in_description,
in_owner_id,
cat_id,
in_city_id,
in_type_id,
CURRENT_TIMESTAMP,
CURRENT_TIMESTAMP);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `log_error` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `log_error`(IN in_error_text varchar(1000),IN in_debug_data varchar(1000), IN in_user VARCHAR(50))
BEGIN

INSERT INTO error_log
(error_text,
debug_data,
user,
create_date)
values
(in_error_text,
in_debug_data,
in_user,
CURRENT_TIMESTAMP);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `log_procedure_call` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `log_procedure_call`(IN in_procedure_name varchar(45),
										IN in_data  varchar(1000),
										IN in_user_id INT,
										IN in_user_ip varchar(45))
BEGIN
	INSERT INTO `call_log`
	(`procedure_name`,
	`data`,
	`user_id`,
	`user_ip`)
	VALUES
	(in_procedure_name,
	in_data,
	in_user_id,
	in_user_ip);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `merge_fb_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `merge_fb_user`( IN in_email VARCHAR(50), 
								IN in_profile_id VARCHAR(50),
								IN in_token VARCHAR(300),
								IN in_first_name VARCHAR(50),
								IN in_last_name VARCHAR(50),
								IN in_display_name VARCHAR(50),
								IN in_fb_link VARCHAR(100))
BEGIN
DECLARE current_user_id INT;

SELECT user_id 
INTO current_user_id
from user 
where email = in_email	and active_flag = 1
LIMIT 1;

CASE WHEN current_user_id IS NOT NULL
	THEN 
	UPDATE user
		SET profile_id = in_profile_id,
		token = in_token,
		first_name = in_first_name,
		last_name = in_last_name,
		display_name = in_display_name,
		fb_link = in_fb_link,
		last_update = CURRENT_TIMESTAMP
	where user_id = current_user_id;
else
	INSERT INTO `user`
	(`display_name`,
	`token`,
	`profile_id`,
	`fb_link`,
	`provider`,
	`password`,
	`first_name`,
	`last_name`,
	`email`)
	VALUES
	(in_display_name,
	in_token,
	in_profile_id,
	in_fb_link,
	'FB',
	NULL,
	in_first_name,
	in_last_name,
	in_email);
	SET current_user_id = last_insert_id();
END CASE;

SELECT `user_id`, `password`, `display_name`, `first_name`, `last_name`, `email`, `profile_id`
     FROM `user` WHERE user_id = current_user_id 
	 LIMIT 1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_activity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `update_activity`(IN in_activity_id INT,
										IN in_description varchar(2000), 
										IN in_type_id INT,
										IN in_category_id INT,
										IN in_category_name varchar(100))
BEGIN

DECLARE cat_id INT;

IF in_category_id IS NOT null
	THEN SET cat_id = in_category_id;
END IF;

IF in_category_id IS null
	THEN SELECT category_id 
	INTO cat_id
	from category 
	where UPPER(name) = UPPER(in_category_name)
	LIMIT 1;
END IF;

IF cat_id IS null
	THEN
	INSERT INTO `category`
	(`name`,`type_id`)
	VALUES
	(in_category_name, in_type_id);
	SET cat_id = LAST_INSERT_ID();
END IF;

UPDATE activity
	SET description = in_description,
		type_id = in_type_id,
		category_id = cat_id
	WHERE activity_id = in_activity_id;
		

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE PROCEDURE `update_user`(IN in_user_id int,
							IN in_display_name varchar(100),
							IN in_email varchar(50),
							IN in_password varchar(60))
BEGIN
update user set
	display_name =  COALESCE(in_display_name, display_name),
	email =  COALESCE(in_email, email),
	password =  COALESCE(in_password, password),
	last_update = current_timestamp
WHERE user_id = in_user_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-05-25 20:12:43
