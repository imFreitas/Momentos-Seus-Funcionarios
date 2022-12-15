CREATE DATABASE  IF NOT EXISTS `momento` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `momento`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: momento
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
-- Table structure for table `dependentes`
--

DROP TABLE IF EXISTS `dependentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dependentes` (
  `dependente_id` int NOT NULL AUTO_INCREMENT,
  `primeiro_nome` varchar(50) NOT NULL,
  `sobrenome` varchar(50) NOT NULL,
  `parentesco` varchar(25) NOT NULL,
  `funcionario_id` int NOT NULL,
  PRIMARY KEY (`dependente_id`),
  KEY `funcionario_id` (`funcionario_id`),
  CONSTRAINT `dependentes_ibfk_1` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionarios` (`funcionario_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependentes`
--

LOCK TABLES `dependentes` WRITE;
/*!40000 ALTER TABLE `dependentes` DISABLE KEYS */;
INSERT INTO `dependentes` VALUES (2,'Nick','Higgins','Filho(a)',205),(3,'Ed','Whalen','Filho(a)',200),(4,'Alice','King','Filho(a)',100),(5,'Johnny','Kochhar','Filho(a)',101),(6,'Bette','De Haan','Filho(a)',102),(7,'Grace','Faviet','Filho(a)',109),(8,'Matthew','Chen','Filho(a)',110),(9,'Joe','Sciarra','Filho(a)',111),(10,'Christian','Urman','Filho(a)',112),(11,'Zero','Popp','Filho(a)',113),(12,'Karl','Greenberg','Filho(a)',108),(13,'Duas','Mavris','Filho(a)',203),(14,'Vivien','Hunold','Filho(a)',103),(15,'Cuba','Ernst','Filho(a)',104),(16,'Fred','Austin','Filho(a)',105),(17,'Helen','Pataballa','Filho(a)',106),(18,'Dan','Lorentz','Filho(a)',107),(19,'Bob','Hartstein','Filho(a)',201),(20,'Lucie','Ferreira','Filho(a)',202),(21,'Kirsten','Baer','Filho(a)',204),(22,'Elvis','Khoo','Filho(a)',115),(23,'Sandra','Baida','Filho(a)',116),(24,'Cameron','Tobias','Filho(a)',117),(25,'Kevin','Himuro','Filho(a)',118),(26,'Rip','Colmenares','Filho(a)',119),(27,'Julia','Raphaely','Filho(a)',114),(28,'Woody','Russell','Filho(a)',145),(29,'Alec','Partners','Filho(a)',146),(30,'Sandra','Taylor','Filho(a)',176),(31,'Jennifer','King','Cônjuge',100),(32,'Uma','Mavris','Cônjuge',203),(33,'Salvadora','Ernst','Cônjuge',104);
/*!40000 ALTER TABLE `dependentes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-02 19:29:55
