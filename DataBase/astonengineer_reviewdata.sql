CREATE DATABASE  IF NOT EXISTS `astonengineer` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `astonengineer`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: astonengineer
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `reviewdata`
--

DROP TABLE IF EXISTS `reviewdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviewdata` (
  `ReviewDataId` int(11) NOT NULL,
  `ReviewId` int(11) NOT NULL,
  `EntityTypeId` int(11) NOT NULL,
  `ReviewDataValue` varchar(8000) NOT NULL,
  `CreateDate` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`ReviewId`,`EntityTypeId`),
  KEY `FK_ReviewData_EntityTypeId` (`EntityTypeId`),
  CONSTRAINT `FK_ReviewData_EntityTypeId` FOREIGN KEY (`EntityTypeId`) REFERENCES `entitytype` (`EntityTypeId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_ReviewData_ReviewId` FOREIGN KEY (`ReviewId`) REFERENCES `review` (`ReviewId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewdata`
--

LOCK TABLES `reviewdata` WRITE;
/*!40000 ALTER TABLE `reviewdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviewdata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-26 11:47:13
