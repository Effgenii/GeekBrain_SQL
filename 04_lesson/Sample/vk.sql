-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: vk
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `community`
--

DROP TABLE IF EXISTS `community`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `community` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_community_user1_idx` (`admin_id`),
  CONSTRAINT `fk_community_user1` FOREIGN KEY (`admin_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community`
--

LOCK TABLES `community` WRITE;
/*!40000 ALTER TABLE `community` DISABLE KEYS */;
INSERT INTO `community` VALUES (1,'id','Laudantium repellendus iusto saepe voluptate qui voluptatem omnis.',67),(2,'consequatur','Rerum incidunt officia dolorum et laborum.',9),(3,'odio','Nisi accusamus et accusantium nostrum sit dolor est.',82),(4,'explicabo','Quas pariatur eaque libero enim.',47),(5,'unde','Rem numquam voluptatem quis.',100),(6,'rerum','Dicta voluptas delectus est perferendis voluptatum placeat quam.',12),(7,'quasi','Est id mollitia esse eius tempore.',27),(8,'est','Et enim optio accusantium laboriosam hic adipisci accusantium.',90),(9,'sed','Molestiae reprehenderit illo error voluptas tenetur enim.',55),(10,'praesentium','Vitae inventore cupiditate aut quo sed.',55);
/*!40000 ALTER TABLE `community` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friend_request`
--

DROP TABLE IF EXISTS `friend_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `friend_request` (
  `from_user_id` int unsigned NOT NULL,
  `to_user_id` int unsigned NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '-1 - отказ; 0 - запрос; 1 - дружба',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`from_user_id`,`to_user_id`),
  KEY `fk_friend_request_user1_idx` (`from_user_id`),
  KEY `fk_friend_request_user2_idx` (`to_user_id`),
  CONSTRAINT `fk_friend_request_user1` FOREIGN KEY (`from_user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_friend_request_user2` FOREIGN KEY (`to_user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend_request`
--

LOCK TABLES `friend_request` WRITE;
/*!40000 ALTER TABLE `friend_request` DISABLE KEYS */;
INSERT INTO `friend_request` VALUES (1,3,-1,'1983-10-24 11:32:35','2021-01-01 06:15:38'),(2,1,-1,'1991-07-07 05:20:51','2021-03-17 22:12:54'),(2,78,0,'1999-01-29 14:37:03',NULL),(2,99,1,'1999-01-18 06:44:14','2021-03-17 22:12:54'),(5,16,0,'1991-05-15 07:47:52',NULL),(9,59,0,'1994-10-01 04:51:55',NULL),(9,89,-1,'2004-10-14 00:20:29','1971-06-17 14:56:35'),(10,28,1,'1981-04-22 04:30:03','2013-12-17 00:55:15'),(10,37,-1,'1981-03-03 12:37:59','1997-09-16 03:13:54'),(12,96,0,'2007-04-06 04:56:11',NULL),(15,28,1,'1975-08-03 06:38:42','2021-03-17 22:12:54'),(18,76,1,'1994-09-10 00:08:58','1997-11-30 17:38:02'),(19,20,-1,'2008-08-21 13:37:48','1989-12-01 16:43:00'),(19,72,1,'1970-11-24 17:10:55','1977-06-11 09:57:02'),(20,80,0,'1998-06-21 01:05:33',NULL),(21,32,0,'1999-06-06 01:38:05',NULL),(22,85,0,'1978-10-24 20:01:53',NULL),(24,69,1,'2001-11-08 21:19:23','2020-11-20 08:42:17'),(25,40,0,'1976-10-10 13:29:42',NULL),(26,34,1,'2013-05-27 03:48:25','1998-12-05 02:19:04'),(27,64,0,'2012-09-25 14:11:32',NULL),(28,69,1,'2011-11-06 15:32:03','1988-11-19 16:41:31'),(29,19,1,'2014-04-22 08:46:50','1982-01-25 22:35:19'),(31,14,1,'2000-12-30 15:12:16','1974-01-16 07:37:34'),(33,64,1,'2020-09-19 13:58:19','2021-03-17 22:12:54'),(34,54,-1,'2007-08-07 13:26:41','2021-03-17 22:12:54'),(35,65,0,'1980-09-01 17:21:24',NULL),(36,21,1,'2015-09-15 16:54:42','2020-05-24 03:06:05'),(36,33,-1,'1996-09-15 01:48:26','2021-03-17 22:12:54'),(36,77,1,'2009-01-14 18:04:10','2000-09-07 11:55:03'),(38,46,-1,'2016-04-29 21:27:51','2007-08-17 23:14:01'),(38,57,0,'2004-06-16 09:40:41',NULL),(41,8,0,'2018-01-16 07:26:58',NULL),(41,26,-1,'2019-12-22 19:59:38','2021-03-17 22:12:54'),(41,66,1,'1991-01-24 08:00:11','2021-03-17 22:12:54'),(41,92,1,'1970-01-11 08:05:43','2021-03-17 22:12:54'),(41,94,-1,'1999-12-09 07:06:43','2006-04-30 14:11:50'),(42,25,-1,'1996-01-27 09:19:05','2009-03-21 13:00:51'),(42,96,0,'2017-11-07 12:31:28',NULL),(43,39,-1,'1991-11-26 17:58:23','1984-09-07 16:27:40'),(43,58,-1,'2010-07-22 03:35:09','2009-05-21 23:11:36'),(43,84,1,'2007-03-01 13:56:26','1977-05-10 19:51:02'),(43,97,-1,'1993-01-08 05:32:14','2021-03-17 22:12:54'),(46,18,0,'1974-10-06 21:38:56',NULL),(46,27,0,'1995-02-17 03:44:09',NULL),(46,54,0,'1975-01-26 20:17:09',NULL),(47,71,1,'1979-10-05 02:05:24','1997-04-21 09:36:16'),(48,55,1,'2001-08-03 10:34:20','1984-03-28 03:48:46'),(50,80,1,'1986-08-30 07:10:52','2021-03-17 22:12:54'),(51,66,1,'1978-04-23 10:42:59','2021-03-17 22:12:54'),(52,59,1,'2002-12-22 15:32:33','2000-04-24 18:05:25'),(53,26,0,'2000-06-04 12:45:51',NULL),(55,42,1,'1977-11-04 19:31:21','1971-01-22 02:49:36'),(55,88,-1,'1993-05-24 21:16:48','2021-03-17 22:12:54'),(56,89,0,'2004-05-23 06:15:48',NULL),(57,11,-1,'1975-06-19 04:09:05','2009-01-07 17:56:35'),(57,58,1,'1984-11-03 17:41:27','1973-06-09 22:49:47'),(57,67,0,'1998-04-05 08:44:33',NULL),(59,88,0,'2017-11-14 13:26:12',NULL),(60,48,0,'2002-10-08 08:46:35',NULL),(61,5,1,'2017-06-16 07:10:07','2021-03-17 22:12:54'),(61,72,0,'1981-04-17 02:11:57',NULL),(62,9,1,'1978-04-24 06:54:20','2021-03-17 22:12:54'),(62,40,0,'2000-07-05 15:08:21',NULL),(63,78,-1,'2012-08-11 08:22:00','2021-03-17 22:12:54'),(63,99,-1,'1988-08-12 07:13:12','1984-11-01 16:51:38'),(64,45,1,'1981-01-06 18:53:44','1993-02-02 11:28:03'),(64,96,0,'1970-12-24 22:56:08',NULL),(66,9,1,'1978-02-11 11:02:32','2006-07-06 10:06:04'),(69,30,0,'2011-11-02 03:30:12',NULL),(70,66,1,'2006-08-23 22:08:20','2021-03-17 22:12:54'),(71,98,0,'1992-09-17 00:14:08',NULL),(73,59,1,'1990-09-11 12:28:58','2002-02-15 04:38:05'),(74,23,1,'2018-12-01 00:57:27','2010-01-18 16:23:13'),(74,78,1,'2011-05-15 11:34:01','2001-05-25 13:43:34'),(77,22,1,'2012-09-21 23:30:18','2021-03-17 22:12:54'),(78,23,0,'2006-08-05 17:58:53',NULL),(80,21,0,'1995-12-02 00:29:40',NULL),(81,90,-1,'1997-06-02 21:35:35','2021-03-17 22:12:54'),(82,16,0,'2017-01-09 12:17:07',NULL),(82,22,1,'2006-06-08 01:33:52','1997-12-21 16:58:58'),(82,27,-1,'1975-04-04 18:47:36','2010-05-20 22:27:13'),(83,99,1,'1992-08-28 16:52:44','2021-03-17 22:12:54'),(84,7,1,'1985-02-22 18:21:41','2021-03-17 22:12:54'),(84,11,-1,'2018-05-23 10:19:13','2021-03-17 22:12:54'),(84,23,1,'1979-07-27 20:37:38','2021-03-17 22:12:54'),(84,93,-1,'2007-03-18 22:55:22','1997-01-16 07:05:14'),(85,50,-1,'1981-09-03 20:58:09','2021-03-17 22:12:54'),(85,55,1,'1973-04-17 14:08:52','2010-10-18 08:17:16'),(88,19,1,'1982-04-19 09:03:16','1974-05-05 06:51:39'),(89,20,-1,'2005-11-11 04:02:33','2010-08-08 16:43:16'),(89,49,0,'1992-02-03 03:11:56',NULL),(90,85,0,'2015-11-01 20:33:07',NULL),(91,66,-1,'1985-01-29 11:46:06','2021-03-17 22:12:54'),(91,94,-1,'1992-12-02 06:15:16','2021-03-17 22:12:54'),(95,33,-1,'2012-12-03 14:47:16','2006-11-22 01:19:53'),(98,70,-1,'2019-12-18 18:58:28','2021-03-17 22:12:54'),(98,81,0,'1999-09-03 08:49:17',NULL),(99,9,1,'2011-03-29 13:12:28','1977-03-22 09:01:42'),(99,88,-1,'1975-09-09 20:47:40','2021-03-17 22:12:54');
/*!40000 ALTER TABLE `friend_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `media_id` int unsigned DEFAULT NULL,
  `post_id` int unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_UNIQUE` (`user_id`,`media_id`),
  UNIQUE KEY `post_UNIQUE` (`user_id`,`post_id`),
  KEY `fk_likes_user1_idx` (`user_id`),
  KEY `fk_likes_media1_idx` (`media_id`),
  KEY `fk_likes_post1_idx` (`post_id`),
  CONSTRAINT `fk_likes_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_likes_post1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  CONSTRAINT `fk_likes_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
INSERT INTO `likes` VALUES (1,99,88,NULL,'2007-08-13 16:02:07'),(2,64,60,NULL,'2019-08-31 17:09:37'),(3,23,100,NULL,'1995-01-19 04:53:47'),(4,75,20,NULL,'2009-02-11 18:47:24'),(5,49,65,NULL,'1984-10-07 23:36:42'),(6,32,25,NULL,'1978-05-12 05:44:55'),(7,90,2,NULL,'2016-01-05 11:18:34'),(8,25,64,NULL,'2015-04-05 06:34:29'),(9,50,86,NULL,'1988-02-13 13:38:12'),(10,28,73,NULL,'1986-03-13 17:02:39'),(11,57,72,NULL,'2007-01-26 17:10:22'),(12,74,35,NULL,'1995-03-07 13:55:24'),(13,57,57,NULL,'1988-07-26 11:24:00'),(14,71,32,NULL,'1972-07-18 23:06:12'),(15,34,80,NULL,'2014-01-29 23:17:49'),(16,70,11,NULL,'2021-03-11 01:48:20'),(17,52,1,NULL,'2002-01-29 17:49:01'),(18,22,25,NULL,'2004-07-07 06:58:56'),(19,51,75,NULL,'2014-01-07 07:25:33'),(20,90,3,NULL,'2006-02-01 20:48:25'),(21,13,59,NULL,'2017-08-18 19:30:15'),(22,23,33,NULL,'2020-02-25 15:35:11'),(23,93,89,NULL,'1993-01-10 09:17:47'),(24,62,60,NULL,'2015-04-18 23:12:23'),(25,51,94,NULL,'2015-06-16 16:32:22'),(26,5,63,NULL,'2018-11-22 18:00:45'),(27,83,14,NULL,'1984-11-29 06:16:33'),(28,62,36,NULL,'1978-12-14 15:33:26'),(30,34,76,NULL,'1972-11-02 17:37:01'),(31,35,89,NULL,'2011-08-10 18:03:05'),(32,7,11,NULL,'1991-08-03 23:27:31'),(33,13,3,NULL,'2020-12-25 10:00:25'),(34,76,65,NULL,'1993-08-19 03:51:56'),(35,70,15,NULL,'2015-02-20 11:35:26'),(36,43,19,NULL,'1997-01-27 21:16:18'),(37,28,2,NULL,'1993-11-14 19:22:17'),(38,13,63,NULL,'1997-07-13 10:05:55'),(39,23,67,NULL,'2001-05-16 06:55:17'),(40,7,1,NULL,'2003-12-29 00:48:05'),(41,94,35,NULL,'2008-04-12 04:23:05'),(42,39,42,NULL,'1994-04-01 09:18:10'),(43,16,54,NULL,'1976-08-17 01:03:04'),(44,82,30,NULL,'1971-10-06 05:50:31'),(45,7,99,NULL,'1981-03-22 19:28:22'),(46,26,42,NULL,'1979-02-27 15:02:32'),(47,6,69,NULL,'1997-05-31 04:44:57'),(48,1,82,NULL,'1991-11-26 09:20:23'),(49,32,4,NULL,'2016-08-09 14:40:41'),(50,49,11,NULL,'1989-04-23 15:03:58'),(51,42,NULL,58,'2019-06-05 16:25:56'),(52,23,NULL,99,'1976-08-03 01:12:25'),(53,14,NULL,53,'1984-03-19 22:58:08'),(54,9,NULL,82,'2010-08-18 04:13:20'),(55,67,NULL,80,'2001-10-21 07:00:36'),(56,40,NULL,22,'1993-01-21 13:09:08'),(57,33,NULL,91,'2006-11-21 10:05:10'),(58,26,NULL,72,'2019-10-18 22:05:06'),(59,82,NULL,76,'1993-07-04 14:54:56'),(60,4,NULL,87,'1988-05-29 07:19:11'),(61,27,NULL,91,'2011-02-09 10:46:54'),(62,84,NULL,33,'2002-12-25 19:25:58'),(63,83,NULL,91,'1976-06-27 06:50:12'),(64,35,NULL,30,'1989-06-16 01:59:18'),(65,16,NULL,75,'1999-08-15 23:54:44'),(66,96,NULL,46,'2010-02-07 02:52:59'),(67,17,NULL,23,'2000-03-09 07:31:30'),(68,7,NULL,100,'1996-05-17 05:11:29'),(69,79,NULL,9,'1974-12-19 12:19:08'),(70,54,NULL,65,'2016-04-19 00:37:06'),(71,40,NULL,63,'1997-05-12 03:49:56'),(72,31,NULL,83,'1990-10-25 17:00:32'),(73,63,NULL,17,'1999-07-26 07:31:35'),(74,53,NULL,59,'1996-07-25 18:34:48'),(75,82,NULL,68,'1970-04-05 10:38:50'),(76,57,NULL,16,'2019-10-19 17:27:53'),(77,3,NULL,97,'2000-08-16 05:22:30'),(78,25,NULL,3,'1996-08-16 21:46:51'),(79,25,NULL,90,'1999-04-04 03:54:51'),(80,33,NULL,82,'1974-05-17 09:08:32'),(81,98,NULL,100,'1986-10-24 05:17:49'),(82,60,NULL,1,'1986-12-06 04:00:42'),(83,43,NULL,85,'1996-12-05 13:46:57'),(84,59,NULL,3,'1991-04-30 16:43:07'),(85,18,NULL,36,'1971-05-03 01:15:22'),(86,85,NULL,64,'1994-09-01 14:24:21'),(87,1,NULL,9,'1998-04-05 03:54:32'),(88,97,NULL,61,'2018-07-26 18:59:30'),(89,99,NULL,91,'2019-12-04 13:45:42'),(90,89,NULL,75,'2007-10-23 02:57:01'),(91,70,NULL,98,'2015-07-20 19:09:23'),(92,69,NULL,52,'1991-01-17 10:26:51'),(93,70,NULL,68,'1997-08-15 00:29:32'),(94,54,NULL,37,'1982-08-12 02:16:57'),(95,57,NULL,88,'1995-12-18 00:37:06'),(96,92,NULL,95,'2000-03-29 09:20:35'),(97,56,NULL,5,'1977-05-30 14:59:12'),(98,65,NULL,39,'1992-08-31 07:06:15'),(99,25,NULL,98,'1971-04-11 06:20:17'),(100,16,NULL,89,'1973-07-26 05:53:20');
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `url` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` blob,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_media_media_type1_idx` (`media_type_id`),
  KEY `fk_media_user1_idx` (`user_id`),
  CONSTRAINT `fk_media_media_type1` FOREIGN KEY (`media_type_id`) REFERENCES `media_type` (`id`),
  CONSTRAINT `fk_media_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `media_chk_1` CHECK (json_valid(`metadata`))
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES (1,1,49,'application/x-futuresplash',NULL,NULL,'1995-12-29 03:54:16'),(2,2,93,'application/x-tcl',NULL,NULL,'2021-03-02 16:31:02'),(3,3,5,'application/yang',NULL,NULL,'1976-02-03 06:03:47'),(4,1,61,'application/vnd.trueapp',NULL,NULL,'1999-03-02 21:08:29'),(5,2,9,'application/vnd.ms-lrm',NULL,NULL,'2013-10-13 09:51:05'),(6,3,3,'text/n3',NULL,NULL,'1984-10-27 23:37:54'),(7,1,7,'application/vnd.adobe.xdp+xml',NULL,NULL,'2013-12-08 14:32:35'),(8,2,82,'image/vnd.fujixerox.edmics-mmr',NULL,NULL,'1975-05-01 23:40:16'),(9,3,86,'application/pkix-pkipath',NULL,NULL,'2001-08-29 03:36:40'),(10,1,90,'video/x-matroska',NULL,NULL,'2011-01-23 13:01:47'),(11,2,94,'model/vnd.gdl',NULL,NULL,'1992-10-01 04:35:09'),(12,3,90,'application/xml',NULL,NULL,'2018-02-24 21:14:58'),(13,1,24,'application/vnd.lotus-notes',NULL,NULL,'2003-01-13 04:30:13'),(14,2,1,'video/mpeg',NULL,NULL,'1998-10-01 12:31:11'),(15,3,9,'video/vnd.dvb.file',NULL,NULL,'2018-09-04 02:19:32'),(16,1,81,'application/vnd.vsf',NULL,NULL,'1987-08-18 22:36:26'),(17,2,5,'video/vnd.ms-playready.media.pyv',NULL,NULL,'1974-09-15 08:21:41'),(18,3,23,'application/vnd.oma.dd2+xml',NULL,NULL,'1974-01-10 23:24:09'),(19,1,82,'audio/basic',NULL,NULL,'1986-02-24 06:25:31'),(20,2,99,'application/vnd.oasis.opendocument.graphics',NULL,NULL,'1980-12-11 10:49:39'),(21,3,82,'application/vnd.sun.xml.calc.template',NULL,NULL,'2012-02-20 00:22:32'),(22,1,13,'application/vnd.lotus-freelance',NULL,NULL,'2002-05-27 23:06:01'),(23,2,58,'video/x-ms-wmx',NULL,NULL,'2012-02-09 02:35:28'),(24,3,71,'application/vnd.ahead.space',NULL,NULL,'2015-11-23 09:00:33'),(25,1,43,'application/vnd.flographit',NULL,NULL,'1974-04-16 06:41:56'),(26,2,67,'application/vnd.oasis.opendocument.database',NULL,NULL,'1977-01-10 08:07:07'),(27,3,43,'video/x-ms-wm',NULL,NULL,'1982-07-17 12:57:29'),(28,1,75,'application/vnd.llamagraphics.life-balance.desktop',NULL,NULL,'1974-04-21 17:20:10'),(29,2,15,'application/x-subrip',NULL,NULL,'1999-06-28 11:25:30'),(30,3,51,'application/vnd.shana.informed.formdata',NULL,NULL,'2012-11-02 13:55:35'),(31,1,26,'text/vnd.graphviz',NULL,NULL,'1976-06-16 21:05:19'),(32,2,64,'application/vnd.lotus-organizer',NULL,NULL,'1995-08-11 04:41:53'),(33,3,43,'video/x-ms-asf',NULL,NULL,'1982-07-11 17:42:29'),(34,1,31,'application/x-wais-source',NULL,NULL,'2017-03-19 12:28:09'),(35,2,25,'application/vnd.sun.xml.writer',NULL,NULL,'1985-10-08 22:56:57'),(36,3,51,'application/vnd.ms-project',NULL,NULL,'2000-08-07 15:56:22'),(37,1,34,'application/x-msmediaview',NULL,NULL,'1985-02-05 22:31:23'),(38,2,31,'application/x-gca-compressed',NULL,NULL,'2001-06-22 03:24:08'),(39,3,32,'application/octet-stream',NULL,NULL,'2012-11-09 10:57:40'),(40,1,19,'application/xaml+xml',NULL,NULL,'1984-01-09 19:42:38'),(41,2,21,'application/vnd.wap.wbxml',NULL,NULL,'2007-06-23 05:19:50'),(42,3,26,'application/vnd.ezpix-album',NULL,NULL,'1992-09-16 21:22:42'),(43,1,8,'text/x-asm',NULL,NULL,'1998-07-11 01:06:48'),(44,2,44,'application/vnd.vcx',NULL,NULL,'2014-08-27 07:28:43'),(45,3,27,'application/winhlp',NULL,NULL,'2002-11-11 13:06:23'),(46,1,17,'text/x-vcalendar',NULL,NULL,'2003-07-13 19:10:55'),(47,2,25,'application/x-msmetafile',NULL,NULL,'1988-11-11 03:53:58'),(48,3,32,'image/x-cmx',NULL,NULL,'1993-12-15 23:14:28'),(49,1,40,'application/vnd.stepmania.stepchart',NULL,NULL,'1979-09-18 13:47:34'),(50,2,6,'audio/x-wav',NULL,NULL,'1992-01-16 06:21:46'),(51,3,30,'application/widget',NULL,NULL,'2008-09-28 18:56:40'),(52,1,21,'application/vnd.sailingtracker.track',NULL,NULL,'2009-12-22 16:58:30'),(53,2,18,'application/x-glulx',NULL,NULL,'1975-06-09 22:06:11'),(54,3,87,'application/pkix-pkipath',NULL,NULL,'2020-08-29 03:02:08'),(55,1,91,'text/vnd.curl.scurl',NULL,NULL,'1978-11-10 14:11:30'),(56,2,60,'application/x-cfs-compressed',NULL,NULL,'2002-03-06 17:13:09'),(57,3,54,'application/vnd.wap.wbxml',NULL,NULL,'1980-08-06 17:33:37'),(58,1,33,'image/vnd.dvb.subtitle',NULL,NULL,'1999-04-24 05:05:20'),(59,2,35,'application/x-stuffit',NULL,NULL,'2019-05-02 20:38:38'),(60,3,68,'application/vnd.ms-powerpoint.slide.macroenabled.12',NULL,NULL,'2014-08-07 11:01:29'),(61,1,84,'application/x-xpinstall',NULL,NULL,'1972-11-17 10:11:08'),(62,2,61,'application/java-archive',NULL,NULL,'2010-06-11 06:37:19'),(63,3,32,'application/vnd.sun.xml.writer.global',NULL,NULL,'1989-07-22 08:15:10'),(64,1,26,'application/vnd.igloader',NULL,NULL,'2014-12-20 15:01:55'),(65,2,91,'video/vnd.dece.sd',NULL,NULL,'2004-04-04 16:38:06'),(66,3,56,'video/vnd.dece.hd',NULL,NULL,'2005-09-14 08:31:50'),(67,1,77,'video/h263',NULL,NULL,'1994-05-21 22:33:15'),(68,2,24,'text/calendar',NULL,NULL,'1985-10-01 19:40:13'),(69,3,87,'application/x-shockwave-flash',NULL,NULL,'1985-10-01 07:57:24'),(70,1,9,'application/vnd.wolfram.player',NULL,NULL,'2001-11-02 04:02:20'),(71,2,43,'application/vnd.llamagraphics.life-balance.desktop',NULL,NULL,'1996-04-27 03:23:19'),(72,3,7,'application/vnd.uoml+xml',NULL,NULL,'2005-10-24 05:56:01'),(73,1,34,'application/x-mobipocket-ebook',NULL,NULL,'2004-06-05 11:30:18'),(74,2,51,'text/vnd.in3d.spot',NULL,NULL,'2004-02-24 21:57:46'),(75,3,50,'video/vnd.dece.pd',NULL,NULL,'1991-07-21 04:22:59'),(76,1,61,'application/vnd.adobe.xfdf',NULL,NULL,'1995-05-08 20:06:11'),(77,2,68,'video/x-ms-wmx',NULL,NULL,'1989-11-06 15:12:37'),(78,3,74,'application/vnd.kenameaapp',NULL,NULL,'2009-07-05 03:55:57'),(79,1,92,'application/vnd.oasis.opendocument.text-template',NULL,NULL,'2010-11-17 16:16:04'),(80,2,7,'text/x-fortran',NULL,NULL,'1972-05-19 08:17:21'),(81,3,80,'video/x-ms-wmv',NULL,NULL,'1979-10-16 06:14:47'),(82,1,21,'application/vnd.oasis.opendocument.text',NULL,NULL,'1998-07-24 13:50:26'),(83,2,27,'application/javascript',NULL,NULL,'1995-11-14 23:57:54'),(84,3,97,'application/x-tads',NULL,NULL,'1995-11-11 10:58:34'),(85,1,8,'video/x-ms-asf',NULL,NULL,'1979-11-26 03:05:53'),(86,2,18,'application/vnd.lotus-freelance',NULL,NULL,'2015-01-19 08:23:01'),(87,3,57,'video/x-fli',NULL,NULL,'1973-09-26 21:34:50'),(88,1,61,'text/uri-list',NULL,NULL,'2012-06-04 04:17:49'),(89,2,51,'application/vnd.iccprofile',NULL,NULL,'2008-11-09 21:30:25'),(90,3,92,'application/zip',NULL,NULL,'1995-06-30 18:17:31'),(91,1,29,'image/x-icon',NULL,NULL,'2008-09-02 17:19:08'),(92,2,34,'application/vnd.sun.xml.writer',NULL,NULL,'2008-07-26 16:39:02'),(93,3,52,'video/x-flv',NULL,NULL,'1995-11-04 04:08:15'),(94,1,60,'application/reginfo+xml',NULL,NULL,'1976-05-14 15:09:46'),(95,2,60,'application/vnd.wt.stf',NULL,NULL,'1988-11-07 06:30:46'),(96,3,43,'application/x-ms-shortcut',NULL,NULL,'1983-05-15 18:20:39'),(97,1,15,'application/vnd.oasis.opendocument.graphics-template',NULL,NULL,'1989-06-21 21:45:12'),(98,2,36,'application/vnd.epson.salt',NULL,NULL,'1989-07-27 02:29:14'),(99,3,67,'application/widget',NULL,NULL,'1970-02-28 08:34:38'),(100,1,1,'application/vnd.oasis.opendocument.chart-template',NULL,NULL,'1981-12-29 10:49:39');
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_type`
--

DROP TABLE IF EXISTS `media_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `media_type` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_type`
--

LOCK TABLES `media_type` WRITE;
/*!40000 ALTER TABLE `media_type` DISABLE KEYS */;
INSERT INTO `media_type` VALUES (1,'video'),(2,'image'),(3,'audio');
/*!40000 ALTER TABLE `media_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` int unsigned NOT NULL,
  `to_user_id` int unsigned NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `media_id` int unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `read_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_message_user1_idx` (`from_user_id`),
  KEY `fk_message_user2_idx` (`to_user_id`),
  KEY `fk_message_media1_idx` (`media_id`),
  CONSTRAINT `fk_message_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_message_user1` FOREIGN KEY (`from_user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_message_user2` FOREIGN KEY (`to_user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,10,63,'Odit et soluta tenetur qui dolores est sequi.',NULL,'1974-06-09 17:22:23',NULL,NULL),(2,42,27,'Reprehenderit voluptas nisi ut illo eum harum.',NULL,'1984-09-05 06:01:06','2013-04-12 01:21:58',NULL),(3,66,2,'Est quisquam at perspiciatis.',NULL,'1986-04-25 06:37:22','1990-09-30 13:50:53',NULL),(4,45,18,'Veritatis incidunt officiis eaque sed earum expedita esse.',NULL,'2004-12-03 06:46:47',NULL,NULL),(5,46,80,'Dolorem dolorem pariatur molestiae fuga doloribus tempore.',NULL,'1975-08-27 10:55:05',NULL,NULL),(6,5,6,'Ipsa vitae reiciendis est sit alias.',NULL,'1995-04-16 12:07:47','1977-02-12 04:45:16',NULL),(7,33,30,'Aut et id necessitatibus dignissimos molestiae est ut dolore.',NULL,'1991-04-15 19:35:14','1995-07-22 01:59:02',NULL),(8,93,100,'Quas minima et dicta veniam quos veniam quo.',NULL,'2020-09-03 21:55:14','1999-01-16 17:28:02',NULL),(9,60,97,'In ipsum quasi aut dolorem vel suscipit fugiat.',NULL,'1987-01-09 13:23:16',NULL,NULL),(10,43,84,'Voluptatum quia quod nesciunt.',NULL,'2005-09-02 10:57:57',NULL,NULL),(11,50,81,'Quae quasi aspernatur commodi quae nulla odit iure.',NULL,'2001-06-26 23:58:52','1979-05-21 13:49:53',NULL),(12,92,22,'Quia reprehenderit rerum deleniti voluptatem distinctio hic.',NULL,'1994-02-22 15:16:44','2017-01-23 00:15:54',NULL),(13,31,92,'Excepturi corrupti hic doloremque culpa.',NULL,'1976-04-12 10:52:45','1990-10-29 16:57:04',NULL),(14,82,23,'Quo rerum repellat quia et ea.',NULL,'1986-08-22 14:36:21','2001-03-02 18:46:45',NULL),(15,9,48,'Sint et earum numquam beatae commodi.',NULL,'2008-11-17 16:33:14',NULL,NULL),(16,44,19,'Nihil ut ducimus facere et earum nemo voluptate quam.',NULL,'2004-10-27 02:24:49','1985-07-15 19:20:32',NULL),(17,11,86,'Exercitationem eos voluptas recusandae itaque ea.',NULL,'2001-09-27 15:21:56',NULL,NULL),(18,45,76,'Non assumenda harum hic cum qui.',NULL,'2003-01-18 19:26:48',NULL,NULL),(19,87,90,'Hic quia nulla est quae.',NULL,'2002-03-06 16:23:38','1994-04-27 12:15:56',NULL),(20,94,32,'Sunt eum maxime illo accusantium tempore voluptas sunt.',NULL,'1996-04-14 09:10:45','1991-12-10 12:25:38',NULL),(21,69,98,'Incidunt quo doloribus officiis aut.',NULL,'1988-04-12 00:08:19',NULL,NULL),(22,38,2,'Et voluptatem in sequi dignissimos est consequatur ipsa dolore.',NULL,'1981-05-10 23:06:46','1988-01-10 09:55:07',NULL),(23,28,30,'Atque neque dolores expedita quis nihil voluptatem eum.',NULL,'2019-05-21 05:46:55','1973-11-22 16:05:44',NULL),(24,1,87,'Dignissimos eveniet enim laboriosam inventore dolor.',NULL,'2005-07-05 10:57:24',NULL,NULL),(25,27,44,'Optio molestias et consequatur et.',NULL,'1977-06-29 17:11:47','1981-02-10 04:52:54',NULL),(26,71,76,'Ullam sit repellendus consectetur ex mollitia sapiente.',NULL,'1984-06-28 15:43:13','1986-05-18 02:29:20',NULL),(27,24,62,'Ut qui assumenda unde omnis.',NULL,'2000-10-15 13:04:54','2001-04-29 19:52:19',NULL),(28,98,54,'Soluta voluptatem animi officiis non et sit.',NULL,'2016-02-27 09:00:31','1971-07-14 14:10:43',NULL),(29,54,79,'In voluptas ex officiis neque magni.',NULL,'2001-07-12 08:47:04',NULL,NULL),(30,77,62,'Ipsam omnis dolores quia cum aliquam corrupti.',NULL,'1970-07-18 14:34:10','2018-08-06 00:49:56',NULL),(31,27,21,'Vero et labore distinctio vel consequatur architecto.',NULL,'1997-05-31 11:24:45','1999-08-26 08:10:30',NULL),(32,81,38,'Et beatae quidem asperiores aspernatur molestiae.',NULL,'1997-08-23 20:54:45','1990-10-17 18:53:13',NULL),(33,6,25,'Temporibus ea esse quia illo veniam.',NULL,'1988-01-25 01:44:29','1979-01-12 17:04:06',NULL),(34,13,92,'Adipisci maiores deserunt dolores provident.',NULL,'2003-12-01 18:19:36','1987-03-10 00:41:53',NULL),(35,14,7,'Tempore molestiae neque esse laboriosam eum omnis odit.',NULL,'1990-02-01 20:10:04',NULL,NULL),(36,24,83,'Dolor reprehenderit doloremque optio voluptatem totam vero ipsam.',NULL,'2006-06-26 03:01:19',NULL,NULL),(37,4,61,'Vel veniam dolorum dolores voluptas odio ut.',NULL,'1996-04-06 02:56:46','1975-08-28 04:00:08',NULL),(38,84,32,'Quo natus vel et in voluptatem et.',NULL,'1974-04-21 03:39:37',NULL,NULL),(39,91,85,'Sed quis voluptas sit eius nemo et.',NULL,'1976-03-11 13:47:24','2008-02-23 12:36:52',NULL),(40,19,17,'Dignissimos perspiciatis omnis porro voluptates.',NULL,'1971-08-31 15:42:04','1971-08-18 23:41:41',NULL),(41,28,89,'Molestias harum sit quibusdam suscipit.',NULL,'1983-01-03 04:14:26','1993-12-09 00:49:09',NULL),(42,93,52,'A est quis ut nesciunt laudantium atque.',NULL,'2013-01-03 03:32:03',NULL,NULL),(43,51,90,'Illum debitis distinctio ea blanditiis rerum ab ut.',NULL,'1999-01-14 21:12:23','1998-07-25 23:28:04',NULL),(44,6,4,'Animi amet est natus repellat enim.',NULL,'2005-02-02 08:06:01',NULL,NULL),(45,69,83,'Rerum reprehenderit impedit dolores in vero rerum quis.',NULL,'2009-03-24 20:15:51','2011-02-02 13:40:26',NULL),(46,66,96,'Ex impedit quaerat et nam sed.',NULL,'1989-02-15 03:32:20','2005-04-01 14:26:18',NULL),(47,3,47,'Laudantium possimus est occaecati.',NULL,'2009-11-13 21:02:20',NULL,NULL),(48,33,8,'Facere eos et quisquam laboriosam ut ea eveniet.',NULL,'1997-04-13 17:09:06',NULL,NULL),(49,71,46,'Facere quibusdam incidunt similique dicta quibusdam aut dolorem.',NULL,'1988-07-26 14:07:07','1996-01-29 04:01:19',NULL),(50,100,85,'Molestiae non quibusdam non perferendis atque omnis.',NULL,'1997-08-03 13:51:25','1994-07-15 19:59:06',NULL),(51,52,24,'Velit temporibus at aut est.',NULL,'1998-11-28 12:29:17','1987-08-08 14:28:25',NULL),(52,68,56,'Possimus sequi ad et omnis dolorum quos.',NULL,'1977-10-25 09:30:44','1999-10-12 03:39:48',NULL),(53,84,51,'Qui fugit corrupti eum dolorem et quaerat qui.',NULL,'2016-05-09 07:40:09','2016-07-02 00:24:39',NULL),(54,87,75,'Cumque voluptates eligendi eaque delectus tenetur quis temporibus.',NULL,'2015-03-02 20:02:52',NULL,NULL),(55,36,5,'Dolor qui error ut voluptatum assumenda ut.',NULL,'1980-08-27 04:59:10',NULL,NULL),(56,92,63,'Blanditiis nemo accusantium numquam totam itaque est.',NULL,'1989-06-27 14:07:42','1998-06-08 08:14:42',NULL),(57,94,84,'Necessitatibus ratione nobis quia ut consequuntur quidem.',NULL,'2010-11-28 06:03:58','2006-12-01 07:48:31',NULL),(58,15,44,'Repellat sit ea et aut eum est dolor.',NULL,'1974-07-31 23:08:43','2007-02-06 13:04:10',NULL),(59,73,20,'Delectus quae velit et velit excepturi.',NULL,'1979-05-13 15:59:16','1978-09-19 14:39:38',NULL),(60,48,41,'Corrupti deserunt qui nesciunt rerum facilis reiciendis.',NULL,'1983-10-02 09:56:18','1982-05-01 19:31:08',NULL),(61,2,14,'Velit eligendi ducimus rerum culpa esse tempora.',NULL,'1989-05-12 19:27:46','1996-05-26 06:36:55',NULL),(62,37,5,'Nesciunt et dicta eos praesentium perspiciatis.',NULL,'2004-12-08 06:11:00',NULL,NULL),(63,60,69,'A voluptatem consequatur id.',NULL,'2017-11-14 12:23:09',NULL,NULL),(64,12,31,'Veritatis ea est modi et.',NULL,'2000-12-08 16:10:06','1972-07-16 17:11:24',NULL),(65,14,12,'Quia temporibus reiciendis quia omnis exercitationem consequatur consequatur.',NULL,'1999-04-18 06:23:57','1999-08-16 17:49:03',NULL),(66,15,65,'Eveniet dolores non vel ratione.',NULL,'1992-03-31 20:04:51',NULL,NULL),(67,35,82,'Vel nostrum nostrum blanditiis aut quo necessitatibus.',NULL,'2019-11-02 20:44:09','2009-11-03 17:08:29',NULL),(68,21,19,'Veniam nihil tempore deserunt eos.',NULL,'2000-08-31 15:00:06',NULL,NULL),(69,33,7,'Illo sed voluptatem aut consequuntur minus expedita.',NULL,'1986-07-08 02:23:31',NULL,NULL),(70,93,68,'Ducimus occaecati magnam a voluptates qui.',NULL,'1992-08-12 11:45:16','2020-08-30 07:18:43',NULL),(71,12,84,'Assumenda quae vel ea nihil nihil.',NULL,'2002-06-19 18:33:37',NULL,NULL),(72,31,5,'Vitae molestias eum quidem quidem.',NULL,'1994-09-02 11:44:20','1998-04-17 14:22:46',NULL),(73,68,45,'Voluptates sit sint earum.',NULL,'1986-11-05 15:01:17','1975-02-26 15:55:28',NULL),(74,49,40,'Est excepturi dignissimos omnis ab.',NULL,'1996-12-18 20:12:34',NULL,NULL),(75,65,97,'Expedita aliquam voluptatem ea ipsa facilis.',NULL,'2018-11-07 07:29:23',NULL,NULL),(76,81,67,'Ipsa ex voluptatem quo libero.',NULL,'1992-09-12 00:08:40','1984-10-11 23:24:43',NULL),(77,10,17,'Qui saepe ratione eos minima accusantium dolore.',NULL,'1994-04-07 10:06:57',NULL,NULL),(78,71,70,'Repellat hic magnam molestiae quis similique.',NULL,'1984-05-22 00:44:04','1990-06-14 12:48:31',NULL),(79,86,83,'A ipsam nulla et dolores quas ea consequatur.',NULL,'2014-01-31 15:00:45','1972-03-24 23:48:49',NULL),(80,100,99,'Provident odio recusandae ullam enim laboriosam modi rem eligendi.',NULL,'2004-09-14 06:42:27','1994-04-29 17:59:23',NULL),(81,94,14,'Officiis at doloremque eligendi perferendis consequuntur eum.',NULL,'1980-05-23 18:31:59','1995-10-05 20:21:12',NULL),(82,64,29,'Earum quis inventore aliquam.',NULL,'2013-02-04 14:50:07','1972-04-22 23:56:42',NULL),(83,96,85,'Error veniam rem vitae atque.',NULL,'2002-09-08 11:29:05','2001-10-27 09:44:29',NULL),(84,47,29,'Porro et et fugiat id earum.',NULL,'1990-09-21 09:13:55','1975-05-09 16:29:54',NULL),(85,91,40,'Et hic omnis tenetur id.',NULL,'2008-01-26 09:52:54',NULL,NULL),(86,96,3,'Aspernatur hic sit facere modi fugit mollitia.',NULL,'1979-04-16 12:34:46','2003-01-03 10:01:27',NULL),(87,23,27,'Veniam soluta temporibus sint.',NULL,'1979-08-28 18:52:53',NULL,NULL),(88,8,91,'Et illo natus quia.',NULL,'1997-03-28 23:18:06',NULL,NULL),(89,72,57,'Sequi quis impedit consequatur eos asperiores et eum ad.',NULL,'2012-10-08 19:53:04','1987-04-15 06:25:39',NULL),(90,30,36,'Eos aut recusandae ut maiores.',NULL,'2020-01-17 18:43:42',NULL,NULL),(91,53,11,'Consequatur excepturi autem accusantium enim rem ex.',NULL,'1973-10-27 19:25:36',NULL,NULL),(92,3,63,'Repellat itaque enim aut.',NULL,'1980-08-25 06:24:56','2012-12-26 13:02:51',NULL),(93,28,73,'Doloremque consequatur porro iure.',NULL,'1993-03-03 09:32:38','2015-10-27 11:26:07',NULL),(94,32,13,'Aut vero aut natus quod dignissimos et et.',NULL,'1986-04-07 01:51:40','1972-09-20 00:02:37',NULL),(95,56,31,'Dolores iste sint vitae eum.',NULL,'1998-09-08 11:39:40',NULL,NULL),(96,12,49,'Tenetur et molestiae molestias omnis voluptate eum.',NULL,'2004-02-28 20:01:31','2017-07-27 10:33:31',NULL),(97,45,76,'Error corporis voluptatem natus aut non et possimus.',NULL,'1970-07-13 13:32:59',NULL,NULL),(98,78,41,'Et quia fugit quam natus quae.',NULL,'1974-05-21 01:45:02',NULL,NULL),(99,60,24,'Ab est in aspernatur magnam.',NULL,'1995-01-23 00:37:03','2007-02-04 20:38:14',NULL),(100,69,51,'In odit iure voluptatum sint laboriosam rerum neque.',NULL,'1989-10-25 08:29:43','1996-09-16 11:21:50',NULL);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `community_id` int unsigned DEFAULT NULL,
  `post_id` int unsigned DEFAULT NULL,
  `text` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_id` int unsigned DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_post_user1_idx` (`user_id`),
  KEY `fk_post_community1_idx` (`community_id`),
  KEY `fk_post_media1_idx` (`media_id`),
  KEY `fk_post_post1_idx` (`post_id`),
  CONSTRAINT `fk_post_community1` FOREIGN KEY (`community_id`) REFERENCES `community` (`id`),
  CONSTRAINT `fk_post_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_post_post1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  CONSTRAINT `fk_post_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,49,NULL,NULL,'Qui laborum numquam nam non aut ut vel provident.',NULL,'1990-11-21 01:02:36',NULL),(2,87,NULL,NULL,'Eveniet omnis sed sed facere sint tenetur.',NULL,'1970-10-09 03:15:17',NULL),(3,15,NULL,NULL,'Quae ipsa quisquam quia.',NULL,'1979-12-08 06:52:18',NULL),(4,54,NULL,NULL,'Amet sunt tenetur nulla sint vitae nihil.',NULL,'1975-07-18 07:01:54',NULL),(5,76,NULL,NULL,'Et voluptas animi cumque et ut dolores aperiam consequatur.',NULL,'2010-09-19 02:19:14',NULL),(6,51,NULL,NULL,'Fugiat aliquid quidem aperiam.',NULL,'1987-07-17 18:21:00',NULL),(7,1,NULL,NULL,'Iure eos sunt dolorem dignissimos.',NULL,'1981-11-26 16:32:41',NULL),(8,30,NULL,NULL,'Excepturi modi qui qui aut sit perferendis.',NULL,'1972-05-21 08:32:07',NULL),(9,71,NULL,NULL,'Cupiditate accusantium consequatur sed et quia quibusdam fuga.',NULL,'1988-06-24 22:37:52',NULL),(10,92,NULL,NULL,'Sapiente cupiditate soluta est sunt ullam praesentium molestiae.',NULL,'1983-11-28 21:29:55',NULL),(11,32,NULL,NULL,'Odit dolores libero rerum velit similique recusandae.',NULL,'1995-04-04 07:11:05',NULL),(12,2,NULL,NULL,'Saepe distinctio corrupti voluptatem qui perspiciatis.',NULL,'2019-09-28 10:03:58',NULL),(13,84,NULL,NULL,'Tenetur et optio sapiente laborum id quia nam provident.',NULL,'2019-08-22 01:21:05',NULL),(14,100,NULL,NULL,'Iste et nobis earum vel molestias iure sapiente.',NULL,'1977-10-28 00:01:42',NULL),(15,62,NULL,NULL,'Porro numquam eos voluptatibus sapiente vero nihil doloribus.',NULL,'2016-12-27 07:28:37',NULL),(16,100,NULL,NULL,'Est hic molestias alias ut quo.',NULL,'1974-08-11 11:32:27',NULL),(17,14,NULL,NULL,'Sit nemo quidem corporis deleniti.',NULL,'1990-01-07 10:13:39',NULL),(18,96,NULL,NULL,'Aut vel ipsa debitis architecto asperiores aut alias.',NULL,'2006-10-20 05:26:46',NULL),(19,92,NULL,NULL,'Qui necessitatibus quia totam expedita.',NULL,'1984-06-08 11:37:36',NULL),(20,19,NULL,NULL,'Hic veritatis accusantium ratione odio repellendus natus voluptatem consequatur.',NULL,'2006-08-07 21:37:53',NULL),(21,94,NULL,NULL,'Occaecati impedit voluptatum molestiae quia earum sequi minus.',NULL,'2011-07-30 19:21:27',NULL),(22,71,NULL,NULL,'Illum consequatur similique sunt sunt nostrum.',NULL,'2015-10-20 12:48:36',NULL),(23,59,NULL,NULL,'Doloremque est voluptas et nostrum pariatur.',NULL,'1988-04-05 03:09:28',NULL),(24,53,NULL,NULL,'Itaque debitis maxime commodi sapiente impedit dolorem consectetur.',NULL,'1993-03-20 11:44:47',NULL),(25,89,NULL,NULL,'Tempora fugit iste quae unde sint quis.',NULL,'2016-09-22 14:36:40',NULL),(26,58,NULL,NULL,'Quidem cum quas et aliquid fuga est.',NULL,'2018-03-07 22:13:11',NULL),(27,45,NULL,NULL,'Facilis magni non fugit tenetur quos eaque numquam voluptatem.',NULL,'1978-12-01 01:40:23',NULL),(28,73,NULL,NULL,'Voluptatem facere tempore molestiae est voluptatibus dolorum.',NULL,'1993-12-03 23:01:25',NULL),(29,43,NULL,NULL,'Qui non ut tenetur.',NULL,'1976-07-30 02:22:54',NULL),(30,26,NULL,NULL,'Ex unde omnis voluptas.',NULL,'2000-08-12 14:55:05',NULL),(31,18,NULL,NULL,'Est placeat adipisci enim ex consequatur.',NULL,'1975-05-25 01:48:26',NULL),(32,92,NULL,NULL,'Consectetur consectetur blanditiis vel placeat suscipit.',NULL,'2012-11-29 04:43:54',NULL),(33,13,NULL,NULL,'Aut excepturi accusamus similique qui voluptas aliquam.',NULL,'2002-02-13 00:45:25',NULL),(34,33,NULL,NULL,'Omnis omnis eum dolores pariatur aut in.',NULL,'1989-02-13 15:31:25',NULL),(35,46,NULL,NULL,'Repellat placeat dolorem voluptatibus.',NULL,'1994-08-06 19:14:45',NULL),(36,89,NULL,NULL,'Quia ut vel aut.',NULL,'1994-07-16 13:58:22',NULL),(37,83,NULL,NULL,'Aut aliquid quo beatae consequatur expedita nihil voluptatibus eos.',NULL,'2020-07-09 02:33:23',NULL),(38,46,NULL,NULL,'Omnis repellendus delectus assumenda ut sunt qui.',NULL,'1993-01-16 11:21:42',NULL),(39,18,NULL,NULL,'Velit debitis id ut omnis temporibus est at.',NULL,'1981-07-04 13:53:12',NULL),(40,54,NULL,NULL,'Ad numquam quia esse ullam libero.',NULL,'1977-02-23 15:19:59',NULL),(41,37,NULL,NULL,'Repudiandae dolorem quia est distinctio dolorum non quia.',NULL,'2021-02-12 23:20:53',NULL),(42,49,NULL,NULL,'Sunt fugiat blanditiis natus aspernatur voluptate consequatur ex.',NULL,'2005-08-08 14:46:34',NULL),(43,56,NULL,NULL,'Est provident aperiam est sed.',NULL,'1996-04-27 07:10:04',NULL),(44,21,NULL,NULL,'Assumenda ut aut omnis quidem eligendi.',NULL,'2002-01-29 06:52:05',NULL),(45,49,NULL,NULL,'Debitis officia voluptatem et.',NULL,'1977-10-20 01:16:46',NULL),(46,17,NULL,NULL,'Ullam vero corporis est id quae quis molestias.',NULL,'1978-06-20 04:44:08',NULL),(47,20,NULL,NULL,'Culpa dolores quaerat consequatur consequuntur non nostrum distinctio.',NULL,'2013-01-30 05:05:37',NULL),(48,62,NULL,NULL,'Omnis ipsam ducimus possimus molestias.',NULL,'2010-02-16 03:56:33',NULL),(49,13,NULL,NULL,'Ipsa id in ut corrupti et quasi at.',NULL,'1976-09-14 23:49:20',NULL),(50,12,NULL,NULL,'Non magnam in fugiat reprehenderit odit.',NULL,'2018-08-05 13:17:08',NULL),(51,81,NULL,NULL,'Veniam id natus nihil saepe minus earum.',NULL,'1979-01-13 13:05:07',NULL),(52,7,NULL,NULL,'Nulla velit amet laborum eum et doloremque.',NULL,'1977-10-12 05:59:31',NULL),(53,82,NULL,NULL,'Quaerat quos vel ab minima repudiandae accusamus.',NULL,'1972-12-30 10:55:14',NULL),(54,40,NULL,NULL,'Aspernatur debitis aut aut illum voluptas asperiores sint ducimus.',NULL,'2010-04-06 04:07:11',NULL),(55,60,NULL,NULL,'Qui eos ut quis dignissimos expedita.',NULL,'1980-03-16 13:14:25',NULL),(56,70,NULL,NULL,'Quo atque non voluptates.',NULL,'2020-10-01 01:36:22',NULL),(57,97,NULL,NULL,'Iusto tenetur tempora nisi.',NULL,'1971-06-17 13:25:30',NULL),(58,4,NULL,NULL,'Officiis aut quisquam a maxime et minima.',NULL,'2011-07-05 10:10:31',NULL),(59,43,NULL,NULL,'Fugiat doloremque provident et sunt.',NULL,'1991-08-17 21:50:25',NULL),(60,40,NULL,NULL,'Nobis quae ad sit laudantium doloribus.',NULL,'2009-07-18 10:33:53',NULL),(61,29,NULL,NULL,'Inventore unde voluptas ut quia maiores in.',NULL,'1981-05-22 18:43:24',NULL),(62,60,NULL,NULL,'Tempora nihil ducimus nihil dignissimos aut fugiat fuga.',NULL,'2004-02-15 01:44:05',NULL),(63,31,NULL,NULL,'Qui neque ut modi consectetur sed sequi.',NULL,'2010-08-16 11:59:24',NULL),(64,41,NULL,NULL,'Ut necessitatibus eum laborum tenetur possimus voluptas.',NULL,'1977-08-17 21:55:27',NULL),(65,93,NULL,NULL,'Inventore consequuntur perferendis est alias.',NULL,'2018-01-11 04:32:26',NULL),(66,76,NULL,NULL,'Et ut maiores optio aut ratione quia ipsum eum.',NULL,'1984-11-28 20:06:06',NULL),(67,29,NULL,NULL,'Nobis quisquam ut libero quae dolorem perferendis.',NULL,'2006-12-20 10:42:50',NULL),(68,75,NULL,NULL,'Commodi alias porro dolor eveniet ex.',NULL,'2005-03-14 06:19:08',NULL),(69,22,NULL,NULL,'Reiciendis dolore excepturi sed cum earum aliquid.',NULL,'1998-05-06 02:33:19',NULL),(70,47,NULL,NULL,'Voluptatem harum blanditiis ab officiis aliquam.',NULL,'1995-08-25 04:17:38',NULL),(71,28,NULL,NULL,'Pariatur illo provident dolore dolor.',NULL,'1972-04-24 07:23:35',NULL),(72,59,NULL,NULL,'Ex vel explicabo nihil porro placeat.',NULL,'2020-01-28 02:23:06',NULL),(73,95,NULL,NULL,'Maiores ut animi eaque porro sed temporibus.',NULL,'1974-07-08 13:33:10',NULL),(74,83,NULL,NULL,'Sapiente alias debitis ea aspernatur atque harum.',NULL,'1990-11-09 14:50:46',NULL),(75,79,NULL,NULL,'Sequi quod et qui distinctio voluptas laudantium provident.',NULL,'1983-09-30 12:11:44',NULL),(76,44,NULL,NULL,'Et quasi quae et voluptas autem.',NULL,'2001-05-25 08:09:08',NULL),(77,100,NULL,NULL,'Culpa est aspernatur expedita consequatur explicabo perferendis.',NULL,'1988-02-14 21:13:01',NULL),(78,99,NULL,NULL,'Velit pariatur accusantium voluptatem quia.',NULL,'1984-03-19 07:02:34',NULL),(79,5,NULL,NULL,'Magnam esse sapiente itaque iste est quia rerum.',NULL,'1995-02-28 12:22:23',NULL),(80,13,NULL,NULL,'Doloremque quod ratione sit voluptas voluptatem sed ipsum.',NULL,'2004-05-04 21:35:35',NULL),(81,10,NULL,NULL,'Illum et odio vero sed voluptatum et odio.',NULL,'2011-12-09 10:36:57',NULL),(82,86,NULL,NULL,'Ut libero quia voluptatem.',NULL,'1995-03-03 20:41:55',NULL),(83,20,NULL,NULL,'Harum omnis eos qui dolores nisi numquam enim.',NULL,'1986-08-19 01:12:41',NULL),(84,91,NULL,NULL,'Praesentium ex hic suscipit aliquam.',NULL,'2009-04-17 01:05:42',NULL),(85,25,NULL,NULL,'Sed voluptas cum autem sunt consequatur quibusdam dolor.',NULL,'1982-06-25 13:08:27',NULL),(86,79,NULL,NULL,'Est et qui hic aut.',NULL,'1995-09-02 22:19:44',NULL),(87,61,NULL,NULL,'Corrupti est libero explicabo debitis voluptas a odio.',NULL,'1996-01-16 20:20:14',NULL),(88,22,NULL,NULL,'Ut libero autem quos nobis dolor omnis temporibus.',NULL,'1999-01-26 09:20:10',NULL),(89,83,NULL,NULL,'Labore sed dolore voluptatum amet suscipit porro.',NULL,'1984-05-28 13:45:22',NULL),(90,3,NULL,NULL,'Voluptatibus nihil molestiae tempora velit nihil est quaerat.',NULL,'1982-12-28 11:58:05',NULL),(91,61,NULL,NULL,'Vel quas aut culpa aut.',NULL,'2008-08-03 17:06:17',NULL),(92,11,NULL,NULL,'Quisquam sapiente adipisci molestiae eos.',NULL,'1985-05-13 22:13:06',NULL),(93,63,NULL,NULL,'Exercitationem est dolore aut est nihil laborum dolore.',NULL,'2019-09-22 07:25:55',NULL),(94,92,NULL,NULL,'Dolor aspernatur voluptas nam voluptatem blanditiis et quia.',NULL,'1975-08-03 02:45:22',NULL),(95,52,NULL,NULL,'Ut quia harum qui sit velit nulla.',NULL,'1972-11-15 04:36:01',NULL),(96,55,NULL,NULL,'In et dicta laboriosam sunt id.',NULL,'1979-08-19 10:36:56',NULL),(97,68,NULL,NULL,'Aut et perferendis optio quis sint error libero.',NULL,'1986-01-22 15:25:08',NULL),(98,81,NULL,NULL,'Quo asperiores asperiores illum.',NULL,'1984-05-31 09:48:59',NULL),(99,30,NULL,NULL,'Reprehenderit sed et ipsam aliquam temporibus.',NULL,'1992-02-10 01:31:09',NULL),(100,89,NULL,NULL,'Veritatis in tempora delectus maiores.',NULL,'2017-07-29 07:27:35',NULL);
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile` (
  `user_id` int unsigned NOT NULL,
  `firstname` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('m','f','x') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `address` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_profile_media1_idx` (`photo_id`),
  CONSTRAINT `fk_profile_media1` FOREIGN KEY (`photo_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_profile_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES (1,'Lila','Botsford','m','2003-12-18','9433 Monahan Drive',NULL),(2,'Easter','Lind','m','2004-01-07','1613 Dovie Prairie',NULL),(3,'Flossie','Willms','f','1976-03-19','1950 Brian Court',NULL),(4,'Kenton','Wisoky','f','2009-12-06','68373 Eugenia Drive Apt. 447',NULL),(5,'Tess','Bayer','f','2017-03-17','4901 Legros Junction Suite 179',NULL),(6,'Carmella','Beier','m','2018-02-08','9689 Heller Brook',NULL),(7,'Juston','Deckow','m','2003-10-21','76615 Gaylord Common Apt. 702',NULL),(8,'Marianna','Friesen','m','1976-01-18','249 Bobbie Throughway',NULL),(9,'Althea','Mayert','m','1990-09-13','24844 Mae Drive',NULL),(10,'Brendon','Bauch','f','1979-01-16','035 Mckenna Ferry',NULL),(11,'Alessia','Rippin','f','1999-11-23','875 Adriana Shore',12),(12,'Hulda','Kling','f','1970-01-18','738 Elinore Point',49),(13,'Cade','Swaniawski','f','2000-10-07','213 Bergnaum Knoll',12),(14,'Myrl','Windler','f','2003-12-09','165 Ansel Pines',45),(15,'Joanny','Kshlerin','m','1972-03-09','5045 Hudson Mountains',57),(16,'Eleazar','Lesch','m','1992-11-22','595 Ladarius Drives',42),(17,'Donato','Heidenreich','f','2019-05-11','12754 Alessia Forges',29),(18,'Waino','Ortiz','f','2015-11-04','27633 Hodkiewicz Meadows',77),(19,'Merl','Heidenreich','f','1997-09-02','11877 Jast Points',31),(20,'Baylee','Marks','f','1979-10-31','246 Gibson Camp Suite 628',36),(21,'Brionna','Grimes','f','2010-03-24','70671 Zakary Stream',3),(22,'Evan','Muller','f','1991-02-13','0803 Kirlin Stravenue Apt. 803',59),(23,'Giles','Carroll','f','1999-09-30','4061 Greenholt Trail',69),(24,'Hyman','Leannon','f','1986-03-26','0685 Keyshawn Summit',67),(25,'Jeanie','Donnelly','m','2004-01-18','3875 Verona Locks',40),(26,'Winifred','Kutch','f','2013-12-05','78684 Tess Forges',94),(27,'Lionel','Stamm','f','1996-08-04','9018 Rocio Lodge',22),(28,'Keara','Bradtke','m','2008-10-18','6246 Braun Mountains',94),(29,'Pietro','Little','m','2004-03-21','101 Carmine Drive Suite 770',42),(30,'Carolyn','Emard','f','2019-08-11','018 Paucek Shore',99),(31,'Haskell','Collins','f','1971-01-01','15381 Blaze Stravenue Suite 154',92),(32,'Stephon','Wiegand','f','1971-07-22','52759 Collins Forest',62),(33,'Seamus','Funk','m','1988-03-08','634 Rodger Islands Suite 588',19),(34,'Isabelle','Kessler','f','1978-07-10','5155 Huels Walks Suite 382',46),(35,'Rosemarie','Breitenberg','f','2010-04-06','06512 Donnell Overpass',33),(36,'Keara','Wintheiser','m','2010-11-05','9273 Ayla Street',13),(37,'Sven','Spencer','m','2003-05-20','78310 Ratke Mills Suite 901',36),(38,'Pietro','Roberts','m','1987-08-09','3992 Nina Loop Suite 831',11),(39,'Alycia','Cremin','f','2007-02-14','10358 Koepp Branch Apt. 231',61),(40,'Carley','D\'Amore','m','1971-01-27','17959 Thurman Groves Apt. 133',62),(41,'Taryn','McGlynn','f','1982-05-03','9047 Reinger Canyon Suite 065',35),(42,'Liliana','Brown','f','1995-01-20','2329 Reinger Via',73),(43,'Jaylon','Bartoletti','f','1996-06-02','9050 Carolyne Plains Suite 366',11),(44,'Chanelle','Koch','f','1977-10-19','64556 Virgil Points',46),(45,'Deborah','Schamberger','m','1978-09-11','337 Mauricio Gardens',17),(46,'Frances','Yost','f','2005-11-18','040 Camron Expressway Apt. 074',67),(47,'Terence','Braun','f','1978-01-30','460 Carolanne Knolls Apt. 074',87),(48,'Rodrick','Prohaska','m','1975-05-10','637 Ryan Roads Suite 676',45),(49,'Ed','Koelpin','m','1986-08-27','08247 Evans Estate',43),(50,'Erica','Murray','f','1987-02-04','30367 Roberts Fields',17),(51,'Felicity','Johns','m','2008-03-24','285 Kemmer Wells',80),(52,'Vicky','Wiza','m','1988-08-29','8713 Jeffrey Estate Apt. 407',45),(53,'Clement','Monahan','f','1977-02-17','473 Kaelyn Road',76),(54,'Meagan','Anderson','f','1992-11-20','563 Constance Square Suite 722',49),(55,'Vincent','Treutel','f','1990-05-24','49924 Jakob Route',12),(56,'Jimmy','Mertz','f','2016-03-05','07952 Oberbrunner Branch Apt. 177',16),(57,'Ben','Nikolaus','m','2011-02-09','41709 Turcotte Drive',42),(58,'Jalen','Dickens','f','1990-08-14','8697 Legros Avenue Suite 664',33),(59,'Leif','Wyman','m','1974-11-03','172 Konopelski Crest Apt. 811',10),(60,'Juston','Schaden','f','1993-12-14','82328 Schmeler Locks Suite 016',84),(61,'Nolan','Schultz','m','2010-12-10','83080 Runte Landing',31),(62,'Margie','Bashirian','m','1992-10-28','2849 Ward Curve',1),(63,'Hilda','Lueilwitz','f','1987-10-01','1693 Schamberger Parkways Suite 882',46),(64,'Lydia','McDermott','f','2008-10-23','076 Ferry Terrace',49),(65,'Katelin','Grant','f','2008-01-07','082 Candice Gateway',47),(66,'Kaycee','Stracke','m','1972-06-04','049 Dickens Roads',78),(67,'Hulda','Rogahn','m','2004-12-29','559 Ledner River',61),(68,'Celia','Nikolaus','f','1984-04-23','25161 Rohan Unions Suite 349',82),(69,'Rickie','Lowe','f','2004-08-03','97321 Cicero Ports',89),(70,'Kaela','Huels','m','1979-10-19','353 Deshaun Run Suite 677',22),(71,'Selina','Torp','m','2018-05-21','117 Avis Light Suite 706',44),(72,'Lillie','Torp','f','1973-03-17','134 Maegan Rue',23),(73,'Antonio','Schmidt','f','2015-10-04','5675 Beahan Place Apt. 978',94),(74,'Prince','Bergstrom','f','2014-08-11','514 Bernice Branch Suite 822',54),(75,'Richie','Witting','m','2016-04-11','539 Florencio Locks Apt. 114',69),(76,'Floyd','Howe','m','1994-01-05','3837 Jones Mission Suite 318',10),(77,'Vivian','Kihn','m','1991-07-06','1037 Abagail Corners',21),(78,'Cleo','Funk','f','1975-05-30','62163 Gust Underpass Suite 161',56),(79,'Lindsey','Nolan','f','1975-06-15','5061 Dickinson Orchard Apt. 393',54),(80,'Andreane','Leuschke','m','1989-04-24','2480 Rohan Track Apt. 660',63),(81,'Dominic','Ruecker','m','1992-09-11','82489 Twila Village Suite 693',73),(82,'Kyra','Keebler','m','2002-12-20','249 Max Cliff',34),(83,'Zora','Schumm','f','1986-05-20','80871 Zieme Junctions',8),(84,'Kyla','Rodriguez','f','1981-01-20','13401 Ima Flat Apt. 290',48),(85,'Alexis','Wolf','m','1972-09-15','3779 Walsh Vista',83),(86,'Ryleigh','Jaskolski','m','1991-05-17','9737 Ariel Park',19),(87,'Lulu','Becker','f','2000-03-30','3663 Elwyn Loop Suite 542',63),(88,'Destini','Bode','m','1978-07-06','80823 Wolff Hollow',25),(89,'Angus','O\'Connell','m','1994-01-29','654 Rosalyn Lake',52),(90,'Aaliyah','Veum','m','2010-08-05','37556 Mann Knolls Suite 448',73),(91,'Dion','McLaughlin','f','1986-06-29','61040 Josh Underpass',8),(92,'Gilda','Bahringer','m','1979-04-11','473 Hannah Isle',82),(93,'Levi','Thompson','m','1979-01-28','69858 Dach Lakes Apt. 743',73),(94,'Rex','Hoeger','f','1978-06-04','85035 Agustin Keys',54),(95,'Isabell','Rodriguez','m','1981-09-05','2917 Elissa Ports Apt. 541',31),(96,'Corbin','Leannon','m','1985-07-08','914 McCullough Pine Apt. 558',20),(97,'Jaqueline','Schmeler','f','1979-03-11','8442 Torphy Oval Apt. 542',32),(98,'Adriel','Keebler','m','1994-09-25','482 Hintz Courts Suite 258',92),(99,'Cordia','Terry','f','2000-03-16','302 Mosciski Loaf',1),(100,'Jordane','Reichert','f','2010-04-19','244 Ondricka Islands',20);
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(245) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint unsigned NOT NULL,
  `password_hash` char(65) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'justine34@example.net',79284000882,'18ee2826a567b51961ecad964e8e3755224cc1af','2001-05-04 16:13:06',NULL),(2,'o\'keefe.rene@example.net',79987638281,'c764e75036382e94dab6eeb8435ece8c4db9c44c','1978-03-29 10:08:49',NULL),(3,'alana06@example.com',79498928140,'314cf4e915e7916c7221b90abb59fb39aed38305','1971-10-29 06:32:11',NULL),(4,'nicholas.kling@example.org',79557383419,'6929a2fea916edb1ae7c8a3a895a247b19128460','1987-09-02 15:03:42',NULL),(5,'earlene69@example.net',79450379729,'4498a5bfdc9c70d47e32966577629eb28165ae07','2007-05-13 04:10:56',NULL),(6,'dare.deangelo@example.org',79397482601,'01e4612ccb37a5b66447858ae68827e44dc721d6','2003-02-05 10:47:20',NULL),(7,'yundt.kelli@example.com',79985970315,'c224761df23f03126e673757f6605c30a54b1b85','1973-08-28 04:16:18',NULL),(8,'bette.gutmann@example.org',79143630102,'26643294cc2d20b1c3a46c6a678039c4b6bbcab3','2007-05-05 23:33:23',NULL),(9,'laron.herzog@example.net',79996160047,'b00ee097c0c80952f342413cfd4e18b713596ff0','2004-09-18 21:39:52',NULL),(10,'maci98@example.net',79860415536,'3f755060866690fb289af624bb579f76c6ce6426','1980-01-30 12:07:37',NULL),(11,'asia00@example.com',79787119119,'a429db7cde3f35ce0cefcc54dd9e78b01b27724e','1998-09-23 12:35:51',NULL),(12,'lia08@example.org',79487526503,'f6edbf544ecf206449b1df1fc9fbf916d3380890','1989-09-05 19:23:11',NULL),(13,'pwaelchi@example.com',79697390816,'cef7f55e0c8e9285e25f779c0af499da25318338','1988-12-20 02:46:49',NULL),(14,'heathcote.princess@example.org',79139219096,'756fd5f8e9181e197ebf7d4f165b5efab91713c9','2009-12-04 09:11:17',NULL),(15,'bconn@example.com',79482108894,'028af1415e1d10891715de7ed19cfb1e4d8a94bc','1970-06-08 11:20:54',NULL),(16,'schuster.conner@example.org',79970813003,'02106b977fb3bbd70a7919031ddaaed7f2578f81','1993-02-08 01:18:57',NULL),(17,'dannie.bailey@example.net',79272932226,'cef9e95319e2793ad51823934d42222cdb463812','1976-10-16 03:48:23',NULL),(18,'omedhurst@example.net',79661283269,'8c12fd03991f9e5ec099523f5a031b6175a9225f','1999-10-11 20:33:14',NULL),(19,'tanya76@example.org',79068980406,'ea3768142535e17ce884864e438f21170b310dd6','1974-12-04 15:41:49',NULL),(20,'zgerlach@example.org',79669755698,'0e24d46db1aeb5a81d6539ebceb2f30916985724','1998-03-09 07:54:00',NULL),(21,'guadalupe98@example.com',79040935484,'2f1ebbeee091412a6b7bd03d8ab22b34b5718d9f','1975-11-08 16:30:33',NULL),(22,'vgulgowski@example.org',79836000540,'3105a40d24d1799d86544fafc951b1b830d93ce2','1979-08-18 07:26:15',NULL),(23,'jonatan11@example.net',79946050838,'62b69c219cccdd48b9b085413533adabc159834d','1976-03-07 18:25:29',NULL),(24,'alverta.mosciski@example.com',79356292630,'fdcd6b4a7ce34d4a98247a8f7cd855a3245e7e78','1985-02-13 11:46:19',NULL),(25,'jacey.glover@example.com',79877387008,'29bcad74323761d7ac734e177b55d5d3dc38b2b3','1975-04-22 18:51:18',NULL),(26,'klebsack@example.org',79995536533,'988b4f30a2e8b4e51734dfa78264c8fd3f035054','1977-06-08 02:02:53',NULL),(27,'luettgen.nelson@example.com',79374364738,'ac06150bd6c41273d37a654a5bd55575d31d7314','2004-05-11 14:02:02',NULL),(28,'brain.parker@example.com',79912345549,'0c5ce6145f3c0af0c4b63a2ee82d2d8d10ae871d','1997-06-21 15:38:26',NULL),(29,'amelie.baumbach@example.com',79884433539,'ab07caca4d7fff647933aeaa707835182642fef8','2007-11-30 12:09:24',NULL),(30,'mosciski.devante@example.net',79550019852,'e09c51145388f3308d1aedc6b06c2ff7a7709b22','1987-01-06 06:41:41',NULL),(31,'kbuckridge@example.com',79649648042,'9439187905400907aef8b150e2c2d9671825079b','1977-05-23 13:39:35',NULL),(32,'kirsten75@example.net',79788770731,'6d8e14ef5d3b95357cb232c459f77dba7497fac3','2007-06-20 02:12:48',NULL),(33,'daphney64@example.net',79725905721,'7aaf0dcac611d6a896d0f9eea6446bc7f343fce7','1974-10-31 02:17:03',NULL),(34,'oberbrunner.dejuan@example.net',79516984634,'997d273a00faab0dfbbdafdafad436d944cd7874','2002-12-24 11:43:26',NULL),(35,'leffler.seamus@example.org',79603672893,'37de4b8c54a6c9e50ed11d9f30c38cd16e4a6be6','1987-11-23 20:21:01',NULL),(36,'rblick@example.org',79530147511,'77eb66eca6513cbfe32fbec65557d2dedadba752','2007-04-13 22:06:04',NULL),(37,'giovanna.feil@example.com',79415039066,'11d29e4fafd79c8d2aaa0be1f3b3bdde2d3add92','1977-07-02 08:05:20',NULL),(38,'thiel.bianka@example.org',79166164833,'11ea2fddc78117bf147ed9be17e749147fc56e52','2015-03-14 04:36:40',NULL),(39,'kchristiansen@example.org',79002516803,'137b14e4ab3c8b641a7aa42fd64cacb4dd17f287','2004-11-21 03:15:32',NULL),(40,'purdy.brant@example.com',79281946619,'24c2d9661d529641e3f77305e265f2e639607a00','2020-03-25 20:28:39',NULL),(41,'geo76@example.org',79195824836,'8c59cc83db53823aa241ee14cc68006f3e002976','1977-07-20 22:17:02',NULL),(42,'raymond.rogahn@example.org',79543581885,'e0534a3aa266fb7031b5e2ad5e0a80fd83124c79','2018-02-02 14:33:19',NULL),(43,'pietro.rosenbaum@example.com',79054122163,'8bffd284a7f016230ce48709541b3e8dae2d446b','1979-06-02 14:16:06',NULL),(44,'gideon30@example.com',79101880064,'294defd8dcc2498f767e5f5a0687f2aec1d45b48','1990-04-28 10:46:22',NULL),(45,'casey03@example.com',79140209764,'96ec52cbc38f3c39a165921b78b7f595b5ca02e1','2015-12-22 22:19:40',NULL),(46,'mitchell.jared@example.org',79048703428,'5668680a03612f56d489b847c26fec2174bf97c9','1988-03-06 04:44:05',NULL),(47,'trinity.collier@example.com',79249560931,'76a726bdee228ac5018d64cba45d60b57e5b7937','1997-07-29 07:38:19',NULL),(48,'martin14@example.net',79428267252,'c69749a85cb4543aa192cd5a01fc255174e0ceea','2003-04-15 00:42:28',NULL),(49,'wiza.javonte@example.com',79415599336,'3b188c4f5f6f3fa38e4551d1adc5a07b5918a331','2015-07-04 09:28:09',NULL),(50,'bonnie.tromp@example.org',79312703381,'d9f5613379bf4d2359af30a14ec2200cece6c30d','1995-01-26 18:29:52',NULL),(51,'mireya.beier@example.net',79401104083,'697efb354c2c2456938455c67632c85bad200e02','1974-06-11 21:08:57',NULL),(52,'pdicki@example.net',79221806184,'d0a586f1d381dd02eac2e3d389bf540c990b3efd','2011-05-01 07:31:48',NULL),(53,'stokes.aubrey@example.net',79755228825,'a0823a7594431b29bf3413694b70d4f4f87cd568','1987-01-14 14:33:40',NULL),(54,'jebert@example.com',79293175797,'158c78aa21bf622118a546f3463b63613a698af0','2001-04-16 14:03:22',NULL),(55,'byost@example.com',79147682809,'aa543a51e4ab9cd48c7b36fa4d5d8a2d6dda8acd','2012-02-11 12:02:57',NULL),(56,'ronaldo.halvorson@example.com',79265769643,'af839e30c6825ac09f0680863b0425259e310af9','2020-08-28 05:27:42',NULL),(57,'mittie26@example.org',79686554295,'484713bd64efe841a8a4138a91699f165fa9cf46','1981-05-03 20:28:35',NULL),(58,'letitia.moore@example.net',79446062566,'51c5f2599255c08995f7e5c445c95cbfbc0aa226','2010-09-19 14:40:01',NULL),(59,'josephine33@example.net',79913716284,'3f1d7eeda18ab1e2d3554f69f81e4db975cd81cb','1984-02-17 02:44:40',NULL),(60,'ward.roberts@example.org',79684651748,'b145247f0406be6002d75392d0b029ca929671da','2008-10-18 22:47:16',NULL),(61,'alysha84@example.net',79231261418,'6758fee7a70a0795b2c80db3dd3ea73f8d0c100e','2011-09-08 12:45:07',NULL),(62,'schaefer.ashly@example.org',79112065214,'47f33c00b0287c9c1fe2f13c318a01b53b8aa644','1987-08-20 03:17:28',NULL),(63,'tvon@example.net',79619595623,'2b8f01f568524751d24a49959c216f2a2c8292b8','2005-01-24 01:51:34',NULL),(64,'jennyfer51@example.com',79483657769,'9d8db1ccf6791f8cb38ae723d00f2047699d3080','1984-10-14 05:58:10',NULL),(65,'xstoltenberg@example.com',79108528071,'a02eeb28fbec288b25b542a2031e41b493571990','2007-11-17 02:40:29',NULL),(66,'grimes.hollis@example.com',79939576974,'da22275c3f7aa04298bec056fe458368e2941556','1970-02-22 20:28:34',NULL),(67,'johnston.donavon@example.com',79360889908,'2073331193ebee204f6a7f34aa2bca1ede4fb837','1995-01-08 02:27:20',NULL),(68,'ljerde@example.com',79457017393,'fad57918a12bdc6530f278b31a5b0ecfa5713162','2001-11-15 16:35:54',NULL),(69,'keaton.renner@example.net',79418293151,'0083be8abd1d87bce63dbe7e756d9d93f2d9661f','1983-12-03 19:57:53',NULL),(70,'hintz.abdullah@example.org',79518601033,'617202201acdcf72ada0bab80cc50d077effd426','1994-08-24 08:29:01',NULL),(71,'xconn@example.org',79597826486,'10bc6e6cebb3071a383568171bc3f9976cb6b366','1992-05-21 21:00:16',NULL),(72,'fay.huels@example.com',79386940237,'3bb6c6e62400b84e902a27550e95e64cd00329d6','1998-01-29 23:52:19',NULL),(73,'eharris@example.com',79090663554,'0c26b82687e55528e8c011d5928cec0c9918a905','1984-08-24 23:53:25',NULL),(74,'xhintz@example.com',79024944420,'dcb9868f2b30aafe29e7d11ec84e68d0f191e6c2','2016-01-02 15:27:22',NULL),(75,'yazmin.von@example.com',79611049087,'498a67f76f5d3bbd3c83e76871b7aca4c5034379','2019-10-09 04:09:31',NULL),(76,'ruthie10@example.com',79260365212,'450f901aa715d4ada7b165aeaa9deac92603278c','1991-03-02 12:28:04',NULL),(77,'fadel.aiyana@example.com',79148814483,'e4906d4bd3a2e4ab00af4465f73233fd75d1a727','2011-12-10 07:36:38',NULL),(78,'mayer.darron@example.com',79026450458,'205e6f976cd1884dc585d7e31793a7389c2fb7e9','1975-05-24 05:50:16',NULL),(79,'wyman.beryl@example.org',79667404058,'751af36de119dcc758670737b2b2a10ccb445518','1991-02-15 02:54:17',NULL),(80,'pfannerstill.obie@example.org',79753588037,'9ec7819bea86205f2606f8119e345c89aa94ed4c','1978-06-08 08:03:51',NULL),(81,'wehner.florence@example.com',79256860090,'8dbdcd936f5f58d3c9d2741720d18902a0f89c91','2016-07-09 04:04:57',NULL),(82,'mikayla66@example.org',79343225274,'0ec5327deb9ce476032b59ef483bc8e483b2ebfd','2001-12-10 19:05:00',NULL),(83,'reagan.moore@example.com',79595174180,'871b713ec419e880010b987361e727b76a3371e2','1997-08-31 02:02:23',NULL),(84,'huel.delia@example.com',79427763995,'27d8214791d9bde25f0f4e71fc343cd84831de3d','2007-06-04 15:30:09',NULL),(85,'roger44@example.com',79365355942,'b803a59c4469c445c5f4a394ef7b3cdd8c9c70bf','1980-01-09 00:26:01',NULL),(86,'cschiller@example.com',79758651925,'97961263f8276a376dd5d29520ffe6b36c4916b3','2017-12-27 14:09:50',NULL),(87,'bcarter@example.org',79981655975,'db6eed1ec1a1481517b7c5e590c6c83dba7b7004','1979-08-18 08:57:34',NULL),(88,'iva56@example.org',79160507438,'272621db49706512f7ce0864dc1b5f4af7cc108b','2003-07-15 16:25:34',NULL),(89,'gabriel.graham@example.org',79711066594,'cca9dee9031551bc238a0f641fe18e1ec816410a','1976-06-15 23:26:49',NULL),(90,'ora37@example.org',79469279491,'c5640e2c603d81552f776933c26e610c2c679859','2005-02-11 07:12:28',NULL),(91,'ihyatt@example.org',79481503858,'d78363123f2d3dd6a47141b77a073e1d3b64e10e','2011-09-13 01:06:34',NULL),(92,'jewel.stroman@example.com',79660735942,'909d282b5e3539d5814a25272ece52a3434146f0','2011-10-31 20:56:02',NULL),(93,'rachelle.rempel@example.net',79503800678,'f1f223b38869b05f715dc81cf5ef947a0514ffcc','1979-06-07 21:18:24',NULL),(94,'jaren.bradtke@example.com',79449263918,'0c9487fcfb19d4aa8f678afb72d71375e866f4bb','1970-06-25 16:19:46',NULL),(95,'vkiehn@example.net',79040391601,'cd1612e72e7a1eed0f4a9505c0ec9cb688ad6305','2016-03-18 20:44:55',NULL),(96,'mrempel@example.net',79353798265,'15d4b8f354d7fffe295a9135ed3c94943551478c','1981-03-31 07:59:09',NULL),(97,'qjerde@example.net',79637706923,'f1c67290df94ee673854bb5ff5aa62a27e52012a','2001-08-11 17:14:41',NULL),(98,'strosin.esteban@example.com',79037308373,'93933f094ca1a54467f50a4f7521536f16207d5c','2004-09-03 05:19:50',NULL),(99,'vicente.nicolas@example.org',79683797763,'2fe18450c9bfb22508b1eb020764b5ce2d17e528','1971-11-19 17:14:35',NULL),(100,'rjohns@example.com',79107880456,'d7fd8b6255f130713ff55694ab73eb7e1c2473bb','1975-11-21 21:22:10',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_community`
--

DROP TABLE IF EXISTS `user_community`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_community` (
  `community_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  PRIMARY KEY (`community_id`,`user_id`),
  KEY `fk_user_has_community_community1_idx` (`community_id`),
  KEY `fk_user_has_community_user1_idx` (`user_id`),
  CONSTRAINT `fk_user_has_community_community1` FOREIGN KEY (`community_id`) REFERENCES `community` (`id`),
  CONSTRAINT `fk_user_has_community_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_community`
--

LOCK TABLES `user_community` WRITE;
/*!40000 ALTER TABLE `user_community` DISABLE KEYS */;
INSERT INTO `user_community` VALUES (1,9),(1,11),(1,17),(1,33),(1,47),(1,57),(1,70),(1,73),(1,75),(1,94),(2,3),(2,6),(2,12),(2,18),(2,49),(2,56),(2,71),(2,87),(2,95),(3,12),(3,28),(3,32),(3,35),(3,36),(3,72),(3,84),(4,1),(4,9),(4,16),(4,23),(4,36),(4,45),(4,50),(4,51),(4,75),(4,93),(5,45),(5,49),(5,63),(5,83),(5,87),(5,97),(6,4),(6,32),(6,36),(6,41),(6,60),(6,80),(6,83),(6,88),(7,2),(7,4),(7,13),(7,14),(7,18),(7,32),(7,57),(7,60),(7,63),(7,69),(7,70),(7,71),(7,85),(7,87),(7,95),(8,22),(8,32),(8,34),(8,35),(8,37),(8,38),(8,49),(8,71),(8,99),(9,17),(9,21),(9,25),(9,58),(9,59),(9,61),(9,71),(9,81),(9,82),(9,86),(9,98),(10,3),(10,6),(10,73),(10,85),(10,88),(10,98),(10,99);
/*!40000 ALTER TABLE `user_community` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-17 22:22:46
