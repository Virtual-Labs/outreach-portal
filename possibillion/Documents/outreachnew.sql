-- MySQL dump 10.13  Distrib 5.6.23, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: outreachnew
-- ------------------------------------------------------
-- Server version	5.6.25

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
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` VALUES ('834c98fff35249217f072ea2fbc91f66','::1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36',1441177804,'a:2:{s:12:\"user_details\";a:16:{s:2:\"id\";s:2:\"63\";s:4:\"name\";s:9:\"karunakar\";s:5:\"email\";s:36:\"karunakar.reddy@possibilliontech.com\";s:13:\"mobile_number\";s:10:\"7416542049\";s:8:\"password\";s:32:\"e10adc3949ba59abbe56e057f20f883e\";s:9:\"user_type\";s:1:\"1\";s:6:\"center\";N;s:6:\"status\";s:1:\"1\";s:11:\"outreach_id\";s:1:\"0\";s:8:\"workshop\";N;s:12:\"participants\";s:0:\"\";s:11:\"experiments\";N;s:13:\"profile_image\";s:10:\"Desert.jpg\";s:14:\"createworkshop\";N;s:10:\"created_on\";s:19:\"2015-07-19 15:52:38\";s:13:\"last_loggedin\";s:19:\"2015-09-02 07:09:28\";}s:13:\"flash:new:msg\";s:23:\"Passwords do not match!\";}'),('8c6f1d379558d2be4c04add0ee0a48c8','::1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36',1441183855,''),('8ce6a4645f2d46fbb59e414a713d92a3','::1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36',1441183856,''),('a2a7e7f1203075b21975e00b85ca1ee6','::1','Mozilla/5.0 (Windows NT 6.1; rv:40.0) Gecko/20100101 Firefox/40.0',1441193504,'a:2:{s:9:\"user_data\";s:0:\"\";s:12:\"adminDetails\";a:5:{s:13:\"permission_id\";s:1:\"1\";s:8:\"admin_id\";s:1:\"1\";s:10:\"first_name\";s:8:\"outreach\";s:9:\"last_name\";s:5:\"Admin\";s:5:\"image\";s:18:\"14376608481103.jpg\";}}'),('ca1e75489dee06f348dd6ce3d8031905','::1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36',1441204714,''),('ec7f322e5b69fb5276e82f604051058c','::1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36',1441183854,'a:2:{s:9:\"user_data\";s:0:\"\";s:12:\"user_details\";a:16:{s:2:\"id\";s:2:\"63\";s:4:\"name\";s:9:\"karunakar\";s:5:\"email\";s:36:\"karunakar.reddy@possibilliontech.com\";s:13:\"mobile_number\";s:10:\"7416542049\";s:8:\"password\";s:32:\"e10adc3949ba59abbe56e057f20f883e\";s:9:\"user_type\";s:1:\"1\";s:6:\"center\";N;s:6:\"status\";s:1:\"1\";s:11:\"outreach_id\";s:1:\"0\";s:8:\"workshop\";N;s:12:\"participants\";s:0:\"\";s:11:\"experiments\";N;s:13:\"profile_image\";s:10:\"Desert.jpg\";s:14:\"createworkshop\";N;s:10:\"created_on\";s:19:\"2015-07-19 15:52:38\";s:13:\"last_loggedin\";s:19:\"2015-09-02 08:05:26\";}}');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nodalcoordinatortraining`
--

DROP TABLE IF EXISTS `nodalcoordinatortraining`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nodalcoordinatortraining` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `participants_attended` int(12) NOT NULL,
  `experiments_conducted` int(12) NOT NULL,
  `attendance_sheet` text NOT NULL,
  `training_photos` text NOT NULL,
  `positive` text NOT NULL,
  `negative` text NOT NULL,
  `outreachid` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `outreachid_idx` (`outreachid`),
  CONSTRAINT `outreachid` FOREIGN KEY (`outreachid`) REFERENCES `va_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nodalcoordinatortraining`
--

LOCK TABLES `nodalcoordinatortraining` WRITE;
/*!40000 ALTER TABLE `nodalcoordinatortraining` DISABLE KEYS */;
/*!40000 ALTER TABLE `nodalcoordinatortraining` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presentation_reporting_documents`
--

DROP TABLE IF EXISTS `presentation_reporting_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presentation_reporting_documents` (
  `document_id` int(11) NOT NULL AUTO_INCREMENT,
  `document_name` varchar(255) NOT NULL,
  `document_path` longtext,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '1',
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`document_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presentation_reporting_documents`
--

LOCK TABLES `presentation_reporting_documents` WRITE;
/*!40000 ALTER TABLE `presentation_reporting_documents` DISABLE KEYS */;
INSERT INTO `presentation_reporting_documents` VALUES (1,'Virtual Labs Introduction presentation',NULL,'2015-08-20 05:27:31',1,'0000-00-00 00:00:00'),(2,'College Report format','1437747400-13.docx','2015-07-29 09:01:52',1,'0000-00-00 00:00:00'),(3,'Virtual Labs Introduction presentation','1437748246-60.docx','2015-07-29 09:02:07',3,'0000-00-00 00:00:00'),(4,'sgdjsdjsgewiuryuwieyriuweyrsdhfgsdhfwurtuywqetrsfdhsgfhgdfqwtyyutweqrxzbvbxzvcvuwtqtutwetyytrytysdhsghsgqmnbvxdnvjhwegrjwhgrqeryetyeqrtertdhghsghfgtyqytrtzbvnbcvbnvetwutrwtmnbvcxzasdfghjklpoiuytrewqazqazwsxedcrfvtgbyhnujmik,ol.p;/[\']','1440153723-88.docx','2015-08-21 14:43:58',3,'0000-00-00 00:00:00'),(5,'jsgdhhfjsfgshgdjfgsdjgfsdhgfdshgfjhgdhfjhdsghsdgshgjdhgjhsdgfhgjdgsjdghfjdgfjhsgjdfgjsdgfjgjddhghsdgfgjhg','1440154809-74.docx','2015-08-21 15:51:39',3,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `presentation_reporting_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(225) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `va_admin_users`
--

DROP TABLE IF EXISTS `va_admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `va_admin_users` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_logout` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edited_by` int(11) NOT NULL,
  `edited_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `image` text NOT NULL,
  `first_name` varchar(225) NOT NULL,
  `last_name` varchar(225) NOT NULL,
  PRIMARY KEY (`admin_id`),
  KEY `permission_id` (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `va_admin_users`
--

LOCK TABLES `va_admin_users` WRITE;
/*!40000 ALTER TABLE `va_admin_users` DISABLE KEYS */;
INSERT INTO `va_admin_users` VALUES (1,'admin@outreach.com','e10adc3949ba59abbe56e057f20f883e',1,'2015-09-02 14:04:43','2015-01-29 18:30:00','2015-01-28 22:43:16',1,'2015-04-29 02:04:23',1,'14412025251844.jpg','outreachaasdf','Adminaasdf');
/*!40000 ALTER TABLE `va_admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `va_cms`
--

DROP TABLE IF EXISTS `va_cms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `va_cms` (
  `cms_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_tags` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Status 1-Active 2-Inactive 3-Delete',
  `added_on` timestamp NULL DEFAULT NULL,
  `edited_on` timestamp NULL DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `edited_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`cms_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `va_cms`
--

LOCK TABLES `va_cms` WRITE;
/*!40000 ALTER TABLE `va_cms` DISABLE KEYS */;
INSERT INTO `va_cms` VALUES (1,'About outreach','<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\n\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>','About','seo',1,'2015-06-22 12:24:38','2015-08-21 16:35:25',NULL,NULL);
/*!40000 ALTER TABLE `va_cms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `va_contacts`
--

DROP TABLE IF EXISTS `va_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `va_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `va_contacts`
--

LOCK TABLES `va_contacts` WRITE;
/*!40000 ALTER TABLE `va_contacts` DISABLE KEYS */;
INSERT INTO `va_contacts` VALUES (1,'tirupati','thirupathirao57@gmail.com','This is testing message.',3,'2015-06-23 14:15:54'),(2,'karunakar','karunakar.reddy@possibilliontech.com','asdf',0,'2015-07-18 12:44:00'),(3,'demo','karana456@gmail.com','demo',3,'2015-07-20 13:25:47'),(4,'ddfddf','fdfdf@gmail.com','fvfddfdfvdvd',3,'2015-07-23 21:13:27'),(5,'karunakar reddy','karunkar.reddy@possibilliontech.com','DEMo',0,'2015-08-19 07:54:23'),(6,'karunakar reddy','karana456@gmail.com','DEMO',3,'2015-08-21 16:37:57');
/*!40000 ALTER TABLE `va_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `va_logs`
--

DROP TABLE IF EXISTS `va_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `va_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` text NOT NULL,
  `type` varchar(100) NOT NULL,
  `msg_type` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=570 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `va_logs`
--

LOCK TABLES `va_logs` WRITE;
/*!40000 ALTER TABLE `va_logs` DISABLE KEYS */;
INSERT INTO `va_logs` VALUES (1,' has been added. ','Staff','success','2015-09-02 14:13:30');
/*!40000 ALTER TABLE `va_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `va_user_details`
--

DROP TABLE IF EXISTS `va_user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `va_user_details` (
  `userdetails_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `country_code` varchar(100) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`userdetails_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `user_id_2` (`user_id`),
  KEY `user_id_3` (`user_id`),
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `va_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `va_user_details`
--

LOCK TABLES `va_user_details` WRITE;
/*!40000 ALTER TABLE `va_user_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `va_user_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `va_users`
--

DROP TABLE IF EXISTS `va_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `va_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` int(11) DEFAULT NULL,
  `center` varchar(222) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `outreach_id` int(11) DEFAULT NULL,
  `workshop` varchar(333) DEFAULT NULL,
  `participants` varchar(22) NOT NULL,
  `experiments` varchar(222) DEFAULT NULL,
  `profile_image` varchar(500) DEFAULT NULL,
  `createworkshop` int(11) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_loggedin` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_type` (`user_type`),
  CONSTRAINT `user_type` FOREIGN KEY (`user_type`) REFERENCES `role` (`role_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `va_users`
--

LOCK TABLES `va_users` WRITE;
/*!40000 ALTER TABLE `va_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `va_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workshop`
--

DROP TABLE IF EXISTS `workshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workshop` (
  `workshop_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `participate_institute` mediumtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `number_of_participants` int(11) NOT NULL,
  `no_of_sessions` varchar(250) NOT NULL,
  `durationofsessions` varchar(250) NOT NULL,
  `subject_of_session` varchar(250) NOT NULL,
  `labs_plan` varchar(255) NOT NULL,
  `other_details` longtext NOT NULL,
  `workshop_status` tinyint(4) NOT NULL DEFAULT '1',
  `uid` int(11) NOT NULL,
  `outreach_id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `latitude` varchar(222) DEFAULT NULL,
  `longitude` varchar(222) DEFAULT NULL,
  `address` text NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `faculty` varchar(255) DEFAULT NULL,
  `reason` text,
  PRIMARY KEY (`workshop_id`),
  KEY `uid_idx` (`uid`),
  CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `va_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workshop`
--

LOCK TABLES `workshop` WRITE;
/*!40000 ALTER TABLE `workshop` DISABLE KEYS */;
/*!40000 ALTER TABLE `workshop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workshop_documents`
--

DROP TABLE IF EXISTS `workshop_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workshop_documents` (
  `document_id` int(11) NOT NULL AUTO_INCREMENT,
  `document_name` varchar(255) NOT NULL,
  `document_path` longtext,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '1',
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`document_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workshop_documents`
--

LOCK TABLES `workshop_documents` WRITE;
/*!40000 ALTER TABLE `workshop_documents` DISABLE KEYS */;
INSERT INTO `workshop_documents` VALUES (1,'Eligibility-SystemsConfiguration-Infrastructure ','1440048369-12.doc','2015-08-20 05:26:09',1,'0000-00-00 00:00:00'),(2,'Pre-requisites-for-workshop','1440048323-17.pdf','2015-08-20 05:25:23',1,'0000-00-00 00:00:00'),(3,'Sample-workshop-schedule','1440048263-45.doc','2015-08-24 10:03:54',3,'0000-00-00 00:00:00'),(4,'SJDFKDFHJDSFHREUIUTYUERYTHFGJHJJuygshdghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvtttttttttt','1440141588-83.pdf','2015-08-21 11:21:34',3,'0000-00-00 00:00:00'),(5,'testinghfshydfusxhgfduytfd','1440143149-31.docx','2015-08-21 13:14:48',3,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `workshop_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workshop_metirial_documents`
--

DROP TABLE IF EXISTS `workshop_metirial_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workshop_metirial_documents` (
  `document_id` int(11) NOT NULL AUTO_INCREMENT,
  `document_name` varchar(255) NOT NULL,
  `document_path` longtext,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '1',
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`document_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workshop_metirial_documents`
--

LOCK TABLES `workshop_metirial_documents` WRITE;
/*!40000 ALTER TABLE `workshop_metirial_documents` DISABLE KEYS */;
INSERT INTO `workshop_metirial_documents` VALUES (1,'doc123','1437746606-66.docx','2015-07-24 21:16:49',3,'0000-00-00 00:00:00'),(2,'Attendance sheet','1440045279-57.pdf','2015-08-20 04:34:39',1,'0000-00-00 00:00:00'),(3,'Feedback form','1440045014-23.pdf','2015-08-20 04:30:14',1,'0000-00-00 00:00:00'),(4,'Flyers','1438160417-43.docx','2015-08-20 08:27:45',3,'0000-00-00 00:00:00'),(5,'Banners','1438160432-63.docx','2015-08-20 08:26:34',3,'0000-00-00 00:00:00'),(6,'Virtual Labs Handout','1440044856-79.pdf','2015-08-20 04:27:37',1,'0000-00-00 00:00:00'),(7,'College Report','1440045672-41.docx','2015-08-20 04:41:12',1,'0000-00-00 00:00:00'),(8,'Eligibility-SystemsConfiguration-Infrastructure ','1440046234-32.doc','2015-08-20 09:26:46',3,'0000-00-00 00:00:00'),(9,'Pre-requisites-for-workshop','1440046285-75.pdf','2015-08-20 09:26:34',3,'0000-00-00 00:00:00'),(10,'Sample-workshop-schedule','1440046507-91.doc','2015-08-20 09:26:29',3,'0000-00-00 00:00:00'),(11,'jshghgfsdhgfhdgfdhhfyrteyhsxgjcfgyertfdhgfuweyaqdwegueredhgdhgvdhsghdghgfdhfgdyrfehdgfjhmbnxbvcvxhjgfjhdfgdhgfdhshghsghjgksdhsgfdshhsdfghsdhgdfhsgsdfdsjhdhdghjghjdsgfghdfsggdhjdsggfhghghghsdsfsdfsdfdsghjjhghjgjghjdsipuouoiuerersdghftgyerfhsgfyurthgsdhrtfe','1440148788-48.docx','2015-08-21 13:23:38',3,'0000-00-00 00:00:00'),(12,'&lt;html&gt;sdghfd&lt;/html&gt;','1440149212-31.docx','2015-08-21 14:31:27',3,'0000-00-00 00:00:00'),(13,'Sample-workshop-schedule','1440396265-52.doc','2015-08-24 06:04:25',1,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `workshop_metirial_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workshop_report`
--

DROP TABLE IF EXISTS `workshop_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workshop_report` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `workshop_id` int(11) NOT NULL,
  `uid` int(100) NOT NULL,
  `participate_attend` int(11) DEFAULT NULL,
  `participate_experiment` int(11) DEFAULT NULL,
  `upload_attend_sheet` longtext,
  `upload_experiment_sheet` longtext,
  `college_report` longtext,
  `workshop_photos` longtext,
  `report_status` tinyint(4) NOT NULL DEFAULT '0',
  `letter_head_status` tinyint(4) NOT NULL DEFAULT '0',
  `sealed_stamp_status` tinyint(4) NOT NULL DEFAULT '0',
  `pricipal_sign_status` tinyint(4) NOT NULL DEFAULT '0',
  `attend_status` tinyint(4) NOT NULL DEFAULT '0',
  `college_status` tinyint(4) NOT NULL DEFAULT '0',
  `workshop_status` tinyint(4) NOT NULL DEFAULT '0',
  `comments_positive` text,
  `comments_negative` text,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`report_id`),
  KEY `workshop_id_idx` (`workshop_id`),
  CONSTRAINT `workshop_id` FOREIGN KEY (`workshop_id`) REFERENCES `workshop` (`workshop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workshop_report`
--

LOCK TABLES `workshop_report` WRITE;
/*!40000 ALTER TABLE `workshop_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `workshop_report` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-05 11:58:51
