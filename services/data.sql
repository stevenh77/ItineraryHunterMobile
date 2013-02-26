/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP TABLE IF EXISTS `itinerary`;
DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `description` varchar(30) NOT NULL,
  `picture` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` 
VALUES 
(1, 'Adventure', 'High adrenaline pursuits', 'adventure.png'),
(2, 'Beach', 'Fun in the sun', 'beach.png'),
(3, 'City Breaks', 'Escape and wonder', 'citybreaks.png'),
(4, 'Festivals', 'Unique events not to be missed', 'festival.png'),
(5, 'Safari', 'Wildlife and nature explored', 'safari.png');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

CREATE TABLE `itinerary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryId` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `duration` varchar(30) NOT NULL,
  `description` varchar(250) NOT NULL,
  `picture` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;


LOCK TABLES `itinerary` WRITE;
/*!40000 ALTER TABLE `itinerary` DISABLE KEYS */;
INSERT INTO `itinerary` 
VALUES 
(1, 1, 'Tour du Mont Blanc',10, 'The Tour du Mont Blanc or TMB is one of the most popular long distance walks in Europe. It circles the Mont Blanc Massif covering a distance of roughly 170 km with 10 km of ascent/descent and passes through parts of Switzerland, Italy and France.', 'adventure-hiking-tourdumontblanc-large.png'),
(2,1,'Hiking in Argentina',14, 'Torres del Paine National Park is a national park encompassing mountains, a glacier, a lake, and river-rich areas in southern Chilean Patagonia.','adventure-hiking-torresdelpaine-large.png'),
(3,1,'Sipadan, Borneo',10, 'Walk straight off the beach into a world of underwater magic.', 'adventure-scuba-1-large.png'),
(4,1,'Most Dangerous Road',10, 'Cycle down the worlds most dangerous road in Peru.','adventure-bikes-1-large.png'),
(5,1,'Matterhorn',3, 'Ski or snowboard from what seems like the another planet', 'adventure-snow-1-large.png'),
(6,2,'Thailand',14, 'The land of smiles, the wonders never end!', 'beach-exotic-1-large.png'),
(7,2,'Egypt',7, 'Great value for money, lots of sun and sea', 'beach-bestvalue-1-large.png'),
(8,2,'Caribbean Islands',10, 'Explore all the different islands, each with its own personality', 'beach-caribbean-1-large.png'),
(9,2,'Saint Lucia',7, 'Paradise found.', 'beach-allinclusive-1-large.png'),
(10,3,'New Year in Tallinn',3, 'Beautiful, fairytale small city with cobblestone streets.', 'citybreak-europe-1-large.png'),
(11,4,'Benicassim',3, 'Party hard at one of Europes most popular music festivals.', 'festival-music-1-large.png'),
(12,4,'Full Moon Party',10, 'Crazy, wild and lots of neon fun.', 'festival-parties-1-large.png'),
(13,4,'Holi',10, 'Paint fight!', 'festival-cultural-1-large.png'),
(14,5,'Kruger National Park',14, 'Stunning views and experiences that will stay with you for a lifetime.', 'safari-biggame-1-large.png'),
(15,5,'Amazon Rain Forest',14, 'Experience living in a rain forest, with all of its animals...', 'safari-jungle-1-large.png');
/*!40000 ALTER TABLE `itinerary` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

