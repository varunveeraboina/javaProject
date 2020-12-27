-- MySQL dump 10.13  Distrib 5.6.36, for Win32 (AMD64)
--
-- Host: localhost    Database: mtbs
-- ------------------------------------------------------
-- Server version	5.6.36-log

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `name` varchar(30) DEFAULT NULL,
  `phoneNo` varchar(10) DEFAULT NULL,
  `columnid` int(11) NOT NULL,
  `Mname` varchar(30) DEFAULT NULL,
  `format` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `seat` int(11) DEFAULT NULL,
  `Cid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Cid`),
  KEY `columnid` (`columnid`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`columnid`) REFERENCES `movie` (`columnid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('Shubham Gupta','7388349966',5,'Sannata','Hindi 2D','2019-10-10','21:00:00',1000.00,4,19),('Ram Sahani','9865321470',5,'Sannata','Hindi 2D','2019-10-10','21:00:00',500.00,2,20),('Saransh','9559291170',4,'Avengers','English 3D','2019-10-10','12:00:00',1500.00,5,21),('sridhar','9878564523',4,'Avengers','English 3D','2019-10-10','12:00:00',3600.00,12,23),('shubham','8976865645',5,'Sannata','Hindi 2D','2019-10-10','21:00:00',500.00,2,24),('shubham','7866758656',4,'Avengers','English 3D','2019-10-10','12:00:00',600.00,2,26);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie` (
  `columnid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `format` varchar(30) DEFAULT NULL,
  `showdate` date DEFAULT NULL,
  `showtime` time DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `seat` int(11) DEFAULT NULL,
  PRIMARY KEY (`columnid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (4,'Avengers','English 3D','2019-10-10','12:00:00',300.00,131),(5,'Sannata','Hindi 2D','2019-10-10','21:00:00',250.00,192),(7,'HouseFull 4','Hindi 2D','2019-11-15','12:00:00',120.00,200),(8,'Chhichhore','Hindi 3D','2019-10-22','12:00:00',100.00,100);
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-10 12:35:40
