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
-- Dumping events for database 'astonengineer'
--

--
-- Dumping routines for database 'astonengineer'
--
/*!50003 DROP PROCEDURE IF EXISTS `usp_ExecuteClient` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_ExecuteClient`(
	IN queryId int,
    IN clientId int,
    IN clientName varchar(100))
BEGIN
	if(queryId = 10) then 
		begin
			INSERT INTO client (ClientName, CreateDate)
			VALUES	(clientName, now());
			SELECT LAST_INSERT_ID();
		end;
        
	elseif(queryId = 20) then
		begin
			UPDATE	client as a
			SET		a.ClientName = IFNULL(clientName, a.ClientName)
			WHERE	a.ClientID = clientId;

			SELECT ROW_COUNT();
		end;

	elseif(queryId = 30) then
		begin
			DELETE
			FROM	client
			WHERE	client.ClientID = clientId;

			SELECT ROW_COUNT();
		end;
        
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_ExecuteEmail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_ExecuteEmail`(
	IN queryId 			int,
    IN emailAddress		varchar(50),
	IN employeeId		int,
	IN entityTypeId		int,
	IN emailId			int)
BEGIN
	if(queryId = 10) then 
		begin
			INSERT INTO email (EntityTypeId, EmailAddress, EmployeeId)
			VALUES	(entityTypeId, emailAddress, employeeId);
			SELECT LAST_INSERT_ID();
		end;
        
	elseif(queryId = 20) then
		begin
			UPDATE	email as a
			SET	a.EntityTypeId = ifnull(entityTypeId, a.EntityTypeId),
				a.EmailAddress = ifnull(emailAddress, a.EmailAddress),
				a.EmployeeId = ifnull(employeeId, a.EmployeeId)
			WHERE	a.EmailId = emailId;

			SELECT ROW_COUNT();
		end;

	elseif(queryId = 30) then
		begin
			DELETE
			FROM	email
			WHERE	email.EmailId = emailId;

			SELECT ROW_COUNT();
		end;
        
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_ExecuteEmployee` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_ExecuteEmployee`(
	IN queryId		int,
	IN employeeId	int,
	IN hireDate		datetime,
	IN termDate		datetime,
	IN birthDate	datetime,
	in personId		int)
BEGIN
	if(queryId = 10) then 
		begin
			INSERT INTO employee (	HireDate,
									TermDate, 
									BirthDate, 
									PersonId,
									CreateDate)
			VALUES	(	hireDate,
						termDate, 
						birthDate, 
						personId,
						now());
			SELECT LAST_INSERT_ID();
		end;
        
	elseif(queryId = 20) then
		begin
			UPDATE	employee as a
			SET	a.HireDate = ifnull(hireDate, a.HireDate),
				a.TermDate = ifnull(termDate, a.TermDate),
				a.BirthDate = ifnull(birthDate, a.BirthDate),
				a.PersonId = ifnull(personId, a.PersonId)
			WHERE	a.EmployeeId = employeeId;

			SELECT ROW_COUNT();
		end;

	elseif(queryId = 30) then
		begin
			DELETE
			FROM	employee
			WHERE	employee.EmployeeId = employeeId;

			SELECT ROW_COUNT();
		end;
        
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_ExecutePerson` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_ExecutePerson`(
	IN queryId			int,
	IN personId			int,
	IN title			varchar(10),
	in firstName		varchar(50),
	in lastName			varchar(50),
	in displayFirstName	varchar(50),
	in gender			char(1))
BEGIN
	if(queryId = 10) then 
		begin
			INSERT INTO Person (	Title,
									FirstName,
									LastName,
									CreateDate,
									DisplayFirstName,
									Gender)
			VALUES	(	title,
						firstName,
						lastName,
						NOW(),
						displayFirstName,
						gender);
			SELECT LAST_INSERT_ID();
		end;
        
	elseif(queryId = 20) then
		begin
			UPDATE	person as a
			SET		a.Title = IFNULL(title, a.Title),
					a.FirstName = IFNULL(firstName, a.FirstName),
					a.LastName = IFNULL(lastName, a.LastName),
					a.DisplayFirstName = IFNULL(displayFirstName, a.DisplayFirstName),
					a.Gender = IFNULL(gender, a.Gender)
			WHERE	a.PersonId = personId;

			SELECT ROW_COUNT();
		end;

	elseif(queryId = 30) then
		begin
			DELETE
			FROM	person
			WHERE	person.PersonId = personId;

			SELECT ROW_COUNT();
		end;
        
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_ExecutePhone` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_ExecutePhone`(
	IN queryId			int,
	IN phoneId			int,
	IN entityTypeId		int,
	IN clientId			int,
	IN personId			int,
	IN areaCode			int,
	IN phoneNumber		int,
	IN phoneNumberPost	int)
BEGIN
	if(queryId = 10) then 
		begin
			INSERT INTO phone (	EntityTypeId,
								ClientId, 
								PersonId, 
								AreaCode,
								PhoneNumber,
								PhoneNumberPost)
			VALUES	(	entityTypeId,
						clientId, 
						personId, 
						areaCode,
						phoneNumber,
						phoneNumberPost);
			SELECT LAST_INSERT_ID();
		end;
        
	elseif(queryId = 20) then
		begin
			UPDATE	phone as a
			SET		a.EntityTypeId = ifnull(entityTypeId, a.EntityTypeId),
					a.ClientId = ifnull(clientId, a.ClientId),
					a.PersonId = ifnull(personId, a.PersonId),
					a.AreaCode = ifnull(areaCode, a.AreaCode),
					a.PhoneNumber = ifnull(phoneNumber, a.PhoneNumber),
					a.PhoneNumberPost = ifnull(phoneNumberPost, a.PhoneNumberPost)
			WHERE	a.PhoneId = phoneId;

			SELECT ROW_COUNT();
		end;

	elseif(queryId = 30) then
		begin
			DELETE
			FROM	phone
			WHERE	phone.PhoneId = phoneId;

			SELECT ROW_COUNT();
		end;
        
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_ExecuteVehicle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_ExecuteVehicle`(
	IN queryId INT,
    IN vehicleId INT,
    IN year INT,
    IN licensePlate VARCHAR(10),
    IN vin VARCHAR(20),
    IN color VARCHAR(10),
    IN isPurchase TINYINT,
    IN purchasePrice INT,
    IN purchaseDate DATETIME,
    IN vehicleModelId INT)
BEGIN
	IF(queryId = 10) THEN
		BEGIN
			INSERT 	INTO astonengineer.vehicle(Year, LicensePlate, VIN, Color, IsPurchase, PurchasePrice, PurchaseDate, VehicleModelId)
            VALUES 	(year, licensePlate, vin, color, isPurchase, purchasePrice, purchaseDate, vehicleModelId);
			SELECT LAST_INSERT_ID();
        END;
        
    ELSEIF(queryId = 20) THEN
		BEGIN
			UPDATE 	astonengineer.vehicle AS a
            SET 	a.Year = IFNULL(year, a.Year),
					a.LicensePlate = IFNULL(licensePlate, a.LicensePlate),
                    a.VIN = IFNULL(vin, a.VIN),
                    a.Color = IFNULL(color, a.Color),
                    a.IsPurchase = IFNULL(isPurchase, a.IsPurchase),
                    a.PurchasePrice = IFNULL(purchasePrice, a.PurchasePrice),
                    a.PurchaseDate = IFNULL(purchaseDate, a.PurchaseDate),
                    a.VehicleModelId = IFNULL(vehicleModelId, a.VehicleModelId)
            WHERE 	a.VehicleId = vehicleId;
			SELECT ROW_COUNT();
        END;
        
	ELSEIF (queryId = 30) THEN
		BEGIN
			DELETE 	FROM astonengineer.vehicle
            WHERE 	astonengineer.vehicle.VehicleId = vehicleId;
			SELECT ROW_COUNT();
        END;
        
	END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_ExecuteVehicleMake` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_ExecuteVehicleMake`(
	IN queryId INT,
    IN makeId INT,
    IN makeName VARCHAR(50))
BEGIN
	IF(queryId = 10) THEN
		BEGIN
			INSERT INTO astonengineer.vehiclemake(VehicleMakeName)
            VALUES (makeName);
			SELECT LAST_INSERT_ID();
        END;
        
    ELSEIF(queryId = 20) THEN
		BEGIN
			UPDATE astonengineer.vehiclemake AS a
            SET a.VehicleMakeName = IFNULL(makeName, a.VehicleMakeName)
            WHERE a.VehicleMakeId = makeId;
			SELECT ROW_COUNT();
        END;
        
	ELSEIF (queryId = 30) THEN
		BEGIN
			DELETE FROM astonengineer.vehiclemake
            WHERE astonengineer.vehiclemake.VehicleMakeId = makeId;
			SELECT ROW_COUNT();
        END;
        
	END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_ExecuteVehicleModel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_ExecuteVehicleModel`(
	IN queryId INT,
    IN modelId INT,
    IN modelName VARCHAR(50),
    IN makeId INT)
BEGIN
	IF(queryId = 10) THEN
		BEGIN
			INSERT 	INTO astonengineer.vehiclemodel(VehicleModelName, VehicleMakeId)
            VALUES 	(modelName, makeId);
			SELECT 	LAST_INSERT_ID();
        END;
        
    ELSEIF(queryId = 20) THEN
		BEGIN
			UPDATE 	astonengineer.vehiclemodel AS a
            SET 	a.VehicleModelName = IFNULL(modelName, a.VehicleModelName),
					a.VehicleMakeId = IFNULL(makeId, a.VehicleMakeId)
            WHERE 	a.VehicleModelId = modelId;
			SELECT 	ROW_COUNT();
        END;
        
	ELSEIF (queryId = 30) THEN
		BEGIN
			DELETE 	FROM astonengineer.vehiclemodel
            WHERE 	astonengineer.vehiclemodel.VehicleModelId = modelId;
			SELECT 	ROW_COUNT();
        END;
        
	END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_GetClient` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_GetClient`(
	IN queryId	int,
	IN clientId	int)
BEGIN
	if(queryId = 10) then 
		begin
			select a.ClientId, a.ClientName, a.CreateDate
            from Client as a
            where a.ClientId = clientId;
		end;
        
	elseif(queryId = 20) then
		begin
			select a.ClientId, a.ClientName, a.CreateDate
            from Client as a
            order by a.ClientId;
		end;
        
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_GetEmail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_GetEmail`(
	IN queryId	int,
	IN emailId	int)
BEGIN
	if(queryId = 10) then 
		begin
			select a.EmailId, a.EmailAddress, a.EmployeeId, a.EntityTypeId
            from Email as a
            where a.EmailId = emailId;
		end;
        
	elseif(queryId = 20) then
		begin
			select a.EmailId, a.EmailAddress, a.EmployeeId, a.EntityTypeId
            from Email as a
            order by EmailId;
		end;
        
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_GetEmployee` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_GetEmployee`(
	IN queryId	int,
	IN employeeId	int,
    IN pageNumber int)
BEGIN
	if(queryId = 10) then 
		begin
			select a.EmployeeId, a.HireDate, a.TermDate, a.BirthDate, a.PersonId, a.CreateDate
            from Employee as a
            inner join Person AS b on a.PersonId = b.PersonId
            where a.EmployeeId = employeeId;
		end;
        
	elseif(queryId = 20) then
		begin
			select a.EmployeeId, a.HireDate, a.TermDate, a.BirthDate, a.PersonId, a.CreateDate
            from Employee as a
            inner join Person AS b on a.PersonId = b.PersonId
            order by EmployeeId;
		end;
        
	elseif(queryId = 30) then
		begin
			declare minRecord int;
            declare maxRecord int;
            
            set minRecord = ((pageNumber - 1) *10);
            set maxRecord = (minRecord+9);
            
			SELECT 
    a.EmployeeId,
    a.HireDate,
    a.TermDate,
    a.BirthDate,
    a.PersonId,
    a.CreateDate
FROM
    Employee AS a
WHERE
    a.EmployeeId BETWEEN minRecord AND maxRecord
ORDER BY EmployeeId;
		end;
        
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_GetPerson` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_GetPerson`(
	IN queryId	int,
	IN personId	int)
BEGIN
	if(queryId = 10) then 
		begin
			select a.PersonId, a.Title, a.FirstName, a.LastName, a.DisplayFirstName, a.Gender, a.CreateDate, a.IsDeleted
            from Person as a
            where a.PersonId = personId;
		end;
        
	elseif(queryId = 20) then
		begin
			select a.PersonId, a.Title, a.FirstName, a.LastName, a.DisplayFirstName, a.Gender, a.CreateDate, a.IsDeleted
            from Person as a
            order by PersonId;
		end;
        
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_GetPhone` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_GetPhone`(
	IN queryId	int,
	IN phoneId	int)
BEGIN
	if(queryId = 10) then 
		begin
			select a.PhoneId, a.EntityTypeId, a.ClientId, a.PersonId, a.AreaCode, a.PhoneNumber, a.PhoneNumberPost
            from Phone as a
            where a.PhoneId = phoneId;
		end;
        
	elseif(queryId = 20) then
		begin
			select a.PhoneId, a.EntityTypeId, a.ClientId, a.PersonId, a.AreaCode, a.PhoneNumber, a.PhoneNumberPost
            from Phone as a
            order by PhoneId;
		end;
        
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_GetVehicle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_GetVehicle`(
	IN queryId int,
    IN vehicleId int)
BEGIN
	if (queryId = 10) then
		begin
			select a.VehicleId, a.Year, a.LicensePlate, a.VIN, a.Color, a.IsPurchase, a.PurchasePrice, a.PurchaseDate, a.VehicleModelId
            from astonengineer.vehicle as a
            where a.VehicleId = vehicleId;
        end;
        
	elseif (queryId = 20) then
		begin
			select a.VehicleId, a.Year, a.LicensePlate, a.VIN, a.Color, a.IsPurchase, a.PurchasePrice, a.PurchaseDate, a.VehicleModelId
            from astonengineer.vehicle as a
            order by a.VehicleId;
        end;
        
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_GetVehicleMake` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_GetVehicleMake`(
	IN queryId int,
    IN makeId int)
BEGIN
	if (queryId = 10) then
		begin
			select a.VehicleMakeId, a.VehicleMakeName
            from astonengineer.vehiclemake as a
            where a.VehicleMakeId = makeId;
        end;
        
	elseif (queryId = 20) then
		begin
			select a.VehicleMakeId, a.VehicleMakeName
            from astonengineer.vehiclemake as a
            order by a.VehicleMakeId;
        end;
        
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usp_GetVehicleModel` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_GetVehicleModel`(
	IN queryId int,
    IN modelId int)
BEGIN
	if (queryId = 10) then
		begin
			select a.VehicleModelId, a.VehicleModelName, a.VehicleMakeId
            from astonengineer.vehiclemodel as a
            where a.VehicleModelId = modelId;
        end;
        
	elseif (queryId = 20) then
		begin
			select a.VehicleModelId, a.VehicleModelName, a.VehicleMakeId
            from astonengineer.vehiclemodel as a
            order by a.VehicleModelId;
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

-- Dump completed on 2017-07-26 11:47:16
