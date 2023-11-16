-- MySQL dump 10.13  Distrib 8.0.35, for Linux (x86_64)
--
-- Host: localhost    Database: hbnb_dev_db
-- ------------------------------------------------------
-- Server version	8.0.35-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenities` (
  `name` varchar(128) NOT NULL,
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
INSERT INTO `amenities` VALUES ('Pets friendly','821a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Elevator in building','821a55f4-7d82-47d9-b54c-a76916479553','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Doorman','821a55f4-7d82-47d9-b54c-a76916479554','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Cable TV','821a55f4-7d82-47d9-b54c-a76916479555','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Dryer','821a55f4-7d82-47d9-b54c-a76916479556','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Hair dryer','821a55f4-7d82-47d9-b54c-a76916479557','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Iron','821a55f4-7d82-47d9-b54c-a76916479558','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Washer','821a55f4-7d82-47d9-b54c-a76916479559','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Laundry room','821a55f4-7d82-47d9-b54c-a76916479560','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Air conditioning','821a55f4-7d82-47d9-b54c-a76916479561','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Hot tub','821a55f4-7d82-47d9-b54c-a76916479562','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Smoking allowed','821a55f4-7d82-47d9-b54c-a76916479563','2017-03-25 19:44:42','2017-03-25 19:44:42');
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities` (
  `name` varchar(128) NOT NULL,
  `state_id` varchar(60) NOT NULL,
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id` (`state_id`),
  CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES ('Bossier City','421a55f4-7d82-47d9-b54c-a76916479546','1b042855-d3e4-4695-ba7b-71b7fe340928','2023-10-27 16:18:16','2023-10-27 16:19:00'),('Douglas','421a55f4-7d82-47d9-b54c-a76916479546','521a55f4-7d82-47d9-b54c-a76916479546','2017-03-25 19:44:42','2017-03-25 19:44:42'),('San Francisco','421a55f4-7d82-47d9-b54c-a76916479547','521a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Denver','421a55f4-7d82-47d9-b54c-a76916479548','521a55f4-7d82-47d9-b54c-a76916479548','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Miami','421a55f4-7d82-47d9-b54c-a76916479549','521a55f4-7d82-47d9-b54c-a76916479549','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Honolulu','421a55f4-7d82-47d9-b54c-a76916479551','521a55f4-7d82-47d9-b54c-a76916479551','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Chicago','421a55f4-7d82-47d9-b54c-a76916479552','521a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:44:42','2017-03-25 19:44:42'),('New Orleans','421a55f4-7d82-47d9-b54c-a76916479554','521a55f4-7d82-47d9-b54c-a76916479554','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Saint Paul','421a55f4-7d82-47d9-b54c-a76916479555','521a55f4-7d82-47d9-b54c-a76916479555','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Jackson','421a55f4-7d82-47d9-b54c-a76916479556','521a55f4-7d82-47d9-b54c-a76916479556','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Portland','421a55f4-7d82-47d9-b54c-a76916479557','521a55f4-7d82-47d9-b54c-a76916479557','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Kearny','421a55f4-7d82-47d9-b54c-a76916479546','531a55f4-7d82-47d9-b54c-a76916479546','2017-03-25 19:44:42','2017-03-25 19:44:42'),('San Jose','421a55f4-7d82-47d9-b54c-a76916479547','531a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Orlando','421a55f4-7d82-47d9-b54c-a76916479549','531a55f4-7d82-47d9-b54c-a76916479549','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Kailua','421a55f4-7d82-47d9-b54c-a76916479551','531a55f4-7d82-47d9-b54c-a76916479551','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Peoria','421a55f4-7d82-47d9-b54c-a76916479552','531a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Baton rouge','421a55f4-7d82-47d9-b54c-a76916479554','531a55f4-7d82-47d9-b54c-a76916479554','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Tupelo','421a55f4-7d82-47d9-b54c-a76916479556','531a55f4-7d82-47d9-b54c-a76916479556','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Eugene','421a55f4-7d82-47d9-b54c-a76916479557','531a55f4-7d82-47d9-b54c-a76916479557','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Fremont','421a55f4-7d82-47d9-b54c-a76916479547','541a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Pearl city','421a55f4-7d82-47d9-b54c-a76916479551','541a55f4-7d82-47d9-b54c-a76916479551','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Naperville','421a55f4-7d82-47d9-b54c-a76916479552','541a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Lafayette','421a55f4-7d82-47d9-b54c-a76916479554','541a55f4-7d82-47d9-b54c-a76916479554','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Meridian','421a55f4-7d82-47d9-b54c-a76916479556','541a55f4-7d82-47d9-b54c-a76916479556','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Napa','421a55f4-7d82-47d9-b54c-a76916479547','551a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Urbana','421a55f4-7d82-47d9-b54c-a76916479552','551a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Sonoma','421a55f4-7d82-47d9-b54c-a76916479547','561a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Joliet','421a55f4-7d82-47d9-b54c-a76916479552','561a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:44:42','2017-03-25 19:44:42');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `place_amenity`
--

DROP TABLE IF EXISTS `place_amenity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `place_amenity` (
  `place_id` varchar(60) NOT NULL,
  `amenity_id` varchar(60) NOT NULL,
  PRIMARY KEY (`place_id`,`amenity_id`),
  KEY `amenity_id` (`amenity_id`),
  CONSTRAINT `place_amenity_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`),
  CONSTRAINT `place_amenity_ibfk_2` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `place_amenity`
--

LOCK TABLES `place_amenity` WRITE;
/*!40000 ALTER TABLE `place_amenity` DISABLE KEYS */;
INSERT INTO `place_amenity` VALUES ('3f03db75-e6c1-400e-a7ea-35df58eb7640','821a55f4-7d82-47d9-b54c-a76916479552'),('3f03db75-e6c1-400e-a7ea-35df58eb7640','821a55f4-7d82-47d9-b54c-a76916479558'),('3f03db75-e6c1-400e-a7ea-35df58eb7640','821a55f4-7d82-47d9-b54c-a76916479563');
/*!40000 ALTER TABLE `place_amenity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `places`
--

DROP TABLE IF EXISTS `places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `places` (
  `city_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `number_rooms` int DEFAULT NULL,
  `number_bathrooms` int DEFAULT NULL,
  `max_guest` int DEFAULT NULL,
  `price_by_night` int DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `places_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `places_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `places`
--

LOCK TABLES `places` WRITE;
/*!40000 ALTER TABLE `places` DISABLE KEYS */;
INSERT INTO `places` VALUES ('551a55f4-7d82-47d9-b54c-a76916479552','385955dc-7463-42d8-87a0-5812319b11be','pozi','Welcome to the Pozi',0,3,5,4000,52.034,14.03,'3f03db75-e6c1-400e-a7ea-35df58eb7640','2023-10-28 09:48:11','2023-10-28 11:07:36'),('551a55f4-7d82-47d9-b54c-a76916479552','385955dc-7463-42d8-87a0-5812319b11be','myhouse','Hola, Welcom to Mi Casa',2,2,4,3000,0.23,60.034,'9138cbbe-8a10-4b1a-9c21-0439f62b119f','2023-10-27 20:47:19','2023-10-27 20:47:19');
/*!40000 ALTER TABLE `places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `text` varchar(1024) NOT NULL,
  `place_id` varchar(60) NOT NULL,
  `user_id` varchar(60) NOT NULL,
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `place_id` (`place_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `places` (`id`),
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES ('hellooo','9138cbbe-8a10-4b1a-9c21-0439f62b119f','385955dc-7463-42d8-87a0-5812319b11be','12aa30b1-c271-48ef-81a1-7e0c38d8d45b','2023-10-27 22:23:51','2023-10-27 22:23:51');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `states` (
  `name` varchar(128) NOT NULL,
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES ('Arizona','421a55f4-7d82-47d9-b54c-a76916479546','2017-03-25 19:44:42','2023-10-27 13:44:46'),('California','421a55f4-7d82-47d9-b54c-a76916479547','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Colorado','421a55f4-7d82-47d9-b54c-a76916479548','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Florida','421a55f4-7d82-47d9-b54c-a76916479549','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Georgia','421a55f4-7d82-47d9-b54c-a76916479550','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Hawaii','421a55f4-7d82-47d9-b54c-a76916479551','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Illinois','421a55f4-7d82-47d9-b54c-a76916479552','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Indiana','421a55f4-7d82-47d9-b54c-a76916479553','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Louisiana','421a55f4-7d82-47d9-b54c-a76916479554','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Minnesota','421a55f4-7d82-47d9-b54c-a76916479555','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Mississippi','421a55f4-7d82-47d9-b54c-a76916479556','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Oregon','421a55f4-7d82-47d9-b54c-a76916479557','2017-03-25 19:44:42','2017-03-25 19:44:42'),('Delaware','718c881f-7cea-4a86-af79-5ff9bf1e7c89','2023-10-26 20:47:15','2023-10-27 12:29:23');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `first_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  `id` varchar(60) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('serverus@yahoo.com','lily123','Severus','Snape','385955dc-7463-42d8-87a0-5812319b11be','2023-10-27 17:33:12','2023-10-27 17:33:12'),('james@gmail.com','stag7','James','Potter','c364ef7a-89af-404e-b01f-5db71fd9ca5b','2023-10-27 17:35:01','2023-10-27 17:35:01');
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

-- Dump completed on 2023-11-06 18:11:11
