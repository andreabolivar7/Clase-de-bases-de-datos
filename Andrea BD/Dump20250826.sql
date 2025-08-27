-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: ejemplo
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `docentes`
--

DROP TABLE IF EXISTS `docentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docentes` (
  `doc_id` int NOT NULL AUTO_INCREMENT,
  `doc_nombre` varchar(100) NOT NULL,
  `doc_correo` varchar(255) NOT NULL,
  PRIMARY KEY (`doc_id`),
  UNIQUE KEY `doc_correo` (`doc_correo`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docentes`
--

LOCK TABLES `docentes` WRITE;
/*!40000 ALTER TABLE `docentes` DISABLE KEYS */;
INSERT INTO `docentes` VALUES (1,'Ana Castillo','ana.castillo1@example.com'),(2,'Pedro Vargas','pedro.vargas2@example.com'),(3,'Lucía Morales','lucia.morales3@example.com'),(4,'Jorge Ramírez','jorge.ramirez4@example.com'),(5,'Camila Ortega','camila.ortega5@example.com'),(6,'Diego Herrera','diego.herrera6@example.com'),(7,'Valeria Rojas','valeria.rojas7@example.com'),(8,'Sebastián Martínez','sebastian.martinez8@example.com'),(9,'Isabela Flores','isabela.flores9@example.com'),(10,'Fernando Gómez','fernando.gomez10@example.com'),(11,'Sofía Torres','sofia.torres11@example.com'),(12,'Andrés Jiménez','andres.jimenez12@example.com'),(13,'Natalia Mendoza','natalia.mendoza13@example.com'),(14,'Javier Sánchez','javier.sanchez14@example.com'),(15,'Daniela Blanco','daniela.blanco15@example.com'),(16,'Santiago Ruiz','santiago.ruiz16@example.com'),(17,'Mariana Castro','mariana.castro17@example.com'),(18,'Luis Pérez','luis.perez18@example.com'),(19,'Ana Martínez','ana.martinez19@example.com'),(20,'David Herrera','david.herrera20@example.com');
/*!40000 ALTER TABLE `docentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docentes_materias`
--

DROP TABLE IF EXISTS `docentes_materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docentes_materias` (
  `doc_id` int NOT NULL,
  `mat_id` int NOT NULL,
  PRIMARY KEY (`doc_id`,`mat_id`),
  KEY `mat_id` (`mat_id`),
  CONSTRAINT `docentes_materias_ibfk_1` FOREIGN KEY (`doc_id`) REFERENCES `docentes` (`doc_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `docentes_materias_ibfk_2` FOREIGN KEY (`mat_id`) REFERENCES `materias` (`mat_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docentes_materias`
--

LOCK TABLES `docentes_materias` WRITE;
/*!40000 ALTER TABLE `docentes_materias` DISABLE KEYS */;
INSERT INTO `docentes_materias` VALUES (1,1),(8,1),(16,1),(1,2),(9,2),(16,2),(2,3),(9,3),(17,3),(2,4),(10,4),(17,4),(3,5),(10,5),(18,5),(3,6),(11,6),(18,6),(4,7),(11,7),(19,7),(4,8),(12,8),(19,8),(5,9),(12,9),(20,9),(5,10),(13,10),(20,10),(6,11),(13,11),(6,12),(14,12),(7,13),(14,13),(7,14),(15,14),(8,15),(15,15);
/*!40000 ALTER TABLE `docentes_materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiantes`
--

DROP TABLE IF EXISTS `estudiantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiantes` (
  `est_id` int NOT NULL AUTO_INCREMENT,
  `est_nombre` varchar(100) NOT NULL,
  `est_carrera` varchar(60) NOT NULL,
  `est_celular` varchar(20) NOT NULL DEFAULT '20',
  `est_correo` varchar(255) NOT NULL,
  `est_inscripcion` timestamp NOT NULL,
  PRIMARY KEY (`est_id`),
  UNIQUE KEY `est_correo` (`est_correo`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiantes`
--

LOCK TABLES `estudiantes` WRITE;
/*!40000 ALTER TABLE `estudiantes` DISABLE KEYS */;
INSERT INTO `estudiantes` VALUES (1,'Andrés Gómez','Ingeniería Informática','3001234567','andres.gomez@example.com','2022-05-14 14:23:00'),(2,'María Fernández','Administración de Empresas','3109876543','maria.fernandez@example.com','2023-02-10 19:45:00'),(3,'Carlos Ramírez','Psicología','3201122334','carlos.ramirez@example.com','2021-11-23 21:12:00'),(4,'Laura Sánchez','Medicina','3156677889','laura.sanchez@example.com','2020-09-15 16:05:00'),(5,'Juan Pérez','Ingeniería Industrial','3123456789','juan.perez@example.com','2023-06-01 13:30:00'),(6,'Sofía López','Contaduría Pública','3102233445','sofia.lopez@example.com','2021-12-05 15:20:00'),(7,'Diego Martínez','Derecho','3133445566','diego.martinez@example.com','2022-01-18 20:40:00'),(8,'Valentina Torres','Arquitectura','3144556677','valentina.torres@example.com','2020-07-22 17:00:00'),(9,'Sebastián Ruiz','Educación','3112233445','sebastian.ruiz@example.com','2023-03-30 14:15:00'),(10,'Camila Rojas','Ingeniería Civil','3199988776','camila.rojas@example.com','2022-10-11 19:50:00'),(11,'Felipe Morales','Ingeniería Informática','3188776655','felipe.morales@example.com','2021-08-07 22:05:00'),(12,'Isabella Castro','Administración de Empresas','3177665544','isabella.castro@example.com','2023-05-19 15:30:00'),(13,'Andrés Torres','Psicología','3166554433','andres.torres@example.com','2022-03-29 16:45:00'),(14,'Natalia Vargas','Medicina','3155443322','nataliavargas@example.com','2020-11-12 21:20:00'),(15,'Javier Ortiz','Ingeniería Industrial','3144332211','javier.ortiz@example.com','2023-01-25 18:50:00'),(16,'Daniela Herrera','Contaduría Pública','3133221100','daniela.herrera@example.com','2021-07-16 14:10:00'),(17,'Santiago Muñoz','Derecho','3122110099','santiago.munoz@example.com','2022-09-03 17:15:00'),(18,'Camila Mendoza','Arquitectura','3111009988','camila.mendoza@example.com','2023-04-21 20:35:00'),(19,'Jorge Silva','Educación','3100998877','jorge.silva@example.com','2022-06-10 15:55:00'),(20,'Mariana Blanco','Ingeniería Civil','3099887766','mariana.blanco@example.com','2021-02-28 19:25:00'),(61,'Andrés Gómez','Ingeniería Informática','3001234567','andres.gomez1@example.com','2022-05-14 14:23:00'),(62,'María Fernández','Administración de Empresas','3109876543','maria.fernandez2@example.com','2023-02-10 19:45:00'),(63,'Carlos Ramírez','Psicología','3201122334','carlos.ramirez3@example.com','2021-11-23 21:12:00'),(64,'Laura Sánchez','Medicina','3156677889','laura.sanchez4@example.com','2020-09-15 16:05:00'),(65,'Juan Pérez','Ingeniería Industrial','3123456789','juan.perez5@example.com','2023-06-01 13:30:00'),(66,'Sofía López','Contaduría Pública','3102233445','sofia.lopez6@example.com','2021-12-05 15:20:00'),(67,'Diego Martínez','Derecho','3133445566','diego.martinez7@example.com','2022-01-18 20:40:00'),(68,'Valentina Torres','Arquitectura','3144556677','valentina.torres8@example.com','2020-07-22 17:00:00'),(69,'Sebastián Ruiz','Educación','3112233445','sebastian.ruiz9@example.com','2023-03-30 14:15:00'),(70,'Camila Rojas','Ingeniería Civil','3199988776','camila.rojas10@example.com','2022-10-11 19:50:00'),(71,'Felipe Morales','Ingeniería Informática','3188776655','felipe.morales11@example.com','2021-08-07 22:05:00'),(72,'Isabella Castro','Administración de Empresas','3177665544','isabella.castro12@example.com','2023-05-19 15:30:00'),(73,'Andrés Torres','Psicología','3166554433','andres.torres13@example.com','2022-03-29 16:45:00'),(74,'Natalia Vargas','Medicina','3155443322','nataliavargas14@example.com','2020-11-12 21:20:00'),(75,'Javier Ortiz','Ingeniería Industrial','3144332211','javier.ortiz15@example.com','2023-01-25 18:50:00'),(76,'Daniela Herrera','Contaduría Pública','3133221100','daniela.herrera16@example.com','2021-07-16 14:10:00'),(77,'Santiago Muñoz','Derecho','3122110099','santiago.munoz17@example.com','2022-09-03 17:15:00'),(78,'Camila Mendoza','Arquitectura','3111009988','camila.mendoza18@example.com','2023-04-21 20:35:00'),(79,'Jorge Silva','Educación','3100998877','jorge.silva19@example.com','2022-06-10 15:55:00'),(80,'Mariana Blanco','Ingeniería Civil','3099887766','mariana.blanco20@example.com','2021-02-28 19:25:00'),(81,'Luis Herrera','Ingeniería Informática','3009876543','luis.herrera21@example.com','2022-08-15 13:00:00'),(82,'Ana Morales','Administración de Empresas','3101234567','ana.morales22@example.com','2023-07-19 17:45:00'),(83,'David Castro','Psicología','3202233445','david.castro23@example.com','2021-04-01 21:30:00'),(84,'Laura Gómez','Medicina','3153344556','laura.gomez24@example.com','2020-12-22 14:15:00'),(85,'Mario Fernández','Ingeniería Industrial','3124455667','mario.fernandez25@example.com','2023-05-11 16:00:00'),(86,'Sofía Ramírez','Contaduría Pública','3105566778','sofia.ramirez26@example.com','2021-03-14 19:50:00'),(87,'Diego Pérez','Derecho','3136677889','diego.perez27@example.com','2022-11-09 18:10:00'),(88,'Valeria Sánchez','Arquitectura','3147788990','valeria.sanchez28@example.com','2020-06-20 22:20:00'),(89,'Sergio Martínez','Educación','3118899001','sergio.martinez29@example.com','2023-02-25 15:30:00'),(90,'Camila Torres','Ingeniería Civil','3199900112','camila.torres30@example.com','2022-09-10 20:40:00'),(91,'Fernando Ruiz','Ingeniería Informática','3181001223','fernando.ruiz31@example.com','2021-07-19 17:20:00'),(92,'Isabela Vargas','Administración de Empresas','3172112334','isabela.vargas32@example.com','2023-03-05 14:10:00'),(93,'Andrés Ortega','Psicología','3163223445','andres.ortega33@example.com','2022-05-22 19:35:00'),(94,'Natalia Hernández','Medicina','3154334556','natalia.hernandez34@example.com','2020-10-30 21:50:00'),(95,'Javier Torres','Ingeniería Industrial','3145445667','javier.torres35@example.com','2023-01-12 18:45:00'),(96,'Daniela Flores','Contaduría Pública','3136556778','daniela.flores36@example.com','2021-08-18 14:55:00'),(97,'Santiago Mendoza','Derecho','3127667889','santiago.mendoza37@example.com','2022-07-22 20:10:00'),(98,'Camila Herrera','Arquitectura','3118778990','camila.herrera38@example.com','2023-05-14 17:00:00'),(99,'Jorge Gómez','Educación','3109889001','jorge.gomez39@example.com','2022-04-18 15:40:00'),(100,'Mariana Castro','Ingeniería Civil','3090990112','mariana.castro40@example.com','2021-03-28 19:15:00'),(101,'Luis Ramos','Ingeniería Informática','3001100223','luis.ramos41@example.com','2022-06-10 13:30:00'),(102,'Ana Morales','Administración de Empresas','3102211334','ana.morales42@example.com','2023-08-24 17:50:00'),(103,'David García','Psicología','3203322445','david.garcia43@example.com','2021-02-19 21:20:00'),(104,'Laura Pérez','Medicina','3154433556','laura.perez44@example.com','2020-11-10 14:30:00'),(105,'Mario Torres','Ingeniería Industrial','3125544667','mario.torres45@example.com','2023-07-01 16:10:00'),(106,'Sofía López','Contaduría Pública','3106655778','sofia.lopez46@example.com','2021-06-16 19:45:00'),(107,'Diego Martínez','Derecho','3137766889','diego.martinez47@example.com','2022-12-08 18:25:00'),(108,'Valeria Sánchez','Arquitectura','3148877990','valeria.sanchez48@example.com','2020-08-14 22:55:00'),(109,'Sergio Fernández','Educación','3119988001','sergio.fernandez49@example.com','2023-04-28 15:20:00'),(110,'Camila Ruiz','Ingeniería Civil','3190099112','camila.ruiz50@example.com','2022-11-07 20:55:00'),(111,'Fernando Ortiz','Ingeniería Informática','3181200223','fernando.ortiz51@example.com','2021-09-19 17:15:00'),(112,'Isabela Castillo','Administración de Empresas','3172311334','isabela.castillo52@example.com','2023-06-01 14:40:00'),(113,'Andrés González','Psicología','3163422445','andres.gonzalez53@example.com','2022-08-26 19:05:00'),(114,'Natalia Mendoza','Medicina','3154533556','natalia.mendoza54@example.com','2020-09-11 21:30:00'),(115,'Javier Romero','Ingeniería Industrial','3145644667','javier.romero55@example.com','2023-03-13 18:15:00'),(116,'Daniela Soto','Contaduría Pública','3136755778','daniela.soto56@example.com','2021-10-19 15:05:00'),(117,'Santiago Delgado','Derecho','3127866889','santiago.delgado57@example.com','2022-06-22 20:30:00'),(118,'Camila Vargas','Arquitectura','3118977990','camila.vargas58@example.com','2023-07-14 17:50:00'),(119,'Jorge Flores','Educación','3109088001','jorge.flores59@example.com','2022-05-18 15:20:00'),(120,'Mariana Romero','Ingeniería Civil','3090199112','mariana.romero60@example.com','2021-04-28 19:45:00'),(121,'Luis Herrera','Ingeniería Informática','3001300223','luis.herrera61@example.com','2022-07-10 13:30:00'),(122,'Ana González','Administración de Empresas','3102411334','ana.gonzalez62@example.com','2023-09-24 17:50:00'),(123,'David Fernández','Psicología','3203522445','david.fernandez63@example.com','2021-03-19 21:20:00'),(124,'Laura Sánchez','Medicina','3154633556','laura.sanchez64@example.com','2020-12-10 14:30:00'),(125,'Mario López','Ingeniería Industrial','3125744667','mario.lopez65@example.com','2023-08-01 16:10:00'),(126,'Sofía García','Contaduría Pública','3106855778','sofia.garcia66@example.com','2021-07-16 19:45:00'),(127,'Diego Torres','Derecho','3137966889','diego.torres67@example.com','2022-01-08 18:25:00'),(128,'Valeria Díaz','Arquitectura','3148077990','valeria.diaz68@example.com','2020-10-14 22:55:00'),(129,'Sergio Castro','Educación','3119188001','sergio.castro69@example.com','2023-06-28 15:20:00'),(130,'Camila Jiménez','Ingeniería Civil','3190199112','camila.jimenez70@example.com','2022-12-07 20:55:00'),(131,'Fernando Morales','Ingeniería Informática','3181300223','fernando.morales71@example.com','2021-10-19 17:15:00'),(132,'Isabela Pérez','Administración de Empresas','3172411334','isabela.perez72@example.com','2023-07-01 14:40:00'),(133,'Andrés Ruiz','Psicología','3163522445','andres.ruiz73@example.com','2022-09-26 19:05:00'),(134,'Natalia Flores','Medicina','3154633556','natalia.flores74@example.com','2020-11-11 21:30:00'),(135,'Javier Hernández','Ingeniería Industrial','3145744667','javier.hernandez75@example.com','2023-04-13 18:15:00'),(136,'Daniela Romero','Contaduría Pública','3136855778','daniela.romero76@example.com','2021-12-19 15:05:00'),(137,'Santiago Ortega','Derecho','3127966889','santiago.ortega77@example.com','2022-08-22 20:30:00'),(138,'Camila Castillo','Arquitectura','3118077990','camila.castillo78@example.com','2023-09-14 17:50:00'),(139,'Jorge Mendoza','Educación','3109188001','jorge.mendoza79@example.com','2022-07-18 15:20:00'),(140,'Mariana Jiménez','Ingeniería Civil','3090299112','mariana.jimenez80@example.com','2021-06-28 19:45:00'),(141,'Luis García','Ingeniería Informática','3001400223','luis.garcia81@example.com','2022-09-10 13:30:00'),(142,'Ana Torres','Administración de Empresas','3102511334','ana.torres82@example.com','2023-10-24 17:50:00'),(143,'David Sánchez','Psicología','3203622445','david.sanchez83@example.com','2021-04-19 21:20:00'),(144,'Laura Flores','Medicina','3154733556','laura.flores84@example.com','2020-12-10 14:30:00'),(145,'Mario Gómez','Ingeniería Industrial','3125844667','mario.gomez85@example.com','2023-09-01 16:10:00'),(146,'Sofía Martínez','Contaduría Pública','3106955778','sofia.martinez86@example.com','2021-08-16 19:45:00'),(147,'Diego Jiménez','Derecho','3138066889','diego.jimenez87@example.com','2022-02-08 18:25:00'),(148,'Valeria Pérez','Arquitectura','3148177990','valeria.perez88@example.com','2020-11-14 22:55:00'),(149,'Sergio Hernández','Educación','3119288001','sergio.hernandez89@example.com','2023-07-28 15:20:00'),(150,'Camila González','Ingeniería Civil','3190299112','camila.gonzalez90@example.com','2022-01-07 20:55:00'),(151,'Fernando Torres','Ingeniería Informática','3181400223','fernando.torres91@example.com','2021-11-19 17:15:00'),(152,'Isabela Ramírez','Administración de Empresas','3172511334','isabela.ramirez92@example.com','2023-08-01 14:40:00'),(153,'Andrés Flores','Psicología','3163622445','andres.flores93@example.com','2022-10-26 19:05:00'),(154,'Natalia Jiménez','Medicina','3154733556','natalia.jimenez94@example.com','2020-12-11 21:30:00'),(155,'Javier García','Ingeniería Industrial','3145844667','javier.garcia95@example.com','2023-05-13 18:15:00'),(156,'Daniela Pérez','Contaduría Pública','3136955778','daniela.perez96@example.com','2022-01-19 15:05:00'),(157,'Santiago Martínez','Derecho','3128066889','santiago.martinez97@example.com','2022-09-22 20:30:00'),(158,'Camila Gómez','Arquitectura','3118177990','camila.gomez98@example.com','2023-10-14 17:50:00'),(159,'Jorge López','Educación','3109288001','jorge.lopez99@example.com','2022-08-18 15:20:00'),(160,'Mariana Torres','Ingeniería Civil','3090399112','mariana.torres100@example.com','2021-07-28 19:45:00');
/*!40000 ALTER TABLE `estudiantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiantes_materias`
--

DROP TABLE IF EXISTS `estudiantes_materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiantes_materias` (
  `est_id` int NOT NULL,
  `mat_id` int NOT NULL,
  PRIMARY KEY (`est_id`,`mat_id`),
  KEY `mat_id` (`mat_id`),
  CONSTRAINT `estudiantes_materias_ibfk_1` FOREIGN KEY (`est_id`) REFERENCES `estudiantes` (`est_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `estudiantes_materias_ibfk_2` FOREIGN KEY (`mat_id`) REFERENCES `materias` (`mat_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiantes_materias`
--

LOCK TABLES `estudiantes_materias` WRITE;
/*!40000 ALTER TABLE `estudiantes_materias` DISABLE KEYS */;
INSERT INTO `estudiantes_materias` VALUES (1,1),(6,1),(10,1),(15,1),(20,1),(1,2),(7,2),(11,2),(16,2),(1,3),(8,3),(11,3),(16,3),(2,4),(6,4),(11,4),(16,4),(2,5),(7,5),(12,5),(17,5),(2,6),(8,6),(12,6),(17,6),(3,7),(6,7),(12,7),(17,7),(3,8),(7,8),(13,8),(18,8),(3,9),(8,9),(13,9),(18,9),(4,10),(9,10),(13,10),(18,10),(4,11),(10,11),(14,11),(19,11),(4,12),(14,12),(19,12),(5,13),(9,13),(14,13),(19,13),(5,14),(10,14),(15,14),(20,14),(5,15),(9,15),(15,15),(20,15);
/*!40000 ALTER TABLE `estudiantes_materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materias`
--

DROP TABLE IF EXISTS `materias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `materias` (
  `mat_id` int NOT NULL AUTO_INCREMENT,
  `mat_nombre` varchar(60) NOT NULL,
  PRIMARY KEY (`mat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materias`
--

LOCK TABLES `materias` WRITE;
/*!40000 ALTER TABLE `materias` DISABLE KEYS */;
INSERT INTO `materias` VALUES (1,'Matemáticas'),(2,'Física'),(3,'Química'),(4,'Biología'),(5,'Historia'),(6,'Geografía'),(7,'Literatura'),(8,'Inglés'),(9,'Programación'),(10,'Bases de Datos'),(11,'Sistemas Operativos'),(12,'Redes'),(13,'Economía'),(14,'Psicología'),(15,'Sociología');
/*!40000 ALTER TABLE `materias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas` (
  `nota_id` int NOT NULL AUTO_INCREMENT,
  `mat_id` int NOT NULL,
  `est_id` int NOT NULL,
  `nota` float NOT NULL,
  PRIMARY KEY (`nota_id`),
  KEY `mat_id` (`mat_id`),
  KEY `est_id` (`est_id`),
  CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`mat_id`) REFERENCES `materias` (`mat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `notas_ibfk_2` FOREIGN KEY (`est_id`) REFERENCES `estudiantes` (`est_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutorias`
--

DROP TABLE IF EXISTS `tutorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutorias` (
  `tut_id` int NOT NULL AUTO_INCREMENT,
  `tut_fecha_hora` timestamp NOT NULL,
  `tut_tema` varchar(100) NOT NULL,
  `mat_id` int NOT NULL,
  `est_id` int NOT NULL,
  `doc_id` int NOT NULL,
  `tut_seguimiento` text NOT NULL,
  PRIMARY KEY (`tut_id`),
  KEY `mat_id` (`mat_id`),
  KEY `est_id` (`est_id`),
  KEY `doc_id` (`doc_id`),
  CONSTRAINT `tutorias_ibfk_1` FOREIGN KEY (`mat_id`) REFERENCES `materias` (`mat_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tutorias_ibfk_2` FOREIGN KEY (`est_id`) REFERENCES `estudiantes` (`est_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tutorias_ibfk_3` FOREIGN KEY (`doc_id`) REFERENCES `docentes` (`doc_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorias`
--

LOCK TABLES `tutorias` WRITE;
/*!40000 ALTER TABLE `tutorias` DISABLE KEYS */;
INSERT INTO `tutorias` VALUES (1,'2023-08-01 15:00:00','Repaso de álgebra',1,1,1,'El estudiante comprendió los conceptos básicos.'),(2,'2023-08-02 16:30:00','Física: leyes de Newton',2,2,2,'Se recomienda practicar problemas adicionales.'),(3,'2023-08-03 14:15:00','Química orgánica',3,3,3,'Dudas aclaradas, buen desempeño.'),(4,'2023-08-04 19:00:00','Biología celular',4,4,4,'Repasar mitosis para próxima clase.'),(5,'2023-08-05 18:45:00','Historia contemporánea',5,5,5,'Estudiante muy participativo.'),(6,'2023-08-06 20:00:00','Geografía física',6,6,6,'Pendiente entregar mapa topográfico.'),(7,'2023-08-07 17:30:00','Literatura clásica',7,7,7,'Analizar más textos literarios.'),(8,'2023-08-08 13:45:00','Inglés básico',8,8,8,'Mejorar pronunciación.'),(9,'2023-08-09 15:15:00','Programación en Python',9,9,9,'Repasar estructuras de datos.'),(10,'2023-08-10 16:00:00','Bases de datos relacionales',10,10,10,'Realizar prácticas adicionales.'),(11,'2023-08-11 14:30:00','Sistemas operativos',11,11,11,'Buen manejo de conceptos.'),(12,'2023-08-12 19:15:00','Redes de computadoras',12,12,12,'Estudiante muy interesado.'),(13,'2023-08-13 18:00:00','Economía básica',13,13,13,'Analizar casos prácticos.'),(14,'2023-08-14 20:30:00','Psicología social',14,14,14,'Participación activa.'),(15,'2023-08-15 17:00:00','Sociología general',15,15,15,'Se sugiere leer capítulo 5.'),(16,'2023-08-16 15:00:00','Repaso de álgebra',1,16,1,'Avance satisfactorio.'),(17,'2023-08-17 16:30:00','Física: leyes de Newton',2,17,2,'Practicar ejercicios.'),(18,'2023-08-18 14:15:00','Química orgánica',3,18,3,'Repasar fórmulas químicas.'),(19,'2023-08-19 19:00:00','Biología celular',4,19,4,'Revisar conceptos.'),(20,'2023-08-20 18:45:00','Historia contemporánea',5,20,5,'Excelente interés.'),(21,'2023-08-21 20:00:00','Geografía física',6,1,6,'Dudas resueltas.'),(22,'2023-08-22 17:30:00','Literatura clásica',7,2,7,'Ejercicios asignados.'),(23,'2023-08-23 13:45:00','Inglés básico',8,3,8,'Pronunciación mejorada.'),(24,'2023-08-24 15:15:00','Programación en Python',9,4,9,'Buen avance.'),(25,'2023-08-25 16:00:00','Bases de datos relacionales',10,5,10,'Prácticas en curso.');
/*!40000 ALTER TABLE `tutorias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-26 21:27:52
