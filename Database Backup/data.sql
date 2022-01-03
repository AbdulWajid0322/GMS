-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dbo.AdminMaster`
--

DROP TABLE IF EXISTS `dbo.AdminMaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.AdminMaster` (
  `AdminId` tinyint(4) DEFAULT NULL,
  `Username` varchar(3) DEFAULT NULL,
  `Password` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.AdminMaster`
--

LOCK TABLES `dbo.AdminMaster` WRITE;
/*!40000 ALTER TABLE `dbo.AdminMaster` DISABLE KEYS */;
INSERT INTO `dbo.AdminMaster` VALUES (1,'aaa','aaa');
/*!40000 ALTER TABLE `dbo.AdminMaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.CategoryDetail`
--

DROP TABLE IF EXISTS `dbo.CategoryDetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.CategoryDetail` (
  `CategoryDetaillID` tinyint(4) DEFAULT NULL,
  `CategoryID` tinyint(4) DEFAULT NULL,
  `DetailName` varchar(13) DEFAULT NULL,
  `Description` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.CategoryDetail`
--

LOCK TABLES `dbo.CategoryDetail` WRITE;
/*!40000 ALTER TABLE `dbo.CategoryDetail` DISABLE KEYS */;
INSERT INTO `dbo.CategoryDetail` VALUES (1,1,'Leg rise boil','abdominals'),(2,1,'Leg rise test','abdominals'),(3,1,'Leg rise','abdominals'),(4,1,'Leg rise','abdominals'),(5,1,'bench press','chest'),(6,1,'bench press','chest'),(7,1,'test','ok'),(8,1,'biceps curl','done'),(9,1,'okk','did'),(10,1,'sit down','ok'),(11,3,'test','no'),(12,2,'bench press','jjjjk'),(13,2,'wxws','wx'),(14,2,'wxw','xwx');
/*!40000 ALTER TABLE `dbo.CategoryDetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.CategoryMaster`
--

DROP TABLE IF EXISTS `dbo.CategoryMaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.CategoryMaster` (
  `CategoryID` tinyint(4) DEFAULT NULL,
  `CategoryName` varchar(6) DEFAULT NULL,
  `Description` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.CategoryMaster`
--

LOCK TABLES `dbo.CategoryMaster` WRITE;
/*!40000 ALTER TABLE `dbo.CategoryMaster` DISABLE KEYS */;
INSERT INTO `dbo.CategoryMaster` VALUES (1,'Chest','Chest Practice AAA'),(2,'Abs','This is testing'),(3,'Biceps','Hand exercises'),(4,'Test','61');
/*!40000 ALTER TABLE `dbo.CategoryMaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.CountryMaster`
--

DROP TABLE IF EXISTS `dbo.CountryMaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.CountryMaster` (
  `CountryID` tinyint(4) DEFAULT NULL,
  `CountryName` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.CountryMaster`
--

LOCK TABLES `dbo.CountryMaster` WRITE;
/*!40000 ALTER TABLE `dbo.CountryMaster` DISABLE KEYS */;
INSERT INTO `dbo.CountryMaster` VALUES (1,'India'),(2,'USA'),(3,'Canada');
/*!40000 ALTER TABLE `dbo.CountryMaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.DailyWorkout`
--

DROP TABLE IF EXISTS `dbo.DailyWorkout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.DailyWorkout` (
  `DailyWorkoutID` tinyint(4) DEFAULT NULL,
  `UserID` tinyint(4) DEFAULT NULL,
  `CategoryID` tinyint(4) DEFAULT NULL,
  `WorkoutDate` varchar(10) DEFAULT NULL,
  `TrainerID` tinyint(4) DEFAULT NULL,
  `Description` varchar(29) DEFAULT NULL,
  `TimeTableID` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.DailyWorkout`
--

LOCK TABLES `dbo.DailyWorkout` WRITE;
/*!40000 ALTER TABLE `dbo.DailyWorkout` DISABLE KEYS */;
INSERT INTO `dbo.DailyWorkout` VALUES (1,1,1,'2015-01-01',1,'Test',1),(2,1,1,'2015-01-01',1,'Test',1),(3,1,1,'2015-02-04',1,'This is testing page.',1),(4,1,1,'2015-02-04',1,'Testing is done successfully.',2),(5,1,1,'2015-02-18',2,'test is ok',2),(6,1,2,'2015-02-18',1,'',5),(7,1,3,'2015-02-18',1,'testing is done',5),(8,1,1,'2015-02-18',1,'test',2),(9,1,1,'2015-02-18',1,'test',2);
/*!40000 ALTER TABLE `dbo.DailyWorkout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.DailyWorkoutDetails`
--

DROP TABLE IF EXISTS `dbo.DailyWorkoutDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.DailyWorkoutDetails` (
  `DailyWorkoutID` tinyint(4) DEFAULT NULL,
  `CategoryDetailID` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.DailyWorkoutDetails`
--

LOCK TABLES `dbo.DailyWorkoutDetails` WRITE;
/*!40000 ALTER TABLE `dbo.DailyWorkoutDetails` DISABLE KEYS */;
INSERT INTO `dbo.DailyWorkoutDetails` VALUES (3,1),(3,3),(3,5),(3,8),(3,9),(3,9),(4,4),(4,6),(4,10),(5,1),(5,2),(5,2),(6,14),(6,14),(7,11),(7,11),(4,10);
/*!40000 ALTER TABLE `dbo.DailyWorkoutDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.StateMaster`
--

DROP TABLE IF EXISTS `dbo.StateMaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.StateMaster` (
  `StateID` tinyint(4) DEFAULT NULL,
  `StateName` varchar(9) DEFAULT NULL,
  `CountryID` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.StateMaster`
--

LOCK TABLES `dbo.StateMaster` WRITE;
/*!40000 ALTER TABLE `dbo.StateMaster` DISABLE KEYS */;
INSERT INTO `dbo.StateMaster` VALUES (3,'Karnataka',1),(4,'kerala',2),(5,'Goa',3);
/*!40000 ALTER TABLE `dbo.StateMaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.TimeTable`
--

DROP TABLE IF EXISTS `dbo.TimeTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.TimeTable` (
  `TimeTableID` tinyint(4) DEFAULT NULL,
  `Time` varchar(13) DEFAULT NULL,
  `CategoryID` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.TimeTable`
--

LOCK TABLES `dbo.TimeTable` WRITE;
/*!40000 ALTER TABLE `dbo.TimeTable` DISABLE KEYS */;
INSERT INTO `dbo.TimeTable` VALUES (1,'7am-10am',3),(2,'12PM',2),(3,'56-67am',1),(4,'10:AM - 16:Am',1),(5,'4 to 6',2);
/*!40000 ALTER TABLE `dbo.TimeTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.TrainerDetails`
--

DROP TABLE IF EXISTS `dbo.TrainerDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.TrainerDetails` (
  `TrainerID` tinyint(4) DEFAULT NULL,
  `TrainerName` varchar(6) DEFAULT NULL,
  `ContactNo` int(11) DEFAULT NULL,
  `Email` varchar(16) DEFAULT NULL,
  `Address` varchar(7) DEFAULT NULL,
  `City` varchar(6) DEFAULT NULL,
  `CategoryID` tinyint(4) DEFAULT NULL,
  `TimeTableID` tinyint(4) DEFAULT NULL,
  `Password` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.TrainerDetails`
--

LOCK TABLES `dbo.TrainerDetails` WRITE;
/*!40000 ALTER TABLE `dbo.TrainerDetails` DISABLE KEYS */;
INSERT INTO `dbo.TrainerDetails` VALUES (1,'john',2451112,'john@yahoo.com','bantwal','bcroad',2,3,''),(2,'arnold',619,'arnold@gmail.com','czcz','bcroad',1,2,'12345');
/*!40000 ALTER TABLE `dbo.TrainerDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.UserDetails`
--

DROP TABLE IF EXISTS `dbo.UserDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.UserDetails` (
  `UserID` tinyint(4) DEFAULT NULL,
  `FullName` varchar(6) DEFAULT NULL,
  `Password` varchar(3) DEFAULT NULL,
  `Address` varchar(15) DEFAULT NULL,
  `MobileNo` bigint(20) DEFAULT NULL,
  `EmailID` varchar(22) DEFAULT NULL,
  `DOB` varchar(10) DEFAULT NULL,
  `CountryID` tinyint(4) DEFAULT NULL,
  `StateID` tinyint(4) DEFAULT NULL,
  `City` varchar(9) DEFAULT NULL,
  `Height` decimal(3,1) DEFAULT NULL,
  `Weight` smallint(6) DEFAULT NULL,
  `Designation` varchar(8) DEFAULT NULL,
  `TimetableID` tinyint(4) DEFAULT NULL,
  `UserImage` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.UserDetails`
--

LOCK TABLES `dbo.UserDetails` WRITE;
/*!40000 ALTER TABLE `dbo.UserDetails` DISABLE KEYS */;
INSERT INTO `dbo.UserDetails` VALUES (1,'riyaz','zxc','near bcroad',988765498,'riyaz@gmail.com','2015-01-13',1,3,'bcroad',5.6,45,'student',1,''),(2,'robin','','near bcroad',988765498,'robinlasrado@gmail.com','2015-01-13',1,3,'bcroad',5.6,45,'student',1,''),(3,'jack','','near bcroad',988765498,'jacksonqueen@gmail.com','2015-01-13',1,3,'bcroad',5.6,45,'student',1,''),(4,'anson','','near bcroad',988765498,'ansonjoy@gmail.com','2015-01-13',1,3,'bcroad',5.6,45,'student',1,''),(5,'avi','','near bcroad',988765498,'avinash420@gmail.com','2015-01-13',1,3,'bcroad',5.6,45,'student',1,''),(6,'thashi','','bc road parliya',102546987,'thouseefgmail.com','2014-12-29',1,3,'modankaap',12.0,120,'watchman',1,''),(7,'Libson','zxc','washington DC',8965442023,'libson35@gmail.com','2012-01-12',3,5,'america',6.2,78,'builder',2,'');
/*!40000 ALTER TABLE `dbo.UserDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.UserFeesDetails`
--

DROP TABLE IF EXISTS `dbo.UserFeesDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.UserFeesDetails` (
  `UserFeesDetailsID` tinyint(4) DEFAULT NULL,
  `UserID` tinyint(4) DEFAULT NULL,
  `PaidAmount` varchar(4) DEFAULT NULL,
  `MOP` tinyint(4) DEFAULT NULL,
  `ChequeNo` varchar(6) DEFAULT NULL,
  `BankName` varchar(11) DEFAULT NULL,
  `BranchName` varchar(6) DEFAULT NULL,
  `Year` smallint(6) DEFAULT NULL,
  `Month` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.UserFeesDetails`
--

LOCK TABLES `dbo.UserFeesDetails` WRITE;
/*!40000 ALTER TABLE `dbo.UserFeesDetails` DISABLE KEYS */;
INSERT INTO `dbo.UserFeesDetails` VALUES (1,1,'2000',1,'','Canara Bank','',2015,1),(2,1,'',1,'','Canara Bank','',2015,1),(3,1,'2000',1,'','Canara Bank','',2015,1),(4,1,'2000',1,'123456','Canara Bank','bcroad',2015,1);
/*!40000 ALTER TABLE `dbo.UserFeesDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dbo.sysdiagrams`
--

DROP TABLE IF EXISTS `dbo.sysdiagrams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbo.sysdiagrams` (
  `name` varchar(0) DEFAULT NULL,
  `principal_id` varchar(0) DEFAULT NULL,
  `diagram_id` varchar(0) DEFAULT NULL,
  `version` varchar(0) DEFAULT NULL,
  `definition` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbo.sysdiagrams`
--

LOCK TABLES `dbo.sysdiagrams` WRITE;
/*!40000 ALTER TABLE `dbo.sysdiagrams` DISABLE KEYS */;
/*!40000 ALTER TABLE `dbo.sysdiagrams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-22 15:20:28
