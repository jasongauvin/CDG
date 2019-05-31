-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: blog
-- ------------------------------------------------------
-- Server version	5.7.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_23A0E6612469DE2` (`category_id`),
  CONSTRAINT `FK_23A0E6612469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (41,22,'Nihil aut commodi nobis dolor modi alias accusamus.','<p>At et chistina vel necessitatibus reiciendis repellat aut ullam. Quod laudantium et eligendi sed. Repudiandae ea necessitatibus in et.</p>','https://lorempixel.com/640/480/?41704','2018-12-15 10:46:55'),(42,23,'Ut ut impedit inventore incidunt ratione nobis.','<p>Expedita et aut aspernatur maxime sit. Nihil ab id officia aut magni animi. Odio nisi consectetur magnam repellendus voluptatibus reiciendis voluptates. Iusto voluptatem et debitis. Fuga qui ut sequi dicta hic veniam.</p>','https://lorempixel.com/640/480/?41621','2019-03-15 08:08:48'),(43,23,'Et est incidunt fugit et aspernatur qui.','<p>Porro in hic et qui. Et nobis consequatur officia ut nisi recusandae repudiandae. Nisi itaque perspiciatis reiciendis quaerat.</p>','https://lorempixel.com/640/480/?66457','2019-02-04 07:17:30'),(44,24,'Nihil vel sequi id impedit id ipsa eveniet.','<p>Consectetur iure expedita voluptatem vero officiis eos. Et consequatur qui est voluptatem magnam.</p>','https://lorempixel.com/640/480/?36469','2019-02-21 22:09:48'),(45,24,'Repellendus molestiae itaque iste sed earum.','<p>Quas nulla vitae vel voluptate aperiam eum doloribus. Quisquam cumque eum dolorem.</p>','https://lorempixel.com/640/480/?71215','2018-12-21 03:40:17'),(46,22,'FUCK LE PHP','Symfony c\'est de la merde, on a 1 millions de dépendances, on sait pas à quoi elles servent, on galere à accéder à la même database quand on veut travailler en groupe, les formulaires créés par symfony sont incontrôlables','https://media1.giphy.com/media/NgZvvu1dq9HCE/giphy.gif?cid=790b76115cf12ecf5a4e386f73a7c904&rid=giphy.gif','2019-05-31 13:40:59'),(47,23,'GILETS JAUNE DE MERDE','Les gilets jaune ils cassent les couilles, ça fait 1 ans ça dure leur merde, macron est le meilleur président jamais élu au suffrage universel direct','https://static.lexpress.fr/medias_12076/w_2048%2Ch_1146%2Cc_crop%2Cx_0%2Cy_236/w_640%2Ch_360%2Cc_fill%2Cg_north/v1558793951/acte-28-du-mouvement-des-gilets-jaunes-a-amiens-le-25-mai-2019_6183186.jpg','2019-05-31 13:46:07'),(48,24,'php :)','un content','https://placehold.it/50x50','2019-05-31 14:05:28'),(49,22,'azerty','azertytrezaerza','https://placehold.it/50x50','2019-05-31 14:44:18');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (22,'Assumenda laudantium quidem iure corporis quae.','Libero excepturi voluptates sint id quisquam neque ut. Cupiditate aperiam voluptatum ut molestias. Voluptas modi numquam ullam et et. Omnis voluptas ipsa quas. Modi enim et et alias debitis nihil et.'),(23,'Occaecati aut blanditiis consequuntur voluptates.','Sed itaque quis laboriosam et sit. Velit sunt beatae sit quaerat illum. Vero saepe quia enim. Animi et velit asperiores ut tempore at modi.'),(24,'Dolores consequuntur blanditiis voluptatem aut totam voluptatem temporibus.','Ut ut nisi et sint. Quasi omnis suscipit aliquid. Qui soluta iusto est voluptas in aut. Rerum accusantium sit eaque facere accusantium. Velit repudiandae dolorem est quo.');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `creater_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9474526C7294869C` (`article_id`),
  CONSTRAINT `FK_9474526C7294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (60,41,'Théophile de Benoit','<p>Ipsam debitis et velit maxime pariatur architecto id. Alias neque dignissimos magni. Quae rem sapiente maxime minus eius.</p>','2019-01-06 20:43:21'),(61,41,'Alex Roger','<p>Non eaque exercitationem totam. Quae corporis voluptatem deserunt quia. Laudantium expedita veniam sapiente fugit et. Quidem autem quidem voluptas temporibus expedita blanditiis.</p>','2019-04-10 12:16:09'),(62,42,'Arthur de Peltier','<p>Expedita doloribus minima quo est. Omnis consectetur quia ipsam iusto hic fuga neque. Consequatur corporis quos quos quibusdam.</p>','2019-04-05 23:26:30'),(63,42,'Andrée Albert-Girard','<p>Porro in hic et qui. Et nobis consequatur officia ut nisi recusandae repudiandae. Nisi itaque perspiciatis reiciendis quaerat.</p>','2019-04-18 00:18:15'),(64,43,'Emmanuel-Hugues Gros','<p>Nostrum sunt illum enim ut. Itaque omnis expedita maiores doloribus quas placeat. Recusandae ipsa qui cupiditate asperiores sint ut. Iste velit dignissimos quo nam aspernatur.</p>','2019-02-24 19:14:12'),(65,44,'Martin de Chevalier','<p>Quas nulla vitae vel voluptate aperiam eum doloribus. Quisquam cumque eum dolorem.</p>','2019-03-02 16:01:10'),(66,45,'Emmanuel Letellier','<p>Sunt ea quae et est fugiat voluptas tenetur. Dolor quo sequi ullam accusantium dolores. Et est fugiat nihil nam quia. Fuga placeat esse qui porro libero numquam perspiciatis.</p>','2019-02-06 22:07:07');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration_versions`
--

LOCK TABLES `migration_versions` WRITE;
/*!40000 ALTER TABLE `migration_versions` DISABLE KEYS */;
INSERT INTO `migration_versions` VALUES ('20190531115456','2019-05-31 11:55:10');
/*!40000 ALTER TABLE `migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (21,'user0','user0@mail.org','$2y$13$KxC5aBUwdUbvCf3IiT0uGOp4X/6rSId92s7Usd3zp.5BNVC0U5cKq'),(22,'user1','user1@mail.org','$2y$13$CFePqnoHDBA7qZNTJSZjduec2RXF7MZVVyhH6dSbXsHTa5EyQPKOq'),(23,'user2','user2@mail.org','$2y$13$P49AyY6R6hODrAWDuaugAu/tm4stmu9xwSOPwLN74cNcoi9G34jdC'),(24,'user3','user3@mail.org','$2y$13$.34kNzI2m/68b9MG7hU8w.iJl8010DHQoFNRu186TYIRfWdXcdA3S'),(25,'user4','user4@mail.org','$2y$13$pOZB2wJqNxJZeirwLQ36UeY7DnEJD0SagM5LpVjwU.RuiU0KzWN66'),(26,'julian','jjulian.romana@gmail.com','$2y$13$YdZKG7JLmp9jeJSaLPbtHOlbeP9ofifqy9.MDWuNJ4jgyDuwxWj.C'),(27,'utilisateur','utilisateur@gmail.com','$2y$13$Sh82jVIoE4bcZIop0xz2NO149lkxwqJL2qqIK1YMxoCnU411F2HWy');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-31 16:52:27
