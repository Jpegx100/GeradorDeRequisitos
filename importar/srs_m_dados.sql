CREATE DATABASE  IF NOT EXISTS `srs` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `srs`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: srs
-- ------------------------------------------------------
-- Server version	5.6.15-log

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
-- Table structure for table `dados`
--

DROP TABLE IF EXISTS `dados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_referencia` int(11) NOT NULL,
  `id_radical` int(11) NOT NULL,
  `id_palavra` int(11) NOT NULL,
  `f` int(11) DEFAULT NULL,
  `rf` float DEFAULT NULL,
  `idf` float DEFAULT NULL,
  `id_projeto` int(11) DEFAULT NULL,
  `qtd_doc` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `i_ref_rad_pal` (`id_referencia`,`id_radical`,`id_palavra`,`id_projeto`),
  KEY `FK_dados_palavra_id` (`id_palavra`),
  KEY `FK_dados_radical_id` (`id_radical`),
  KEY `fk_dados_projeto_idx` (`id_projeto`),
  CONSTRAINT `FK_dados_referencia_id` FOREIGN KEY (`id_referencia`) REFERENCES `referencia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_dados_palavra_id` FOREIGN KEY (`id_palavra`) REFERENCES `palavra` (`id`),
  CONSTRAINT `FK_dados_radical_id` FOREIGN KEY (`id_radical`) REFERENCES `radical` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dados`
--

LOCK TABLES `dados` WRITE;
/*!40000 ALTER TABLE `dados` DISABLE KEYS */;
INSERT INTO `dados` (`id`,`id_referencia`,`id_radical`,`id_palavra`,`f`,`rf`,`idf`,`id_projeto`,`qtd_doc`) VALUES (1,1,112,80,1,0.388,1,1,1),(2,1,84,58,1,0.388,1,1,1),(3,1,125,106,1,0.388,1,1,1),(4,1,134,107,1,0.388,1,1,1),(5,1,71,123,1,0.388,1,1,1),(6,1,135,141,2,0.775,2,1,1),(7,1,77,115,2,0.775,2,1,1),(8,1,131,47,1,0.388,1,1,1),(9,1,28,98,1,0.388,1,1,1),(10,1,74,119,2,0.775,2,1,1),(11,1,138,138,1,0.388,1,1,1),(12,1,116,132,1,0.388,1,1,1),(13,1,37,36,3,1.163,3,1,1),(14,1,99,87,1,0.388,1,1,1),(15,1,86,99,2,0.775,2,1,1),(16,1,62,45,1,0.388,1,1,1),(17,1,83,140,3,1.163,3,1,1),(18,1,52,60,1,0.388,1,1,1),(19,1,25,91,1,0.388,1,1,1),(20,1,42,26,1,0.388,1,1,1),(21,1,90,135,1,0.388,1,1,1),(22,1,47,49,1,0.388,1,1,1),(23,1,123,72,1,0.388,1,1,1),(24,1,137,142,1,0.388,1,1,1),(25,1,34,55,1,0.388,1,1,1),(26,1,82,117,1,0.388,1,1,1),(27,1,58,128,2,0.775,2,1,1),(28,1,39,43,1,0.388,1,1,1),(29,1,40,31,1,0.388,1,1,1),(30,1,45,28,1,0.388,1,1,1),(31,1,111,144,1,0.388,1,1,1),(32,1,103,62,1,0.388,1,1,1),(33,1,64,48,1,0.388,1,1,1),(34,1,14,18,1,0.388,1,1,1),(35,1,118,133,2,0.775,2,1,1),(36,1,98,113,2,0.775,2,1,1),(37,1,85,96,2,0.775,2,1,1),(38,1,79,40,1,0.388,1,1,1),(39,1,87,101,1,0.388,1,1,1),(40,1,57,126,1,0.388,1,1,1),(41,1,136,41,1,0.388,1,1,1),(42,1,113,88,1,0.388,1,1,1),(43,1,60,89,2,0.775,2,1,1),(44,1,73,104,2,0.775,2,1,1),(45,1,133,38,1,0.388,1,1,1),(46,1,89,105,1,0.388,1,1,1),(47,1,109,110,1,0.388,1,1,1),(48,1,32,35,1,0.388,1,1,1),(49,1,100,84,1,0.388,1,1,1),(50,1,127,24,1,0.388,1,1,1),(51,1,110,81,1,0.388,1,1,1),(52,1,129,93,1,0.388,1,1,1),(53,1,70,27,2,0.775,2,1,1),(54,1,33,127,2,0.775,2,1,1),(55,1,67,76,1,0.388,1,1,1),(56,1,83,78,13,5.039,13,1,1),(57,1,101,108,4,1.55,4,1,1),(58,1,66,64,1,0.388,1,1,1),(59,1,23,54,1,0.388,1,1,1),(60,1,76,68,1,0.388,1,1,1),(61,1,50,50,1,0.388,1,1,1),(62,1,91,53,1,0.388,1,1,1),(63,1,93,114,1,0.388,1,1,1),(64,1,81,131,5,1.938,5,1,1),(65,1,108,69,1,0.388,1,1,1),(66,1,88,33,1,0.388,1,1,1),(67,1,128,137,1,0.388,1,1,1),(68,1,114,86,1,0.388,1,1,1),(69,1,92,37,1,0.388,1,1,1),(70,1,64,73,2,0.775,2,1,1),(71,1,69,56,2,0.775,2,1,1),(72,1,97,65,1,0.388,1,1,1),(73,1,107,129,13,5.039,13,1,1),(74,1,17,16,1,0.388,1,1,1),(75,1,94,66,3,1.163,3,1,1),(76,1,55,82,1,0.388,1,1,1),(77,1,48,51,2,0.775,2,1,1),(78,1,43,100,1,0.388,1,1,1),(79,1,41,74,1,0.388,1,1,1),(80,1,59,75,42,16.279,42,1,1),(81,1,120,25,3,1.163,3,1,1),(82,1,102,112,2,0.775,2,1,1),(83,1,96,94,2,0.775,2,1,1),(84,1,119,90,3,1.163,3,1,1),(85,1,61,67,1,0.388,1,1,1),(86,1,115,130,1,0.388,1,1,1),(87,1,59,83,2,0.775,2,1,1),(88,1,68,77,1,0.388,1,1,1),(89,1,49,109,2,0.775,2,1,1),(90,1,139,143,3,1.163,3,1,1),(91,1,95,120,1,0.388,1,1,1),(92,1,75,85,1,0.388,1,1,1),(93,1,130,111,1,0.388,1,1,1),(94,1,63,42,3,1.163,3,1,1),(95,1,24,79,1,0.388,1,1,1),(96,1,122,145,2,0.775,2,1,1),(97,1,107,30,1,0.388,1,1,1),(98,1,77,44,1,0.388,1,1,1),(99,1,11,10,1,0.388,1,1,1),(100,1,72,136,3,1.163,3,1,1),(101,1,104,134,4,1.55,4,1,1),(102,1,30,32,2,0.775,2,1,1),(103,1,81,146,1,0.388,1,1,1),(104,1,78,95,1,0.388,1,1,1),(105,1,54,61,2,0.775,2,1,1),(106,1,140,97,2,0.775,2,1,1),(107,1,117,124,1,0.388,1,1,1),(108,1,106,71,1,0.388,1,1,1),(109,1,38,52,6,2.326,6,1,1),(110,1,105,125,4,1.55,4,1,1),(111,1,29,122,1,0.388,1,1,1),(112,1,65,92,1,0.388,1,1,1),(113,1,53,147,1,0.388,1,1,1),(114,1,121,29,1,0.388,1,1,1),(115,1,31,34,4,1.55,4,1,1),(116,1,44,102,5,1.938,5,1,1),(117,1,26,116,1,0.388,1,1,1),(118,1,124,121,1,0.388,1,1,1),(119,1,36,39,1,0.388,1,1,1),(120,1,46,70,1,0.388,1,1,1),(121,1,80,139,2,0.775,2,1,1),(122,1,56,103,1,0.388,1,1,1),(123,1,27,57,2,0.775,2,1,1),(124,1,126,63,1,0.388,1,1,1),(125,1,35,118,1,0.388,1,1,1),(126,1,132,46,1,0.388,1,1,1),(127,1,51,59,1,0.388,1,1,1);
/*!40000 ALTER TABLE `dados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-10 15:19:56
