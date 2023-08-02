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
-- Table structure for table `login_register`
--

DROP TABLE IF EXISTS `login_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_register` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(555) NOT NULL,
  `role` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_register`
--

LOCK TABLES `login_register` WRITE;
/*!40000 ALTER TABLE `login_register` DISABLE KEYS */;
INSERT INTO `login_register` VALUES (29,NULL,0,0,1,'2023-06-28 05:27:47.331646','kdhamodhar1729@gmail.com','pbkdf2_sha256$600000$f5CQW0ed5n0QGsaNizu5hL$w07GT/Xuo09FEpI49oP6RblPSYUNp9nV9/0bymNC1Vk=','admin','Dhamodhar','K'),(31,NULL,0,0,1,'2023-06-30 04:23:00.777323','dhanu@gmail.com','pbkdf2_sha256$600000$BPOyMJoF8Un9En8VsjrbhY$8hRdET2zU7kYFqyima6sAzO24dtS/fd8VFQlt348kQA=','admin','Dhanu','k'),(32,NULL,0,0,1,'2023-06-30 04:55:55.010469','enugurthiprathibha27@gmail.com','pbkdf2_sha256$600000$yIQ5Lwr2c2jZd8wFV786QC$ORy4YtTHmskWJdLiAnKV1gcZK3yXkaKV3Mbgsie61T8=','user','Prathibha','E'),(33,NULL,0,0,1,'2023-06-30 05:00:48.467886','raj@gmail.com','pbkdf2_sha256$600000$PWFDfgk7VtAjloxSA3Cu1q$9v9W0RmVvG1bnpGw/qaWf8zXNpqszg69CkjGFTk+l64=','admin','Raj','k'),(34,NULL,0,0,1,'2023-06-30 05:02:37.331932','enugu@gmail.com','pbkdf2_sha256$600000$mXxlFsfTFN3JShoKLC97i4$20i3AtHvqFHtStOWaKBYytyz78wXJnGxaRly0Y70O0E=','user','Prathibha','E');
/*!40000 ALTER TABLE `login_register` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-05 11:12:29
