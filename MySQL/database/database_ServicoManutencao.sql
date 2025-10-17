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
-- Table structure for table `ServicoManutencao`
--

DROP TABLE IF EXISTS `ServicoManutencao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ServicoManutencao` (
  `ManutencaoVeiculo_cdManutencao` int NOT NULL,
  `ServicoManutencao_cdServico` int NOT NULL,
  `dtConclusao` date DEFAULT NULL,
  `observacoes` longtext,
  `custo` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`ManutencaoVeiculo_cdManutencao`,`ServicoManutencao_cdServico`),
  KEY `fk_ManutencaoVeiculo_has_ServicoManutencao_ServicoManutenca_idx` (`ServicoManutencao_cdServico`),
  KEY `fk_ManutencaoVeiculo_has_ServicoManutencao_ManutencaoVeicul_idx` (`ManutencaoVeiculo_cdManutencao`),
  CONSTRAINT `fk_ManutencaoVeiculo_has_ServicoManutencao_ManutencaoVeiculo1` FOREIGN KEY (`ManutencaoVeiculo_cdManutencao`) REFERENCES `ManutencaoVeiculo` (`cdManutencao`),
  CONSTRAINT `fk_ManutencaoVeiculo_has_ServicoManutencao_ServicoManutencao1` FOREIGN KEY (`ServicoManutencao_cdServico`) REFERENCES `Servico` (`cdServico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ServicoManutencao`
--

LOCK TABLES `ServicoManutencao` WRITE;
/*!40000 ALTER TABLE `ServicoManutencao` DISABLE KEYS */;
INSERT INTO `ServicoManutencao` VALUES (1,1,'2017-12-28','Troca de oleo padrao.',150.00),(1,2,'2017-12-29','Revisao e limpeza de pastilhas.',80.00),(2,3,'2018-01-06','Alinhamento completo.',120.00),(3,4,'2018-01-19','Aguardando chegada de pneus.',350.00),(4,5,'2018-03-08','Lavagem e higienizacao interna.',95.00);
/*!40000 ALTER TABLE `ServicoManutencao` ENABLE KEYS */;
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
