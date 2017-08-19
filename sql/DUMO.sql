-- write by alexsey rebouças
--orientador fred jasein
-- MySQL dump 10.13  Distrib 5.5.27, for Win32 (x86)

--

-- Host: localhost    Database: gdx

-- ------------------------------------------------------

-- Server version	5.5.27-log


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

-- Table structure for table `morador`

--


DROP TABLE IF EXISTS `morador`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `morador` (

  `nome` varchar(30) NOT NULL,

  `sexo` enum('m','f') NOT NULL,

  `nascimento` date NOT NULL,

  `pass` varchar(30) NOT NULL,

  `id` int(11) NOT NULL AUTO_INCREMENT,

  PRIMARY KEY (`id`)

) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*!40101 SET character_set_client = @saved_cs_client */;


--

-- Dumping data for table `morador`

--


LOCK TABLES `morador` WRITE;

/*!40000 ALTER TABLE `morador` DISABLE KEYS */;

INSERT INTO `morador` VALUES ('brunno','m','1990-09-09','cachorro',1),('mariana','f','1992-03-04','ratinho',2),('karol','f','1980-03-04','a1b2c3',3),('lucas','m','1980-03-04','banco',4),('halie','f','1980-03-04','escolhacerta',5),('carlos','m','1980-03-04','nananenem',6),('marcos','m','1980-03-04','windwos',7),('cleiton','m','1980-03-04','linux',8),('bianca','f','1980-03-04','bibrotherbrasil',9);

/*!40000 ALTER TABLE `morador` ENABLE KEYS */;

UNLOCK TABLES;


--

-- Table structure for table `predio`

--


DROP TABLE IF EXISTS `predio`;

/*!40101 SET @saved_cs_client     = @@character_set_client */;

/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `predio` (

  `nome` varchar(30) NOT NULL,

  `bloco` int(11) NOT NULL AUTO_INCREMENT,

  `custo` decimal(6,2) NOT NULL,

  PRIMARY KEY (`bloco`)

) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*!40101 SET character_set_client = @saved_cs_client */;


--

-- Dumping data for table `predio`

--


LOCK TABLES `predio` WRITE;

/*!40000 ALTER TABLE `predio` DISABLE KEYS */;

INSERT INTO `predio` VALUES ('ana',1,300.00),('mara',2,600.00),('rita',3,700.00),('laura',4,700.00),('vilma',5,950.00),('mirian',6,750.00),('marta',7,550.00),('nina',8,800.00);

/*!40000 ALTER TABLE `predio` ENABLE KEYS */;

UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


-- Dump completed on 2017-08-19  9:21:45

