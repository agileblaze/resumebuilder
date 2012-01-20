-- MySQL dump 10.11
--
-- Host: localhost    Database: resumebuilder_development
-- ------------------------------------------------------
-- Server version	5.0.77

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
-- Table structure for table `certifications`
--

DROP TABLE IF EXISTS `certifications`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `certifications` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `title` varchar(255) collate utf8_unicode_ci default NULL,
  `priority` int(11) default NULL,
  `certification_no` varchar(255) collate utf8_unicode_ci default NULL,
  `description` text collate utf8_unicode_ci,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `certifications`
--

LOCK TABLES `certifications` WRITE;
/*!40000 ALTER TABLE `certifications` DISABLE KEYS */;
INSERT INTO `certifications` VALUES (5,32,'Microsoft Certified IT Professional MCITP 2008 SERVER',NULL,'MCP ID-5962800    ','','2010-09-30 12:22:37','2010-09-30 12:22:37'),(6,32,'Microsoft Certified Systems Engineer MCSE 2003 SERVER',NULL,'MCP ID-5962800  ','','2010-09-30 12:22:51','2010-09-30 12:22:51'),(7,32,'Microsoft Certified Systems Administrator MCSA 2003 SERVER',NULL,'MCP ID-5962800            ','','2010-09-30 12:23:02','2010-09-30 12:23:02'),(8,32,'Microsoft Certified Technology Specialist MCTS Vista',NULL,'MCP ID-5962800','','2010-09-30 12:23:19','2010-09-30 12:23:19'),(9,32,'Microsoft Certification Training From Accel IT Academy',NULL,'','','2010-10-01 04:19:52','2010-10-01 04:19:52'),(10,32,'Redhat Enterprise Linux Training From Redhat India',NULL,'','','2010-10-01 04:20:23','2010-10-01 04:20:23'),(11,32,'A+ Level Hardware Training From Accel IT Academy',NULL,'','','2010-10-01 04:20:34','2010-10-01 04:20:34'),(12,32,'N+ Level Networking Training From Accel IT Academy',NULL,'','','2010-10-01 04:20:46','2010-10-01 04:20:46'),(13,35,'RHCE',1,'805008063434781','Redhat Certified Engineer','2010-10-04 06:59:21','2010-10-04 06:59:21'),(14,35,'CEH',2,'','Certified Ethical Hacker','2010-10-04 07:03:19','2010-10-04 07:03:19'),(15,35,'RH423',3,'805008063434781 ','Redhat Certification for LDAP','2010-10-04 07:04:02','2010-10-04 07:04:02'),(16,35,'CCNA training ',4,'','Got training on networking','2010-10-04 12:02:50','2010-10-04 12:02:50'),(17,37,'RHCE',1,'805007014229443','Redhat linux Essentials, networking and server administration','2010-10-04 13:29:11','2010-10-04 13:29:11'),(18,43,'ICCSA',NULL,'','ICalibrator Certified System Administartor\r\n\r\nOS:- Centos,Redhat,Sun Solaris,Ubuntu, Open suse','2010-10-08 05:54:34','2010-10-08 05:54:34'),(19,41,'RHCE',NULL,'805009779038362','','2010-10-14 12:40:15','2010-10-14 12:40:15'),(20,36,'RHCE',1,'','Undergone trainng in Redhat based Operating systems from Sunmars Technologies, Hyderabad','2010-10-16 07:31:13','2010-10-16 07:31:13'),(21,36,'Sun Solaris 10',2,'','Undergone trainng in Unix based Operating systems from Sunmars Technologies, Hyderabad','2010-10-16 07:32:05','2010-10-16 07:32:05'),(22,36,'MCSE',3,'','Undergone trainng in Windows 2003 and 2008 servers from Sunmars Technologies, Hyderabad','2010-10-16 07:33:02','2010-10-16 07:33:02');
/*!40000 ALTER TABLE `certifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_competencies`
--

DROP TABLE IF EXISTS `core_competencies`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `core_competencies` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `priority` int(11) default NULL,
  `description` text collate utf8_unicode_ci,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `core_competencies`
--

LOCK TABLES `core_competencies` WRITE;
/*!40000 ALTER TABLE `core_competencies` DISABLE KEYS */;
INSERT INTO `core_competencies` VALUES (5,32,NULL,'Installing and Configuring Routers.','2010-09-30 12:22:01','2010-09-30 12:22:01'),(6,32,NULL,'Implementing and Configuring Hardware Firewalls.','2010-09-30 12:22:08','2010-09-30 12:22:08'),(7,32,NULL,'Implementing Security policies in Firewalls.','2010-09-30 12:22:14','2010-09-30 12:22:14'),(8,32,NULL,'Implementing Linux Based Software Firewall System, Configuring Port forwarding, Configuring ACL, Configuring Web Proxy using Squid.','2010-09-30 12:22:22','2010-09-30 12:22:22'),(9,35,1,'Designing and troubleshooting Network Topology.\r\n','2010-10-04 12:17:36','2010-10-04 12:17:36'),(10,35,2,'Finding logical problems surrounding different network layers.\r\n','2010-10-04 12:17:47','2010-10-04 12:17:47'),(11,35,3,'Tweaking iptables for security as well as\r\nfor advanced routing \r\n','2010-10-04 12:17:59','2010-10-04 12:17:59'),(12,35,4,'Trouble shooting server issues and compilation errors.','2010-10-04 12:18:05','2010-10-04 12:18:05'),(17,37,3,'Cloud computing : AWS, Rackspace, 3tera','2010-10-04 13:39:12','2010-10-04 13:39:12'),(23,37,3,'Email Delivery: Ironport, Message System, Postfix','2010-10-04 13:51:15','2010-10-04 13:51:15'),(24,37,4,'Scripting: Shell scripting, Perl, PHP','2010-10-04 13:53:20','2010-10-04 13:53:20'),(25,40,1,'Email Delivery Specialist','2010-10-06 12:18:07','2010-10-06 12:18:07'),(26,40,2,'Programming.','2010-10-06 12:18:52','2010-10-06 12:18:52'),(27,40,3,'Cloud Based application development under Applogic.','2010-10-06 12:20:24','2010-10-06 12:20:24'),(28,40,3,'Bulk Mail Sending using postfix.','2010-10-06 12:47:29','2010-10-06 12:47:29'),(29,37,1,'Linux : LAMP, Qmail, Postfix, MySQL, Postgres,RADIUS,IPtables, RAID, LVM  ','2010-10-13 15:42:04','2010-10-13 15:42:04'),(31,41,1,'cpanel server administration','2010-10-14 13:01:53','2010-10-14 13:01:53'),(32,41,2,'virtualization technologies like xen, kvm','2010-10-14 13:02:16','2010-10-14 13:02:16'),(33,41,3,'asterisk voip technology','2010-10-14 13:02:35','2010-10-14 13:02:35'),(34,41,4,'hexagrid cloud management','2010-10-14 13:02:56','2010-10-14 13:02:56');
/*!40000 ALTER TABLE `core_competencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `databases`
--

DROP TABLE IF EXISTS `databases`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `databases` (
  `id` int(11) NOT NULL auto_increment,
  `database` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `databases`
--

LOCK TABLES `databases` WRITE;
/*!40000 ALTER TABLE `databases` DISABLE KEYS */;
INSERT INTO `databases` VALUES (6,'MySQL','2010-09-20 00:50:02','2010-09-28 05:09:30'),(7,'ORACLE','2010-09-20 00:50:09','2010-09-20 00:50:09'),(8,'MSSQL','2010-09-20 00:50:16','2010-09-20 00:50:16'),(9,'PostgreSQL','2010-09-23 01:16:29','2010-09-23 01:16:29'),(10,' SQL SERVER 2005','2010-09-30 12:16:02','2010-09-30 12:16:02'),(11,'ORACLE 9i','2010-09-30 12:16:15','2010-09-30 12:16:15');
/*!40000 ALTER TABLE `databases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `degree_names`
--

DROP TABLE IF EXISTS `degree_names`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `degree_names` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `degree_names`
--

LOCK TABLES `degree_names` WRITE;
/*!40000 ALTER TABLE `degree_names` DISABLE KEYS */;
INSERT INTO `degree_names` VALUES (1,NULL,'select',NULL,NULL),(2,NULL,'B-Tech','2010-09-30 09:52:52','2010-09-30 09:52:52'),(3,NULL,'M-Tech','2010-10-01 09:05:58','2010-10-01 09:05:58'),(4,NULL,'MCA','2010-10-02 07:04:03','2010-10-02 07:04:03');
/*!40000 ALTER TABLE `degree_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `designations`
--

DROP TABLE IF EXISTS `designations`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `designations` (
  `id` int(11) NOT NULL auto_increment,
  `designation` text collate utf8_unicode_ci,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `designations`
--

LOCK TABLES `designations` WRITE;
/*!40000 ALTER TABLE `designations` DISABLE KEYS */;
INSERT INTO `designations` VALUES (9,'Sr Software Engineer','2010-09-13 03:06:13','2010-09-13 03:06:13'),(11,'ServerSide','2010-09-20 00:50:56','2010-09-20 00:50:56'),(12,'Jr Software Engineer','2010-09-20 00:51:17','2010-09-22 04:34:25'),(13,'HR Manager','2010-09-22 04:34:34','2010-09-22 04:34:34'),(14,'Business Development Manager','2010-09-23 01:18:44','2010-09-23 01:18:44'),(15,'Business Development Executive','2010-09-23 01:19:03','2010-09-23 01:19:03'),(16,'Server Support Engineer','2010-09-23 01:19:27','2010-09-23 01:19:27'),(17,'Team Leader','2010-09-23 01:19:40','2010-09-23 01:19:40'),(18,'Project Manager','2010-09-23 01:19:47','2010-09-23 01:19:47'),(19,'Business Analyst','2010-09-23 01:19:57','2010-09-23 01:19:57'),(20,'Sr Web Designer','2010-09-23 01:20:17','2010-09-23 01:20:17'),(21,'Jr Web Designer','2010-09-23 01:20:25','2010-09-23 01:20:25'),(22,'Software Engineer ','2010-09-23 07:59:30','2010-09-23 07:59:30'),(23,'Senior Server Administrator','2010-09-30 12:14:47','2010-09-30 12:14:47');
/*!40000 ALTER TABLE `designations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disciplines`
--

DROP TABLE IF EXISTS `disciplines`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `disciplines` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `disciplines`
--

LOCK TABLES `disciplines` WRITE;
/*!40000 ALTER TABLE `disciplines` DISABLE KEYS */;
INSERT INTO `disciplines` VALUES (1,'select',NULL,NULL),(2,'Computer Science','2010-09-28 08:55:26','2010-09-28 08:55:26'),(3,'Electronic And Communication','2010-09-28 08:55:50','2010-09-28 08:55:50'),(4,'Meachanical','2010-09-28 08:55:59','2010-09-28 08:55:59'),(5,'Computer Application','2010-10-02 07:08:54','2010-10-02 07:08:54');
/*!40000 ALTER TABLE `disciplines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educationals`
--

DROP TABLE IF EXISTS `educationals`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `educationals` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `qualification` varchar(255) collate utf8_unicode_ci default NULL,
  `from` date default NULL,
  `to` date default NULL,
  `qualification_name_id` int(11) default NULL,
  `degree_name_id` int(11) default NULL,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `graduation_id` int(11) default NULL,
  `pg_id` int(11) default NULL,
  `discipline_id` int(11) default NULL,
  `university_id` int(11) default NULL,
  `board` varchar(255) collate utf8_unicode_ci default NULL,
  `institute` varchar(255) collate utf8_unicode_ci default NULL,
  `percentage` int(11) default NULL,
  `schoolarship` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `educationals`
--

LOCK TABLES `educationals` WRITE;
/*!40000 ALTER TABLE `educationals` DISABLE KEYS */;
INSERT INTO `educationals` VALUES (8,32,NULL,'2010-10-01','2010-10-01',4,2,NULL,NULL,NULL,2,4,NULL,'aaaa',22,'','2010-10-01 06:10:36','2010-10-01 08:46:33'),(11,32,NULL,'2010-10-01','2010-10-01',5,3,NULL,NULL,NULL,2,3,NULL,'COET',67,'','2010-10-01 09:05:01','2010-10-01 09:06:45'),(13,33,NULL,'2000-10-01','1996-10-01',4,2,NULL,NULL,NULL,2,4,NULL,'cusat',80,'','2010-10-01 10:52:10','2010-10-01 10:52:10'),(14,34,NULL,'2008-10-02','2005-10-02',5,4,NULL,NULL,NULL,5,7,NULL,'Christ College Banglore ',71,'','2010-10-02 10:30:09','2010-10-02 10:30:31'),(15,35,NULL,'2004-10-04','2008-10-04',4,2,NULL,NULL,NULL,3,3,NULL,'MG University College of Eng Thodupuzha',63,'','2010-10-04 06:54:14','2010-10-04 06:54:14'),(16,36,NULL,'2005-10-04','2009-10-04',4,2,NULL,NULL,NULL,2,6,NULL,'GOVT ENGG COLLEGE, Sreekrishnapuram, Palakkad',62,'','2010-10-04 07:17:02','2010-10-04 07:17:02'),(17,37,NULL,'2003-10-04','2006-10-04',5,4,NULL,NULL,NULL,5,3,NULL,'Marian College Kuttikkanam',69,'','2010-10-04 12:39:36','2010-10-04 12:39:36'),(18,40,NULL,'2005-10-05','2010-10-05',4,2,NULL,NULL,NULL,2,6,NULL,'NSS COLLEGE OF ENGINEERING ',71,'MEANA','2010-10-05 10:28:06','2010-10-05 10:28:06'),(19,43,NULL,'2005-10-08','2008-10-08',4,1,NULL,NULL,NULL,2,6,NULL,'R.S.M.S.N.D.P yogam arts and science college',80,'','2010-10-08 05:53:15','2010-10-08 05:53:15'),(20,41,NULL,'2003-10-14','2007-10-14',4,2,NULL,NULL,NULL,2,4,NULL,'college of eng chengannur',63,'','2010-10-14 12:36:26','2010-10-14 12:36:26');
/*!40000 ALTER TABLE `educationals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `frameworks`
--

DROP TABLE IF EXISTS `frameworks`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `frameworks` (
  `id` int(11) NOT NULL auto_increment,
  `framework` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `frameworks`
--

LOCK TABLES `frameworks` WRITE;
/*!40000 ALTER TABLE `frameworks` DISABLE KEYS */;
INSERT INTO `frameworks` VALUES (14,'Zend','2010-09-20 00:48:17','2010-09-20 00:48:17'),(15,'Cake PHP','2010-09-20 00:48:25','2010-09-20 00:48:25'),(16,'Ruby On Rails','2010-09-20 00:48:35','2010-09-20 00:48:35');
/*!40000 ALTER TABLE `frameworks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graduations`
--

DROP TABLE IF EXISTS `graduations`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `graduations` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `graduations`
--

LOCK TABLES `graduations` WRITE;
/*!40000 ALTER TABLE `graduations` DISABLE KEYS */;
INSERT INTO `graduations` VALUES (1,'SSLC','2010-09-30 06:56:33','2010-09-30 06:56:33');
/*!40000 ALTER TABLE `graduations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languges`
--

DROP TABLE IF EXISTS `languges`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `languges` (
  `id` int(11) NOT NULL auto_increment,
  `languge` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `languges`
--

LOCK TABLES `languges` WRITE;
/*!40000 ALTER TABLE `languges` DISABLE KEYS */;
INSERT INTO `languges` VALUES (23,'C','2010-09-20 00:47:04','2010-10-15 10:56:54'),(24,'Java','2010-09-20 00:47:11','2010-09-20 00:47:11'),(25,'PHP','2010-09-20 00:47:16','2010-09-20 00:47:16'),(26,'Ruby','2010-09-20 00:47:22','2010-09-20 00:47:22'),(27,'Perl','2010-09-20 00:47:27','2010-09-20 00:47:27'),(28,'SmallTalk','2010-09-20 03:55:33','2010-09-20 03:55:33'),(29,'C++','2010-10-01 10:41:25','2010-10-07 10:14:36'),(30,'LISP','2010-10-15 12:31:42','2010-10-15 12:31:42');
/*!40000 ALTER TABLE `languges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operating_sys`
--

DROP TABLE IF EXISTS `operating_sys`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `operating_sys` (
  `id` int(11) NOT NULL auto_increment,
  `os` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `operating_sys`
--

LOCK TABLES `operating_sys` WRITE;
/*!40000 ALTER TABLE `operating_sys` DISABLE KEYS */;
/*!40000 ALTER TABLE `operating_sys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operating_systems`
--

DROP TABLE IF EXISTS `operating_systems`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `operating_systems` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `operating_systems`
--

LOCK TABLES `operating_systems` WRITE;
/*!40000 ALTER TABLE `operating_systems` DISABLE KEYS */;
INSERT INTO `operating_systems` VALUES (2,'Fedora-2','2010-09-20 00:49:42','2010-10-01 10:40:45'),(3,'Mac OS','2010-09-20 00:49:49','2010-09-20 00:49:49'),(4,'Cent OS','2010-09-23 01:12:43','2010-09-23 01:12:43'),(5,'Ubuntu','2010-09-23 01:12:50','2010-09-23 01:12:50'),(6,'Windows 7','2010-09-23 01:15:35','2010-09-23 01:15:35'),(7,'Windows Vista','2010-09-23 01:15:42','2010-09-23 01:15:42'),(8,'Windows (Others)','2010-09-23 01:15:57','2010-09-23 01:15:57'),(9,'Debian','2010-09-28 05:25:32','2010-09-28 05:25:32'),(10,'Redhat','2010-09-28 05:25:44','2010-09-28 05:25:44'),(11,'Windows 2008 Server','2010-10-01 04:08:57','2010-10-01 04:08:57'),(12,'Windows 2003 Server','2010-10-01 04:09:07','2010-10-01 04:09:07'),(13,'Windows 2000 server','2010-10-01 04:09:16','2010-10-01 04:09:16'),(14,'Windows XP','2010-10-01 04:09:25','2010-10-01 04:09:25'),(15,'Sun Solaris 10','2010-10-01 04:10:17','2010-10-01 04:10:17'),(16,' Ubuntu 8.04 ','2010-10-01 04:10:25','2010-10-01 04:10:25'),(17,' SQUID','2010-10-01 04:10:29','2010-10-01 04:10:29'),(18,'Linux(Redhat)','2010-10-01 10:40:29','2010-10-01 10:40:29'),(19,'Windows-98','2010-10-01 10:41:01','2010-10-01 10:41:01');
/*!40000 ALTER TABLE `operating_systems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pgs`
--

DROP TABLE IF EXISTS `pgs`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `pgs` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `pgs`
--

LOCK TABLES `pgs` WRITE;
/*!40000 ALTER TABLE `pgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `pgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professional_summaries`
--

DROP TABLE IF EXISTS `professional_summaries`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `professional_summaries` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `summary` text collate utf8_unicode_ci,
  `priority` int(11) default '1',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `professional_summaries`
--

LOCK TABLES `professional_summaries` WRITE;
/*!40000 ALTER TABLE `professional_summaries` DISABLE KEYS */;
INSERT INTO `professional_summaries` VALUES (21,34,'Having more than 4 years of experience in software development.',1,'2010-10-02 10:36:03','2010-10-02 10:36:03'),(22,34,'Object oriented PHP 5/MySQL Web developer.',2,'2010-10-02 10:36:16','2010-10-02 10:36:16'),(23,34,'Strong back end developer with side skill set. ',3,'2010-10-02 10:36:29','2010-10-02 10:36:29'),(24,34,'Experience in coordinating the major project in the organization.',4,'2010-10-02 10:36:44','2010-10-02 10:36:44'),(25,34,'Excellent written and verbal communication skill. ',5,'2010-10-02 10:36:59','2010-10-02 10:36:59'),(26,34,'Experience in handling Teams ',6,'2010-10-02 10:37:18','2010-10-02 10:37:18'),(27,34,'Good team player ',7,'2010-10-02 10:37:37','2010-10-02 10:37:37'),(28,35,'Linux Server Admin',1,'2010-10-04 10:45:31','2010-10-04 10:45:31'),(29,35,'Voip Engineer',2,'2010-10-04 10:45:49','2010-10-04 10:45:49'),(30,35,'Asterisk Call centre support',3,'2010-10-04 10:46:59','2010-10-04 10:46:59'),(31,35,'Cpanel admin',4,'2010-10-04 10:47:19','2010-10-04 10:47:19'),(32,35,'Cloud infrastructure management ',5,'2010-10-04 10:48:36','2010-10-04 10:48:36'),(34,37,'3 years experience in Remote Server Administration',NULL,'2010-10-04 13:04:18','2010-10-04 13:04:18'),(39,37,'Expertise in RIM, LAMP, Qmail, Postfix, various RAID solutions, Database server fine tuning, Scripting, hosting support, Cpanel',2,'2010-10-04 13:13:54','2010-10-04 13:13:54'),(41,37,'Experience in email delivery finetuning using Ironport and Message system',4,'2010-10-04 13:15:00','2010-10-04 13:15:00'),(42,37,'Experince in various cloud computing environments AWS,rackspace,3tera',3,'2010-10-04 13:15:51','2010-10-04 13:15:51'),(43,40,'Email Delivery Specialist : last 6 months working under this domain.',1,'2010-10-06 08:55:03','2010-10-06 08:55:03'),(44,40,'Cloud Application development ',2,'2010-10-06 12:41:27','2010-10-06 12:41:27'),(45,40,'Programming',3,'2010-10-06 12:41:38','2010-10-06 12:41:38'),(46,41,'1.4 years of experience in linux server administration',1,'2010-10-15 05:57:18','2010-10-15 05:57:18'),(47,41,'Redhat certified engineer',2,'2010-10-15 05:57:37','2010-10-15 05:57:37'),(48,41,'6 months of experience in hosting industry',3,'2010-10-15 05:58:19','2010-10-15 05:58:19'),(49,41,'excellent knowledge in cpanel control panel',4,'2010-10-15 05:59:07','2010-10-15 05:59:07'),(50,41,'excellent knowledge in LAMP technology',5,'2010-10-15 05:59:32','2010-10-15 05:59:32'),(51,41,'Good exposure in Asterisk voip technology',5,'2010-10-15 06:00:24','2010-10-15 06:00:24'),(54,36,'Undergone Training for server administering ofWindows linux and unix os\'s after completion of engineering graduation in Computer science. ',1,'2010-10-16 07:38:03','2010-10-16 07:38:03'),(55,36,'Worked as an RHCE(teaching faculty) at Irfan Techologies, Perithalmanna, Malappuram, Kerala. ',2,'2010-10-16 07:38:15','2010-10-16 07:38:15'),(56,36,'Now as jn software engineer in agile blaza technologies.',3,'2010-10-16 07:38:25','2010-10-16 07:38:25');
/*!40000 ALTER TABLE `professional_summaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professionals`
--

DROP TABLE IF EXISTS `professionals`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `professionals` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `designation_id` text collate utf8_unicode_ci,
  `description` text collate utf8_unicode_ci,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `professionals`
--

LOCK TABLES `professionals` WRITE;
/*!40000 ALTER TABLE `professionals` DISABLE KEYS */;
INSERT INTO `professionals` VALUES (16,11,'13','HR ','2010-09-22 04:31:56','2010-09-22 04:57:41'),(17,14,'9','Having 4 year of experience as Linux administrator, well versed with Linux and UNIX (Solaris) flavors and have good exposure in remote Administration and trouble shooting.\r\n','2010-09-23 05:32:44','2010-09-23 07:58:44'),(19,30,'9','Accomplished perl programmer and Linux/Unix System administrator with a total of  four plus years of experience and with comprehensive technical skill set and expertise in Perl programming  and in handling Linux servers. Proficient problem-solver and trouble shooter who envisions technical perspectives to develop workable solution. Enthusiastic learner who quickly grasps new concepts and technical skill','2010-09-28 04:52:51','2010-09-28 04:52:51'),(20,31,'9','We spend most of our day communicating. Using Flowdock\'s efficient real-time group chat saves you time and helps your team get answers right away.\r\n\r\nPersistent history and tagging system keeps your discussions saved and organized for later reference.Chat lines mentioning you are highlighted and brought to your attention. If you happen to be offline, Flowdock can send you a daily email of what has been going on.\r\n\r\nGet Flowdock on your desktop to stay up to date in real time.We spend most of our day communicating. Using Flowdock\'s efficient real-time group chat saves you time and helps your team get answers right away. Persistent history and tagging system keeps yourWe spend most of our day communicating. Using Flowdock\'s efficient real-time group chat saves you time and helps your team get answers right away. Persistent history and tagging system keeps your discussions saved and organized for later reference.Chat lines mentioning you are highlighted and brought to your attention. If you happen to be offline, Flowdock can send you a daily email of what has been going on. Get Flowdock on your desktop to stay up to date in real time.We spend most of our day communicating. Using Flowdock\'s efficient real-time group chat saves you time and helps your team get answers right away. Persistent history and tagging system keeps your discussions saved and organized for later reference.Chat lines mentioning you are highlighted and brought to your attention. If you happen to be offline, Flowdock can send you a daily email of what has been going on. Get Flowdock on your desktop to stay up to date in real time.  discussions saved and organized for later reference.Chat lines mentioning you are highlighted and brought to your attention. If you happen to be offline, Flowdock can send you a daily email of what has been going on. Get Flowdock on your desktop to stay up to date in real time. We spend most of our day communicating. Using Flowdock\'s efficient real-time group chat saves you time and helps your team get answers right away. Persistent history and tagging system keeps your discussions saved and organized for later reference.Chat lines mentioning you are highlighted and brought to your attention. If you happen to be offline, Flowdock can send you a daily email of what has been going on. Get Flowdock on your desktop to stay up to date in real time.We spend most of our day communicating. Using Flowdock\'s efficient real-time group chat saves you time and helps your team get answers right away. Persistent history and tagging system keeps your discussions saved and organized for later reference.Chat lines mentioning you are highlighted and brought to your attention. If you happen to be offline, Flowdock can send you a daily email of what has been going on. Get Flowdock on your desktop to stay up to date in real time. \r\n','2010-09-28 06:11:57','2010-09-29 09:38:40'),(21,32,'9','Microsoft and Redhat certified system administrator with a background in windows server architecture and profound knowledge in security, managing internet infrastructure, deployments, upgrades and maintenance.\r\n\r\nHaving 4+ Years of Experience in System and Network administration.\r\nExposure in Windows Platforms\r\nGood Exposure in Networking and Client-Server Architecture.\r\nExcellent communication and interpersonal skill.','2010-09-30 12:15:02','2010-10-01 04:12:35'),(22,33,'9','Professionally experienced in database designing, SQL and PL/PGSQL programming. Have experience in conducting training and leading a development team. A very good team player with excellent interpersonal and communication skills.','2010-10-01 10:36:53','2010-10-01 10:36:53'),(23,34,'9','Professionally experienced in Web development using PHP in Linux, Cloud computing concepts, Deployment of project. Analysis and design of database from requirement, its implementation , clear communication with client and more over a good team player. \r\n','2010-10-02 06:44:15','2010-10-02 06:44:15'),(24,35,'12','Worked as a Linux server admin for Goldbar.\r\n\r\nWorked on asterisk and it\'s peripherals like asterCRM ,a2billing etc.\r\n\r\nAsterisk based call center and Voip solutions.\r\n\r\nDesign and deployment of virtual servers in Applogic.\r\n\r\nConfiguration and maintenance of virtual servers in Hexagrid.\r\n','2010-10-04 08:35:43','2010-10-04 08:35:43'),(25,37,'23','Linux Sever Administrator having 3 years of experience in remote server administration','2010-10-04 12:52:10','2010-10-04 13:21:08'),(26,40,'9','1.Email delivery specialist.\r\n\r\n2. Bulk Email Sending using Postifx.\r\n\r\n3.Cloud Application Development under Applogic.\r\n\r\n4. Server Administrations.\r\n\r\n5. Integration of IP monitoring tools with Sparksupport website.\r\n\r\n\r\n6. Programming using different languages.\r\n\r\n','2010-10-05 15:48:45','2010-10-06 12:45:12'),(27,36,'12','Server side administraton expecially video stream servers.\r\nDevelopment of some flash softwares.\r\nWorked on Configuring and hosting of stream servers.\r\nInstallation and configuration of software application.\r\n\r\n','2010-10-14 09:48:33','2010-10-16 07:43:50'),(28,41,'11','Configuration and management of serverside services','2010-10-14 12:42:33','2010-10-15 06:09:10');
/*!40000 ALTER TABLE `professionals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qualification_names`
--

DROP TABLE IF EXISTS `qualification_names`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `qualification_names` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `qualification_names`
--

LOCK TABLES `qualification_names` WRITE;
/*!40000 ALTER TABLE `qualification_names` DISABLE KEYS */;
INSERT INTO `qualification_names` VALUES (1,NULL,'select',NULL,NULL),(3,NULL,'PLUS 2',NULL,'2010-10-01 04:49:05'),(4,NULL,'Graduation',NULL,NULL),(5,NULL,'Post Graduation',NULL,NULL),(6,NULL,'SSLC','2010-09-30 06:56:56','2010-09-30 08:04:40');
/*!40000 ALTER TABLE `qualification_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referance_works`
--

DROP TABLE IF EXISTS `referance_works`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `referance_works` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `title` varchar(255) collate utf8_unicode_ci default NULL,
  `priority` int(11) default '1',
  `description` text collate utf8_unicode_ci,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `referance_works`
--

LOCK TABLES `referance_works` WRITE;
/*!40000 ALTER TABLE `referance_works` DISABLE KEYS */;
INSERT INTO `referance_works` VALUES (3,33,'Integrated Accounting solution and asset management system for BSNL',NULL,'This integrated package aimed at linking various accounting department of BSNL like cash (Operational Accounts ), collection (collection accounts), Establishment, Pay and allowance , Personal claims, Works and planning, This package is also integrated with the engineering planning department of BSNL for management of its asset, work in progress estimates & maintenance estimates Its first project of this kind for BSNL, to have an integrated ERP Package that links the accounts wing, establishment wing and engineering wing. This package comes with security features , 4 eye verification and authorize system, messaging facility to track on pending jobs, configurable flow of DAK, logging of events, optimized accessing of database, user friendly interface & 100 of report for their daily needs.','2010-10-01 10:48:56','2010-10-01 10:48:56'),(4,33,'Sangamithra',NULL,'Sangamitra is now running over more than 20 co-operative society/bank all over Kerala. This package was facilitated with online messaging systems, pending work list, automatic interest posting, multiple credit head and debit head posting viewed online, auto posting to credit head on part payment and salary recovery by customer as per configuration priority of bank.','2010-10-01 10:49:14','2010-10-01 10:49:14'),(5,33,'Prajashakthi ',NULL,'Its a ERP projects for a print media. It comprises of the modules, Organisation, Establishment, Advertisement , circulation , inventory, printing press, book house.','2010-10-01 10:49:28','2010-10-01 10:49:28'),(6,33,'Circlesoft. ',NULL,'s an E-commerce site . A website with full of E-commerce features like printed Bar-coded catloges, wholesale system, sales oders with scan pick and pack, stock and ordering system, scan inwards goods, point of sale and integrated accounting. ','2010-10-01 10:49:44','2010-10-01 10:49:44'),(7,33,'Adtraction ',NULL,'AdTraction is a Search Engine Management API to advertise ads into major Search Engines like Google, Yahoo and MSN with a single account based system through web service. And this API will act as an interface between the end user and Search Engines. This system id developed by using PHP5 and MySQL in Linux platform.','2010-10-01 10:49:58','2010-10-01 10:49:58'),(8,34,'Collaboroo',4,'Collaboroo is an online collaboration tool for bringing teams together, wherever they are in the world. Organize, discuss, store, share, send, all from a secure and controlled environment. My role in this project was store the files , images, etc...in to Amazon Web Server by using S3 service (simple storage service). Which is used to develop PHP5 and MySQL in Linux platform','2010-10-02 10:38:16','2010-10-02 10:41:40'),(9,34,'Goldbar',3,'Goldbar Enterprises is an E-Commerce Solution Provider industry. Goldbar One is an online software that helps businesses of any size get more traffic, more leads and more sales.\r\nMy Role in this project was , doing a part called CRM, which mainly deals with multiple ways of seach result functionality from multiple databases. Which is used to develop  PHP5 and MySQL in Linux platform.','2010-10-02 10:38:46','2010-10-02 10:41:06'),(10,34,'Beansaver.com',2,'Beansaver.com is an online shopping portal. Which is developed by using PHP5 and MySQL as database in Linux platform. My role in this project was creating order automatically after successful payment, auto-update of products and adding stocks from the distributor D&H, one of the nation\'s leading distributors specializing in emerging trends across IT, Electronics, Entertainment and Gaming etc.. ','2010-10-02 10:39:28','2010-10-02 10:40:51'),(11,34,'Adtraction ',1,'AdTraction is a Search Engine Management API to advertise ads into major Search Engines like Google, Yahoo and MSN with a single account based system through web service. And this API will act as an interface between the end user and Search Engines. This system id developed by using PHP5 and MySQL in Linux platform.','2010-10-02 10:41:30','2010-10-02 10:41:30'),(12,34,'CompaniesInn  Web Portal ',5,'Companies in Web portal which provides online company registration in India. This portal provides easy steps to register private or public companies and provides associated services. User can login and provide the details for company registration including company details, shareholder details and director details. Payment can be done using online payment gateway attached to the portal.  Portal developed using HTML, JavaScript and PHP5, Portal uses MySQL as its database. My role in this project was designing, developing, testing and deploying the portal in nettigritty web portal.','2010-10-02 10:42:10','2010-10-02 10:42:10'),(13,35,'Server Admin',1,'Administrating Linux Servers, securing servers,configuring SSH ,FTP ,LAMP servers.\r\n\r\nFine tuning of firewall using combination of ip tables, ip route and ip rules. Writing and modifying routing rules.','2010-10-04 11:03:48','2010-10-04 11:03:48'),(14,35,'Voip Engineer',2,'Deployment of asterisk server. Configuring asterisk for call center solutions.Integrating hardware peripherals like PSTN gateway ,SIP speakers ,SIP phones etc with asterisk .\r\nWriting own dialplan as per client\'s requirement.','2010-10-04 11:09:04','2010-10-04 11:09:12'),(15,35,'Cloud management',3,'Managing cloud infrastructure on platforms like Applogic ,Hexagid, Amazon etc.\r\nDesigning and implementing virtual server deployment on cloud platforms.','2010-10-04 11:24:28','2010-10-04 11:24:28'),(16,37,'VirtualBarter',NULL,'Migrating both database and application servers to Rackspace cloud','2010-10-04 14:07:05','2010-10-04 14:08:07'),(17,37,'TelnetBroadband',2,'Setting up a FTP server with RAID 5 in AWS. Add addtional volumes ondemand.','2010-10-04 14:08:41','2010-10-04 14:08:41'),(18,37,'ContentCrooner',NULL,'Migrated from Scalr. MySQL server finetuning, Monitoring','2010-10-04 14:09:29','2010-10-04 14:09:29'),(19,37,'Austinpost',4,'Server monitoring, Server cleanup, MySQL fine tuning','2010-10-04 14:10:39','2010-10-04 15:57:35'),(20,37,'Devdesk',5,'Implement MSSQL Encryption, IIS wildcard SSL','2010-10-04 15:51:31','2010-10-04 15:54:33'),(21,37,'Goldbar',6,'Hosting server support thorough ticketing system. Email delivery finetuning using Ironport and Message system','2010-10-04 15:56:56','2010-10-04 15:57:15'),(22,40,'Email Delivery specialist',1,'Last 6 months I\'m working under this domain. Have good proficiency in both Spam issues and other ISP specific details associated with Email Marketing.','2010-10-05 15:50:55','2010-10-06 12:36:43'),(23,40,'Cloud Application Development',2,'Also working under Applogic Cloud for developing E-commerce applications and other patches.','2010-10-05 15:54:08','2010-10-06 12:37:13'),(24,40,'Development of Tools ',3,'1. Email Monitoring Tool\r\n2. Other Automation scripts\r\n3. Integration with  \r\n   Sparksupport.com website.','2010-10-06 12:26:34','2010-10-06 12:26:34'),(25,41,'server administration',1,'Administration of servers of apthost and Goldbar ','2010-10-14 12:50:51','2010-10-14 12:50:51'),(26,41,'voip',2,'call center setup using asterisk voip technology','2010-10-14 12:51:38','2010-10-14 12:51:38'),(27,41,'hexagrid',3,'Testing the new hexagrid cloud environment\r\n','2010-10-14 12:53:29','2010-10-14 12:53:29'),(28,41,'virtualization',4,'setting up different virtualization environments like xen, vmware, kvm\r\nand comparing its performance','2010-10-14 12:54:46','2010-10-14 12:54:46'),(29,36,'Video Portal Project.',NULL,'Setting up a red5 stream server and working for a video portal based on that server.','2010-10-16 07:29:18','2010-10-16 07:29:18');
/*!40000 ALTER TABLE `referance_works` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_responsibilities`
--

DROP TABLE IF EXISTS `role_responsibilities`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `role_responsibilities` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `role` text collate utf8_unicode_ci,
  `priority` int(11) default '1',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `role_responsibilities`
--

LOCK TABLES `role_responsibilities` WRITE;
/*!40000 ALTER TABLE `role_responsibilities` DISABLE KEYS */;
INSERT INTO `role_responsibilities` VALUES (17,32,'Management of Dedicated Web and Database Servers located in various Data centers.',1,'2010-09-30 12:19:42','2010-09-30 12:19:42'),(18,32,'Managing Hardware Firewall and network.',1,'2010-09-30 12:19:49','2010-09-30 12:19:49'),(19,32,'Implemented and Maintaining Dedicated Mail server for the company',1,'2010-09-30 12:19:56','2010-09-30 12:19:56'),(20,32,'Managing MS SQL Database Backups and Restore process.',1,'2010-09-30 12:20:02','2010-09-30 12:20:02'),(21,32,'Implementing and managing various Backup Strategies using Microsoft NT Backup.',1,'2010-09-30 12:20:09','2010-09-30 12:20:09'),(22,32,'Windows 2003Active Directory Management.',1,'2010-09-30 12:20:15','2010-09-30 12:20:15'),(23,32,'Designing and Implementing Group Policies.',1,'2010-09-30 12:20:22','2010-09-30 12:20:22'),(24,32,'Communicating with Various Data centers for the smooth process.',1,'2010-09-30 12:20:29','2010-09-30 12:20:29'),(25,32,'Supporting Web Developers and Web Designers in technical issues.',1,'2010-09-30 12:20:37','2010-09-30 12:20:37'),(26,32,'Installation of Oracle Server on  Windows 2000,XP& 2003  &  Red Hat Enterprise Linux',1,'2010-09-30 12:20:50','2010-09-30 12:20:50'),(27,32,'Provided Technical support for Pearson VUE Testing System',1,'2010-09-30 12:20:59','2010-09-30 12:20:59'),(28,32,'Promoted to provide Microsoft Operating Systems consultation Hardware and Software',1,'2010-09-30 12:21:06','2010-09-30 12:21:06'),(29,32,'installations and Onsite support Company clients.',1,'2010-09-30 12:21:14','2010-09-30 12:21:14'),(30,32,'Resolving security issues and providing support for end users Planned and\r\nImplemented Windows 2000 and 2003 server environments',1,'2010-09-30 12:21:27','2010-09-30 12:21:27'),(31,32,'Experience in Hosting support',1,'2010-09-30 12:21:35','2010-09-30 12:21:35'),(32,32,'Windows Servers on cloud ',1,'2010-09-30 12:21:42','2010-09-30 12:21:42'),(33,33,'Development & implementation of the software package. ',1,'2010-10-01 10:46:53','2010-10-01 10:46:53'),(34,33,'Design and Development of software application. ',1,'2010-10-01 10:47:02','2010-10-01 10:47:02'),(35,33,'Database Architecture ',1,'2010-10-01 10:47:11','2010-10-01 10:47:11'),(36,33,'Design Database structure',1,'2010-10-01 10:47:19','2010-10-01 10:47:19'),(37,33,'Targeting and collecting report from each SE.',1,'2010-10-01 10:47:29','2010-10-01 10:47:29'),(38,33,'Synchronize the AdTraction database with SE.',1,'2010-10-01 10:47:39','2010-10-01 10:47:39'),(39,33,'Restructured the huge data available form the client as per the software requirement.  ',1,'2010-10-01 10:47:47','2010-10-01 10:47:47'),(40,33,'Prepare use case diagram',1,'2010-10-01 10:47:56','2010-10-01 10:47:56'),(41,33,'Design the Database Structure',1,'2010-10-01 10:48:06','2010-10-01 10:48:06'),(42,33,'Client communication ',1,'2010-10-01 10:48:14','2010-10-01 10:48:14'),(43,33,'Code communication ',1,'2010-10-01 10:48:22','2010-10-01 10:48:22'),(44,33,'Design the database and developed a package for the Timezone conservation ',1,'2010-10-01 10:48:31','2010-10-01 10:48:31'),(45,34,'Development & implementation of the software package. ',1,'2010-10-02 10:42:39','2010-10-02 10:42:39'),(46,34,'Design and Development of software application. ',1,'2010-10-02 10:42:53','2010-10-02 10:42:53'),(47,34,'Deploying codes in to server.',1,'2010-10-02 10:43:12','2010-10-02 10:43:12'),(49,34,'Schedule Client calls ',1,'2010-10-02 10:43:32','2010-10-02 10:43:32'),(50,34,'Design the Database Structure',1,'2010-10-02 10:43:48','2010-10-02 10:43:48'),(51,34,'Client communication through calls , mails , chats ',1,'2010-10-02 10:44:36','2010-10-02 10:44:36'),(52,34,'Software document preparation.',1,'2010-10-02 10:46:02','2010-10-02 10:46:02'),(53,34,'Giving Weekly developments updates to client.',1,'2010-10-02 10:46:49','2010-10-02 10:46:49'),(55,34,'Communicate with team members, find solutions.',1,'2010-10-02 10:47:09','2010-10-02 10:47:09'),(56,34,'Defining different modules from requirement specification.',1,'2010-10-02 10:47:44','2010-10-02 10:47:44'),(57,34,'Leading a team or a team player for assigned projects.',1,'2010-10-02 10:48:06','2010-10-02 10:48:06'),(58,35,'Worked for Goldbar as server and Cpanel support team.',1,'2010-10-04 11:33:26','2010-10-04 11:33:26'),(59,35,'Installed and configured asterisk for different clients.',1,'2010-10-04 11:36:17','2010-10-04 11:36:17'),(60,35,'Tweaked dialplan and functions of asterisk for meeting client\'s requirement.',1,'2010-10-04 11:36:25','2010-10-04 11:36:25'),(61,35,'Configured freeswitch on amazon Ec2 and conducted a feasibility study over QoS.',1,'2010-10-04 11:37:18','2010-10-04 11:37:18'),(62,35,'Gave support for developers for developing  sites and updating contents.',1,'2010-10-04 11:42:09','2010-10-04 11:42:09'),(63,35,'Security measures for making a server harden with strict firewall rules and zero vulnerabilities.',1,'2010-10-04 11:43:48','2010-10-04 11:43:48'),(64,35,'Setup a call center environment in our company for BDO\'s',1,'2010-10-04 11:47:40','2010-10-04 11:47:40'),(65,35,'Designing virtual infrastructure with load balancers ,high availability , fail over. Realtime resource management using high availability.                                     ',1,'2010-10-04 12:00:43','2010-10-04 12:00:43'),(66,35,'Developed a script logic for back up different file systems.',1,'2010-10-04 12:01:34','2010-10-04 12:01:34'),(69,40,'Email Delivery Specialist ',1,'2010-10-05 15:54:37','2010-10-05 15:54:37'),(70,40,'Cloud application development under Applogic.',1,'2010-10-06 12:23:00','2010-10-06 12:23:00'),(71,40,'Development of Email Monitoring tools and its integrations.',1,'2010-10-06 12:23:53','2010-10-06 12:23:53'),(72,37,'VbaterMigration:\r\nRole: Server Admin\r\nResponsibilty:Migrate vbater from miami to rackspace cloud. Update to Centos 5.4 with Apache 2 and modperl2.',1,'2010-10-13 15:45:15','2010-10-13 15:45:15'),(73,37,'TelnetBroadband:\r\nRole:Server Admin\r\nResponsibility: Set up FTP server in AWS with RAID 5. ',1,'2010-10-13 15:47:33','2010-10-13 15:47:33'),(74,37,'ContentCrooner:\r\nRole: Server Admin\r\nResponsibility: Migrate srevice from Scalr. MySQL server optimization, Monitoring',1,'2010-10-13 15:49:43','2010-10-13 15:49:43'),(75,37,'Austinpost:\r\nRole: Server Admin\r\nResponsibility: Server monitoring, optmization and cleanup',1,'2010-10-13 15:53:29','2010-10-13 15:53:29'),(76,37,'Devdesk:\r\nRole: Server Admin\r\nResponsibility:\r\nImplement MSSQL Encryption, IIS wildcard SSL. Configure server to meet HIPPA compliance',1,'2010-10-13 15:56:24','2010-10-13 15:56:24'),(77,37,'Goldbar:\r\nRole:Server Support\r\nResponsibility:\r\n24/7  server support thorough ticketing system. Server monitoring and optimization. Email delivery finetuning using Ironport and Message system',1,'2010-10-13 15:58:05','2010-10-13 15:58:05'),(79,41,'Managing Hexagrid cloud environment',1,'2010-10-14 12:56:15','2010-10-14 12:56:15'),(80,41,'Configuring different virtual environments\r\nlike xen, kvm,vmware ',1,'2010-10-14 12:57:08','2010-10-14 12:57:08'),(82,36,'Member of the video streaming based project for a video portal. ',1,'2010-10-16 07:39:28','2010-10-16 07:39:28'),(83,36,'To cordinate the project.',1,'2010-10-16 07:39:39','2010-10-16 07:39:39'),(84,36,' Conducting and participating scrum meetings for the project',1,'2010-10-16 07:39:47','2010-10-16 07:39:47');
/*!40000 ALTER TABLE `role_responsibilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) collate utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20100828004311'),('20100828065756'),('20100830012139'),('20100830064301'),('20100830080222'),('20100830080240'),('20100830080300'),('20100830080321'),('20100830080333'),('20100830081115'),('20100831002442'),('20100831041035'),('20100831041101'),('20100831041112'),('20100831041124'),('20100901022359'),('20100901030455'),('20100901030712'),('20100902052507'),('20100902083210'),('20100903014303'),('20100903023013'),('20100903025250'),('20100903060117'),('20100903234849'),('20100904044550'),('20100918010833'),('20100918045559'),('20100921002301'),('20100927080639'),('20100928070559'),('20100928071625');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tech_others`
--

DROP TABLE IF EXISTS `tech_others`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tech_others` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `titlle` text collate utf8_unicode_ci,
  `name` text collate utf8_unicode_ci,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tech_others`
--

LOCK TABLES `tech_others` WRITE;
/*!40000 ALTER TABLE `tech_others` DISABLE KEYS */;
INSERT INTO `tech_others` VALUES (24,31,'Web Technologies ','JQuery, Javascript, XHTML, Ajax','2010-09-29 10:40:39','2010-09-29 10:40:39'),(25,28,'ServerAdministration','  Microsoft Exchange server 2003 & 2007,IIS 6.0,IIS 7.0, DNS,DHCP,RIS,FTP,SMTP,POP3','2010-09-30 04:08:53','2010-09-30 04:09:30'),(26,28,'CMS	','Joomla, Radiant ','2010-09-30 04:45:44','2010-09-30 04:45:44'),(27,28,'GUI Programming ','Gtk, Gdk','2010-09-30 04:46:19','2010-09-30 04:46:19'),(28,28,'Front-end tools     : Glade','Glade','2010-09-30 04:46:45','2010-09-30 04:46:45'),(29,28,'Web Technologies ','JQuery, Javascript, XHTML, Ajax','2010-09-30 04:47:09','2010-09-30 04:47:22'),(30,32,'Server Administration','Microsoft Exchange server 2003 & 2007,IIS 6.0,IIS 7.0, DNS,DHCP,RIS,FTP,SMTP,POP3','2010-09-30 12:18:56','2010-09-30 12:18:56'),(31,33,'CMS','Joomla, Radiant ','2010-10-01 10:42:51','2010-10-01 10:42:51'),(32,33,'GUI Programming  ','Gtk, Gdk','2010-10-01 10:43:07','2010-10-01 10:43:07'),(33,33,'Front-end tools','Glade','2010-10-01 10:43:23','2010-10-01 10:43:23'),(34,33,'Web Technologies ','JQuery, Javascript, XHTML, Ajax','2010-10-01 10:43:40','2010-10-01 10:43:40'),(36,40,'More Languages','Python,Bash scripting','2010-10-05 10:35:56','2010-10-05 10:35:56'),(37,41,'virtualization','kvm, xen','2010-10-14 12:43:19','2010-10-14 12:43:19'),(38,41,'voip','asterisk','2010-10-14 12:43:36','2010-10-14 12:43:36'),(39,41,'cloud','hexagrid','2010-10-14 12:43:53','2010-10-14 12:43:53'),(40,36,'Server Administration','NFS, FTP, SAMBA, SQUID, BIND, APACHE, DHCP, Mail servers','2010-10-16 07:42:04','2010-10-16 07:42:04');
/*!40000 ALTER TABLE `tech_others` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tech_proficencies`
--

DROP TABLE IF EXISTS `tech_proficencies`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `tech_proficencies` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `languge_id` int(11) default NULL,
  `database_id` int(11) default NULL,
  `framework_id` int(11) default NULL,
  `os_id` int(11) default NULL,
  `web_tool` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `tech_proficencies`
--

LOCK TABLES `tech_proficencies` WRITE;
/*!40000 ALTER TABLE `tech_proficencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `tech_proficencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `universities`
--

DROP TABLE IF EXISTS `universities`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `universities` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `universities`
--

LOCK TABLES `universities` WRITE;
/*!40000 ALTER TABLE `universities` DISABLE KEYS */;
INSERT INTO `universities` VALUES (1,'select',NULL,NULL),(2,'Kerala University','2010-09-28 08:54:47','2010-10-05 04:48:51'),(3,'MG University','2010-09-28 08:54:51','2010-10-05 04:49:01'),(4,'Cusat','2010-09-28 08:54:55','2010-09-28 08:54:55'),(5,'Kerala Board','2010-09-28 08:55:06','2010-09-28 08:55:06'),(6,'Calicut University','2010-09-28 08:55:12','2010-10-05 04:59:42'),(7,'Banglore University','2010-10-02 10:22:54','2010-10-02 10:22:54');
/*!40000 ALTER TABLE `universities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_databases`
--

DROP TABLE IF EXISTS `user_databases`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user_databases` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `database_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `user_databases`
--

LOCK TABLES `user_databases` WRITE;
/*!40000 ALTER TABLE `user_databases` DISABLE KEYS */;
INSERT INTO `user_databases` VALUES (34,14,6,'2010-09-27 11:45:39','2010-09-27 11:45:39'),(35,14,7,'2010-09-27 11:45:39','2010-09-27 11:45:39'),(36,14,9,'2010-09-27 11:45:39','2010-09-27 11:45:39'),(40,30,6,'2010-09-28 05:08:03','2010-09-28 05:08:03'),(41,30,9,'2010-09-28 05:08:03','2010-09-28 05:08:03'),(58,31,6,'2010-09-29 10:07:05','2010-09-29 10:07:05'),(59,31,8,'2010-09-29 10:07:05','2010-09-29 10:07:05'),(65,32,10,'2010-10-01 04:10:56','2010-10-01 04:10:56'),(66,32,11,'2010-10-01 04:10:56','2010-10-01 04:10:56'),(67,33,7,'2010-10-01 10:42:34','2010-10-01 10:42:34'),(68,33,11,'2010-10-01 10:42:34','2010-10-01 10:42:34'),(70,34,6,'2010-10-02 06:50:09','2010-10-02 06:50:09'),(76,35,6,'2010-10-04 10:35:29','2010-10-04 10:35:29'),(84,40,6,'2010-10-05 10:34:11','2010-10-05 10:34:11'),(85,40,7,'2010-10-05 10:34:11','2010-10-05 10:34:11'),(86,41,6,'2010-10-05 11:20:06','2010-10-05 11:20:06'),(87,38,6,'2010-10-05 17:04:44','2010-10-05 17:04:44'),(88,38,7,'2010-10-05 17:04:44','2010-10-05 17:04:44'),(89,38,8,'2010-10-05 17:04:44','2010-10-05 17:04:44'),(90,38,10,'2010-10-05 17:04:44','2010-10-05 17:04:44'),(91,38,11,'2010-10-05 17:04:44','2010-10-05 17:04:44'),(104,43,6,'2010-10-08 05:52:22','2010-10-08 05:52:22'),(105,43,7,'2010-10-08 05:52:22','2010-10-08 05:52:22'),(106,43,9,'2010-10-08 05:52:22','2010-10-08 05:52:22'),(107,43,11,'2010-10-08 05:52:22','2010-10-08 05:52:22'),(108,37,6,'2010-10-13 16:01:09','2010-10-13 16:01:09'),(109,37,8,'2010-10-13 16:01:09','2010-10-13 16:01:09'),(110,37,9,'2010-10-13 16:01:09','2010-10-13 16:01:09'),(111,37,10,'2010-10-13 16:01:09','2010-10-13 16:01:09'),(112,36,6,'2010-10-16 07:17:16','2010-10-16 07:17:16');
/*!40000 ALTER TABLE `user_databases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_frameworks`
--

DROP TABLE IF EXISTS `user_frameworks`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user_frameworks` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `framework_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `user_frameworks`
--

LOCK TABLES `user_frameworks` WRITE;
/*!40000 ALTER TABLE `user_frameworks` DISABLE KEYS */;
INSERT INTO `user_frameworks` VALUES (39,14,16,'2010-09-27 11:45:39','2010-09-27 11:45:39'),(56,31,15,'2010-09-29 10:07:05','2010-09-29 10:07:05'),(57,31,16,'2010-09-29 10:07:05','2010-09-29 10:07:05'),(59,33,16,'2010-10-01 10:42:34','2010-10-01 10:42:34'),(60,34,15,'2010-10-02 06:50:09','2010-10-02 06:50:09');
/*!40000 ALTER TABLE `user_frameworks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_languges`
--

DROP TABLE IF EXISTS `user_languges`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user_languges` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `languge_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=184 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `user_languges`
--

LOCK TABLES `user_languges` WRITE;
/*!40000 ALTER TABLE `user_languges` DISABLE KEYS */;
INSERT INTO `user_languges` VALUES (62,14,23,'2010-09-27 11:45:39','2010-09-27 11:45:39'),(63,14,24,'2010-09-27 11:45:39','2010-09-27 11:45:39'),(64,14,25,'2010-09-27 11:45:39','2010-09-27 11:45:39'),(65,14,26,'2010-09-27 11:45:39','2010-09-27 11:45:39'),(66,14,27,'2010-09-27 11:45:39','2010-09-27 11:45:39'),(68,30,23,'2010-09-28 05:08:03','2010-09-28 05:08:03'),(69,30,27,'2010-09-28 05:08:03','2010-09-28 05:08:03'),(110,31,23,'2010-09-29 10:07:05','2010-09-29 10:07:05'),(111,31,24,'2010-09-29 10:07:05','2010-09-29 10:07:05'),(112,31,25,'2010-09-29 10:07:05','2010-09-29 10:07:05'),(113,31,26,'2010-09-29 10:07:05','2010-09-29 10:07:05'),(114,31,27,'2010-09-29 10:07:05','2010-09-29 10:07:05'),(115,31,28,'2010-09-29 10:07:05','2010-09-29 10:07:05'),(121,33,23,'2010-10-01 10:42:34','2010-10-01 10:42:34'),(122,33,25,'2010-10-01 10:42:34','2010-10-01 10:42:34'),(123,33,26,'2010-10-01 10:42:34','2010-10-01 10:42:34'),(124,33,29,'2010-10-01 10:42:34','2010-10-01 10:42:34'),(129,34,23,'2010-10-02 06:50:08','2010-10-02 06:50:08'),(130,34,24,'2010-10-02 06:50:09','2010-10-02 06:50:09'),(131,34,25,'2010-10-02 06:50:09','2010-10-02 06:50:09'),(132,34,29,'2010-10-02 06:50:09','2010-10-02 06:50:09'),(140,35,23,'2010-10-04 10:35:29','2010-10-04 10:35:29'),(150,40,23,'2010-10-05 10:34:11','2010-10-05 10:34:11'),(151,40,24,'2010-10-05 10:34:11','2010-10-05 10:34:11'),(152,40,25,'2010-10-05 10:34:11','2010-10-05 10:34:11'),(153,40,27,'2010-10-05 10:34:11','2010-10-05 10:34:11'),(154,40,29,'2010-10-05 10:34:11','2010-10-05 10:34:11'),(155,38,23,'2010-10-05 17:04:44','2010-10-05 17:04:44'),(156,38,25,'2010-10-05 17:04:44','2010-10-05 17:04:44'),(157,38,29,'2010-10-05 17:04:44','2010-10-05 17:04:44'),(176,43,23,'2010-10-08 05:52:22','2010-10-08 05:52:22'),(177,43,25,'2010-10-08 05:52:22','2010-10-08 05:52:22'),(178,43,26,'2010-10-08 05:52:22','2010-10-08 05:52:22'),(179,43,27,'2010-10-08 05:52:22','2010-10-08 05:52:22'),(180,37,25,'2010-10-13 16:01:09','2010-10-13 16:01:09'),(181,37,27,'2010-10-13 16:01:09','2010-10-13 16:01:09'),(182,36,23,'2010-10-16 07:17:16','2010-10-16 07:17:16'),(183,36,24,'2010-10-16 07:17:16','2010-10-16 07:17:16');
/*!40000 ALTER TABLE `user_languges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_operating_systems`
--

DROP TABLE IF EXISTS `user_operating_systems`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user_operating_systems` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `operating_system_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `user_operating_systems`
--

LOCK TABLES `user_operating_systems` WRITE;
/*!40000 ALTER TABLE `user_operating_systems` DISABLE KEYS */;
INSERT INTO `user_operating_systems` VALUES (23,31,2,'2010-09-29 10:07:05','2010-09-29 10:07:05'),(24,31,3,'2010-09-29 10:07:05','2010-09-29 10:07:05'),(25,31,5,'2010-09-29 10:07:05','2010-09-29 10:07:05'),(26,31,6,'2010-09-29 10:07:05','2010-09-29 10:07:05'),(27,31,8,'2010-09-29 10:07:05','2010-09-29 10:07:05'),(28,31,9,'2010-09-29 10:07:05','2010-09-29 10:07:05'),(32,32,6,'2010-10-01 04:10:56','2010-10-01 04:10:56'),(33,32,7,'2010-10-01 04:10:56','2010-10-01 04:10:56'),(34,32,11,'2010-10-01 04:10:56','2010-10-01 04:10:56'),(35,32,12,'2010-10-01 04:10:56','2010-10-01 04:10:56'),(36,32,13,'2010-10-01 04:10:56','2010-10-01 04:10:56'),(37,32,14,'2010-10-01 04:10:56','2010-10-01 04:10:56'),(38,32,15,'2010-10-01 04:10:56','2010-10-01 04:10:56'),(39,32,16,'2010-10-01 04:10:56','2010-10-01 04:10:56'),(40,32,17,'2010-10-01 04:10:56','2010-10-01 04:10:56'),(41,33,2,'2010-10-01 10:42:34','2010-10-01 10:42:34'),(42,33,16,'2010-10-01 10:42:34','2010-10-01 10:42:34'),(43,33,18,'2010-10-01 10:42:34','2010-10-01 10:42:34'),(44,33,19,'2010-10-01 10:42:34','2010-10-01 10:42:34'),(45,34,5,'2010-10-02 06:50:09','2010-10-02 06:50:09'),(46,34,11,'2010-10-02 06:50:09','2010-10-02 06:50:09'),(47,34,12,'2010-10-02 06:50:09','2010-10-02 06:50:09'),(48,34,13,'2010-10-02 06:50:09','2010-10-02 06:50:09'),(49,34,18,'2010-10-02 06:50:09','2010-10-02 06:50:09'),(56,35,4,'2010-10-04 10:35:29','2010-10-04 10:35:29'),(57,35,5,'2010-10-04 10:35:29','2010-10-04 10:35:29'),(58,35,9,'2010-10-04 10:35:29','2010-10-04 10:35:29'),(59,35,10,'2010-10-04 10:35:29','2010-10-04 10:35:29'),(60,35,18,'2010-10-04 10:35:29','2010-10-04 10:35:29'),(81,40,4,'2010-10-05 10:34:11','2010-10-05 10:34:11'),(82,40,5,'2010-10-05 10:34:11','2010-10-05 10:34:11'),(83,40,6,'2010-10-05 10:34:11','2010-10-05 10:34:11'),(84,40,7,'2010-10-05 10:34:11','2010-10-05 10:34:11'),(85,40,9,'2010-10-05 10:34:11','2010-10-05 10:34:11'),(86,40,10,'2010-10-05 10:34:11','2010-10-05 10:34:11'),(87,40,14,'2010-10-05 10:34:11','2010-10-05 10:34:11'),(88,40,16,'2010-10-05 10:34:11','2010-10-05 10:34:11'),(89,40,18,'2010-10-05 10:34:11','2010-10-05 10:34:11'),(90,41,4,'2010-10-05 11:20:06','2010-10-05 11:20:06'),(91,41,5,'2010-10-05 11:20:06','2010-10-05 11:20:06'),(92,41,9,'2010-10-05 11:20:06','2010-10-05 11:20:06'),(93,41,10,'2010-10-05 11:20:06','2010-10-05 11:20:06'),(94,41,16,'2010-10-05 11:20:06','2010-10-05 11:20:06'),(95,41,18,'2010-10-05 11:20:06','2010-10-05 11:20:06'),(96,38,2,'2010-10-05 17:04:44','2010-10-05 17:04:44'),(97,38,4,'2010-10-05 17:04:44','2010-10-05 17:04:44'),(98,38,5,'2010-10-05 17:04:44','2010-10-05 17:04:44'),(99,38,6,'2010-10-05 17:04:44','2010-10-05 17:04:44'),(100,38,7,'2010-10-05 17:04:44','2010-10-05 17:04:44'),(101,38,8,'2010-10-05 17:04:44','2010-10-05 17:04:44'),(102,38,9,'2010-10-05 17:04:44','2010-10-05 17:04:44'),(103,38,10,'2010-10-05 17:04:44','2010-10-05 17:04:44'),(104,38,11,'2010-10-05 17:04:44','2010-10-05 17:04:44'),(105,38,12,'2010-10-05 17:04:44','2010-10-05 17:04:44'),(106,38,13,'2010-10-05 17:04:44','2010-10-05 17:04:44'),(107,38,14,'2010-10-05 17:04:44','2010-10-05 17:04:44'),(108,38,16,'2010-10-05 17:04:44','2010-10-05 17:04:44'),(109,38,18,'2010-10-05 17:04:44','2010-10-05 17:04:44'),(110,38,19,'2010-10-05 17:04:44','2010-10-05 17:04:44'),(172,43,2,'2010-10-08 05:52:22','2010-10-08 05:52:22'),(173,43,4,'2010-10-08 05:52:22','2010-10-08 05:52:22'),(174,43,6,'2010-10-08 05:52:22','2010-10-08 05:52:22'),(175,43,7,'2010-10-08 05:52:22','2010-10-08 05:52:22'),(176,43,8,'2010-10-08 05:52:22','2010-10-08 05:52:22'),(177,43,9,'2010-10-08 05:52:22','2010-10-08 05:52:22'),(178,43,10,'2010-10-08 05:52:22','2010-10-08 05:52:22'),(179,43,14,'2010-10-08 05:52:22','2010-10-08 05:52:22'),(180,43,15,'2010-10-08 05:52:22','2010-10-08 05:52:22'),(181,43,16,'2010-10-08 05:52:22','2010-10-08 05:52:22'),(182,43,18,'2010-10-08 05:52:22','2010-10-08 05:52:22'),(183,43,19,'2010-10-08 05:52:22','2010-10-08 05:52:22'),(184,37,4,'2010-10-13 16:01:09','2010-10-13 16:01:09'),(185,37,9,'2010-10-13 16:01:09','2010-10-13 16:01:09'),(186,36,4,'2010-10-16 07:17:16','2010-10-16 07:17:16'),(187,36,5,'2010-10-16 07:17:16','2010-10-16 07:17:16'),(188,36,6,'2010-10-16 07:17:16','2010-10-16 07:17:16'),(189,36,7,'2010-10-16 07:17:16','2010-10-16 07:17:16'),(190,36,9,'2010-10-16 07:17:16','2010-10-16 07:17:16'),(191,36,10,'2010-10-16 07:17:16','2010-10-16 07:17:16'),(192,36,12,'2010-10-16 07:17:16','2010-10-16 07:17:16'),(193,36,14,'2010-10-16 07:17:16','2010-10-16 07:17:16'),(194,36,15,'2010-10-16 07:17:16','2010-10-16 07:17:16'),(195,36,18,'2010-10-16 07:17:16','2010-10-16 07:17:16');
/*!40000 ALTER TABLE `user_operating_systems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_os`
--

DROP TABLE IF EXISTS `user_os`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user_os` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `operating_sy_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `user_os`
--

LOCK TABLES `user_os` WRITE;
/*!40000 ALTER TABLE `user_os` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_os` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_resumes`
--

DROP TABLE IF EXISTS `user_resumes`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user_resumes` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `filename` varchar(255) collate utf8_unicode_ci default NULL,
  `content_type` varchar(255) collate utf8_unicode_ci default NULL,
  `size` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `user_resumes`
--

LOCK TABLES `user_resumes` WRITE;
/*!40000 ALTER TABLE `user_resumes` DISABLE KEYS */;
INSERT INTO `user_resumes` VALUES (1,36,'JASEER-resume.doc','application/msword',123392,'2010-10-04 07:15:06','2010-10-04 07:15:06'),(7,33,'pppp.doc','application/msword',59392,'2010-10-11 08:20:44','2010-10-11 08:20:44'),(8,39,'Project.doc','application/msword',100864,'2010-10-13 08:40:19','2010-10-13 08:40:19');
/*!40000 ALTER TABLE `user_resumes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_webtools`
--

DROP TABLE IF EXISTS `user_webtools`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `user_webtools` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) default NULL,
  `web_tool_id` int(11) default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `user_webtools`
--

LOCK TABLES `user_webtools` WRITE;
/*!40000 ALTER TABLE `user_webtools` DISABLE KEYS */;
INSERT INTO `user_webtools` VALUES (26,31,11,'2010-09-29 10:07:05','2010-09-29 10:07:05'),(27,31,12,'2010-09-29 10:07:05','2010-09-29 10:07:05'),(30,43,12,'2010-10-08 05:52:22','2010-10-08 05:52:22');
/*!40000 ALTER TABLE `user_webtools` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `login` varchar(255) collate utf8_unicode_ci default NULL,
  `fname` varchar(255) collate utf8_unicode_ci default NULL,
  `lname` varchar(255) collate utf8_unicode_ci default NULL,
  `email` varchar(255) collate utf8_unicode_ci default NULL,
  `phone_no` bigint(20) default NULL,
  `adressline1` varchar(255) collate utf8_unicode_ci default NULL,
  `adressline2` varchar(255) collate utf8_unicode_ci default NULL,
  `crypted_password` varchar(40) collate utf8_unicode_ci default NULL,
  `salt` varchar(40) collate utf8_unicode_ci default NULL,
  `status` varchar(255) collate utf8_unicode_ci default 'user',
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `remember_token` varchar(255) collate utf8_unicode_ci default NULL,
  `remember_token_expires_at` datetime default NULL,
  `pin` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Admin',NULL,'','info@sparksupport.com',1234,NULL,NULL,'0ac2deb6cd99a598df5b137b8a54f55452d74c15','b83a57f7ddd76606ed6fe6e004a7ce36e013b89f','admin','2010-09-06 07:47:07','2010-09-06 07:47:07',NULL,NULL,NULL),(32,'Bijo1','Bijo','P G','Bijo@gmail.com',1234567893,'ssssssss','','de60579b4c145a6d31a9dd0ed8f75dc0aa7464cc','d7f75de4b3116ad9deefdea8e7c16fb5988cd837','user','2010-09-30 12:07:26','2010-09-30 12:12:30',NULL,NULL,123456),(33,'asha','Asha','cm','asha@gmail.com',9876521837,'\" Nivas\",ssssss','','264eff66505baf3d82d6a61b2bccd0d53dd1a96c','ccc36bf446618b04da090a82ea2c5f51f6c7f1b3','user','2010-10-01 10:35:47','2010-10-01 10:36:40',NULL,NULL,680923),(34,'Shine Mathew','Shine ','Mathew','shine@sparksupport.com',9048286521,'Cusat , S.KALAMASSERY ','Cochin','eec6c15331df76b5e3a049a70c83ab7025526433','0c066f8312d6459beff724b2d5597376c18c1707','user','2010-10-02 06:33:16','2010-10-02 06:43:34',NULL,NULL,682022),(35,'Hans Emmanuel','Hans','Emmanuel','hans@sparksupport.com',9744167260,'Nedumthakady (H)','Kudamaloor P.O ,Kottayam','0258d3978aec5e9a71690d57d18107e81e3b824a','797cbf4331e1aee84d3852d8981162b83df30194','user','2010-10-04 06:34:34','2010-10-04 06:52:06',NULL,NULL,686017),(36,'Jaseer','Jaseer ','T K','jaseer@sparksupport.com',8089847849,'Thayyil karuthodi (h),','Ramapuram PO, Malappuram','27fd5d392fde7c9c3714a5f8daa1d4c94d66675d','61f7d70b94bd21bbde5ab9b7d2c669cef605009c','user','2010-10-04 07:06:11','2010-10-04 12:53:39',NULL,NULL,679350),(37,'Sujith','Sujith','Paily K','sujith@sparksupport.com',9895696956,'Kanappilly(H),Vadakkekara PO','North Paravoor','c1f22df835a1992fbe8b94ab8328e0cad43ee3fc','2ea9e09fb16e379f9ef5b01dde08e9ff5e11bef2','user','2010-10-04 12:28:37','2010-10-04 12:36:38',NULL,NULL,683522),(38,'vishnu',NULL,NULL,'vishnu@sparksupport.com',NULL,NULL,NULL,'c562297fa72d0a52804167cd8e0197f04d160e07','331da4b05219e0d310330362d474f0155e62231c','user','2010-10-04 12:31:04','2010-10-04 12:31:04',NULL,NULL,NULL),(39,'Sanoj ','Sanoj','VS','sanojvs@sparksupport.com',9895538930,'Krishna Vilasam','Venganoor PO','ba4ea15fa69831ef5078765b6076565af90691e4','5f514a6a9678fd5eab6d14062bef47da23b3d99b','user','2010-10-05 09:03:47','2010-10-05 09:07:10',NULL,NULL,695523),(40,'haridas','Haridas','N','haridas@sparksupport.com',9048204979,'Poongode Kalam','Pothundy PO,Nemmara, Palakkad','7cd7214e0703146e89c4e119f67a62dc130a42b2','be599b7805783a3f0add39bd53fbca961633268f','user','2010-10-05 10:10:11','2010-10-05 15:46:03',NULL,NULL,678508),(41,'tino','Tino ','Thomas','tino@sparksupport.com',9446586569,'kayamkulathussserry(h) perumpanachy p.o','changanacherry ','920aad784df0512a3e388d0c57b9a048df77d786','066faacc7f80ef59673a5aae00c09f49a664b042','user','2010-10-05 10:33:30','2010-10-14 12:57:50',NULL,NULL,686536),(42,'bnisha',NULL,NULL,'bnisha@sparksupport.com',NULL,NULL,NULL,'ae579f955839442374d71de6b5e5503dcb24b0ee','ec2400947c17f5c8c7d1e500f9d354237cde5b76','user','2010-10-06 09:57:36','2010-10-06 09:57:36',NULL,NULL,NULL),(43,'Aneesh','Aneesh','Kumar','aneeshk@sparksupport.com',9809006193,'','','77019cd126e1ff9c324c6252d679ead6ba70d7a9','6bf62a7c69259177c86a09db33fc38b4f572cba1','user','2010-10-08 05:37:43','2010-10-08 05:55:20',NULL,NULL,NULL),(44,'test','TEST','IT','test@gmail.com',NULL,'','','a159725772b78d531b4ed3102ee23075f67885d5','3dc25c4b311deec0923879df2270737786069936','user','2010-10-13 11:25:53','2010-10-13 11:26:35',NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_tools`
--

DROP TABLE IF EXISTS `web_tools`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `web_tools` (
  `id` int(11) NOT NULL auto_increment,
  `web_tool` varchar(255) collate utf8_unicode_ci default NULL,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `web_tools`
--

LOCK TABLES `web_tools` WRITE;
/*!40000 ALTER TABLE `web_tools` DISABLE KEYS */;
INSERT INTO `web_tools` VALUES (11,'MAYA','2010-09-20 00:50:25','2010-09-20 00:50:25'),(12,'PAINT','2010-09-20 00:50:30','2010-09-20 00:50:30'),(13,'FIREWORKS','2010-09-28 05:23:46','2010-09-28 05:23:46');
/*!40000 ALTER TABLE `web_tools` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-10-16 12:34:17
