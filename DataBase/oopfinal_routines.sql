CREATE DATABASE  IF NOT EXISTS `oopfinal` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `oopfinal`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: oopfinal
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
-- Dumping events for database 'oopfinal'
--

--
-- Dumping routines for database 'oopfinal'
--
/*!50003 DROP PROCEDURE IF EXISTS `ExecAll` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ExecAll`()
BEGIN
DROP TABLE IF EXISTS `file`;
DROP TABLE IF EXISTS `filetype`;
DROP TABLE IF EXISTS `directory`;


CREATE TABLE `directory` (
    `DirectoryId` INT(11) NOT NULL AUTO_INCREMENT,
    `DirectoryName` VARCHAR(500) DEFAULT NULL,
    `DirectoryFiles` INT(11) DEFAULT NULL,
    `DirectorySize` BIGINT(20) DEFAULT NULL,
    `DirectoryPathId` INT(11) DEFAULT NULL,
    PRIMARY KEY (`DirectoryId`),
    KEY `directory_DirectoryPathId_idx` (`DirectoryPathId`),
    CONSTRAINT `directory_DirectoryPathId` FOREIGN KEY (`DirectoryPathId`)
        REFERENCES `directory` (`DirectoryId`)
        ON DELETE CASCADE ON UPDATE CASCADE
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;
CREATE TABLE `filetype` (
    `FileTypeId` INT(11) NOT NULL AUTO_INCREMENT,
    `FileTypeName` VARCHAR(100) DEFAULT NULL,
    PRIMARY KEY (`FileTypeId`)
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;
CREATE TABLE `file` (
    `FileId` INT(11) NOT NULL AUTO_INCREMENT,
    `FileName` VARCHAR(100) DEFAULT NULL,
    `FileTypeId` INT(11) DEFAULT NULL,
    `FileSize` BIGINT(20) DEFAULT NULL,
    `DirectoryId` INT(11) DEFAULT NULL,
    PRIMARY KEY (`FileId`),
    KEY `File_FileTypeId_idx` (`FileTypeId`),
    KEY `File_FileDirectoryId_idx` (`DirectoryId`),
    CONSTRAINT `File_FileDirectoryId` FOREIGN KEY (`DirectoryId`)
        REFERENCES `directory` (`DirectoryId`)
        ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT `File_FileTypeId` FOREIGN KEY (`FileTypeId`)
        REFERENCES `filetype` (`FileTypeId`)
        ON DELETE CASCADE ON UPDATE CASCADE
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;

select 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ExecDirectory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ExecDirectory`(
			IN queryId int,
			IN directoryId int,
            IN directoryName varchar(500),
            IN directoryFiles int,
            IN directorySize bigint,
            IN directoryPathId int)
BEGIN
	if (queryId = 10) then
		begin
			insert into directory (DirectoryName, DirectoryFiles, DirectorySize, DirectoryPathId)
			values (directoryName, directoryFiles, directorySize, directoryPathId);
            SELECT LAST_INSERT_ID();
		end;
	elseif(queryId = 20) then
		begin
			update directory as a
			set a.DirectoryName = ifnull(directoryName, a.DirectoryName),
				a.DirectoryFiles = ifnull(directoryFiles, a.DirectoryFiles),
				a.DirectorySize = ifnull(directorySize, a.DirectorySize),
				a.DirectoryPathId = ifnull(direcotryPathId, a.DirectoryPathId)
			where a.DirectoryId = directoryId;
            
            SELECT ROW_COUNT();
		end;
    elseif (queryid = 30) then
		begin
			delete from directory
            where directory.DirectoryId = directoryId;
            
            SELECT ROW_COUNT();
        end;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ExecFile` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ExecFile`(
			IN queryId int,
			IN fileId int,
            IN fileName varchar(100),
            IN fileTypeId int,
            IN fileSize bigint,
            IN directoryId int)
BEGIN
	if (queryId = 10) then
		begin
			insert into oopfinal.file (FileName, FileTypeId, FileSize, DirectoryId)
			values (fileName, fileTypeId, fileSize, directoryId);
            SELECT LAST_INSERT_ID();
		end;
	elseif(queryId = 20) then
		begin
			update oopfinal.file as a
			set a.FileName = ifnull(fileName, a.FileName),
				a.FileTypeId = ifnull(fileTypeId, a.FileTypeId),
				a.FileSize = ifnull(fileSize, a.FileSize),
				a.DirectoryId = ifnull(direcotryId, a.DirectoryId)
			where a.FileId = fileId;
            
            SELECT ROW_COUNT();
		end;
    elseif (queryid = 30) then
		begin
			delete from oopfinal.file
            where oopfinal.file.FileId = fileId;
            
            SELECT ROW_COUNT();
        end;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ExecFileType` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ExecFileType`(
			IN queryId int,
			IN fileTypeId int,
            IN fileTypeName varchar(100))
BEGIN
	if (queryId = 10) then
		begin
			insert into oopfinal.filetype (FileTypeName)
			values (fileTypeName);
            SELECT LAST_INSERT_ID();
		end;
	elseif(queryId = 20) then
		begin
			update oopfinal.filetype as a
			set a.FileTypeName = ifnull(fileTypeName, a.FileTypeName)
			where a.FileTypeId = fileTypeId;
            
            SELECT ROW_COUNT();
		end;
    elseif (queryid = 30) then
		begin
			delete from oopfinal.filetype
            where oopfinal.filetype.FileTypeId = fileTypeId;
            
            SELECT ROW_COUNT();
        end;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetDirectory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetDirectory`(
				in queryId int,
				in directoryId int,
                in directoryName varchar(100))
BEGIN
	if (queryId=10) then
        begin
			select a.DirectoryId, a.DirectoryName, a.DirectoryFiles, a.DirectorySize, a.DirectoryPathId
			from directory as a
			where a.DirectoryId = directoryId;
		end;
        
	elseif (queryId=20) then
        begin
			select a.DirectoryId, a.DirectoryName, a.DirectoryFiles, a.DirectorySize, a.DirectoryPathId
			from directory as a
			where a.DirectoryName = directoryName;
		end;
        
	elseif (queryId=30) then
        begin
			select a.DirectoryId, a.DirectoryName, a.DirectoryFiles, a.DirectorySize, a.DirectoryPathId
			from directory as a
			order by a.DirectoryId;
		end;
	end if;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetFile` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetFile`(
				in queryId int,
				in fileId int,
                in fileName varchar(100))
BEGIN
	if (queryId=10) then
        begin
			select a.FileId, a.FileName, a.FileTypeId, a.FileSize, a.DirectoryId
			from file as a
			where a.FileId = fileId;
		end;
        
	elseif (queryId=20) then
        begin
			select a.FileId, a.FileName, a.FileTypeId, a.FileSize, a.DirectoryId
			from file as a
			where a.FileName = fileName;
		end;
        
	elseif (queryId=30) then
        begin
			select a.FileId, a.FileName, a.FileTypeId, a.FileSize, a.DirectoryId
			from file as a
			order by a.FileId;
		end;
	end if;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetFileType` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetFileType`(
				in queryId int,
				in fileTypeId int,
                in fileTypeName varchar(100))
BEGIN
	if (queryId=10) then
        begin
			select a.FileTypeId, a.FileTypeName
			from filetype as a
			where a.FileTypeId = fileTypeId;
		end;
        
	elseif (queryId=20) then
        begin
			select a.FileTypeId, a.FileTypeName
			from filetype as a
			where a.FileTypeName = fileTypeName;
		end;
        
	elseif (queryId=30) then
        begin
			select a.FileTypeId, a.FileTypeName
			from filetype as a
			order by a.FileTypeId;
		end;
	end if;
    
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

-- Dump completed on 2017-07-26 11:47:12
