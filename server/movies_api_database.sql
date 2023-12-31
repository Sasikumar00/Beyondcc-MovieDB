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
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
INSERT INTO `alembic_version` VALUES ('dd55ff1cef28');
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `movie_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (8,5,250);
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `popularity` float DEFAULT NULL,
  `director` varchar(255) DEFAULT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `imdb_score` float DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,83,'Victor Fleming','Adventure,  Family,  Fantasy,  Musical',8.3,'The Wizard of Oz'),(2,88,'George Lucas','Action,  Adventure,  Fantasy,  Sci-Fi',8.8,'Star Wars'),(3,66,'Giovanni Pastrone','Adventure,  Drama,  War',6.6,'Cabiria'),(4,87,'Alfred Hitchcock','Horror,  Mystery,  Thriller',8.7,'Psycho'),(5,80,'Merian C. Cooper','Adventure,  Fantasy,  Horror',8,'King Kong'),(6,84,'Fritz Lang','Adventure,  Drama,  Sci-Fi',8.4,'Metropolis'),(7,86,'Marc Daniels','Adventure,  Sci-Fi',8.6,'Star Trek'),(8,88,'Michael Curtiz','Drama,  Romance,  War',8.8,'Casablanca'),(9,79,'William Cottrell','Animation,  Family,  Fantasy,  Musical,  Romance',7.9,'Snow White and the Seven Dwarfs'),(10,84,'Stanley Kubrick','Adventure,  Mystery,  Sci-Fi',8.4,'2001 : A Space Odyssey'),(11,92,'Francis Ford Coppola','Crime,  Drama',9.2,'The Godfather'),(12,71,'D.W. Griffith','Drama,  History,  Romance,  War,  Western',7.1,'The Birth of a Nation'),(13,81,'Alfred Hitchcock','Crime,  Film-Noir,  Mystery,  Thriller',8.1,'Shadow of a Doubt'),(14,83,'Steven Spielberg','Thriller',8.3,'Jaws'),(15,64,'J. Searle Dawley','Fantasy,  Romance',6.4,'Snow White'),(16,86,'Francis Ford Coppola','Drama,  War',8.6,'Apocalypse Now'),(17,82,'Victor Fleming','Drama,  Romance,  War',8.2,'Gone with the Wind'),(18,76,'Ernst Lubitsch','Musical,  Comedy,  Romance',7.6,'The Merry Widow'),(19,81,'John Ford','Adventure,  Drama,  Western',8.1,'The Searchers'),(20,86,'Alfred Hitchcock','Crime,  Mystery,  Romance,  Thriller',8.6,'Vertigo'),(21,73,'Terence Young','Action,  Adventure,  Thriller',7.3,'Dr. No'),(22,83,'Orson Welles','Crime,  Film-Noir,  Thriller',8.3,'Touch of Evil'),(23,74,'Merian C. Cooper','Adventure,  Documentary',7.4,'Chang : A Drama of the Wilderness'),(24,81,'William Friedkin','Horror',8.1,'The Exorcist'),(25,86,'Orson Welles','Drama,  Mystery',8.6,'Citizen Kane'),(26,81,'James Cameron','Action,  Sci-Fi,  Thriller',8.1,'The Terminator'),(27,81,'Roman Polanski','Drama,  Horror,  Mystery',8.1,'Rosemarys Baby'),(28,81,'Sergei M. Eisenstein','Drama,  History,  War',8.1,'Bronenosets Potyomkin'),(29,88,'Irvin Kershner','Action,  Adventure,  Sci-Fi',8.8,'Star Wars : Episode V - The Empire Strikes Back'),(30,71,'Harry O. Hoyt','Adventure,  Fantasy,  Horror,  Sci-Fi,  Thriller',7.1,'The Lost World'),(31,85,'Stanley Kubrick','Crime,  Drama,  Sci-Fi',8.5,'A Clockwork Orange'),(32,80,'James Whale','Drama,  Horror,  Sci-Fi',8,'Frankenstein'),(33,85,'Lisa Simon','Animation,  Comedy,  Family,  Fantasy,  Music',8.5,'Sesame Street'),(34,82,'Jean Renoir','Drama,  War',8.2,'La grande illusion'),(35,87,'Steven Spielberg','Action,  Adventure',8.7,'Raiders of the Lost Ark'),(36,80,'George A. Romero','Horror,  Mystery',8,'Night of the Living Dead'),(37,53,'Larry Semon','Comedy,  Family,  Fantasy,  Adventure',5.3,'The Wizard of Oz'),(38,68,'George Lucas','Drama,  Mystery,  Sci-Fi,  Thriller',6.8,'THX 1138'),(39,79,'Steven Spielberg','Adventure,  Drama,  Family,  Fantasy,  Sci-Fi',7.9,'E.T. : The Extra-Terrestrial'),(40,69,'Maurice Tourneur','Comedy,  Drama',6.9,'The Poor Little Rich Girl'),(41,46,'James Parrott','Short,  Adventure,  Comedy',4.6,'The Tin Man'),(42,86,'Martin Scorsese','Drama,  Thriller',8.6,'Taxi Driver'),(43,90,'Sergio Leone','Adventure,  Western',9,'Il buono, il brutto, il cattivo.'),(44,66,'D.W. Griffith','Short,  Action,  Western',6.6,'The Battle at Elderbush Gulch'),(45,84,'Stanley Donen','Comedy,  Musical,  Romance',8.4,'Singin in the Rain'),(46,84,'Elia Kazan','Crime,  Drama,  Romance',8.4,'On the Waterfront'),(47,84,'Clyde Bruckman','Comedy,  Romance,  War,  Action',8.4,'The General'),(48,78,'Ivan Reitman','Adventure,  Fantasy,  Mystery',7.8,'Ghost Busters'),(49,71,'W.S. Van Dyke','Action,  Adventure,  Romance',7.1,'Tarzan the Ape Man'),(50,60,'L. Frank Baum','Family,  Fantasy,  Adventure,  Comedy',6,'His Majesty, the Scarecrow of Oz'),(51,95,'John Brahm','Drama,  Fantasy,  Mystery,  Sci-Fi,  Thriller',9.5,'The Twilight Zone'),(52,75,'Edwin S. Porter','Short,  Western',7.5,'The Great Train Robbery'),(53,79,'Guy Hamilton','Action,  Adventure,  Thriller',7.9,'Goldfinger'),(54,81,'Federico Fellini','Comedy,  Drama',8.1,'La dolce vita'),(55,85,'Ridley Scott','Adventure,  Horror,  Sci-Fi,  Thriller',8.5,'Alien'),(56,81,'F.W. Murnau','Fantasy,  Horror',8.1,'Nosferatu, eine Symphonie des Grauens'),(57,85,'Stanley Kubrick','Horror,  Mystery',8.5,'The Shining'),(58,86,'Stanley Kubrick','Comedy,  Drama',8.6,'Dr. Strangelove or : How I Learned to Stop Worrying and Love the Bomb'),(59,82,'Brian De Palma','Crime,  Drama,  Thriller',8.2,'Scarface'),(60,81,'John G. Avildsen','Drama,  Romance,  Sport',8.1,'Rocky'),(61,90,'Mark Kirkland','Animation,  Comedy',9,'The Simpsons'),(62,80,'Luis Bu1uel','Short,  Fantasy',8,'Un chien andalou'),(63,77,'Tod Browning','Fantasy,  Horror',7.7,'Dracula'),(64,75,'Ted Kotcheff','Action,  Adventure,  Drama,  Thriller',7.5,'First Blood'),(65,80,'Joseph Barbera','Animation,  Family,  Comedy',8,'The Flintstones'),(66,77,'Oscar Rudolph','Action,  Adventure,  Comedy,  Crime,  Family,  Fantasy,  Mystery,  Sci-Fi',7.7,'Batman'),(67,70,'John Ford','Adventure,  War',7,'The Lost Patrol'),(68,81,'Mervyn LeRoy','Crime,  Drama,  Film-Noir',8.1,'I Am a Fugitive from a Chain Gang'),(69,84,'Robert Zemeckis','Adventure,  Family,  Sci-Fi',8.4,'Back to the Future'),(70,79,'John Boorman','Adventure,  Drama,  Thriller',7.9,'Deliverance'),(71,84,'Alfred Hitchcock','Mystery,  Romance,  Thriller',8.4,'Rebecca'),(72,80,'Edward F. Cline','Comedy,  Short,  Family',8,'The Scarecrow'),(73,75,'Tobe Hooper','Horror,  Mystery,  Thriller',7.5,'The Texas Chain Saw Massacre'),(74,84,'David Lean','Adventure,  Drama,  War',8.4,'The Bridge on the River Kwai'),(75,87,'Frank Capra','Drama,  Fantasy,  Romance',8.7,'Its a Wonderful Life'),(76,71,'Steven Soderbergh','Drama',7.1,'Sex, Lies, and Videotape'),(77,79,'Don Siegel','Action,  Crime,  Thriller',7.9,'Dirty Harry'),(78,79,'George Cukor','Drama,  Family,  Musical,  Romance',7.9,'My Fair Lady'),(79,75,'Samuel Armstrong','Animation,  Family,  Musical',7.5,'Dumbo'),(80,79,'Alfred Hitchcock','Horror,  Romance,  Thriller',7.9,'The Birds'),(81,72,'James W. Horne','Comedy,  Drama,  Sport',7.2,'College'),(82,74,'James Cameron','Drama,  History,  Romance',7.4,'Titanic'),(83,82,'William Wyler','Action,  Adventure,  Drama,  History,  Romance',8.2,'Ben-Hur'),(84,90,'Quentin Tarantino','Crime,  Drama',9,'Pulp Fiction'),(85,87,'Alfred Hitchcock','Crime,  Mystery,  Romance,  Thriller',8.7,'Rear Window'),(86,85,'James Cameron','Action,  Sci-Fi,  Thriller',8.5,'Aliens'),(87,70,'John Cromwell','Drama,  Mystery,  Romance',7,'Algiers'),(88,81,'Erich von Stroheim','Drama',8.1,'Greed'),(89,87,'Jonathan Demme','Crime,  Thriller',8.7,'The Silence of the Lambs'),(90,79,'Charles Chaplin','Comedy,  Family,  Drama,  Romance',7.9,'The Circus'),(91,90,'Kim Manners','Drama,  Mystery,  Sci-Fi,  Thriller',9,'The X Files'),(92,85,'James Cameron','Action,  Sci-Fi,  Thriller',8.5,'Terminator 2 : Judgment Day'),(93,60,'Joseph C. Terry','Talk-Show',6,'The Oprah Winfrey Show'),(94,82,'Mike Nichols','Comedy,  Drama,  Romance',8.2,'The Graduate'),(95,55,'Henry Lehrman','Comedy,  Short',5.5,'The Bangville Police'),(96,87,'Andy Wachowski','Action,  Adventure,  Sci-Fi',8.7,'The Matrix'),(97,70,'Oscar Rudolph','Comedy,  Family',7,'The Brady Bunch'),(98,85,'David Lean','Adventure,  Biography,  Drama,  History,  War',8.5,'Lawrence of Arabia'),(99,74,'Wes Craven','Horror,  Mystery',7.4,'A Nightmare on Elm Street'),(100,78,'George Schaefer','Comedy,  Drama',7.8,'Pygmalion'),(101,86,'Alfred Hitchcock','Adventure,  Drama,  Mystery,  Romance,  Thriller',8.6,'North by Northwest'),(102,79,'Robert Wise','Biography,  Drama,  Family,  Musical',7.9,'The Sound of Music'),(103,78,'Jack Arnold','Comedy,  Family',7.8,'Gilligans Island'),(104,76,'James Algar','Animation,  Drama,  Family',7.6,'Bambi'),(105,78,'Jerome Robbins','Crime,  Drama,  Musical,  Romance',7.8,'West Side Story'),(106,79,'Fred Zinnemann','Drama,  Romance,  War',7.9,'From Here to Eternity'),(107,79,'John Carpenter','Horror,  Thriller',7.9,'Halloween'),(108,90,'William Asher','Comedy,  Family',9,'I Love Lucy'),(109,74,'Karl Freund','Romance,  Horror',7.4,'Mad Love'),(110,83,'Ridley Scott','Drama,  Sci-Fi,  Thriller',8.3,'Blade Runner'),(111,77,'Robert Stevenson','Comedy,  Family,  Fantasy,  Musical',7.7,'Mary Poppins'),(112,83,'Richard Marquand','Action,  Adventure,  Fantasy,  Sci-Fi',8.3,'Star Wars : Episode VI - Return of the Jedi'),(113,78,'Steven Spielberg','Drama,  Sci-Fi',7.8,'Close Encounters of the Third Kind'),(114,88,'Akira Kurosawa','Adventure,  Drama',8.8,'Shichinin no samurai'),(115,80,'James Whale','Horror,  Sci-Fi',8,'Bride of Frankenstein'),(116,85,'John Huston','Adventure,  Drama,  Western,  Action',8.5,'The Treasure of the Sierra Madre'),(117,60,'Phil Karlson','Drama,  Crime,  Film-Noir',6,'5 Against the House'),(118,79,'Akira Kurosawa','Drama,  History,  War',7.9,'Kagemusha'),(119,47,'D.W. Griffith','Short,  Drama',4.7,'His Trust Fulfilled'),(120,53,'D.W. Griffith','Short,  Drama,  War',5.3,'His Trust'),(121,73,'Ishirccab Honda','Drama,  Horror,  Sci-Fi,  Thriller',7.3,'Gojira'),(122,80,'Stanley Kubrick','Action,  Adventure,  Biography,  Drama,  History',8,'Spartacus'),(123,71,'Winsor McCay','Animation,  Short',7.1,'Dreams of the Rarebit Fiend : The Pet'),(124,84,'John Huston','Crime,  Film-Noir,  Mystery',8.4,'The Maltese Falcon'),(125,80,'Franklin J. Schaffner','Adventure,  Mystery,  Sci-Fi',8,'Planet of the Apes'),(126,72,'Frank Lloyd','Adventure,  Drama,  Romance',7.2,'The Sea Hawk'),(127,82,'Lewis Milestone','Action,  Drama,  History,  War',8.2,'All Quiet on the Western Front'),(128,74,'Carl Boese','Fantasy,  Horror',7.4,'Der Golem, wie er in die Welt kam'),(129,59,'Gordon Douglas','Action,  Adventure,  Comedy,  Sci-Fi',5.9,'In Like Flint'),(130,74,'Leo McCarey','Drama,  Family',7.4,'The Bells of St. Marys'),(131,77,'Steven Spielberg','Mystery,  Thriller',7.7,'Duel'),(132,78,'Sergei M. Eisenstein','Drama',7.8,'Stachka'),(133,71,'Fred Zinnemann','Musical,  Romance,  Western',7.1,'Oklahoma!'),(134,74,'Maya Deren','Short',7.4,'At Land'),(135,79,'Steven Spielberg','Action,  Adventure,  Family,  Sci-Fi',7.9,'Jurassic Park'),(136,79,'John Ford','Action,  Drama,  Romance,  Western',7.9,'Stagecoach'),(137,86,'Stanley Kubrick','Crime,  Drama,  War',8.6,'Paths of Glory'),(138,77,'Jerry Paris','Comedy,  Family,  Music',7.7,'Happy Days'),(139,68,'John Badham','Drama,  Music,  Romance',6.8,'Saturday Night Fever'),(140,81,'George Cukor','Comedy,  Romance',8.1,'The Philadelphia Story'),(141,82,'Federico Fellini','Drama,  Fantasy',8.2,'8xe5'),(142,86,'Douglas Camfield','Adventure,  Drama,  Sci-Fi',8.6,'Doctor Who'),(143,86,'Fritz Lang','Crime,  Thriller',8.6,'M'),(144,74,'John Huston','Adventure,  Drama',7.4,'Moby Dick'),(145,74,'Brian De Palma','Horror,  Thriller',7.4,'Carrie'),(146,79,'Nicholas Ray','Drama,  Romance',7.9,'Rebel Without a Cause'),(147,73,'Richard Donner','Action,  Adventure,  Family,  Sci-Fi',7.3,'Superman'),(148,88,'Peter Harris','Comedy,  Family,  Music',8.8,'The Muppet Show'),(149,77,'Norman Ferguson','Animation,  Drama,  Family,  Fantasy,  Music',7.7,'Pinocchio'),(150,75,'Arthur Lipsett','Short',7.5,'21-87'),(151,81,'Joseph Barbera','Animation,  Family,  Mystery,  Comedy,  Adventure',8.1,'Scooby Doo, Where Are You!'),(152,71,'Joy Batchelor','Animation,  Drama',7.1,'Animal Farm'),(153,48,'Ray Enright','Comedy,  Music,  Romance,  Sport',4.8,'Swing Your Lady'),(154,78,'George Stevens','Drama,  Western',7.8,'Shane'),(155,69,'John G. Avildsen','Drama,  Family,  Sport',6.9,'The Karate Kid'),(156,86,'Kevin McCarthy','Game-Show',8.6,'Jeopardy!'),(157,82,'Norman Tokar','Comedy,  Family',8.2,'Leave It to Beaver'),(158,80,'Arthur Penn','Biography,  Crime,  Drama,  Romance',8,'Bonnie and Clyde'),(159,89,'Milos Forman','Drama',8.9,'One Flew Over the Cuckoos Nest'),(160,81,'Dave Wilson','Comedy,  Music',8.1,'Saturday Night Live'),(161,88,'Sergio Leone','Western',8.8,'Cera una volta il West'),(162,84,'F.W. Murnau','Drama,  Romance',8.4,'Sunrise : A Song of Two Humans'),(163,82,'Roger Allers','Animation,  Adventure,  Drama,  Family,  Musical',8.2,'The Lion King'),(164,75,'Walt Disney','Animation,  Family,  Comedy,  Short',7.5,'Plane Crazy'),(165,64,'Rob Klug','Documentary,  News',6.4,'60 Minutes'),(166,77,'Stanley Kubrick','Drama,  Romance',7.7,'Lolita'),(167,83,'John McTiernan','Action,  Crime,  Thriller',8.3,'Die Hard'),(168,82,'Otto Preminger','Crime,  Film-Noir,  Mystery,  Romance,  Thriller',8.2,'Laura'),(169,73,'Dennis Hopper','Crime,  Drama',7.3,'Easy Rider'),(170,80,'Don Siegel','Horror,  Sci-Fi,  Thriller',8,'Invasion of the Body Snatchers'),(171,78,'Alain Resnais','Drama,  Mystery,  Romance',7.8,'Lanncca9e derniccacre ccca Marienbad'),(172,68,'Walter Grauman','Drama,  Thriller',6.8,'Lady in a Cage'),(173,76,'Sam Raimi','Horror',7.6,'The Evil Dead'),(174,83,'Bobby Quinn','Comedy,  Music,  Talk-Show',8.3,'The Tonight Show Starring Johnny Carson'),(175,66,'Tony Scott','Action,  Drama,  Romance',6.6,'Top Gun'),(176,69,'Lewis Gilbert','Action,  Adventure,  Sci-Fi,  Thriller',6.9,'You Only Live Twice'),(177,75,'Terence Young','Action,  Adventure,  Romance,  Thriller',7.5,'From Russia with Love'),(178,81,'Hollingsworth Morse','Adventure,  Western,  Family',8.1,'The Lone Ranger'),(179,52,'Gerard Damiano','Adult,  Comedy',5.2,'Deep Throat'),(180,76,'Samuel Fuller','Drama,  Mystery',7.6,'Shock Corridor'),(181,76,'Robert Clouse','Action,  Crime,  Drama,  Thriller',7.6,'Enter the Dragon'),(182,78,'John Sturges','Western,  Adventure,  Drama',7.8,'The Magnificent Seven'),(183,77,'Josef von Sternberg','Crime,  Drama',7.7,'Underworld'),(184,73,'John Ford','Western',7.3,'She Wore a Yellow Ribbon'),(185,67,'Edouard Molinaro','Drama,  Thriller',6.7,'Un dans la ville'),(186,76,'Tim Burton','Crime,  Drama,  Thriller',7.6,'Batman'),(187,74,'Clyde Geronimi','Animation,  Family,  Fantasy,  Musical,  Romance',7.4,'Cinderella'),(188,55,'Lee Sholem','Action,  Adventure,  Fantasy,  Romance',5.5,'Tarzans Magic Fountain'),(189,83,'Fred Zinnemann','Drama,  Western',8.3,'High Noon'),(190,77,'Leni Riefenstahl','Documentary,  War',7.7,'Triumph des Willens'),(191,84,'Frank Capra','Drama',8.4,'Mr. Smith Goes to Washington'),(192,70,'Randal Kleiser','Musical,  Romance',7,'Grease'),(193,81,'D.W. Griffith','Drama,  History,  Romance',8.1,'Intolerance : Loves Struggle Throughout the Ages'),(194,84,'Quentin Tarantino','Crime,  Mystery,  Thriller',8.4,'Reservoir Dogs'),(195,78,'George Stevens','Drama,  Romance',7.8,'A Place in the Sun'),(196,85,'Carol Reed','Film-Noir,  Mystery,  Thriller',8.5,'The Third Man'),(197,83,'Charles Chaplin','Adventure,  Comedy,  Family,  Romance,  Western',8.3,'The Gold Rush'),(198,79,'Cecil B. DeMille','Adventure,  Drama,  History',7.9,'The Ten Commandments'),(199,79,'John Ford','Drama,  Western',7.9,'My Darling Clementine'),(200,87,'Billy Wilder','Drama,  Film-Noir',8.7,'Sunset Blvd.'),(201,63,'Sean S. Cunningham','Horror,  Mystery,  Thriller',6.3,'Friday the 13th'),(202,83,'John Sturges','Adventure,  Drama,  History,  War',8.3,'The Great Escape'),(203,70,'Clint Eastwood','Crime,  Drama,  Romance,  Thriller',7,'Play Misty for Me'),(204,73,'Cameron Crowe','Comedy,  Drama,  Romance,  Sport',7.3,'Jerry Maguire'),(205,73,'Bretaigne Windust','Drama,  Crime,  Film-Noir',7.3,'The Enforcer'),(206,68,'Richard Fleischer','Adventure,  Sci-Fi',6.8,'Fantastic Voyage'),(207,82,'George Roy Hill','Adventure,  Crime,  Drama,  Western',8.2,'Butch Cassidy and the Sundance Kid'),(208,86,'Bob Sweeney','Comedy,  Family',8.6,'The Andy Griffith Show'),(209,79,'John Landis','Action,  Comedy,  Music,  Musical',7.9,'The Blues Brothers'),(210,86,'Robert Zemeckis','Drama,  Romance',8.6,'Forrest Gump'),(211,84,'Billy Wilder','Comedy',8.4,'Some Like It Hot'),(212,48,'Bruce Gowers','Game-Show,  Music,  Reality-TV',4.8,'American Idol : The Search for a Superstar'),(213,88,'David Fincher','Drama,  Mystery,  Thriller',8.8,'Fight Club'),(214,51,'Jack Arnold','Horror,  Sci-Fi',5.1,'Revenge of the Creature'),(215,85,'Roman Polanski','Drama,  Mystery,  Thriller',8.5,'Chinatown'),(216,81,'Sam Peckinpah','Action,  Western',8.1,'The Wild Bunch'),(217,88,'Peter Jackson','Action,  Adventure,  Fantasy',8.8,'The Lord of the Rings : The Fellowship of the Ring'),(218,79,'Frank Lloyd','Adventure,  Drama,  History',7.9,'Mutiny on the Bounty'),(219,78,'Luis el','Drama,  Romance',7.8,'El'),(220,84,'Stanley Kubrick','Drama,  War',8.4,'Full Metal Jacket'),(221,55,'Stanley Kramer','Action,  Adventure,  Drama,  Romance,  War',5.5,'The Pride and the Passion'),(222,80,'Rob Reiner','Comedy,  Music',8,'This Is Spinal Tap'),(223,78,'Anthony Mann','Western',7.8,'Winchester 73'),(224,88,'Cliff Bole','Action,  Adventure,  Sci-Fi',8.8,'Star Trek : The Next Generation'),(225,73,'Charles S. Dubin','Crime,  Drama,  Mystery',7.3,'Kojak'),(226,74,'Yevgeni Bauer','Drama,  Short',7.4,'Gryozy'),(227,49,'Gregory J. Bonann','Drama,  Action,  Adventure',4.9,'Baywatch'),(228,64,'Gerald Potterton','Animation,  Action,  Adventure,  Comedy,  Crime,  Fantasy,  Horror,  Sci-Fi',6.4,'Heavy Metal'),(229,80,'Robert Wise','Drama,  Sci-Fi,  Thriller',8,'The Day the Earth Stood Still'),(230,77,'Burt Gillett','Animation,  Musical,  Family,  Comedy,  Short',7.7,'Three Little Pigs'),(231,78,'William A. Wellman','Action,  Crime,  Drama',7.8,'The Public Enemy'),(232,71,'Jim Sharman','Comedy,  Musical',7.1,'The Rocky Horror Picture Show'),(233,80,'Barry Levinson','Drama',8,'Rain Man'),(234,80,'Jean Vigo','Drama,  Romance',8,'Latalante'),(235,82,'Ingmar Bergman','Drama,  Fantasy',8.2,'Persona'),(236,80,'George A. Romero','Action,  Horror',8,'Dawn of the Dead'),(237,74,'William F. Claxton','Action,  Comedy,  Drama,  Romance,  War,  Western',7.4,'Bonanza'),(238,68,'Adrian Lyne','Drama,  Thriller',6.8,'Fatal Attraction'),(239,60,'Edward L. Cahn','Horror,  Sci-Fi',6,'It! The Terror from Beyond Space'),(240,83,'John Moffitt','Comedy,  Music',8.3,'Toast of the Town'),(241,79,'William Friedkin','Action,  Crime,  Thriller',7.9,'The French Connection'),(242,73,'Clyde Geronimi','Animation,  Adventure,  Family,  Fantasy,  Music',7.3,'Peter Pan'),(243,78,'John Nicolella','Action,  Crime,  Drama,  Thriller',7.8,'Miami Vice'),(244,64,'George Lucas','Action,  Adventure,  Fantasy,  Sci-Fi',6.4,'Star Wars : Episode I - The Phantom Menace'),(245,88,'Martin Scorsese','Crime,  Drama,  Thriller',8.8,'Goodfellas'),(246,62,'Michael Curtiz','Drama,  History',6.2,'The Egyptian'),(247,76,'Michael OHerlihy','Crime,  Drama,  Mystery',7.6,'Hawaii Five-O'),(248,66,'Dennis Donnelly','Action,  Adventure,  Crime,  Drama,  Mystery',6.6,'Charlies Angels'),(250,90,'James Bond','Action, Drama, Adventure',8,'Test Movie (Delete Later)');
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
  `role` enum('user','admin') DEFAULT NULL,
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

-- Dump completed on 2023-09-04 21:48:43
