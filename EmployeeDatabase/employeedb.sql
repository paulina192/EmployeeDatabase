-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: employeedb
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `all_emails`
--

DROP TABLE IF EXISTS `all_emails`;
/*!50001 DROP VIEW IF EXISTS `all_emails`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `all_emails` AS SELECT 
 1 AS `name`,
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `all_employee_info`
--

DROP TABLE IF EXISTS `all_employee_info`;
/*!50001 DROP VIEW IF EXISTS `all_employee_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `all_employee_info` AS SELECT 
 1 AS `id`,
 1 AS `fullName`,
 1 AS `hourlyPay`,
 1 AS `salary`,
 1 AS `age`,
 1 AS `department`,
 1 AS `role`,
 1 AS `yearsEmployed`,
 1 AS `email`,
 1 AS `supervisor`,
 1 AS `supervisorId`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `departments_details`
--

DROP TABLE IF EXISTS `departments_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments_details` (
  `department` varchar(45) NOT NULL,
  `officeNumber` int DEFAULT NULL,
  `phoneNumber` varchar(15) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `head` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`department`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments_details`
--

LOCK TABLES `departments_details` WRITE;
/*!40000 ALTER TABLE `departments_details` DISABLE KEYS */;
INSERT INTO `departments_details` VALUES ('Administrative',10,'61489921021','admin@gmail.com','Rex Mann'),('Education',8,'61489921022','edu@gmail.com','Elizabeth Morris'),('Finance',7,'61489921025','finance@gmail.com','Roger Burns'),('HR',10,'61489921021','hr@gmail.com','Rhea Watson'),('Leadership',11,'61489921026','manager@gmail.com','Marilyn Silva'),('Legal',5,'61489921023','legal@gmail.com','Luther Rassmussen'),('Marketing',3,'61489921024','market@gmail.com','Zain Arnold'),('Media',6,'61489922019','media@gmail.com',NULL),('PR',3,'61489921024','pr@gmail.com','Pearl Fisher'),('Sales',2,'61489921018','sales@gmail.com','Elissa Mendoza'),('Technology',4,'61489921020','tech@gmail.com','Theo Trijillo');
/*!40000 ALTER TABLE `departments_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `depts_sharing_office_phone`
--

DROP TABLE IF EXISTS `depts_sharing_office_phone`;
/*!50001 DROP VIEW IF EXISTS `depts_sharing_office_phone`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `depts_sharing_office_phone` AS SELECT 
 1 AS `department`,
 1 AS `officeNumber`,
 1 AS `phoneNumber`,
 1 AS `email`,
 1 AS `head`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(60) NOT NULL,
  `lastName` varchar(60) NOT NULL,
  `hourlyPay` decimal(5,2) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Sylvie','Brewer',20.50,42640.00,30,'Sales','Consultant'),(2,'Elissa','Mendoza',25.00,52000.00,40,'Sales','Representative'),(3,'Malachi','Prince',20.50,42640.00,27,'Sales','Consultant'),(4,'Chaim','Payne',22.00,45760.00,35,'Media','Producer'),(5,'Hayley','Randolph',30.00,62400.00,37,'Media','Talent'),(6,'Arabella','Parsons',23.00,47840.00,25,'Media','Stylist'),(7,'Theo','Trijillo',28.00,58240.00,29,'Technology','Developer'),(8,'Abigail','Best',28.00,58240.00,26,'Technology','Developer'),(9,'Rhea','Watson',28.00,58240.00,42,'HR','Secretary'),(10,'Elizabeth','Morris',25.00,52000.00,35,'Education','Teacher'),(11,'Chad','Roberson',25.00,52000.00,32,'Education','Teacher'),(12,'Luther','Rasmussen',35.00,72800.00,45,'Legal','Attorney'),(13,'Zain','Arnold',32.00,66560.00,30,'Marketing','Strategist'),(14,'Pearl','Fisher',32.00,66560.00,42,'PR','PR Specialist'),(15,'Penny','Bishop',25.50,53040.00,24,'Administrative','Receptionist'),(16,'Juliet','Guzman',25.50,53040.00,26,'Administrative','Receptionist'),(17,'Rex','Mann',26.00,54080.00,28,'Administrative','Assistant'),(18,'Roger','Burns',30.50,63440.00,40,'Finance','Accountant'),(19,'Leslie','Hopkins',29.00,60320.00,38,'Finance','Analyst'),(20,'Marilyn','Silva',40.50,84240.00,47,'Leadership','Manager');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `newEmployeeAdded` BEFORE INSERT ON `employee` FOR EACH ROW set new.salary = (new.hourlyPay * 2080) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `hourlyPayUpdate` BEFORE UPDATE ON `employee` FOR EACH ROW set new.salary = (new.hourlyPay * 2080) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `employee_details`
--

DROP TABLE IF EXISTS `employee_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_details` (
  `id` int NOT NULL,
  `yearsEmployed` int DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_details`
--

LOCK TABLES `employee_details` WRITE;
/*!40000 ALTER TABLE `employee_details` DISABLE KEYS */;
INSERT INTO `employee_details` VALUES (1,3,'sylvieb@gmail.com'),(2,8,'mendoel@gmail.com'),(3,1,'malachip@gmail.com'),(4,1,'paynech@gmail.com'),(5,4,'hayleyrand@gmail.com'),(6,2,'parsonsa@gmail.com'),(7,4,'tritheo@gmail.com'),(8,3,'bestabi@gmail.com'),(9,6,'watsonrhea@gmail.com'),(10,6,'lizmorris@gmail.com'),(11,5,'robersonch@gmail.com'),(12,8,'lutherass@gmail.com'),(13,1,'azain@gmail.com'),(14,0,'pearlf@gmail.com'),(15,1,'bishopp@gmail.com'),(16,2,'julguzman@gmail.com'),(17,0,'rexm@gmail.com'),(18,8,'broger@gmail.com'),(19,6,'hopkinsl@gmail.com'),(20,8,'marilyns@gmail.com');
/*!40000 ALTER TABLE `employee_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_supervisors`
--

DROP TABLE IF EXISTS `employee_supervisors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_supervisors` (
  `employeeId` int NOT NULL,
  `supervisor` varchar(60) DEFAULT NULL,
  `supervisorId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`employeeId`),
  CONSTRAINT `employee_supervisors_ibfk_1` FOREIGN KEY (`employeeId`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_supervisors`
--

LOCK TABLES `employee_supervisors` WRITE;
/*!40000 ALTER TABLE `employee_supervisors` DISABLE KEYS */;
INSERT INTO `employee_supervisors` VALUES (1,'Elissa Mendoza','2'),(2,'Marilyn Silva','20'),(3,'Elissa Mendoza','2'),(4,'Marilyn Silva','20'),(5,'Marilyn Silva','20'),(6,'Marilyn Silva','20'),(7,'Marilyn Silva','20'),(8,'Theo Trijillo','7'),(9,'Marilyn Silva','20'),(10,'Marilyn Silva','20'),(11,'Marilyn Silva','20'),(12,'Marilyn Silva','20'),(13,'Marilyn Silva','20'),(14,'Marilyn Silva','20'),(15,'Rex Mann','17'),(16,'Rex Mann','17'),(17,'Marilyn Silva','20'),(18,'Marilyn Silva','20'),(19,'Marilyn Silva','20'),(20,NULL,NULL);
/*!40000 ALTER TABLE `employee_supervisors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `employees_in_their_thirties`
--

DROP TABLE IF EXISTS `employees_in_their_thirties`;
/*!50001 DROP VIEW IF EXISTS `employees_in_their_thirties`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employees_in_their_thirties` AS SELECT 
 1 AS `fullName`,
 1 AS `age`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `higher_than_avg_salary`
--

DROP TABLE IF EXISTS `higher_than_avg_salary`;
/*!50001 DROP VIEW IF EXISTS `higher_than_avg_salary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `higher_than_avg_salary` AS SELECT 
 1 AS `id`,
 1 AS `firstName`,
 1 AS `lastName`,
 1 AS `hourlyPay`,
 1 AS `salary`,
 1 AS `age`,
 1 AS `department`,
 1 AS `role`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `num_of_employees_by_supervisors`
--

DROP TABLE IF EXISTS `num_of_employees_by_supervisors`;
/*!50001 DROP VIEW IF EXISTS `num_of_employees_by_supervisors`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `num_of_employees_by_supervisors` AS SELECT 
 1 AS `supervisor`,
 1 AS `num_of_employees`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `order_by_age`
--

DROP TABLE IF EXISTS `order_by_age`;
/*!50001 DROP VIEW IF EXISTS `order_by_age`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_by_age` AS SELECT 
 1 AS `fullName`,
 1 AS `age`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `order_by_yearsemployed`
--

DROP TABLE IF EXISTS `order_by_yearsemployed`;
/*!50001 DROP VIEW IF EXISTS `order_by_yearsemployed`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `order_by_yearsemployed` AS SELECT 
 1 AS `fullName`,
 1 AS `yearsEmployed`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `supervisors_departments_info`
--

DROP TABLE IF EXISTS `supervisors_departments_info`;
/*!50001 DROP VIEW IF EXISTS `supervisors_departments_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `supervisors_departments_info` AS SELECT 
 1 AS `supervisor`,
 1 AS `supervisorId`,
 1 AS `department`,
 1 AS `officeNumber`,
 1 AS `phoneNumber`,
 1 AS `email`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `all_emails`
--

/*!50001 DROP VIEW IF EXISTS `all_emails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_emails` AS select concat(`employee`.`firstName`,' ',`employee`.`lastName`) AS `name`,`employee_details`.`email` AS `email` from (`employee` join `employee_details` on((`employee`.`id` = `employee_details`.`id`))) union select `departments_details`.`department` AS `department`,`departments_details`.`email` AS `email` from `departments_details` order by `email` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `all_employee_info`
--

/*!50001 DROP VIEW IF EXISTS `all_employee_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_employee_info` AS select `employee`.`id` AS `id`,concat(`employee`.`firstName`,' ',`employee`.`lastName`) AS `fullName`,`employee`.`hourlyPay` AS `hourlyPay`,`employee`.`salary` AS `salary`,`employee`.`age` AS `age`,`employee`.`department` AS `department`,`employee`.`role` AS `role`,`employee_details`.`yearsEmployed` AS `yearsEmployed`,`employee_details`.`email` AS `email`,`employee_supervisors`.`supervisor` AS `supervisor`,`employee_supervisors`.`supervisorId` AS `supervisorId` from ((`employee` left join `employee_details` on((`employee`.`id` = `employee_details`.`id`))) left join `employee_supervisors` on((`employee_details`.`id` = `employee_supervisors`.`employeeId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `depts_sharing_office_phone`
--

/*!50001 DROP VIEW IF EXISTS `depts_sharing_office_phone`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `depts_sharing_office_phone` AS select `departments_details`.`department` AS `department`,`departments_details`.`officeNumber` AS `officeNumber`,`departments_details`.`phoneNumber` AS `phoneNumber`,`departments_details`.`email` AS `email`,`departments_details`.`head` AS `head` from `departments_details` where `departments_details`.`phoneNumber` in (select `departments_details`.`phoneNumber` from `departments_details` group by `departments_details`.`phoneNumber` having (count(0) > 1)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employees_in_their_thirties`
--

/*!50001 DROP VIEW IF EXISTS `employees_in_their_thirties`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employees_in_their_thirties` AS select concat(`employee`.`firstName`,' ',`employee`.`lastName`) AS `fullName`,`employee`.`age` AS `age` from `employee` where ((`employee`.`age` >= 30) and (`employee`.`age` < 40)) order by `employee`.`age` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `higher_than_avg_salary`
--

/*!50001 DROP VIEW IF EXISTS `higher_than_avg_salary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `higher_than_avg_salary` AS select `employee`.`id` AS `id`,`employee`.`firstName` AS `firstName`,`employee`.`lastName` AS `lastName`,`employee`.`hourlyPay` AS `hourlyPay`,`employee`.`salary` AS `salary`,`employee`.`age` AS `age`,`employee`.`department` AS `department`,`employee`.`role` AS `role` from `employee` where (`employee`.`salary` > (select avg(`employee`.`salary`) AS `avarage_salary` from `employee`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `num_of_employees_by_supervisors`
--

/*!50001 DROP VIEW IF EXISTS `num_of_employees_by_supervisors`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `num_of_employees_by_supervisors` AS select `employee_supervisors`.`supervisor` AS `supervisor`,count(0) AS `num_of_employees` from (`employee_supervisors` left join `employee` on((`employee_supervisors`.`supervisorId` = `employee`.`id`))) group by `employee_supervisors`.`supervisor` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order_by_age`
--

/*!50001 DROP VIEW IF EXISTS `order_by_age`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_by_age` AS select concat(`employee`.`firstName`,' ',`employee`.`lastName`) AS `fullName`,`employee`.`age` AS `age` from `employee` order by `employee`.`age` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `order_by_yearsemployed`
--

/*!50001 DROP VIEW IF EXISTS `order_by_yearsemployed`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `order_by_yearsemployed` AS select concat(`employee`.`firstName`,' ',`employee`.`lastName`) AS `fullName`,`employee_details`.`yearsEmployed` AS `yearsEmployed` from (`employee` join `employee_details` on((`employee`.`id` = `employee_details`.`id`))) order by `employee_details`.`yearsEmployed` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `supervisors_departments_info`
--

/*!50001 DROP VIEW IF EXISTS `supervisors_departments_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `supervisors_departments_info` AS select distinct `employee_supervisors`.`supervisor` AS `supervisor`,`employee_supervisors`.`supervisorId` AS `supervisorId`,`departments_details`.`department` AS `department`,`departments_details`.`officeNumber` AS `officeNumber`,`departments_details`.`phoneNumber` AS `phoneNumber`,`departments_details`.`email` AS `email` from (`employee_supervisors` left join `departments_details` on((`employee_supervisors`.`supervisor` = `departments_details`.`head`))) */;
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

-- Dump completed on 2023-12-10 17:06:43
