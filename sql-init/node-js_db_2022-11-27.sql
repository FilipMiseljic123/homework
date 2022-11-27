# ************************************************************
# Sequel Ace SQL dump
# Version 20039
#
# https://sequel-ace.com/
# https://github.com/Sequel-Ace/Sequel-Ace
#
# Host: localhost (MySQL 8.0.31)
# Database: node-js_db
# Generation Time: 2022-11-27 18:59:05 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE='NO_AUTO_VALUE_ON_ZERO', SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table proizvodi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `proizvodi`;

CREATE TABLE `proizvodi` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `proizvodjac_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cena` int DEFAULT NULL,
  `opis proizvoda` varchar(256) DEFAULT NULL,
  `proizvod` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `proizvodi` WRITE;
/*!40000 ALTER TABLE `proizvodi` DISABLE KEYS */;

INSERT INTO `proizvodi` (`id`, `proizvodjac_id`, `cena`, `opis proizvoda`, `proizvod`)
VALUES
	(1,'1',123,'qwerty','proizvod1'),
	(2,'1',213,'qwert','proizvod2'),
	(3,'1',321,'qwe','proizvod3'),
	(4,'2',4321,'asdf','proizvod1'),
	(5,'2',4321,'asdasd','proizvod2'),
	(6,'2',532,'ffew','proizvod3'),
	(7,'3',234,'asda','proizvod1'),
	(8,'3',123123,'324234','proizvod2'),
	(9,'3',324234,'opis','proizvod3');

/*!40000 ALTER TABLE `proizvodi` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table proizvodjaci
# ------------------------------------------------------------

DROP TABLE IF EXISTS `proizvodjaci`;

CREATE TABLE `proizvodjaci` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ime` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `proizvodjaci` WRITE;
/*!40000 ALTER TABLE `proizvodjaci` DISABLE KEYS */;

INSERT INTO `proizvodjaci` (`id`, `ime`)
VALUES
	(1,'ime1'),
	(2,'ime2'),
	(3,'ime3');

/*!40000 ALTER TABLE `proizvodjaci` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
