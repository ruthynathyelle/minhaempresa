-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: minhaempresa2023
-- ------------------------------------------------------
-- Server version	8.0.33

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
  `id` bigint NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add Cargo',7,'add_cargo'),(26,'Can change Cargo',7,'change_cargo'),(27,'Can delete Cargo',7,'delete_cargo'),(28,'Can view Cargo',7,'view_cargo'),(29,'Can add Funcionário',8,'add_funcionario'),(30,'Can change Funcionário',8,'change_funcionario'),(31,'Can delete Funcionário',8,'delete_funcionario'),(32,'Can view Funcionário',8,'view_funcionario'),(33,'Can add Serviço',9,'add_servico'),(34,'Can change Serviço',9,'change_servico'),(35,'Can delete Serviço',9,'delete_servico'),(36,'Can view Serviço',9,'view_servico');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$YmdEYgUf0VAIvwbk6FtCN2$3SqxfpMazNWunko+Vl3L6oAODIr4AVOpOPleXeFgGYE=','2023-08-28 23:44:42.825749',1,'admin','','','admin@admin.com',1,1,'2023-08-22 00:30:09.851261');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
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
  `id` bigint NOT NULL AUTO_INCREMENT,
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
-- Table structure for table `core_cargo`
--

DROP TABLE IF EXISTS `core_cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_cargo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `criado` datetime(6) NOT NULL,
  `modificado` datetime(6) NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_cargo`
--

LOCK TABLES `core_cargo` WRITE;
/*!40000 ALTER TABLE `core_cargo` DISABLE KEYS */;
INSERT INTO `core_cargo` VALUES (1,'2023-08-22 00:34:56.786560','2023-08-22 01:06:35.626370',1,'Programador'),(2,'2023-08-22 01:14:24.236992','2023-08-22 01:14:24.236992',1,'Estagiário'),(3,'2023-08-22 01:19:15.713189','2023-08-22 01:19:15.713189',1,'Desensenvolvedor Front End');
/*!40000 ALTER TABLE `core_cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_funcionario`
--

DROP TABLE IF EXISTS `core_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_funcionario` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `criado` datetime(6) NOT NULL,
  `modificado` datetime(6) NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `biografia` longtext NOT NULL,
  `foto` varchar(100) NOT NULL,
  `facebook` varchar(100) NOT NULL,
  `twitter` varchar(100) NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `cargo_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `core_funcionario_cargo_id_43291cdf_fk_core_cargo_id` (`cargo_id`),
  CONSTRAINT `core_funcionario_cargo_id_43291cdf_fk_core_cargo_id` FOREIGN KEY (`cargo_id`) REFERENCES `core_cargo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_funcionario`
--

LOCK TABLES `core_funcionario` WRITE;
/*!40000 ALTER TABLE `core_funcionario` DISABLE KEYS */;
INSERT INTO `core_funcionario` VALUES (1,'2023-08-22 01:18:21.158193','2023-08-22 01:18:21.158193',1,'Fulano de Tal','d hifua p jdpiof jisda jfpiosjdaif jsaid fjpsiodajfiosda fiosjdaif jsdapio fhpsda yhfuoisadgh fpsadpo fusaiodp fhpsaidn fiosdaif sadijf siadj fisa fpio sdapfioj sapof japsi fjpiosda','equipe/team1.jpg','facebook.com/fulano','twitter.com/fulano','@fulanooficial',1),(2,'2023-08-22 01:20:45.600621','2023-08-22 01:20:45.600621',1,'Kimberly Lorrayne','dkapojfdoia op fsdapio fjpsiodaj fpiosda fpio sdafio jsdaiof jpsioda fjpiosa fjpiofpio sdapfio jsdapiof jsdapoi fjpsioda fpio safp jaspiof sdaij fpsoda fjpapoisdaf','equipe/team2.jpg','facebook.com/kim','twitter.com/kim','@kimberly',2),(3,'2023-08-22 01:21:20.455267','2023-08-22 01:21:20.455267',1,'Maria de Lourdes','ifj poa fi sdapfio sdapiof jpsioa fjpiosa fpio sdapio fjsapidfj psioda fjiosad hfoisaoduif husida hxjczkvl nzxl vnsuda vlzsd vp avpioweav jaiopv jpwioea vjapwioe vjpwioeaj vpowiea vpiovi sdavio jasdpiov sdapvo jsapvio japsiov jdapsio vjpsoaidv','equipe/team3.jpg','facebook.com/fulano','twitter.com/fulano','@fulanooficial',3),(4,'2023-08-22 01:47:11.804925','2023-08-22 01:47:11.804925',1,'Marcos Alves Faino','Professor IFRO kodjapfj idaf jpsioda fjpiofpio jsdapfio jpsioda fjpiosa fpiojsdaiof jsapioj fpisafpi jsaiod fjiosafpiosapfio jsaopi fjoisa fo jsapiof jpsiodafsa','equipe/arroz_fantastico.jfif','facebook.com/fulano','twitter.com/fulano','@fulanooficial',1);
/*!40000 ALTER TABLE `core_funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `core_servico`
--

DROP TABLE IF EXISTS `core_servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `core_servico` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `criado` datetime(6) NOT NULL,
  `modificado` datetime(6) NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `core_servico`
--

LOCK TABLES `core_servico` WRITE;
/*!40000 ALTER TABLE `core_servico` DISABLE KEYS */;
INSERT INTO `core_servico` VALUES (1,'2023-08-28 23:45:49.893162','2023-08-28 23:45:49.893162',1,'servicos/features1.jpg','Desenvolvimento de Sites Dinâmicos','aduiohuioa dfua dufh auosid hfuiosa hfuiohsauio qe rhwe rjiwoep jio vmfdz vioam via pvio wieavj eapwiov jreapio vjiosda vjpio sdavpio japv jawe8v wae vjw0ea vj90wjeak9v s0da vk0a v sadovj sodavj sioda vjlzsdmvkosapvo sapvio sapiov jsaiod vjposiad vpio sava'),(2,'2023-08-28 23:46:15.175262','2023-08-28 23:46:15.175262',1,'servicos/features2.jpg','Desenvolvimento de Jogos','dfaujpfoai jdpio pio fjpia fdpio sdafiom çklmv piosad moisda mvpuwa f ghwoeaf woea puioweaviop jeapiow vnoa hvuovoi navi nsapui vnpioae mvivjep aw vouipweahvpwhea vio mskdviao vsdavlsdk vhlaj nosz vuio zshvpo zsiov jzvxklcz vn lsa vpio savio jspodv psdav'),(3,'2023-08-28 23:46:58.592845','2023-08-28 23:46:58.592845',1,'servicos/features3.jpg','Desenvolvimento de Aplicativos Móveis','ipo a fp iewpj fipo jawpfie jpwioea klzv mpo smvi apvoi fhopuae vhpoa vuia vpu sapiov jsioav mpsioavmpwea vhuiowa vuivio´pvo ioeweaiof jmpiof woeaif jwioeap jfp ioaempoweavpio eampiovweapiov apiowe vjpoea hviopvv jpwioea vjpwioea vpiowea vpiov jweapiov jpwioea vjpwioea vjpiowea vpiojiweav');
/*!40000 ALTER TABLE `core_servico` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-08-22 00:34:56.787561','1','Programador',1,'[{\"added\": {}}]',7,1),(2,'2023-08-22 01:06:35.627367','1','Programador',2,'[]',7,1),(3,'2023-08-22 01:14:24.237502','2','Cargo object (2)',1,'[{\"added\": {}}]',7,1),(4,'2023-08-22 01:18:21.169192','1','Fulano de Tal',1,'[{\"added\": {}}]',8,1),(5,'2023-08-22 01:19:15.714186','3','Desensenvolvedor Front End',1,'[{\"added\": {}}]',7,1),(6,'2023-08-22 01:20:45.611620','2','Kimberly Lorrayne',1,'[{\"added\": {}}]',8,1),(7,'2023-08-22 01:21:20.465281','3','Maria de Lourdes',1,'[{\"added\": {}}]',8,1),(8,'2023-08-22 01:47:11.815894','4','Marcos Alves Faino',1,'[{\"added\": {}}]',8,1),(9,'2023-08-28 23:45:49.912479','1','Desenvolvimento de Sites Dinâmicos',1,'[{\"added\": {}}]',9,1),(10,'2023-08-28 23:46:15.190009','2','Desenvolvimento de Jogos',1,'[{\"added\": {}}]',9,1),(11,'2023-08-28 23:46:58.607804','3','Desenvolvimento de Aplicativos Móveis',1,'[{\"added\": {}}]',9,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'core','cargo'),(8,'core','funcionario'),(9,'core','servico'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-08-22 00:23:20.546324'),(2,'auth','0001_initial','2023-08-22 00:23:20.799015'),(3,'admin','0001_initial','2023-08-22 00:23:20.859108'),(4,'admin','0002_logentry_remove_auto_add','2023-08-22 00:23:20.865302'),(5,'admin','0003_logentry_add_action_flag_choices','2023-08-22 00:23:20.871264'),(6,'contenttypes','0002_remove_content_type_name','2023-08-22 00:23:20.913499'),(7,'auth','0002_alter_permission_name_max_length','2023-08-22 00:23:20.941907'),(8,'auth','0003_alter_user_email_max_length','2023-08-22 00:23:20.960646'),(9,'auth','0004_alter_user_username_opts','2023-08-22 00:23:20.967626'),(10,'auth','0005_alter_user_last_login_null','2023-08-22 00:23:20.992622'),(11,'auth','0006_require_contenttypes_0002','2023-08-22 00:23:20.994617'),(12,'auth','0007_alter_validators_add_error_messages','2023-08-22 00:23:21.000223'),(13,'auth','0008_alter_user_username_max_length','2023-08-22 00:23:21.031344'),(14,'auth','0009_alter_user_last_name_max_length','2023-08-22 00:23:21.061070'),(15,'auth','0010_alter_group_name_max_length','2023-08-22 00:23:21.076587'),(16,'auth','0011_update_proxy_permissions','2023-08-22 00:23:21.082800'),(17,'auth','0012_alter_user_first_name_max_length','2023-08-22 00:23:21.120957'),(18,'core','0001_initial','2023-08-22 00:23:21.175414'),(19,'sessions','0001_initial','2023-08-22 00:23:21.192427'),(20,'core','0002_servico','2023-08-28 23:07:15.575411');
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
INSERT INTO `django_session` VALUES ('3qva2j537wycau47600alodwmwqfsvqd','.eJxVjEEOwiAQRe_C2hCnAoMu3fcMZJgBqRpISrsy3l2bdKHb_977LxVoXUpYe5rDJOqiQB1-t0j8SHUDcqd6a5pbXeYp6k3RO-16bJKe1939OyjUy7cmYz1YYMhyxGQwR4QMwJkiGUjiTtFTRnRokAdynh04GyWJFR78Wb0_8Go4ZQ:1qaluU:ECyNWeQQWleFm4mo-m2qNTNStgfRJipm8YUWWOaYryU','2023-09-11 23:44:42.831895'),('v1k9e0k9r8h77nk25sn8kumvfezhe0jl','.eJxVjEEOwiAQRe_C2hCnAoMu3fcMZJgBqRpISrsy3l2bdKHb_977LxVoXUpYe5rDJOqiQB1-t0j8SHUDcqd6a5pbXeYp6k3RO-16bJKe1939OyjUy7cmYz1YYMhyxGQwR4QMwJkiGUjiTtFTRnRokAdynh04GyWJFR78Wb0_8Go4ZQ:1qYFIV:tVcwweQ2Mrz1VOJLSwfiWocPFnEvc0aovnseSvYw9fQ','2023-09-05 00:31:03.435945');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-28 19:55:59
