-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pizzaweb
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category`
--

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` VALUES (1,'Pizza','1'),(2,'Mỳ Ý','1'),(3,'Sườn BBQ','1'),(4,'Salad','1'),(5,'Đồ Uống','1'),(6,'Combo','1');
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contact`
--

DROP TABLE IF EXISTS `tbl_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contact`
--

LOCK TABLES `tbl_contact` WRITE;
/*!40000 ALTER TABLE `tbl_contact` DISABLE KEYS */;
INSERT INTO `tbl_contact` VALUES (1,'Ta Huy','0977500358','taquanghuy6969@gmail.com','huydz'),(2,'Ta Huy','0977500358','taquanghuy6969@gmail.com','fsdfadadsad'),(3,'Nguyễn Đăng Đạt','0123456789','nguyedangdat@gmail.com','Trận đấu diễn ra trên SVĐ Cao Hùng của Đài Loan (Trung Quốc). Nhà đương kim vô địch AFF Cup mang đến '),(4,'Nguyễn Năng Thành Trung','0987654321','nguyenangthanhtrungahha@gmail.com','Trận đấu diễn ra trên SVĐ Cao Hùng của Đài Loan (Trung Quốc). Nhà đương kim vô địch AFF Cup mang đến một đội hình mạnh, với những ngôi sao như Chanathip Songkrasin, Teerasil Dangda hay Sarachat \r\n'),(5,'Ta Huy','0977500358','taquanghuy6969@gmail.com','ándmfds'),(6,'Trung','123456','haha@gmail.com','haha\r\n'),(7,'Ta Huy','0977500358','taquanghuy6969@gmail.com','haha'),(8,'Lee hoangf','0977500358','taquanghuy6969@gmail.com','asda'),(9,'Ta Huy','0977500358','taquanghuy6969@gmail.com','1rwrw45345345');
/*!40000 ALTER TABLE `tbl_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_customer`
--

DROP TABLE IF EXISTS `tbl_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_customer`
--

LOCK TABLES `tbl_customer` WRITE;
/*!40000 ALTER TABLE `tbl_customer` DISABLE KEYS */;
INSERT INTO `tbl_customer` VALUES (9,'Ta','Quang Huy','e10adc3949ba59abbe56e057f20f883e','taquanghuy6969@gmail.com','0977500358'),(10,'Ta','Huy','120705de7e61c5b322ad798b8ef225a7','taqua@gmail.com','0977500358'),(11,'Ta','Huy','e10adc3949ba59abbe56e057f20f883e','ta@gmail.com','0977500358');
/*!40000 ALTER TABLE `tbl_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_order`
--

DROP TABLE IF EXISTS `tbl_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `customer_phone` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cutomer_email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `customer_address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `total_price` decimal(13,2) DEFAULT NULL,
  `payment` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `payment` (`payment`),
  CONSTRAINT `tbl_order_ibfk_1` FOREIGN KEY (`payment`) REFERENCES `tbl_payment_oder` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_order`
--

LOCK TABLES `tbl_order` WRITE;
/*!40000 ALTER TABLE `tbl_order` DISABLE KEYS */;
INSERT INTO `tbl_order` VALUES (3,'Ta Huy','0977500358','taquanghuy6969@gmail.com','tdp so 5','2023-06-22 22:01:00',320000.00,1),(13,'Ta Huy','0977500358','taquanghuy6969@gmail.com','tdp so 5','2023-06-22 23:07:11',320000.00,1),(17,'Ta Huy','0977500358','taquanghuy6969@gmail.com','tdp so 5','2023-06-23 22:27:01',170000.00,1),(19,'Ta Huy','0977500358','taquanghuy6969@gmail.com','a','2023-06-23 22:30:04',310000.00,1),(20,'Ta Huy','0977500358','taquanghuy6969@gmail.com','tdp so 10','2023-06-23 23:27:59',320000.00,1),(21,'Ta Huy','0977500358','taquanghuy6969@gmail.com','tdp so 5','2023-06-24 02:01:05',170000.00,1),(23,'Ta Huy','0977500358','taquanghuy6969@gmail.com','tdp so 10','2023-06-24 09:23:54',320000.00,1);
/*!40000 ALTER TABLE `tbl_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_payment_oder`
--

DROP TABLE IF EXISTS `tbl_payment_oder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_payment_oder` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_payment_oder`
--

LOCK TABLES `tbl_payment_oder` WRITE;
/*!40000 ALTER TABLE `tbl_payment_oder` DISABLE KEYS */;
INSERT INTO `tbl_payment_oder` VALUES (1,'COD'),(2,'Chuyển khoản');
/*!40000 ALTER TABLE `tbl_payment_oder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_product_order`
--

DROP TABLE IF EXISTS `tbl_product_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_product_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` decimal(13,2) NOT NULL,
  `order_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `tbl_product_order_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `tbl_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_product_order`
--

LOCK TABLES `tbl_product_order` WRITE;
/*!40000 ALTER TABLE `tbl_product_order` DISABLE KEYS */;
INSERT INTO `tbl_product_order` VALUES (13,'1',1,1.00,3),(20,'P7. SMOKED CHICKEN PIZZA',1,150000.00,19),(21,'P5. MEAT LOVERS PIZZA',1,160000.00,19),(22,'P3. SALAMI PIZZA',1,170000.00,20),(23,'P4. CHORIZO PIZZA',1,150000.00,20),(24,'P3. SALAMI PIZZA',1,170000.00,21),(25,'P3. SALAMI PIZZA',1,170000.00,23),(26,'P8. MEXICAN PIZZA',1,150000.00,23);
/*!40000 ALTER TABLE `tbl_product_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_products`
--

DROP TABLE IF EXISTS `tbl_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `price` decimal(13,2) NOT NULL,
  `price_sale` decimal(13,2) DEFAULT NULL,
  `detail_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `avatar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `tbl_products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_products`
--

LOCK TABLES `tbl_products` WRITE;
/*!40000 ALTER TABLE `tbl_products` DISABLE KEYS */;
INSERT INTO `tbl_products` VALUES (26,'P3. SALAMI PIZZA',170000.00,110000.00,'<p><span style=\"color: rgb(0, 0, 0); font-family: Montserrat, sans-serif; font-size: 14px; background-color: rgba(255, 255, 255, 0.96);\">Xúc xích Salami, hành tây, sốt cà chua, pho mai.</span><br></p>','/uploads/sp3.png',1),(27,'P4. CHORIZO PIZZA',150000.00,90000.00,'<p><span style=\"color: rgb(0, 0, 0); font-family: Montserrat, sans-serif; font-size: 14px; background-color: rgba(255, 255, 255, 0.96);\">Xúc xích Tây Ban Nha, hành tây, ô liu, sốt cà chua, pho mai.</span><br></p>','/uploads/sp4.png',1),(28,'P5. MEAT LOVERS PIZZA',160000.00,100000.00,'<p><span style=\"color: rgb(0, 0, 0); font-family: Montserrat, sans-serif; font-size: 14px; background-color: rgba(255, 255, 255, 0.96);\">Xúc xích các loại, jam bông, hành tây, sốt cà chua, pho mai.</span><br></p>','/uploads/sp5.png',1),(29,'P6. BBQ CHICKEN PIZZA',150000.00,90000.00,'<p><span style=\"color: rgb(0, 0, 0); font-family: Montserrat, sans-serif; font-size: 14px; background-color: rgba(255, 255, 255, 0.96);\">Thịt gà xay, nấm, hành tây, sốt BBQ, pho mai.</span><br></p>','/uploads/sp6.png',1),(30,'P7. SMOKED CHICKEN PIZZA',150000.00,90000.00,'<span style=\"color: rgb(0, 0, 0); font-family: Montserrat, sans-serif; font-size: 14px; background-color: rgba(255, 255, 255, 0.96);\">Thịt gà hun khói, hành tây, nấm, sốt cà chua, pho mai.</span>','/uploads/sp7.png',1),(31,'P8. MEXICAN PIZZA',150000.00,90000.00,'<p><span style=\"color: rgb(0, 0, 0); font-family: Montserrat, sans-serif; font-size: 14px; background-color: rgba(255, 255, 255, 0.96);\">Thịt bò xay, dứa, sốt BBQ, pho mai.</span><br></p>','/uploads/sp8.png',1),(32,'P9. VEGGIE PIZZA',150000.00,90000.00,'<p><span style=\"color: rgb(0, 0, 0); font-family: Montserrat, sans-serif; font-size: 14px; background-color: rgba(255, 255, 255, 0.96);\">Nấm, ngô, dứa, ớt xanh, hành tây, cà chua, sốt cà chua, pho mai.</span><br></p>','/uploads/sp9.png',1),(33,'P10. MARGHERITA PIZZA',150000.00,90000.00,'<p><span style=\"color: rgb(0, 0, 0); font-family: Montserrat, sans-serif; font-size: 14px; background-color: rgba(255, 255, 255, 0.96);\">Cà chua, sốt cà chua, nhiều pho mai Mozzarella.</span><br></p>','/uploads/sp10.png',1),(34,'P11. MICHIGAN PIZZA',170000.00,110000.00,'<p><span style=\"color: rgb(0, 0, 0); font-family: Montserrat, sans-serif; font-size: 14px; background-color: rgba(255, 255, 255, 0.96);\">Tôm, cá ngừ, hành tây, ớt xanh, dứa, sốt cà chua, pho mai.</span><br></p>','/uploads/sp11.png',1),(35,'P12. SEAFOOD PIZZA',170000.00,110000.00,'<p><span style=\"color: rgb(0, 0, 0); font-family: Montserrat, sans-serif; font-size: 14px; background-color: rgba(255, 255, 255, 0.96);\">Thanh cua, tôm, ớt xanh, hành tây, cà chua, sốt cà chua, pho mai.</span><br></p>','/uploads/sp12.png',1),(40,'SN. SƯỜN NƯỚNG BBQ – SIZE M – 300GR',150000.00,90000.00,'<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, sans-serif; font-size: 14px; background-color: rgba(255, 255, 255, 0.96);\"><strong>Thành Phần</strong></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, sans-serif; font-size: 14px; background-color: rgba(255, 255, 255, 0.96);\">Khối lượng: Thịt heo 300gr</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, sans-serif; font-size: 14px; background-color: rgba(255, 255, 255, 0.96);\">Sốt BBQ truyền thống</p>','/uploads/sp1.png',3),(41,'ST. SƯỜN NƯỚNG BBQ – SIZE L – 500GR',150000.00,90000.00,'<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, sans-serif; font-size: 14px; background-color: rgba(255, 255, 255, 0.96);\"><strong>Thành Phần</strong></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, sans-serif; font-size: 14px; background-color: rgba(255, 255, 255, 0.96);\">Khối lượng: Thịt heo 500gr</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Montserrat, sans-serif; font-size: 14px; background-color: rgba(255, 255, 255, 0.96);\">Sốt BBQ truyền thống</p>','/uploads/sp2.png',3);
/*!40000 ALTER TABLE `tbl_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (10,'quanghuy','e10adc3949ba59abbe56e057f20f883e','taquanghuy6@gmail.com','0977500358',1),(11,'Admin','e10adc3949ba59abbe56e057f20f883e','taquanghuy6969@gmail.com','0977500358',1),(12,'Thanhtrung','e10adc3949ba59abbe56e057f20f883e','taquangtrung6969@gmail.com','123454',1);
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-24 19:02:16
