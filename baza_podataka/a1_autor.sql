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
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autor` (
  `AutorID` int NOT NULL AUTO_INCREMENT,
  `Ime` varchar(50) NOT NULL,
  `Prezime` varchar(50) NOT NULL,
  `DatumRodjenja` date DEFAULT NULL,
  `Adresa` varchar(100) DEFAULT NULL,
  `Zvanje` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`AutorID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'Ivo','Andrić','1892-10-09','Beograd, Andrićev venac 1','Književnik'),(2,'Branko','Ćopić','1915-01-01','Beograd, Resavska 15','Pisac'),(3,'Meša','Selimović','1910-04-26','Sarajevo, Maršala Tita 12','Književnik'),(4,'Miloš','Crnjanski','1893-10-26','London, Kensington 5','Književnik'),(5,'Laza','Kostić','1841-02-12','Beč, Prater 9','Pesnik'),(6,'Jovan','Dučić','1871-02-15','Trebinje, Glavna 10','Pesnik'),(7,'Desanka','Maksimović','1898-05-16','Valjevo, Zmaj Jovina 3','Pesnikinja'),(8,'Aleksa','Šantić','1868-05-27','Mostar, Šantićeva 2','Pesnik'),(9,'Dobrica','Ćosić','1921-12-29','Beograd, Svetozara Markovića 17','Pisac'),(10,'Petar','Kočić','1877-06-29','Banja Luka, Kočićeva 11','Pisac');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
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
