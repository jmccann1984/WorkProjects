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
-- Table structure for table `loyaltyaccount`
--

DROP TABLE IF EXISTS `loyaltyaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loyaltyaccount` (
  `LoyaltyAccountId` int(11) NOT NULL,
  `LoyaltyCompanyId` int(11) NOT NULL,
  `EmployeeId` int(11) NOT NULL,
  `MemberNumber` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`LoyaltyCompanyId`,`EmployeeId`),
  KEY `FK_Employee_LoyaltyAccount` (`EmployeeId`),
  CONSTRAINT `FK_Employee_LoyaltyAccount` FOREIGN KEY (`EmployeeId`) REFERENCES `employee` (`EmployeeId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_LoyaltyCompany_LoyaltyAccount` FOREIGN KEY (`LoyaltyCompanyId`) REFERENCES `loyaltycompany` (`LoyaltyCompanyId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loyaltyaccount`
--

LOCK TABLES `loyaltyaccount` WRITE;
/*!40000 ALTER TABLE `loyaltyaccount` DISABLE KEYS */;
INSERT INTO `loyaltyaccount` VALUES (1,1,1,'DL12345'),(3,1,2,'DL66666'),(2,2,1,'HZ12345');
/*!40000 ALTER TABLE `loyaltyaccount` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-26 11:47:15
