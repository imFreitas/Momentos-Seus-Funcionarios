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
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `funcionario_id` int NOT NULL AUTO_INCREMENT,
  `primeiro_nome` varchar(20) DEFAULT NULL,
  `sobrenome` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `dataContratacao` date NOT NULL,
  `ocupacao_id` int NOT NULL,
  `salario` decimal(8,2) NOT NULL,
  `gerente_id` int DEFAULT NULL,
  `departamento_id` int DEFAULT NULL,
  PRIMARY KEY (`funcionario_id`),
  KEY `ocupacao_id` (`ocupacao_id`),
  KEY `departamento_id` (`departamento_id`),
  KEY `gerente_id` (`gerente_id`),
  CONSTRAINT `funcionarios_ibfk_1` FOREIGN KEY (`ocupacao_id`) REFERENCES `ocupacoes` (`ocupacao_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `funcionarios_ibfk_2` FOREIGN KEY (`departamento_id`) REFERENCES `departamento` (`departamento_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `funcionarios_ibfk_3` FOREIGN KEY (`gerente_id`) REFERENCES `funcionarios` (`funcionario_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (100,'Steven','King','steven.king@momento.org','515.123.4567','1987-06-17',4,24000.00,NULL,9),(101,'Neena','Kochhar','neena.kochhar@momento.org','515.123.4568','1989-09-21',5,17000.00,100,9),(102,'Lex','De Haan','lex.de haan@momento.org','515.123.4569','1993-01-13',5,17000.00,100,9),(103,'Alexander','Hunold','alexander.hunold@momento.org','590.423.4567','1990-01-03',9,9000.00,102,6),(104,'Bruce','Ernst','bruce.ernst@momento.org','590.423.4568','1991-05-21',9,6000.00,103,6),(105,'David','Austin','david.austin@momento.org','590.423.4569','1997-06-25',9,4800.00,103,6),(106,'Valli','Pataballa','valli.pataballa@momento.org','590.423.4560','1998-02-05',9,4800.00,103,6),(107,'Diana','Lorentz','diana.lorentz@momento.org','590.423.5567','1999-02-07',9,4200.00,103,6),(108,'Nancy','Greenberg','nancy.greenberg@momento.org','515.124.4569','1994-08-17',7,5000.00,101,10),(109,'Daniel','Faviet','daniel.faviet@momento.org','515.124.4169','1994-08-16',6,5000.00,108,10),(110,'John','Chen','john.chen@momento.org','515.124.4269','1997-09-28',6,5000.00,108,10),(111,'Ismael','Sciarra','ismael.sciarra@momento.org','515.124.4369','1997-09-30',6,5000.00,108,10),(112,'Jose Manuel','Urman','jose manuel.urman@momento.org','515.124.4469','1998-03-07',6,5000.00,108,10),(113,'Luis','Popp','luis.popp@momento.org','515.124.4567','1999-12-07',6,5000.00,108,10),(114,'Den','Raphaely','den.raphaely@momento.org','515.127.4561','1994-12-07',14,11000.00,100,3),(115,'Alexander','Khoo','alexander.khoo@momento.org','515.127.4562','1995-05-18',13,3100.00,114,3),(116,'Shelli','Baida','shelli.baida@momento.org','515.127.4563','1997-12-24',13,2900.00,114,3),(117,'Sigal','Tobias','sigal.tobias@momento.org','515.127.4564','1997-07-24',13,2800.00,114,3),(118,'Guy','Himuro','guy.himuro@momento.org','515.127.4565','1998-11-15',13,2600.00,114,3),(119,'Karen','Colmenares','karen.colmenares@momento.org','515.127.4566','1999-08-10',13,2500.00,114,3),(120,'Matthew','Weiss','matthew.weiss@momento.org','650.123.1234','1996-07-18',19,8000.00,100,5),(121,'Adam','Fripp','adam.fripp@momento.org','650.123.2234','1997-04-10',19,8200.00,100,5),(122,'Payam','Kaufling','payam.kaufling@momento.org','650.123.3234','1995-05-01',19,7900.00,100,5),(123,'Shanta','Vollman','shanta.vollman@momento.org','650.123.4234','1997-10-10',19,6500.00,100,5),(126,'Irene','Mikkilineni','irene.mikkilineni@momento.org','650.124.1224','1998-09-28',18,2700.00,120,5),(132,'juliana','kayne','julianakayne@gmail.com','119967841','2022-05-09',11,5000.00,101,1),(145,'John','Russell','john.russell@momento.org',NULL,'1996-10-01',15,14000.00,100,8),(146,'Karen','Partners','karen.partners@momento.org',NULL,'1997-01-05',15,13500.00,100,8),(176,'Jonathon','Taylor','jonathon.taylor@momento.org',NULL,'1998-03-24',16,8600.00,100,8),(177,'Jack','Livingston','jack.livingston@momento.org',NULL,'1998-04-23',16,8400.00,100,8),(178,'Kimberely','Grant','kimberely.grant@momento.org',NULL,'1999-05-24',16,7000.00,100,8),(179,'Charles','Johnson','charles.johnson@momento.org',NULL,'2000-01-04',16,6200.00,100,8),(192,'Sarah','Bell','sarah.bell@momento.org','650.501.1876','1996-02-04',17,4000.00,123,5),(193,'Britney','Everett','britney.everett@momento.org','650.501.2876','1997-03-03',17,3900.00,123,5),(200,'Jennifer','Whalen','jennifer.whalen@momento.org','515.123.4444','1987-09-17',3,5000.00,101,1),(201,'Michael','Hartstein','michael.hartstein@momento.org','515.123.5555','1996-02-17',10,13000.00,100,2),(202,'Pat','Ferreira','pat.Ferreira@momento.org','603.123.6666','1997-08-17',11,6000.00,201,2),(203,'Susan','Mavris','susan.mavris@momento.org','515.123.7777','1994-06-07',8,6500.00,101,4),(204,'Hermann','Baer','hermann.baer@momento.org','515.123.8888','1994-06-07',12,10000.00,101,7),(205,'Shelley','Higgins','shelley.higgins@momento.org','515.123.8080','1994-06-07',2,12000.00,101,11),(410,'murilo oliveira','santos','murilo@jogador','11585785648','2022-10-28',10,15000.00,NULL,6),(456,'fabiana','raulino','fabiana1@gmail','119412789','2022-10-29',7,5000.00,103,13),(520,'aron','cruz','aroncruz@gmail.com','1199397457','2022-05-09',11,5000.00,101,1),(543,'pedro','php','pedrophp@gmail.com','119978451','2022-05-09',11,5000.00,101,1),(756,'fernanda','lima','fernandal@gmail','119412789','2022-10-29',7,5000.00,101,13),(888,'willian','ferreira','willian@vida','11987564452','2022-10-29',7,5000.00,101,13),(943,'vitor','lima','vitorlima@gmail.com','11958847483','2022-05-09',11,5000.00,101,1),(973,'orosco','santos','oroscosantos@gmail.com','119957483','2022-05-09',11,5000.00,101,1),(1120,'marquinhos','guilherme','marcosgui@gmail.com','119964712','2022-05-09',11,5000.00,101,1);
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-02 19:29:54
