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
-- Table structure for table `ocupacoes`
--

DROP TABLE IF EXISTS `ocupacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ocupacoes` (
  `ocupacao_id` int NOT NULL AUTO_INCREMENT,
  `ocupacao_title` varchar(35) NOT NULL,
  `min_salario` decimal(8,2) DEFAULT NULL,
  `max_salario` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`ocupacao_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ocupacoes`
--

LOCK TABLES `ocupacoes` WRITE;
/*!40000 ALTER TABLE `ocupacoes` DISABLE KEYS */;
INSERT INTO `ocupacoes` VALUES (1,'Auxiliar de Almoxarifado Júnior',4200.00,9000.00),(2,'Gerente de contabilidade',8200.00,16000.00),(3,'Assistente Administrativo',3000.00,6000.00),(4,'Presidente',20000.00,40000.00),(5,'Vice-presidente de administração',15000.00,30000.00),(6,'Contador',4200.00,9000.00),(7,'Gerente de Finanças',8200.00,16000.00),(8,'Representante de Recursos Humanos',4000.00,9000.00),(9,'Desenvolvedor Web',4000.00,10000.00),(10,'Gerente de Marketing',9000.00,15000.00),(11,'Representante de Marketing',4000.00,9000.00),(12,'Relações Públicas',4500.00,10500.00),(13,'Escriturário de compras',2500.00,5500.00),(14,'Gerente de Compras',8000.00,15000.00),(15,'Gerente de Vendas',10000.00,20000.00),(16,'Representante de Vendas',6000.00,12000.00),(17,'Vendedor',2500.00,5500.00),(18,'Estoquista',2000.00,5000.00),(19,'Gerente de Estoque',5500.00,8500.00);
/*!40000 ALTER TABLE `ocupacoes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-02 19:29:53
