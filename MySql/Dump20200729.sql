CREATE DATABASE  IF NOT EXISTS `hack` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hack`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: hack
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `count_save`
--

DROP TABLE IF EXISTS `count_save`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `count_save` (
  `id` varchar(40) NOT NULL,
  `last_update` datetime DEFAULT NULL,
  `num_customer` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `count_save`
--

LOCK TABLES `count_save` WRITE;
/*!40000 ALTER TABLE `count_save` DISABLE KEYS */;
INSERT INTO `count_save` VALUES ('0ca447cbac507d27f3609fb04c246e6fdb433a91','2020-07-14 00:00:00','19'),('10b2b8d13ef7f4e09cc10913dde3d5e2ebfc5fa4','2020-07-14 00:00:00','21'),('225defe0a4443891faa4d8e8d25fb4d1bc264b1d','2020-07-14 00:00:00','24'),('2416d2d076d035dbe3cb6e0a37e5b53161aa2b85','2020-07-14 00:00:00','304'),('27eed682b3a732d464bcb2d349efcfba8c7170e1','2020-07-14 00:00:00','18'),('4bb383d294a4416f68436f39b0c0a0f4ad705065','2020-07-14 00:00:00','37'),('5e3b79d7e52f9d1cb4d7ed2d94f3a8d738fdb614','2020-07-14 00:00:00','22'),('6515c103172020299bc3a41f179a22c13a1d078e','2020-07-14 00:00:00','219'),('6a4550fc220c43606c0157636802fa8ef79d9026','2020-07-14 00:00:00','160'),('70b9562639e680bf8b5a017c461a7ad44af3a1c5','2020-07-14 00:00:00','154'),('73b135e114ef0b71bd456dcfc4ad45aa33a68d48','2020-07-14 00:00:00','433'),('ad8625808a52f64d3454aeff03fd28c8ec71cc1e','2020-07-14 00:00:00','71'),('b4bfbe74a65f46c923c86cdaecaebfcf57991282','2020-07-14 00:00:00','26'),('bcd05862bd2f3b5ce68a9d6262e153062fa3b191','2020-07-14 00:00:00','191'),('cee07197cd18b27f1a5df3b9dc25de62cffb0621','2020-07-14 00:00:00','18'),('eccaf92f10b984355e1c70c7b16d8ed475df63bd','2020-07-14 00:00:00','12'),('f4e84c4b17b2be2448016f3e7e1bffd33ff2654c','2020-07-14 00:00:00','20'),('f836e5f465b69c483991a35afaab9b6ee248128c','2020-07-14 00:00:00','0'),('fac4f8bda5b4aae84c00be36e343faf8261a3c50','2020-07-14 00:00:00','95');
/*!40000 ALTER TABLE `count_save` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `googlelastupdate`
--

DROP TABLE IF EXISTS `googlelastupdate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `googlelastupdate` (
  `LastRun` date NOT NULL,
  PRIMARY KEY (`LastRun`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `googlelastupdate`
--

LOCK TABLES `googlelastupdate` WRITE;
/*!40000 ALTER TABLE `googlelastupdate` DISABLE KEYS */;
INSERT INTO `googlelastupdate` VALUES ('2020-07-14');
/*!40000 ALTER TABLE `googlelastupdate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
  `id` varchar(40) NOT NULL,
  `max_customer_number` int DEFAULT NULL,
  `squarefeet` int DEFAULT NULL,
  `checkmax` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES ('02d90cf53198651059f698226b0474013142ee68',173,520,0),('03739b33c35b0cc71edf421822bbd9a98f437295',181,542,0),('06f4d06e637ef777c3c6a4cef0472041a1759420',150,449,0),('0ca447cbac507d27f3609fb04c246e6fdb433a91',181,542,0),('10b2b8d13ef7f4e09cc10913dde3d5e2ebfc5fa4',21,62,0),('225defe0a4443891faa4d8e8d25fb4d1bc264b1d',108,324,0),('2416d2d076d035dbe3cb6e0a37e5b53161aa2b85',150,449,0),('27eed682b3a732d464bcb2d349efcfba8c7170e1',173,520,0),('4bb383d294a4416f68436f39b0c0a0f4ad705065',154,461,0),('5afb8d7d876c9b91aa9126e352d6b42c0d7da156',108,323,0),('5e3b79d7e52f9d1cb4d7ed2d94f3a8d738fdb614',117,351,0),('6515c103172020299bc3a41f179a22c13a1d078e',147,440,0),('6a4550fc220c43606c0157636802fa8ef79d9026',43,128,0),('70b9562639e680bf8b5a017c461a7ad44af3a1c5',187,561,0),('73b135e114ef0b71bd456dcfc4ad45aa33a68d48',95,285,0),('8a1eb972af578fb536021259613f924dc96bd8a2',21,62,0),('8cd3d2d1c137f6dd9e29a284c133c85b3fa90e62',62,187,0),('ad8625808a52f64d3454aeff03fd28c8ec71cc1e',72,217,0),('b4bfbe74a65f46c923c86cdaecaebfcf57991282',108,325,0),('bcd05862bd2f3b5ce68a9d6262e153062fa3b191',62,187,0),('ca8233d0722b408c049ef98ca3886137cb120d29',72,217,0),('cee07197cd18b27f1a5df3b9dc25de62cffb0621',103,309,0),('dac2fb26f4dbe6955c5d578c2803f83a399b3925',147,440,0),('e8992211e8c76d9bcbe206a97a532eb3e3838a02',187,561,0),('eccaf92f10b984355e1c70c7b16d8ed475df63bd',135,405,0),('f4e84c4b17b2be2448016f3e7e1bffd33ff2654c',92,275,0),('f836e5f465b69c483991a35afaab9b6ee248128c',126,378,0),('fac4f8bda5b4aae84c00be36e343faf8261a3c50',146,438,0);
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stores_google`
--

DROP TABLE IF EXISTS `stores_google`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores_google` (
  `Id` varchar(40) NOT NULL,
  `lat` decimal(15,7) DEFAULT NULL,
  `lng` decimal(15,7) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `adress` varchar(300) DEFAULT NULL,
  `rating` decimal(15,7) DEFAULT NULL,
  `rating_numbers` varchar(45) DEFAULT NULL,
  `photo_ref` varchar(300) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `lvl1` int DEFAULT NULL,
  `lvl2` int DEFAULT NULL,
  `lvl3` int DEFAULT NULL,
  `lvl4` int DEFAULT NULL,
  `lvl5` int DEFAULT NULL,
  `lvl6` int DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores_google`
--

LOCK TABLES `stores_google` WRITE;
/*!40000 ALTER TABLE `stores_google` DISABLE KEYS */;
INSERT INTO `stores_google` VALUES ('02d90cf53198651059f698226b0474013142ee68',40.7547166,-73.9848582,'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png','Whole Foods Market','1095 6th Ave, New York',4.4000000,'4312','CmRaAAAA1VruP2wAe9XR_Te2t4U47vq4f8Qpu1RcQz1xQCbkQpRZHXYlnuOdL46PkbwmFK-j0tU_212qeXYK8XUUBe64FsI3XEDTFlv-bgBIWSbUThA5SbWcr-i-KZCyiQC60xySEhDrLJZEZ6iY06fd2zmyhD8UGhT71OfSimH4NMaZ9k2gCRsf3tcJFQ','(917) 728-5700',2,26,42,107,42,81),('03739b33c35b0cc71edf421822bbd9a98f437295',40.7526155,-73.9996513,'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png','Whole Foods Market','450 W 33rd St, New York',5.0000000,'1','CmRaAAAA0yzGJUCusH0uL4BsDV2x5-C8A-qgtdZMLJQpDm3NKn3QrnwGVanwjvCK2aGNzTKtU9mnH-qsJxdRRAXkWc_YNlNgJls1amFdFkYLiVS73W1BUDIm_kNFrZazmES2MLSlEhBFDHfcqLBd5sJip7sD1gktGhTuBusYATo6slPqbu5E-5SxoYiZFA','(646) 540-1104',75,140,181,127,128,69),('06f4d06e637ef777c3c6a4cef0472041a1759420',40.7939667,-73.9671163,'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png','Whole Foods Market','808 Columbus Ave, New York',4.2000000,'1809','CmRaAAAAz0KQPHAuLggncWoJqjBNt9cQvd-0NXMUsUmw9ZSn5DB3a4l_DSd_q8U0Pr23TH1je-0xAGqgfB0qXj49OurvuaWdVc-URWX-R1Jq_1YFtm5dep3oHiWiuqz1bUs7A8lGEhB-UyOgd2sVCbNv0Bih5coBGhTinE2inM3Ea44EcMv1m4N7-H3aow','(212) 222-6160',46,28,2,60,58,56),('0ca447cbac507d27f3609fb04c246e6fdb433a91',32.0670901,34.7766665,'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png','Shufersal Express','Ahad Ha\'Am St 55, Tel Aviv-Yafo',4.0000000,'57','CmRaAAAA-BL4_R_TnwQpKnwSxh4Ba2OVBmYj7otDYII4D0Rr3QyFGqaW3_BbE5FjXG5D6n4f4_LgaJxEO71zXPEflmvU5O_CTtQrEuFSNOUGg_qP_rNwDZs7524PKECu6t5FD8znEhCkyfM_Fj7Uo6nDtAC0JNlbGhTkWm33QfWT5ShMKqrHivdUKl9ckg','03-540-9545',75,140,181,127,128,69),('10b2b8d13ef7f4e09cc10913dde3d5e2ebfc5fa4',32.0867220,34.7823662,'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png','Shufersal Sheli','Shlomo Ibn Gabirol St 124, Tel Aviv-Yafo',3.4000000,'64','CmRaAAAAFy9yOVdrWt5kE-pAvPzb88tLgov_obmq7ZgHC8Ydsi_2Ej1s-SbZaGAPaXmaKJi-42T6NGJJ5TQHJWFRDT3OliHxDbzGioPU54VDqNbDcLbhyZD9QNnRWfNqRmMwenLkEhC6xMkir6ng2zzQdvHjdSLpGhTLSZx_hG6yg5ROhZacYMhBBYg3mA','03-527-8806',21,15,21,20,17,10),('225defe0a4443891faa4d8e8d25fb4d1bc264b1d',32.0684125,34.7774699,'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png','שופרסל גרין','Sheinkin St 59, Tel Aviv-Yafo',3.6000000,'73','NA','03-686-8406',108,84,62,43,82,73),('2416d2d076d035dbe3cb6e0a37e5b53161aa2b85',32.0749562,34.7920096,'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png','Shufersal Deal','Azrieli Center, Derech Menachem Begin 132, Tel Aviv-Yafo',4.0000000,'917','CmRaAAAAUXI_HJzeX7iJai8Jmg8c_Ss56ZrV-LxK2P5HjtHnuGbuYYgi0Ib1fKF3Rt-scYuNjRDppX4RXCTtXbGXo7NHm04XtS0dsM50ZSdAWoDViMX9H82_ERACnGmTNqhssIStEhDZgPsOLumOPAsZCXpUZD4IGhSwOsYB423X9SINFdR5mJj8LGDmGA','03-609-5050',46,28,2,60,58,56),('27eed682b3a732d464bcb2d349efcfba8c7170e1',32.0714709,34.7800201,'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png','Shufersal Express','Marmorek St 10, Tel Aviv-Yafo',3.6000000,'54','CmRaAAAAB8ZMC14x8ubZUE8CsMvYYYR246YbW1XYGV-972Ork6pqpmDkZvZACw7dOEvOKZBpKJe2Krxh4m8K5_9scmQtojhmwAeo6cp2OZC6k_8LAy1ERDqRUtJ8vQRGdEbFXl44EhCHRvNQggajc9mnrJdc9yP-GhSl-daFOA9S1A6yHDscdvZymCZ8ow','03-566-1431',2,26,42,107,42,81),('4bb383d294a4416f68436f39b0c0a0f4ad705065',32.0814278,34.7898728,'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png','שופרסל שלי','Weizmann St 14, Tel Aviv-Yafo',3.8000000,'113','CmRaAAAArhTPDTRHt1NsBO-QaLtf8qlqWzw3_fxW3NRAGHq2Aws1GrDLOfoc923sfteQUBwqnErX4xvD5raWH8Cr_NWG2jntxjQRSutvkNgsxPvSTf_t3r5p7M9XmAXT_-meEGjOEhCJ2cWUvX0HVjpsdpofsV_lGhSkVwehNkuzmC-oNLSagOt_9iHCxw','03-609-1193',2,57,5,27,41,2),('5afb8d7d876c9b91aa9126e352d6b42c0d7da156',32.0937141,34.7796257,'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png','Shufersal deal','Tel Aviv-Yafo',0.0000000,'0','NA','Not Found',1,31,24,5,2,8),('5e3b79d7e52f9d1cb4d7ed2d94f3a8d738fdb614',32.0973354,34.7984480,'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png','Shufersal Express','Tosefta St 15, Tel Aviv-Yafo',3.8000000,'69','CmRaAAAAy805BfcwaFIrYiyTPFo6Nax2AJRzSWvcuaRpTXIkoAUZlHfsSi3oJpvE67MBEa5auylFpS1EOhokjPQTO7CWcX4jWHZht0APXlmtFatuDlM-RsDV0f5ks8ZeO7UHc3_LEhAbD3Cd5EehxwfoNRF6OEROGhQhoIRbs71_vu7l0feKrT8UlD6jWw','03-604-3545',111,80,82,107,80,63),('6515c103172020299bc3a41f179a22c13a1d078e',32.0861275,34.7787640,'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png','Shufersal Sheli','Arlozorov St 53, Tel Aviv-Yafo',3.5000000,'663','CmRaAAAAZum6RtN6pEMbzAlN6bOMkXVnHc7wvW06N_9HUr9mRTTU8GyCBervlAgFAKRaf12AAbpyMgI3GMNxTXh4yJzn2_PAoFfNSSTUZmxoSoo4P4Yn8zUfjVoGynhJdb3LyAqXEhD5vEMd23ua8j33XWQrSXcSGhQK1mRS9vEOr9tkmgfxSAzeVFSJzw','Not Found',62,28,77,45,22,2),('6a4550fc220c43606c0157636802fa8ef79d9026',32.1126491,34.7967540,'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png','Shufersal Sheli','Brazil St 15, Tel Aviv-Yafo',3.5000000,'484','CmRaAAAA9--Er7CZvzPHP86HuF7C5y48Ce4fQdk3mSBU7Xs75uUcLsIyIyC7GGfcssMn9S8PTpW7jxof4DNdlS4KRHfbWnRkglocS6z9nQtQwYv3FHfKndrTRgKGho5A4eDCny6qEhD3kJVmDCJMlyktXJCe3VvSGhRAZ4T2d05FXLnuYjF8236avtfthQ','03-641-0585',26,17,16,23,17,4),('70b9562639e680bf8b5a017c461a7ad44af3a1c5',32.0913889,34.7825000,'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png','Shufersal Sheli','Shlomo Ibn Gabirol St 157, Tel Aviv-Yafo',3.2000000,'466','CmRaAAAALVRIEQhQ1lkaPURFbpLWIuSRv-pQArLtK84644VfoVbriNLlhjIltFiDdIX4LQ1jJopmIxik2jnFHE1VbjXII3mLlKMYb-IbXfCl1zadTHSM8K2ief4NqfIdNPVeM0qoEhCV8A1rlWmLYRwvtA1_eZXbGhQLqfnsxxsD4J7ilTkAErKD_DI6_Q','03-604-5565',106,138,84,131,143,77),('73b135e114ef0b71bd456dcfc4ad45aa33a68d48',32.0654839,34.7936901,'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png','Shufersal Deal','Yigal Alon St 76, Tel Aviv-Yafo',3.7000000,'1304','CmRaAAAAFdAJqKngHYunkvOgGfUEQi2lwgG8xsGU9XTB2uvbA8GD8blBxTbROwudOoz37Zz_jMr2kt9D2y_dZeo0m35tazXW6x-mD8Zv39o6pkU_E2iNhK4Vn0OVVxJq0m7iB7SXEhAwRW8HcpPY1Q_eogg79klfGhTNB75_mqHp2t5GZ9JMYpeXV-xj2A','03-562-8471',33,39,36,30,1,19),('8a1eb972af578fb536021259613f924dc96bd8a2',40.7616234,-74.0227105,'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png','Whole Foods Market','1400 Waterfront Terrace, Weehawken',4.3000000,'231','CmRaAAAAOCHnoB2qc6EZUII96_I9diYBKRSSFTjhEERhu5tF_VTamFhktvF7NvRzheHasAQqW9FZWU9ajFnb9C4M50qoeZZokBR6fPJDGl_yTUHNBYxWYlRZcxEd3yIIVrOwezwcEhBWTfSArr2rXTeC6x9r_otmGhT_u-yU8kaJ4nNc5KVx-_SZu-7rog','(551) 300-6080',21,15,21,20,17,10),('8cd3d2d1c137f6dd9e29a284c133c85b3fa90e62',40.7449592,-73.9952913,'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png','Whole Foods Market','250 7th Ave, New York',4.2000000,'2009','CmRaAAAA82CXjoaRpvXvMLV1MVZuI643QV8HYeUFPcy6-u-pTOJ23jsJszb082ybkwMETAuDsUjryixWTKY3Z8qR50XuHEaJiu7CMvHR_3k1o9-YWZVVDeyjM6-RuSDuvnOgOOXSEhDgeQN38UVJtYiokjEL9lXCGhTX_QtQPZXDhiUHUeKkK4ixjw2Kxg','(212) 924-5969',30,21,37,53,46,30),('ad8625808a52f64d3454aeff03fd28c8ec71cc1e',32.0754177,34.8037801,'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png','Shufersal Express','Katzenelson St 19, Giv\'atayim',3.7000000,'212','CmRaAAAAv8EKPdPttU7y65w88rA1kVr1DBPh9PDFMpbCCiHVQeKSv6qBHAJcJtE8xPYndF-yZaCK0gSz5kZ0Ec0xjhC-p9fnYeqy-XwS0vLM2K-7wkfe36MYuGEKT-IZX7yOwBcYEhDqpdlkzmB1ae9UM144ggmUGhT9lALYkaZFWDdGrTAMgztVPlAwAw','03-573-2353',63,39,23,33,12,6),('b4bfbe74a65f46c923c86cdaecaebfcf57991282',32.0753020,34.7764197,'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png','Shufersal Express','King George St 58, Tel Aviv-Yafo',4.0000000,'77','CmRaAAAAmzogMTAAamzHe0kOhh53oAzmDUe3BMols8j_MeuzvQCXUOjmEJ2BbLZqhwFQgmRUYb6tfATJEwC-KkcUypzzhTnz6AT4WYAdD_iluCddCQEFQCS2rEQZgMQeEIoWPvC4EhD9stsdS6y_vuBKZFQPUhRMGhSrl3Zt_JCDzdI8GcIX2Vmy8FZKTw','03-525-3571',63,86,81,92,58,101),('bcd05862bd2f3b5ce68a9d6262e153062fa3b191',32.0813121,34.7704048,'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png','Shufersal Sheli','Ben Yehuda St 79, Tel Aviv-Yafo',3.8000000,'582','CmRaAAAA43tZHh9SJSIBOGS7mdCjPCb-MCPxevt897WNtBif9knzSP_5WOT-4Llbr-x7qjHxIvJwnRS3Onn6tSnM0kRM8deXwM6a4atXEquIdxRPeefUxAsqeB3hqGSYo4zxIUuCEhDIAXkn6wsg8fd3HHPIvtAbGhSW6u_eVlELbnayYLAeYjY81zR6OA','03-522-9121',30,21,37,53,46,30),('ca8233d0722b408c049ef98ca3886137cb120d29',40.7593039,-73.9663868,'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png','Whole Foods Market','226 E 57th St, New York',4.2000000,'1631','CmRaAAAAh9JwHKxK2JjkjjrCT0eO_8AZRmUO2_Of4KextIU9zBH99vbh-i_RCi8RXxW-AVsrjNhjlo3Wa3uRhWcUal02LFp3X7tDAgMOQsMQ5du75ick6AeInpFGBTWrmBHYXZUQEhC-xtHnhcJSRqVIAiNWYOMlGhTtZVUIhQUzuu_w4dRNkHDUdQP33w','(646) 497-1222',63,39,23,33,12,6),('cee07197cd18b27f1a5df3b9dc25de62cffb0621',32.1010644,34.7834860,'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png','Shufersal Express','Boney ha-Ir St 9, Tel Aviv-Yafo',3.7000000,'55','CmRaAAAAoXuYnS4bDdhSFH7EOXOy6btnHCdeCt-qtYhazPrrtjaUBVfurZHjbrzJ_pjVrKh-VtTX1NbwYD9iOA5wElG4eklOuAPW11iQ_SSzCLf75VVtMSwTDNHPxl4Y6-e4u2otEhDXMYgDaFEd0qhw3Su7bUIwGhTstcd5--RtYSJ5DeDcwAILxESC0g','03-699-8839',66,64,66,56,67,100),('dac2fb26f4dbe6955c5d578c2803f83a399b3925',40.7796707,-73.9529499,'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png','Whole Foods Market','1551 3rd Ave, New York',4.1000000,'1510','CmRaAAAAqMZkPVWI8FeaDpY3c2_yqar52Vbe8I3y4ru3osV4fNHNnLihZrNoT6Xi02IENoKmWZ6qXXGT7FUaoUKehFv-3abLjsCEEVXpRriPzxe2chjywanHtbDE8yhFJ53ed-v3EhCe7mM1oGyIThUVpU-fgaNVGhTYS50suQhrbMW_IY_uG91Kza-eRw','(646) 891-3888',62,28,77,45,22,2),('e8992211e8c76d9bcbe206a97a532eb3e3838a02',40.7685526,-73.9831866,'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png','Whole Foods Market','10 Columbus Circle Ste Sc101, New York',4.3000000,'2199','CmRaAAAA4Uc44OwJL9PNfFMMnk20HLH-cS-AHdqvMDy4b38IkBBTEvjxLCcwuWYvm40ZXAPB8XkRHIN_dG8oSerDU55EPsFT8D9FBFrBHpjeCKlx3hO0hVtL9X4De1kzq8ASc6ivEhC7G_lMuZk79vvqr87syls2GhQbcmIjvxHzPgBd25CdzRzuqNcSsg','(212) 823-9600',106,138,84,131,143,77),('eccaf92f10b984355e1c70c7b16d8ed475df63bd',32.0769823,34.7714719,'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png','Shufersal Express','Yosef Lurya St 2, Tel Aviv-Yafo',3.9000000,'36','CmRaAAAArOlG2TQkemBxlXPXj96mKJx2xowE4xMXcMgD3v7BP6hxVwkyVEApjmzbqjLvXmNyTMmkEyMysLuDQs5y95PPJ79gif_J1EmYN71nOHedeXEjK9baRvC1R8UNZ3dI5jkHEhCddZWANFJiNAQsX5fLke49GhStNZTswSa9cMdDuPHGY4tREm8pCA','03-604-8298',90,52,20,63,82,84),('f4e84c4b17b2be2448016f3e7e1bffd33ff2654c',32.0941820,34.7928439,'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png','Shufersal Express','Yehuda HaMakkabbi St 81, Tel Aviv-Yafo',3.8000000,'60','CmRaAAAA4bZDIhoTyUcEZe-CLGrftOprN2tTJtitT3X5phob59U3cuaUyu_NJ8Od8eP9kXTryadvJJ6gTs2rJvIFj0qnv0aKQCodhX1vXszUDks7hl4H7-T1O989UOJ2Tktj9NkwEhCifmKBO8bs3vLX0WGcD5L0GhR1w9xv_ul1WeE_m-YN3_34jnfi2Q','03-602-4343',43,69,41,21,7,2),('f836e5f465b69c483991a35afaab9b6ee248128c',32.0813099,34.7704736,'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png','שלי ת\"א- בן יהודה','Ben Yehuda St 79, Tel Aviv-Yafo',0.0000000,'0','NA','03-524-6708',58,48,26,66,61,24),('fac4f8bda5b4aae84c00be36e343faf8261a3c50',32.0619732,34.8061748,'https://maps.gstatic.com/mapfiles/place_api/icons/shopping-71.png','Shufersal Sheli','Amishav St 45, Giv\'atayim',3.7000000,'287','CmRaAAAAH2YNBNxrtDHobmZIzBnTZyDtfGhZ9ogllizpL-5x35S2ebY6vk3dxk7gfgTBjCF9s5nE_2NzQOM4uXReD-SnqG02r11cVoxrIpVzeR-VgAECMWLNYT-EnFM_ZrYHul_kEhDAMvQHWQYe4uWcOC66_6_2GhRHxX5AOXuJ0YI8WL2dWjpvQTUwAQ','03-509-2400',146,96,91,85,74,39);
/*!40000 ALTER TABLE `stores_google` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storescount`
--

DROP TABLE IF EXISTS `storescount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storescount` (
  `id` varchar(40) NOT NULL,
  `last_update` datetime DEFAULT NULL,
  `num_customer` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storescount`
--

LOCK TABLES `storescount` WRITE;
/*!40000 ALTER TABLE `storescount` DISABLE KEYS */;
INSERT INTO `storescount` VALUES ('02d90cf53198651059f698226b0474013142ee68','2020-07-22 21:09:07','6'),('03739b33c35b0cc71edf421822bbd9a98f437295','2020-07-22 21:09:09','146'),('06f4d06e637ef777c3c6a4cef0472041a1759420','2020-07-22 21:09:06','1'),('0ca447cbac507d27f3609fb04c246e6fdb433a91','2020-07-22 19:49:12','146'),('10b2b8d13ef7f4e09cc10913dde3d5e2ebfc5fa4','2020-07-22 19:49:12','18'),('225defe0a4443891faa4d8e8d25fb4d1bc264b1d','2020-07-22 19:49:18','77'),('2416d2d076d035dbe3cb6e0a37e5b53161aa2b85','2020-07-22 19:49:09','1'),('27eed682b3a732d464bcb2d349efcfba8c7170e1','2020-07-22 19:49:10','6'),('4bb383d294a4416f68436f39b0c0a0f4ad705065','2020-07-22 19:49:16','5'),('5afb8d7d876c9b91aa9126e352d6b42c0d7da156','2020-07-22 19:49:19','38'),('5e3b79d7e52f9d1cb4d7ed2d94f3a8d738fdb614','2020-07-22 19:49:14','90'),('6515c103172020299bc3a41f179a22c13a1d078e','2020-07-22 19:49:09','109'),('6a4550fc220c43606c0157636802fa8ef79d9026','2020-07-22 19:49:15','20'),('70b9562639e680bf8b5a017c461a7ad44af3a1c5','2020-07-22 19:49:10','101'),('73b135e114ef0b71bd456dcfc4ad45aa33a68d48','2020-07-22 19:49:13','71'),('8a1eb972af578fb536021259613f924dc96bd8a2','2020-07-22 21:09:09','18'),('8cd3d2d1c137f6dd9e29a284c133c85b3fa90e62','2020-07-22 21:09:05','55'),('ad8625808a52f64d3454aeff03fd28c8ec71cc1e','2020-07-22 19:49:11','51'),('b4bfbe74a65f46c923c86cdaecaebfcf57991282','2020-07-22 19:49:13','103'),('bcd05862bd2f3b5ce68a9d6262e153062fa3b191','2020-07-22 19:49:08','55'),('ca8233d0722b408c049ef98ca3886137cb120d29','2020-07-22 21:09:08','51'),('cee07197cd18b27f1a5df3b9dc25de62cffb0621','2020-07-22 19:49:14','27'),('dac2fb26f4dbe6955c5d578c2803f83a399b3925','2020-07-22 21:09:06','109'),('e8992211e8c76d9bcbe206a97a532eb3e3838a02','2020-07-22 21:09:08','101'),('eccaf92f10b984355e1c70c7b16d8ed475df63bd','2020-07-22 19:49:16','53'),('f4e84c4b17b2be2448016f3e7e1bffd33ff2654c','2020-07-22 19:49:15','58'),('f836e5f465b69c483991a35afaab9b6ee248128c','2020-07-22 19:49:18','53'),('fac4f8bda5b4aae84c00be36e343faf8261a3c50','2020-07-22 19:49:17','89');
/*!40000 ALTER TABLE `storescount` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-29 11:03:52
