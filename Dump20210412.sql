-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: akashiya
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `claims`
--

DROP TABLE IF EXISTS `claims`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `claims` (
  `ClaimID` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `Claim_Date` date NOT NULL,
  `CourseOFDeath` varchar(45) NOT NULL,
  `DeceastName` varchar(35) NOT NULL,
  `DeceastDeathDate` date NOT NULL,
  PRIMARY KEY (`ClaimID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `claims_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claims`
--

LOCK TABLES `claims` WRITE;
/*!40000 ALTER TABLE `claims` DISABLE KEYS */;
/*!40000 ALTER TABLE `claims` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `PaymentID` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `Payment_date` date NOT NULL,
  `Payment_Amount` decimal(9,2) NOT NULL,
  PRIMARY KEY (`PaymentID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `policy`
--

DROP TABLE IF EXISTS `policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `policy` (
  `PolicyID` int NOT NULL AUTO_INCREMENT,
  `UserID` int NOT NULL,
  `Policy_HolderName` varchar(35) NOT NULL,
  `Policy_Members` varchar(225) NOT NULL,
  `Policy_JoinDate` date NOT NULL,
  PRIMARY KEY (`PolicyID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `policy_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `policy`
--

LOCK TABLES `policy` WRITE;
/*!40000 ALTER TABLE `policy` DISABLE KEYS */;
/*!40000 ALTER TABLE `policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `premiums`
--

DROP TABLE IF EXISTS `premiums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `premiums` (
  `PremiumID` int NOT NULL AUTO_INCREMENT,
  `Premium_Price` decimal(9,2) DEFAULT NULL,
  `Premium_Desc` varchar(225) NOT NULL,
  PRIMARY KEY (`PremiumID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premiums`
--

LOCK TABLES `premiums` WRITE;
/*!40000 ALTER TABLE `premiums` DISABLE KEYS */;
INSERT INTO `premiums` VALUES (1,120.00,'FlatlidCoffin, Mortuary, Hearse, FamilyCar,Tent,50 Chairs,2 Tables, NameBoard,Program,Graveside Preparation'),(2,170.00,'FlatlidCoffin, Mortuary, Hearse, FamilyCar,Tent,50 Chairs,2 Tables, NameBoard,Program,Graveside Preparation,Groceries'),(3,250.00,'FlatlidCoffin, Mortuary, Hearse, FamilyCar,Tent,50 Chairs,2 Tables, NameBoard,Program,Graveside Preparation,Groceries.Catering'),(4,300.00,'FlatlidCoffin,Mortuary, Hearse, FamilyCar,Tent,50 Chairs,2 Tables, NameBoard,Program,Graveside Preparation,Groceries,Catering,Bus,Cow for 2');
/*!40000 ALTER TABLE `premiums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userrole`
--

DROP TABLE IF EXISTS `userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userrole` (
  `RoleID` int NOT NULL AUTO_INCREMENT,
  `Role_Desc` varchar(45) NOT NULL,
  PRIMARY KEY (`RoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userrole`
--

LOCK TABLES `userrole` WRITE;
/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
INSERT INTO `userrole` VALUES (1,'ADMIN'),(2,'USER');
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserID` int NOT NULL AUTO_INCREMENT,
  `RoleID` int NOT NULL,
  `User_Name` varchar(35) NOT NULL,
  `User_Surname` varchar(35) NOT NULL,
  `User_IDNo` varchar(20) NOT NULL,
  `User_Email` varchar(35) NOT NULL,
  `User_CellNo` varchar(15) NOT NULL,
  `User_Address` varchar(50) NOT NULL,
  `User_Password` varchar(25) NOT NULL,
  PRIMARY KEY (`UserID`),
  KEY `RoleID` (`RoleID`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`RoleID`) REFERENCES `userrole` (`RoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-12 15:27:44
