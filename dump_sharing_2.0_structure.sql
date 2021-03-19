-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: sharing
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
-- Table structure for table `category_id`
--

DROP TABLE IF EXISTS `category_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_id` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cities_id`
--

DROP TABLE IF EXISTS `cities_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cities_id` (
  `id` int NOT NULL AUTO_INCREMENT,
  `city_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `general_users_info`
--

DROP TABLE IF EXISTS `general_users_info`;
/*!50001 DROP VIEW IF EXISTS `general_users_info`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `general_users_info` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `gender`,
 1 AS `city`,
 1 AS `email`,
 1 AS `birthday`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `url` varchar(256) NOT NULL,
  `metadata` longtext,
  PRIMARY KEY (`id`),
  KEY `fk_user_id_idx` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `from_user_id` int NOT NULL,
  `to_user_id` int NOT NULL,
  `message` varchar(245) DEFAULT NULL,
  `media_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_from_user_id_idx` (`from_user_id`),
  KEY `fk_to_user_id_idx` (`to_user_id`),
  CONSTRAINT `fk_from_user_id` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_to_user_id` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `messages_img`
--

DROP TABLE IF EXISTS `messages_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `messages_img` (
  `message_id` int NOT NULL,
  `image_id` int NOT NULL,
  PRIMARY KEY (`message_id`,`image_id`),
  KEY `fk_image_id_idx` (`image_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `default_city_id` int NOT NULL,
  `avatar_img_id` int DEFAULT NULL,
  `gender` enum('m','f') DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_avatar_img_id_idx` (`avatar_img_id`),
  KEY `fk_default_city_id_idx` (`default_city_id`) /*!80000 INVISIBLE */,
  CONSTRAINT `fk_avatar_img_id` FOREIGN KEY (`avatar_img_id`) REFERENCES `images` (`id`),
  CONSTRAINT `fk_default_city_id` FOREIGN KEY (`default_city_id`) REFERENCES `cities_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `thing_rating`
--

DROP TABLE IF EXISTS `thing_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thing_rating` (
  `user_id` int NOT NULL,
  `thing_id` int NOT NULL,
  `rate` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`thing_id`,`user_id`),
  KEY `fk_things_id_idx` (`thing_id`),
  KEY `fk_users_id_idx` (`user_id`),
  CONSTRAINT `fk_things_id_idx` FOREIGN KEY (`thing_id`) REFERENCES `things` (`id`),
  CONSTRAINT `fk_user_id_idx` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `things`
--

DROP TABLE IF EXISTS `things`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `things` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `user_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `status` varchar(45) NOT NULL,
  `city_id` int NOT NULL,
  `category_id` int NOT NULL,
  `main_image_id` int DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`),
  KEY `fk_category_id_idx` (`category_id`),
  KEY `fk_main_image_id_idx` (`main_image_id`),
  KEY `fk_city_id_idx` (`city_id`) /*!80000 INVISIBLE */,
  KEY `fk_user_idx` (`user_id`) /*!80000 INVISIBLE */,
  CONSTRAINT `fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `category_id` (`id`),
  CONSTRAINT `fk_city_id` FOREIGN KEY (`city_id`) REFERENCES `cities_id` (`id`),
  CONSTRAINT `fk_main_image_id` FOREIGN KEY (`main_image_id`) REFERENCES `images` (`id`),
  CONSTRAINT `fk_things_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `things_img`
--

DROP TABLE IF EXISTS `things_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `things_img` (
  `thing_id` int NOT NULL,
  `image_id` int NOT NULL,
  PRIMARY KEY (`thing_id`,`image_id`),
  KEY `fk_image_id_idx` (`image_id`) /*!80000 INVISIBLE */,
  CONSTRAINT `fk_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `things` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `things_report`
--

DROP TABLE IF EXISTS `things_report`;
/*!50001 DROP VIEW IF EXISTS `things_report`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `things_report` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `user_id`,
 1 AS `category`,
 1 AS `rating`,
 1 AS `number_of_uses`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `user_feedback`
--

DROP TABLE IF EXISTS `user_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `from_user_id` int NOT NULL,
  `to_user_id` int NOT NULL,
  `feedbacktext` varchar(600) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_from_user_id_idx` (`from_user_id`),
  KEY `fk_to_user_id_idx` (`to_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_rating`
--

DROP TABLE IF EXISTS `user_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_rating` (
  `from_user_id` int NOT NULL,
  `to_user_id` int NOT NULL,
  `rate` int NOT NULL,
  PRIMARY KEY (`to_user_id`,`from_user_id`),
  KEY `fk_from_user_id_idx` (`from_user_id`),
  KEY `fk_to_user_id_idx` (`to_user_id`),
  CONSTRAINT `fk_from_user_id_idx` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_to_user_id_idx` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `profiles_user_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phone` bigint NOT NULL,
  `password` char(65) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_UNIQUE` (`phone`),
  KEY `fk_users_profiles_idx` (`profiles_user_id`) /*!80000 INVISIBLE */,
  CONSTRAINT `fk_users_profiles` FOREIGN KEY (`profiles_user_id`) REFERENCES `profiles` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `using`
--

DROP TABLE IF EXISTS `using`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `using` (
  `id` int NOT NULL AUTO_INCREMENT,
  `thing_id` int NOT NULL,
  `user_id` int NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `status_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_status_id_idx` (`status_id`),
  KEY `fk_user_id_idx` (`user_id`),
  KEY `fk_thing_id_idx` (`thing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `using_feedback`
--

DROP TABLE IF EXISTS `using_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `using_feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `using_id` int NOT NULL,
  `feedback_text` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `using_id_UNIQUE` (`using_id`),
  KEY `user_id_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `using_statuses`
--

DROP TABLE IF EXISTS `using_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `using_statuses` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `general_users_info`
--

/*!50001 DROP VIEW IF EXISTS `general_users_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `general_users_info` AS select `u`.`id` AS `id`,`u`.`name` AS `name`,`p`.`gender` AS `gender`,`p`.`city_name` AS `city`,`u`.`email` AS `email`,`p`.`birthday` AS `birthday` from (`users` `u` join (select `p`.`user_id` AS `user_id`,`p`.`gender` AS `gender`,`c`.`city_name` AS `city_name`,`p`.`birthday` AS `birthday` from (`profiles` `p` left join `cities_id` `c` on((`c`.`id` = `p`.`default_city_id`)))) `p` on((`p`.`user_id` = `u`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `things_report`
--

/*!50001 DROP VIEW IF EXISTS `things_report`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `things_report` AS select `t`.`id` AS `id`,`t`.`name` AS `name`,`t`.`user_id` AS `user_id`,`cat`.`name` AS `category`,`r`.`rating` AS `rating`,`cnt`.`count` AS `number_of_uses` from ((((`things` `t` join `cities_id` `c` on((`t`.`city_id` = `c`.`id`))) join `category_id` `cat` on((`cat`.`id` = `t`.`category_id`))) join (select `thing_rating`.`thing_id` AS `thing_id`,round(avg(`thing_rating`.`rate`),1) AS `rating` from `thing_rating` group by `thing_rating`.`thing_id`) `r` on((`r`.`thing_id` = `t`.`id`))) join (select `using`.`thing_id` AS `thing_id`,count(`using`.`id`) AS `count` from `using` group by `using`.`thing_id`) `cnt` on((`cnt`.`thing_id` = `t`.`id`))) */;
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

-- Dump completed on 2021-01-24  1:27:16
