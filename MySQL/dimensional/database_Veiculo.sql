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
-- Table structure for table `Veiculo`
--

DROP TABLE IF EXISTS `Veiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Veiculo` (
  `cdVeiculo` int NOT NULL AUTO_INCREMENT,
  `placa` varchar(10) DEFAULT NULL,
  `anoFabricacao` int NOT NULL,
  `chassi` varchar(20) NOT NULL,
  `VlrDiariaBase` decimal(10,2) NOT NULL,
  `Fabricante_cdFabricante` int NOT NULL,
  `TipoCombustivel_cdCombustivel` int NOT NULL,
  `ModeloVeiculo_cdModelo` int NOT NULL,
  `SituacaoVeiculo_cdSituacao` int NOT NULL,
  `TipoVeiculo_cdTipoVeiculo` int NOT NULL,
  PRIMARY KEY (`cdVeiculo`),
  KEY `fk_Veiculo_Fabricante1_idx` (`Fabricante_cdFabricante`),
  KEY `fk_Veiculo_TipoCombustivel1_idx` (`TipoCombustivel_cdCombustivel`),
  KEY `fk_Veiculo_ModeloVeiculo1_idx` (`ModeloVeiculo_cdModelo`),
  KEY `fk_Veiculo_SituacaoVeiculo1_idx` (`SituacaoVeiculo_cdSituacao`),
  KEY `fk_Veiculo_TipoVeiculo1_idx` (`TipoVeiculo_cdTipoVeiculo`),
  CONSTRAINT `fk_Veiculo_Fabricante1` FOREIGN KEY (`Fabricante_cdFabricante`) REFERENCES `Fabricante` (`cdFabricante`),
  CONSTRAINT `fk_Veiculo_ModeloVeiculo1` FOREIGN KEY (`ModeloVeiculo_cdModelo`) REFERENCES `ModeloVeiculo` (`cdModelo`),
  CONSTRAINT `fk_Veiculo_SituacaoVeiculo1` FOREIGN KEY (`SituacaoVeiculo_cdSituacao`) REFERENCES `SituacaoVeiculo` (`cdSituacao`),
  CONSTRAINT `fk_Veiculo_TipoCombustivel1` FOREIGN KEY (`TipoCombustivel_cdCombustivel`) REFERENCES `TipoCombustivel` (`cdCombustivel`),
  CONSTRAINT `fk_Veiculo_TipoVeiculo1` FOREIGN KEY (`TipoVeiculo_cdTipoVeiculo`) REFERENCES `TipoVeiculo` (`cdTipoVeiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Veiculo`
--

LOCK TABLES `Veiculo` WRITE;
/*!40000 ALTER TABLE `Veiculo` DISABLE KEYS */;
INSERT INTO `Veiculo` VALUES (1,'ABC-1234',2017,'CHASSI123456ABC',150.00,1,3,1,1,1),(2,'DEF-5678',2016,'CHASSI234567DEF',120.00,2,3,2,1,1),(3,'GHI-9012',2018,'CHASSI345678GHI',180.00,3,1,3,4,5),(4,'JKL-3456',2015,'CHASSI456789JKL',90.00,4,2,4,1,1),(5,'MNO-7890',2017,'CHASSI567890MNO',110.00,5,3,5,2,1);
/*!40000 ALTER TABLE `Veiculo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-16 23:47:50
