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
-- Table structure for table `Funcionario`
--

DROP TABLE IF EXISTS `Funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Funcionario` (
  `codFunc` int NOT NULL AUTO_INCREMENT,
  `matricula` varchar(15) NOT NULL,
  `nmFunc` varchar(100) NOT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `telResidencial` varchar(15) DEFAULT NULL,
  `endereco` longtext,
  `RG` varchar(10) DEFAULT NULL,
  `Cargo_cdCargo` int NOT NULL,
  `UF_cdUf` int NOT NULL,
  PRIMARY KEY (`codFunc`),
  KEY `fk_Funcionario_Cargo1_idx` (`Cargo_cdCargo`),
  KEY `fk_Funcionario_UF1_idx` (`UF_cdUf`),
  CONSTRAINT `fk_Funcionario_Cargo1` FOREIGN KEY (`Cargo_cdCargo`) REFERENCES `Cargo` (`cdCargo`),
  CONSTRAINT `fk_Funcionario_UF1` FOREIGN KEY (`UF_cdUf`) REFERENCES `UF` (`cdUf`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Funcionario`
--

LOCK TABLES `Funcionario` WRITE;
/*!40000 ALTER TABLE `Funcionario` DISABLE KEYS */;
INSERT INTO `Funcionario` VALUES (1,'M001','Ana Costa Silva','27999991111','11122233301','2733331111','Rua A, 100','1234567',1,1),(2,'M002','Bruno Souza Lima','31988882222','22233344402','3132222222','Av B, 200','2345678',2,2),(3,'M003','Carla Mendes Pereira','21977773333','33344455503','2125553333','Travessa C, 300','3456789',3,3),(4,'M004','Daniel Ribeiro Gomes','11966664444','44455566604','1140004444','Estrada D, 400','4567890',4,4),(5,'M005','Elisa Martins Santos','71955555555','55566677705','7135555555','Praca E, 500','5678901',5,5);
/*!40000 ALTER TABLE `Funcionario` ENABLE KEYS */;
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
