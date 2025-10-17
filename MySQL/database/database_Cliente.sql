-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: database
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `Cliente`
--

DROP TABLE IF EXISTS `Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cliente` (
  `cdCliente` int NOT NULL AUTO_INCREMENT,
  `nmCliente` varchar(100) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `RG` varchar(10) DEFAULT NULL,
  `habilitacao` varchar(45) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `dtNascimento` date NOT NULL,
  `telefonefixo` varchar(15) DEFAULT NULL,
  `endereco` longtext,
  `EstadoCivil_cdEstadoCivil` int DEFAULT NULL,
  `UF_cdUf` int NOT NULL,
  PRIMARY KEY (`cdCliente`),
  KEY `fk_Cliente_EstadoCivil1_idx` (`EstadoCivil_cdEstadoCivil`),
  KEY `fk_Cliente_UF1_idx` (`UF_cdUf`),
  CONSTRAINT `fk_Cliente_EstadoCivil1` FOREIGN KEY (`EstadoCivil_cdEstadoCivil`) REFERENCES `EstadoCivil` (`cdEstadoCivil`),
  CONSTRAINT `fk_Cliente_UF1` FOREIGN KEY (`UF_cdUf`) REFERENCES `UF` (`cdUf`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cliente`
--

LOCK TABLES `Cliente` WRITE;
/*!40000 ALTER TABLE `Cliente` DISABLE KEYS */;
INSERT INTO `Cliente` VALUES (1,'Joao Vitor','joao@email.com','27911112222','7654321','A12345','12345678901','1985-05-15','2730001000','Rua do Cliente 1, 10',2,1),(2,'Maria Helena','maria@email.com','31922223333','8765432','B23456','23456789012','1980-11-20','3130002000','Avenida do Cliente 2, 20',1,2),(3,'Pedro Henrique','pedro@email.com','21933334444','9876543','C34567','34567890123','1995-01-01',NULL,'Alameda do Cliente 3, 30',3,3),(4,'Ana Beatriz','ana@email.com','11944445555','1098765','D45678','45678901234','1970-08-25','1140003000','Rua do Cliente 4, 40',4,4),(5,'Ricardo Souza','ricardo@email.com','71955556666','1209876','E56789','56789012345','1990-03-10',NULL,'Praca do Cliente 5, 50',5,5);
/*!40000 ALTER TABLE `Cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-16 23:52:51
