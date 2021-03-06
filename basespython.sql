-- MySQL dump 10.13  Distrib 8.0.26, for Linux (x86_64)
--
-- Host: 192.168.1.10    Database: basespython
-- ------------------------------------------------------
-- Server version	5.7.38-0ubuntu0.18.04.1

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
-- Table structure for table `capitales`
--

DROP TABLE IF EXISTS `capitales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `capitales` (
  `idcapitales` int(11) NOT NULL AUTO_INCREMENT,
  `p_capitales` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idcapitales`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `capitales`
--

LOCK TABLES `capitales` WRITE;
/*!40000 ALTER TABLE `capitales` DISABLE KEYS */;
INSERT INTO `capitales` VALUES (1,'Capital de Francia'),(2,'Capital de Australia'),(3,'Capital de Brasil'),(4,'Capital de Alemania '),(5,'Capital de Italia'),(6,'Capital de Argentina'),(7,'Capital de Suecia'),(8,'Capital de Estados Unidos'),(9,'Capital de Canada'),(10,'Capital de Corea del Sur'),(11,'Capital de Dinamarca'),(12,'Capital de Marruecos');
/*!40000 ALTER TABLE `capitales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coches`
--

DROP TABLE IF EXISTS `coches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coches` (
  `idcoches` int(11) NOT NULL AUTO_INCREMENT,
  `p_coches` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idcoches`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coches`
--

LOCK TABLES `coches` WRITE;
/*!40000 ALTER TABLE `coches` DISABLE KEYS */;
INSERT INTO `coches` VALUES (1,'??En que a??o se patento el primer coche?'),(2,'??Qu?? marca de coches fue la primera en introducir el airbag?'),(3,'??En qu?? unidades se mide el par motor de un coche?'),(4,'??De qu?? pa??s procede la marca de coches Dacia?'),(5,'??Cu??l fue el coche m??s vendido de Espa??a en 2019?'),(6,'??Cu??l de estas marcas de coche no pertenece al grupo Volkswagen?'),(7,'??Cu??l fue el primer coche h??brido en comercializarse?'),(8,'??A partir de qu?? a??o de fabricaci??n tienen distintivo ambiental (etiqueta de la DGT) los coches con motor di??sel?'),(9,'??Cu??l fue el primer SUV de la historia?'),(10,'??Cu??l es el coche m??s r??pido del mundo?'),(11,'??Que marca es Italiana?'),(12,'??Que marca es Japonesa??'),(16,'??hola?'),(17,'???sdsdsdsd'),(21,'sdsds'),(22,'ssdds');
/*!40000 ALTER TABLE `coches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `futbol`
--

DROP TABLE IF EXISTS `futbol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `futbol` (
  `idfutbol` int(11) NOT NULL AUTO_INCREMENT,
  `p_futbol` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`idfutbol`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `futbol`
--

LOCK TABLES `futbol` WRITE;
/*!40000 ALTER TABLE `futbol` DISABLE KEYS */;
INSERT INTO `futbol` VALUES (1,'??Qu?? clubes crees que han jugado todas las ediciones de La Liga?'),(2,'En Espa??a, los clubes s??lo se quedan con el trofeo de Liga en propiedad si completan uno de estos dos ciclos: 3 campeonatos consecutivos o 5 victorias de forma alternativa antes que cualquier rival. ??Sabes qu?? club tiene m??s trofeos en propiedad y cu??ntos?'),(3,'??En qu?? equipos espa??oles jug?? el hist??rico Maradona?'),(4,'??Qui??n marc?? el gol que le dio el Mundial a Espa??a?'),(5,'En Espa??a hay m??s f??tbol adem??s de La Liga, ??sabes c??mo se llama popularmente al torneo espa??ol de la Copa del Rey?'),(6,'Los equipos de Espa??a y sus aficiones suelen tener un apodo. Sin embargo, ??sabes cu??l de los siguientes no es sobrenombre de ninguno?'),(7,'???Pichichi??? es el jugador que m??s goles marca en una temporada en La Liga. ??Imaginas cu??l es el futbolista que m??s goles ha marcado en la historia de la Liga desde 1928?'),(8,'??Conoces los estadios de Espa??a? ??Cu??l crees que tiene m??s aforo?'),(9,'??Qu?? dos equipos de la misma ciudad de Espa??a se han enfrentado en la final de la Champions League?'),(10,'??Cu??ntos equipos diferentes han conseguido ganar un campeonato de Liga de primera divisi??n?'),(11,'??Cu??ntos equipos compiten en la primera divisi??n espa??ola?'),(12,'??Qui??n tiene el r??cord de puntos conseguidos en una sola Liga?'),(14,'sds');
/*!40000 ALTER TABLE `futbol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peliculas`
--

DROP TABLE IF EXISTS `peliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `peliculas` (
  `idpeliculas` int(11) NOT NULL AUTO_INCREMENT,
  `p_peliculas` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idpeliculas`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculas`
--

LOCK TABLES `peliculas` WRITE;
/*!40000 ALTER TABLE `peliculas` DISABLE KEYS */;
INSERT INTO `peliculas` VALUES (1,'George Lucas, Neill Blomkamp o Ridley Scott y muchos otros directores se ver??an influidos por una pel??cula protagonizada por las rob??ticas curvas de Mar??a. Es...'),(2,'\'No es tan dif??cil hacer dinero cuando es solo hacer dinero lo que se pretende\'. ??A qu?? pel??cula corresponde esta frase?'),(3,'Los dinosaurios se pusieron de moda gracias a esta pel??cula.'),(4,'Se trata de una de las pel??culas m??s influyentes en la historia del cine. La acci??n transcurre en el Jap??n del siglo XVI. '),(5,'Violencia, perversi??n, sexo... se considera el primer ejemplo del subg??nero slasher. Anthony Perkins abandera esta gran pel??cula. '),(6,'El modelo T-800 conforma uno de los robots m??s famosos de la historia de la ciencia ficci??n. Aparece en...'),(7,'\'Aunque tenga que matar, enga??ar o robar, a Dios pongo por testigo de que jam??s volver?? a pasar hambre\'. La frase es de la pel??cula...'),(8,'Si te hablamos de la pel??cula de zombis por excelencia dir??as que es...'),(9,'Los cr??ticos de cine afirman que esta pel??cula es un remake en toda regla de \'Yojimbo\' de Akira Kurosawa. ??A qu?? pel??cula nos referimos?'),(10,'La ambiciosa colaboraci??n entre Stanley Kubrick y el escritor Arthur C. Clarke dio como fruto una de las pel??culas de ciencia ficci??n m??s aclamadas. Fue...'),(11,'Nunca un animal tuvo tanto protagonismo. Se estren?? en 1975 y la banda sonora de John Williams le vali?? incluso un ??scar. ??Una de animales asesinos!'),(12,'Un anillo para gobernarlos a todos. Un anillo para encontrarlos, para atraerlos a todos y atarlos en las tinieblas. ??A qu?? famosa pel??cula nos referimos?');
/*!40000 ALTER TABLE `peliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respuesta_capitales`
--

DROP TABLE IF EXISTS `respuesta_capitales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `respuesta_capitales` (
  `respuesta_capitales` int(11) NOT NULL AUTO_INCREMENT,
  `respuesta_capitalescol` varchar(200) DEFAULT NULL,
  `idrespuesta_capitales2` int(11) DEFAULT NULL,
  `letra_capital` varchar(45) DEFAULT NULL,
  `solucion_capital` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`respuesta_capitales`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuesta_capitales`
--

LOCK TABLES `respuesta_capitales` WRITE;
/*!40000 ALTER TABLE `respuesta_capitales` DISABLE KEYS */;
INSERT INTO `respuesta_capitales` VALUES (1,'Paris',1,'a','correcta'),(2,'Lyon',1,'b','incorrecta'),(3,'Burdeos',1,'c','incorrecta'),(4,'Toulouse',1,'d','incorrecta'),(5,'Sydney',2,'a','incorrecta'),(6,'Melbourne',2,'b','incorrecta'),(7,'Canberra',2,'c','correcta'),(8,'Brisbane',2,'d','incorrecta'),(9,'S??o Paulo',3,'a','incorrecta'),(10,'Rio de Janeiro',3,'b','incorrecta'),(11,'Salvador',3,'c','incorrecta'),(12,'Brasilia',3,'d','correcta'),(13,'Berl??n',4,'a','correcta'),(14,'Colonia',4,'b','incorrecta'),(15,'M??nich',4,'c','incorrecta'),(16,'Frankfurt',4,'d','incorrecta'),(17,'Turin',5,'a','incorrecta'),(18,'Roma',5,'b','correcta'),(19,'Milan',5,'c','incorrecta'),(20,'Napoles',5,'d','incorrecta'),(21,'C??rdoba',6,'a','incorrecta'),(22,'Rosario',6,'b','incorrecta'),(23,'Buenos Aires',6,'c','correcta'),(24,'Mar del Plata',6,'d','incorrecta'),(25,'Estocolmo',7,'a','correcta'),(26,'Malm??',7,'b','incorrecta'),(27,'Gotemburgo',7,'c','incorrecta'),(28,'Helsingborg',7,'d','incorrecta'),(29,'San Francisco',8,'a','incorrecta'),(30,'Chicago',8,'b','incorrecta'),(31,'Nueva York',8,'c','incorrecta'),(32,'Washington DC',8,'d','correcta'),(33,'Toronto',9,'a','incorrecta'),(34,'Montreal',9,'b','incorrecta'),(35,'Vancouver',9,'c','incorrecta'),(36,'Ottawa',9,'d','correcta'),(37,'Busan',10,'a','incorrecta'),(38,'Gyeongju',10,'b','incorrecta'),(39,'Andong',10,'c','incorrecta'),(40,'Se??l',10,'d','correcta'),(41,'Odense',11,'a','incorrecta'),(42,'Esbjerg',11,'b','incorrecta'),(43,'Aalborg',11,'c','incorrecta'),(44,'Copenhague',11,'d','correcta'),(45,'Marrakech',12,'a','incorrecta'),(46,'T??nger',12,'b','incorrecta'),(47,'Tetu??n',12,'c','incorrecta'),(48,'Rabat',12,'d','correcta');
/*!40000 ALTER TABLE `respuesta_capitales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respuesta_coches`
--

DROP TABLE IF EXISTS `respuesta_coches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `respuesta_coches` (
  `idrespuesta_coches` int(11) NOT NULL AUTO_INCREMENT,
  `respuesta_cochescol` varchar(200) DEFAULT NULL,
  `idrespuesta_coches2` int(11) DEFAULT NULL,
  `letra_coche` varchar(45) DEFAULT NULL,
  `solucion_coche` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idrespuesta_coches`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuesta_coches`
--

LOCK TABLES `respuesta_coches` WRITE;
/*!40000 ALTER TABLE `respuesta_coches` DISABLE KEYS */;
INSERT INTO `respuesta_coches` VALUES (1,'1879',1,'a','incorrecta'),(2,'1898',1,'b','incorrecta'),(3,'1886',1,'c','correcta'),(4,'1890',1,'d','incorrecta'),(5,'Volvo',2,'a','incorrecta'),(6,'Mercedes-Benz',2,'b','correcta'),(7,'Citro??n',2,'c','incorrecta'),(8,'Fiat',2,'d','incorrecta'),(9,'CV (caballos de vapor)',3,'a','incorrecta'),(10,'Nm (Newton/metro)',3,'b','correcta'),(11,'kW (kilovatios)',3,'c','incorrecta'),(12,' km/h (kilometros/hora)',3,'d','incorrecta'),(13,'Ruman??a',4,'a','correcta'),(14,'Francia',4,'b','incorrecta'),(15,'Austria',4,'c','incorrecta'),(16,'Suiza',4,'d','incorrecta'),(17,'Dacia Sandero',5,'a','incorrecta'),(18,'Nissan Qashqai',5,'b','incorrecta'),(19,'Seat Le??n',5,'c','correcta'),(20,'Opel Corsa',5,'d','incorrecta'),(21,'Cupra',6,'a','incorrecta'),(22,'Smart',6,'b','correcta'),(23,'Skoda',6,'c','incorrecta'),(24,'Bmw',6,'d','incorrecta'),(25,'Honda Civic',7,'a','incorrecta'),(26,'Lexus LS',7,'b','incorrecta'),(27,'Toyota Prius',7,'c','correcta'),(28,'Hyundai IONIQ',7,'d','incorrecta'),(29,'2002',8,'a','incorrecta'),(30,'2004',8,'b','correcta'),(31,'2006',8,'c','correcta'),(32,'2005',8,'d','incorrecta'),(33,'Nissan Qashqai',9,'a','incorrecta'),(34,'Chevrolet Suburban',9,'b','correcta'),(35,'Honda HR-V',9,'c','incorrecta'),(36,'Renault Captur',9,'d','incorrecta'),(37,'Bugatti Chiron Super Sport 300 +',10,'a','correcta'),(38,'Hennessey Venom F5',10,'b','incorrecta'),(39,'Tesla Roadster',10,'c','incorrecta'),(40,'Lamborghini Aventador',10,'d','incorrecta'),(41,'Fiat',11,'a','correcta'),(42,'Seat',11,'b','incorrecta'),(43,'Mercedes',11,'c','incorrecta'),(44,'Mclaren',11,'d','incorrecta'),(45,'Toyota',12,'a','correcta'),(46,'Hyundai',12,'b','incorrecta'),(47,'Kia',12,'c','incorrecta'),(48,'Renault',12,'d','incorrecta'),(49,'2',NULL,NULL,NULL),(50,'s',NULL,NULL,NULL),(51,'34',NULL,NULL,NULL),(52,'s',NULL,NULL,NULL),(53,'3',NULL,NULL,NULL),(54,'4',NULL,NULL,NULL),(55,'5',NULL,NULL,NULL),(56,'6',NULL,NULL,NULL),(57,'sdsdsd',57,NULL,NULL),(58,'sdsdsd',58,NULL,NULL),(59,'sdsdsd',59,NULL,NULL),(60,'sdsdsd',60,NULL,NULL),(61,'sdsdsd',NULL,NULL,NULL),(62,'sdsdsd',NULL,NULL,NULL),(63,'sdsdsd',NULL,NULL,NULL),(64,'sdsds',NULL,NULL,NULL);
/*!40000 ALTER TABLE `respuesta_coches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respuesta_futbol`
--

DROP TABLE IF EXISTS `respuesta_futbol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `respuesta_futbol` (
  `idrespuesta_futbol` int(11) NOT NULL AUTO_INCREMENT,
  `respuesta_futbolcol` varchar(200) DEFAULT NULL,
  `idrespuesta_futbol2` int(11) DEFAULT NULL,
  `letra_futbol` varchar(45) DEFAULT NULL,
  `solucion_futbol` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idrespuesta_futbol`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuesta_futbol`
--

LOCK TABLES `respuesta_futbol` WRITE;
/*!40000 ALTER TABLE `respuesta_futbol` DISABLE KEYS */;
INSERT INTO `respuesta_futbol` VALUES (1,'FC Barcelona, Real Madrid, Aletico de Madrid',1,'a','incorrecta'),(2,'FC Barcelona, Real Madrid, Sevilla',1,'b','incorrecta'),(3,'FC Barcelona, Real Madrid, Atletico de Bilbao',1,'c','correcta'),(4,'FC Barcelona, Real Madrid, Real Sociedad',1,'d','incorrecta'),(5,'FC Barcelona y Real Madrid 5',2,'a','correcta'),(6,'Real Madrid 5',2,'b','incorrecta'),(7,'FC Barcelona 5',2,'c','incorrecta'),(8,'FC Barcelona y Real Madrid 6',2,'d','incorrecta'),(9,'FC Barcelona y Sevilla',3,'a','correcta'),(10,'Sevilla y Real Madrid ',3,'b','incorrecta'),(11,'FC Barcelona y Real Madrid',3,'c','incorrecta'),(12,'FC Barcelona y Valencia CF',3,'d','incorrecta'),(13,'Andres Iniesta',4,'a','correcta'),(14,'Fernando Torres',4,'b','incorrecta'),(15,'David Villa ',4,'c','incorrecta'),(16,'David Silva',4,'d','incorrecta'),(17,'La corona',5,'a','incorrecta'),(18,'Torneo del caos ',5,'b','incorrecta'),(19,'Torneo del K.O',5,'c','correcta'),(20,'Torneo eliminatorio',5,'d','incorrecta'),(21,'Paelleros',6,'a','incorrecta'),(22,'Periquitos',6,'b','correcta'),(23,'Leones',6,'c','correcta'),(24,'Colchoneros',6,'d','correcta'),(25,'Raul',7,'a','incorrecta'),(26,'Messi',7,'b','correcto'),(27,'Cristiano Ronaldo',7,'c','incorrecta'),(28,'Benzema',7,'d','incorrecta'),(29,'Camp Nou',8,'a','correcta'),(30,'Santiago Bernabeu',8,'b','incorrecta'),(31,'San Mames',8,'c','incorrecta'),(32,'Wanda Metropolitano',8,'d','incorrecta'),(33,'Real Madrid y Atletico de Madrid',9,'a','correcta'),(34,'FC Barcelona y Espanyol',9,'b','incorrecta'),(35,'Sevilla y Betis',9,'c','incorrecta'),(36,'Valencia y Levante',9,'d','incorrecta'),(37,'15',10,'a','incorrecta'),(38,'4',10,'b','correcta'),(39,'9',10,'c','incorrecta'),(40,'12',10,'d','incorrecta'),(41,'18',11,'a','incorrecta'),(42,'20',11,'b','correcta'),(43,'22',11,'c','incorrecta'),(44,'24',11,'d','incorrecta'),(45,'Real Madrid',12,'a','incorrecta'),(46,'FC Barcelona',12,'b','incorrecta'),(47,'Sevilla',12,'c','incorrecta'),(48,'Real Madrid y FC Barcelona',12,'d','correcta'),(49,'sdsd',NULL,NULL,NULL),(50,'sd',NULL,NULL,NULL),(51,'sd',NULL,NULL,NULL),(52,'sd',NULL,NULL,NULL);
/*!40000 ALTER TABLE `respuesta_futbol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `respuesta_peliculas`
--

DROP TABLE IF EXISTS `respuesta_peliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `respuesta_peliculas` (
  `idrespuesta_peliculas` int(11) NOT NULL AUTO_INCREMENT,
  `respuesta_peliculascol` varchar(200) DEFAULT NULL,
  `idrespuesta_peliculas2` varchar(45) DEFAULT NULL,
  `letra_pelicula` varchar(45) DEFAULT NULL,
  `solucion_pelicula` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idrespuesta_peliculas`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `respuesta_peliculas`
--

LOCK TABLES `respuesta_peliculas` WRITE;
/*!40000 ALTER TABLE `respuesta_peliculas` DISABLE KEYS */;
INSERT INTO `respuesta_peliculas` VALUES (1,'Ex-machina','1','a','incorrecta'),(2,'Blade Runner','1','b','incorrecta'),(3,'Wall-E','1','c','incorrecta'),(4,'Metr??polis','1','d','correcta'),(5,'Ciudadano Kane','2','a','correcta'),(6,'El color del dinero','2','b','incorrecta'),(7,'El lobo de Wall Street','2','c','incorrecta'),(8,'Tarde de perros','2','d','incorrecta'),(9,'En busca del valle encantado','3','a','incorrecta'),(10,'King Kong','3','b','incorrecta'),(11,'Parque Jur??sico','3','c','correcta'),(12,'Godzilla','3','d','incorrecta'),(13,'Ran','4','a','incorrecta'),(14,'Harakiri','4','b','correcta'),(15,'Los 7 samur??is','4','c','incorrecta'),(16,'El ??ltimo samur??i','4','d','incorrecta'),(17,'Psicosis','5','a','correcta'),(18,'El Proceso','5','b','incorrecta'),(19,'Asesinato en el Orient Express','5','c','incorrecta'),(20,'El juez de la horca','5','d','incorrecta'),(21,'Yo, Robot','6','a','incorrecta'),(22,'Cortocircuito','6','b','incorrecta'),(23,'Terminator','6','c','correcta'),(24,'Robocop','6','d','incorrecta'),(25,'Vacaciones en Roma','7','a','incorrecta'),(26,'Lo que el viento se llev??','7','b','correcta'),(27,'Tombstone','7','c','incorrecta'),(28,'Sabrina','7','d','incorrecta'),(29,'Re-animator','8','a','incorrecta'),(30,'Braindead','8','b','incorrecta'),(31,'28 d??as despu??s','8','c','incorrecta'),(32,'La noche de los muertos vivientes','8','d','correcta'),(33,'Veracruz','9','a','incorrecta'),(34,'Le llamaban Trinidad','9','b','incorrecta'),(35,'Por un pu??ado de d??lares','9','c','correcta'),(36,'La muerte ten??a un precio','9','d','incorrecta'),(37,'2001: Una odisea del espacio','10','a','correcta'),(38,'Encuentros en la tercera fase','10','b','incorrecta'),(39,'La naranja mec??nica','10','c','incorrecta'),(40,'La m??quina del tiempo','10','d','incorrecta'),(41,'Tibur??n','11','a','correcta'),(42,'Anaconda','11','b','incorrecta'),(43,'Pira??a','11','c','incorrecta'),(44,'Cocodrilo','11','d','incorrecta'),(45,'El laberinto del Fauno','12','a','incorrecta'),(46,'El Se??or de los Anillos','12','b','correcta'),(47,'La Torre Oscura','12','c','incorrecta'),(48,'El misterio del anillo','12','d','incorrecta');
/*!40000 ALTER TABLE `respuesta_peliculas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-07 20:10:17
