CREATE DATABASE  IF NOT EXISTS `projetoexp` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `projetoexp`;
-- MySQL dump 10.13  Distrib 5.5.49, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: projetoexp
-- ------------------------------------------------------
-- Server version	5.5.49-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Agente`
--

DROP TABLE IF EXISTS `Agente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Agente` (
  `idAgente` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `nomeAgente` varchar(60) NOT NULL,
  `cpfAgente` varchar(45) NOT NULL,
  PRIMARY KEY (`idAgente`),
  UNIQUE KEY `idAgente_UNIQUE` (`idAgente`),
  UNIQUE KEY `cpfAgente_UNIQUE` (`cpfAgente`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Agente`
--

LOCK TABLES `Agente` WRITE;
/*!40000 ALTER TABLE `Agente` DISABLE KEYS */;
/*!40000 ALTER TABLE `Agente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Relatorio`
--

DROP TABLE IF EXISTS `Relatorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Relatorio` (
  `idRelatorio` int(10) unsigned zerofill NOT NULL,
  `dataRelatorio` date NOT NULL,
  `horaRelatorio` datetime NOT NULL,
  `descricaoRelatorio` longtext NOT NULL,
  `agenteRelatorio` int(10) unsigned zerofill NOT NULL,
  `residenciaRelatorio` int(10) unsigned zerofill NOT NULL,
  PRIMARY KEY (`idRelatorio`),
  KEY `fk_Relatorio_1_idx` (`agenteRelatorio`),
  KEY `residenciaRelatorio_idx` (`residenciaRelatorio`),
  CONSTRAINT `residenciaRelatorio` FOREIGN KEY (`residenciaRelatorio`) REFERENCES `Residencia` (`idResidencia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `agenteRelatorio` FOREIGN KEY (`agenteRelatorio`) REFERENCES `Agente` (`idAgente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Relatorio`
--

LOCK TABLES `Relatorio` WRITE;
/*!40000 ALTER TABLE `Relatorio` DISABLE KEYS */;
/*!40000 ALTER TABLE `Relatorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Residencia`
--

DROP TABLE IF EXISTS `Residencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Residencia` (
  `idResidencia` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `cepResidencia` int(10) unsigned zerofill NOT NULL,
  `nomeruaResidencia` varchar(70) NOT NULL,
  `numeroResidencia` int(10) unsigned zerofill NOT NULL,
  `moradorResidencia` varchar(45) NOT NULL,
  PRIMARY KEY (`idResidencia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Residencia`
--

LOCK TABLES `Residencia` WRITE;
/*!40000 ALTER TABLE `Residencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `Residencia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-06 19:56:40
