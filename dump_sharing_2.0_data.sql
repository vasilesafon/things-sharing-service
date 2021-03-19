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
-- Dumping data for table `category_id`
--

LOCK TABLES `category_id` WRITE;
/*!40000 ALTER TABLE `category_id` DISABLE KEYS */;
INSERT INTO `category_id` VALUES (1,'Бытовая техника'),(2,'Мебель и интерьер'),(3,'Посуда и товары для кухни'),(4,'Ремонт и строительство'),(5,'Бытовая электроника'),(6,'Аудио и видео'),(7,'Фототехника'),(8,'Хобби и отдых'),(9,'Велосипеды'),(10,'Книги и журналы'),(11,'Музыкальные инструменты'),(12,'Охота и рыбалка'),(13,'Спорт и отдых'),(14,'Личные вещи'),(15,'Одежда, обувь, аксессуары'),(16,'Детская одежда и обувь'),(17,'Для детей и игрушки'),(18,'Автомобили и аксесуары');
/*!40000 ALTER TABLE `category_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cities_id`
--

LOCK TABLES `cities_id` WRITE;
/*!40000 ALTER TABLE `cities_id` DISABLE KEYS */;
INSERT INTO `cities_id` VALUES (1,'Ивангород'),(2,'Нарва');
/*!40000 ALTER TABLE `cities_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,1,'https://example.com/impf/c846019/v846019155/7778b/GjQW4thfkMs.jpg',NULL),(2,2,'https://example.com/impf/c846019/v846019155/7778b/GjQW4thfkMs.jpg',NULL),(3,3,'https://example.com/impf/c846019/v846019155/7778b/GjQW4thfkMs.jpg',NULL),(4,4,'https://example.com/impf/c846019/v846019155/7778b/GjQW4thfkMs.jpg',NULL),(5,5,'https://example.com/impf/c846019/v846019155/7778b/GjQW4thfkMs.jpg',NULL),(6,6,'https://example.com/impf/c846019/v846019155/7778b/GjQW4thfkMs.jpg',NULL),(7,7,'https://example.com/impf/c846019/v846019155/7778b/GjQW4thfkMs.jpg',NULL),(8,8,'https://example.com/impf/c846019/v846019155/7778b/GjQW4thfkMs.jpg',NULL),(9,9,'https://example.com/impf/c846019/v846019155/7778b/GjQW4thfkMs.jpg',NULL),(10,10,'https://example.com/impf/c846019/v846019155/7778b/GjQW4thfkMs.jpg',NULL),(11,1,'https://example.com/bike-01.jpg',NULL),(12,1,'https://example.com/bike-02.jpg',NULL),(13,1,'https://example.com/bike-03.jpg',NULL),(14,1,'https://example.com/bike-04.jpg',NULL),(15,2,'https://example.com/boat-01.jpg',NULL),(16,2,'https://example.com/boat-02.jpg',NULL),(17,3,'https://example.com/art-01.jpg',NULL),(18,3,'https://example.com/art-02.jpg',NULL),(19,5,'https://example.com/picnic.jpg',NULL),(20,6,'https://example.com/impf/c846019/v846019155/7778b/GjQW4thfkMs.jpg',NULL),(21,6,'https://example.com/impf/c846019/v846019155/7778b/GjQW4thfkMs.jpg',NULL),(22,6,'https://example.com/impf/c846019/v846019155/7778b/GjQW4thfkMs.jpg',NULL),(23,7,'https://example.com/ashbhj5sdfgas.jpg',NULL),(24,8,'https://example.com/45678951.jpg',NULL),(25,8,'https://example.com/45678951.jpg',NULL),(26,9,'https://example.com/camp-01.jpg',NULL),(27,9,'https://example.com/camp-02.jpg',NULL),(28,9,'https://example.com/camp-03.jpg',NULL),(29,3,'https://example.com/impf/c846019/v846019155/7778b/GjQW4thfkMs.jpg',NULL),(30,3,'https://example.com/impf/c846019/v846019155/7778b/GjQW4thfkMs.jpg',NULL),(31,3,'https://example.com/impf/c846019/v846019155/7778b/GjQW4thfkMs.jpg',NULL),(32,4,'https://example.com/impf/c846019/v846019155/7778b/GjQW4thfkMs.jpg',NULL),(33,5,'https://example.com/impf/c846019/v846019155/7778b/GjQW4thfkMs.jpg',NULL),(34,6,'https://example.com/impf/c846019/v846019155/7778b/GjQW4thfkMs.jpg',NULL),(35,7,'https://example.com/impf/c846019/v846019155/7778b/GjQW4thfkMs.jpg',NULL),(36,8,'https://example.com/impf/c846019/v846019155/7778b/GjQW4thfkMs.jpg',NULL),(37,9,'https://example.com/impf/c846019/v846019155/7778b/GjQW4thfkMs.jpg',NULL),(38,10,'https://example.com/impf/c846019/v846019155/7778b/GjQW4thfkMs.jpg',NULL);
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `messages_img`
--

LOCK TABLES `messages_img` WRITE;
/*!40000 ALTER TABLE `messages_img` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'2017-02-13 09:54:00',1,1,'m','1987-01-11'),(2,'2017-02-13 09:54:00',2,2,'f','1972-11-10'),(3,'2017-02-13 09:54:00',1,31,'f','1987-01-11'),(4,'2017-02-13 09:54:00',2,32,'m','1985-06-24'),(5,'2017-02-13 09:54:00',1,33,'m','1987-01-11'),(6,'2017-02-13 09:54:00',2,34,'f','1987-01-11'),(7,'2017-02-13 09:54:00',1,35,'f','1987-01-11'),(8,'2017-02-13 09:54:00',2,36,'f','1972-11-10'),(9,'2017-02-13 09:54:00',1,37,'m','1987-01-11'),(10,'2017-02-13 09:54:00',2,38,'m','1987-01-11'),(11,'2021-01-20 00:00:00',1,NULL,'m','1981-05-08');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `thing_rating`
--

LOCK TABLES `thing_rating` WRITE;
/*!40000 ALTER TABLE `thing_rating` DISABLE KEYS */;
INSERT INTO `thing_rating` VALUES (1,1,5,'2021-01-24 00:35:29','2021-01-24 00:35:29'),(6,1,4,'2021-01-24 00:39:09','2021-01-24 00:39:09'),(1,2,3,'2021-01-24 00:37:12','2021-01-24 00:37:12'),(10,2,3,'2021-01-24 00:39:09','2021-01-24 00:39:09'),(9,3,2,'2021-01-24 00:39:09','2021-01-24 00:39:09'),(8,4,3,'2021-01-24 00:39:09','2021-01-24 00:39:09'),(3,5,4,'2021-01-24 00:39:09','2021-01-24 00:39:09'),(7,5,3,'2021-01-24 00:39:09','2021-01-24 00:39:09'),(5,6,3,'2021-01-24 00:39:09','2021-01-24 00:39:09'),(6,6,5,'2021-01-24 00:39:09','2021-01-24 00:39:09'),(5,7,5,'2021-01-24 00:39:09','2021-01-24 00:39:09'),(2,8,2,'2021-01-24 00:39:09','2021-01-24 00:39:09'),(4,8,4,'2021-01-24 00:39:09','2021-01-24 00:39:09'),(3,9,5,'2021-01-24 00:39:09','2021-01-24 00:39:09'),(2,10,4,'2021-01-24 00:39:09','2021-01-24 00:39:09'),(1,11,3,'2021-01-24 00:39:09','2021-01-24 00:39:09');
/*!40000 ALTER TABLE `thing_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `things`
--

LOCK TABLES `things` WRITE;
/*!40000 ALTER TABLE `things` DISABLE KEYS */;
INSERT INTO `things` VALUES (1,'Велосипед городской',1,'2020-02-13 09:54:00','1',1,9,11,'Велосипед покататься по городу. Есть прокруты и шатается багажник.'),(2,'Надувная лодка одноместная',2,'2020-02-13 09:54:00','1',2,12,16,'Одноместная надувная лодка с транцем из ПВХ. Весла в комплекте.'),(3,'Этюдник',3,'2020-02-13 09:54:00','1',1,8,17,'Этюдник 20х30см'),(4,'Чапаев и Пустота. Виктор Пелевин',4,'2020-02-13 09:54:00','2',1,10,NULL,NULL),(5,'Набор шомпуров, 6 штук',5,'2020-03-10 09:54:00','1',2,8,19,'В чехле'),(6,'Швейная машинка электрическая',6,'2020-06-10 09:54:00','1',2,5,20,'Brother 450-AS'),(7,'Паяльник 1000 Ватт',7,'2020-06-10 09:54:00','1',1,5,23,NULL),(8,'Надувная кровать двуспальная',8,'2020-06-10 09:54:00','1',2,2,24,'В комплекте электрический насос'),(9,'Палатка на 4 места с тамбуром',9,'2020-06-10 09:54:00','1',1,8,26,NULL),(10,'Гарри Поттер и философский камень',10,'2020-06-11 09:54:00','1',1,10,NULL,NULL),(11,'Автобагажник 150 л',3,'2020-06-06 09:54:00','0',2,18,29,'Автобокс с набором рейлингов на любой автомобиль');
/*!40000 ALTER TABLE `things` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `things_img`
--

LOCK TABLES `things_img` WRITE;
/*!40000 ALTER TABLE `things_img` DISABLE KEYS */;
/*!40000 ALTER TABLE `things_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_feedback`
--

LOCK TABLES `user_feedback` WRITE;
/*!40000 ALTER TABLE `user_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `user_rating`
--

LOCK TABLES `user_rating` WRITE;
/*!40000 ALTER TABLE `user_rating` DISABLE KEYS */;
INSERT INTO `user_rating` VALUES (2,1,5),(3,1,4),(4,1,3),(5,1,5),(6,1,4),(7,1,3),(8,1,3),(9,1,5),(1,2,5),(3,2,4),(4,2,5),(5,2,4),(6,2,5),(7,2,4),(8,2,3),(1,3,4),(2,3,5),(4,3,4),(6,3,3),(8,3,3),(9,3,2),(1,4,4),(2,4,3),(5,4,5),(6,4,3),(7,4,4),(8,4,4),(10,4,4),(1,5,5),(2,5,4),(3,5,5),(6,5,5),(7,5,5),(8,5,4),(9,5,5),(10,5,4),(3,6,5),(4,7,2),(5,8,5),(2,9,3);
/*!40000 ALTER TABLE `user_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'Петя','wyman.florida@example.net',79735818476,'af2cb2758e5b0bc33de43b732a64f857dc8f6838'),(2,2,'Маша','zkuhn@example.org',79134336862,'220ea552ab5d0dffd1ff3fad44f10fbbf613aa54'),(3,3,'Света','sienna.bode@example.com',79694068044,'4583e075729fb0f319246a1c22cdbb9d2067ff21'),(4,4,'Коля','gaylord.christelle@example.org',79812738622,'7f01d8c470f63b3be5739a73b168a5cc382bf0c3'),(5,5,'Вася','king.carleton@example.org',79796198008,'776ee39c7e7814f4c8b68a93909a3b3c97b81f72'),(6,6,'Ната','angelita81@example.com',79462173239,'2a792d98d80ee5aad5ac95e4fd17bf4c28f890df'),(7,7,'Катя','lilian86@example.org',79659755674,'c40c84bbe40d4955aeefa29b74e1791261b23c66'),(8,8,'Женя','kmurazik@example.com',79188404241,'eab9ded55dd076ffe50e31dab2c89bd845a112f9'),(9,9,'Антон','barry68@example.org',79479163228,'5d3b0ba76415938142e527d812b8a7c6b699dbb5'),(10,10,'Боря','douglas.tremaine@example.com',79708063361,'c3bc23a12d31bf25a2a7540ec9e82c4fbf516bcd'),(11,11,'Жора','jora@gmail.ru',78956489545,'eab9ded55dd076ffe50e31dab2c89bd845a112f9');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `using`
--

LOCK TABLES `using` WRITE;
/*!40000 ALTER TABLE `using` DISABLE KEYS */;
INSERT INTO `using` VALUES (1,8,10,'2021-01-04','2021-01-09',3),(2,6,9,'2021-01-05','2021-01-10',3),(3,7,8,'2021-01-06','2021-01-11',3),(4,3,7,'2021-01-07','2021-01-12',3),(5,5,6,'2021-01-08','2021-01-13',3),(6,9,5,'2021-01-07','2021-01-14',4),(7,1,4,'2021-01-08','2021-01-15',3),(8,4,3,'2021-01-09','2021-01-16',3),(9,10,2,'2021-01-10','2021-01-13',3),(10,2,1,'2021-01-11','2021-01-18',4),(11,11,10,'2021-01-12','2021-01-19',3),(12,1,9,'2021-01-16','2021-01-20',3),(13,10,8,'2021-01-14','2021-01-21',3),(14,5,7,'2021-01-15','2021-01-22',3),(15,8,6,'2021-01-16','2021-01-19',3),(16,2,5,'2021-01-19','2021-01-24',2),(17,9,4,'2021-01-18','2021-01-22',2),(18,7,3,'2021-01-19','2021-01-25',2),(19,4,2,'2021-01-20','2021-01-24',2),(20,6,1,'2021-01-21','2021-01-27',2),(21,3,10,'2021-01-22','2021-01-28',2),(22,1,9,'2021-01-23','2021-01-29',1),(23,8,8,'2021-01-24','2021-01-30',1),(24,4,7,'2021-01-25','2021-01-31',1),(25,5,1,'2021-01-27','2021-01-20',1),(26,5,3,'2021-01-20','2021-02-24',1),(27,9,2,'2021-01-27','2021-01-30',1),(28,4,3,'2021-02-01','2021-02-03',NULL);
/*!40000 ALTER TABLE `using` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `using_feedback`
--

LOCK TABLES `using_feedback` WRITE;
/*!40000 ALTER TABLE `using_feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `using_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `using_statuses`
--

LOCK TABLES `using_statuses` WRITE;
/*!40000 ALTER TABLE `using_statuses` DISABLE KEYS */;
INSERT INTO `using_statuses` VALUES (1,'booking'),(2,'using'),(3,'completed'),(4,'canceled');
/*!40000 ALTER TABLE `using_statuses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-24  1:28:22
