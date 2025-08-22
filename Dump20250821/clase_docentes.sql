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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-21 21:27:45
