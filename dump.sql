-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: cloudsummit2019
-- ------------------------------------------------------
-- Server version	5.7.22

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

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `technos` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES ('Auchan - Birdy Indicators','Le groupe Auchan nous a fait confiance pour faire passer ses 300 000 utilisateurs sur G Suite. Une partie de notre accompagnement consistait à récupérer les données d\'utilisation de la plateforme via les API Google pour mesurer l\'adoption. Le tout avec des dashboards facilements adaptables sans avoir à coder.','App Engine, Big Query, Google Datastudio','assets/img/auchan-birdy-indicators.png','poll','https://gcloud.devoteam.com/nos-cas-clients/fm-logistic-se-dirige-vers-la-mobilite'),('FM Logistic - Cockpit','Afin d\'améliorer la gestion des stocks dans ses entrepôts, FM Logistic nous a confié la réalisation d\'une Progressive Web App (PWA) pour simuler les opérations courantes de logistique, fonctionnant sur mobile et en hors-ligne.','App Engine, Cloud SQL, Angular','assets/img/fm-logistic-cockpit.png','local_shipping','https://gcloud.devoteam.com/nos-cas-clients/fm-logistic-se-dirige-vers-la-mobilite'),('Lafarge Holcim - Sites Mapping','Avec Google Maps, nous avons développé l\'unique référentiel des sites Lafarge Holcim à travers le monde. Cette application, déployée sur App Engine et utilisant Cloud SQL pour le stockage de la donnée permet à l\'équipe Sûreté d\'échanger des informations importantes sur la sécurité de ses sites et les personnes qui y travaillent.','App Engine, Cloud SQL, AngularJS','assets/img/lafarge-holcim-sites-mapping.gif','map',NULL);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-17 23:19:34
