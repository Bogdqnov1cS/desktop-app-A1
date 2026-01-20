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
-- Table structure for table `citalac`
--

DROP TABLE IF EXISTS `citalac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `citalac` (
  `CitalacID` int NOT NULL AUTO_INCREMENT,
  `MaticniBroj` varchar(13) NOT NULL,
  `Ime` varchar(50) NOT NULL,
  `Prezime` varchar(50) NOT NULL,
  `Adresa` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CitalacID`),
  UNIQUE KEY `MaticniBroj` (`MaticniBroj`)
) ENGINE=InnoDB AUTO_INCREMENT=44542 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `citalac`
--

LOCK TABLES `citalac` WRITE;
/*!40000 ALTER TABLE `citalac` DISABLE KEYS */;
INSERT INTO `citalac` VALUES (1,'1234567890123','Nikola','Petrović','Beograd, Nemanjina 4'),(2,'2345678901234','Ana','Jovanović','Novi Sad, Dunavska 12'),(3,'3456789012345','Marko','Ilić','Niš, Voždova 8'),(4,'4567890123456','Jelena','Stanković','Kragujevac, Svetozara Markovića 20'),(5,'5678901234567','Milan','Đorđević','Subotica, Trg Slobode 1'),(6,'6789012345678','Ivana','Nikolić','Zrenjanin, Kralja Petra 5'),(7,'7890123456789','Stefan','Pavlović','Pančevo, Žarka Zrenjanina 9'),(8,'8901234567890','Marija','Lukić','Valjevo, Kneza Miloša 10'),(9,'9012345678901','Lazar','Milovanović','Sombor, Apatinska 15'),(10,'0123456789012','Tamara','Radović','Čačak, Cara Dušana 7'),(123,'123','Stefan','Bogdanovic','Naselje Preko Ponjavice 32'),(44541,'5413234','Ivan','Ivanovic','Kralja Milana 13');
/*!40000 ALTER TABLE `citalac` ENABLE KEYS */;
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
