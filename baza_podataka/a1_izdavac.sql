CREATE DATABASE  IF NOT EXISTS `a1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `a1`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: a1
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `izdavac`
--

DROP TABLE IF EXISTS `izdavac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `izdavac` (
  `IzdavacID` int NOT NULL AUTO_INCREMENT,
  `NazivIzdavaca` varchar(100) NOT NULL,
  `Adresa` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IzdavacID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `izdavac`
--

LOCK TABLES `izdavac` WRITE;
/*!40000 ALTER TABLE `izdavac` DISABLE KEYS */;
INSERT INTO `izdavac` VALUES (1,'Prosveta','Beograd, Kneza Miloša 14'),(2,'Nolit','Beograd, Cara Dušana 6'),(3,'Laguna','Beograd, Resavska 33'),(4,'Vulkan','Beograd, Knez Mihailova 12'),(5,'Zavod za udžbenike','Novi Sad, Narodnog Fronta 21'),(6,'Matica Srpska','Novi Sad, Matice srpske 1'),(7,'Narodna knjiga','Beograd, Gavrila Principa 9'),(8,'Slovo ljubve','Beograd, Terazije 19'),(9,'Čarobna knjiga','Beograd, Dositejeva 5'),(10,'Arhipelag','Beograd, Simina 7');
/*!40000 ALTER TABLE `izdavac` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-21  0:14:45
