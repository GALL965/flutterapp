-- MySQL dump 10.13  Distrib 8.0.42, for Linux (x86_64)
--
-- Host: localhost    Database: randomaccess_gallery
-- ------------------------------------------------------
-- Server version	8.0.42-0ubuntu0.24.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add link',7,'add_link'),(26,'Can change link',7,'change_link'),(27,'Can delete link',7,'delete_link'),(28,'Can view link',7,'view_link'),(29,'Can add vote',8,'add_vote'),(30,'Can change vote',8,'change_vote'),(31,'Can delete vote',8,'delete_vote'),(32,'Can view vote',8,'view_vote'),(33,'Can add education',9,'add_education'),(34,'Can change education',9,'change_education'),(35,'Can delete education',9,'delete_education'),(36,'Can view education',9,'view_education'),(37,'Can add user',10,'add_user'),(38,'Can change user',10,'change_user'),(39,'Can delete user',10,'delete_user'),(40,'Can view user',10,'view_user'),(41,'Can add post',11,'add_post'),(42,'Can change post',11,'change_post'),(43,'Can delete post',11,'delete_post'),(44,'Can view post',11,'view_post'),(45,'Can add comment',12,'add_comment'),(46,'Can change comment',12,'change_comment'),(47,'Can delete comment',12,'delete_comment'),(48,'Can view comment',12,'view_comment'),(49,'Can add reaction',13,'add_reaction'),(50,'Can change reaction',13,'change_reaction'),(51,'Can delete reaction',13,'delete_reaction'),(52,'Can view reaction',13,'view_reaction'),(53,'Can add post',14,'add_post'),(54,'Can change post',14,'change_post'),(55,'Can delete post',14,'delete_post'),(56,'Can view post',14,'view_post'),(57,'Can add reaction',15,'add_reaction'),(58,'Can change reaction',15,'change_reaction'),(59,'Can delete reaction',15,'delete_reaction'),(60,'Can view reaction',15,'view_reaction'),(61,'Can add comment',16,'add_comment'),(62,'Can change comment',16,'change_comment'),(63,'Can delete comment',16,'delete_comment'),(64,'Can view comment',16,'view_comment'),(65,'Can add user',17,'add_user'),(66,'Can change user',17,'change_user'),(67,'Can delete user',17,'delete_user'),(68,'Can view user',17,'view_user');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'education','education'),(12,'hacker_news','comment'),(11,'hacker_news','post'),(13,'hacker_news','reaction'),(10,'hacker_news','user'),(7,'links','link'),(8,'links','vote'),(16,'randomaccess','comment'),(14,'randomaccess','post'),(15,'randomaccess','reaction'),(17,'randomaccess','user'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-06-19 05:22:16.930007'),(2,'auth','0001_initial','2025-06-19 05:22:18.708248'),(3,'admin','0001_initial','2025-06-19 05:22:19.126222'),(4,'admin','0002_logentry_remove_auto_add','2025-06-19 05:22:19.155277'),(5,'admin','0003_logentry_add_action_flag_choices','2025-06-19 05:22:19.183962'),(6,'contenttypes','0002_remove_content_type_name','2025-06-19 05:22:19.473129'),(7,'auth','0002_alter_permission_name_max_length','2025-06-19 05:22:19.663030'),(8,'auth','0003_alter_user_email_max_length','2025-06-19 05:22:19.746989'),(9,'auth','0004_alter_user_username_opts','2025-06-19 05:22:19.770103'),(10,'auth','0005_alter_user_last_login_null','2025-06-19 05:22:19.925023'),(11,'auth','0006_require_contenttypes_0002','2025-06-19 05:22:19.936250'),(12,'auth','0007_alter_validators_add_error_messages','2025-06-19 05:22:19.967156'),(13,'auth','0008_alter_user_username_max_length','2025-06-19 05:22:20.149782'),(14,'auth','0009_alter_user_last_name_max_length','2025-06-19 05:22:20.343082'),(15,'auth','0010_alter_group_name_max_length','2025-06-19 05:22:20.403090'),(16,'auth','0011_update_proxy_permissions','2025-06-19 05:22:20.439270'),(17,'auth','0012_alter_user_first_name_max_length','2025-06-19 05:22:20.617058'),(18,'education','0001_initial','2025-06-19 05:22:20.833394'),(19,'links','0001_initial','2025-06-19 05:22:20.906716'),(20,'links','0002_link_posted_by','2025-06-19 05:22:21.083111'),(21,'links','0003_vote','2025-06-19 05:22:21.472965'),(22,'sessions','0001_initial','2025-06-19 05:22:21.592086'),(23,'randomaccess','0001_initial','2025-06-19 05:27:24.931683');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_education`
--

DROP TABLE IF EXISTS `education_education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education_education` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `degree` longtext NOT NULL,
  `university` longtext NOT NULL,
  `start_date` datetime(6) NOT NULL,
  `end_date` datetime(6) NOT NULL,
  `posted_by_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `education_education_posted_by_id_a08e02eb_fk_auth_user_id` (`posted_by_id`),
  CONSTRAINT `education_education_posted_by_id_a08e02eb_fk_auth_user_id` FOREIGN KEY (`posted_by_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_education`
--

LOCK TABLES `education_education` WRITE;
/*!40000 ALTER TABLE `education_education` DISABLE KEYS */;
/*!40000 ALTER TABLE `education_education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links_link`
--

DROP TABLE IF EXISTS `links_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `links_link` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `posted_by_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `links_link_posted_by_id_bb896a38_fk_auth_user_id` (`posted_by_id`),
  CONSTRAINT `links_link_posted_by_id_bb896a38_fk_auth_user_id` FOREIGN KEY (`posted_by_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links_link`
--

LOCK TABLES `links_link` WRITE;
/*!40000 ALTER TABLE `links_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `links_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links_vote`
--

DROP TABLE IF EXISTS `links_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `links_vote` (
  `id` int NOT NULL AUTO_INCREMENT,
  `link_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `links_vote_link_id_132dadc0_fk_links_link_id` (`link_id`),
  KEY `links_vote_user_id_29946743_fk_auth_user_id` (`user_id`),
  CONSTRAINT `links_vote_link_id_132dadc0_fk_links_link_id` FOREIGN KEY (`link_id`) REFERENCES `links_link` (`id`),
  CONSTRAINT `links_vote_user_id_29946743_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links_vote`
--

LOCK TABLES `links_vote` WRITE;
/*!40000 ALTER TABLE `links_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `links_vote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `randomaccess_comment`
--

DROP TABLE IF EXISTS `randomaccess_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `randomaccess_comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `post_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `randomaccess_comment_post_id_ae226738_fk_randomaccess_post_id` (`post_id`),
  KEY `randomaccess_comment_user_id_d40c2ddb_fk_randomaccess_user_id` (`user_id`),
  CONSTRAINT `randomaccess_comment_post_id_ae226738_fk_randomaccess_post_id` FOREIGN KEY (`post_id`) REFERENCES `randomaccess_post` (`id`),
  CONSTRAINT `randomaccess_comment_user_id_d40c2ddb_fk_randomaccess_user_id` FOREIGN KEY (`user_id`) REFERENCES `randomaccess_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `randomaccess_comment`
--

LOCK TABLES `randomaccess_comment` WRITE;
/*!40000 ALTER TABLE `randomaccess_comment` DISABLE KEYS */;
INSERT INTO `randomaccess_comment` VALUES (1,'JAJA buen meme','2025-06-19 06:31:40.721221',1,1),(2,'nice','2025-06-19 11:36:45.235491',5,2),(3,'el san diarreas','2025-06-19 12:26:11.384114',2,2);
/*!40000 ALTER TABLE `randomaccess_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `randomaccess_post`
--

DROP TABLE IF EXISTS `randomaccess_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `randomaccess_post` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `randomaccess_post_user_id_64fadfcf_fk_randomaccess_user_id` (`user_id`),
  CONSTRAINT `randomaccess_post_user_id_64fadfcf_fk_randomaccess_user_id` FOREIGN KEY (`user_id`) REFERENCES `randomaccess_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `randomaccess_post`
--

LOCK TABLES `randomaccess_post` WRITE;
/*!40000 ALTER TABLE `randomaccess_post` DISABLE KEYS */;
INSERT INTO `randomaccess_post` VALUES (1,'2025-06-19 06:16:32.032338','Meme de prueba','https://i.imgur.com/meme.jpg','Primer meme',1),(2,'2025-06-19 08:01:11.254205','Ahora sí debería verse','https://i.imgur.com/BoN9kdC.png','Meme funcional',1),(5,'2025-06-19 10:56:37.115753','Gallo con tenis','https://res.cloudinary.com/dcf8ooptx/image/upload/v1750330596/q1tcxfoyzmx0z1jydic6.jpg','Yeah',2);
/*!40000 ALTER TABLE `randomaccess_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `randomaccess_reaction`
--

DROP TABLE IF EXISTS `randomaccess_reaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `randomaccess_reaction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `reacted_at` datetime(6) NOT NULL,
  `type` varchar(10) NOT NULL,
  `post_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `randomaccess_reaction_post_id_c0323e58_fk_randomaccess_post_id` (`post_id`),
  KEY `randomaccess_reaction_user_id_f8a29c7c_fk_randomaccess_user_id` (`user_id`),
  CONSTRAINT `randomaccess_reaction_post_id_c0323e58_fk_randomaccess_post_id` FOREIGN KEY (`post_id`) REFERENCES `randomaccess_post` (`id`),
  CONSTRAINT `randomaccess_reaction_user_id_f8a29c7c_fk_randomaccess_user_id` FOREIGN KEY (`user_id`) REFERENCES `randomaccess_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `randomaccess_reaction`
--

LOCK TABLES `randomaccess_reaction` WRITE;
/*!40000 ALTER TABLE `randomaccess_reaction` DISABLE KEYS */;
INSERT INTO `randomaccess_reaction` VALUES (1,'2025-06-19 06:23:58.386191','XDDD',1,1),(16,'2025-06-19 12:15:38.700993','TITE',1,2),(28,'2025-06-19 12:39:59.069362','LOVE',2,2),(29,'2025-06-19 12:40:03.895343','XDDD',5,2);
/*!40000 ALTER TABLE `randomaccess_reaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `randomaccess_user`
--

DROP TABLE IF EXISTS `randomaccess_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `randomaccess_user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `randomaccess_user`
--

LOCK TABLES `randomaccess_user` WRITE;
/*!40000 ALTER TABLE `randomaccess_user` DISABLE KEYS */;
INSERT INTO `randomaccess_user` VALUES (1,'test@example.com','123456','testuser',NULL),(2,'','12345678','Gall',NULL),(3,'','','',NULL);
/*!40000 ALTER TABLE `randomaccess_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-19  7:15:04
