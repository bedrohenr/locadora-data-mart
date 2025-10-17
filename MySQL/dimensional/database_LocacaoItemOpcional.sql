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
-- Table structure for table `LocacaoItemOpcional`
--

DROP TABLE IF EXISTS `LocacaoItemOpcional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `LocacaoItemOpcional` (
  `Locacao_cdLocacao` int NOT NULL,
  `ItemOpcional_cdItemOpcional` int NOT NULL,
  `vlrDiariaCobrado` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Locacao_cdLocacao`,`ItemOpcional_cdItemOpcional`),
  KEY `fk_Acessorios_has_Locacao_Locacao1_idx` (`Locacao_cdLocacao`),
  KEY `fk_LocacaoItemOpcional_ItemOpcional1_idx` (`ItemOpcional_cdItemOpcional`),
  CONSTRAINT `fk_Acessorios_has_Locacao_Locacao1` FOREIGN KEY (`Locacao_cdLocacao`) REFERENCES `Locacao` (`cdLocacao`),
  CONSTRAINT `fk_LocacaoItemOpcional_ItemOpcional1` FOREIGN KEY (`ItemOpcional_cdItemOpcional`) REFERENCES `ItemOpcional` (`cdItemOpcional`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LocacaoItemOpcional`
--

LOCK TABLES `LocacaoItemOpcional` WRITE;
/*!40000 ALTER TABLE `LocacaoItemOpcional` DISABLE KEYS */;
INSERT INTO `LocacaoItemOpcional` VALUES (1,1,15.00),(1,2,20.00),(2,4,25.00),(3,1,15.00),(5,5,12.50);
/*!40000 ALTER TABLE `LocacaoItemOpcional` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-16 23:47:51
