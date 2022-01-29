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
-- Table structure for table `airlinesdetails`
--

DROP TABLE IF EXISTS `airlinesdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airlinesdetails` (
  `num` int DEFAULT NULL,
  `airlines` varchar(50) DEFAULT NULL,
  `start_from` varchar(50) DEFAULT NULL,
  `dest` varchar(50) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  UNIQUE KEY `num` (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airlinesdetails`
--

LOCK TABLES `airlinesdetails` WRITE;
/*!40000 ALTER TABLE `airlinesdetails` DISABLE KEYS */;
INSERT INTO `airlinesdetails` VALUES (1001,'British Airways','pune','chennai','12:10pm'),(1002,'British Airways','chennai','pune','12:00am'),(1003,'British Airways','pune','bangalore','11:10pm'),(1004,'British Airways','bangalore','pune','1:10pm'),(1005,'British Airways','bangalore','chennai','10:10am'),(1006,'British Airways','chennai','bangalore','12:30pm'),(2001,'Dutch Airways','pune','chennai','12:10pm'),(2002,'Dutch Airways','chennai','pune','12:00am'),(2003,'Dutch Airways','pune','bangalore','11:10pm'),(2004,'Dutch Airways','bangalore','pune','1:10pm'),(2005,'Dutch Airways','bangalore','chennai','10:10am'),(2006,'Dutch Airways','chennai','bangalore','12:30pm'),(3001,'AirIndia','pune','chennai','12:10pm'),(3002,'AirIndia','chennai','pune','12:00am'),(3003,'AirIndia','pune','bangalore','11:10pm'),(3004,'AirIndia','bangalore','pune','1:10pm'),(3005,'AirIndia','bangalore','chennai','10:10am'),(3006,'AirIndia','chennai','bangalore','12:30pm'),(4001,'Spice Jet','pune','chennai','12:10pm'),(4002,'Spice Jet','chennai','pune','12:00am'),(4003,'Spice Jet','pune','bangalore','11:10pm'),(4004,'Spice Jet','bangalore','pune','1:10pm'),(4005,'Spice Jet','bangalore','chennai','10:10am'),(4006,'Spice Jet','chennai','bangalore','12:30pm'),(5001,'IndiGo','pune','chennai','12:10pm'),(5002,'IndiGo','chennai','pune','12:00am'),(5003,'IndiGo','pune','bangalore','11:10pm'),(5004,'IndiGo','bangalore','pune','1:10pm'),(5005,'IndiGo','bangalore','chennai','10:10am'),(5006,'IndiGo','chennai','bangalore','12:30pm'),(6001,'AirAsia','pune','chennai','12:10pm'),(6002,'AirAsia','chennai','pune','12:00am'),(6003,'AirAsia','pune','bangalore','11:10pm'),(6004,'AirAsia','bangalore','pune','1:10pm'),(6005,'AirAsia','bangalore','chennai','10:10am'),(6006,'AirAsia','chennai','bangalore','12:30pm'),(7001,'Vistara','pune','chennai','12:10pm'),(7002,'Vistara','chennai','pune','12:00am'),(7003,'Vistara','pune','bangalore','11:10pm'),(7004,'Vistara','bangalore','pune','1:10pm'),(7005,'Vistara','bangalore','chennai','10:10am'),(7006,'Vistara','chennai','bangalore','12:30pm'),(8001,'DaccanAirways','pune','chennai','12:10pm'),(8002,'DaccanAirways','chennai','pune','12:00am'),(8003,'DaccanAirways','pune','bangalore','11:10pm'),(8004,'DaccanAirways','bangalore','pune','1:10pm'),(8005,'DaccanAirways','bangalore','chennai','10:10am'),(8006,'DaccanAirways','chennai','bangalore','12:30pm'),(9001,'AirIndiaExpress','pune','chennai','12:10pm'),(9002,'AirIndiaExpress','chennai','pune','12:00am'),(9003,'AirIndiaExpress','pune','bangalore','11:10pm'),(9004,'AirIndiaExpress','bangalore','pune','1:10pm'),(9005,'AirIndiaExpress','bangalore','chennai','10:10am'),(9006,'AirIndiaExpress','chennai','bangalore','12:30pm'),(9091,'GoFirst','pune','chennai','12:10pm'),(9092,'GoFirst','chennai','pune','12:00am'),(9093,'GoFirst','pune','bangalore','11:10pm'),(9094,'GoFirst','bangalore','pune','1:10pm'),(9095,'GoFirst','bangalore','chennai','10:10am'),(9096,'GoFirst','chennai','bangalore','12:30pm');
/*!40000 ALTER TABLE `airlinesdetails` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-24  1:16:32
