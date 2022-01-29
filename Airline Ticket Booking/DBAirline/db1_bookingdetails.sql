-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: db1
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `bookingdetails`
--

DROP TABLE IF EXISTS `bookingdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookingdetails` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `date_of_journey` date DEFAULT NULL,
  `from_location` varchar(50) DEFAULT NULL,
  `final_location` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookingdetails`
--

LOCK TABLES `bookingdetails` WRITE;
/*!40000 ALTER TABLE `bookingdetails` DISABLE KEYS */;
INSERT INTO `bookingdetails` VALUES (1,'shahsank','asa@gmail.com','1234567890','sdcasas','2022-01-17','acsdcs','dscsds'),(2,'dcs','csdc@asxas','scdsdccdsdc','bvb vb','2022-01-12','fvdfv','dfvdfv'),(3,'dcs','csdc@asxas','scdsdccdsdc','bvb vb','2022-01-12','fvdfv','dfvdfv'),(4,'dcs','csdc@asxas','scdsdccdsdc','bvb vb','2022-01-12','fvdfv','dfvdfv'),(5,'dcs','csdc@asxas','scdsdccdsdc','bvb vb','2022-01-12','fvdfv','dfvdfv'),(6,'dcs','csdc@asxas','scdsdccdsdc','bvb vb','2022-01-12','fvdfv','dfvdfv'),(7,'dscd','dsc@sdcsd','scdfbdfbdfvfdvs','csdcs','2022-01-01','sdcsdcs','sdcsdcs'),(8,'shivam ','sss@gmail.com','1234567890','bangalore','2022-01-13','pune','delhi'),(9,'s','s@s','1234567890','s','2022-01-08','s','s'),(10,'fsdvs','cds@gmail.com','cdshbkdsjbckj','cskdcbkj','2022-01-05','csdcs','sdsdv'),(11,'vsdvsdv','sdvs@vfsfs','dvsdvfvdfvdfv','vsdvsvsvs','2022-01-06','dvsdvs','vsdfvd'),(12,'dssdv','ds@sd','sdvsdvdfvdv','fvdfvdvf','2021-12-29','fdvdfvdf','fvdvfv'),(13,'dssdv','ds@sd','sdvsdvdfvdv','fvdfvdvf','2021-12-29','fdvdfvdf','fvdvfv');
/*!40000 ALTER TABLE `bookingdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-24  1:16:31
