-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: recipetine
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe` (
  `recipe_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text,
  `prep_time` int DEFAULT NULL,
  `cook_time` int DEFAULT NULL,
  `servings` int DEFAULT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  `date_published` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`recipe_id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `recipe_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES (1,2,'Classic Pancakes',NULL,NULL,10,15,NULL,'https://source.unsplash.com/600x400/?pancakes','2025-12-23 09:47:03'),(2,2,'Scrambled Eggs',NULL,NULL,5,10,NULL,'https://images.unsplash.com/photo-1551218808-94e220e084d2','2025-12-23 09:47:03'),(3,2,'French Toast',NULL,NULL,10,10,NULL,'https://source.unsplash.com/600x400/?french-toast','2025-12-23 09:47:03'),(4,2,'Avocado Toast',NULL,NULL,5,5,NULL,'https://source.unsplash.com/600x400/?avocado-toast','2025-12-23 09:47:03'),(5,2,'Banana Oatmeal',NULL,NULL,5,10,NULL,'https://source.unsplash.com/600x400/?oatmeal','2025-12-23 09:47:03'),(6,2,'Chicken Fried Rice',NULL,NULL,10,15,NULL,'https://source.unsplash.com/600x400/?fried-rice','2025-12-23 09:47:03'),(7,2,'Grilled Chicken Salad',NULL,NULL,10,15,NULL,'https://source.unsplash.com/600x400/?chicken-salad','2025-12-23 09:47:03'),(8,2,'Beef Stir Fry',NULL,NULL,10,15,NULL,'https://source.unsplash.com/600x400/?beef-stir-fry','2025-12-23 09:47:03'),(9,2,'Club Sandwich',NULL,NULL,10,10,NULL,'https://source.unsplash.com/600x400/?club-sandwich','2025-12-23 09:47:03'),(10,2,'Tomato Soup',NULL,NULL,5,20,NULL,'https://source.unsplash.com/600x400/?tomato-soup','2025-12-23 09:47:03'),(11,2,'Garlic Butter Chicken',NULL,NULL,10,20,NULL,'https://source.unsplash.com/600x400/?garlic-chicken','2025-12-23 09:47:03'),(12,2,'Beef Steak with Pepper Sauce',NULL,NULL,10,25,NULL,'https://source.unsplash.com/600x400/?beef-steak','2025-12-23 09:47:03'),(13,2,'Roast Chicken',NULL,NULL,15,45,NULL,'https://source.unsplash.com/600x400/?roast-chicken','2025-12-23 09:47:03'),(14,2,'Spaghetti Carbonara',NULL,NULL,10,15,NULL,'https://source.unsplash.com/600x400/?carbonara','2025-12-23 09:47:03'),(15,2,'BBQ Ribs',NULL,NULL,15,60,NULL,'https://source.unsplash.com/600x400/?bbq-ribs','2025-12-23 09:47:03'),(16,2,'Chicken Curry',NULL,NULL,10,25,NULL,'https://source.unsplash.com/600x400/?chicken-curry','2025-12-23 09:47:03'),(17,2,'Chicken Teriyaki',NULL,NULL,10,20,NULL,'https://source.unsplash.com/600x400/?chicken-teriyaki','2025-12-23 09:47:03'),(18,2,'Fried Chicken',NULL,NULL,15,25,NULL,'https://source.unsplash.com/600x400/?fried-chicken','2025-12-23 09:47:03'),(19,2,'Chicken Alfredo',NULL,NULL,10,20,NULL,'https://source.unsplash.com/600x400/?chicken-alfredo','2025-12-23 09:47:03'),(20,2,'BBQ Chicken Wings',NULL,NULL,10,30,NULL,'https://source.unsplash.com/600x400/?chicken-wings','2025-12-23 09:47:03'),(21,2,'Beef Stroganoff',NULL,NULL,15,30,NULL,'https://source.unsplash.com/600x400/?beef-stroganoff','2025-12-23 09:47:03'),(22,2,'Beef Bulgogi',NULL,NULL,15,20,NULL,'https://source.unsplash.com/600x400/?beef-bulgogi','2025-12-23 09:47:03'),(23,2,'Beef Burger',NULL,NULL,10,15,NULL,'https://source.unsplash.com/600x400/?beef-burger','2025-12-23 09:47:03'),(24,2,'Beef Fried Rice',NULL,NULL,10,15,NULL,'https://source.unsplash.com/600x400/?beef-fried-rice','2025-12-23 09:47:03'),(25,2,'Beef Pho',NULL,NULL,20,180,NULL,'https://source.unsplash.com/600x400/?beef-pho','2025-12-23 09:47:03'),(26,2,'Pork Chops with Gravy',NULL,NULL,10,25,NULL,'https://source.unsplash.com/600x400/?pork-chops','2025-12-23 09:47:03'),(27,2,'Honey Garlic Pork',NULL,NULL,10,20,NULL,'https://source.unsplash.com/600x400/?honey-pork','2025-12-23 09:47:03'),(28,2,'Crispy Pork Belly',NULL,NULL,20,60,NULL,'https://source.unsplash.com/600x400/?pork-belly','2025-12-23 09:47:03'),(29,2,'Sweet and Sour Pork',NULL,NULL,10,20,NULL,'https://source.unsplash.com/600x400/?sweet-sour-pork','2025-12-23 09:47:03'),(30,2,'BBQ Pork Ribs',NULL,NULL,15,60,NULL,'https://source.unsplash.com/600x400/?pork-ribs','2025-12-23 09:47:03'),(31,2,'Vegan Fried Rice',NULL,NULL,10,15,NULL,'https://source.unsplash.com/600x400/?vegan-fried-rice','2025-12-23 09:47:03'),(32,2,'Tofu Stir Fry',NULL,NULL,10,15,NULL,'https://source.unsplash.com/600x400/?tofu-stir-fry','2025-12-23 09:47:03'),(33,2,'Chickpea Curry',NULL,NULL,10,25,NULL,'https://source.unsplash.com/600x400/?chickpea-curry','2025-12-23 09:47:03'),(34,2,'Vegan Burrito Bowl',NULL,NULL,10,15,NULL,'https://source.unsplash.com/600x400/?vegan-bowl','2025-12-23 09:47:03'),(35,2,'Vegan Chili',NULL,NULL,10,30,NULL,'https://source.unsplash.com/600x400/?vegan-chili','2025-12-23 09:47:03'),(36,2,'Roast Turkey',NULL,NULL,20,90,NULL,'https://source.unsplash.com/600x400/?roast-turkey','2025-12-23 09:47:03'),(37,2,'Honey Glazed Ham',NULL,NULL,20,60,NULL,'https://source.unsplash.com/600x400/?glazed-ham','2025-12-23 09:47:03'),(38,2,'Beef Wellington',NULL,NULL,30,90,NULL,'https://source.unsplash.com/600x400/?beef-wellington','2025-12-23 09:47:03'),(39,2,'Christmas Lasagna',NULL,NULL,20,45,NULL,'https://source.unsplash.com/600x400/?lasagna','2025-12-23 09:47:03'),(40,2,'Baked Salmon',NULL,NULL,15,25,NULL,'https://source.unsplash.com/600x400/?baked-salmon','2025-12-23 09:47:03');
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-12 19:12:12
