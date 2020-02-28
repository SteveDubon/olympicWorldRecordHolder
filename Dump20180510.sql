-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Temporary view structure for view `above_avg_age`
--

DROP TABLE IF EXISTS `above_avg_age`;
/*!50001 DROP VIEW IF EXISTS `above_avg_age`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `above_avg_age` AS SELECT 
 1 AS `avg_age`,
 1 AS `country_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_type` varchar(45) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Men'),(2,'Women'),(3,'Mixed/Pairs'),(4,'Team');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `abbreviation` varchar(5) NOT NULL,
  `continent` varchar(45) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Norway','NOR','Europe'),(2,'Germany','GER','Europe'),(3,'Canada','CAN','North America'),(4,'United States','USA','North America'),(5,'Netherlands','NED','Europe'),(6,'Sweden','SWE','Europe'),(7,'Republic of Korea','KOR','Asia'),(8,'Switzerland','SUI','Europe'),(9,'France','FRA','Europe'),(10,'Austria','AUT','Europe'),(11,'Japan','JPN','Asia'),(12,'Italy','ITA','Europe'),(13,'Olympic Athlete from Russia','OAR','Europe'),(14,'Czech Republic','CZ','Europe'),(15,'Belarus','BLR','Europe'),(16,'China','CHN','Asia'),(17,'Slovakia','SK','Europe'),(18,'Finland','FIN','Europe'),(19,'Great Britain','GB','Europe'),(20,'Poland','POL','Europe'),(21,'Hungary','HUN','Europe'),(22,'Ukraine','UA','Europe'),(23,'Australia','AU','Australia'),(24,'Slovenia','SI','Europe'),(25,'Belgium','BE','Europe'),(26,'Spain','ES','Europe'),(27,'New Zealand','NZ','Oceania'),(28,'Kazakhstan','LZ','Europe'),(29,'Latvia','LV','Europe'),(30,'Liechtenstein','LI','Europe');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(45) NOT NULL,
  `venue` varchar(45) NOT NULL,
  `sport_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`event_id`),
  KEY `fk_events_sports1_idx` (`sport_id`),
  KEY `fk_events_category1_idx` (`category_id`),
  CONSTRAINT `fk_events_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_events_sports1` FOREIGN KEY (`sport_id`) REFERENCES `sports` (`sport_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'Downhill','Jeongseon Alpine Centre',1,1),(2,'Downhill','Jeongseon Alpine Centre',1,2),(3,'Super-G','Jeongseon Alpine Centre',1,1),(4,'Super-G','Jeongseon Alpine Centre',1,2),(5,'Giant Slalom','Yongpyong Alpine Centre',1,1),(6,'Giant Slalom','Yongpyong Alpine Centre',1,2),(7,'Slalom','Yongpyong Alpine Centre',1,1),(8,'Slalom','Yongpyong Alpine Centre',1,2),(9,'Combined','Jeongseon Alpine Centre',1,1),(10,'Combined','Jeongseon Alpine Centre',1,2),(11,'Mixed Team','Jeongseon Alpine Centre',1,3),(12,'20km Individual','Alpensia Biathlon Centre',2,1),(13,'15km Individual','Alpensia Biathlon Centre',2,2),(14,'10km Sprint','Alpensia Biathlon Centre',2,1),(15,'7.5km Sprint','Alpensia Biathlon Centre',2,2),(16,'12.5km Pursuit','Alpensia Biathlon Centre',2,1),(17,'10km Pursuit','Alpensia Biathlon Centre',2,2),(18,'15km Mass Start','Alpensia Biathlon Centre',2,1),(19,'12.5km Mass Start','Alpensia Biathlon Centre',2,2),(20,'4x7.5km Relay','Alpensia Biathlon Centre',2,1),(21,'4x6 km Relay','Alpensia Biathlon Centre',2,2),(22,'Mixed Relay','Alpensia Biathlon Centre',2,3),(23,'Two-man','Olympic Sliding Centre',3,1),(24,'Four-man','Olympic Sliding Centre',3,1),(25,'Two-woman','Olympic Sliding Centre',3,2),(26,'15km Freestyle','Alpensia Cross Country Centre',4,1),(27,'15km Skiathlon','Alpensia Cross Country Centre',4,2),(28,'30km Skiathlon','Alpensia Cross Country Centre',4,1),(29,'30km Classical','Alpensia Cross Country Centre',4,2),(30,'50km Classical','Alpensia Cross Country Centre',4,1),(31,'4x10km Relay','Alpensia Cross Country Centre',4,1),(32,'Sprint Classical','Alpensia Cross Country Centre',4,1),(33,'Sprint Classical','Alpensia Cross Country Centre',4,2),(34,'Team Sprint Freestyle','Alpensia Cross Country Centre',4,1),(35,'Team Sprint Freestyle','Alpensia Cross Country Centre',4,2),(36,'10km Freestyle','Alpensia Cross Country Centre',4,2),(37,'4x5km Relay','Alpensia Cross Country Centre',4,2),(38,'Mens','Gangneung Curling Centre',5,1),(39,'Womens','Gangneung Curling Centre',5,2),(40,'Mixed Doubles','Gangneung Curling Centre',5,3),(41,'Men\'s Singles','Gangneung Ice Arena',6,1),(42,'Ladies\' Singles','Gangneung Ice Arena',6,2),(43,'Pairs Skating','Gangneung Ice Arena',6,3),(44,'Ice Dancing','Gangneung Ice Arena',6,3),(45,'Team Event','Gangneung Ice Arena',6,4),(46,'Aerials','Bogwang Phoenix Park',7,1),(47,'Aerials','Bogwang Phoenix Park',7,2),(48,'Halfpipe','Bogwang Phoenix Park',7,1),(49,'Halfpipe','Bogwang Phoenix Park',7,2),(50,'Moguls','Bogwang Phoenix Park',7,1),(51,'Moguls','Bogwang Phoenix Park',7,2),(52,'Ski Cross','Bogwang Phoenix Park',7,1),(53,'Ski Cross','Bogwang Phoenix Park',7,2),(54,'Slopestyle','Bogwang Phoenix Park',7,1),(55,'Slopestyle','Bogwang Phoenix Park',7,2),(56,'Men\'s Tournament','Gangneung',8,4),(57,'Women\'s Tournament','Gangneung',8,4),(58,'Men\'s Singles','Alpensia Sliding Centre',9,1),(59,'Women\'s Singles','Alpensia Sliding Centre',9,2),(60,'Doubles','Alpensia Sliding Centre',9,3),(61,'Team Relay','Alpensia Sliding Centre',9,4),(62,'Individual Large Hill/ 10 km','Alpensia Ski Jumping Centre',10,1),(63,'Inidividual Normal Hill/ 10 km','Alpensia Ski Jumping Centre',10,1),(64,'Team Large Hill/ 4x5 km','Alpensia Ski Jumping Centre',10,4),(65,'500 metres','Gangneung Ice Arena',11,1),(66,'500 metres','Gangneung Ice Arena',11,2),(67,'1000 metres','Gangneung Ice Arena',11,1),(68,'1000 metres','Gangneung Ice Arena',11,2),(69,'1500 metres','Gangneung Ice Arena',11,1),(70,'1500 metres','Gangneung Ice Arena',11,2),(71,'5000 metre relay','Gangneung Ice Arena',11,1),(72,'3000 metre relay','Gangneung Ice Arena',11,2),(73,'Men\'s','Alpensia Sliding Centre',12,1),(74,'Women\'s','Alpensia Sliding Centre',12,2),(75,'Men\'s Individual Normal Hill','Alpensia Ski Jumping Centre',13,1),(76,'Men\'s Individual Large Hill','Alpensia Ski Jumping Centre',13,1),(77,'Men\'s Team Large Hill','Alpensia Ski Jumping Centre',13,1),(78,'Women\'s Individual Normal Hill','Alpensia Ski Jumping Centre',13,2),(79,'Big Air','Alpensia Ski Jumping Stadium',14,1),(80,'Big Air','Alpensia Ski Jumping Stadium',14,2),(81,'Halfpipe','Bogwang Phoenix Park',14,1),(82,'Halfpipe','Bogwang Phoenix Park',14,2),(83,'Parallel Giant Slalom','Bogwang Phoenix Park',14,1),(84,'Parallel Giant Slalom','Bogwang Phoenix Park',14,2),(85,'Slopestyle','Bogwang Phoenix Park',14,1),(86,'Slopestyle','Bogwang Phoenix Park',14,2),(87,'Snowboard Cross','Bogwang Phoenix Park',14,1),(88,'Snowboard Cross','Bogwang Phoenix Park',14,2),(89,'500 metres','Gangneung Oval',15,1),(90,'500 metres','Gangneung Oval',15,2),(91,'1000 metres','Gangneung Oval',15,1),(92,'1000 metres','Gangneung Oval',15,2),(93,'1500 metres','Gangneung Oval',15,1),(94,'1500 metres','Gangneung Oval',15,2),(95,'5000 metres','Gangneung Oval',15,1),(96,'5000 metres','Gangneung Oval',15,2),(97,'10000 metres','Gangneung Oval',15,1),(98,'Mass Start','Gangneung Oval',15,1),(99,'Mass Start','Gangneung Oval',15,2),(100,'Team Pursuit','Gangneung Oval',15,1),(101,'Team Pursuit','Gangneung Oval',15,2),(102,'3000 metres','Gangneung Oval',15,2);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `golden_athletes`
--

DROP TABLE IF EXISTS `golden_athletes`;
/*!50001 DROP VIEW IF EXISTS `golden_athletes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `golden_athletes` AS SELECT 
 1 AS `athlete_name`,
 1 AS `medal_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `medal_count`
--

DROP TABLE IF EXISTS `medal_count`;
/*!50001 DROP VIEW IF EXISTS `medal_count`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `medal_count` AS SELECT 
 1 AS `country_name`,
 1 AS `num_of_medals`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `medalist_in_events`
--

DROP TABLE IF EXISTS `medalist_in_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medalist_in_events` (
  `medalist_in_event_id` int(11) NOT NULL AUTO_INCREMENT,
  `medalist_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `world_record_id` int(11) NOT NULL,
  `medal_id` int(11) NOT NULL,
  PRIMARY KEY (`medalist_in_event_id`),
  KEY `fk_medalist_in_event_Medalists1_idx` (`medalist_id`),
  KEY `fk_medalist_in_event_events1_idx` (`event_id`),
  KEY `fk_medalist_in_event_world_records1_idx` (`world_record_id`),
  KEY `fk_medalist_in_event_medals1_idx` (`medal_id`),
  CONSTRAINT `fk_medalist_in_event_Medalists1` FOREIGN KEY (`medalist_id`) REFERENCES `medalists` (`medalist_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_medalist_in_event_events1` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_medalist_in_event_medals1` FOREIGN KEY (`medal_id`) REFERENCES `medals` (`medal_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_medalist_in_event_world_records1` FOREIGN KEY (`world_record_id`) REFERENCES `world_records` (`world_record_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medalist_in_events`
--

LOCK TABLES `medalist_in_events` WRITE;
/*!40000 ALTER TABLE `medalist_in_events` DISABLE KEYS */;
INSERT INTO `medalist_in_events` VALUES (1,2,1,1,1),(2,3,1,1,2),(3,121,1,1,3),(4,163,2,1,1),(5,5,2,1,2),(6,68,2,1,3),(7,142,3,1,1),(8,121,3,1,2),(9,3,3,1,3),(10,183,4,1,1),(11,143,4,1,2),(12,238,4,1,3),(13,141,5,1,1),(14,4,5,1,2),(15,130,5,1,3),(16,67,6,1,1),(17,5,6,1,2),(18,164,6,1,3),(19,99,7,1,1),(20,120,7,1,2),(21,144,7,1,3),(22,100,8,1,1),(23,122,8,1,2),(24,145,8,1,3),(25,141,9,1,1),(26,130,9,1,2),(27,131,9,1,3),(28,119,10,1,1),(29,67,10,1,2),(30,122,10,1,3),(31,118,11,1,1),(32,140,11,1,2),(33,1,11,1,3),(34,7,12,1,1),(35,224,12,1,2),(36,146,12,1,3),(37,25,13,1,1),(38,203,13,1,2),(39,26,13,1,3),(40,25,14,1,1),(41,184,14,1,2),(42,165,14,1,3),(43,26,15,1,1),(44,8,15,1,2),(45,185,15,1,3),(46,132,16,1,1),(47,102,16,1,2),(48,27,16,1,3),(49,26,17,1,1),(50,8,17,1,2),(51,133,17,1,3),(52,132,18,1,1),(53,102,18,1,2),(54,27,18,1,3),(55,23,19,1,1),(56,190,19,1,2),(57,10,19,1,3),(58,98,20,1,1),(59,1,20,1,2),(60,24,20,1,3),(61,189,21,1,1),(62,98,21,1,2),(63,129,21,15,3),(64,129,22,1,1),(65,1,22,1,2),(66,162,22,1,3),(67,45,23,1,1),(68,24,23,1,2),(69,236,23,1,3),(70,24,24,1,1),(71,105,24,1,2),(72,24,24,1,3),(73,24,25,1,1),(74,66,25,1,2),(75,45,25,1,3),(76,123,26,1,1),(77,11,26,1,2),(78,172,26,1,3),(79,103,27,1,1),(80,16,27,1,2),(81,206,27,1,3),(82,11,28,1,1),(83,12,28,1,2),(84,18,28,1,3),(85,16,29,1,1),(86,206,29,1,2),(87,104,29,1,3),(88,205,30,1,1),(89,171,30,1,2),(90,173,30,1,3),(91,1,31,1,1),(92,170,31,1,2),(93,129,31,1,3),(94,13,32,1,1),(95,166,32,1,2),(96,171,32,1,3),(97,104,33,1,1),(98,17,33,1,2),(99,174,33,1,3),(100,1,34,1,1),(101,170,34,1,2),(102,129,34,1,3),(103,66,35,1,1),(104,98,35,1,2),(105,1,35,1,3),(106,14,36,1,1),(107,103,36,1,2),(108,206,36,1,3),(109,1,37,1,1),(110,98,37,1,2),(111,170,37,1,3),(112,66,38,1,1),(113,98,38,1,2),(114,118,38,1,3),(115,98,39,1,1),(116,105,39,1,2),(117,152,39,10,3),(118,45,40,1,1),(119,118,40,1,2),(120,1,40,1,3),(121,153,41,1,1),(122,154,41,1,2),(123,229,41,1,3),(124,175,42,1,1),(125,176,42,1,2),(126,48,42,1,3),(133,45,45,1,1),(134,170,45,1,2),(135,66,45,1,3),(136,218,46,1,1),(137,195,46,1,2),(138,177,46,1,3),(139,191,47,1,1),(140,196,47,1,2),(141,197,47,1,3),(142,71,48,1,1),(143,72,48,1,2),(144,232,48,1,3),(145,54,49,1,1),(146,137,49,1,2),(147,74,49,1,3),(148,51,50,1,1),(149,220,50,1,2),(150,155,50,1,3),(151,136,51,1,1),(152,55,51,1,2),(153,235,51,1,3),(154,52,52,1,1),(155,125,52,1,2),(156,178,52,1,3),(157,53,53,1,1),(158,56,53,1,2),(159,127,53,1,3),(160,15,54,1,1),(161,73,54,1,2),(162,57,54,1,3),(163,124,55,1,1),(164,126,55,1,2),(165,209,55,1,3),(166,170,56,1,1),(167,24,56,1,2),(168,45,56,1,3),(169,66,57,1,1),(170,45,57,1,2),(171,204,57,1,3),(172,147,58,1,1),(173,75,58,1,2),(174,35,58,1,3),(175,33,59,1,1),(176,34,59,1,2),(177,58,59,1,3),(181,24,61,1,1),(182,45,61,1,2),(183,140,61,1,3),(184,38,62,1,1),(185,38,62,1,2),(186,39,62,1,3),(187,39,63,1,1),(188,156,63,1,2),(189,150,63,1,3),(190,24,64,1,1),(191,1,64,1,2),(192,140,64,1,3),(193,198,65,1,1),(194,108,65,1,2),(195,106,65,5,3),(196,167,66,1,1),(197,85,66,1,2),(198,60,66,1,3),(199,59,67,1,1),(200,76,67,1,2),(201,109,67,1,3),(202,84,68,1,1),(203,60,68,1,2),(204,167,68,1,3),(205,106,69,1,1),(206,87,69,1,2),(207,179,69,1,3),(208,107,70,6,1),(209,199,70,1,2),(210,60,70,1,3),(211,216,71,12,1),(212,192,71,1,2),(213,45,71,1,3),(214,105,72,13,1),(215,162,72,1,2),(216,83,72,11,3),(217,110,73,1,1),(218,180,73,1,2),(219,211,73,1,3),(220,210,74,1,1),(221,40,74,1,2),(222,212,74,1,3),(223,41,75,1,1),(224,19,75,1,2),(225,20,75,1,3),(226,215,76,1,1),(227,41,76,1,2),(228,20,76,1,3),(229,1,77,1,1),(230,24,77,14,2),(231,214,77,1,3),(232,21,78,1,1),(233,42,78,1,2),(234,157,78,1,3),(235,61,79,1,1),(236,81,79,1,2),(237,213,79,1,3),(238,151,80,1,1),(239,80,80,1,2),(240,233,80,1,3),(241,77,81,1,1),(242,158,81,1,2),(243,222,81,1,3),(244,79,82,1,1),(245,200,82,1,2),(246,82,82,1,3),(247,128,83,1,1),(248,111,83,1,2),(249,225,83,1,3),(250,183,84,1,1),(251,43,84,1,2),(252,44,84,1,3),(253,78,85,1,1),(254,62,85,1,2),(255,64,85,1,3),(256,80,86,1,1),(257,63,86,1,2),(258,207,86,1,3),(259,138,87,1,1),(260,221,87,7,2),(261,230,87,1,3),(262,168,88,1,1),(263,139,88,1,2),(264,186,88,1,3),(265,22,89,1,1),(266,113,89,1,2),(267,201,89,1,3),(268,159,90,3,1),(269,114,90,1,2),(270,188,90,1,3),(271,86,91,1,1),(272,22,91,1,2),(273,116,91,1,3),(274,88,92,1,1),(275,159,92,1,2),(276,161,92,1,3),(277,86,93,1,1),(278,92,93,1,2),(279,117,93,1,3),(280,89,94,1,1),(281,161,94,1,2),(282,95,94,1,3),(283,87,95,1,1),(284,65,95,1,2),(285,23,95,1,3),(286,91,96,1,1),(287,187,96,1,2),(288,181,96,1,3),(289,65,97,1,1),(290,93,97,1,2),(291,169,97,1,3),(292,112,98,1,1),(293,227,98,1,2),(294,94,98,1,3),(295,160,99,1,1),(296,83,99,1,2),(297,66,99,1,3),(298,1,100,1,1),(299,105,100,1,2),(300,83,100,1,3),(301,152,101,1,1),(302,83,101,1,2),(303,66,101,1,3),(304,90,102,1,1),(305,89,102,1,2),(306,96,102,1,3);
/*!40000 ALTER TABLE `medalist_in_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medalists`
--

DROP TABLE IF EXISTS `medalists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medalists` (
  `medalist_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(45) NOT NULL,
  `country_id` int(11) NOT NULL,
  PRIMARY KEY (`medalist_id`),
  KEY `fk_Medalists_countries_idx` (`country_id`),
  CONSTRAINT `fk_Medalists_countries` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=239 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medalists`
--

LOCK TABLES `medalists` WRITE;
/*!40000 ALTER TABLE `medalists` DISABLE KEYS */;
INSERT INTO `medalists` VALUES (1,'Norway','Team',0,'N/A',1),(2,'Aksel','Svindal',35,'Male',1),(3,'Kjetil','Jansrud',32,'Male',1),(4,'Henrik','Kristoffersen',23,'Male',1),(5,'Ranghild','Mowinckel',25,'Female',1),(6,'Kjetil','Jansrud',32,'Male',1),(7,'Johannes','Boe',24,'Male',1),(8,'Marte','Olsbu',27,'Female',1),(9,'Emil','Svendsen',32,'Male',1),(10,'Tiril','Eckhoff',27,'Female',1),(11,'Simen','Krueger',24,'Male',1),(12,'Martin','Sundby',33,'Male',1),(13,'Johannes','Klaebo',21,'Male',1),(14,'Ragnhild ','Haga',27,'Female',1),(15,'Oystein','Braaten',22,'Male',1),(16,'Marit','Bjoergen',37,'Female',1),(17,'Maiken','Falla',27,'Female',1),(18,'Hans','Holund',29,'Male',1),(19,'Johann','Forfang',22,'Male',1),(20,'Robert','Johansson',27,'Male',1),(21,'Maren','Lundby',23,'Female',1),(22,'Harvard','Lorentzen',25,'Male',1),(23,'Sverre','Pedersen',25,'Male',1),(24,'Germany','Team',0,'N/A',2),(25,'Arnd','Peiffer',30,'Male',2),(26,'Laura','Dahlmeier',24,'Female',2),(27,'Benedikt','Doll',27,'Male',2),(28,'Simon','Schempp',29,'Male',2),(29,'Aljona','Savchenko',34,'Female',2),(30,'Bruno','Massot',29,'Male',2),(31,'Tobias','Wendl',30,'Male',2),(32,'Tobias','Arlt',30,'Male',2),(33,'Natalie','Geisenberger',30,'Female',2),(34,'Dajana','Eitberger',27,'Female',2),(35,'Johannes','Ludwig',32,'Male',2),(36,'Toni','Eggert',29,'Male',2),(37,'Sascha','Benecken',28,'Male',2),(38,'Johannes','Rydzek',26,'Male',2),(39,'Eric','Frenzel',29,'Male',2),(40,'Jacqueline','Loelling',23,'Female',2),(41,'Andreas','Wellinger',22,'Male',2),(42,'Katharina','Althaus',21,'Female',2),(43,'Selina ','Joerg',30,'Female',2),(44,'Ramona','Hofmeister',21,'Female',2),(45,'Canada','Team',0,'N/A',3),(46,'Tessa','Virtue',29,'Female',3),(47,'Scott','Moir',27,'Male',3),(48,'Kaetlyn','Osmond',26,'Female',3),(49,'Meagan','Duhamel',21,'Female',3),(50,'Eric','Radford',35,'Male',3),(51,'Miakel','Kingsbury',33,'Female',3),(52,'Brady','Leman',32,'Male',3),(53,'Kelsey','Serwa',31,'Female',3),(54,'Cassie','Sharpe',24,'Female',3),(55,'Justine','Dufour-Lapointe',26,'Female',3),(56,'Brittany','Phelan',25,'Female',3),(57,'Alex','Beaulieu-Marchand',23,'Male',3),(58,'Alex','Gough',22,'Male',3),(59,'Samuel','Girard',26,'Male',3),(60,'Kim','Boutin',24,'Female',3),(61,'Sebastien','Toutant',26,'Male',3),(62,'Max','Parrot',27,'Male',3),(63,'Laurie','Blouin',28,'Female',3),(64,'Mark','McMorris',24,'Male',3),(65,'Ted-Jan','Bloemen',26,'Male',3),(66,'United States of America','Team',0,'N/A',4),(67,'Mikaela','Shiffrin',24,'Female',4),(68,'Lindsey','Vonn',24,'Female',4),(69,'Maia','Shibutani',26,'Female',4),(70,'Alex','Shibutani',24,'Male',4),(71,'David','Wise',28,'Male',4),(72,'Alex','Ferreira',23,'Male',4),(73,'Nick','Goepper',26,'Male',4),(74,'Brita','Sigourney',27,'Female',4),(75,'Chris','Mazdzer',26,'Male',4),(76,'John-Henry','Kreuger',25,'Male',4),(77,'Shaun','White',24,'Male',4),(78,'Redmond','Gerard',20,'Male',4),(79,'Chloe','Kim',21,'Female',4),(80,'Jamie','Anderson',22,'Female',4),(81,'Kyle','Mack',29,'Male',4),(82,'Arielle','Gold',28,'Female',4),(83,'Netherlands','Team',0,'N/A',5),(84,'Suzanne','Schulting',28,'Female',5),(85,'Yara','Van Kerkhof',24,'Female',5),(86,'Kjeld','Nuis',25,'Male',5),(87,'Sven ','Kramer',26,'Male',5),(88,'Jorien','Ter Mors',24,'Female',5),(89,'Ireen','Wust',25,'Female',5),(90,'Carlijn','Achtereekte',36,'Female',5),(91,'Esmee','Visser',32,'Female',5),(92,'Patrick','Roest',25,'Male',5),(93,'Jorrit','Bergsma',25,'Male',5),(94,'Koen','Verweij',28,'Male',5),(95,'Marrit','Leenstra',24,'Female',5),(96,'Antoinette','de Jong',23,'Female',5),(97,'Irene','Schouten',27,'Female',5),(98,'Sweden','Team',0,'N/A',6),(99,'Andre','Myhrer',25,'Male',6),(100,'Frida','Hansdotter',24,'Female',6),(101,'Hanna','Oeberg',26,'Female',6),(102,'Sebastian','Samuelsson',25,'Male',6),(103,'Charlotte','Kalla',24,'Female',6),(104,'Stina','Nilsson',23,'Female',6),(105,'Republic of Korea','Team',0,'N/A',7),(106,'Hyojun','Lim',22,'Male',7),(107,'Minjeong','Choi',24,'Female',7),(108,'Daeheon','Hwang',24,'Male',7),(109,'Yira','Seo',23,'Female',7),(110,'Sungbin','Yun',22,'Male',7),(111,'Sangho','Lee',27,'Male',7),(112,'Seung-Hoon','Lee',27,'Male',7),(113,'Min Kyu','Cha',25,'Female',7),(114,'Sang-Hwa','Lee',22,'Female',7),(115,'Bo-Reum','Kim',24,'Male',7),(116,'Tae-Yun','Kim',26,'Male',7),(117,'Seok','Kim',24,'Male',7),(118,'Switzerland','Team',0,'N/A',8),(119,'Michelle','Gisin',30,'Female',8),(120,'Ramon','Zenhaeusern',29,'Male',8),(121,'Beat','Feuz',28,'Female',8),(122,'Wendy','Holdener',26,'Female',8),(123,'Dario','Cologna',24,'Male',8),(124,'Sarah','Hoefflin',25,'Female',8),(125,'Marc','Bischofberger',24,'Male',8),(126,'Mathilde','Gremaud',26,'Female',8),(127,'Fanny','Smith',25,'Male',8),(128,'Nevin','Galmarini',24,'Female',8),(129,'France','Team',0,'N/A',9),(130,'Alexis','Pinturault',28,'Female',9),(131,'Victor','Muffat-Jeandet',26,'Male',9),(132,'Martin','Fourcade',28,'Male',9),(133,'Anais','Bescond',24,'Male',9),(134,'Gabriella','Papadakis',26,'Female',9),(135,'Guillaume','Cizeron',25,'Female',9),(136,'Perrine','Laffont',24,'Male',9),(137,'Marie','Martinod',23,'Female',9),(138,'Pierre','Vaultier',22,'Male',9),(139,'Julia','Pereira de Sousa Mabileau',32,'Female',9),(140,'Austria','Team',0,'N/A',10),(141,'Marcel','Hirscher',30,'Male',10),(142,'Matthias','Mayer',29,'Male',10),(143,'Anna','Veith',27,'Female',10),(144,'Michael','Matt',28,'Male',10),(145,'Katharina','Gallhuber',26,'Female',10),(146,'Dominik','Landertinger',24,'Male',10),(147,'David','Gleirscher',26,'Male',10),(148,'Peter','Penz',25,'Male',10),(149,'Georg','Fischler',28,'Male',10),(150,'Lukas','Klapffer',27,'Male',10),(151,'Anna','Gasser',29,'Female',10),(152,'Japan','Team',0,'N/A',11),(153,'Yuzuru','Hanyu',25,'Female',11),(154,'Shoma','Uno',26,'Female',11),(155,'Daichi','Hara',24,'Male',11),(156,'Akito','Watabe',23,'Male',11),(157,'Sara','Takanashi',25,'Female',11),(158,'Ayumu','Hirano',23,'Female',11),(159,'Nao','Kodaira',25,'Female',11),(160,'Nana','Takagi',25,'Female',11),(161,'Miho','Takagi',21,'Male',11),(162,'Italy','Team',0,'N/A',12),(163,'Sofia','Goggia',30,'Female',12),(164,'Federica','Brignone',29,'Female',12),(165,'Dominik','Windisch',28,'Male',12),(166,'Federico','Pellegrino',27,'Male',12),(167,'Arianna','Fontana',26,'Female',12),(168,'Michela','Moiolu',24,'Female',12),(169,'Nicola','Tumolero',26,'Female',12),(170,'Olympic Atheletes From Russia','Team',0,'N/A',13),(171,'Alexander','Bolshunov',25,'Male',13),(172,'Denis','Spitsov',24,'Male',13),(173,'ANdrey','Larkov',25,'Male',13),(174,'Yulia','Belorukova',26,'Female',13),(175,'Alina','Zagitova',24,'Female',13),(176,'Evgenia','Medvedeva',26,'Female',13),(177,'Ilia','Burov',25,'Female',13),(178,'Sergey','Ridzik',24,'Male',13),(179,'Semen','Elistratov',23,'Male',13),(180,'Nikita','Tregubov',28,'Female',13),(181,'Natalia','Voronina',27,'Female',13),(182,'Czech Republic','Team',0,'N/A',14),(183,'Ester','Ledecka',27,'Female',14),(184,'Michael','Krcmar',26,'Male',14),(185,'Veronika','Vitkova',34,'Female',14),(186,'Eva','Samkova',30,'Female',14),(187,'Martina','Sablikova',30,'Female',14),(188,'Karolina','Erbanova',26,'Female',14),(189,'Belarus','Team',0,'N/A',15),(190,'Darya','Domracheva',27,'Female',15),(191,'Hanna','Huskova',24,'Female',15),(192,'People\'s Republic of China','Team',0,'N/A',16),(193,'Wnjing','Sui',26,'Male',16),(194,'Cong','Han',23,'Male',16),(195,'Zongyang','Jia',25,'Female',16),(196,'Xin','Zhang',24,'Female',16),(197,'Fanyu','Kong',25,'Female',16),(198,'Dajing','Wu',23,'Male',16),(199,'Jinyu','Li',22,'Male',16),(200,'Jiayu','Liu',22,'Female',16),(201,'Tingyu','Gao',27,'Male',16),(202,'Slovakia','Team',0,'N/A',17),(203,'Anastasiya','Kuzmina',28,'Female',17),(204,'Finland','Team',0,'N/A',18),(205,'Iivo','Niskanen',24,'Male',18),(206,'Krista','Parmakoski',26,'Female',18),(207,'Enni','Rukajarvi',23,'Female',18),(208,'Great Britain','Team',0,'N/A',19),(209,'Isabel','Atkin',25,'Female',19),(210,'Lizzy','Yarnold',30,'Female',19),(211,'Dominik','Parsons',26,'Male',19),(212,'Laura','Deas',22,'Female',19),(213,'Billy','Morgan',25,'Male',19),(214,'Poland','Team',0,'N/A',20),(215,'Kamil','Stoch',24,'Male',20),(216,'Hungary','Team',0,'N/A',21),(217,'Ukraine','Team',0,'N/A',22),(218,'Oleksandr','Abramenko',23,'Male',22),(219,'Australia','Team',0,'N/A',23),(220,'Matt','Graham',22,'Male',23),(221,'Jarryd','Hughes',28,'Male',23),(222,'Scotty','James',26,'Male',23),(223,'Slovenia','Team',0,'N/A',24),(224,'Jakov','Fak',25,'Male',24),(225,'Zan','Kosir',24,'Male',24),(226,'Belgium','Team',0,'N/A',25),(227,'Bart','Swings',29,'Male',25),(228,'Spain','Team',0,'N/A',26),(229,'Javier','Fernandez',24,'Male',26),(230,'Regino','Hernandez',26,'Male',26),(231,'New Zealand','Team',0,'N/A',27),(232,'Nico','Porteous',20,' Male',27),(233,'Zoi','Sadowski Synnot',30,'Female',27),(234,'Kazakhstan','Team',0,'N/A',28),(235,'Yulia','Galysheva',25,'Female',28),(236,'Latvia','Team',0,'N/A',29),(237,'Liechtenstein','Team',0,'N/A',30),(238,'Tina','Weirather',28,'Female',30);
/*!40000 ALTER TABLE `medalists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medals`
--

DROP TABLE IF EXISTS `medals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medals` (
  `medal_id` int(11) NOT NULL,
  `medal_type` varchar(45) NOT NULL,
  PRIMARY KEY (`medal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medals`
--

LOCK TABLES `medals` WRITE;
/*!40000 ALTER TABLE `medals` DISABLE KEYS */;
INSERT INTO `medals` VALUES (1,'gold'),(2,'silver'),(3,'bronze');
/*!40000 ALTER TABLE `medals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `new_records`
--

DROP TABLE IF EXISTS `new_records`;
/*!50001 DROP VIEW IF EXISTS `new_records`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `new_records` AS SELECT 
 1 AS `athlete_name`,
 1 AS `olympic_event`,
 1 AS `wr_description`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sports`
--

DROP TABLE IF EXISTS `sports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sports` (
  `sport_id` int(11) NOT NULL AUTO_INCREMENT,
  `discipline` varchar(45) NOT NULL,
  `equipment` varchar(45) NOT NULL,
  `description` varchar(500) NOT NULL,
  PRIMARY KEY (`sport_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sports`
--

LOCK TABLES `sports` WRITE;
/*!40000 ALTER TABLE `sports` DISABLE KEYS */;
INSERT INTO `sports` VALUES (1,'Alpine Skiing','Skis','Skier slides down snow-covered slopes on skis with fixed heel bindings. Comprised of two types of disciplines: speed events and technical events.'),(2,'Biathlon','Skis, Rifle','Combines cross-country skiing and rifle shooting. Athletes strap the guns on their backs, ski for a certain distance, and then stop to shoot at a designated target.'),(3,'Bobsleigh','Sled','The pilot uses the inner steering rope to drive the sled. And the brakeman puts on the brake to bring the sled to a halt after it has passed the finish line. '),(4,'Cross Country Skiing','Skis','Gliding across a snow-covered field on skis in the shortest possible time frame. Composed of three equal segments of uphill, level, and downhill fields. Athletes must employ classic or skate skiing techniques.'),(5,'Curling','Broom, Stone','Consisting of two or four athletes, and each team takes turn in throwing the curling stone. Athletes follow the movement of the stone and \'sweep\' the ice surface using \'broom\' to control the direction and speed of the stone. '),(6,'Figure Skating','Ice skates','Figure skating is an ice sport where athletes wear bladed skates and perform different specific acrobatic movements. '),(7,'Freestyle Skiing','Skis','Freestyle skiing is an artistic competition performing aerial acrobatics while freely gliding down a slope, and because of its diversified nature, an analogy is often drawn with a circus on the snow. '),(8,'Ice Hockey','Ice skates, Hockey stick','An Ice Hockey game is played between two teams consisting of 20 players and two goaltenders per team. The game is officiated by two referees and two linesmen.'),(9,'Luge','Sled','A luge is a small sled on which the athlete sleds down 1,000 to 1,500m while lying down face up and feet-first.'),(10,'Nordic Combined','Skis','Nordic Combined brings cross-country skiing and ski jumping together. '),(11,'Short Track Speed Skating','Ice skates','Short track speed skating is a skating competition that takes place on a 111.12m track in a 60x30m ice rink. '),(12,'Skeleton','Sled','Skeleton is one of the sliding types of speed sports events and the athlete speeds down a 1,200 - 1,500m ice track. '),(13,'Ski Jumping','Skis','Ski jumping is a form of Nordic skiing where the skiers glide down a ramp to jump and fly as far as they can go from the launching zone to make a stable landing in the landing section.'),(14,'Snowboarding','Snowboard','Snowboard is a sport that uses a board attached to rider\'s feet to speed down a slope.'),(15,'Speed Skating','Ice skates','Speed skating involves two athletes wearing skates that start simultaneously and compete speeding on a 400m ice track.');
/*!40000 ALTER TABLE `sports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `sports_venue`
--

DROP TABLE IF EXISTS `sports_venue`;
/*!50001 DROP VIEW IF EXISTS `sports_venue`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `sports_venue` AS SELECT 
 1 AS `event_name`,
 1 AS `events_discipline`,
 1 AS `venue`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `world_records`
--

DROP TABLE IF EXISTS `world_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `world_records` (
  `world_record_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`world_record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_records`
--

LOCK TABLES `world_records` WRITE;
/*!40000 ALTER TABLE `world_records` DISABLE KEYS */;
INSERT INTO `world_records` VALUES (1,'No Record set'),(2,'Time: 39.584'),(3,'Tme: 36.94'),(4,'Score: 206.07'),(5,'Time: 2:10.485'),(6,'Time: 42.870'),(7,'Time: 6:09.76'),(8,'Time: 12:39.77	'),(9,'Time: 1:13.56'),(10,'Time: 2:53.89'),(11,'Time: 4:03.471'),(12,'Time: 6:31.971'),(13,'Time: 2:10.485'),(14,'Score: 159.31'),(15,'Score: 123.35'),(16,'Score: 81.06');
/*!40000 ALTER TABLE `world_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `above_avg_age`
--

/*!50001 DROP VIEW IF EXISTS `above_avg_age`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`me`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `above_avg_age` AS select `medalists`.`age` AS `avg_age`,`countries`.`name` AS `country_name` from (`medalists` join `countries` on((`medalists`.`country_id` = `countries`.`country_id`))) where (`medalists`.`age` > (select avg(`medalists`.`age`) from `medalists`)) group by `medalists`.`country_id` order by `medalists`.`age` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `golden_athletes`
--

/*!50001 DROP VIEW IF EXISTS `golden_athletes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`me`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `golden_athletes` AS select concat(`medalists`.`first_name`,' ',`medalists`.`last_name`) AS `athlete_name`,`medals`.`medal_type` AS `medal_type` from ((`medalist_in_events` join `medalists` on((`medalist_in_events`.`medalist_id` = `medalists`.`medalist_id`))) join `medals` on((`medalist_in_events`.`medal_id` = `medals`.`medal_id`))) where (`medalist_in_events`.`medal_id` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `medal_count`
--

/*!50001 DROP VIEW IF EXISTS `medal_count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`me`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `medal_count` AS select `countries`.`name` AS `country_name`,count(`medalists`.`medalist_id`) AS `num_of_medals` from (`medalists` join `countries` on((`medalists`.`country_id` = `countries`.`country_id`))) group by `countries`.`name` order by count(`medalists`.`medalist_id`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `new_records`
--

/*!50001 DROP VIEW IF EXISTS `new_records`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`me`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `new_records` AS select concat(`medalists`.`first_name`,' ',`medalists`.`last_name`) AS `athlete_name`,`events`.`event_name` AS `olympic_event`,`world_records`.`description` AS `wr_description` from (((`medalist_in_events` join `medalists` on((`medalist_in_events`.`medalist_id` = `medalists`.`medalist_id`))) join `events` on((`medalist_in_events`.`event_id` = `events`.`event_id`))) join `world_records` on((`medalist_in_events`.`world_record_id` = `world_records`.`world_record_id`))) where (`medalist_in_events`.`world_record_id` <> 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sports_venue`
--

/*!50001 DROP VIEW IF EXISTS `sports_venue`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`me`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `sports_venue` AS select `events`.`event_name` AS `event_name`,`sports`.`discipline` AS `events_discipline`,`events`.`venue` AS `venue` from (`sports` join `events` on((`sports`.`sport_id` = `events`.`sport_id`))) where (`events`.`venue` = 'Alpensia Cross Country Centre') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-10  4:33:26
