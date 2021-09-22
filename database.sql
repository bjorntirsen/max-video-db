CREATE DATABASE  IF NOT EXISTS `BjornT` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `BjornT`;
-- MySQL dump 10.13  Distrib 8.0.18, for macos10.14 (x86_64)
--
-- Host: localhost    Database: BjornT
-- ------------------------------------------------------
-- Server version	8.0.16

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
-- Table structure for table `actorDirector`
--

DROP TABLE IF EXISTS `actorDirector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actorDirector` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actorDirector`
--

LOCK TABLES `actorDirector` WRITE;
/*!40000 ALTER TABLE `actorDirector` DISABLE KEYS */;
INSERT INTO `actorDirector` VALUES (1,'Katsuhiro','Ôtomo'),(2,'Mitsuo','Iwata'),(3,'Nozomu','Sasaki'),(4,'Frank','Darabont'),(5,'Tim','Robbins'),(6,'Morgan','Freeman'),(7,'Francis','Ford Coppola'),(8,'Marlon','Brando'),(9,'Al','Pacino'),(10,'Robert','De Niro'),(11,'Christopher','Nolan'),(12,'Christian','Bale'),(13,'Sidney','Lumet'),(14,'Henry','Fonda'),(15,'Lee','J. Cobb'),(16,'Steven','Spielberg'),(17,'Liam','Neeson'),(18,'Ralph','Fiennes'),(19,'Peter','Jackson'),(20,'Elijah','Wood'),(21,'Viggo','Mortensen'),(22,'Quentin','Tarantino'),(23,'John','Travolta'),(24,'Uma','Thurman'),(25,'Sergio','Leone'),(26,'Clint','Eastwood'),(27,'Eli','Wallach'),(28,'Heath','Ledger');
/*!40000 ALTER TABLE `actorDirector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `streetAddress` varchar(45) NOT NULL,
  `postalCode` varchar(6) NOT NULL,
  `postalArea` varchar(45) NOT NULL,
  `phoneNo` varchar(10) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Antonio','Axelsson Rodriguez','Hallonvägen 32','192 33','Märsta','0704353455','Antonio.AxelssonRodriguez@yh.nackademin.se'),(2,'Kevin','Basale','Vimlagatan 36','196 44','Älvsjö','0704355533','kevin.basele@yh.nackademin.se'),(3,'Özgür','Baserdem','Banhofstigen 80','175 84','Årsta','0763436323','Ozgur.Baserdem@yh.nackademin.se'),(4,'Rikard','Bjerkenius','Teliakroken 63','193 99','Stockholm','0739469433','Rikard.Bjerkenius@yh.nackademin.se'),(5,'Eva','Björkegren','Tregränd 94','193 44','Saltsjöbo','0709396333','Eva.Bjorkegren@nackademin.se'),(6,'Sebastian','Carlson','Bredgatan 74','174 22','Södertälje','0703637733','sebastian.carlson@yh.nackademin.se'),(7,'Inna','Dyachkova','Mumindalen 33','125 88','Kungsängen','0738688374','inna.dyachkova@yh.nackademin.se'),(8,'Georgios','Goussis','Ekallén 4','164 99','Västberga','0793452277','georgios.goussis@yh.nackademin.se'),(9,'Kicki','Halmos','Duvstigen 2','107 44','Stockholm','0750400033','kickihalmos@yh.nackademin.se'),(10,'Robin','Hedlund','Comhemvägen 73','105 33','Stockholm','0732424038','robin.hedlund@yh.nackademin.se');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `position` varchar(45) NOT NULL,
  `reportsTo` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_employee_employee1_idx` (`reportsTo`),
  CONSTRAINT `fk_employee_employee1` FOREIGN KEY (`reportsTo`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Abdullahi','Aden','manager',3),(2,'Erika','Ahlström','staff',1),(3,'Max','Maximus','owner',NULL),(4,'Edvard','Åkerman','staff',1),(5,'Sarmad','Al-Bidhawi','staff',1);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `releaseYear` year(4) NOT NULL,
  `ageRating` int(2) unsigned NOT NULL,
  `plotOutline` tinytext NOT NULL,
  `imdbRating` float unsigned NOT NULL,
  `length` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (1,'The Shawshank Redemption',1994,15,'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.',9.3,'02:22:00'),(2,'The Godfather',1972,15,'An organized crime dynasty\'s aging patriarch transfers control of his clandestine empire to his reluctant son.',9.2,'02:55:00'),(3,'The Godfather: Part II',1974,15,'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.',9,'03:22:00'),(4,'The Dark Knight',2008,15,'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.',9,'02:32:00'),(5,'12 Angry Men',1957,15,'A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.',9,'01:36:00'),(6,'Schindler\'s List',1993,15,'In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.',8.9,'03:15:00'),(7,'The Lord of the Rings: The Return of the King',2003,11,'Gandalf and Aragorn lead the World of Men against Sauron\'s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.',8.9,'03:21:00'),(8,'Pulp Fiction',1994,15,'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.',8.9,'02:34:00'),(9,'Il buono, il brutto, il cattivo',1966,15,'A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.',8.8,'02:41:00'),(10,'Akira',1988,15,'A secret military project endangers Neo-Tokyo when it turns a biker gang member into a rampaging psychic psychopath who can only be stopped by two teenagers and a group of psychics.',8,'02:04:00');
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_has_actor`
--

DROP TABLE IF EXISTS `film_has_actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_has_actor` (
  `film_id` int(10) unsigned NOT NULL,
  `actor_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`film_id`,`actor_id`),
  KEY `fk_film_has_actor_actor1_idx` (`actor_id`),
  KEY `fk_film_has_actor_film1_idx` (`film_id`),
  CONSTRAINT `fk_film_has_actor_actor1` FOREIGN KEY (`actor_id`) REFERENCES `actordirector` (`id`),
  CONSTRAINT `fk_film_has_actor_film1` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_has_actor`
--

LOCK TABLES `film_has_actor` WRITE;
/*!40000 ALTER TABLE `film_has_actor` DISABLE KEYS */;
INSERT INTO `film_has_actor` VALUES (10,2),(10,3),(1,5),(1,6),(2,8),(2,9),(3,9),(3,10),(4,12),(5,14),(5,15),(6,17),(6,18),(7,20),(7,21),(8,23),(8,24),(9,26),(9,27),(4,28);
/*!40000 ALTER TABLE `film_has_actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_has_director`
--

DROP TABLE IF EXISTS `film_has_director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_has_director` (
  `film_id` int(10) unsigned NOT NULL,
  `director_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`film_id`,`director_id`),
  KEY `fk_film_has_actorDirector_actorDirector1_idx` (`director_id`),
  KEY `fk_film_has_actorDirector_film1_idx` (`film_id`),
  CONSTRAINT `fk_film_has_actorDirector_actorDirector1` FOREIGN KEY (`director_id`) REFERENCES `actordirector` (`id`),
  CONSTRAINT `fk_film_has_actorDirector_film1` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_has_director`
--

LOCK TABLES `film_has_director` WRITE;
/*!40000 ALTER TABLE `film_has_director` DISABLE KEYS */;
INSERT INTO `film_has_director` VALUES (10,1),(1,4),(2,7),(3,7),(4,11),(5,13),(6,16),(7,19),(8,22),(9,25);
/*!40000 ALTER TABLE `film_has_director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_has_genre`
--

DROP TABLE IF EXISTS `film_has_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_has_genre` (
  `film_id` int(10) unsigned NOT NULL,
  `genre_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`film_id`,`genre_id`),
  KEY `fk_film_has_genre_genre1_idx` (`genre_id`),
  KEY `fk_film_has_genre_film1_idx` (`film_id`),
  CONSTRAINT `fk_film_has_genre_film1` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`),
  CONSTRAINT `fk_film_has_genre_genre1` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_has_genre`
--

LOCK TABLES `film_has_genre` WRITE;
/*!40000 ALTER TABLE `film_has_genre` DISABLE KEYS */;
INSERT INTO `film_has_genre` VALUES (10,1),(4,2),(7,2),(10,2),(10,3),(1,4),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4),(8,4),(2,5),(3,5),(4,5),(5,5),(8,5),(6,6),(6,7),(7,8),(9,9);
/*!40000 ALTER TABLE `film_has_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filmStatistics`
--

DROP TABLE IF EXISTS `filmStatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filmStatistics` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `stat_month` date NOT NULL,
  `film_title` varchar(45) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmStatistics`
--

LOCK TABLES `filmStatistics` WRITE;
/*!40000 ALTER TABLE `filmStatistics` DISABLE KEYS */;
INSERT INTO `filmStatistics` VALUES (1,'2021-02-01','Il buono, il brutto, il cattivo'),(2,'2021-02-01','Il buono, il brutto, il cattivo'),(3,'2021-02-01','Il buono, il brutto, il cattivo'),(4,'2021-02-01','Akira');
/*!40000 ALTER TABLE `filmStatistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (1,'Animation'),(2,'Action'),(3,'Sci-Fi'),(4,'Drama'),(5,'Crime'),(6,'Biography'),(7,'History'),(8,'Adventure'),(9,'Western');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rentalOccation`
--

DROP TABLE IF EXISTS `rentalOccation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rentalOccation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `dateRented` date NOT NULL,
  `customer_id` int(10) unsigned NOT NULL,
  `employee_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rentalLog_customer1_idx` (`customer_id`),
  KEY `fk_rentalLog_employee1_idx` (`employee_id`),
  CONSTRAINT `fk_rentalLog_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `fk_rentalLog_employee1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rentalOccation`
--

LOCK TABLES `rentalOccation` WRITE;
/*!40000 ALTER TABLE `rentalOccation` DISABLE KEYS */;
INSERT INTO `rentalOccation` VALUES (1,'2020-08-15',1,5),(2,'2020-08-20',2,5),(3,'2021-01-15',3,4),(4,'2021-01-19',6,2),(5,'2021-01-19',7,2),(6,'2021-01-20',5,2),(7,'2021-01-27',4,4),(8,'2021-02-02',1,2),(12,'2021-02-02',2,2),(13,'2021-02-02',6,2),(14,'2021-02-03',8,5),(15,'2021-02-03',10,2),(16,'2021-02-04',10,2),(17,'2021-02-04',10,2),(18,'2021-02-04',10,2),(19,'2021-02-04',10,2),(20,'2021-02-04',10,2),(21,'2021-02-04',10,2);
/*!40000 ALTER TABLE `rentalOccation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rentalOccation_has_stockItem`
--

DROP TABLE IF EXISTS `rentalOccation_has_stockItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rentalOccation_has_stockItem` (
  `rentalOccation_id` int(11) unsigned NOT NULL,
  `stockItem_id` int(10) unsigned NOT NULL,
  `dateReturned` date DEFAULT NULL,
  PRIMARY KEY (`rentalOccation_id`,`stockItem_id`),
  KEY `fk_rentalOccation_has_stockItem_stockItem1_idx` (`stockItem_id`),
  KEY `fk_rentalOccation_has_stockItem_rentalOccation1_idx` (`rentalOccation_id`),
  CONSTRAINT `fk_rentalOccation_has_stockItem_stockItem1` FOREIGN KEY (`stockItem_id`) REFERENCES `stockitem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rentalOccation_has_stockItem`
--

LOCK TABLES `rentalOccation_has_stockItem` WRITE;
/*!40000 ALTER TABLE `rentalOccation_has_stockItem` DISABLE KEYS */;
INSERT INTO `rentalOccation_has_stockItem` VALUES (1,3,'2020-08-17'),(2,4,'2020-08-22'),(2,7,'2020-08-23'),(3,13,'2021-01-17'),(4,16,NULL),(5,22,NULL),(6,6,NULL),(6,9,NULL),(7,5,'2021-02-03'),(7,8,'2021-02-03'),(8,1,'2021-02-03'),(12,2,'2021-02-03'),(13,18,'2021-02-04'),(14,7,NULL),(16,23,NULL),(17,24,NULL),(18,25,NULL),(19,26,NULL),(20,27,NULL),(21,28,NULL);
/*!40000 ALTER TABLE `rentalOccation_has_stockItem` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `rentalOccation_has_stockItem_AFTER_INSERT` AFTER INSERT ON `rentaloccation_has_stockitem` FOR EACH ROW BEGIN
	SELECT
		DATE_FORMAT(curdate(), '%Y-%m-01')
	INTO
		@stat_month;
	SELECT 
		title
	INTO 
		@title
	FROM
		film f
	JOIN
		stockItem s ON f.id = s.film_id
	JOIN
		rentalOccation_has_stockItem rhs ON rhs.stockitem_id = s.id
	WHERE
		NEW.stockItem_id = s.id;
	INSERT INTO filmStatistics (stat_month, film_title) VALUES (@stat_month, @title);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `stockItem`
--

DROP TABLE IF EXISTS `stockItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stockItem` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `film_id` int(10) unsigned NOT NULL,
  `onShelf` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_filmStock_film1_idx` (`film_id`),
  CONSTRAINT `fk_filmStock_film1` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockItem`
--

LOCK TABLES `stockItem` WRITE;
/*!40000 ALTER TABLE `stockItem` DISABLE KEYS */;
INSERT INTO `stockItem` VALUES (1,1,1),(2,1,1),(3,1,1),(4,2,1),(5,2,1),(6,2,0),(7,3,0),(8,3,1),(9,3,0),(10,4,1),(11,4,1),(12,4,1),(13,5,1),(14,5,1),(15,5,1),(16,6,0),(17,6,1),(18,6,1),(19,7,1),(20,7,1),(21,7,1),(22,8,0),(23,8,0),(24,8,0),(25,9,0),(26,9,0),(27,9,0),(28,10,0),(29,10,1),(30,10,1);
/*!40000 ALTER TABLE `stockItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_crimefilms`
--

DROP TABLE IF EXISTS `vw_crimefilms`;
/*!50001 DROP VIEW IF EXISTS `vw_crimefilms`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_crimefilms` AS SELECT 
 1 AS `Våra kriminalfilmer:`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_employeeperformance`
--

DROP TABLE IF EXISTS `vw_employeeperformance`;
/*!50001 DROP VIEW IF EXISTS `vw_employeeperformance`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_employeeperformance` AS SELECT 
 1 AS `Anställningsnummer`,
 1 AS `Anställds namn`,
 1 AS `Roll`,
 1 AS `Antal uthyrda filmer`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_filmsout`
--

DROP TABLE IF EXISTS `vw_filmsout`;
/*!50001 DROP VIEW IF EXISTS `vw_filmsout`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_filmsout` AS SELECT 
 1 AS `Lagernummer`,
 1 AS `Titel`,
 1 AS `Uthyrningsdatum`,
 1 AS `Kund id`,
 1 AS `Kund namn`,
 1 AS `Uthyrd av anställningsnummer`,
 1 AS `Uthyrd av namn`,
 1 AS `Bör-datum tillbaka`,
 1 AS `Dagar sen hyrning`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_laterentals`
--

DROP TABLE IF EXISTS `vw_laterentals`;
/*!50001 DROP VIEW IF EXISTS `vw_laterentals`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_laterentals` AS SELECT 
 1 AS `Lagernummer`,
 1 AS `Titel`,
 1 AS `Uthyrningsdatum`,
 1 AS `Kund id`,
 1 AS `Kund namn`,
 1 AS `Uthyrd av anställningsnummer`,
 1 AS `Uthyrd av namn`,
 1 AS `Bör-datum tillbaka`,
 1 AS `Dagar sen hyrning`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_ourfilms`
--

DROP TABLE IF EXISTS `vw_ourfilms`;
/*!50001 DROP VIEW IF EXISTS `vw_ourfilms`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_ourfilms` AS SELECT 
 1 AS `Filmnamn`,
 1 AS `Hur många ex vi har:`,
 1 AS `Ex inne just nu`,
 1 AS `Åldersgräns`,
 1 AS `Betyg 0-10`,
 1 AS `Filmens längd tim:min:sek`,
 1 AS `Handling:`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_top5last30days`
--

DROP TABLE IF EXISTS `vw_top5last30days`;
/*!50001 DROP VIEW IF EXISTS `vw_top5last30days`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_top5last30days` AS SELECT 
 1 AS `Filmtitel`,
 1 AS `Antal uthyrningar`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'BjornT'
--

--
-- Dumping routines for database 'BjornT'
--
/*!50003 DROP FUNCTION IF EXISTS `isLate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `isLate`(
	stockItem_id INT
) RETURNS varchar(5) CHARSET utf8
BEGIN
	DECLARE daysPassed INT;
    SELECT
		TO_DAYS(CURDATE()) - TO_DAYS(rO.dateRented)
	FROM
		rentalOccation_has_stockItem rhs
	JOIN
		rentalOccation ro ON ro.id = rhs.rentalOccation_id
	WHERE
		rhs.stockItem_id = stockItem_id
	ORDER BY rhs.rentalOccation_id DESC LIMIT 1
    INTO daysPassed;
	IF
		daysPassed > 4
	THEN RETURN 'TRUE';
    ELSE RETURN 'FALSE';
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `isOnShelf` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `isOnShelf`(
	stockItem_id INT
) RETURNS tinyint(1)
BEGIN
	DECLARE var BOOL DEFAULT FALSE;
    SELECT
		onShelf
	FROM
		stockItem si
	WHERE
		si.id = stockItem_id INTO var;
	RETURN var;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_rent_oneFilm` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_rent_oneFilm`(
	IN p_employee_id INT,
    IN p_customer_id INT,
    IN p_stockItem_id INT
)
BEGIN
	DECLARE sRentalOccation_id INT;
	UPDATE stockItem s SET `onShelf` = '0' WHERE (id = p_stockItem_id);
    INSERT INTO rentalOccation (`dateRented`, `customer_id`, `employee_id`) VALUES (CURDATE(), p_customer_id, p_employee_id);
    SET sRentalOccation_id = LAST_INSERT_ID();
    INSERT INTO rentalOccation_has_stockItem (`rentalOccation_id`, `stockItem_id`) VALUES (sRentalOccation_id, p_stockItem_id);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_return_oneFilm` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_return_oneFilm`(
	IN p_stockItem_id INT
)
BEGIN
	DECLARE sMessage VARCHAR(45);
	UPDATE stockItem s 
SET 
    `onShelf` = '1'
WHERE
    (id = p_stockItem_id);
UPDATE rentalOccation_has_stockItem rhs 
SET 
    `dateReturned` = CURDATE()
WHERE
    (stockItem_id = p_stockItem_id);
    IF (isLate(p_stockItem_id) = 'TRUE')
	THEN SET sMessage = 'Filmen är för sent inlämnad.';
    ELSE SET sMessage = 'Filmen är inlämnad i tid.';
    END IF;
	SELECT sMessage AS 'Notering';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vw_crimefilms`
--

/*!50001 DROP VIEW IF EXISTS `vw_crimefilms`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_crimefilms` AS select `f`.`title` AS `Våra kriminalfilmer:` from (`film_has_genre` `fhg` join `film` `f` on((`fhg`.`film_id` = `f`.`id`))) where (`fhg`.`genre_id` = 5) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_employeeperformance`
--

/*!50001 DROP VIEW IF EXISTS `vw_employeeperformance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_employeeperformance` AS select `e`.`id` AS `Anställningsnummer`,concat(`e`.`firstName`,' ',`e`.`lastName`) AS `Anställds namn`,`e`.`position` AS `Roll`,count(`rhs`.`stockItem_id`) AS `Antal uthyrda filmer` from (`employee` `e` left join (`rentaloccation_has_stockitem` `rhs` join `rentaloccation` `r` on((`r`.`id` = `rhs`.`rentalOccation_id`))) on((`e`.`id` = `r`.`employee_id`))) group by `e`.`id` order by count(0) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_filmsout`
--

/*!50001 DROP VIEW IF EXISTS `vw_filmsout`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_filmsout` AS select `si`.`id` AS `Lagernummer`,`f`.`title` AS `Titel`,`r`.`dateRented` AS `Uthyrningsdatum`,`r`.`customer_id` AS `Kund id`,concat(`c`.`firstName`,' ',`c`.`lastName`) AS `Kund namn`,`e`.`id` AS `Uthyrd av anställningsnummer`,concat(`e`.`firstName`,' ',`e`.`lastName`) AS `Uthyrd av namn`,(`r`.`dateRented` + interval 4 day) AS `Bör-datum tillbaka`,(to_days(curdate()) - to_days(`r`.`dateRented`)) AS `Dagar sen hyrning` from (((((`stockitem` `si` join `film` `f` on((`f`.`id` = `si`.`film_id`))) join `rentaloccation_has_stockitem` `rhs` on((`si`.`id` = `rhs`.`stockItem_id`))) join `rentaloccation` `r` on((`r`.`id` = `rhs`.`rentalOccation_id`))) join `employee` `e` on((`e`.`id` = `r`.`employee_id`))) join `customer` `c` on((`c`.`id` = `r`.`customer_id`))) where isnull(`rhs`.`dateReturned`) order by `r`.`dateRented` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_laterentals`
--

/*!50001 DROP VIEW IF EXISTS `vw_laterentals`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_laterentals` AS select `si`.`id` AS `Lagernummer`,`f`.`title` AS `Titel`,`r`.`dateRented` AS `Uthyrningsdatum`,`r`.`customer_id` AS `Kund id`,concat(`c`.`firstName`,' ',`c`.`lastName`) AS `Kund namn`,`e`.`id` AS `Uthyrd av anställningsnummer`,concat(`e`.`firstName`,' ',`e`.`lastName`) AS `Uthyrd av namn`,(`r`.`dateRented` + interval 4 day) AS `Bör-datum tillbaka`,(to_days(curdate()) - to_days(`r`.`dateRented`)) AS `Dagar sen hyrning` from (((((`stockitem` `si` join `film` `f` on((`f`.`id` = `si`.`film_id`))) join `rentaloccation_has_stockitem` `rhs` on((`si`.`id` = `rhs`.`stockItem_id`))) join `rentaloccation` `r` on((`r`.`id` = `rhs`.`rentalOccation_id`))) join `employee` `e` on((`e`.`id` = `r`.`employee_id`))) join `customer` `c` on((`c`.`id` = `r`.`customer_id`))) where (isnull(`rhs`.`dateReturned`) and ((to_days(curdate()) - to_days(`r`.`dateRented`)) > 4)) order by `r`.`dateRented` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_ourfilms`
--

/*!50001 DROP VIEW IF EXISTS `vw_ourfilms`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_ourfilms` AS select `f`.`title` AS `Filmnamn`,count(0) AS `Hur många ex vi har:`,count((case `si`.`onShelf` when 1 then 1 else NULL end)) AS `Ex inne just nu`,`f`.`ageRating` AS `Åldersgräns`,`f`.`imdbRating` AS `Betyg 0-10`,`f`.`length` AS `Filmens längd tim:min:sek`,`f`.`plotOutline` AS `Handling:` from (`stockitem` `si` join `film` `f` on((`si`.`film_id` = `f`.`id`))) group by `si`.`film_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_top5last30days`
--

/*!50001 DROP VIEW IF EXISTS `vw_top5last30days`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_top5last30days` AS select `f`.`title` AS `Filmtitel`,count(`f`.`id`) AS `Antal uthyrningar` from (((`rentaloccation_has_stockitem` `rhs` join `rentaloccation` `r` on((`r`.`id` = `rhs`.`rentalOccation_id`))) join `stockitem` `s` on((`s`.`id` = `rhs`.`stockItem_id`))) join `film` `f` on((`f`.`id` = `s`.`film_id`))) where ((to_days(curdate()) - to_days(`r`.`dateRented`)) < 30) group by `f`.`id` order by count(`f`.`id`) desc limit 5 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-04 17:16:12
