-- MySQL dump 10.13  Distrib 5.7.9, for osx10.9 (x86_64)
--
-- Host: 127.0.0.1    Database: SafeRun
-- ------------------------------------------------------
-- Server version	5.7.10

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
-- Table structure for table `SR_MyFriendInfo`
--

DROP TABLE IF EXISTS `SR_MyFriendInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SR_MyFriendInfo` (
  `friendid` int(11) NOT NULL AUTO_INCREMENT,
  `friendPhone` varchar(45) DEFAULT NULL,
  `friendName` varchar(45) DEFAULT NULL,
  `myPhone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`friendid`)
) ENGINE=InnoDB AUTO_INCREMENT=10015 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SR_MyFriendInfo`
--

LOCK TABLES `SR_MyFriendInfo` WRITE;
/*!40000 ALTER TABLE `SR_MyFriendInfo` DISABLE KEYS */;
INSERT INTO `SR_MyFriendInfo` VALUES (10006,'18396189219','ss','13616008640'),(10007,'13616008450','???','13616008640'),(10008,'18396189219','???','13616008640'),(10009,'13799270970','???','13616008640'),(10010,'15959390277','???','13616008640'),(10011,'15959390277','???','13616008640'),(10012,'18760611222','???','13616008640'),(10013,'18960406071','???','13616008640'),(10014,'18396189219','???','13616008450');
/*!40000 ALTER TABLE `SR_MyFriendInfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-25 19:17:37
