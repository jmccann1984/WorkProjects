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
-- Table structure for table `employeeproject`
--

DROP TABLE IF EXISTS `employeeproject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employeeproject` (
  `EmployeeProjectId` int(11) NOT NULL AUTO_INCREMENT,
  `ProjectId` int(11) NOT NULL,
  `EmployeeId` int(11) NOT NULL,
  `EntityTypeId` int(11) NOT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `StartDate` datetime(6) DEFAULT NULL,
  `EndDate` datetime(6) DEFAULT NULL,
  `Notes` varchar(8000) DEFAULT NULL,
  PRIMARY KEY (`EmployeeProjectId`),
  KEY `FK_EmployeeProject_ProjectId` (`ProjectId`),
  KEY `FK_EmployeeProject_EmployeeId` (`EmployeeId`),
  KEY `FK_EmployeeProject_EntityTypeId` (`EntityTypeId`),
  KEY `FK_EmployeeProject_VehicleId` (`VehicleId`),
  CONSTRAINT `FK_EmployeeProject_EmployeeId` FOREIGN KEY (`EmployeeId`) REFERENCES `employee` (`EmployeeId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_EmployeeProject_EntityTypeId` FOREIGN KEY (`EntityTypeId`) REFERENCES `entitytype` (`EntityTypeId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_EmployeeProject_ProjectId` FOREIGN KEY (`ProjectId`) REFERENCES `project` (`ProjectId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_EmployeeProject_VehicleId` FOREIGN KEY (`VehicleId`) REFERENCES `vehicle` (`VehicleId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeproject`
--

LOCK TABLES `employeeproject` WRITE;
/*!40000 ALTER TABLE `employeeproject` DISABLE KEYS */;
/*!40000 ALTER TABLE `employeeproject` ENABLE KEYS */;
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
