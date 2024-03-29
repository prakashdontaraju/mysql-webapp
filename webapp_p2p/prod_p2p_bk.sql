CREATE DATABASE  IF NOT EXISTS `prod_p2p` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `prod_p2p`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: prod_p2p
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.30-MariaDB

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
-- Table structure for table `db_statistics`
--

DROP TABLE IF EXISTS `db_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `db_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID of the record.',
  `description` varchar(50) DEFAULT NULL COMMENT 'Description of the record.',
  `value` int(11) DEFAULT NULL COMMENT 'Value of the record.',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Create time of the record.',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update time of the record.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='The table contains statistics of the database.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `db_statistics`
--

LOCK TABLES `db_statistics` WRITE;
/*!40000 ALTER TABLE `db_statistics` DISABLE KEYS */;
INSERT INTO `db_statistics` VALUES (1,'Total number of Proteins',44,'2018-04-29 10:35:55','2018-04-29 10:35:55'),(2,'Total number of Genes',43,'2018-04-29 10:35:55','2018-04-29 10:35:55'),(3,'Total number of UniProt Diseases',117,'2018-04-29 10:35:55','2018-04-29 10:35:55'),(4,'# pairs of data collector & disease search term',15,'2018-04-29 10:35:55','2018-04-29 10:35:55');
/*!40000 ALTER TABLE `db_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disease`
--

DROP TABLE IF EXISTS `disease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disease` (
  `uniprot_disease_name` varchar(100) NOT NULL COMMENT 'The linked disease name.',
  `uniprotkb_entry` varchar(20) NOT NULL COMMENT 'The linked protein ID.',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Create time of the record.',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update time of the record.',
  PRIMARY KEY (`uniprotkb_entry`,`uniprot_disease_name`),
  KEY `fk_disease_uniprot_disease1_idx` (`uniprot_disease_name`),
  CONSTRAINT `fk_disease_protein1` FOREIGN KEY (`uniprotkb_entry`) REFERENCES `protein` (`uniprotkb_entry`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_disease_uniprot_disease1` FOREIGN KEY (`uniprot_disease_name`) REFERENCES `uniprot_disease` (`uniprot_disease_name`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The table that links protein with diseases.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disease`
--

LOCK TABLES `disease` WRITE;
/*!40000 ALTER TABLE `disease` DISABLE KEYS */;
INSERT INTO `disease` VALUES ('Aplastic anemia ','O14746','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Dyskeratosis congenita, autosomal dominant, 2 ','O14746','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Dyskeratosis congenita, autosomal recessive, 4 ','O14746','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Pulmonary fibrosis, and/or bone marrow failure, telomere-related, 1 ','O14746','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Parkinson disease ','O60260','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Parkinson disease 2 ','O60260','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Neurodegeneration with brain iron accumulation 2A ','O60733','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Neurodegeneration with brain iron accumulation 2B ','O60733','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Parkinson disease 14 ','O60733','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Parkinson disease 19A, juvenile-onset ','O75061','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Parkinson disease 19B, early-onset ','O75061','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Caffey disease ','P02452','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Ehlers-Danlos syndrome, classic type ','P02452','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Osteogenesis imperfecta 1 ','P02452','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Osteoporosis ','P02452','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Cardiomyopathy, dilated 1A ','P02545','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Cardiomyopathy, dilated 1A CMD1A','P02545','2018-04-29 10:05:18','2018-04-29 10:05:18'),('Emery-Dreifuss muscular dystrophy 2, autosomal dominant ','P02545','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Limb-girdle muscular dystrophy 1B ','P02545','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Lipodystrophy, familial partial, 2 ','P02545','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Lipodystrophy, familial partial, 2 FPLD2','P02545','2018-04-29 10:05:18','2018-04-29 10:05:18'),('Muscular dystrophy congenital LMNA-related ','P02545','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Alzheimer disease mitochondrial ','P03891','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Leber hereditary optic neuropathy ','P03891','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Osteogenesis imperfecta 15 ','P04628','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Osteoporosis ','P04628','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Diabetes mellitus, non-insulin-dependent ','P06213','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Familial hyperinsulinemic hypoglycemia 5 ','P06213','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Leprechaunism ','P06213','2018-04-29 10:05:18','2018-05-12 16:14:26'),('androgen insensitivity syndrome ','P10275','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Androgen insensitivity, partial ','P10275','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Spinal and bulbar muscular atrophy X-linked 1 ','P10275','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Gastrointestinal stromal tumor ','P10721','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Leukemia, acute myelogenous ','P10721','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Piebald trait ','P10721','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Testicular germ cell tumor ','P10721','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Anemia, non-spherocytic hemolytic, due to G6PD deficiency ','P11413','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Diarrhea 5, with tufting enteropathy, congenital ','P16422','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Hereditary non-polyposis colorectal cancer 8 ','P16422','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Cardiac valvular dysplasia X-linked ','P21333','2018-04-29 10:05:18','2018-05-12 16:14:26'),('FG syndrome 2 ','P21333','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Otopalatodigital syndrome 1 ','P21333','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Periventricular nodular heterotopia 1 ','P21333','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Barrett esophagus ','P21757','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Central core disease of muscle ','P21817','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Malignant hyperthermia 1 ','P21817','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Multiminicore disease with external ophthalmoplegia ','P21817','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Diarrhea 6 ','P25092','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Breast Cancer ','P31749','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Colorectal cancer ','P31749','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Cowden syndrome 6 ','P31749','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Proteus syndrome ','P31749','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Marfan syndrome ','P35555','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Overlap connective tissue disease ','P35555','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Stiff skin syndrome ','P35555','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Weill-Marchesani syndrome 2 ','P35555','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Breast Cancer ','P38398','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Breast-ovarian cancer, familial, 1 ','P38398','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Ovarian Cancer ','P38398','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Pancreatic cancer ','P38398','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Familial atypical multiple mole melanoma-pancreatic carcinoma syndrome ','P42771','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Melanoma, cutaneous malignant 2 ','P42771','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Melanoma-astrocytoma syndrome ','P42771','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Acne inversa, familial, 3 ','P49768','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Alzheimer disease 3 ','P49768','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Cardiomyopathy, dilated 1U ','P49768','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Frontotemporal dementia ','P49768','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Breast Cancer ','P51587','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Breast-ovarian cancer, familial, 2 ','P51587','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Fanconi anemia complementation group D1 ','P51587','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Pancreatic cancer 2 ','P51587','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Autism, X-linked 3 ','P51608','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Rett syndrome ','P51608','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Atrial fibrillation, familial, 3 ','P51787','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Jervell and Lange-Nielsen syndrome 1 ','P51787','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Long QT syndrome 1 ','P51787','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Short QT syndrome 2 ','P51787','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Bannayan-Riley-Ruvalcaba syndrome ','P60484','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Cowden syndrome 1 ','P60484','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Lhermitte-Duclos disease ','P60484','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Squamous cell carcinoma of the head and neck ','P60484','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Albright hereditary osteodystrophy ','P63092','2018-04-29 10:05:18','2018-05-12 16:14:26'),('McCune-Albright syndrome ','P63092','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Pituitary adenoma, growth hormone-secreting, 1','P63092','2018-04-29 10:05:18','2018-04-29 10:05:18'),('Pseudohypoparathyroidism 1B ','P63092','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Gliomas are benign or malignant central nervous system neoplasms derived from glial cells.','P68431','2018-04-29 10:05:18','2018-04-29 10:05:18'),('Beta-thalassemia ','P68871','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Beta-thalassemia B-THAL','P68871','2018-04-29 10:05:18','2018-04-29 10:05:18'),('Beta-thalassemia, dominant, inclusion body type ','P68871','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Beta-thalassemia, dominant, inclusion body type B-THALIB','P68871','2018-04-29 10:05:18','2018-04-29 10:05:18'),('Heinz body anemias ','P68871','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Heinz body anemias HEIBAN','P68871','2018-04-29 10:05:18','2018-04-29 10:05:18'),('Sickle cell anemia ','P68871','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Sickle cell anemia SKCA','P68871','2018-04-29 10:05:18','2018-04-29 10:05:18'),('Alpha-thalassemia ','P69605','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Heinz body anemias ','P69605','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Hemoglobin H disease ','P69605','2018-04-29 10:05:18','2018-05-12 16:14:26'),('ACTH-independent macronodular adrenal hyperplasia 1 ','P84996','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Colorectal cancer ','P84996','2018-04-29 10:05:18','2018-05-12 16:14:26'),('GNAS hyperfunction ','P84996','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Pseudohypoparathyroidism 1B ','P84996','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Congenital generalized lipodystrophy 3 ','Q03135','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Pulmonary hypertension, primary, 3 ','Q03135','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Epilepsy, focal, with speech disorder and with or without mental retardation ','Q12879','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Frontotemporal dementia and/or amyotrophic lateral sclerosis 3 ','Q13501','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Myopathy, distal, with rimmed vacuoles ','Q13501','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Neurodegeneration with ataxia, dystonia, and gaze palsy, childhood-onset ','Q13501','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Paget disease of bone 3 ','Q13501','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Brugada syndrome 1 ','Q14524','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Progressive familial heart block 1A ','Q14524','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Sick sinus syndrome 1 ','Q14524','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Sudden infant death syndrome ','Q14524','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Joubert syndrome 19 ','Q2M1K9','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Nephronophthisis 14 ','Q2M1K9','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Barrett esophagus ','Q8N9N2','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Cardiomyopathy, dilated 1G ','Q8WZ42','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Cardiomyopathy, familial hypertrophic 9 ','Q8WZ42','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Hereditary myopathy with early respiratory failure ','Q8WZ42','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Tardive tibial muscular dystrophy ','Q8WZ42','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Alzheimer disease ','Q92673','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Mental retardation, X-linked 72 ','Q96DA2','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Waisman syndrome ','Q96DA2','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Barrett esophagus ','Q96SL4','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Mental retardation, autosomal dominant 26 ','Q9H2P0','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Epileptic encephalopathy, early infantile, 13 ','Q9UQD0','2018-04-29 10:05:18','2018-05-12 16:14:26'),('Parkinson disease ','Q9Y6H5','2018-04-29 10:05:18','2018-05-12 16:14:26');
/*!40000 ALTER TABLE `disease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disease_term`
--

DROP TABLE IF EXISTS `disease_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disease_term` (
  `term_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID of the record.',
  `data_collected_by` varchar(45) DEFAULT NULL COMMENT 'The name of the person collecting information about the record.',
  `disease_search_term` varchar(45) DEFAULT NULL COMMENT 'The term associated with the disease.',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Create time of the record.',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update time of the record.',
  PRIMARY KEY (`term_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='The table containing disease term records.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disease_term`
--

LOCK TABLES `disease_term` WRITE;
/*!40000 ALTER TABLE `disease_term` DISABLE KEYS */;
INSERT INTO `disease_term` VALUES (1,'person2','colon cancer','2018-04-29 10:05:17','2018-04-29 10:05:17'),(2,'person2','glioma','2018-04-29 10:05:17','2018-04-29 10:05:17'),(3,'person2','osteoporosis','2018-04-29 10:05:17','2018-04-29 10:05:17'),(4,'person2','polydactyly','2018-04-29 10:05:17','2018-04-29 10:05:17'),(5,'person2','Kidney Disease','2018-04-29 10:05:17','2018-04-29 10:05:17'),(6,'person1','dementia','2018-04-29 10:05:17','2018-04-29 10:05:17'),(7,'person1','parkinson\'s disease','2018-04-29 10:05:17','2018-04-29 10:05:17'),(8,'person3','autism','2018-04-29 10:05:17','2018-04-29 10:05:17'),(9,'person3','esophagitis','2018-04-29 10:05:17','2018-04-29 10:05:17'),(10,'person4','breast cancer','2018-04-29 10:05:17','2018-04-29 10:05:17'),(11,'person4','melanoma','2018-04-29 10:05:17','2018-04-29 10:05:17'),(12,'person5','Anemia','2018-04-29 10:05:17','2018-04-29 10:05:17'),(13,'person5','Muscle Disease','2018-04-29 10:05:17','2018-04-29 10:05:17'),(14,'person6','Diabetes','2018-04-29 10:05:17','2018-04-29 10:05:17'),(15,'person6','Blood Disease','2018-04-29 10:05:17','2018-04-29 10:05:17');
/*!40000 ALTER TABLE `disease_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disease_term_to_uniprot`
--

DROP TABLE IF EXISTS `disease_term_to_uniprot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disease_term_to_uniprot` (
  `item_number` int(11) NOT NULL COMMENT 'The ID of the record.',
  `term_id` int(11) NOT NULL COMMENT 'Linked term ID.',
  `uniprotkb_entry` varchar(20) NOT NULL COMMENT 'Linked protein ID.',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Create time of the record.',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update time of the record.',
  PRIMARY KEY (`item_number`,`term_id`),
  KEY `fk_disease_term_to_uniprot_disease_term1_idx` (`term_id`),
  KEY `fk_disease_term_to_uniprot_protein1_idx` (`uniprotkb_entry`),
  CONSTRAINT `fk_disease_term_to_uniprot_disease_term1` FOREIGN KEY (`term_id`) REFERENCES `disease_term` (`term_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_disease_term_to_uniprot_protein1` FOREIGN KEY (`uniprotkb_entry`) REFERENCES `protein` (`uniprotkb_entry`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The table that links protein to disease term.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disease_term_to_uniprot`
--

LOCK TABLES `disease_term_to_uniprot` WRITE;
/*!40000 ALTER TABLE `disease_term_to_uniprot` DISABLE KEYS */;
INSERT INTO `disease_term_to_uniprot` VALUES (1,1,'P31749','2018-04-29 10:05:17','2018-04-29 10:05:17'),(2,1,'P84996','2018-04-29 10:05:17','2018-04-29 10:05:17'),(3,1,'P16422','2018-04-29 10:05:17','2018-04-29 10:05:17'),(4,2,'P68431','2018-04-29 10:05:17','2018-04-29 10:05:17'),(5,3,'P02452','2018-04-29 10:05:17','2018-04-29 10:05:17'),(6,3,'P04628','2018-04-29 10:05:17','2018-04-29 10:05:17'),(7,3,'P63092','2018-04-29 10:05:17','2018-04-29 10:05:17'),(8,4,'P60484','2018-04-29 10:05:17','2018-04-29 10:05:17'),(9,5,'Q2M1K9','2018-04-29 10:05:17','2018-04-29 10:05:17'),(10,6,'Q92673','2018-04-29 10:05:17','2018-04-29 10:05:17'),(11,6,'P03891','2018-04-29 10:05:17','2018-04-29 10:05:17'),(12,6,'P49768','2018-04-29 10:05:17','2018-04-29 10:05:17'),(13,6,'Q13501','2018-04-29 10:05:17','2018-04-29 10:05:17'),(14,7,'O75061','2018-04-29 10:05:17','2018-04-29 10:05:17'),(15,7,'O60733','2018-04-29 10:05:17','2018-04-29 10:05:17'),(16,7,'Q9Y6H5','2018-04-29 10:05:17','2018-04-29 10:05:17'),(17,7,'O60260','2018-04-29 10:05:17','2018-04-29 10:05:17'),(18,1,'P31749','2018-04-29 10:05:17','2018-04-29 10:05:17'),(19,1,'P84996','2018-04-29 10:05:17','2018-04-29 10:05:17'),(20,1,'P16422','2018-04-29 10:05:17','2018-04-29 10:05:17'),(21,2,'P68431','2018-04-29 10:05:17','2018-04-29 10:05:17'),(22,3,'P02452','2018-04-29 10:05:17','2018-04-29 10:05:17'),(23,3,'P04628','2018-04-29 10:05:17','2018-04-29 10:05:17'),(24,3,'P63092','2018-04-29 10:05:17','2018-04-29 10:05:17'),(25,4,'P60484','2018-04-29 10:05:17','2018-04-29 10:05:17'),(26,5,'Q2M1K9','2018-04-29 10:05:17','2018-04-29 10:05:17'),(27,8,'Q9UQD0','2018-04-29 10:05:17','2018-04-29 10:05:17'),(28,8,'Q9H2P0','2018-04-29 10:05:17','2018-04-29 10:05:17'),(29,8,'Q96DA2','2018-04-29 10:05:17','2018-04-29 10:05:17'),(30,8,'P51608','2018-04-29 10:05:17','2018-04-29 10:05:17'),(31,9,'Q8N9N2','2018-04-29 10:05:17','2018-04-29 10:05:17'),(32,9,'Q96SL4','2018-04-29 10:05:17','2018-04-29 10:05:17'),(33,9,'P21757','2018-04-29 10:05:17','2018-04-29 10:05:17'),(34,9,'P25092','2018-04-29 10:05:17','2018-04-29 10:05:17'),(35,1,'P31749','2018-04-29 10:05:17','2018-04-29 10:05:17'),(36,1,'P84996','2018-04-29 10:05:17','2018-04-29 10:05:17'),(37,1,'P16422','2018-04-29 10:05:17','2018-04-29 10:05:17'),(38,2,'P68431','2018-04-29 10:05:17','2018-04-29 10:05:17'),(39,3,'P02452','2018-04-29 10:05:17','2018-04-29 10:05:17'),(40,3,'P04628','2018-04-29 10:05:17','2018-04-29 10:05:17'),(41,3,'P63092','2018-04-29 10:05:17','2018-04-29 10:05:17'),(42,4,'P60484','2018-04-29 10:05:17','2018-04-29 10:05:17'),(43,5,'Q2M1K9','2018-04-29 10:05:17','2018-04-29 10:05:17'),(44,10,'P10275','2018-04-29 10:05:17','2018-04-29 10:05:17'),(45,10,'P38398','2018-04-29 10:05:17','2018-04-29 10:05:17'),(46,10,'P31749','2018-04-29 10:05:17','2018-04-29 10:05:17'),(47,10,'P51587','2018-04-29 10:05:17','2018-04-29 10:05:17'),(48,11,'P60484','2018-04-29 10:05:17','2018-04-29 10:05:17'),(49,11,'O14746','2018-04-29 10:05:17','2018-04-29 10:05:17'),(50,11,'P42771','2018-04-29 10:05:17','2018-04-29 10:05:17'),(51,11,'Q12879','2018-04-29 10:05:17','2018-04-29 10:05:17'),(52,1,'P31749','2018-04-29 10:05:17','2018-04-29 10:05:17'),(53,1,'P84996','2018-04-29 10:05:17','2018-04-29 10:05:17'),(54,1,'P16422','2018-04-29 10:05:17','2018-04-29 10:05:17'),(55,2,'P68431','2018-04-29 10:05:17','2018-04-29 10:05:17'),(56,3,'P02452','2018-04-29 10:05:17','2018-04-29 10:05:17'),(57,3,'P04628','2018-04-29 10:05:17','2018-04-29 10:05:17'),(58,3,'P63092','2018-04-29 10:05:17','2018-04-29 10:05:17'),(59,4,'P60484','2018-04-29 10:05:17','2018-04-29 10:05:17'),(60,5,'Q2M1K9','2018-04-29 10:05:17','2018-04-29 10:05:17'),(61,12,'P68871','2018-04-29 10:05:17','2018-04-29 10:05:17'),(62,12,'P69605','2018-04-29 10:05:17','2018-04-29 10:05:17'),(63,12,'O14746','2018-04-29 10:05:17','2018-04-29 10:05:17'),(64,12,'P11413','2018-04-29 10:05:17','2018-04-29 10:05:17'),(65,13,'P35555','2018-04-29 10:05:17','2018-04-29 10:05:17'),(66,13,'Q8WZ42','2018-04-29 10:05:17','2018-04-29 10:05:17'),(67,13,'P21817','2018-04-29 10:05:17','2018-04-29 10:05:17'),(68,13,'P02545','2018-04-29 10:05:17','2018-04-29 10:05:17'),(69,1,'P31749','2018-04-29 10:05:17','2018-04-29 10:05:17'),(70,1,'P84996','2018-04-29 10:05:17','2018-04-29 10:05:17'),(71,1,'P16422','2018-04-29 10:05:17','2018-04-29 10:05:17'),(72,2,'P68431','2018-04-29 10:05:17','2018-04-29 10:05:17'),(73,3,'P02452','2018-04-29 10:05:17','2018-04-29 10:05:17'),(74,3,'P04628','2018-04-29 10:05:17','2018-04-29 10:05:17'),(75,3,'P63092','2018-04-29 10:05:17','2018-04-29 10:05:17'),(76,4,'P60484','2018-04-29 10:05:17','2018-04-29 10:05:17'),(77,5,'Q2M1K9','2018-04-29 10:05:17','2018-04-29 10:05:17'),(78,14,'P02545','2018-04-29 10:05:17','2018-04-29 10:05:17'),(79,14,'P51787','2018-04-29 10:05:17','2018-04-29 10:05:17'),(80,14,'P06213','2018-04-29 10:05:17','2018-04-29 10:05:17'),(81,14,'Q03135','2018-04-29 10:05:17','2018-04-29 10:05:17'),(82,15,'Q14524','2018-04-29 10:05:17','2018-04-29 10:05:17'),(83,15,'P68871','2018-04-29 10:05:17','2018-04-29 10:05:17'),(84,15,'P10721','2018-04-29 10:05:17','2018-04-29 10:05:17'),(85,15,'P21333','2018-04-29 10:05:17','2018-04-29 10:05:17');
/*!40000 ALTER TABLE `disease_term_to_uniprot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `do_disease`
--

DROP TABLE IF EXISTS `do_disease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `do_disease` (
  `do_id` int(11) NOT NULL COMMENT 'ID of the DO record.',
  `disease_name` varchar(100) NOT NULL COMMENT 'The name of the disease.',
  `definition` varchar(1000) DEFAULT NULL COMMENT 'Definition of the disease.',
  `relationship` varchar(100) NOT NULL COMMENT 'Relationship of DO with disease.',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Create time of the record.',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update time of the record.',
  PRIMARY KEY (`do_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The table has details of DO disease.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `do_disease`
--

LOCK TABLES `do_disease` WRITE;
/*!40000 ALTER TABLE `do_disease` DISABLE KEYS */;
INSERT INTO `do_disease` VALUES (321,'tropical spastic paraparesis','A viral infectious disease that results_in inflammation located_in spinal cord, has_material_basis_in Human T-lymphotropic virus 1, which is transmitted_by sexual contact, and transmitted_by breast feeding. The infection has_symptom spastic weakness of both legs, has_symptom muscle stiffness, has_symptom sensory disturbance, and has_symptom spasms. http://en.wikipedia.org/wiki/Tropical_spastic_paraparesis, http://www.merckmanuals.com/professional/sec16/ch224/ch224k.html','is_a viral infection disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(705,'Leber hereditary optic neuropathy','','is_a optic nerve disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(1099,'alpha thalassemia','Alpha thalassemia is a thalassemia involving the genes HBA1and HBA2 hemoglobin genes. ','is_a thalassemia','2018-04-29 10:05:18','2018-04-29 10:05:18'),(1206,'Rett syndrome','A pervasive developmental disease that is characterized by normal early growth and development followed by a slowing of development, loss of purposeful use of the hands, distinctive hand movements, slowed brain and head growth, problems with walking, seizures, and intellectual disability.?','is_a?pervasive developmental disorder','2018-04-29 10:05:18','2018-04-29 10:05:18'),(1386,'abetalipoproteinemia','A hypolipoproteinemia that is characterized by an inablility to fully absorb dietary fats, cholesterol and fat-soluble vitamins, has_physical_basis_in an autosomal recessive disorder of lipid metabolism that has material basis in mutation in the microsomal triglyceride transfer protein that catalyzes the transport of lipids (TRIGLYCERIDES; CHOLESTEROL ESTERS; PHOSPHOLIPIDS) and is required in the secretion of BETA-LIPOPROTEINS (low density lipoproteins or LDL).','is_a hypolipoproteinemia','2018-04-29 10:05:18','2018-04-29 10:05:18'),(1520,'colon carcinoma','A?colon cancer that has_material_basis_in abnormally proliferating cells derives_from epithelial cells.?','is_a?colon cancer','2018-04-29 10:05:18','2018-04-29 10:05:18'),(1612,'breast cancer','A thoracic cancer that originates in the mammary gland.','is_a thoracic cancer','2018-04-29 10:05:18','2018-04-29 10:05:18'),(1793,'pancreatic cancer','An endocrine gland cancer located_in the pancreas.','is_a endocrine gland cancer','2018-04-29 10:05:18','2018-04-29 10:05:18'),(1858,'McCune Albright syndrome','An autosomal dominant disease that involves skin pigmentation, bone and hormonal problems along with premature puberty. It has material basis in mutations in the GNAS1 gene.','is_a autosomal dominant disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(2280,'hidradenitis suppurativa','','is_a hidradenitis','2018-04-29 10:05:18','2018-04-29 10:05:18'),(2394,'ovarian cancer','A female reproductive organ cancer that is located_in the ovary. ','is_a female reproductive organ cancer','2018-04-29 10:05:18','2018-04-29 10:05:18'),(2538,'Landau-Kleffner syndrome','','is_a childhood electroclinical syndrome','2018-04-29 10:05:18','2018-04-29 10:05:18'),(2729,'dyskeratosis congenita','A skin disease characterized by cutaneous pigmentation, premature graying, dystrophy of the nails, leukoplakia of the oral mucosa, continuous lacrimation due to atresia of the lacrimal ducts, often thrombocytopenia, anemia, testicular atrophy in the male carriers and predisposition to cancer.','is_a skin disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(2842,'Jervell-Lange Nielsen syndrome','n/a','is_a?long QT Syndrome','2018-04-29 10:05:18','2018-04-29 10:05:18'),(2843,'Long QT Syndrome','An autosomal genetic disease that is characterized by delayed repolarization of the heart following a heartbeat increases the risk of episodes of torsade de pointes (TDP, a form of irregular heartbeat that originates from the ventricles). http://en.wikipedia.org/wiki/Long_QT_syndrome','is_a intrinsic cardiomyopathy','2018-04-29 10:05:18','2018-04-29 10:05:18'),(2861,'congenital nonspherocytic hemolytic anemia','','is_a congenital hemolytic anemia','2018-04-29 10:05:18','2018-04-29 10:05:18'),(3070,'malignant glioma','A cell type cancer that has_material_basis_in glial cells and is located_in brain or located_in spine.?','is_a cell type cancer','2018-04-29 10:05:18','2018-04-29 10:05:18'),(3263,'piebaldism','','is_a autosomal dominant disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(3529,'central core myopathy','','is_a congenital structural myopathy','2018-04-29 10:05:18','2018-04-29 10:05:18'),(3883,'Lynch syndrome','An autosomal dominant disease that is characterized by \nand has_material_basis_in mutation of mismatch repair genes that increases the risk of many types of cancers.?','is_a?autosomal dominant disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(3901,'Vulvitis','(noe)','is_a vulvar disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(4184,'pseudohypoparathyroidism','','is_a metal metabolism disorder','2018-04-29 10:05:18','2018-04-29 10:05:18'),(4257,'Caffey disease',' A bone inflammation disease that causes bone changes, soft tissue swelling and irritability in infants. The disease has been associated with COL1A1 gene. It has_symptom soft-tissue swelling, has_symptom bone lesions, and has_symptom irritability. ','is_a bone inflammation disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(4440,'seminoma','A germinoma that has_material_basis_in cells that make sperm and eggs. http://www.cancer.gov/dictionary?CdrID=46577','is_a germ cell cancer','2018-04-29 10:05:18','2018-04-29 10:05:18'),(4617,'periapical granuloma','','is_a periapical periodontitis','2018-04-29 10:05:18','2018-04-29 10:05:18'),(4674,'androgen insensitivity syndrome','A sex differentiation disease that is characterized by the partial or complete inability of the cell to respond to androgens in individuals with a karyotype of 46,XY resulting in female physical traits but male genetic makeup.','is_a sex differentiation disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(4964,'neurotic disorder','An anxiety disorder that involves discress but neither delusions nor hallucinations.','is_a anxiety disorder','2018-04-29 10:05:18','2018-04-29 10:05:18'),(5408,'Paget\'s disease of bone','A bone formation disease that has_material_basis_in hyperactive osteoclast which results_in abnormal osteoblast bone formation located_in skull, located_in pelvis, located_in vertebral column, located_in set of limbs','is_a hyperostosis','2018-04-29 10:05:18','2018-04-29 10:05:18'),(5520,'head and neck squamous cell carcinoma','A head and neck carcinoma that has_material_basis_in squamous cells that line the moist, mucosal surfaces inside the head and neck.','is_a head and neck carcinoma','2018-04-29 10:05:18','2018-04-29 10:05:18'),(5683,'hereditary breast ovarian cancer','An autosomal dominant disease characterized by the higher than normal tendency to develop breast and ovarian cancers in genetically related families.','is_a autosomal dominant disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(6456,'Cowden disease','An autosomal dominant disease characterized by multiple noncancerous, tumor-like growths (hamartomas) and an increased risk of certain forms of cancer, especially breast, thyroid and endometrium. It is caused by mutations in the PTEN, SDHB, SDHD and KLLN genes.','is_a autosomal dominant disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(6457,'Cowden disease','An autosomal dominant disease characterized by multiple noncancerous, tumor-like growths (hamartomas) and an increased risk of certain forms of cancer, especially breast, thyroid and endometrium. It is caused by mutations in the PTEN, SDHB, SDHD and KLLN genes.?','is_a?autosomal dominant disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(8545,'malignant hyperthermia','A genetic disease that is characterized by a drastic and uncontrolled increase in skeletal muscle oxidative metabolism, which overwhelms the body\'s capacity to supply oxygen, remove carbon dioxide, and regulate body temperature. ','is_a genetic disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(8912,'tinea nigra','A superficial mycosis that is a superficial fungal infection of the skin characterized by brown to black macules which usually occur on the palmar aspects of hands and occasionally the plantar and other surfaces of the skin, caused by Hortaea werneckii, which is a common saprophytic fungus believed to occur in soil, compost, humus and on wood in humid tropical and sub-tropical regions.','is_a superficial mycosis','2018-04-29 10:05:18','2018-04-29 10:05:18'),(9007,'sudden infant death syndrome','A syndrome that is characterized by the sudden death of an infant that is not predicted by medical history and remains unexplained after a thorough forensic autopsy and detailed death scene investigation. http://en.wikipedia.org/wiki/Sudden_infant_death_syndrome, http://omim.org/entry/272120, http://www.nlm.nih.gov/medlineplus/suddeninfantdeathsyndrome.html','is_a syndrome','2018-04-29 10:05:18','2018-04-29 10:05:18'),(9119,'acute myeloid leukemia','A myeloid leukemia that is characterized by the rapid growth of abnormal white blood cells that accumulate in the bone marrow and interfere with the production of normal blood cells. http://cancergenome.nih.gov/cancersselected/acutemyeloidleukemia, http://en.wikipedia.org/wiki/Acute_myeloid_leukemia, http://www.cancer.gov/dictionary?cdrid=44363','is_a myeloid leukemia','2018-04-29 10:05:18','2018-04-29 10:05:18'),(9206,'Barrett\'s esophagus','','is_a?esophageal disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(9253,'gastrointestinal stromal tumor','','is_a gastrointestinal system cancer','2018-04-29 10:05:18','2018-04-29 10:05:18'),(9255,'frontotemporal dementia','A basal ganglia disease characterized by progressive neuronal loss predominantly involving the frontal and/or temporal lobes of the brain resulting in a gradual and progressive decline in behavior or language','is_a basal ganglia disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(9256,'colorectal cancer','A large intestine cancer that is located_in the colon and/or located_in the rectum.?','is_a?large intestine cancer','2018-04-29 10:05:18','2018-04-29 10:05:18'),(9352,'Type 2 Diabetes Mellitus','A diabetes mellitus that involves high blood glucose resulting from cells fail to use insulin properly. http://en.wikipedia.org/wiki/Diabetes, http://en.wikipedia.org/wiki/Diabetes_mellitus_type_2','is_a diabetes mellitus','2018-04-29 10:05:18','2018-04-29 10:05:18'),(9598,'fasciitis','','is_a connective tissue disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(10041,'dysplastic nevus syndrome','','is_a autosomal dominant disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(10241,'thalassemia','','is_a autosomal recessive disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(10329,'pneumoconiosis due to talc','','is_a pneumoconiosis','2018-04-29 10:05:18','2018-04-29 10:05:18'),(10383,'amyotrophic neuralgia','','is_a brachial plexus neuropathy','2018-04-29 10:05:18','2018-04-29 10:05:18'),(10652,'Alzheimer\'s disease','A tauopathy that is characterized by memory lapses, confusion, emotional instability and progressive loss of mental ability and results in progressive memory loss, impaired thinking, disorientation, and changes in personality and mood starting and leads in advanced cases to a profound decline in cognitive and physical functioning and is marked histologically by the degeneration of brain neurons especially in the cerebral cortex and by the presence of neurofibrillary tangles and plaques containing beta-amyloid','is_a tauopathy','2018-04-29 10:05:18','2018-04-29 10:05:18'),(10782,'mesenteric lymphadenitis','','is_a?lymphadenitis','2018-04-29 10:05:18','2018-04-29 10:05:18'),(10914,'amnestic disorder','A cognitive disorder where the memory is disturbed or lost and involves the loss of memories previously established, loss of the ability to create new memories, or loss of the ability to learn new information.','is_a cognitive disorder','2018-04-29 10:05:18','2018-04-29 10:05:18'),(10923,'sickle cell anemia','','is_a?autosomal recessive disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(11476,'osteoporosis','A bone resorption disease characterized by decreased density of normally mineralized bone which results_in the thinning of bone tissue and decreased mechanical strength. ','is_a bone resorption disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(11726,'Emery-Dreifuss muscular dystrophy','A muscular dystrophy that chiefly affects muscles used for movement (skeletal) and heart (cardiac) muscle. ','is_a muscular dystrophy','2018-04-29 10:05:18','2018-04-29 10:05:18'),(12241,'beta thalassemia','A thalassemia characterized by the reduced or absent synthesis of the beta globin chains of hemoglobin.','is_a thalassemia','2018-04-29 10:05:18','2018-04-29 10:05:18'),(12347,'osteogenesis imperfecta','An osteochondrodysplasia that has_material_basis_in a deficiency in type-I collagen which results_in brittle bones and defective connective tissue. ','is_a osteochondrodysplasia','2018-04-29 10:05:18','2018-04-29 10:05:18'),(12449,'aplastic anemia','An anemia that is characterized by a deficiency of red blood cells, white blood cells and platelets produced by bone marrow.','is_a anemia','2018-04-29 10:05:18','2018-04-29 10:05:18'),(12554,'hemolytic-uremic syndrome','','is_a?hemolytic anemia','2018-04-29 10:05:18','2018-04-29 10:05:18'),(12712,'nephronophthisis','An autosomal recessive disease that is characterized by a chronic tubulointerstitial nephritis that progress to terminal renal failure during the second decade (juvenile form) or before the age of 5 years (infantile form) resulting from dysfunction of ciliary proteins (ciliopathy).','is_a autosomal recessive disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(12930,'dilated cardiomyopathy','An intrinsic cardiomyopathy that is characterized by an an enlarged heart and damage to the myocardium causing the heart to pump blood inefficiently. http://en.wikipedia.org/wiki/Dilated_cardiomyopathy','is_an intrisic cardiomyopathy','2018-04-29 10:05:18','2018-04-29 10:05:18'),(13270,'erythropoietic protoporphyria','An acute porphyria characterized by a deficiency in the enzyme ferrochelatase, leading to abnormally high levels of protoporphyrin in the tissue.','is_a acute porphyria','2018-04-29 10:05:18','2018-04-29 10:05:18'),(13317,'hyperinsulinemic hypoglycemia','A carbohydrate metabolic disorder that involves low blood glucose resulting from an excess of insulin. http://en.wikipedia.org/wiki/Hyperinsulinemic_hypoglycemia','is_a carbohydrate metabolic disorder','2018-04-29 10:05:18','2018-04-29 10:05:18'),(13381,'pernicious anemia','','is_a nutritional deficiency disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(13482,'Proteus syndrome','','is_a physical disorder','2018-04-29 10:05:18','2018-04-29 10:05:18'),(13636,'Fanconi\'s anemia','A congenital hypoplastic anemia characterized by progressive pancytopenia with bone marrow failure, variable congenital malformations and predisposition to develop hematological or solid tumors. It is a result of a genetic defect in a cluster of proteins responsible for DNA repair.','is_a congenital hypoplastic anemia','2018-04-29 10:05:18','2018-04-29 10:05:18'),(13884,'sick sinus syndrome','','is_a sinoatrial node disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(14330,'Parkinson\'s Disease','A synucleinopathy that has_material_basis_in degeneration of the central nervous system that often impairs motor skills, speech, and other functions','is_a synucleinopathy','2018-04-29 10:05:18','2018-04-29 10:05:18'),(14557,'primary pulmonary hypertension','A chronic pulmonary heart disease characterized by an increase of blood pressure in the pulmonary artery, pulmonary vein, or pulmonary capillaries, among others, has symptoms shortness of breath, dizziness, fainting, leg swelling. http://en.wikipedia.org/wiki/Pulmonary_hypertension, http://ghr.nlm.nih.gov/condition/pulmonary-arterial-hypertension','is_a chronic pulmonary heart disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(14711,'FG syndrome','An X-linked disease characterized by retardation, hyperactivity, hypotonia, broad thumbs, big first toes and a characteristic facial appearance including macrocephaly and has an X-linked recessive inheritance pattern. http://en.wikipedia.org/wiki/FG_syndrome, http://ghr.nlm.nih.gov/condition/fg-syndrome, http://rarediseases.info.nih.gov/gard/2317/fg-syndrome/resources/1','is_a X-linked disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(14720,'type I Ehlers-Danlos syndrome','','is_a Ehlers-Danlos syndrome','2018-04-29 10:05:18','2018-04-29 10:05:18'),(50440,'familial partial lipodystrophy','A lipodystrophy characterized by abnormal subcutaneous adipose tissue distribution beginning in late childhood or early adult life. ','is_a lipodystrophy','2018-04-29 10:05:18','2018-04-29 10:05:18'),(50454,'periventricular nodular heterotopia','A congenital nervous system abnormality characterized by non proper migration of neurons during the early development of the fetal brain. http://ghr.nlm.nih.gov/condition/periventricular-heterotopia','is_a congenital nervous system abnormality','2018-04-29 10:05:18','2018-04-29 10:05:18'),(50470,'Donohue Syndrome','','is_a autosomal recessive disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(50475,'Weill-Marchesani syndrome','An autosomal genetic disease characterized by short stature, bachycephaly and other facial abnormalities, brachydactyly, joint stiffness and distinctive ocular abnormalities. ','is_a autosomal genetic disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(50557,'congenital muscular dystrophy','A muscular dystrophy that is characterized by diminished muscle tone (hypotonia), progressive muscle weakness and degeneration (atrophy), abnormally fixed joints, spinal rigidity, and delays in reaching motor milestones such as sitting or standing unassisted.','is_a muscular dystrophy','2018-04-29 10:05:18','2018-04-29 10:05:18'),(50585,'congenital generalized lipodystrophy','','is_a lipidotrophy','2018-04-29 10:05:18','2018-04-29 10:05:18'),(50650,'familial atrial fibrillation','An atrial fibrillation that has_material_basis_in autosomal dominant inheritance of the familial atrial fibrillation (ATFB) genes. http://en.wikipedia.org/wiki/Familial_atrial_fibrillation','is_a atrial fibrillation','2018-04-29 10:05:18','2018-04-29 10:05:18'),(50657,'Bannayan-Riley-Ruvalcaba syndrome','','is_a autosomal dominant disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(50709,'Ohtahara syndrome','A neonatoal period electroclinical syndrome that is characterized by tonic spasms and partial seizures.?','is_a?neonatal period electroclinical syndrome','2018-04-29 10:05:18','2018-04-29 10:05:18'),(50776,'non-syndromic X-linked intellectual disability','A non-syndromic intellectual disability characterized by a X-linked inheritance pattern.?','is_a?non-syndromic intellectual disability','2018-04-29 10:05:18','2018-04-29 10:05:18'),(50782,'Zollinger-Ellison syndrome','A syndrome that is haracterized by the development of a one or more tumors (gastrinoma) in the pancreas, duodenum, or both that secrete excessive levels of gastrin, a hormone that stimulates production of acid by the stomach. ','is_a?syndrome','2018-04-29 10:05:18','2018-04-29 10:05:18'),(50793,'Short QT syndrome','A heart conduction disease that is characterized by heart arrhythmia defined as a short QT interval on an EKG (less than 300 ms) that does not significantly change with heart rate, tall and peaked T waves, and a structurally normal heart. ','is_a heart conduction disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(60161,'Kennedy\'s Disease','A spinal muscular dystrophy that has_material_basis_in an X-linked recessive expansion of CAG triplet repeats (glutamine) in exon 1 of AR gene encoding the androgen receptor.','is_a spinal muscular atrophy','2018-04-29 10:05:18','2018-04-29 10:05:18'),(60307,'autosomal dominant non-syndromic intellectual disability','A non-syndromic intellectual disability characterized by an autosomal dominant inheritance pattern.?','is_a?non-syndromic intellectual disability','2018-04-29 10:05:18','2018-04-29 10:05:18'),(60354,'Stormorken syndrome','A blood platelet disease characterized by thrombocytopathy, thrombocytopenia, mild anemia, asplenia, tubular aggregate myopathy, miosis, headache, and ichthyosis. It has material basis in heterozygous mutation in the STM1 gene on chromosome 11p15. It has an autosomal dominant inheritance pattern.','is_a blood platelet disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(60368,'autosomal recessive juvenile Parkinson disease 2','A Parkinson\'s disease that has_material_basis_in mutation in the parkin gene (PARK2) on chromosome 6q25.2-q27','is_a juvenile-onset Parkinson disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(60780,'congenital diarrhea 6','A congenital diarrhea characterized by mild, early-onset chronic diarrhea that has_material_basis_in heterozygous mutation in the GUCY2C gene on chromosome 12p12.?','is_a?congenital diarrhea','2018-04-29 10:05:18','2018-04-29 10:05:18'),(60891,'juvenile onset Parkinson disease 19A','A Parkinson\'s disease that has_material_basis_in homozygous mutation in the DNAJC6 gene on chromosome 1p31 ','is_a juvenile-onset Parkinson disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(60900,'autosomal recessive Parkinson disease 14','A late-onset Parkinson disease that has_material_basis_in homozygous mutation in the PLA2G6 gene on chromosome 22q13','is_a late onset Parkinson disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(80053,'Albright\'s hereditary osteodystrophy','An osteochondrodysplasia that has_material_basis_in lack of responsiveness to parathyroid hormone which results_in shortening and widening of long bones of the located_in hand or located_in foot along with short stature, obesity, and rounded face.','is_a pseudohypoparathyroidism','2018-04-29 10:05:18','2018-04-29 10:05:18'),(110031,'hemoglobin H disease','An alpha thalassemia that has material basis in contiguous gene deletion of the hemoglobin alpha-1 (HBA1) and alpha-2 (HBA2) genes on one chromosome 16, and a defect, deletional or nondeletional, in either HBA1 or HBA2 on the other.','is_a alpha thalassemia','2018-04-29 10:05:18','2018-04-29 10:05:18'),(110042,'Alzheimer\'s disease 3','An Alzheimer\'s disease that has_material_basis_in mutation in the presenilin-1 gene (PSEN1) on chromosome 14q24','is_a Alzheimer\'s disease','2018-04-29 10:05:18','2018-04-29 10:05:18'),(110068,'FTDALS3','An amyotrophic lateral sclerosis that has material basis in mutation in the SQSTM1 gene on chromosome 5q35','is_a amyotrophic lateral sclerosis','2018-04-29 10:05:18','2018-04-29 10:05:18'),(110218,'Brugada syndrome 1','A Brugada syndrome that has material basis in heterozygous mutation in the SCN5A gene on chromosome 3p22. http://www.ncbi.nlm.nih.gov/pubmed/?term=9521325','is_a Brugada syndrome','2018-04-29 10:05:18','2018-04-29 10:05:18'),(110301,'autosomal dominant limb-girdle muscular dystrophy type 1B','An autosomal dominant limb-girdle muscular dystrophy that has_material_basis_in mutation in the gene encoding lamin A/C (LMNA). http://www.ncbi.nlm.nih.gov/pubmed/?term=10814726','is_a autosomal dominant limb-girdle muscular dystrophy','2018-04-29 10:05:18','2018-04-29 10:05:18'),(110315,'hypertrophic cardiomyopathy 9','A hypertrophic cardiomyopathy that has_material_basis_in heterozygous mutation in the TTN gene on chromosome 2q31. ','is_a hypertrophic cardiomyopathy','2018-04-29 10:05:18','2018-04-29 10:05:18'),(110425,'dilated cardiomyopathy 1A','A dilated cardiomyopathy that has_material_basis_in mutation in the LMNA gene on chromosome 1q21.','is_a dilated cardiomyopathy','2018-04-29 10:05:18','2018-04-29 10:05:18'),(110430,'dilated cardiomyopathy 1G','A dilated cardiomyopathy that has_material_basis_in mutation in the TTN gene on chromosome 2q31','is_a dilated cardiomyopathy','2018-04-29 10:05:18','2018-04-29 10:05:18'),(110455,'dilated cardiomyopathy 1U','A dilated cardiomyopathy that has_material_basis_in mutation in the PSEN1 gene on chromosome 14q24.3','is_a dilated cardiomyopathy','2018-04-29 10:05:18','2018-04-29 10:05:18'),(110735,'neurodegeneration with brain iron accumulation 2a','A neurodegeneration with brain iron accumulation that has_material_basis_in autosomal recessive inheritance of mutation in the PLA2G6 gene on chromosome 22q13.1','is_a neurodegeneration with brain iron accumulation','2018-04-29 10:05:18','2018-04-29 10:05:18'),(110736,'neurodegeneration with brain iron accumulation 2b','A neurodegeneration with brain iron accumulation that has_material_basis_in autosomal recessive inheritance of mutation in the PLA2G6 gene on chromosome 22q13.1','is_a neurodegeneration with brain iron accumulation','2018-04-29 10:05:18','2018-04-29 10:05:18');
/*!40000 ALTER TABLE `do_disease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `external_site`
--

DROP TABLE IF EXISTS `external_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `external_site` (
  `site_id` int(11) NOT NULL COMMENT 'ID of the site.',
  `site_name` varchar(45) NOT NULL COMMENT 'Name of the site.',
  `url` varchar(200) NOT NULL COMMENT 'URL of the site.',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Create time of the record.',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update time of the record.',
  PRIMARY KEY (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table contains site details.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `external_site`
--

LOCK TABLES `external_site` WRITE;
/*!40000 ALTER TABLE `external_site` DISABLE KEYS */;
INSERT INTO `external_site` VALUES (1,'uniprot','http://www.uniprot.org/uniprot/','2018-04-29 10:05:19','2018-04-29 10:05:19'),(2,'gene_names','http://www.genenames.org/cgi-bin/gene_symbol_report?hgnc_id=','2018-04-29 10:05:19','2018-04-29 10:34:21');
/*!40000 ALTER TABLE `external_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gene`
--

DROP TABLE IF EXISTS `gene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gene` (
  `hgnc_id` int(11) NOT NULL COMMENT 'ID of the gene.',
  `approved_symbol` varchar(50) DEFAULT NULL COMMENT 'Approved symbol of the gene.',
  `approved_name` varchar(100) NOT NULL COMMENT 'Approved name of the gene.',
  `gene_synonyms` varchar(500) DEFAULT NULL COMMENT 'Synonyms of the gene.',
  `chromosomal_location` varchar(30) NOT NULL COMMENT 'Chromosomal location of the gene.',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Create time of the record.',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update time of the record.',
  PRIMARY KEY (`hgnc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The table containing gene records that contain proteins.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gene`
--

LOCK TABLES `gene` WRITE;
/*!40000 ALTER TABLE `gene` DISABLE KEYS */;
INSERT INTO `gene` VALUES (391,'AKT1','v-akt murine thymoma viral oncogene homolog 1','AKT, PKB, PRKBA, RAC','14q32.33','2018-04-29 10:05:17','2018-04-29 10:05:17'),(644,'AR','androgen receptor','AIS,HUMARA,?Kennedy disease?,NR3C4,SMAX1,\"testicular feminization\"','Xq12','2018-04-29 10:05:17','2018-04-29 10:05:17'),(1100,'BRCA1','BRCA1,DNA repair associated','\"BRCA1/BRCA2-containing complex,subunit 1\",BRCC1,\"Fanconi anemia,complementation group S\",FANCS,PPP1R53,\"protein phosphatase 1,regulatory subunit 53\",RNF53','17q21.31','2018-04-29 10:05:17','2018-04-29 10:05:17'),(1101,'BRCA2','BRCA2, DNA repair associated','BRCA1/BRCA2-containing complex,subunit 2,BRCC2,FAD,FAD1,XRCC11','13q13.1','2018-04-29 10:05:17','2018-04-29 10:05:17'),(1527,'CAV1','Caveolin 1','CAV1','7q31.2','2018-04-29 10:05:17','2018-04-29 10:05:17'),(1787,'CDKN2A','cyclin dependent kinase inhibitor 2A','ARF,CDK4I,CMM2,INK4,INK4a,MTS1,p14,p14ARF,p16,p16INK4a,p19,p19Arf','9p21.3','2018-04-29 10:05:17','2018-04-29 10:05:17'),(2197,'\nCOL1A1','collagen type I alpha 1','OI4','17q21.33','2018-04-29 10:05:17','2018-04-29 10:05:17'),(3603,'FBN1','fibrillin 1','asprosin, \"Marfan syndrome\", MASS, OCTD, SGS','15q21.1','2018-04-29 10:05:17','2018-04-29 10:05:17'),(3754,'FLNA','Filamin A','ABP-280, \"actin binding protein 280\", \"alpha filamin\" ','Xq28','2018-04-29 10:05:17','2018-04-29 10:05:17'),(4057,'G6PD','glucose-6-phosphate dehydrogenase','G6PD1','Xq28','2018-04-29 10:05:17','2018-04-29 10:05:17'),(4392,'GNAS','GNAS complex locus','G protein subunit alpha S, GNASXL, GPSA','20q13.32','2018-04-29 10:05:17','2018-04-29 10:05:17'),(4559,'GPX7','glutathione peroxidase 7','FLJ14777, GPX6, NPGPx','1p32.3','2018-04-29 10:05:17','2018-04-29 10:05:17'),(4585,'GRIN2A','glutamate ionotropic receptor NMDA type subunit 2A','GluN2A','16p13.2','2018-04-29 10:05:17','2018-04-29 10:05:17'),(4688,'GUCY2C','guanylate cyclase 2C','\"heat stable enterotoxin receptor\", \"STA receptor\", STAR','12p12.3','2018-04-29 10:05:17','2018-04-29 10:05:17'),(4766,'HIST1H3A','histone cluster 1 H3 family member a','H3/A','6p22.2','2018-04-29 10:05:17','2018-04-29 10:05:17'),(4823,'HBA1','hemoglobin subunit alpha 1','HBA-T3','16p13.3','2018-04-29 10:05:17','2018-04-29 10:05:17'),(4827,'HBB','hemoglobin subunit beta','beta-globin, CD113t-C, HBD','11p15.4','2018-04-29 10:05:17','2018-04-29 10:05:17'),(6091,'INSR','Insulin Receptor','CD220','19p13.2','2018-04-29 10:05:17','2018-04-29 10:05:17'),(6294,'KCNQ1','potassium voltage-gated channel subfamily Q member 1 ','Jervell and Lange-Nielsen syndrome 1, JLNS1, KCNA8, Kv7.1, KVLQT1, LQT1 ','11p15.5-p15.4 ','2018-04-29 10:05:17','2018-04-29 10:05:17'),(6342,'KIT','KIT proto-oncogene receptor tyrosine kinase ','C-Kit, CD117, SCFR ','4q12','2018-04-29 10:05:17','2018-04-29 10:05:17'),(6636,'LMNA','lamin A/C','HGPS, MADA, mandibuloacral dysplasia type A','1q22','2018-04-29 10:05:17','2018-04-29 10:05:17'),(6990,'MECP2','methyl-CpG binding protein 2','','Xq28','2018-04-29 10:05:17','2018-04-29 10:05:17'),(7376,'MSR1','macrophage scavenger receptor 1','CD204, SCARA1, SR-A, SR-AI, SR-AII, SR-AIII','8p22','2018-04-29 10:05:17','2018-04-29 10:05:17'),(7456,'MT-ND2','mitochondrially encoded NADH:ubiquinone oxidoreductase core subunit 2','\"complex I ND2 subunit\",NAD2,\"NADH-ubiquinone oxidoreductase chain 2\",ND2','mitochondria','2018-04-29 10:05:17','2018-04-29 10:05:17'),(8607,'PRKN','parkin RBR E3 ubiquitin protein ligase','AR-JP,\"E3 ubiquitin ligase\",parkin,PDJ','6q26','2018-04-29 10:05:17','2018-04-29 10:05:17'),(9039,'PLA2G6','phospholipase A2 group VI','iPLA2,iPLA2beta,NBIA2,\"neurodegeneration with brain iron accumulation 2\",PARK14,PNPLA9','22q13.1','2018-04-29 10:05:17','2018-04-29 10:05:17'),(9508,'PSEN1','presenlin 1','FAD,PS1,S182','14q24.2','2018-04-29 10:05:17','2018-04-29 10:05:17'),(9588,'PTEN','phosphatase and tensin homolog','MMAC1, mutated in multiple advanced cancers 1, PTEN1','10q23.31','2018-04-29 10:05:17','2018-04-29 10:05:17'),(10483,'RYR1','ryanodine receptor 1','PPP1R137, \"protein phosphatase 1, regulatory subunit 137\", RYR','19q13.2','2018-04-29 10:05:17','2018-04-29 10:05:17'),(10593,'SCN5A','sodium voltage-gated channel alpha subunit 5 ','SCN5A','3p22.2','2018-04-29 10:05:17','2018-04-29 10:05:17'),(10596,'SCN8A','sodium voltage-gated channel alpha subunit 8','CerIII, CIAT, NaCh6, Nav1.6, PN4','12q13.13','2018-04-29 10:05:17','2018-04-29 10:05:17'),(11139,'SNCAIP','synuclein alpha interacting protein','\"synphilin\",SYPH1','5q23.2','2018-04-29 10:05:17','2018-04-29 10:05:17'),(11185,'SORL1','sortilin related receptor 1','gp250,\"LDLR relative with 11 ligand-binding repeats\",LR11,LRP9,SorLA,SorLA-1','11q24.1','2018-04-29 10:05:17','2018-04-29 10:05:17'),(11280,'SQSTM1','sequestosome 1','A170,p60,p62,p62B','5q35.3','2018-04-29 10:05:17','2018-04-29 10:05:17'),(11529,'EPCAM','epithelial cell adhesion molecule','17-1A, 323/A3, CD326, CO-17A, EGP-2, EGP34, EGP40, Ep-CAM, ESA, GA733-2, HEA125, KS1/4, KSA, Ly74, MH99, MK-1, MOC31, TACST-1, TROP1','2p21','2018-04-29 10:05:17','2018-04-29 10:05:17'),(11730,'TERT','telomerase reverse transcriptase','EST2,hEST2,TCS1,TP2,TRT','5p15.33','2018-04-29 10:05:17','2018-04-29 10:05:17'),(12403,'TTN','titin','CMH9, CMPD4, FLJ32040, LGMD2J, MYLK5, TMD','2q31.2','2018-04-29 10:05:17','2018-04-29 10:05:17'),(12774,'WNT1','wingless-type MMTV integration site family member 1','','12q13.12','2018-04-29 10:05:17','2018-04-29 10:05:17'),(15469,'DNAJC6','DnaJ heat shock protein family (Hsp40) member C6','\"auxilin\",KIAA0473,PARK19','1p31.3','2018-04-29 10:05:17','2018-04-29 10:05:17'),(15766,'ADNP','activity dependent neuroprotector homeobox','\"ADNP homeobox 1\", ADNP1, KIAA0784','20q13.13','2018-04-29 10:05:17','2018-04-29 10:05:17'),(16499,'RAB39B','\nRAB39B, member RAS oncogene family','ARG, ARP, DNB1, KIAA0458','1p36.23','2018-04-29 10:05:17','2018-04-29 10:05:17'),(16762,'ZNF423','zinc finger protein 423','Ebfaz, JBTS19, KIAA0760','16q12','2018-04-29 10:05:17','2018-04-29 10:05:17'),(24268,'ASCC1','activating signal cointegrator 1 complex subunit 1','ASC1p50, CGI-18, Em:AC022392.3','10q22.1','2018-04-29 10:05:17','2018-04-29 10:05:17');
/*!40000 ALTER TABLE `gene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gene_synonym`
--

DROP TABLE IF EXISTS `gene_synonym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gene_synonym` (
  `hgnc_id` int(11) NOT NULL,
  `synonym` varchar(30) NOT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`hgnc_id`,`synonym`),
  CONSTRAINT `gene_synonym_ibfk_1` FOREIGN KEY (`hgnc_id`) REFERENCES `gene` (`hgnc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gene_synonym`
--

LOCK TABLES `gene_synonym` WRITE;
/*!40000 ALTER TABLE `gene_synonym` DISABLE KEYS */;
INSERT INTO `gene_synonym` VALUES (391,'AKT','2018-05-12 16:14:13','2018-05-12 16:14:13'),(391,'PKB','2018-05-12 16:14:13','2018-05-12 16:14:13'),(391,'PRKBA','2018-05-12 16:14:13','2018-05-12 16:14:13'),(391,'RAC','2018-05-12 16:14:13','2018-05-12 16:14:13'),(644,'\"testicularfeminization\"','2018-05-12 16:14:13','2018-05-12 16:14:13'),(644,'?Kennedydisease?','2018-05-12 16:14:13','2018-05-12 16:14:13'),(644,'AIS','2018-05-12 16:14:13','2018-05-12 16:14:13'),(644,'HUMARA','2018-05-12 16:14:13','2018-05-12 16:14:13'),(644,'NR3C4','2018-05-12 16:14:13','2018-05-12 16:14:13'),(644,'SMAX1','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1100,'\"BRCA1/BRCA2-containingcomplex','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1100,'\"Fanconianemia','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1100,'\"proteinphosphatase1','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1100,'BRCC1','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1100,'complementationgroupS\"','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1100,'FANCS','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1100,'PPP1R53','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1100,'regulatorysubunit53\"','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1100,'RNF53','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1100,'subunit1\"','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1101,'BRCA1/BRCA2-containingcomplex','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1101,'BRCC2','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1101,'FAD','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1101,'FAD1','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1101,'subunit2','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1101,'XRCC11','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1527,'CAV1','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1787,'ARF','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1787,'CDK4I','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1787,'CMM2','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1787,'INK4','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1787,'INK4a','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1787,'MTS1','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1787,'p14','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1787,'p14ARF','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1787,'p16','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1787,'p16INK4a','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1787,'p19','2018-05-12 16:14:13','2018-05-12 16:14:13'),(1787,'p19Arf','2018-05-12 16:14:13','2018-05-12 16:14:13'),(2197,'OI4','2018-05-12 16:14:13','2018-05-12 16:14:13'),(3603,'\"Marfansyndrome\"','2018-05-12 16:14:13','2018-05-12 16:14:13'),(3603,'asprosin','2018-05-12 16:14:13','2018-05-12 16:14:13'),(3603,'MASS','2018-05-12 16:14:13','2018-05-12 16:14:13'),(3603,'OCTD','2018-05-12 16:14:13','2018-05-12 16:14:13'),(3603,'SGS','2018-05-12 16:14:13','2018-05-12 16:14:13'),(3754,'\"actinbindingprotein280\"','2018-05-12 16:14:13','2018-05-12 16:14:13'),(3754,'\"alphafilamin\"','2018-05-12 16:14:13','2018-05-12 16:14:13'),(3754,'ABP-280','2018-05-12 16:14:13','2018-05-12 16:14:13'),(4057,'G6PD1','2018-05-12 16:14:13','2018-05-12 16:14:13'),(4392,'GNASXL','2018-05-12 16:14:13','2018-05-12 16:14:13'),(4392,'GproteinsubunitalphaS','2018-05-12 16:14:13','2018-05-12 16:14:13'),(4392,'GPSA','2018-05-12 16:14:13','2018-05-12 16:14:13'),(4559,'FLJ14777','2018-05-12 16:14:13','2018-05-12 16:14:13'),(4559,'GPX6','2018-05-12 16:14:13','2018-05-12 16:14:13'),(4559,'NPGPx','2018-05-12 16:14:13','2018-05-12 16:14:13'),(4585,'GluN2A','2018-05-12 16:14:13','2018-05-12 16:14:13'),(4688,'\"heatstableenterotoxinreceptor','2018-05-12 16:14:13','2018-05-12 16:14:13'),(4688,'\"STAreceptor\"','2018-05-12 16:14:13','2018-05-12 16:14:13'),(4688,'STAR','2018-05-12 16:14:13','2018-05-12 16:14:13'),(4766,'H3/A','2018-05-12 16:14:13','2018-05-12 16:14:13'),(4823,'HBA-T3','2018-05-12 16:14:13','2018-05-12 16:14:13'),(4827,'beta-globin','2018-05-12 16:14:13','2018-05-12 16:14:13'),(4827,'CD113t-C','2018-05-12 16:14:13','2018-05-12 16:14:13'),(4827,'HBD','2018-05-12 16:14:13','2018-05-12 16:14:13'),(6091,'CD220','2018-05-12 16:14:13','2018-05-12 16:14:13'),(6294,'JervellandLange-Nielsensyndrom','2018-05-12 16:14:13','2018-05-12 16:14:13'),(6294,'JLNS1','2018-05-12 16:14:13','2018-05-12 16:14:13'),(6294,'KCNA8','2018-05-12 16:14:13','2018-05-12 16:14:13'),(6294,'Kv7.1','2018-05-12 16:14:13','2018-05-12 16:14:13'),(6294,'KVLQT1','2018-05-12 16:14:13','2018-05-12 16:14:13'),(6294,'LQT1','2018-05-12 16:14:13','2018-05-12 16:14:13'),(6342,'C-Kit','2018-05-12 16:14:13','2018-05-12 16:14:13'),(6342,'CD117','2018-05-12 16:14:13','2018-05-12 16:14:13'),(6342,'SCFR','2018-05-12 16:14:13','2018-05-12 16:14:13'),(6636,'HGPS','2018-05-12 16:14:13','2018-05-12 16:14:13'),(6636,'MADA','2018-05-12 16:14:13','2018-05-12 16:14:13'),(6636,'mandibuloacraldysplasiatypeA','2018-05-12 16:14:13','2018-05-12 16:14:13'),(7376,'CD204','2018-05-12 16:14:13','2018-05-12 16:14:13'),(7376,'SCARA1','2018-05-12 16:14:13','2018-05-12 16:14:13'),(7376,'SR-A','2018-05-12 16:14:13','2018-05-12 16:14:13'),(7376,'SR-AI','2018-05-12 16:14:13','2018-05-12 16:14:13'),(7376,'SR-AII','2018-05-12 16:14:13','2018-05-12 16:14:13'),(7376,'SR-AIII','2018-05-12 16:14:13','2018-05-12 16:14:13'),(7456,'\"complexIND2subunit\"','2018-05-12 16:14:13','2018-05-12 16:14:13'),(7456,'\"NADH-ubiquinoneoxidoreductase','2018-05-12 16:14:13','2018-05-12 16:14:13'),(7456,'NAD2','2018-05-12 16:14:13','2018-05-12 16:14:13'),(7456,'ND2','2018-05-12 16:14:13','2018-05-12 16:14:13'),(8607,'\"E3ubiquitinligase\"','2018-05-12 16:14:13','2018-05-12 16:14:13'),(8607,'AR-JP','2018-05-12 16:14:13','2018-05-12 16:14:13'),(8607,'parkin','2018-05-12 16:14:13','2018-05-12 16:14:13'),(8607,'PDJ','2018-05-12 16:14:13','2018-05-12 16:14:13'),(9039,'\"neurodegenerationwithbrainiro','2018-05-12 16:14:13','2018-05-12 16:14:13'),(9039,'iPLA2','2018-05-12 16:14:13','2018-05-12 16:14:13'),(9039,'iPLA2beta','2018-05-12 16:14:13','2018-05-12 16:14:13'),(9039,'NBIA2','2018-05-12 16:14:13','2018-05-12 16:14:13'),(9039,'PARK14','2018-05-12 16:14:13','2018-05-12 16:14:13'),(9039,'PNPLA9','2018-05-12 16:14:13','2018-05-12 16:14:13'),(9508,'PS1','2018-05-12 16:14:13','2018-05-12 16:14:13'),(9508,'S182','2018-05-12 16:14:13','2018-05-12 16:14:13'),(9588,'MMAC1','2018-05-12 16:14:13','2018-05-12 16:14:13'),(9588,'mutatedinmultipleadvancedcance','2018-05-12 16:14:13','2018-05-12 16:14:13'),(9588,'PTEN1','2018-05-12 16:14:13','2018-05-12 16:14:13'),(10483,'PPP1R137','2018-05-12 16:14:13','2018-05-12 16:14:13'),(10483,'regulatorysubunit137\"','2018-05-12 16:14:13','2018-05-12 16:14:13'),(10483,'RYR','2018-05-12 16:14:13','2018-05-12 16:14:13'),(10593,'SCN5A','2018-05-12 16:14:13','2018-05-12 16:14:13'),(10596,'CerIII','2018-05-12 16:14:13','2018-05-12 16:14:13'),(10596,'CIAT','2018-05-12 16:14:13','2018-05-12 16:14:13'),(10596,'NaCh6','2018-05-12 16:14:13','2018-05-12 16:14:13'),(10596,'Nav1.6','2018-05-12 16:14:13','2018-05-12 16:14:13'),(10596,'PN4','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11139,'\"synphilin\"','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11139,'SYPH1','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11185,'\"LDLRrelativewith11ligand-bind','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11185,'gp250','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11185,'LR11','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11185,'LRP9','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11185,'SorLA','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11185,'SorLA-1','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11280,'A170','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11280,'p60','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11280,'p62','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11280,'p62B','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11529,'17-1A','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11529,'323/A3','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11529,'CD326','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11529,'CO-17A','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11529,'EGP-2','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11529,'EGP34','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11529,'EGP40','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11529,'Ep-CAM','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11529,'ESA','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11529,'GA733-2','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11529,'HEA125','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11529,'KS1/4','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11529,'KSA','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11529,'Ly74','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11529,'MH99','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11529,'MK-1','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11529,'MOC31','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11529,'TACST-1','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11529,'TROP1','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11730,'EST2','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11730,'hEST2','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11730,'TCS1','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11730,'TP2','2018-05-12 16:14:13','2018-05-12 16:14:13'),(11730,'TRT','2018-05-12 16:14:13','2018-05-12 16:14:13'),(12403,'CMH9','2018-05-12 16:14:13','2018-05-12 16:14:13'),(12403,'CMPD4','2018-05-12 16:14:13','2018-05-12 16:14:13'),(12403,'FLJ32040','2018-05-12 16:14:13','2018-05-12 16:14:13'),(12403,'LGMD2J','2018-05-12 16:14:13','2018-05-12 16:14:13'),(12403,'MYLK5','2018-05-12 16:14:13','2018-05-12 16:14:13'),(12403,'TMD','2018-05-12 16:14:13','2018-05-12 16:14:13'),(15469,'\"auxilin\"','2018-05-12 16:14:13','2018-05-12 16:14:13'),(15469,'KIAA0473','2018-05-12 16:14:13','2018-05-12 16:14:13'),(15469,'PARK19','2018-05-12 16:14:13','2018-05-12 16:14:13'),(15766,'\"ADNPhomeobox1\"','2018-05-12 16:14:13','2018-05-12 16:14:13'),(15766,'ADNP1','2018-05-12 16:14:13','2018-05-12 16:14:13'),(15766,'KIAA0784','2018-05-12 16:14:13','2018-05-12 16:14:13'),(16499,'ARG','2018-05-12 16:14:13','2018-05-12 16:14:13'),(16499,'ARP','2018-05-12 16:14:13','2018-05-12 16:14:13'),(16499,'DNB1','2018-05-12 16:14:13','2018-05-12 16:14:13'),(16499,'KIAA0458','2018-05-12 16:14:13','2018-05-12 16:14:13'),(16762,'Ebfaz','2018-05-12 16:14:13','2018-05-12 16:14:13'),(16762,'JBTS19','2018-05-12 16:14:13','2018-05-12 16:14:13'),(16762,'KIAA0760','2018-05-12 16:14:13','2018-05-12 16:14:13'),(24268,'ASC1p50','2018-05-12 16:14:13','2018-05-12 16:14:13'),(24268,'CGI-18','2018-05-12 16:14:13','2018-05-12 16:14:13'),(24268,'Em:AC022392.3','2018-05-12 16:14:13','2018-05-12 16:14:13');
/*!40000 ALTER TABLE `gene_synonym` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `protein`
--

DROP TABLE IF EXISTS `protein`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protein` (
  `uniprotkb_entry` varchar(20) NOT NULL COMMENT 'ID of the protein.',
  `item_number` int(11) DEFAULT NULL COMMENT 'Item number of the protein record.',
  `data_collected_by` varchar(45) DEFAULT NULL COMMENT 'The name of the person collected data of the record.',
  `disease_search_term` varchar(45) NOT NULL COMMENT 'The disease term that the protein is involved in.',
  `protein_name` varchar(100) NOT NULL COMMENT 'The name of the protein.',
  `alternative_names` varchar(500) DEFAULT NULL COMMENT 'Alternative names of the protein.',
  `sequence_length` varchar(100) NOT NULL COMMENT 'Sequence length of the first isoform of the protein.',
  `mass` varchar(100) NOT NULL COMMENT 'Mass of the first isoform of the protein.',
  `hgnc_id` int(11) NOT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Create time of the record.',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update time of the record.',
  PRIMARY KEY (`uniprotkb_entry`),
  KEY `fk_protein_gene_idx` (`hgnc_id`),
  CONSTRAINT `fk_protein_gene` FOREIGN KEY (`hgnc_id`) REFERENCES `gene` (`hgnc_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The table containing protein records that are involved in diseases.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protein`
--

LOCK TABLES `protein` WRITE;
/*!40000 ALTER TABLE `protein` DISABLE KEYS */;
INSERT INTO `protein` VALUES ('O14746',49,'person4','melanoma','Telomerase reverse transcriptase','HEST2,Telomerase catalytic subunit,Telomerase-associated protein 2','1132','126997',11730,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('O60260',17,'person1','parkinson\'s disease','E3 ubiquitin-protein ligase parkin','Parkin RBR E3 ubiquitin-protein ligase,Parkinson juvenile disease protein 2','465','51641',8607,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('O60733',15,'person1','parkinson\'s disease','85/88 kDa calcium-independent phospholipase A2','Group VI phospholipase A2,Intracellular membrane-associated calcium-independent phospholipase A2 beta,Patatin-like phospholipase domain-containing protein 9','806','89903',9039,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('O75061',14,'person1','parkinson\'s disease','Putative tyrosine-protein phosphatase auxilin','DnaJ homolog subfamily C member 6','913','99997',15469,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('P02452',5,'person2','osteoporosis','Collagen alpha-1(I) chain','Alpha-1 type I collagen','1464','138941',2197,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('P02545',68,'person5','Muscle Disease','Prelamin-A/C','70 kDa lamin, Renal carcinoma antigen NY-REN-32','664','74139',6636,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('P03891',11,'person1','dementia','NADH-ubiquinone oxidoreductase chain 2','NADH dehydrogenase subunit 2','347','38961',7456,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('P04628',6,'person2','osteoporosis','Proto-oncogene Wnt-1','Proto-oncogene Int-1 homolog','370','40982',12774,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('P06213',80,'person6','Diabetes','Insulin Receptor','CD_antigen: CD220, Insulin receptor subunit alpha, Insulin receptor subunit beta','1382','156333',6091,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('P10275',44,'person4','breast cancer','Androgen receptor','Dihydrotestosterone receptor,Nuclear receptor subfamily 3 group C member 4','920','44643',644,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('P10721',84,'person6','Blood Disease','Mast/stem cell growth factor receptor Kit','Piebald trait protein,Proto-oncogene c-Kit,Tyrosine-protein kinase Kit,p145 c-kit,v-kit Hardy-Zuckerman 4 feline sarcoma viral oncogene homolog,CD_antigen: CD117','976','109865',6342,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('P11413',64,'person5','Anemia','Glucose-6-phosphate 1-dehydrogenase','','515','59257',4057,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('P16422',3,'person2','colon cancer','Epithelial cell adhesion molecule','Adenocarcinoma-associated antigen,Cell surface glycoprotein Trop-1,Epithelial cell surface antigen','314','34932',11529,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('P21333',85,'person6','Blood Disease','Filamin-','Actin-binding protein 280,Alpha-filamin,Endothelial actin-binding protein,Filamin-1,Non-muscle filamin','2647','280739',3754,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('P21757',33,'person3','esophagitis','Macrophage scavenger receptor types I and II','Macrophage acetylated LDL receptor I and II, Scavenger receptor class A member 1, CD_antigen: CD204','451','49762',7376,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('P21817',67,'person5','Muscle Disease','Ryanodine receptor 1','Skeletal muscle calcium release channel, Skeletal muscle ryanodine receptor, Skeletal muscle-type ryanodine receptor, Type 1 ryanodine receptor','5038','565176',10483,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('P25092',34,'person3','esophagitis','Heat-stable enterotoxin receptor','Guanylyl cyclase C, Intestinal guanylate cyclase','1073','123403',4688,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('P31749',1,'person2','colon cancer','RAC-alpha serine/threonine-protein kinase','Protein kinase B,Protein kinase B alpha,Proto-oncogene c-Akt,RAC-PK-alpha','480','55686',391,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('P35555',65,'person5','Muscle Disease','Fibrillin-1','','2871','312237',3603,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('P38398',45,'person4','breast cancer','Breast cancer type 1 susceptibility protein','RING finger protein 53,RING-type E3 ubiquitin transferase BRCA1','1863','202721',1100,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('P42771',50,'person4','melanoma','Cyclin-dependent kinase inhibitor 2A','Cyclin-dependent kinase 4 inhibitor A,Multiple tumor suppressor 1,p16-INK4a','156','16533',1787,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('P49768',12,'person1','dementia','Presenilin-1','Protein S182,Presenilin-1 NTF subunit,Presenilin-1 CTF subunit,Presenilin-1 CTF12','467','52668',9508,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('P51587',47,'person4','breast cancer','Breast cancer type 2 susceptibility protein','Fanconi anemia group D1 protein','3418','384202',1101,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('P51608',30,'person3','autism','Methyl-CpG-binding protein 2','','1464','138941',6990,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('P51787',79,'person6','Diabetes','Potassium voltage-gated channel subfamily KQT member 1','IKs producing slow voltage-gated potassium channel subunit alpha KvLQT11 Publication, KQT-like 1Curated,Voltage-gated potassium channel subunit Kv7.11 Publication','676','74699',6294,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('P60484',8,'person2','polydactyly','Phosphatidylinositol 3,4,5-trisphosphate 3-phosphatase and dual-specificity protein phosphatase PTEN','Mutated in multiple advanced cancers 1,Phosphatase and tensin homolog','403','47166',9588,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('P63092',7,'person2','osteoporosis','Guanine nucleotide-binding protein G(s) subunit alpha isoforms short','Adenylate cyclase-stimulating G alpha protein','394','45665',4392,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('P68431',4,'person2','glioma','Histone H3.1','Histone H3/a,Histone H3/b,Histone H3/c','136','15404',4766,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('P68871',61,'person5','Anemia','Hemoglobin subunit beta','Beta-globin, Hemoglobin beta chain','147','15998',4827,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('P69605',62,'person5','Anemia','Hemoglobin subunit alpha','Alpha-globin, Hemoglobin alpha chain','142','15258',4823,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('P84996',2,'person2','colon cancer','Protein ALEX','Alternative gene product encoded by XL-exon','626','67948',4392,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('Q03135',81,'person6','Diabetes','Caveolin-1','CAV','178','20472',1527,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('Q12879',51,'person4','melanoma','Glutamate receptor ionotropic, NMDA 2A','Glutamate [NMDA] receptor subunit epsilon-1,N-methyl D-aspartate receptor subtype 2A','1464','165283',4585,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('Q13501',13,'person1','dementia','Sequestosome-1','EBI3-associated protein of 60 kDa,Phosphotyrosine-independent ligand for the Lck SH2 domain of 62 kDa,Ubiquitin-binding protein p62','440','47687',11280,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('Q14524',82,'person6','Blood Disease','Sodium Channel Protein Type 5 Alpha','SCN5A','2016','226940',10593,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('Q2M1K9',9,'person2','Kidney Disease','Zinc finger protein 423','Olf1/EBF-associated zinc finger protein, Smad- and Olf-interacting zinc finger protein','1284','144605',16762,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('Q8N9N2',31,'person3','esophagitis','Activating signal cointegrator 1 complex subunit 1','ASC-1 complex subunit p50, Trip4 complex subunit p50','400','45509',24268,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('Q8WZ42',66,'person5','Muscle Disease','Titin','Connectin, Rhabdomyosarcoma antigen MU-RMS-40.14','34350','3816030',12403,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('Q92673',10,'person1','dementia','Sortilin-related receptor','Low-density lipoprotein receptor relative with 11 ligand-binding repeats,SorLA-1,Sorting protein-related receptor containing LDLR class A repeats','2214','248426',11185,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('Q96DA2',29,'person3','autism','Ras-related protein Rab-39B','','213','24622',16499,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('Q96SL4',32,'person3','esophagitis','Glutathione peroxidase 7','CL683','187','20996',4559,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('Q9H2P0',28,'person3','autism','Activity-dependent neuroprotector homeobox protein','Activity-dependent neuroprotective protein','1102','123563',15766,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('Q9UQD0',27,'person3','autism','Sodium channel protein type 8 subunit alpha','Sodium channel protein type VIII subunit alpha, Voltage-gated sodium channel subunit alpha Nav1.6','1980','225280',10596,'2018-04-29 10:05:17','2018-04-29 10:05:17'),('Q9Y6H5',16,'person1','parkinson\'s disease','Synphilin-1','Alpha-synuclein-interacting protein','919','100409',11139,'2018-04-29 10:05:17','2018-04-29 10:05:17');
/*!40000 ALTER TABLE `protein` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `protein_synonym`
--

DROP TABLE IF EXISTS `protein_synonym`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `protein_synonym` (
  `uniprotkb_entry` varchar(20) NOT NULL,
  `synonym` varchar(100) NOT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uniprotkb_entry`,`synonym`),
  CONSTRAINT `protein_synonym_ibfk_1` FOREIGN KEY (`uniprotkb_entry`) REFERENCES `protein` (`uniprotkb_entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `protein_synonym`
--

LOCK TABLES `protein_synonym` WRITE;
/*!40000 ALTER TABLE `protein_synonym` DISABLE KEYS */;
INSERT INTO `protein_synonym` VALUES ('O14746','HEST2','2018-05-12 16:14:40','2018-05-12 16:14:40'),('O14746','Telomerase-associatedprotein2','2018-05-12 16:14:40','2018-05-12 16:14:40'),('O14746','Telomerasecatalyticsubunit','2018-05-12 16:14:40','2018-05-12 16:14:40'),('O60260','ParkinRBRE3ubiquitin-proteinli','2018-05-12 16:14:40','2018-05-12 16:14:40'),('O60260','Parkinsonjuvenilediseaseprotei','2018-05-12 16:14:40','2018-05-12 16:14:40'),('O60733','GroupVIphospholipaseA2','2018-05-12 16:14:40','2018-05-12 16:14:40'),('O60733','Intracellularmembrane-associat','2018-05-12 16:14:40','2018-05-12 16:14:40'),('O60733','Patatin-likephospholipasedomai','2018-05-12 16:14:40','2018-05-12 16:14:40'),('O75061','DnaJhomologsubfamilyCmember6','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P02452','Alpha-1typeIcollagen','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P02545','70kDalamin','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P02545','RenalcarcinomaantigenNY-REN-32','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P03891','NADHdehydrogenasesubunit2','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P04628','Proto-oncogeneInt-1homolog','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P06213','CD_antigen:CD220','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P06213','Insulinreceptorsubunitalpha','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P06213','Insulinreceptorsubunitbeta','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P10275','Dihydrotestosteronereceptor','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P10275','Nuclearreceptorsubfamily3group','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P10721','CD_antigen:CD117','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P10721','p145c-kit','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P10721','Piebaldtraitprotein','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P10721','Proto-oncogenec-Kit','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P10721','Tyrosine-proteinkinaseKit','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P10721','v-kitHardy-Zuckerman4felinesar','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P16422','Adenocarcinoma-associatedantig','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P16422','CellsurfaceglycoproteinTrop-1','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P16422','Epithelialcellsurfaceantigen','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P21333','Actin-bindingprotein280','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P21333','Alpha-filamin','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P21333','Endothelialactin-bindingprotei','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P21333','Filamin-1','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P21333','Non-musclefilamin','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P21757','CD_antigen:CD204','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P21757','MacrophageacetylatedLDLrecepto','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P21757','ScavengerreceptorclassAmember1','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P21817','Skeletalmuscle-typeryanodinere','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P21817','Skeletalmusclecalciumreleasech','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P21817','Skeletalmuscleryanodinerecepto','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P21817','Type1ryanodinereceptor','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P25092','GuanylylcyclaseC','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P25092','Intestinalguanylatecyclase','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P31749','ProteinkinaseB','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P31749','ProteinkinaseBalpha','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P31749','Proto-oncogenec-Akt','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P31749','RAC-PK-alpha','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P38398','RING-typeE3ubiquitintransferas','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P38398','RINGfingerprotein53','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P42771','Cyclin-dependentkinase4inhibit','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P42771','Multipletumorsuppressor1','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P42771','p16-INK4a','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P49768','Presenilin-1CTF12','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P49768','Presenilin-1CTFsubunit','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P49768','Presenilin-1NTFsubunit','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P49768','ProteinS182','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P51587','FanconianemiagroupD1protein','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P51787','IKsproducingslowvoltage-gatedp','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P51787','KQT-like1Curated','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P51787','Voltage-gatedpotassiumchannels','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P60484','Mutatedinmultipleadvancedcance','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P60484','Phosphataseandtensinhomolog','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P63092','Adenylatecyclase-stimulatingGa','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P68431','HistoneH3/a','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P68431','HistoneH3/b','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P68431','HistoneH3/c','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P68871','Beta-globin','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P68871','Hemoglobinbetachain','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P69605','Alpha-globin','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P69605','Hemoglobinalphachain','2018-05-12 16:14:40','2018-05-12 16:14:40'),('P84996','Alternativegeneproductencodedb','2018-05-12 16:14:40','2018-05-12 16:14:40'),('Q03135','CAV','2018-05-12 16:14:40','2018-05-12 16:14:40'),('Q12879','Glutamate[NMDA]receptorsubunit','2018-05-12 16:14:40','2018-05-12 16:14:40'),('Q12879','N-methylD-aspartatereceptorsub','2018-05-12 16:14:40','2018-05-12 16:14:40'),('Q13501','EBI3-associatedproteinof60kDa','2018-05-12 16:14:40','2018-05-12 16:14:40'),('Q13501','Phosphotyrosine-independentlig','2018-05-12 16:14:40','2018-05-12 16:14:40'),('Q13501','Ubiquitin-bindingproteinp62','2018-05-12 16:14:40','2018-05-12 16:14:40'),('Q14524','SCN5A','2018-05-12 16:14:40','2018-05-12 16:14:40'),('Q2M1K9','Olf1/EBF-associatedzincfingerp','2018-05-12 16:14:40','2018-05-12 16:14:40'),('Q2M1K9','Smad-andOlf-interactingzincfin','2018-05-12 16:14:40','2018-05-12 16:14:40'),('Q8N9N2','ASC-1complexsubunitp50','2018-05-12 16:14:40','2018-05-12 16:14:40'),('Q8N9N2','Trip4complexsubunitp50','2018-05-12 16:14:40','2018-05-12 16:14:40'),('Q8WZ42','Connectin','2018-05-12 16:14:40','2018-05-12 16:14:40'),('Q8WZ42','RhabdomyosarcomaantigenMU-RMS-','2018-05-12 16:14:40','2018-05-12 16:14:40'),('Q92673','Low-densitylipoproteinreceptor','2018-05-12 16:14:40','2018-05-12 16:14:40'),('Q92673','SorLA-1','2018-05-12 16:14:40','2018-05-12 16:14:40'),('Q92673','Sortingprotein-relatedreceptor','2018-05-12 16:14:40','2018-05-12 16:14:40'),('Q96SL4','CL683','2018-05-12 16:14:40','2018-05-12 16:14:40'),('Q9H2P0','Activity-dependentneuroprotect','2018-05-12 16:14:40','2018-05-12 16:14:40'),('Q9UQD0','SodiumchannelproteintypeVIIIsu','2018-05-12 16:14:40','2018-05-12 16:14:40'),('Q9UQD0','Voltage-gatedsodiumchannelsubu','2018-05-12 16:14:40','2018-05-12 16:14:40'),('Q9Y6H5','Alpha-synuclein-interactingpro','2018-05-12 16:14:40','2018-05-12 16:14:40');
/*!40000 ALTER TABLE `protein_synonym` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uniprot_disease`
--

DROP TABLE IF EXISTS `uniprot_disease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uniprot_disease` (
  `uniprot_disease_name` varchar(100) NOT NULL COMMENT 'The name of the disease name.',
  `uniprot_disease_short_name` varchar(10) DEFAULT NULL COMMENT 'The short name of the disease.',
  `phenotype_mim_number` int(11) DEFAULT NULL COMMENT 'Phenotype number of the disease.',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Create time of the record.',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update time of the record.',
  PRIMARY KEY (`uniprot_disease_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The table of diseases.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uniprot_disease`
--

LOCK TABLES `uniprot_disease` WRITE;
/*!40000 ALTER TABLE `uniprot_disease` DISABLE KEYS */;
INSERT INTO `uniprot_disease` VALUES ('Acne inversa, familial, 3 ','ACNINV3',613737,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('ACTH-independent macronodular adrenal hyperplasia 1 ','AIMAH1',219080,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Albright hereditary osteodystrophy ','AHO',103580,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Alpha-thalassemia ','A-THAL',604131,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Alzheimer disease ','AD',104300,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Alzheimer disease 3 ','AD3',607822,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Alzheimer disease mitochondrial ','AD-MT',502500,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('androgen insensitivity syndrome ','AIS',300068,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Androgen insensitivity, partial ','PAIS',312300,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Anemia, non-spherocytic hemolytic, due to G6PD deficiency ','NSHA',300908,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Aplastic anemia ','AA',609135,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Atrial fibrillation, familial, 3 ','ATFB3a',607554,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Autism, X-linked 3 ','AUTSX3',300496,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Bannayan-Riley-Ruvalcaba syndrome ','BRRS',153480,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Barrett esophagus ','BE',614266,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Beta-thalassemia ','B-THAL\n',613985,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Beta-thalassemia B-THAL',NULL,613985,'2018-04-29 10:05:18','2018-04-29 10:05:18'),('Beta-thalassemia, dominant, inclusion body type ','B-THALIB',603902,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Beta-thalassemia, dominant, inclusion body type B-THALIB',NULL,603902,'2018-04-29 10:05:18','2018-04-29 10:05:18'),('Breast Cancer ','BC',114480,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Breast-ovarian cancer, familial, 1 ','BROVCA1',604370,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Breast-ovarian cancer, familial, 2 ','BROVCA2',612555,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Brugada syndrome 1 ','BRGDA1',601144,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Caffey disease ','CAFFD',114000,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Cardiac valvular dysplasia X-linked ','CVDX',314400,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Cardiomyopathy, dilated 1A ','CMD1A',115200,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Cardiomyopathy, dilated 1A CMD1A',NULL,115200,'2018-04-29 10:05:18','2018-04-29 10:05:18'),('Cardiomyopathy, dilated 1G ','CMD1G',604145,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Cardiomyopathy, dilated 1U ','CMD1U',613694,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Cardiomyopathy, familial hypertrophic 9 ','CMH9',613765,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Central core disease of muscle ','CCD',117000,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Colorectal cancer ','CRC',114500,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Congenital generalized lipodystrophy 3 ','CGL3',612526,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Cowden syndrome 1 ','CWS1',158350,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Cowden syndrome 6 ','CWS6',615109,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Diabetes mellitus, non-insulin-dependent ','NIDDM',125853,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Diarrhea 5, with tufting enteropathy, congenital ','DIAR5',613217,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Diarrhea 6 ','DIAR6',614616,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Dyskeratosis congenita, autosomal dominant, 2 ','DKCA2',613989,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Dyskeratosis congenita, autosomal recessive, 4 ','DKCB4',613989,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Ehlers-Danlos syndrome, classic type ','EDS',130000,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Emery-Dreifuss muscular dystrophy 2, autosomal dominant ','EDMD2',181350,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Epilepsy, focal, with speech disorder and with or without mental retardation ','FESD',245570,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Epileptic encephalopathy, early infantile, 13 ','EIEE13',614558,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Familial atypical multiple mole melanoma-pancreatic carcinoma syndrome ','FAMMMPC',606719,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Familial hyperinsulinemic hypoglycemia 5 ','HHF5',609968,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Fanconi anemia complementation group D1 ','FANCD1',605724,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('FG syndrome 2 ','FGS2',300321,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Frontotemporal dementia ','FTD',600274,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Frontotemporal dementia and/or amyotrophic lateral sclerosis 3 ','FTDALS3',616437,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Gastrointestinal stromal tumor ','GIST',606764,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Gliomas are benign or malignant central nervous system neoplasms derived from glial cells.',NULL,137800,'2018-04-29 10:05:18','2018-04-29 10:05:18'),('GNAS hyperfunction ','GNASHYP',139320,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Heinz body anemias ','HEIBAN',140700,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Heinz body anemias HEIBAN',NULL,140700,'2018-04-29 10:05:18','2018-04-29 10:05:18'),('Hemoglobin H disease ','HBH',613978,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Hereditary myopathy with early respiratory failure ','HMERF',603689,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Hereditary non-polyposis colorectal cancer 8 ','HNPCC8',613244,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Jervell and Lange-Nielsen syndrome 1 ','JLNS1',220400,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Joubert syndrome 19 ','JBTS19',614844,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Leber hereditary optic neuropathy ','LHON',535000,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Leprechaunism ','LEPRCH',246200,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Leukemia, acute myelogenous ','AML',601626,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Lhermitte-Duclos disease ','LDD',158350,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Limb-girdle muscular dystrophy 1B ','LGMD1B',159001,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Lipodystrophy, familial partial, 2 ','FPLD2',151660,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Lipodystrophy, familial partial, 2 FPLD2',NULL,151660,'2018-04-29 10:05:18','2018-04-29 10:05:18'),('Long QT syndrome 1 ','LQT1',192500,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Malignant hyperthermia 1 ','MHS1',145600,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Marfan syndrome ','MFS',154700,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('McCune-Albright syndrome ','MAS',174800,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Melanoma, cutaneous malignant 2 ','CMM2',155601,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Melanoma-astrocytoma syndrome ','MASTS',155755,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Mental retardation, autosomal dominant 26 ','MRD26',615834,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Mental retardation, X-linked 72 ','MRX72',300271,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Multiminicore disease with external ophthalmoplegia ','MMDO',255320,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Muscular dystrophy congenital LMNA-related ','MDCL',613205,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Myopathy, distal, with rimmed vacuoles ','DMRV',617158,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Nephronophthisis 14 ','NPHP14',614844,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Neurodegeneration with ataxia, dystonia, and gaze palsy, childhood-onset ','NADGP',617145,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Neurodegeneration with brain iron accumulation 2A ','NBIA2A',256600,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Neurodegeneration with brain iron accumulation 2B ','NBIA2B',610217,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Osteogenesis imperfecta 1 ','OI1',166200,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Osteogenesis imperfecta 15 ','OI15',615220,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Osteoporosis ','OSTEOP',166710,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Otopalatodigital syndrome 1 ','OPD1',311300,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Ovarian Cancer ','OC',167000,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Overlap connective tissue disease ','OCTD',604308,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Paget disease of bone 3 ','PDB3',167250,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Pancreatic cancer ','PNCA4',614320,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Pancreatic cancer 2 ','PNCA2',613347,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Parkinson disease ','PARK',168600,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Parkinson disease 14 ','PARK14',612953,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Parkinson disease 19A, juvenile-onset ','PARK19A',615528,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Parkinson disease 19B, early-onset ','PARK19B',615528,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Parkinson disease 2 ','PARK2',600116,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Periventricular nodular heterotopia 1 ','PVNH1',300049,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Piebald trait ','PBT',172800,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Pituitary adenoma, growth hormone-secreting, 1',NULL,102200,'2018-04-29 10:05:18','2018-04-29 10:05:18'),('Progressive familial heart block 1A ','PFHB1A',113900,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Proteus syndrome ','PROTEUSS',176920,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Pseudohypoparathyroidism 1B ','PHP1B',603233,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Pulmonary fibrosis, and/or bone marrow failure, telomere-related, 1 ','PFBMFT1',614742,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Pulmonary hypertension, primary, 3 ','PPH3',615343,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Rett syndrome ','RTT',312750,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Short QT syndrome 2 ','SQT2',609621,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Sick sinus syndrome 1 ','SSS1',608567,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Sickle cell anemia ','SKCA',693903,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Sickle cell anemia SKCA',NULL,603903,'2018-04-29 10:05:18','2018-04-29 10:05:18'),('Spinal and bulbar muscular atrophy X-linked 1 ','SMAX1',313200,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Squamous cell carcinoma of the head and neck ','HNSCC',275355,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Stiff skin syndrome ','SSKS',604308,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Sudden infant death syndrome ','SIDS',272120,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Tardive tibial muscular dystrophy ','TMD',600334,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Testicular germ cell tumor ','TGCT',273300,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Waisman syndrome ','WSMN',311510,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Weill-Marchesani syndrome 2 ','WMS2',608328,'2018-04-29 10:05:18','2018-05-12 16:14:26');
/*!40000 ALTER TABLE `uniprot_disease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uniprot_do_disease`
--

DROP TABLE IF EXISTS `uniprot_do_disease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uniprot_do_disease` (
  `uniprotkb_entry` varchar(20) NOT NULL,
  `uniprot_disease_name` varchar(100) NOT NULL,
  `do_id` int(11) NOT NULL,
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Create time of the record.',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Update time of the record.',
  PRIMARY KEY (`uniprotkb_entry`,`uniprot_disease_name`,`do_id`),
  KEY `fk_uniprot_do_disease_do_disease1_idx` (`do_id`),
  CONSTRAINT `fk_uniprot_do_disease_disease1` FOREIGN KEY (`uniprotkb_entry`, `uniprot_disease_name`) REFERENCES `disease` (`uniprotkb_entry`, `uniprot_disease_name`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_uniprot_do_disease_do_disease1` FOREIGN KEY (`do_id`) REFERENCES `do_disease` (`do_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The table links DO disease with disease.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uniprot_do_disease`
--

LOCK TABLES `uniprot_do_disease` WRITE;
/*!40000 ALTER TABLE `uniprot_do_disease` DISABLE KEYS */;
INSERT INTO `uniprot_do_disease` VALUES ('O14746','Aplastic anemia ',12449,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('O14746','Dyskeratosis congenita, autosomal dominant, 2 ',2729,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('O14746','Dyskeratosis congenita, autosomal recessive, 4 ',2729,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('O60260','Parkinson disease 2 ',60368,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('O60733','Neurodegeneration with brain iron accumulation 2A ',110735,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('O60733','Neurodegeneration with brain iron accumulation 2B ',110736,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('O60733','Parkinson disease 14 ',60900,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('O75061','Parkinson disease 19A, juvenile-onset ',60891,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('O75061','Parkinson disease 19B, early-onset ',60891,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P02452','Caffey disease ',4257,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P02452','Ehlers-Danlos syndrome, classic type ',14720,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P02452','Osteogenesis imperfecta 1 ',12347,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P02452','Osteoporosis ',11476,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P02545','Cardiomyopathy, dilated 1A ',110425,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P02545','Cardiomyopathy, dilated 1A CMD1A',12930,'2018-04-29 10:05:18','2018-04-29 10:05:18'),('P02545','Cardiomyopathy, dilated 1A CMD1A',110425,'2018-04-29 10:05:18','2018-04-29 10:05:18'),('P02545','Emery-Dreifuss muscular dystrophy 2, autosomal dominant ',11726,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P02545','Limb-girdle muscular dystrophy 1B ',110301,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P02545','Lipodystrophy, familial partial, 2 ',50440,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P02545','Lipodystrophy, familial partial, 2 FPLD2',50440,'2018-04-29 10:05:18','2018-04-29 10:05:18'),('P02545','Muscular dystrophy congenital LMNA-related ',50557,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P03891','Alzheimer disease mitochondrial ',10652,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P03891','Leber hereditary optic neuropathy ',705,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P04628','Osteogenesis imperfecta 15 ',12347,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P06213','Diabetes mellitus, non-insulin-dependent ',9352,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P06213','Familial hyperinsulinemic hypoglycemia 5 ',13317,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P06213','Leprechaunism ',50470,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P10275','androgen insensitivity syndrome ',4674,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P10275','Androgen insensitivity, partial ',1386,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P10275','Androgen insensitivity, partial ',9598,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P10275','Spinal and bulbar muscular atrophy X-linked 1 ',50782,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P10275','Spinal and bulbar muscular atrophy X-linked 1 ',60161,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P10721','Gastrointestinal stromal tumor ',9253,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P10721','Leukemia, acute myelogenous ',9119,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P10721','Piebald trait ',3263,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P10721','Testicular germ cell tumor ',321,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P10721','Testicular germ cell tumor ',4440,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P11413','Anemia, non-spherocytic hemolytic, due to G6PD deficiency ',2861,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P16422','Hereditary non-polyposis colorectal cancer 8 ',3883,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P21333','Cardiac valvular dysplasia X-linked ',3901,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P21333','Cardiac valvular dysplasia X-linked ',10329,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P21333','FG syndrome 2 ',14711,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P21333','Otopalatodigital syndrome 1 ',10383,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P21333','Periventricular nodular heterotopia 1 ',50454,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P21817','Central core disease of muscle ',3529,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P21817','Malignant hyperthermia 1 ',8545,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P25092','Diarrhea 6 ',60780,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P31749','Colorectal cancer ',1520,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P31749','Colorectal cancer ',9256,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P31749','Cowden syndrome 6 ',6456,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P31749','Proteus syndrome ',13482,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P35555','Weill-Marchesani syndrome 2 ',50475,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P38398','Breast Cancer ',1612,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P38398','Breast-ovarian cancer, familial, 1 ',5683,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P38398','Ovarian Cancer ',2394,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P38398','Ovarian Cancer ',10914,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P38398','Pancreatic cancer ',1793,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P42771','Melanoma, cutaneous malignant 2 ',10041,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P49768','Acne inversa, familial, 3 ',2280,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P49768','Alzheimer disease 3 ',110042,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P49768','Cardiomyopathy, dilated 1U ',110455,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P49768','Frontotemporal dementia ',9255,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P51587','Breast-ovarian cancer, familial, 2 ',5683,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P51587','Fanconi anemia complementation group D1 ',13636,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P51587','Pancreatic cancer 2 ',1793,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P51608','Rett syndrome ',1206,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P51787','Atrial fibrillation, familial, 3 ',50650,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P51787','Jervell and Lange-Nielsen syndrome 1 ',2842,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P51787','Long QT syndrome 1 ',2843,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P51787','Short QT syndrome 2 ',50793,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P60484','Bannayan-Riley-Ruvalcaba syndrome ',50657,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P60484','Cowden syndrome 1 ',6457,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P60484','Squamous cell carcinoma of the head and neck ',5520,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P63092','Albright hereditary osteodystrophy ',80053,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P63092','McCune-Albright syndrome ',1858,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P63092','McCune-Albright syndrome ',4964,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P63092','Pituitary adenoma, growth hormone-secreting, 1',8912,'2018-04-29 10:05:18','2018-04-29 10:05:18'),('P63092','Pituitary adenoma, growth hormone-secreting, 1',13270,'2018-04-29 10:05:18','2018-04-29 10:05:18'),('P63092','Pseudohypoparathyroidism 1B ',4184,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P68431','Gliomas are benign or malignant central nervous system neoplasms derived from glial cells.',3070,'2018-04-29 10:05:18','2018-04-29 10:05:18'),('P68431','Gliomas are benign or malignant central nervous system neoplasms derived from glial cells.',10782,'2018-04-29 10:05:18','2018-04-29 10:05:18'),('P68871','Beta-thalassemia ',12241,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P68871','Beta-thalassemia B-THAL',12241,'2018-04-29 10:05:18','2018-04-29 10:05:18'),('P68871','Beta-thalassemia, dominant, inclusion body type ',12241,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P68871','Beta-thalassemia, dominant, inclusion body type B-THALIB',12241,'2018-04-29 10:05:18','2018-04-29 10:05:18'),('P68871','Heinz body anemias ',12554,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P68871','Heinz body anemias ',60354,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P68871','Heinz body anemias HEIBAN',4617,'2018-04-29 10:05:18','2018-04-29 10:05:18'),('P68871','Heinz body anemias HEIBAN',12554,'2018-04-29 10:05:18','2018-04-29 10:05:18'),('P68871','Sickle cell anemia ',10923,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P68871','Sickle cell anemia SKCA',10923,'2018-04-29 10:05:18','2018-04-29 10:05:18'),('P69605','Alpha-thalassemia ',1099,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P69605','Alpha-thalassemia ',10241,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('P69605','Hemoglobin H disease ',110031,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Q03135','Congenital generalized lipodystrophy 3 ',50585,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Q03135','Pulmonary hypertension, primary, 3 ',14557,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Q12879','Epilepsy, focal, with speech disorder and with or without mental retardation ',2538,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Q13501','Frontotemporal dementia and/or amyotrophic lateral sclerosis 3 ',110068,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Q13501','Paget disease of bone 3 ',5408,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Q14524','Brugada syndrome 1 ',110218,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Q14524','Progressive familial heart block 1A ',13381,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Q14524','Sick sinus syndrome 1 ',13884,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Q14524','Sudden infant death syndrome ',9007,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Q2M1K9','Joubert syndrome 19 ',12712,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Q2M1K9','Nephronophthisis 14 ',12712,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Q8N9N2','Barrett esophagus ',9206,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Q8WZ42','Cardiomyopathy, dilated 1G ',110430,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Q8WZ42','Cardiomyopathy, familial hypertrophic 9 ',110315,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Q92673','Alzheimer disease ',10652,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Q96DA2','Mental retardation, X-linked 72 ',50776,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Q9H2P0','Mental retardation, autosomal dominant 26 ',60307,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Q9UQD0','Epileptic encephalopathy, early infantile, 13 ',50709,'2018-04-29 10:05:18','2018-05-12 16:14:26'),('Q9Y6H5','Parkinson disease ',14330,'2018-04-29 10:05:18','2018-05-12 16:14:26');
/*!40000 ALTER TABLE `uniprot_do_disease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'prod_p2p'
--
/*!50003 DROP FUNCTION IF EXISTS `HTMLLink` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`DBAuser`@`localhost` FUNCTION `HTMLLink`(ID varchar(10), URL varchar(100)) RETURNS varchar(300) CHARSET utf8
begin
declare Link varchar(300);
select concat('<a href=', '"', URL, ID,'" target="_blank"><b>', ID, '</b></a>') into Link;
return Link;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_126` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`DBAuser`@`localhost` PROCEDURE `sp_126`(in gene_id int)
begin

/*
	Test:
		call sp_126(16499);
*/
   
select distinct gene.`Gene ID`, gene.`Gene Name`, gene.`Gene Symbol`, gene.`Gene Synonyms`, gene.`Chromosomal Location of Gene`, count(protein.uniprotkb_entry) as `Number of Proteins`
        
from (
	select gene_table.hgnc_id, HtmlLink(gene_table.hgnc_id, site_url.url) as `Gene ID`,
    gene_table.approved_symbol as `Gene Symbol`, gene_table.approved_name as `Gene Name`,
    gene_table.gene_synonyms as `Gene Synonyms`, gene_table.chromosomal_location as `Chromosomal Location of Gene`
    from gene gene_table, (select site.url from external_site site where site.site_id=2) site_url
    ) gene

join 
	(
    
    select hgnc_id, uniprotkb_entry
    from protein
    ) protein
    
on gene.hgnc_id = protein.hgnc_id
	
where gene_id=gene.hgnc_id
;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_127` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`DBAuser`@`localhost` PROCEDURE `sp_127`(in protein_id varchar(20), in disease_name varchar(100))
begin

/*
		Test:
		call sp_127('P49768', 'Alzheimer disease 3 ');
		call sp_127('P02545', 'Lipodystrophy, familial partial, 2 ')
*/

select protein.`Protein ID`, protein.protein_name as `Protein Name`, protein_synonym.synonym as `Protein Synonym`,
	disease.uniprot_disease_name as `Disease Name`, protein.sequence_length as `Sequence Length`, protein.mass as `Mass`
		
        
from (
	select protein_table.uniprotkb_entry, HtmlLink(protein_table.uniprotkb_entry, site_url.url) as `Protein ID`,
    protein_table.protein_name, protein_table.sequence_length, protein_table.mass
    from protein protein_table, (select site.url from external_site site where site.site_id=1) site_url
    ) protein
join (
	
    select uniprot_disease_name, uniprotkb_entry
    from disease
    ) disease
on protein.uniprotkb_entry = disease.uniprotkb_entry
join (

	select uniprotkb_entry, synonym
    from protein_synonym
    ) protein_synonym
on protein_synonym.uniprotkb_entry = protein.uniprotkb_entry
where protein_id=protein.uniprotkb_entry
and disease_name = disease.uniprot_disease_name
;
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_128` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`DBAuser`@`localhost` PROCEDURE `sp_128`(in request int)
begin

case request

when 1 then call sp_128_1;
when 2 then call sp_128_2;
when 3 then call sp_128_3;
when 4 then call sp_128_4;
    
end case
;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_128_1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`DBAuser`@`localhost` PROCEDURE `sp_128_1`()
begin

-- call sp_128_1;

select protein.`Protein ID`, disease_term.disease_search_term as `Disease Search Term`, disease_term.data_collected_by as `Data Collected By`


from (
		select protein_table.uniprotkb_entry, HtmlLink(protein_table.uniprotkb_entry, site_url.url) as `Protein ID`
    from protein protein_table, (select site.url from external_site site where site.site_id=1) site_url
        ) protein
join
		(
			select term_id, uniprotkb_entry
            from disease_term_to_uniprot
		) term
on protein.uniprotkb_entry=term.uniprotkb_entry
join
		(
			select term_id, data_collected_by, disease_search_term
            from disease_term
            ) disease_term
on disease_term.term_id = term.term_id;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_128_2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`DBAuser`@`localhost` PROCEDURE `sp_128_2`()
begin

-- call sp_128_2();

select protein.`Protein ID`, uniprot_do_disease.do_id as `Disease Ontology ID`,
		do_disease.disease_name as `Disease Ontology Disease Name`, 
        do_disease.relationship as `Relationship`


from (select protein_table.uniprotkb_entry, HtmlLink(protein_table.uniprotkb_entry, site_url.url) as `Protein ID`
    from protein protein_table, (select site.url from external_site site where site.site_id=1) site_url
    ) protein

join 
	(
	select uniprotkb_entry, uniprot_disease_name, do_id
    from uniprot_do_disease
    ) uniprot_do_disease
on uniprot_do_disease.uniprotkb_entry = protein.uniprotkb_entry

join 
	(
	select do_id, disease_name, relationship
    from do_disease
    ) do_disease
on do_disease.do_id = uniprot_do_disease.do_id
;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_128_3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`DBAuser`@`localhost` PROCEDURE `sp_128_3`()
begin

/*
	Test:
		call sp_128_3();
*/
	   
select protein.`Protein ID`, uniprot_disease.uniprot_disease_name as `Disease Name`, uniprot_disease.uniprot_disease_short_name as `Disease Short Name`,
		uniprot_disease.phenotype_mim_number as `Phenotype MIM Number`
		
        
from (
	select protein_table.uniprotkb_entry, HtmlLink(protein_table.uniprotkb_entry, site_url.url) as `Protein ID`,
    protein_table.protein_name, protein_table.sequence_length, protein_table.mass
    from protein protein_table, (select site.url from external_site site where site.site_id=1) site_url
    ) protein
join (
	
    select uniprot_disease_name, uniprotkb_entry
    from disease
    ) disease

on protein.uniprotkb_entry = disease.uniprotkb_entry

join (

	select uniprot_disease_name, uniprot_disease_short_name, phenotype_mim_number
    from uniprot_disease
    ) uniprot_disease

on uniprot_disease.uniprot_disease_name = disease.uniprot_disease_name
;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_128_4` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`DBAuser`@`localhost` PROCEDURE `sp_128_4`()
begin

/*
	Test:
		call sp_128_4();
       
*/
	   
select id `ID`, description `Description`, value `Number of Records`

        
from db_statistics stats
;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-14 20:23:28
