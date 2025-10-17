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
-- Table structure for table `Locacao`
--

DROP TABLE IF EXISTS `Locacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Locacao` (
  `cdLocacao` int NOT NULL AUTO_INCREMENT,
  `dtInicio` date NOT NULL,
  `dtFim` date DEFAULT NULL,
  `vlrDiaria` decimal(10,2) NOT NULL,
  `kmInicial` int NOT NULL,
  `kmFinal` int DEFAULT NULL,
  `Veiculo_cdVeiculo` int NOT NULL,
  `Funcionario_codFunc` int NOT NULL,
  `Cliente_cdCliente` int NOT NULL,
  PRIMARY KEY (`cdLocacao`),
  KEY `fk_Locacao_Veiculo1_idx` (`Veiculo_cdVeiculo`),
  KEY `fk_Locacao_Funcionario1_idx` (`Funcionario_codFunc`),
  KEY `fk_Locacao_Cliente1_idx` (`Cliente_cdCliente`),
  CONSTRAINT `fk_Locacao_Cliente1` FOREIGN KEY (`Cliente_cdCliente`) REFERENCES `Cliente` (`cdCliente`),
  CONSTRAINT `fk_Locacao_Funcionario1` FOREIGN KEY (`Funcionario_codFunc`) REFERENCES `Funcionario` (`codFunc`),
  CONSTRAINT `fk_Locacao_Veiculo1` FOREIGN KEY (`Veiculo_cdVeiculo`) REFERENCES `Veiculo` (`cdVeiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Locacao`
--

LOCK TABLES `Locacao` WRITE;
/*!40000 ALTER TABLE `Locacao` DISABLE KEYS */;
INSERT INTO `Locacao` VALUES (1,'2018-01-01','2018-01-05',150.00,10000,10500,1,2,1),(2,'2018-01-10','2018-01-15',120.00,20000,21000,2,2,2),(3,'2018-02-01','2018-02-05',110.00,5000,5600,5,1,3),(4,'2018-02-15','2018-02-18',180.00,15000,15300,3,4,4),(5,'2018-03-01','2018-03-05',90.00,30000,30600,4,2,5);
/*!40000 ALTER TABLE `Locacao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-16 23:52:52
