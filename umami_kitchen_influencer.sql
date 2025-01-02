-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: umami_kitchen
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `influencer`
--

DROP TABLE IF EXISTS `influencer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `influencer` (
  `InfluencerID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `SocialMediaHandle` varchar(100) DEFAULT NULL,
  `NumberOfFollowers` int DEFAULT NULL,
  `ReferralCode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`InfluencerID`),
  KEY `ReferralCode` (`ReferralCode`),
  CONSTRAINT `influencer_ibfk_1` FOREIGN KEY (`ReferralCode`) REFERENCES `referral` (`ReferralCode`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `influencer`
--

LOCK TABLES `influencer` WRITE;
/*!40000 ALTER TABLE `influencer` DISABLE KEYS */;
INSERT INTO `influencer` VALUES (1,'Jane Doe','@jane_doe',50000,'REF123'),(2,'John Smith','@john_smith',75000,'SAVE50'),(3,'Emily Davis','@emily_d',100000,'PROMO20'),(4,'Michael Brown','@mikebrown',25000,'INFLUENCER1'),(5,'Sophia Wilson','@sophiawilson',60000,'MEALKIT10'),(6,'Jane Doe','@jane_doe',50000,'REF123'),(7,'John Smith','@john_smith',75000,'SAVE50'),(8,'Emily Davis','@emily_d',100000,'PROMO20'),(9,'Michael Brown','@mikebrown',25000,'INFLUENCER1'),(10,'Sophia Wilson','@sophiawilson',60000,'MEALKIT10');
/*!40000 ALTER TABLE `influencer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-17 13:26:02
