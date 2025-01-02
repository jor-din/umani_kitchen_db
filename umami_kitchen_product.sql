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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ProductID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(100) DEFAULT NULL,
  `CuisineType` varchar(50) DEFAULT NULL,
  `Description` text,
  `ServingSize` varchar(50) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  `Stock` int DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Spring Rolls','Chinese','Crispy rolls with vegetable filling','2 rolls',4.99,50),(2,'Pad Thai','Thai','Classic stir-fried noodles','1 serving',9.99,30),(3,'Miso Soup','Japanese','Traditional soup with tofu and seaweed','1 bowl',3.99,40),(4,'Sushi Platter','Japanese','Assorted sushi rolls','8 pieces',14.99,20),(5,'Kimchi Fried Rice','Korean','Spicy fried rice with kimchi','1 serving',7.99,25),(6,'Hot and Sour Soup','Chinese','Tangy soup with tofu and mushrooms','1 bowl',4.99,20),(7,'Dim Sum Platter','Chinese','Assorted steamed dumplings','8 pieces',8.99,30),(8,'Teriyaki Chicken','Japanese','Grilled chicken with teriyaki sauce','1 serving',9.99,25),(9,'Pho','Vietnamese','Beef noodle soup with fresh herbs','1 bowl',8.99,15),(10,'Bibimbap','Korean','Mixed rice with vegetables and meat','1 bowl',10.99,20),(11,'Roti Canai','Malaysian','Flatbread with curry dip','2 pieces',5.99,40),(12,'Banh Mi Sandwich','Vietnamese','French baguette with Asian fillings','1 sandwich',6.99,30),(13,'Mango Sticky Rice','Thai','Sweet sticky rice with mango slices','1 serving',7.99,15),(14,'Bubble Tea','Taiwanese','Milk tea with tapioca pearls','1 cup',4.99,50),(15,'Satay Skewers','Indonesian','Grilled meat skewers with peanut sauce','3 skewers',6.99,20);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-17 13:26:01
