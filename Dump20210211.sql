-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: alumni
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `batch`
--

DROP TABLE IF EXISTS `batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch` (
  `sessionid` int NOT NULL AUTO_INCREMENT,
  `sbatch` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sessionid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch`
--

LOCK TABLES `batch` WRITE;
/*!40000 ALTER TABLE `batch` DISABLE KEYS */;
/*!40000 ALTER TABLE `batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogpost`
--

DROP TABLE IF EXISTS `blogpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogpost` (
  `blogid` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `diselikecount` int DEFAULT NULL,
  `emailid` varchar(255) DEFAULT NULL,
  `likecount` int DEFAULT NULL,
  `picname` varchar(255) DEFAULT NULL,
  `postdate` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`blogid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogpost`
--

LOCK TABLES `blogpost` WRITE;
/*!40000 ALTER TABLE `blogpost` DISABLE KEYS */;
INSERT INTO `blogpost` VALUES (1,'fdsf',NULL,'admin@gmail.com',NULL,'admin@gmail.com2021.02.11.10.48','2021-02-11 10:48:14',NULL,NULL),(2,'sffdsf\r\nfds\r\nf\r\nds\r\nf\r\nds\r\nffd\r\nsf\r\nds\r\nf\r\nds\r\nf\r\nds\r\nf\r\nds\r\nf\r\nds\r\nf\r\nds\r\nf',NULL,'admin@gmail.com',NULL,'admin@gmail.com2021.02.11.10.49','2021-02-11 10:49:32',NULL,NULL);
/*!40000 ALTER TABLE `blogpost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careerobjective`
--

DROP TABLE IF EXISTS `careerobjective`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `careerobjective` (
  `coid` int NOT NULL AUTO_INCREMENT,
  `careerobjective` varchar(255) DEFAULT NULL,
  `costatus` varchar(255) DEFAULT NULL,
  `emailid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`coid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careerobjective`
--

LOCK TABLES `careerobjective` WRITE;
/*!40000 ALTER TABLE `careerobjective` DISABLE KEYS */;
/*!40000 ALTER TABLE `careerobjective` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `commentid` int NOT NULL AUTO_INCREMENT,
  `blogid` int DEFAULT NULL,
  `commentdate` datetime DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `dislikecount` int DEFAULT NULL,
  `emailid` varchar(255) DEFAULT NULL,
  `likecount` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`commentid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1,1,'2021-02-11 10:48:48','fdsfds',NULL,'admin@gmail.com',NULL,NULL),(2,1,'2021-02-11 10:48:59','fdsfds',NULL,'admin@gmail.com',NULL,NULL),(3,1,'2021-02-11 10:52:13','dsfdsf',NULL,'habib@gmail.com',NULL,NULL),(4,1,'2021-02-11 10:52:18','dsfdsf',NULL,'habib@gmail.com',NULL,NULL);
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educationinfo`
--

DROP TABLE IF EXISTS `educationinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `educationinfo` (
  `eduinfoid` int NOT NULL AUTO_INCREMENT,
  `achivment` varchar(255) DEFAULT NULL,
  `board` varchar(255) DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `emailid` varchar(255) DEFAULT NULL,
  `examtitle` varchar(255) DEFAULT NULL,
  `institutename` varchar(255) DEFAULT NULL,
  `majorsubject` varchar(255) DEFAULT NULL,
  `passingyear` date DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`eduinfoid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educationinfo`
--

LOCK TABLES `educationinfo` WRITE;
/*!40000 ALTER TABLE `educationinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `educationinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `eventid` int NOT NULL AUTO_INCREMENT,
  `contactnumber` varchar(255) DEFAULT NULL,
  `contactparson` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `emailid` varchar(255) DEFAULT NULL,
  `eventdate` date DEFAULT NULL,
  `fees` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `reglastdate` date DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`eventid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'3254345934905904','fdsf','fd;lsfl','habib@gmail.com','2021-02-11','fl;ds','dlfs','2021-02-11','fdlsflds');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventrespons`
--

DROP TABLE IF EXISTS `eventrespons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventrespons` (
  `responsid` int NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) DEFAULT NULL,
  `emailid` varchar(255) DEFAULT NULL,
  `eventid` int DEFAULT NULL,
  `evstatus` varchar(255) DEFAULT NULL,
  `responsdate` datetime DEFAULT NULL,
  PRIMARY KEY (`responsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventrespons`
--

LOCK TABLES `eventrespons` WRITE;
/*!40000 ALTER TABLE `eventrespons` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventrespons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobapply`
--

DROP TABLE IF EXISTS `jobapply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobapply` (
  `applyid` int NOT NULL AUTO_INCREMENT,
  `applydate` datetime DEFAULT NULL,
  `applystatus` varchar(255) DEFAULT NULL,
  `coverletter` varchar(255) DEFAULT NULL,
  `emailid` varchar(255) DEFAULT NULL,
  `expectedsalary` double DEFAULT NULL,
  `jobid` int DEFAULT NULL,
  PRIMARY KEY (`applyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobapply`
--

LOCK TABLES `jobapply` WRITE;
/*!40000 ALTER TABLE `jobapply` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobapply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobhistory`
--

DROP TABLE IF EXISTS `jobhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobhistory` (
  `jobhistoryid` int NOT NULL AUTO_INCREMENT,
  `companynames` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `emailid` varchar(255) DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `responsibility` varchar(255) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  PRIMARY KEY (`jobhistoryid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobhistory`
--

LOCK TABLES `jobhistory` WRITE;
/*!40000 ALTER TABLE `jobhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobhistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobpost`
--

DROP TABLE IF EXISTS `jobpost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobpost` (
  `jobid` int NOT NULL AUTO_INCREMENT,
  `agelimit` varchar(255) DEFAULT NULL,
  `applylastdate` date DEFAULT NULL,
  `companynames` varchar(255) DEFAULT NULL,
  `eduqualification` varchar(255) DEFAULT NULL,
  `emailid` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `jobdescription` varchar(255) DEFAULT NULL,
  `joblevel` varchar(255) DEFAULT NULL,
  `jobnature` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `otherbenefits` varchar(255) DEFAULT NULL,
  `responsibility` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `vacancy` int DEFAULT NULL,
  PRIMARY KEY (`jobid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobpost`
--

LOCK TABLES `jobpost` WRITE;
/*!40000 ALTER TABLE `jobpost` DISABLE KEYS */;
INSERT INTO `jobpost` VALUES (1,'fds','2021-02-11','NCLC','fds','admin@gmail.com','fds','fdsf sf dsf ds fds','fds','fds','fds','fds',' fds fds ','200000','programmer',5);
/*!40000 ALTER TABLE `jobpost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill`
--

DROP TABLE IF EXISTS `skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `skill` (
  `skillid` int NOT NULL AUTO_INCREMENT,
  `emailid` varchar(255) DEFAULT NULL,
  `skill` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`skillid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill`
--

LOCK TABLES `skill` WRITE;
/*!40000 ALTER TABLE `skill` DISABLE KEYS */;
/*!40000 ALTER TABLE `skill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `emailid` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin@gmail.com','0000000000','admin'),('habib@gmail.com','0000000000','habib');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userprofile`
--

DROP TABLE IF EXISTS `userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userprofile` (
  `profileid` int NOT NULL AUTO_INCREMENT,
  `batch` varchar(255) DEFAULT NULL,
  `curentaddress` varchar(255) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `emailid` varchar(255) DEFAULT NULL,
  `fathername` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `joindate` datetime DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `maritalstatus` varchar(255) DEFAULT NULL,
  `mobilenumber` varchar(255) DEFAULT NULL,
  `mothername` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `nid` bigint DEFAULT NULL,
  `paddress` varchar(255) DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`profileid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userprofile`
--

LOCK TABLES `userprofile` WRITE;
/*!40000 ALTER TABLE `userprofile` DISABLE KEYS */;
INSERT INTO `userprofile` VALUES (1,NULL,NULL,NULL,'habib@gmail.com',NULL,NULL,NULL,'2021-02-11 10:34:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,NULL,NULL,NULL,'admin@gmail.com',NULL,NULL,NULL,'2021-02-11 10:47:18',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userrole`
--

DROP TABLE IF EXISTS `userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userrole` (
  `emailid` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userrole`
--

LOCK TABLES `userrole` WRITE;
/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
INSERT INTO `userrole` VALUES ('admin@gmail.com','123456','ROLE_ALUMNI','True'),('habib@gmail.com','123456','ROLE_STUDENT','True');
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'alumni'
--

--
-- Dumping routines for database 'alumni'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-11 10:54:31
