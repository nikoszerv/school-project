CREATE DATABASE  IF NOT EXISTS `orders,customers` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `orders,customers`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: orders,customers
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `City` varchar(255) NOT NULL,
  `RegistrationDate` date NOT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'John Doe','Athens','2022-01-15'),(2,'Jane Smith','Thessaloniki','2022-02-10'),(3,'Mike Johnson','Patras','2022-03-05'),(4,'Emily Davis','Heraklion','2022-04-12'),(5,'Chris Brown','Larissa','2022-05-20'),(6,'Sophia Wilson','Volos','2022-06-25'),(7,'James Miller','Ioannina','2022-07-30'),(8,'Emma Moore','Chania','2022-08-18'),(9,'Oliver Taylor','Kavala','2022-09-05'),(10,'Isabella Anderson','Rhodes','2022-10-15'),(11,'John Doe','Athens','2022-01-15'),(12,'Jane Smith','Thessaloniki','2022-02-10'),(13,'Mike Johnson','Patras','2022-03-05'),(14,'Emily Davis','Heraklion','2022-04-12'),(15,'Chris Brown','Larissa','2022-05-20'),(16,'Sophia Wilson','Volos','2022-06-25'),(17,'James Miller','Ioannina','2022-07-30'),(18,'Emma Moore','Chania','2022-08-18'),(19,'Oliver Taylor','Kavala','2022-09-05'),(20,'Isabella Anderson','Rhodes','2022-10-15'),(21,'John Doe','Athens','2022-01-15'),(22,'Jane Smith','Thessaloniki','2022-02-10'),(23,'Mike Johnson','Patras','2022-03-05'),(24,'Emily Davis','Heraklion','2022-04-12'),(25,'Chris Brown','Larissa','2022-05-20'),(26,'Sophia Wilson','Volos','2022-06-25'),(27,'James Miller','Ioannina','2022-07-30'),(28,'Emma Moore','Chania','2022-08-18'),(29,'Oliver Taylor','Kavala','2022-09-05'),(30,'Isabella Anderson','Rhodes','2022-10-15'),(31,'John Doe','Athens','2022-01-15'),(32,'Jane Smith','Thessaloniki','2022-02-10'),(33,'Mike Johnson','Patras','2022-03-05'),(34,'Emily Davis','Heraklion','2022-04-12'),(35,'Chris Brown','Larissa','2022-05-20'),(36,'Sophia Wilson','Volos','2022-06-25'),(37,'James Miller','Ioannina','2022-07-30'),(38,'Emma Moore','Chania','2022-08-18'),(39,'Oliver Taylor','Kavala','2022-09-05'),(40,'Isabella Anderson','Rhodes','2022-10-15');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `CustomerID` int NOT NULL,
  `OrderDate` date NOT NULL,
  `TotalAmount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `(CustomerID_idx` (`CustomerID`),
  CONSTRAINT `(CustomerID` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (46,1,'2024-08-10',150.50),(47,2,'2024-08-15',200.00),(49,4,'2024-09-12',120.00),(50,5,'2024-09-20',450.25),(51,6,'2024-09-05',175.00),(52,7,'2024-10-15',220.40),(53,8,'2024-10-20',310.60),(54,9,'2024-10-05',500.00),(55,10,'2024-11-15',125.80),(56,1,'2024-11-20',400.00),(57,2,'2024-11-25',250.50),(58,3,'2024-12-05',275.75),(59,4,'2024-12-10',180.90),(60,5,'2024-12-15',350.00);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-30 14:09:14
