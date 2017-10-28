-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: 
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
-- Current Database: `gdx`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `gdx` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gdx`;

--
-- Table structure for table `condominio`
--

DROP TABLE IF EXISTS `condominio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `condominio` (
  `nome` varchar(30) NOT NULL,
  `quantbloco` int(11) NOT NULL,
  `QuantAndar` int(11) NOT NULL,
  `QuantAPB` int(11) NOT NULL,
  PRIMARY KEY (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condominio`
--

LOCK TABLES `condominio` WRITE;
/*!40000 ALTER TABLE `condominio` DISABLE KEYS */;
INSERT INTO `condominio` VALUES ('BosqueImperial',8,10,2);
/*!40000 ALTER TABLE `condominio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conta`
--

DROP TABLE IF EXISTS `conta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conta` (
  `agua` decimal(7,2) NOT NULL,
  `luz` decimal(7,2) NOT NULL,
  `gas` decimal(7,2) NOT NULL,
  `extra` decimal(7,2) NOT NULL,
  `cond` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conta`
--

LOCK TABLES `conta` WRITE;
/*!40000 ALTER TABLE `conta` DISABLE KEYS */;
INSERT INTO `conta` VALUES (0.00,0.00,0.00,100.00,150.00);
/*!40000 ALTER TABLE `conta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fatura`
--

DROP TABLE IF EXISTS `fatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fatura` (
  `nome` varchar(30) NOT NULL,
  `email` varchar(60) NOT NULL,
  `data` varchar(30) NOT NULL,
  `agua` decimal(7,2) NOT NULL,
  `luz` decimal(7,2) NOT NULL,
  `cond` decimal(7,2) NOT NULL,
  `extra` decimal(7,2) NOT NULL,
  `gasto` decimal(7,2) NOT NULL DEFAULT '0.00',
  `gas` decimal(7,2) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bloco` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'pendente',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fatura`
--

LOCK TABLES `fatura` WRITE;
/*!40000 ALTER TABLE `fatura` DISABLE KEYS */;
INSERT INTO `fatura` VALUES ('alexsey souza','alexseyreboucas@icloud.com','24/09/2017',110.00,100.00,100.00,100.00,460.00,50.00,1,'2','pendente'),('alexsey souza','alexseyreboucas@icloud.com','25/09/2017',80.00,100.00,80.00,80.00,420.00,80.00,2,'2','pendente'),('brunna souza','brunninhacah@gmail.com','24/09/2017',80.00,100.00,80.00,80.00,420.00,80.00,3,'1','pendente'),('brunna souza','brunninhacah@gmail.com','25/09/2017',1.00,2.00,4.00,5.00,15.00,3.00,4,'1','pendente'),('alexsey souza','alexseyreboucas@icloud.com','27/09/2017',110.00,100.00,100.00,100.00,460.00,50.00,5,'2','pendente'),('brunno marques','brunnomarques@outlook.com','27/09/2017',0.00,0.00,100.00,100.00,250.00,50.00,6,'1','pendente'),('yuri koskov','yuri@bk.ru','27/09/2017',1.00,1.00,1.00,1.00,5.00,1.00,7,'2','pendente'),('yuri koskov','yuri@bk.ru','28/09/2017',0.00,0.00,0.00,100.00,150.00,50.00,8,'2','pendente'),('alexsey souza','alexseyreboucas@icloud.com','01/10/2017',120.00,122.00,100.00,100.00,542.00,100.00,10,'2','pendente'),('yuri koskov','yuri@bk.ru','01/10/2017',110.00,100.00,100.00,100.00,460.00,50.00,11,'2','pendente'),('suza souza','suzana@live.com','11/10/2017',100.00,120.00,100.00,100.00,470.00,50.00,12,'1','pendente'),('alexsey souza','alexseyreboucas@icloud.com','04/10/2017',100.00,100.00,100.00,100.00,450.00,50.00,13,'2','pago'),('alexsey souza','alexseyreboucas@icloud.com','05/10/2107',100.00,50.00,100.00,100.00,450.00,100.00,14,'2','pendente'),('lucas pandares','lucas_panda@outlook.com','06/10/2017',120.00,100.00,150.00,100.00,570.00,100.00,15,'4','pendente'),('lucas pandares','lucas_panda@outlook.com','10/10/2017',120.00,120.00,150.00,150.00,660.00,120.00,16,'4','pendente'),('brunna souza','brunninhacah@gmail.com','07/10/2017',110.00,110.00,150.00,100.00,580.00,110.00,17,'1','pendente'),('robson miller','robson_miller@gmail.com','07/10/2017',100.00,100.00,150.00,100.00,550.00,100.00,18,'3','pago'),('alexsey souza','alexseyreboucas@icloud.com','07/10/2017',11.00,110.00,15.00,100.00,247.00,11.00,19,'2','pago'),('luana souza','luanaSouza@gmail.com','08/10/2017',120.00,100.00,150.00,100.00,570.00,100.00,20,'1','pago'),('yuri koskov','yuri@bk.ru','11/10/2017',120.00,100.00,150.00,100.00,570.00,100.00,21,'2','pendente'),('luana martins','luana_martins@live.com','12/10/2017',100.00,110.00,150.00,100.00,560.00,100.00,22,'3','pendente'),('alexsey souza','alexseyreboucas@icloud.com','15/10/2017',80.00,90.00,150.00,100.00,420.00,0.00,23,'2','pago'),('yuri koskov','yuri@bk.ru','16/10/2017',100.00,100.00,150.00,100.00,450.00,0.00,24,'2','pago'),('robson miller','robson_miller@gmail.com','16/10/2017',100.00,100.00,150.00,100.00,550.00,100.00,25,'3','pago'),('brunna souza','brunninhacah@gmail.com','16/10/2017',100.00,110.00,150.00,100.00,560.00,100.00,26,'1','pago'),('lucas pandares','lucas_panda@outlook.com','16/10/2017',80.00,80.00,150.00,100.00,490.00,80.00,27,'4','pago');
/*!40000 ALTER TABLE `fatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `morador`
--

DROP TABLE IF EXISTS `morador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `morador` (
  `nome` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `cargo` varchar(30) NOT NULL,
  `sexo` varchar(30) NOT NULL,
  `contrato` varchar(30) NOT NULL,
  `ap` varchar(30) NOT NULL,
  `bloco` varchar(30) NOT NULL,
  `telefone` varchar(30) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `morador`
--

LOCK TABLES `morador` WRITE;
/*!40000 ALTER TABLE `morador` DISABLE KEYS */;
INSERT INTO `morador` VALUES ('alexsey souza','alexseyreboucas@icloud.com','123456','morador','masculino','201401','209','2','98897876'),('brunna souza','brunninhacah@gmail.com','123456','morador','feminino','99','102','1','987675645'),('brunno marques','brunnomarques@outlook.com','123456','morador','masculino','8878788','105','1','987787878'),('janaina mendes','janaina_mendes@outlook.com','123456','morador','feminino','20110110','301','2','987998767'),('luana souza','luanaSouza@gmail.com','454545','morador','feminino','78987','101','1','339309990'),('luana martins','luana_martins@live.com','123456','morador','feminino','2012011046656','302','3','998786756'),('lucas pandares','lucas_panda@outlook.com','12345','morador','masculino','20130110','101','4','9989898989'),('robson miller','robson_miller@gmail.com','123456','morador','masculino','2019980990','103','3','8778787878'),('suza souza','suzana@live.com','123456','morador','feminino','77','200','1','98787878'),('yuri koskov','yuri@bk.ru','nolsonaro2018','síndico','masculino','777','105','2','987787878');
/*!40000 ALTER TABLE `morador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `predio`
--

DROP TABLE IF EXISTS `predio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `predio` (
  `quantMorador` int(11) NOT NULL,
  `bloco` varchar(30) NOT NULL,
  `investimento` decimal(7,2) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `predio`
--

LOCK TABLES `predio` WRITE;
/*!40000 ALTER TABLE `predio` DISABLE KEYS */;
INSERT INTO `predio` VALUES (4,'1',485.00,1),(3,'2',981.00,2),(2,'3',100.00,3),(1,'4',250.00,4),(0,'5',0.00,5),(0,'6',0.00,6),(0,'7',0.00,7),(0,'8',0.00,8);
/*!40000 ALTER TABLE `predio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Current Database: `mysql`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `mysql` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mysql`;

--
-- Table structure for table `columns_priv`
--

DROP TABLE IF EXISTS `columns_priv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `columns_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Column_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`,`Column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `columns_priv`
--

LOCK TABLES `columns_priv` WRITE;
/*!40000 ALTER TABLE `columns_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `columns_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `db`
--

DROP TABLE IF EXISTS `db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`Db`,`User`),
  KEY `User` (`User`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database privileges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db`
--

LOCK TABLES `db` WRITE;
/*!40000 ALTER TABLE `db` DISABLE KEYS */;
INSERT INTO `db` VALUES ('%','test','','Y','Y','Y','Y','Y','Y','N','Y','Y','Y','Y','Y','Y','Y','Y','N','N','Y','Y'),('%','test\\_%','','Y','Y','Y','Y','Y','Y','N','Y','Y','Y','Y','Y','Y','Y','Y','N','N','Y','Y');
/*!40000 ALTER TABLE `db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `db` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `body` longblob NOT NULL,
  `definer` char(77) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `execute_at` datetime DEFAULT NULL,
  `interval_value` int(11) DEFAULT NULL,
  `interval_field` enum('YEAR','QUARTER','MONTH','DAY','HOUR','MINUTE','WEEK','SECOND','MICROSECOND','YEAR_MONTH','DAY_HOUR','DAY_MINUTE','DAY_SECOND','HOUR_MINUTE','HOUR_SECOND','MINUTE_SECOND','DAY_MICROSECOND','HOUR_MICROSECOND','MINUTE_MICROSECOND','SECOND_MICROSECOND') DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_executed` datetime DEFAULT NULL,
  `starts` datetime DEFAULT NULL,
  `ends` datetime DEFAULT NULL,
  `status` enum('ENABLED','DISABLED','SLAVESIDE_DISABLED') NOT NULL DEFAULT 'ENABLED',
  `on_completion` enum('DROP','PRESERVE') NOT NULL DEFAULT 'DROP',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','NOT_USED','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE','NO_ENGINE_SUBSTITUTION','PAD_CHAR_TO_FULL_LENGTH') NOT NULL DEFAULT '',
  `comment` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `originator` int(10) unsigned NOT NULL,
  `time_zone` char(64) CHARACTER SET latin1 NOT NULL DEFAULT 'SYSTEM',
  `character_set_client` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `body_utf8` longblob,
  PRIMARY KEY (`db`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Events';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `func`
--

DROP TABLE IF EXISTS `func`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `func` (
  `name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ret` tinyint(1) NOT NULL DEFAULT '0',
  `dl` char(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` enum('function','aggregate') CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User defined functions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `func`
--

LOCK TABLES `func` WRITE;
/*!40000 ALTER TABLE `func` DISABLE KEYS */;
/*!40000 ALTER TABLE `func` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_category`
--

DROP TABLE IF EXISTS `help_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_category` (
  `help_category_id` smallint(5) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint(5) unsigned DEFAULT NULL,
  `url` char(128) NOT NULL,
  PRIMARY KEY (`help_category_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_category`
--

LOCK TABLES `help_category` WRITE;
/*!40000 ALTER TABLE `help_category` DISABLE KEYS */;
INSERT INTO `help_category` VALUES (1,'Geographic',0,''),(2,'Polygon properties',34,''),(3,'WKT',34,''),(4,'Numeric Functions',38,''),(5,'Plugins',35,''),(6,'MBR',34,''),(7,'Control flow functions',38,''),(8,'Transactions',35,''),(9,'Help Metadata',35,''),(10,'Account Management',35,''),(11,'Point properties',34,''),(12,'Encryption Functions',38,''),(13,'LineString properties',34,''),(14,'Miscellaneous Functions',38,''),(15,'Logical operators',38,''),(16,'Functions and Modifiers for Use with GROUP BY',35,''),(17,'Information Functions',38,''),(18,'Comparison operators',38,''),(19,'Bit Functions',38,''),(20,'Table Maintenance',35,''),(21,'User-Defined Functions',35,''),(22,'Data Types',35,''),(23,'Compound Statements',35,''),(24,'Geometry constructors',34,''),(25,'GeometryCollection properties',1,''),(26,'Administration',35,''),(27,'Data Manipulation',35,''),(28,'Utility',35,''),(29,'Language Structure',35,''),(30,'Geometry relations',34,''),(31,'Date and Time Functions',38,''),(32,'WKB',34,''),(33,'Procedures',35,''),(34,'Geographic Features',35,''),(35,'Contents',0,''),(36,'Geometry properties',34,''),(37,'String Functions',38,''),(38,'Functions',35,''),(39,'Data Definition',35,'');
/*!40000 ALTER TABLE `help_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_keyword`
--

DROP TABLE IF EXISTS `help_keyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_keyword` (
  `help_keyword_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help keywords';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_keyword`
--

LOCK TABLES `help_keyword` WRITE;
/*!40000 ALTER TABLE `help_keyword` DISABLE KEYS */;
INSERT INTO `help_keyword` VALUES (0,'JOIN'),(1,'HOST'),(2,'REPEAT'),(3,'SERIALIZABLE'),(4,'REPLACE'),(5,'AT'),(6,'SCHEDULE'),(7,'RETURNS'),(8,'STARTS'),(9,'MASTER_SSL_CA'),(10,'NCHAR'),(11,'COLUMNS'),(12,'COMPLETION'),(13,'WORK'),(14,'DATETIME'),(15,'MODE'),(16,'OPEN'),(17,'INTEGER'),(18,'ESCAPE'),(19,'VALUE'),(20,'MASTER_SSL_VERIFY_SERVER_CERT'),(21,'SQL_BIG_RESULT'),(22,'DROP'),(23,'GEOMETRYCOLLECTIONFROMWKB'),(24,'EVENTS'),(25,'MONTH'),(26,'PROFILES'),(27,'DUPLICATE'),(28,'REPLICATION'),(29,'UNLOCK'),(30,'INNODB'),(31,'YEAR_MONTH'),(32,'SUBJECT'),(33,'PREPARE'),(34,'LOCK'),(35,'NDB'),(36,'CHECK'),(37,'FULL'),(38,'INT4'),(39,'BY'),(40,'NO'),(41,'MINUTE'),(42,'PARTITION'),(43,'DATA'),(44,'DAY'),(45,'SHARE'),(46,'REAL'),(47,'SEPARATOR'),(48,'MESSAGE_TEXT'),(49,'MASTER_HEARTBEAT_PERIOD'),(50,'DELETE'),(51,'ON'),(52,'COLUMN_NAME'),(53,'CONNECTION'),(54,'CLOSE'),(55,'X509'),(56,'USE'),(57,'SUBCLASS_ORIGIN'),(58,'WHERE'),(59,'PRIVILEGES'),(60,'SPATIAL'),(61,'EVENT'),(62,'SUPER'),(63,'SQL_BUFFER_RESULT'),(64,'IGNORE'),(65,'SHA2'),(66,'QUICK'),(67,'SIGNED'),(68,'OFFLINE'),(69,'SECURITY'),(70,'AUTOEXTEND_SIZE'),(71,'NDBCLUSTER'),(72,'POLYGONFROMWKB'),(73,'FALSE'),(74,'LEVEL'),(75,'FORCE'),(76,'BINARY'),(77,'TO'),(78,'CHANGE'),(79,'CURRENT_USER'),(80,'HOUR_MINUTE'),(81,'UPDATE'),(82,'PRESERVE'),(83,'TABLE_NAME'),(84,'INTO'),(85,'FEDERATED'),(86,'VARYING'),(87,'MAX_SIZE'),(88,'HOUR_SECOND'),(89,'VARIABLE'),(90,'ROLLBACK'),(91,'PROCEDURE'),(92,'TIMESTAMP'),(93,'IMPORT'),(94,'AGAINST'),(95,'CHECKSUM'),(96,'COUNT'),(97,'LONGBINARY'),(98,'THEN'),(99,'INSERT'),(100,'ENGINES'),(101,'HANDLER'),(102,'PORT'),(103,'DAY_SECOND'),(104,'EXISTS'),(105,'MUTEX'),(106,'HELP_DATE'),(107,'RELEASE'),(108,'BOOLEAN'),(109,'MOD'),(110,'DEFAULT'),(111,'TYPE'),(112,'NO_WRITE_TO_BINLOG'),(113,'OPTIMIZE'),(114,'SQLSTATE'),(115,'RESET'),(116,'CLASS_ORIGIN'),(117,'INSTALL'),(118,'ITERATE'),(119,'DO'),(120,'BIGINT'),(121,'SET'),(122,'ISSUER'),(123,'DATE'),(124,'STATUS'),(125,'FULLTEXT'),(126,'COMMENT'),(127,'MASTER_CONNECT_RETRY'),(128,'INNER'),(129,'RELAYLOG'),(130,'STOP'),(131,'MASTER_LOG_FILE'),(132,'MRG_MYISAM'),(133,'PRECISION'),(134,'REQUIRE'),(135,'TRAILING'),(136,'PARTITIONS'),(137,'LONG'),(138,'OPTION'),(139,'REORGANIZE'),(140,'ELSE'),(141,'DEALLOCATE'),(142,'IO_THREAD'),(143,'CASE'),(144,'CIPHER'),(145,'CONTINUE'),(146,'FROM'),(147,'READ'),(148,'LEFT'),(149,'ELSEIF'),(150,'MINUTE_SECOND'),(151,'COMPACT'),(152,'DEC'),(153,'FOR'),(154,'WARNINGS'),(155,'MIN_ROWS'),(156,'STRING'),(157,'CONDITION'),(158,'ENCLOSED'),(159,'FUNCTION'),(160,'AGGREGATE'),(161,'FIELDS'),(162,'INT3'),(163,'ARCHIVE'),(164,'AVG_ROW_LENGTH'),(165,'ADD'),(166,'KILL'),(167,'FLOAT4'),(168,'TABLESPACE'),(169,'VIEW'),(170,'REPEATABLE'),(171,'INFILE'),(172,'HELP_VERSION'),(173,'ORDER'),(174,'USING'),(175,'CONSTRAINT_CATALOG'),(176,'MIDDLEINT'),(177,'GRANT'),(178,'UNSIGNED'),(179,'DECIMAL'),(180,'GEOMETRYFROMTEXT'),(181,'INDEXES'),(182,'FOREIGN'),(183,'CACHE'),(184,'HOSTS'),(185,'MYSQL_ERRNO'),(186,'COMMIT'),(187,'SCHEMAS'),(188,'LEADING'),(189,'SNAPSHOT'),(190,'CONSTRAINT_NAME'),(191,'DECLARE'),(192,'LOAD'),(193,'SQL_CACHE'),(194,'CONVERT'),(195,'DYNAMIC'),(196,'COLLATE'),(197,'POLYGONFROMTEXT'),(198,'BYTE'),(199,'GLOBAL'),(200,'LINESTRINGFROMWKB'),(201,'WHEN'),(202,'HAVING'),(203,'AS'),(204,'STARTING'),(205,'RELOAD'),(206,'AUTOCOMMIT'),(207,'REVOKE'),(208,'GRANTS'),(209,'OUTER'),(210,'CURSOR_NAME'),(211,'FLOOR'),(212,'EXPLAIN'),(213,'WITH'),(214,'AFTER'),(215,'STD'),(216,'CSV'),(217,'DISABLE'),(218,'UNINSTALL'),(219,'OUTFILE'),(220,'LOW_PRIORITY'),(221,'FILE'),(222,'NODEGROUP'),(223,'SCHEMA'),(224,'SONAME'),(225,'POW'),(226,'DUAL'),(227,'MULTIPOINTFROMWKB'),(228,'INDEX'),(229,'MULTIPOINTFROMTEXT'),(230,'DEFINER'),(231,'MASTER_BIND'),(232,'REMOVE'),(233,'EXTENDED'),(234,'MULTILINESTRINGFROMWKB'),(235,'CROSS'),(236,'CONTRIBUTORS'),(237,'NATIONAL'),(238,'GROUP'),(239,'SHA'),(240,'ONLINE'),(241,'UNDO'),(242,'IGNORE_SERVER_IDS'),(243,'ZEROFILL'),(244,'CLIENT'),(245,'MASTER_PASSWORD'),(246,'OWNER'),(247,'RELAY_LOG_FILE'),(248,'TRUE'),(249,'CHARACTER'),(250,'MASTER_USER'),(251,'SCHEMA_NAME'),(252,'TABLE'),(253,'ENGINE'),(254,'INSERT_METHOD'),(255,'CASCADE'),(256,'RELAY_LOG_POS'),(257,'SQL_CALC_FOUND_ROWS'),(258,'UNION'),(259,'MYISAM'),(260,'LEAVE'),(261,'MODIFY'),(262,'MATCH'),(263,'MASTER_LOG_POS'),(264,'DISTINCTROW'),(265,'DESC'),(266,'TIME'),(267,'NUMERIC'),(268,'EXPANSION'),(269,'CODE'),(270,'CURSOR'),(271,'GEOMETRYCOLLECTIONFROMTEXT'),(272,'CHAIN'),(273,'LOGFILE'),(274,'FLUSH'),(275,'CREATE'),(276,'DESCRIBE'),(277,'EXTENT_SIZE'),(278,'MAX_UPDATES_PER_HOUR'),(279,'INT2'),(280,'PROCESSLIST'),(281,'ENDS'),(282,'LOGS'),(283,'DISCARD'),(284,'HEAP'),(285,'SOUNDS'),(286,'BETWEEN'),(287,'MULTILINESTRINGFROMTEXT'),(288,'REPAIR'),(289,'PACK_KEYS'),(290,'FAST'),(291,'VALUES'),(292,'CALL'),(293,'LOOP'),(294,'VARCHARACTER'),(295,'BEFORE'),(296,'TRUNCATE'),(297,'SHOW'),(298,'ALL'),(299,'REDUNDANT'),(300,'USER_RESOURCES'),(301,'PARTIAL'),(302,'BINLOG'),(303,'END'),(304,'SECOND'),(305,'AND'),(306,'FLOAT8'),(307,'PREV'),(308,'HOUR'),(309,'SELECT'),(310,'DATABASES'),(311,'OR'),(312,'IDENTIFIED'),(313,'WRAPPER'),(314,'MASTER_SSL_CIPHER'),(315,'SQL_SLAVE_SKIP_COUNTER'),(316,'BOTH'),(317,'BOOL'),(318,'YEAR'),(319,'MASTER_PORT'),(320,'CONCURRENT'),(321,'HELP'),(322,'UNIQUE'),(323,'TRIGGERS'),(324,'PROCESS'),(325,'OPTIONS'),(326,'RESIGNAL'),(327,'CONSISTENT'),(328,'MASTER_SSL'),(329,'DATE_ADD'),(330,'MAX_CONNECTIONS_PER_HOUR'),(331,'LIKE'),(332,'PLUGIN'),(333,'FETCH'),(334,'IN'),(335,'COLUMN'),(336,'DUMPFILE'),(337,'USAGE'),(338,'EXECUTE'),(339,'MEMORY'),(340,'CEIL'),(341,'QUERY'),(342,'MASTER_HOST'),(343,'LINES'),(344,'SQL_THREAD'),(345,'SERVER'),(346,'MAX_QUERIES_PER_HOUR'),(347,'MASTER_SSL_CERT'),(348,'MULTIPOLYGONFROMWKB'),(349,'TRANSACTION'),(350,'DAY_MINUTE'),(351,'STDDEV'),(352,'DATE_SUB'),(353,'REBUILD'),(354,'GEOMETRYFROMWKB'),(355,'INT1'),(356,'RENAME'),(357,'PARSER'),(358,'RIGHT'),(359,'ALTER'),(360,'MAX_ROWS'),(361,'SOCKET'),(362,'STRAIGHT_JOIN'),(363,'NATURAL'),(364,'VARIABLES'),(365,'ESCAPED'),(366,'SHA1'),(367,'KEY_BLOCK_SIZE'),(368,'PASSWORD'),(369,'OFFSET'),(370,'CHAR'),(371,'NEXT'),(372,'ERRORS'),(373,'SQL_LOG_BIN'),(374,'TEMPORARY'),(375,'COMMITTED'),(376,'SQL_SMALL_RESULT'),(377,'UPGRADE'),(378,'BEGIN'),(379,'DELAY_KEY_WRITE'),(380,'PROFILE'),(381,'MEDIUM'),(382,'INTERVAL'),(383,'SSL'),(384,'DAY_HOUR'),(385,'NAME'),(386,'REFERENCES'),(387,'AES_ENCRYPT'),(388,'STORAGE'),(389,'ISOLATION'),(390,'CEILING'),(391,'EVERY'),(392,'INT8'),(393,'AUTHORS'),(394,'RESTRICT'),(395,'UNCOMMITTED'),(396,'LINESTRINGFROMTEXT'),(397,'IS'),(398,'NOT'),(399,'ANALYSE'),(400,'DATAFILE'),(401,'DES_KEY_FILE'),(402,'SIGNAL'),(403,'COMPRESSED'),(404,'START'),(405,'PLUGINS'),(406,'SAVEPOINT'),(407,'IF'),(408,'ROWS'),(409,'PRIMARY'),(410,'PURGE'),(411,'LAST'),(412,'USER'),(413,'EXIT'),(414,'KEYS'),(415,'LIMIT'),(416,'KEY'),(417,'MERGE'),(418,'UNTIL'),(419,'SQL_NO_CACHE'),(420,'DELAYED'),(421,'CONSTRAINT_SCHEMA'),(422,'ANALYZE'),(423,'CONSTRAINT'),(424,'SERIAL'),(425,'ACTION'),(426,'WRITE'),(427,'INITIAL_SIZE'),(428,'SESSION'),(429,'DATABASE'),(430,'NULL'),(431,'POWER'),(432,'USE_FRM'),(433,'TERMINATED'),(434,'SLAVE'),(435,'NVARCHAR'),(436,'ASC'),(437,'RETURN'),(438,'OPTIONALLY'),(439,'ENABLE'),(440,'DIRECTORY'),(441,'MAX_USER_CONNECTIONS'),(442,'WHILE'),(443,'LOCAL'),(444,'DISTINCT'),(445,'AES_DECRYPT'),(446,'MASTER_SSL_KEY'),(447,'NONE'),(448,'TABLES'),(449,'<>'),(450,'RLIKE'),(451,'TRIGGER'),(452,'COLLATION'),(453,'SHUTDOWN'),(454,'HIGH_PRIORITY'),(455,'BTREE'),(456,'FIRST'),(457,'COALESCE'),(458,'WAIT'),(459,'CATALOG_NAME'),(460,'MASTER'),(461,'FIXED'),(462,'MULTIPOLYGONFROMTEXT'),(463,'ROW_FORMAT');
/*!40000 ALTER TABLE `help_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_relation`
--

DROP TABLE IF EXISTS `help_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `help_relation` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `help_keyword_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`help_keyword_id`,`help_topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='keyword-topic relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_relation`
--

LOCK TABLES `help_relation` WRITE;
/*!40000 ALTER TABLE `help_relation` DISABLE KEYS */;
INSERT INTO `help_relation` VALUES (1,0),(356,0),(473,1),(232,2),(447,3),(3,4),(130,4),(421,4),(89,5),(89,6),(406,6),(97,7),(89,8),(185,9),(430,10),(21,11),(347,11),(421,11),(463,11),(468,11),(89,12),(406,12),(146,13),(230,14),(88,15),(356,15),(18,16),(106,16),(134,16),(347,16),(97,17),(500,17),(380,18),(3,19),(104,19),(243,19),(374,19),(459,19),(185,20),(356,21),(9,22),(30,22),(34,22),(87,22),(186,22),(237,22),(263,22),(276,22),(300,22),(331,22),(405,22),(415,22),(416,22),(463,22),(478,22),(108,23),(122,24),(170,24),(424,24),(376,25),(82,26),(104,27),(199,28),(36,29),(347,30),(468,30),(376,31),(199,32),(35,33),(237,33),(36,34),(356,34),(468,35),(417,36),(463,36),(468,36),(21,37),(294,37),(347,37),(451,37),(468,37),(500,38),(48,39),(77,39),(83,39),(130,39),(199,39),(356,39),(361,39),(421,39),(463,39),(468,39),(468,40),(472,40),(376,41),(463,42),(468,42),(212,43),(421,43),(468,43),(473,43),(376,44),(356,45),(97,46),(314,46),(361,47),(374,48),(459,48),(185,49),(48,50),(468,50),(472,50),(1,51),(89,51),(406,51),(472,51),(374,52),(459,52),(176,53),(468,53),(51,54),(106,54),(199,55),(1,56),(55,56),(194,56),(374,57),(459,57),(48,58),(83,58),(106,58),(193,59),(199,59),(249,59),(210,60),(463,60),(89,61),(300,61),(358,61),(406,61),(199,62),(356,63),(1,64),(83,64),(104,64),(130,64),(356,64),(421,64),(463,64),(66,65),(48,66),(417,66),(466,66),(230,67),(87,68),(210,68),(463,68),(199,69),(194,70),(468,71),(91,72),(482,72),(385,73),(447,74),(1,75),(39,76),(230,76),(269,76),(185,77),(269,77),(460,77),(185,78),(463,78),(89,79),(406,79),(376,80),(83,81),(104,81),(356,81),(472,81),(89,82),(406,82),(374,83),(459,83),(3,84),(104,84),(304,84),(356,84),(468,85),(257,86),(194,87),(376,88),(129,89),(146,90),(460,90),(17,91),(189,91),(302,91),(328,91),(347,91),(356,91),(416,91),(439,91),(488,91),(99,92),(188,92),(421,93),(463,93),(88,94),(401,95),(468,95),(69,96),(330,96),(433,96),(285,97),(28,98),(57,98),(85,98),(104,99),(195,99),(301,99),(486,99),(282,100),(347,100),(106,101),(313,101),(473,102),(376,103),(9,104),(30,104),(89,104),(155,104),(186,104),(276,104),(300,104),(347,105),(365,105),(109,106),(146,107),(460,107),(24,108),(88,108),(113,109),(175,109),(3,110),(104,110),(155,110),(200,110),(212,110),(243,110),(463,110),(468,110),(463,111),(115,112),(326,112),(466,112),(470,112),(115,113),(463,113),(374,114),(459,114),(38,115),(119,115),(151,115),(264,115),(374,116),(459,116),(419,117),(124,118),(89,119),(125,119),(406,119),(496,119),(221,120),(3,121),(83,121),(104,121),(129,121),(130,121),(146,121),(155,121),(182,121),(212,121),(333,121),(347,121),(356,121),(374,121),(421,121),(459,121),(463,121),(468,121),(472,121),(477,121),(494,121),(199,122),(132,123),(230,123),(262,123),(376,123),(58,124),(137,124),(215,124),(223,124),(328,124),(336,124),(347,124),(365,124),(210,125),(463,125),(468,125),(89,126),(194,126),(210,126),(406,126),(468,126),(185,127),(1,128),(424,129),(52,130),(185,131),(468,132),(314,133),(199,134),(455,135),(255,136),(285,137),(199,138),(249,138),(463,139),(57,140),(85,140),(237,141),(52,142),(324,142),(57,143),(85,143),(199,144),(313,145),(48,146),(122,146),(347,146),(356,146),(424,146),(455,146),(36,147),(106,147),(447,147),(1,148),(28,149),(376,150),(468,151),(209,152),(180,153),(313,153),(347,153),(356,153),(420,153),(330,154),(347,154),(468,155),(97,156),(180,157),(421,158),(34,159),(68,159),(97,159),(211,159),(233,159),(302,159),(336,159),(347,159),(393,159),(405,159),(416,159),(97,160),(347,161),(421,161),(252,162),(468,163),(463,164),(468,164),(60,165),(194,165),(463,165),(478,165),(176,166),(168,167),(194,168),(415,168),(463,168),(478,168),(30,169),(159,169),(454,169),(447,170),(130,171),(421,171),(190,172),(48,173),(83,173),(356,173),(361,173),(463,173),(1,174),(48,174),(86,174),(374,175),(459,175),(252,176),(199,177),(249,177),(24,178),(128,178),(168,178),(209,178),(230,178),(314,178),(500,178),(97,179),(156,179),(230,179),(411,180),(347,181),(463,182),(468,182),(472,182),(473,182),(101,183),(151,183),(304,183),(145,184),(347,184),(374,185),(459,185),(146,186),(160,187),(347,187),(455,188),(146,189),(374,190),(459,190),(180,191),(200,191),(313,191),(420,191),(304,192),(421,192),(356,193),(230,194),(377,194),(468,195),(155,196),(212,196),(468,196),(395,197),(465,198),(129,199),(137,199),(182,199),(349,199),(447,199),(452,200),(57,201),(85,201),(356,202),(1,203),(36,203),(356,203),(421,204),(199,205),(146,206),(249,207),(192,208),(347,208),(1,209),(374,210),(459,210),(221,211),(255,212),(88,213),(199,213),(210,213),(463,213),(468,213),(463,214),(260,215),(421,216),(468,216),(89,217),(406,217),(463,217),(291,218),(356,219),(3,220),(36,220),(48,220),(83,220),(104,220),(130,220),(421,220),(199,221),(194,222),(155,223),(186,223),(212,223),(309,223),(347,223),(97,224),(277,225),(279,226),(464,227),(1,228),(60,228),(87,228),(101,228),(210,228),(304,228),(308,228),(347,228),(463,228),(468,228),(425,229),(89,230),(406,230),(185,231),(463,232),(255,233),(466,233),(272,234),(1,235),(7,236),(347,236),(257,237),(430,237),(194,238),(226,238),(356,238),(427,239),(87,240),(210,240),(463,240),(313,241),(185,242),(24,243),(128,243),(168,243),(209,243),(314,243),(500,243),(199,244),(185,245),(473,246),(185,247),(385,248),(130,249),(155,249),(212,249),(257,249),(333,249),(347,249),(356,249),(421,249),(430,249),(468,249),(185,250),(374,251),(459,251),(60,252),(110,252),(115,252),(215,252),(276,252),(278,252),(321,252),(347,252),(401,252),(417,252),(463,252),(466,252),(468,252),(470,252),(194,253),(347,253),(365,253),(415,253),(463,253),(468,253),(478,253),(468,254),(30,255),(276,255),(468,255),(472,255),(185,256),(356,257),(305,258),(468,259),(310,260),(463,261),(88,262),(185,263),(356,264),(329,265),(356,265),(361,265),(230,266),(315,266),(375,266),(209,267),(88,268),(68,269),(488,269),(420,270),(246,271),(146,272),(194,273),(226,273),(151,274),(326,274),(17,275),(22,275),(60,275),(77,275),(89,275),(97,275),(155,275),(194,275),(210,275),(211,275),(278,275),(302,275),(309,275),(347,275),(358,275),(393,275),(454,275),(468,275),(473,275),(329,276),(194,277),(199,278),(234,279),(347,280),(451,280),(89,281),(39,282),(269,282),(347,282),(463,283),(468,284),(378,285),(147,286),(107,287),(463,288),(466,288),(468,289),(417,290),(3,291),(104,291),(339,292),(344,293),(257,294),(269,295),(321,296),(463,296),(7,297),(10,297),(17,297),(21,297),(25,297),(33,297),(39,297),(58,297),(68,297),(69,297),(82,297),(122,297),(134,297),(137,297),(145,297),(160,297),(170,297),(192,297),(193,297),(215,297),(223,297),(278,297),(282,297),(294,297),(308,297),(309,297),(328,297),(330,297),(333,297),(336,297),(347,297),(349,297),(358,297),(365,297),(393,297),(424,297),(451,297),(487,297),(488,297),(492,297),(38,298),(199,298),(249,298),(305,298),(356,298),(468,299),(326,300),(468,301),(122,302),(350,302),(28,303),(57,303),(85,303),(232,303),(327,303),(344,303),(496,303),(376,304),(147,305),(316,305),(314,306),(106,307),(376,308),(3,309),(104,309),(255,309),(301,309),(356,309),(160,310),(347,310),(141,311),(77,312),(130,312),(199,312),(473,313),(185,314),(182,315),(455,316),(24,317),(111,317),(376,318),(185,319),(130,320),(421,320),(118,321),(390,321),(463,322),(25,323),(347,323),(199,324),(373,325),(473,325),(374,326),(146,327),(185,328),(376,329),(199,330),(347,331),(378,331),(291,332),(347,332),(419,332),(383,333),(88,334),(122,334),(356,334),(424,334),(463,335),(356,336),(199,337),(86,338),(199,338),(356,339),(397,340),(88,341),(151,341),(176,341),(185,342),(130,343),(421,343),(52,344),(324,344),(9,345),(373,345),(473,345),(199,346),(185,347),(123,348),(146,349),(447,349),(376,350),(407,351),(376,352),(463,353),(144,354),(24,355),(110,356),(222,356),(406,356),(463,356),(210,357),(463,357),(468,357),(1,358),(60,359),(159,359),(199,359),(212,359),(226,359),(233,359),(373,359),(406,359),(439,359),(463,359),(478,359),(463,360),(468,360),(473,361),(1,362),(356,362),(1,363),(347,364),(349,364),(421,365),(427,366),(468,367),(77,368),(199,368),(473,368),(477,368),(356,369),(230,370),(465,370),(106,371),(69,372),(347,372),(494,373),(276,374),(447,375),(356,376),(212,377),(417,377),(146,378),(327,378),(468,379),(487,380),(417,381),(89,382),(376,382),(199,383),(376,384),(212,385),(199,386),(468,386),(472,386),(443,387),(282,388),(447,389),(448,390),(89,391),(128,392),(10,393),(347,393),(30,394),(276,394),(472,394),(447,395),(56,396),(84,397),(206,397),(368,397),(456,397),(84,398),(89,398),(155,398),(206,398),(312,398),(189,399),(194,400),(478,400),(326,401),(459,402),(468,403),(146,404),(324,404),(33,405),(460,406),(9,407),(28,407),(30,407),(89,407),(155,407),(186,407),(276,407),(300,407),(479,407),(130,408),(463,409),(269,410),(106,411),(77,412),(222,412),(331,412),(473,412),(313,413),(308,414),(347,414),(463,414),(48,415),(83,415),(106,415),(122,415),(356,415),(424,415),(60,416),(104,416),(463,416),(468,416),(472,416),(468,417),(232,418),(356,419),(3,420),(104,420),(486,420),(374,421),(459,421),(463,422),(470,422),(463,423),(468,423),(243,424),(468,424),(468,425),(472,425),(36,426),(194,427),(478,427),(129,428),(137,428),(349,428),(447,428),(155,429),(186,429),(212,429),(309,429),(347,429),(473,429),(84,430),(368,430),(472,430),(483,431),(466,432),(421,433),(38,434),(52,434),(89,434),(145,434),(223,434),(324,434),(406,434),(257,435),(356,436),(361,436),(491,437),(421,438),(89,439),(406,439),(463,439),(212,440),(468,440),(199,441),(496,442),(36,443),(115,443),(130,443),(326,443),(421,443),(466,443),(470,443),(0,444),(96,444),(288,444),(305,444),(356,444),(361,444),(384,444),(433,444),(497,445),(185,446),(199,447),(36,448),(134,448),(294,448),(347,448),(495,449),(27,450),(22,451),(263,451),(347,451),(347,452),(492,452),(199,453),(104,454),(356,454),(210,455),(106,456),(463,456),(468,456),(463,457),(194,458),(478,458),(374,459),(459,459),(39,460),(58,460),(185,460),(264,460),(269,460),(209,461),(468,461),(201,462),(468,463);
/*!40000 ALTER TABLE `help_relation` ENABLE KEYS */;
UNLOCK TABLES;
