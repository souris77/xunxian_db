-- MySQL dump 10.13  Distrib 5.5.47, for Win32 (x86)
--
-- Host: localhost    Database: xunxian_gis_83
-- ------------------------------------------------------
-- Server version	5.5.47

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
-- Table structure for table `gis_account_type_once`
--

DROP TABLE IF EXISTS `gis_account_type_once`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_account_type_once` (
  `account` char(32) NOT NULL DEFAULT '',
  `cardpref` char(4) NOT NULL DEFAULT '',
  `lasttime` int(10) unsigned DEFAULT '0',
  `num` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`account`,`cardpref`),
  KEY `firsttime` (`lasttime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_account_type_once`
--

LOCK TABLES `gis_account_type_once` WRITE;
/*!40000 ALTER TABLE `gis_account_type_once` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_account_type_once` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_account_type_once_def`
--

DROP TABLE IF EXISTS `gis_account_type_once_def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_account_type_once_def` (
  `cardpref` char(4) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cardpref`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_account_type_once_def`
--

LOCK TABLES `gis_account_type_once_def` WRITE;
/*!40000 ALTER TABLE `gis_account_type_once_def` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_account_type_once_def` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_card_list`
--

DROP TABLE IF EXISTS `gis_card_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_card_list` (
  `cardid` char(32) NOT NULL DEFAULT '',
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `overduetime` int(10) unsigned DEFAULT NULL,
  `luckyrate` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cardid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_card_list`
--

LOCK TABLES `gis_card_list` WRITE;
/*!40000 ALTER TABLE `gis_card_list` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_card_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_char_type_once`
--

DROP TABLE IF EXISTS `gis_char_type_once`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_char_type_once` (
  `charname` char(32) NOT NULL DEFAULT '',
  `cardpref` char(4) NOT NULL DEFAULT '',
  `lasttime` int(10) unsigned DEFAULT '0',
  `num` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`charname`,`cardpref`),
  KEY `firsttime` (`lasttime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_char_type_once`
--

LOCK TABLES `gis_char_type_once` WRITE;
/*!40000 ALTER TABLE `gis_char_type_once` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_char_type_once` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_char_type_once_def`
--

DROP TABLE IF EXISTS `gis_char_type_once_def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_char_type_once_def` (
  `cardpref` char(4) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  PRIMARY KEY (`cardpref`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_char_type_once_def`
--

LOCK TABLES `gis_char_type_once_def` WRITE;
/*!40000 ALTER TABLE `gis_char_type_once_def` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_char_type_once_def` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery`
--

DROP TABLE IF EXISTS `gis_lottery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery` (
  `lotteryid` int(10) unsigned NOT NULL DEFAULT '0',
  `message` char(200) DEFAULT NULL,
  PRIMARY KEY (`lotteryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery`
--

LOCK TABLES `gis_lottery` WRITE;
/*!40000 ALTER TABLE `gis_lottery` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history1`
--

DROP TABLE IF EXISTS `gis_lottery_history1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history1` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history1`
--

LOCK TABLES `gis_lottery_history1` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history1` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history10`
--

DROP TABLE IF EXISTS `gis_lottery_history10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history10` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history10`
--

LOCK TABLES `gis_lottery_history10` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history10` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history11`
--

DROP TABLE IF EXISTS `gis_lottery_history11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history11` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history11`
--

LOCK TABLES `gis_lottery_history11` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history11` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history12`
--

DROP TABLE IF EXISTS `gis_lottery_history12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history12` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history12`
--

LOCK TABLES `gis_lottery_history12` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history12` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history13`
--

DROP TABLE IF EXISTS `gis_lottery_history13`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history13` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history13`
--

LOCK TABLES `gis_lottery_history13` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history13` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history13` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history14`
--

DROP TABLE IF EXISTS `gis_lottery_history14`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history14` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history14`
--

LOCK TABLES `gis_lottery_history14` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history14` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history14` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history15`
--

DROP TABLE IF EXISTS `gis_lottery_history15`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history15` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history15`
--

LOCK TABLES `gis_lottery_history15` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history15` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history15` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history16`
--

DROP TABLE IF EXISTS `gis_lottery_history16`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history16` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history16`
--

LOCK TABLES `gis_lottery_history16` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history16` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history16` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history17`
--

DROP TABLE IF EXISTS `gis_lottery_history17`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history17` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history17`
--

LOCK TABLES `gis_lottery_history17` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history17` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history17` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history18`
--

DROP TABLE IF EXISTS `gis_lottery_history18`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history18` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history18`
--

LOCK TABLES `gis_lottery_history18` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history18` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history18` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history19`
--

DROP TABLE IF EXISTS `gis_lottery_history19`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history19` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history19`
--

LOCK TABLES `gis_lottery_history19` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history19` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history19` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history2`
--

DROP TABLE IF EXISTS `gis_lottery_history2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history2` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history2`
--

LOCK TABLES `gis_lottery_history2` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history2` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history20`
--

DROP TABLE IF EXISTS `gis_lottery_history20`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history20` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history20`
--

LOCK TABLES `gis_lottery_history20` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history20` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history20` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history21`
--

DROP TABLE IF EXISTS `gis_lottery_history21`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history21` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history21`
--

LOCK TABLES `gis_lottery_history21` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history21` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history21` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history22`
--

DROP TABLE IF EXISTS `gis_lottery_history22`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history22` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history22`
--

LOCK TABLES `gis_lottery_history22` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history22` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history22` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history23`
--

DROP TABLE IF EXISTS `gis_lottery_history23`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history23` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history23`
--

LOCK TABLES `gis_lottery_history23` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history23` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history23` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history24`
--

DROP TABLE IF EXISTS `gis_lottery_history24`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history24` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history24`
--

LOCK TABLES `gis_lottery_history24` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history24` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history24` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history25`
--

DROP TABLE IF EXISTS `gis_lottery_history25`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history25` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history25`
--

LOCK TABLES `gis_lottery_history25` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history25` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history25` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history26`
--

DROP TABLE IF EXISTS `gis_lottery_history26`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history26` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history26`
--

LOCK TABLES `gis_lottery_history26` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history26` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history26` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history27`
--

DROP TABLE IF EXISTS `gis_lottery_history27`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history27` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history27`
--

LOCK TABLES `gis_lottery_history27` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history27` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history27` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history28`
--

DROP TABLE IF EXISTS `gis_lottery_history28`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history28` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history28`
--

LOCK TABLES `gis_lottery_history28` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history28` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history28` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history29`
--

DROP TABLE IF EXISTS `gis_lottery_history29`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history29` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history29`
--

LOCK TABLES `gis_lottery_history29` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history29` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history29` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history3`
--

DROP TABLE IF EXISTS `gis_lottery_history3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history3` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history3`
--

LOCK TABLES `gis_lottery_history3` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history3` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history30`
--

DROP TABLE IF EXISTS `gis_lottery_history30`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history30` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history30`
--

LOCK TABLES `gis_lottery_history30` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history30` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history30` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history31`
--

DROP TABLE IF EXISTS `gis_lottery_history31`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history31` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history31`
--

LOCK TABLES `gis_lottery_history31` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history31` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history31` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history4`
--

DROP TABLE IF EXISTS `gis_lottery_history4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history4` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history4`
--

LOCK TABLES `gis_lottery_history4` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history4` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history5`
--

DROP TABLE IF EXISTS `gis_lottery_history5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history5` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history5`
--

LOCK TABLES `gis_lottery_history5` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history5` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history6`
--

DROP TABLE IF EXISTS `gis_lottery_history6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history6` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history6`
--

LOCK TABLES `gis_lottery_history6` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history6` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history7`
--

DROP TABLE IF EXISTS `gis_lottery_history7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history7` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history7`
--

LOCK TABLES `gis_lottery_history7` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history7` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history8`
--

DROP TABLE IF EXISTS `gis_lottery_history8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history8` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history8`
--

LOCK TABLES `gis_lottery_history8` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history8` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gis_lottery_history9`
--

DROP TABLE IF EXISTS `gis_lottery_history9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gis_lottery_history9` (
  `cardid` char(32) NOT NULL,
  `lotteryid` int(10) unsigned DEFAULT NULL,
  `t` int(10) unsigned DEFAULT NULL,
  `account` char(32) DEFAULT NULL,
  `charname` char(32) DEFAULT NULL,
  PRIMARY KEY (`cardid`),
  KEY `t` (`t`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gis_lottery_history9`
--

LOCK TABLES `gis_lottery_history9` WRITE;
/*!40000 ALTER TABLE `gis_lottery_history9` DISABLE KEYS */;
/*!40000 ALTER TABLE `gis_lottery_history9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gmgs_gm_player_gm_msg`
--

DROP TABLE IF EXISTS `gmgs_gm_player_gm_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gmgs_gm_player_gm_msg` (
  `messageid` int(11) NOT NULL AUTO_INCREMENT,
  `srv_group` int(3) unsigned NOT NULL DEFAULT '0',
  `charname` char(32) DEFAULT NULL,
  `msg_type` int(1) unsigned NOT NULL DEFAULT '0',
  `request_time` int(10) unsigned NOT NULL DEFAULT '0',
  `respond_time` int(10) unsigned NOT NULL DEFAULT '0',
  `request_content` blob,
  `respond_content` blob,
  `status` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`messageid`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gmgs_gm_player_gm_msg`
--

LOCK TABLES `gmgs_gm_player_gm_msg` WRITE;
/*!40000 ALTER TABLE `gmgs_gm_player_gm_msg` DISABLE KEYS */;
/*!40000 ALTER TABLE `gmgs_gm_player_gm_msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `v_usedcodes`
--

DROP TABLE IF EXISTS `v_usedcodes`;
/*!50001 DROP VIEW IF EXISTS `v_usedcodes`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_usedcodes` (
  `cardid` tinyint NOT NULL,
  `lotteryid` tinyint NOT NULL,
  `t` tinyint NOT NULL,
  `account` tinyint NOT NULL,
  `charname` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_usedcodes`
--

/*!50001 DROP TABLE IF EXISTS `v_usedcodes`*/;
/*!50001 DROP VIEW IF EXISTS `v_usedcodes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`xxyx1986`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_usedcodes` AS select `gis_lottery_history1`.`cardid` AS `cardid`,`gis_lottery_history1`.`lotteryid` AS `lotteryid`,`gis_lottery_history1`.`t` AS `t`,`gis_lottery_history1`.`account` AS `account`,`gis_lottery_history1`.`charname` AS `charname` from `gis_lottery_history1` union select `gis_lottery_history2`.`cardid` AS `cardid`,`gis_lottery_history2`.`lotteryid` AS `lotteryid`,`gis_lottery_history2`.`t` AS `t`,`gis_lottery_history2`.`account` AS `account`,`gis_lottery_history2`.`charname` AS `charname` from `gis_lottery_history2` union select `gis_lottery_history3`.`cardid` AS `cardid`,`gis_lottery_history3`.`lotteryid` AS `lotteryid`,`gis_lottery_history3`.`t` AS `t`,`gis_lottery_history3`.`account` AS `account`,`gis_lottery_history3`.`charname` AS `charname` from `gis_lottery_history3` union select `gis_lottery_history4`.`cardid` AS `cardid`,`gis_lottery_history4`.`lotteryid` AS `lotteryid`,`gis_lottery_history4`.`t` AS `t`,`gis_lottery_history4`.`account` AS `account`,`gis_lottery_history4`.`charname` AS `charname` from `gis_lottery_history4` union select `gis_lottery_history5`.`cardid` AS `cardid`,`gis_lottery_history5`.`lotteryid` AS `lotteryid`,`gis_lottery_history5`.`t` AS `t`,`gis_lottery_history5`.`account` AS `account`,`gis_lottery_history5`.`charname` AS `charname` from `gis_lottery_history5` union select `gis_lottery_history6`.`cardid` AS `cardid`,`gis_lottery_history6`.`lotteryid` AS `lotteryid`,`gis_lottery_history6`.`t` AS `t`,`gis_lottery_history6`.`account` AS `account`,`gis_lottery_history6`.`charname` AS `charname` from `gis_lottery_history6` union select `gis_lottery_history7`.`cardid` AS `cardid`,`gis_lottery_history7`.`lotteryid` AS `lotteryid`,`gis_lottery_history7`.`t` AS `t`,`gis_lottery_history7`.`account` AS `account`,`gis_lottery_history7`.`charname` AS `charname` from `gis_lottery_history7` union select `gis_lottery_history8`.`cardid` AS `cardid`,`gis_lottery_history8`.`lotteryid` AS `lotteryid`,`gis_lottery_history8`.`t` AS `t`,`gis_lottery_history8`.`account` AS `account`,`gis_lottery_history8`.`charname` AS `charname` from `gis_lottery_history8` union select `gis_lottery_history9`.`cardid` AS `cardid`,`gis_lottery_history9`.`lotteryid` AS `lotteryid`,`gis_lottery_history9`.`t` AS `t`,`gis_lottery_history9`.`account` AS `account`,`gis_lottery_history9`.`charname` AS `charname` from `gis_lottery_history9` union select `gis_lottery_history10`.`cardid` AS `cardid`,`gis_lottery_history10`.`lotteryid` AS `lotteryid`,`gis_lottery_history10`.`t` AS `t`,`gis_lottery_history10`.`account` AS `account`,`gis_lottery_history10`.`charname` AS `charname` from `gis_lottery_history10` union select `gis_lottery_history11`.`cardid` AS `cardid`,`gis_lottery_history11`.`lotteryid` AS `lotteryid`,`gis_lottery_history11`.`t` AS `t`,`gis_lottery_history11`.`account` AS `account`,`gis_lottery_history11`.`charname` AS `charname` from `gis_lottery_history11` union select `gis_lottery_history12`.`cardid` AS `cardid`,`gis_lottery_history12`.`lotteryid` AS `lotteryid`,`gis_lottery_history12`.`t` AS `t`,`gis_lottery_history12`.`account` AS `account`,`gis_lottery_history12`.`charname` AS `charname` from `gis_lottery_history12` union select `gis_lottery_history13`.`cardid` AS `cardid`,`gis_lottery_history13`.`lotteryid` AS `lotteryid`,`gis_lottery_history13`.`t` AS `t`,`gis_lottery_history13`.`account` AS `account`,`gis_lottery_history13`.`charname` AS `charname` from `gis_lottery_history13` union select `gis_lottery_history14`.`cardid` AS `cardid`,`gis_lottery_history14`.`lotteryid` AS `lotteryid`,`gis_lottery_history14`.`t` AS `t`,`gis_lottery_history14`.`account` AS `account`,`gis_lottery_history14`.`charname` AS `charname` from `gis_lottery_history14` union select `gis_lottery_history15`.`cardid` AS `cardid`,`gis_lottery_history15`.`lotteryid` AS `lotteryid`,`gis_lottery_history15`.`t` AS `t`,`gis_lottery_history15`.`account` AS `account`,`gis_lottery_history15`.`charname` AS `charname` from `gis_lottery_history15` union select `gis_lottery_history16`.`cardid` AS `cardid`,`gis_lottery_history16`.`lotteryid` AS `lotteryid`,`gis_lottery_history16`.`t` AS `t`,`gis_lottery_history16`.`account` AS `account`,`gis_lottery_history16`.`charname` AS `charname` from `gis_lottery_history16` union select `gis_lottery_history17`.`cardid` AS `cardid`,`gis_lottery_history17`.`lotteryid` AS `lotteryid`,`gis_lottery_history17`.`t` AS `t`,`gis_lottery_history17`.`account` AS `account`,`gis_lottery_history17`.`charname` AS `charname` from `gis_lottery_history17` union select `gis_lottery_history18`.`cardid` AS `cardid`,`gis_lottery_history18`.`lotteryid` AS `lotteryid`,`gis_lottery_history18`.`t` AS `t`,`gis_lottery_history18`.`account` AS `account`,`gis_lottery_history18`.`charname` AS `charname` from `gis_lottery_history18` union select `gis_lottery_history19`.`cardid` AS `cardid`,`gis_lottery_history19`.`lotteryid` AS `lotteryid`,`gis_lottery_history19`.`t` AS `t`,`gis_lottery_history19`.`account` AS `account`,`gis_lottery_history19`.`charname` AS `charname` from `gis_lottery_history19` union select `gis_lottery_history20`.`cardid` AS `cardid`,`gis_lottery_history20`.`lotteryid` AS `lotteryid`,`gis_lottery_history20`.`t` AS `t`,`gis_lottery_history20`.`account` AS `account`,`gis_lottery_history20`.`charname` AS `charname` from `gis_lottery_history20` union select `gis_lottery_history21`.`cardid` AS `cardid`,`gis_lottery_history21`.`lotteryid` AS `lotteryid`,`gis_lottery_history21`.`t` AS `t`,`gis_lottery_history21`.`account` AS `account`,`gis_lottery_history21`.`charname` AS `charname` from `gis_lottery_history21` union select `gis_lottery_history22`.`cardid` AS `cardid`,`gis_lottery_history22`.`lotteryid` AS `lotteryid`,`gis_lottery_history22`.`t` AS `t`,`gis_lottery_history22`.`account` AS `account`,`gis_lottery_history22`.`charname` AS `charname` from `gis_lottery_history22` union select `gis_lottery_history23`.`cardid` AS `cardid`,`gis_lottery_history23`.`lotteryid` AS `lotteryid`,`gis_lottery_history23`.`t` AS `t`,`gis_lottery_history23`.`account` AS `account`,`gis_lottery_history23`.`charname` AS `charname` from `gis_lottery_history23` union select `gis_lottery_history24`.`cardid` AS `cardid`,`gis_lottery_history24`.`lotteryid` AS `lotteryid`,`gis_lottery_history24`.`t` AS `t`,`gis_lottery_history24`.`account` AS `account`,`gis_lottery_history24`.`charname` AS `charname` from `gis_lottery_history24` union select `gis_lottery_history25`.`cardid` AS `cardid`,`gis_lottery_history25`.`lotteryid` AS `lotteryid`,`gis_lottery_history25`.`t` AS `t`,`gis_lottery_history25`.`account` AS `account`,`gis_lottery_history25`.`charname` AS `charname` from `gis_lottery_history25` union select `gis_lottery_history26`.`cardid` AS `cardid`,`gis_lottery_history26`.`lotteryid` AS `lotteryid`,`gis_lottery_history26`.`t` AS `t`,`gis_lottery_history26`.`account` AS `account`,`gis_lottery_history26`.`charname` AS `charname` from `gis_lottery_history26` union select `gis_lottery_history27`.`cardid` AS `cardid`,`gis_lottery_history27`.`lotteryid` AS `lotteryid`,`gis_lottery_history27`.`t` AS `t`,`gis_lottery_history27`.`account` AS `account`,`gis_lottery_history27`.`charname` AS `charname` from `gis_lottery_history27` union select `gis_lottery_history28`.`cardid` AS `cardid`,`gis_lottery_history28`.`lotteryid` AS `lotteryid`,`gis_lottery_history28`.`t` AS `t`,`gis_lottery_history28`.`account` AS `account`,`gis_lottery_history28`.`charname` AS `charname` from `gis_lottery_history28` union select `gis_lottery_history29`.`cardid` AS `cardid`,`gis_lottery_history29`.`lotteryid` AS `lotteryid`,`gis_lottery_history29`.`t` AS `t`,`gis_lottery_history29`.`account` AS `account`,`gis_lottery_history29`.`charname` AS `charname` from `gis_lottery_history29` union select `gis_lottery_history30`.`cardid` AS `cardid`,`gis_lottery_history30`.`lotteryid` AS `lotteryid`,`gis_lottery_history30`.`t` AS `t`,`gis_lottery_history30`.`account` AS `account`,`gis_lottery_history30`.`charname` AS `charname` from `gis_lottery_history30` union select `gis_lottery_history31`.`cardid` AS `cardid`,`gis_lottery_history31`.`lotteryid` AS `lotteryid`,`gis_lottery_history31`.`t` AS `t`,`gis_lottery_history31`.`account` AS `account`,`gis_lottery_history31`.`charname` AS `charname` from `gis_lottery_history31` */;
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

-- Dump completed on 2016-09-02 17:19:51
