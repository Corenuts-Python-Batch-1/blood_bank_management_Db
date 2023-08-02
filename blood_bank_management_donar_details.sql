-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: blood_bank_management
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `donar_details`
--

DROP TABLE IF EXISTS `donar_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donar_details` (
  `donar_id` int NOT NULL AUTO_INCREMENT,
  `donar_name` varchar(45) NOT NULL,
  `blood_type` int NOT NULL,
  `units` int NOT NULL,
  `contact_number` bigint NOT NULL,
  `aadhar_number` varchar(45) NOT NULL,
  `transfusion_date` date NOT NULL,
  `eligibility` varchar(45) NOT NULL,
  `location` int NOT NULL,
  `gender` varchar(45) NOT NULL,
  `age` int NOT NULL,
  `bank` int NOT NULL,
  PRIMARY KEY (`donar_id`),
  UNIQUE KEY `aadhar_number_UNIQUE` (`aadhar_number`),
  KEY `blood_type_idx` (`blood_type`),
  KEY `location_id_idx` (`location`),
  KEY `blood_bank_id_idx` (`bank`),
  CONSTRAINT `bank` FOREIGN KEY (`bank`) REFERENCES `blood_bank` (`blood_bank_id`),
  CONSTRAINT `blood_type` FOREIGN KEY (`blood_type`) REFERENCES `blood_group` (`blood_group_id`),
  CONSTRAINT `location` FOREIGN KEY (`location`) REFERENCES `location` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donar_details`
--

LOCK TABLES `donar_details` WRITE;
/*!40000 ALTER TABLE `donar_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `donar_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-05 11:12:28
