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
-- Table structure for table `total_units`
--

DROP TABLE IF EXISTS `total_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total_units` (
  `total_units_id` int NOT NULL AUTO_INCREMENT,
  `blood_type` int NOT NULL,
  `total_units` int NOT NULL,
  `blood_bank_id` int NOT NULL,
  PRIMARY KEY (`total_units_id`),
  KEY `blood_id_idx` (`blood_type`),
  KEY `blood_bank_id_idx` (`blood_bank_id`),
  CONSTRAINT `blood_bank_id` FOREIGN KEY (`blood_bank_id`) REFERENCES `blood_bank` (`blood_bank_id`),
  CONSTRAINT `blood_id` FOREIGN KEY (`blood_type`) REFERENCES `blood_group` (`blood_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total_units`
--

LOCK TABLES `total_units` WRITE;
/*!40000 ALTER TABLE `total_units` DISABLE KEYS */;
INSERT INTO `total_units` VALUES (1,8,6,6),(2,1,5,1),(3,2,5,1),(4,3,15,1),(5,4,8,1),(6,5,12,1),(7,6,6,1),(8,7,3,1),(9,8,9,1),(10,1,7,2),(11,2,11,2),(12,3,9,2),(13,4,4,2),(14,5,14,2),(15,6,7,2),(16,7,10,2),(17,8,6,2),(18,1,10,3),(19,2,5,3),(20,3,15,3),(21,4,8,3),(22,5,12,3),(23,6,6,3),(24,7,3,3),(25,8,9,3),(26,1,7,4),(27,2,11,4),(28,3,9,4),(29,4,4,4),(30,5,14,4),(31,6,7,4),(32,7,10,4),(33,8,6,4),(34,1,10,5),(35,2,5,5),(36,3,15,5),(37,4,8,5),(38,5,12,5),(39,6,6,5),(40,7,3,5),(41,8,9,5),(42,1,7,6),(43,2,11,6),(44,3,9,6),(45,4,4,6),(46,5,14,6),(47,6,7,6),(48,7,10,6),(49,8,6,6);
/*!40000 ALTER TABLE `total_units` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-05 11:12:26
