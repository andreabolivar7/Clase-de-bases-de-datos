-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: clase
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

-- Dump completed on 2025-08-21 21:27:46
