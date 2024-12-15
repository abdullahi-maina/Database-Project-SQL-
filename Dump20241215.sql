CREATE DATABASE  IF NOT EXISTS `maina_constructionrental` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `maina_constructionrental`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: maina_constructionrental
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Temporary view structure for view `active_rentals`
--

DROP TABLE IF EXISTS `active_rentals`;
/*!50001 DROP VIEW IF EXISTS `active_rentals`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `active_rentals` AS SELECT 
 1 AS `Rental_ID`,
 1 AS `First_Name`,
 1 AS `Last_Name`,
 1 AS `Equipment_Type`,
 1 AS `Equipment_Model`,
 1 AS `Start_Date`,
 1 AS `End_Date`,
 1 AS `Total_Fee`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `Customer_ID` int NOT NULL,
  `First_Name` varchar(50) DEFAULT NULL,
  `Last_Name` varchar(50) DEFAULT NULL,
  `Contact_Number` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Customer_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--
-- ORDER BY:  `Customer_ID`

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (101,'Sadiq','Abubakar','08164758923','sadiq@yahoo.com'),(102,'John','Paul','08099876754','john@yahoo.com'),(103,'Isa','Doko','09088782367','isa@yahoo.com'),(104,'Yusuf','Estes','07066772245','yusuf@yahoo.com'),(105,'Askarawa','Kofa','09055637812','kofa@gmail.com'),(106,'Rijiyan','Lemu','09078111123','lemu@gmail.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customer_rental_history`
--

DROP TABLE IF EXISTS `customer_rental_history`;
/*!50001 DROP VIEW IF EXISTS `customer_rental_history`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_rental_history` AS SELECT 
 1 AS `Customer_ID`,
 1 AS `First_Name`,
 1 AS `Last_Name`,
 1 AS `Equipment_ID`,
 1 AS `Equipment_Type`,
 1 AS `Equipment_Model`,
 1 AS `Start_Date`,
 1 AS `End_Date`,
 1 AS `Total_Fee`,
 1 AS `Rental_Status`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment` (
  `Equipment_ID` int NOT NULL,
  `Equipment_Type` varchar(100) DEFAULT NULL,
  `Equipment_Model` varchar(100) DEFAULT NULL,
  `Equipment_Status` varchar(50) DEFAULT NULL,
  `Daily_Rate` int DEFAULT NULL,
  `Hourly_Rate` int DEFAULT NULL,
  `Rental_Type` varchar(20) DEFAULT NULL,
  `Operational_Hours` int DEFAULT NULL,
  PRIMARY KEY (`Equipment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--
-- ORDER BY:  `Equipment_ID`

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES (100,'Forklift','FL 400','Available',50000,1000,'Daily',0),(111,'Bull dozer','CAT D6','Rented',100000,2000,'Daily',100),(222,'Excavators','EX 101','Available',120000,2500,'Daily',50),(333,'Grader','CD 98','Rented',130000,2500,'Hourly',120),(444,'Backhoe','AT 105','Available',90000,1800,'Daily',75),(555,'Loader','L 922','Under-Maintenance',70000,1500,'Hourly',200),(666,'Dump Truck','GM 955','Available',80000,1600,'Daily',90),(777,'Concrete Mixer','CM 32','Available',40000,800,'Hourly',30),(888,'Compactor','CT 690','Available',60000,1200,'Hourly',60),(999,'Borehole Driller','DB 213','Under-Maintenance',90000,1500,'Hourly',150);
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `equipment_under_maintenance`
--

DROP TABLE IF EXISTS `equipment_under_maintenance`;
/*!50001 DROP VIEW IF EXISTS `equipment_under_maintenance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `equipment_under_maintenance` AS SELECT 
 1 AS `Equipment_ID`,
 1 AS `Equipment_Type`,
 1 AS `Equipment_Model`,
 1 AS `Equipment_Status`,
 1 AS `Maintenance_Start_Date`,
 1 AS `Maintenance_End_Date`,
 1 AS `Maintenance_Description`,
 1 AS `Maintenance_Cost`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `maintenance`
--

DROP TABLE IF EXISTS `maintenance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `maintenance` (
  `Maintenance_ID` int NOT NULL AUTO_INCREMENT,
  `Equipment_ID` int DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  `Maintenance_Description` varchar(255) DEFAULT NULL,
  `Cost` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Maintenance_ID`),
  KEY `Equipment_ID` (`Equipment_ID`),
  CONSTRAINT `maintenance_ibfk_1` FOREIGN KEY (`Equipment_ID`) REFERENCES `equipment` (`Equipment_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maintenance`
--
-- ORDER BY:  `Maintenance_ID`

LOCK TABLES `maintenance` WRITE;
/*!40000 ALTER TABLE `maintenance` DISABLE KEYS */;
INSERT INTO `maintenance` VALUES (1,555,'2024-11-01','2024-11-07','General maintenance of Loader L 922',20000.00),(2,999,'2024-11-01','2024-11-07','Repair and servicing of Borehole Driller DB 213',25000.00);
/*!40000 ALTER TABLE `maintenance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental`
--

DROP TABLE IF EXISTS `rental`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rental` (
  `Rental_ID` int NOT NULL AUTO_INCREMENT,
  `Customer_ID` int DEFAULT NULL,
  `Equipment_ID` int DEFAULT NULL,
  `Start_Date` date DEFAULT NULL,
  `End_Date` date DEFAULT NULL,
  `Total_Fee` decimal(10,2) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `Expected_Return_Date` date DEFAULT NULL,
  PRIMARY KEY (`Rental_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  KEY `Equipment_ID` (`Equipment_ID`),
  CONSTRAINT `rental_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`),
  CONSTRAINT `rental_ibfk_2` FOREIGN KEY (`Equipment_ID`) REFERENCES `equipment` (`Equipment_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental`
--
-- ORDER BY:  `Rental_ID`

LOCK TABLES `rental` WRITE;
/*!40000 ALTER TABLE `rental` DISABLE KEYS */;
INSERT INTO `rental` VALUES (1,101,111,'2024-11-23','2024-11-28',NULL,'Active',NULL),(2,103,333,'2024-11-23','2024-11-25',NULL,'Active',NULL),(3,101,111,'2024-11-23','2024-11-28',NULL,'Active','2024-11-28'),(4,103,333,'2024-11-23','2024-11-25',NULL,'Active','2024-11-25');
/*!40000 ALTER TABLE `rental` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'maina_constructionrental'
--

--
-- Dumping routines for database 'maina_constructionrental'
--

--
-- Final view structure for view `active_rentals`
--

/*!50001 DROP VIEW IF EXISTS `active_rentals`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `active_rentals` AS select `r`.`Rental_ID` AS `Rental_ID`,`c`.`First_Name` AS `First_Name`,`c`.`Last_Name` AS `Last_Name`,`e`.`Equipment_Type` AS `Equipment_Type`,`e`.`Equipment_Model` AS `Equipment_Model`,`r`.`Start_Date` AS `Start_Date`,`r`.`End_Date` AS `End_Date`,`r`.`Total_Fee` AS `Total_Fee` from ((`rental` `r` join `customer` `c` on((`r`.`Customer_ID` = `c`.`Customer_ID`))) join `equipment` `e` on((`r`.`Equipment_ID` = `e`.`Equipment_ID`))) where (`r`.`Status` = 'Active') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `customer_rental_history`
--

/*!50001 DROP VIEW IF EXISTS `customer_rental_history`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_rental_history` AS select `c`.`Customer_ID` AS `Customer_ID`,`c`.`First_Name` AS `First_Name`,`c`.`Last_Name` AS `Last_Name`,`e`.`Equipment_ID` AS `Equipment_ID`,`e`.`Equipment_Type` AS `Equipment_Type`,`e`.`Equipment_Model` AS `Equipment_Model`,`r`.`Start_Date` AS `Start_Date`,`r`.`End_Date` AS `End_Date`,`r`.`Total_Fee` AS `Total_Fee`,`r`.`Status` AS `Rental_Status` from ((`customer` `c` join `rental` `r` on((`c`.`Customer_ID` = `r`.`Customer_ID`))) join `equipment` `e` on((`r`.`Equipment_ID` = `e`.`Equipment_ID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `equipment_under_maintenance`
--

/*!50001 DROP VIEW IF EXISTS `equipment_under_maintenance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `equipment_under_maintenance` AS select `e`.`Equipment_ID` AS `Equipment_ID`,`e`.`Equipment_Type` AS `Equipment_Type`,`e`.`Equipment_Model` AS `Equipment_Model`,`e`.`Equipment_Status` AS `Equipment_Status`,`m`.`Start_Date` AS `Maintenance_Start_Date`,`m`.`End_Date` AS `Maintenance_End_Date`,`m`.`Maintenance_Description` AS `Maintenance_Description`,`m`.`Cost` AS `Maintenance_Cost` from (`equipment` `e` join `maintenance` `m` on((`e`.`Equipment_ID` = `m`.`Equipment_ID`))) where (`e`.`Equipment_Status` = 'Under-Maintenance') */;
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

-- Dump completed on 2024-12-15 18:15:01
