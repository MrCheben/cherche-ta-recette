-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categorie_ingredient`
--

DROP TABLE IF EXISTS `categorie_ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorie_ingredient` (
  `id_categorie_ingredient` tinyint(4) DEFAULT NULL,
  `nom` varchar(7) DEFAULT NULL,
  `icon` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie_ingredient`
--

LOCK TABLES `categorie_ingredient` WRITE;
/*!40000 ALTER TABLE `categorie_ingredient` DISABLE KEYS */;
INSERT INTO `categorie_ingredient` VALUES (1,'Légumes',''),(2,'Viandes',''),(3,'Épices','');
/*!40000 ALTER TABLE `categorie_ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorie_recette`
--

DROP TABLE IF EXISTS `categorie_recette`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorie_recette` (
  `id_categorie_recette` tinyint(4) DEFAULT NULL,
  `nom` varchar(14) DEFAULT NULL,
  `icon` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorie_recette`
--

LOCK TABLES `categorie_recette` WRITE;
/*!40000 ALTER TABLE `categorie_recette` DISABLE KEYS */;
INSERT INTO `categorie_recette` VALUES (1,'Entrée',''),(2,'Plat principal',''),(3,'Dessert','');
/*!40000 ALTER TABLE `categorie_recette` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredient` (
  `id_ingredient` tinyint(4) DEFAULT NULL,
  `id_categorie` tinyint(4) DEFAULT NULL,
  `nom` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES (1,1,'Carotte'),(2,1,'Pommes de terre'),(3,1,'Tomate'),(4,2,'Poulet'),(5,2,'Boeuf'),(6,2,'Porc'),(7,3,'Sel'),(8,3,'Poivre'),(9,3,'Cumin');
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instruction`
--

DROP TABLE IF EXISTS `instruction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instruction` (
  `id_instruction` tinyint(4) DEFAULT NULL,
  `id_recette` tinyint(4) DEFAULT NULL,
  `instruction` varchar(66) DEFAULT NULL,
  `etape` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instruction`
--

LOCK TABLES `instruction` WRITE;
/*!40000 ALTER TABLE `instruction` DISABLE KEYS */;
INSERT INTO `instruction` VALUES (1,1,'Couper les carottes, pommes de terre et tomates.',1),(2,1,'Faire bouillir les légumes dans une casserole.',2),(3,1,'Mixer et assaisonner.',3),(4,2,'Assaisonner le poulet avec le sel et le poivre.',1),(5,2,'Faire cuire le poulet dans la poêle pendant 1 heure.',2),(6,3,'Préparer le café et tremper les biscuits à la cuillère.',1),(7,3,'Mélanger le mascarpone et les autres ingrédients.',2),(8,3,'Monter le tiramisu en couches et laisser reposer au réfrigérateur.',3);
/*!40000 ALTER TABLE `instruction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recette`
--

DROP TABLE IF EXISTS `recette`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recette` (
  `id_recette` tinyint(4) DEFAULT NULL,
  `id_categorie` tinyint(4) DEFAULT NULL,
  `temps_preparation` tinyint(4) DEFAULT NULL,
  `temps_repos` smallint(6) DEFAULT NULL,
  `temps_cuisson` tinyint(4) DEFAULT NULL,
  `temps_total` smallint(6) DEFAULT NULL,
  `nom_recette` varchar(16) DEFAULT NULL,
  `description_recette` varchar(69) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recette`
--

LOCK TABLES `recette` WRITE;
/*!40000 ALTER TABLE `recette` DISABLE KEYS */;
INSERT INTO `recette` VALUES (1,1,15,0,30,45,'Soupe de légumes','Une soupe savoureuse à base de carottes, pommes de terre, et tomates.'),(2,2,20,0,60,80,'Poulet rôti','Un délicieux poulet rôti assaisonné avec des épices.'),(3,3,20,240,0,260,'Tiramisu','Un dessert italien à base de mascarpone, café, et cacao.'),(4,1,15,0,30,45,'Soupe de légumes','Une soupe savoureuse à base de carottes, pommes de terre, et tomates.'),(5,2,20,0,60,80,'Poulet rôti','Un délicieux poulet rôti assaisonné avec des épices.'),(6,3,20,240,0,260,'Tiramisu','Un dessert italien à base de mascarpone, café, et cacao.');
/*!40000 ALTER TABLE `recette` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recette_ingredient`
--

DROP TABLE IF EXISTS `recette_ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recette_ingredient` (
  `id_recette` tinyint(4) DEFAULT NULL,
  `id_ingredient` tinyint(4) DEFAULT NULL,
  `quantite` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recette_ingredient`
--

LOCK TABLES `recette_ingredient` WRITE;
/*!40000 ALTER TABLE `recette_ingredient` DISABLE KEYS */;
INSERT INTO `recette_ingredient` VALUES (1,1,2),(1,2,3),(1,3,4),(2,4,1),(2,6,2),(2,7,1),(3,1,1),(3,2,3),(3,3,1);
/*!40000 ALTER TABLE `recette_ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recette_ustensile`
--

DROP TABLE IF EXISTS `recette_ustensile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recette_ustensile` (
  `id_recette` tinyint(4) DEFAULT NULL,
  `id_ustensile` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recette_ustensile`
--

LOCK TABLES `recette_ustensile` WRITE;
/*!40000 ALTER TABLE `recette_ustensile` DISABLE KEYS */;
INSERT INTO `recette_ustensile` VALUES (1,1),(1,3),(2,2),(2,3),(3,1),(3,4);
/*!40000 ALTER TABLE `recette_ustensile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(20) DEFAULT NULL,
  `seq` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('ustensile',4),('recette',6),('categorie_recette',3),('categorie_ingredient',3),('ingredient',9),('instruction',8);
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ustensile`
--

DROP TABLE IF EXISTS `ustensile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ustensile` (
  `id_ustensile` tinyint(4) DEFAULT NULL,
  `nom` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ustensile`
--

LOCK TABLES `ustensile` WRITE;
/*!40000 ALTER TABLE `ustensile` DISABLE KEYS */;
INSERT INTO `ustensile` VALUES (1,'Casserole'),(2,'Poêle'),(3,'Couteau'),(4,'Fouet');
/*!40000 ALTER TABLE `ustensile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-30 16:42:44
