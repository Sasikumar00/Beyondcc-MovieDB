-- MySQL dump 10.13  Distrib 8.1.0, for Win64 (x86_64)
--
-- Host: localhost    Database: beyondcc
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `year` varchar(4) DEFAULT NULL,
  `runTimeMinutes` varchar(10) DEFAULT NULL,
  `genres` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (205,'Istoriya grazhdanskoy voyny','2021','95','Documentary'),(206,'El realismo socialista','2023','78','Drama'),(207,'Hist├│rias de Comb├│ios em Portugal','2022','46','Documentary'),(208,'Taxi Killer','2022','106','Action,Crime,Drama'),(209,'Neues in Wittstock','2021','100','Documentary'),(210,'Angeschwemmt','2023','86','Documentary'),(211,'One Dog Day','2022','101','Action,Comedy'),(212,'Predestinado','2022','108','Biography,Drama'),(213,'The Gnomes Great Adventure','2023','74','Adventure,Animation,Comedy'),(214,'Premaloka','2021','154','Drama,Romance'),(215,'Holy Hollywood','2021','82','Comedy'),(216,'Over-sexed Rugsuckers from Mars','2022','87','Comedy,Sci-Fi'),(217,'Black Star: Autobiography of a Close Friend','2022','85','Documentary'),(218,'Mugen ry├╗ky├╗ tsuru Henr├«','2021','85','Drama,Fantasy'),(219,'A Praga','2021','80','Horror'),(220,'Mortal Kombat','2021','110','Action,Adventure,Fantasy'),(221,'5-25-77','2022','132','Comedy,Drama'),(222,'Tie dao you ji dui','2023','83','War'),(223,'Yerkir Nairi','2023','67','Documentary'),(224,'Never Play with the Dead','2023','80','Horror,Mystery'),(225,'The Flash','2023','144','Action,Adventure,Fantasy'),(226,'Nefarious','2023','85','Crime,Thriller'),(227,'10 Tricks','2022','88','Comedy,Drama'),(228,'Without Remorse','2021','109','Action,Thriller,War'),(229,'Moe','2023','80','Comedy,Drama,Musical'),(230,'Family Business','2024','83','Comedy,Drama'),(231,'Jungle Cruise','2021','127','Action,Adventure,Comedy'),(232,'Hellraiser','2022','121','Horror,Mystery,Thriller'),(233,'Invasion of the Not Quite Dead','2022','103','Drama,Horror,Thriller'),(234,'Army of the Dead','2021','148','Action,Crime,Drama'),(235,'A Journal for Jordan','2021','131','Drama,Romance,War'),(236,'Kelti','2021','106','Drama'),(237,'Transe','2022','93','Drama'),(238,'Chinese Speaking Vampires','2021','80','Action'),(239,'F-Word','2021','78','Comedy'),(240,'Preman','2021','92','Action,Crime,Drama'),(241,'Uljanenko uncensored','2021','90','Documentary'),(242,'September','2023','82','Horror'),(243,'Sirens','2022','79','Documentary,Music'),(244,'Ancestral Waters','2022','74','Documentary'),(245,'The Last Voyage of the Demeter','2023','118','Fantasy,Horror'),(246,'Ash and Bone','2022','97','Horror,Mystery,Thriller'),(247,'Mr Nelson on the North Side','2021','68','Documentary'),(248,'The Little Things','2021','128','Crime,Drama,Mystery'),(249,'The Flag','2022','52','Documentary'),(250,'Howard\'s Mill','2021','96','Crime,Horror,Mystery'),(251,'Everything I Ever Wanted to Tell My Daughter About Men','2021','88','Drama'),(252,'Clean','2021','94','Action,Crime,Drama'),(253,'The Humans','2021','108','Drama'),(254,'Bertha Lutz','2021','98','Documentary'),(255,'Laal Singh Chaddha','2022','159','Comedy,Drama,Romance'),(256,'Witch Trilogy 15+','2022','71','Documentary'),(257,'Cosas imposibles','2021','89','Drama'),(258,'Bembeyaz','2021','97','Drama'),(259,'The Game Chasers Movie','2022','101','Comedy'),(260,'Fear of Rain','2021','109','Drama,Horror,Thriller'),(261,'Levante','2023','99','Drama'),(262,'One Moment','2021','114','Comedy'),(263,'Virgen de San Juan, cuatro siglos de milagros','2021','122','Drama,History'),(264,'Roses. Film-Cabaret','2021','78','Documentary,Musical'),(265,'Once a Year on Blackpool Sands','2021','105','Comedy,Drama,Romance'),(266,'Mamma Mu hittar hem','2021','65','Animation,Comedy,Family'),(267,'12 O\'Clock','2021','155','Horror,Thriller'),(268,'Falling Stars','2023','80','Drama,Horror'),(269,'Promises','2021','113','Drama'),(270,'Generation Wrecks','2021','112','Comedy'),(271,'Engaged in Vegas','2021','79','Comedy'),(272,'A Trip with Your Wife','2021','95','Comedy'),(273,'Bhavachitra','2022','146','Mystery,Thriller'),(274,'Mrak','2022','104','Drama,Horror'),(275,'Bad President','2021','90','Comedy,Fantasy'),(276,'Sans soleil','2021','99','Drama'),(277,'Queering Yoga','2021','45','Documentary'),(278,'Shiva\'s Daughter','2022','151','Drama'),(279,'Famous','2021','110','Drama'),(280,'Song Without Words','2022','83','Drama'),(281,'The Eye and The Wall','2021','88','Sci-Fi'),(282,'Supercool','2021','92','Action,Comedy,Crime'),(283,'Devil Put the Coal in the Ground','2021','82','Documentary'),(284,'David Mirisch, the Man Behind the Golden Stars','2021','84','Documentary'),(285,'Gunpoint','2021','107','Thriller'),(286,'Earwig','2021','114','Drama,Fantasy,Horror'),(287,'Bhuj: The Pride of India','2021','113','Action,Drama,History'),(288,'Sombra','2021','115','Drama'),(289,'La casa entre los cactus','2022','88','Drama,Thriller'),(290,'The Reunion','2022','85','Drama'),(291,'Let Me Be Frank','2021','82','Comedy,Drama'),(292,'Marfa','2021','97','Sci-Fi'),(293,'I Am Here','2021','76','Animation,Biography,Documentary'),(294,'Supreme Motherhood: The Journey of Mata Sahib Kaur','2022','100','Adventure,Animation,History'),(295,'Il materiale emotivo','2021','89','Comedy,Drama,Romance'),(296,'La Caravana','2023','77','Documentary'),(297,'Dena\'s Doubles','2021','76','Documentary'),(298,'Weedonomics','2021','76','Documentary'),(299,'Yong zhi cheng','2021','111','Action,Adventure,Animation'),(300,'Indiana Jones and the Sanctuary of the Black Order','2021','100','Action,Adventure,Romance'),(301,'Twist','2021','90','Action,Drama,Thriller'),(302,'My Upside Down World','2021','70','Biography,Documentary,Sport'),(303,'Jaws of Los Angeles','2021','75','Horror'),(304,'The Wasteland of Education','2021','120','Drama,Music');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'Test User','test@gmail.com','$2b$12$UOWbq6Hzf6Wn1BCyrITpQODo9jSvI.IloIVK/aYsYLCSCRotSsrIy','user'),(5,'admin','admin@gmail.com','$2b$12$fu3uPpadF10SJD9B5akcFeDN15uMsWlVn/09WN6ighNbsj5F1e6Yq','admin');
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

-- Dump completed on 2023-09-02 20:29:32
