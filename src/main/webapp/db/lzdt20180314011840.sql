CREATE DATABASE  IF NOT EXISTS `lzdt` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `lzdt`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: lzdt
-- ------------------------------------------------------
-- Server version	5.7.15-log

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
-- Table structure for table `t_app`
--

DROP TABLE IF EXISTS `t_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_app` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name` varchar(20) NOT NULL COMMENT '应用名称',
  `app_desc` varchar(50) NOT NULL COMMENT '应用描述',
  `table_config_id` bigint(20) DEFAULT NULL COMMENT '配置表',
  `sort_no` varchar(20) NOT NULL COMMENT '排序',
  `status` varchar(1) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `FK_dka4vtlp3vmt99em1kyvtx9i3` (`table_config_id`),
  CONSTRAINT `FK_dka4vtlp3vmt99em1kyvtx9i3` FOREIGN KEY (`table_config_id`) REFERENCES `t_table_config` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_app`
--

LOCK TABLES `t_app` WRITE;
/*!40000 ALTER TABLE `t_app` DISABLE KEYS */;
INSERT INTO `t_app` VALUES (1,'app','应用管理',NULL,'1','1'),(2,'equipment','设备信息',8,'1','1'),(3,'workOrder','工单信息',9,'1','1'),(13,'unit','外委单位',7,'1','1'),(14,'location','位置管理',5,'1','1'),(15,'eqClass','设备分类',6,'1','1');
/*!40000 ALTER TABLE `t_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_base_menu`
--

DROP TABLE IF EXISTS `t_base_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_base_menu` (
  `id` bigint(20) NOT NULL DEFAULT '0' COMMENT '序号',
  `resource_code` varchar(20) NOT NULL COMMENT '资源编号',
  `app_name` varchar(50) DEFAULT NULL COMMENT '应用名称',
  `resource_level` bigint(20) DEFAULT NULL COMMENT '级别',
  `resource_name` varchar(20) NOT NULL COMMENT '资源名称',
  `resource_url` varchar(100) NOT NULL COMMENT '资源路径',
  `static_flag` varchar(1) DEFAULT NULL COMMENT '静态标识',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级节点',
  `icon_class` varchar(50) DEFAULT NULL COMMENT '图标',
  `sort_no` bigint(20) DEFAULT NULL COMMENT '排序',
  `status` varchar(1) DEFAULT NULL COMMENT '启用状态'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_base_menu`
--

LOCK TABLES `t_base_menu` WRITE;
/*!40000 ALTER TABLE `t_base_menu` DISABLE KEYS */;
INSERT INTO `t_base_menu` VALUES (96,'050401','ROLE',3,'新建记录','onclick=\'add()\'','0',7,'glyphicon glyphicon-plus',1,'1'),(97,'050402','ROLE',3,'编辑记录','onclick=\'edit()\'','0',7,'glyphicon glyphicon-edit',2,'1'),(98,'050403','ROLE',3,'保存记录','onclick=\'save()\'','0',7,'glyphicon glyphicon-save',3,'1'),(99,'050404','ROLE',3,'删除记录','onclick=\'del()\'','0',7,'glyphicon glyphicon-remove',4,'1'),(100,'050405','ROLE',3,'上一条','onclick=\'backwards()\'','0',7,'glyphicon glyphicon-backward',5,'1'),(101,'050406','ROLE',3,'下一条','onclick=\'forwards()\'','0',7,'glyphicon glyphicon-forward',6,'1');
/*!40000 ALTER TABLE `t_base_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_columns`
--

DROP TABLE IF EXISTS `t_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_columns` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `col_desc` varchar(20) NOT NULL,
  `begin_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `type` varchar(20) NOT NULL,
  `parent_id` varchar(50) DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  `sort_no` varchar(20) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_h4ro9kvk9hk6qs2q73efm992x` (`site_id`),
  CONSTRAINT `FK_h4ro9kvk9hk6qs2q73efm992x` FOREIGN KEY (`site_id`) REFERENCES `t_site` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_columns`
--

LOCK TABLES `t_columns` WRITE;
/*!40000 ALTER TABLE `t_columns` DISABLE KEYS */;
INSERT INTO `t_columns` VALUES (1,'首页','1','2018-03-04 16:11:02','2018-03-04 16:11:02','1',NULL,1,'1','1'),(2,'协会大事','1','2018-03-04 16:11:02','2018-03-04 16:11:02','1',NULL,1,'1','1'),(3,'协会大事','1','2018-03-04 16:11:02','2018-03-04 16:11:02','1',NULL,1,'1','1'),(4,'协会大事','1','2018-03-04 16:11:02','2018-03-04 16:11:02','1',NULL,1,'1','1'),(5,'协会大事','1','2018-03-04 16:11:02','2018-03-04 16:11:02','1',NULL,1,'1','1');
/*!40000 ALTER TABLE `t_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_columns_content`
--

DROP TABLE IF EXISTS `t_columns_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_columns_content` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `audit_status` varchar(10) NOT NULL COMMENT '审核状态',
  `content` longtext NOT NULL COMMENT '内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(20) NOT NULL COMMENT '创建人',
  `focus_pic_url` varchar(100) NOT NULL COMMENT '焦点图片',
  `release_time` datetime DEFAULT NULL COMMENT '发布时间',
  `sort_no` varchar(20) NOT NULL COMMENT '排序',
  `status` varchar(1) NOT NULL COMMENT '状态',
  `title` varchar(20) NOT NULL COMMENT '标题',
  `columns_id` bigint(20) DEFAULT NULL COMMENT '所属栏目',
  `site_id` bigint(20) DEFAULT NULL COMMENT '站点',
  PRIMARY KEY (`id`),
  KEY `FK_5ybls0nate0ir21ermfjrgqwg` (`columns_id`),
  KEY `FK_diio7v78wh31aqf3xdw5w0dy9` (`site_id`),
  CONSTRAINT `FK_5ybls0nate0ir21ermfjrgqwg` FOREIGN KEY (`columns_id`) REFERENCES `t_columns` (`id`),
  CONSTRAINT `FK_diio7v78wh31aqf3xdw5w0dy9` FOREIGN KEY (`site_id`) REFERENCES `t_site` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_columns_content`
--

LOCK TABLES `t_columns_content` WRITE;
/*!40000 ALTER TABLE `t_columns_content` DISABLE KEYS */;
INSERT INTO `t_columns_content` VALUES (1,'2','十九大闭幕','2018-03-09 09:27:38','huangbin','1','2018-03-09 09:27:50','1','1','十九大闭幕',1,1),(2,'1','兰州房价调控涨幅下降','2018-03-09 09:27:38','huangbin','1','2018-03-09 09:27:50','1','1','兰州房价调控涨幅下降',1,1),(3,'1','雁滩公园元宵灯会','2018-03-09 09:27:38','huangbin','1','2018-03-09 09:27:50','1','1','雁滩公园元宵灯会',1,1),(4,'1','十九大闭幕','2018-03-09 09:27:38','huangbin','1','2018-03-09 09:27:50','1','1','十九大闭幕',1,1),(5,'0','兰州房价调控涨幅下降','2018-03-09 09:27:38','huangbin','1','2018-03-09 09:27:50','1','1','兰州房价调控涨幅下降',1,1),(6,'1','雁滩公园元宵灯会','2018-03-09 09:27:38','huangbin','1','2018-03-09 09:27:50','1','1','雁滩公园元宵灯会',1,1),(7,'0','十九大闭幕','2018-03-09 09:27:38','huangbin','1','2018-03-09 09:27:50','1','1','十九大闭幕',1,1),(8,'1','兰州房价调控涨幅下降','2018-03-09 09:27:38','huangbin','1','2018-03-09 09:27:50','1','1','兰州房价调控涨幅下降',1,1),(9,'0','雁滩公园元宵灯会','2018-03-09 09:27:38','huangbin','1','2018-03-09 09:27:50','1','1','雁滩公园元宵灯会',1,1),(12,'1','雁滩公园元宵灯会','2018-03-09 09:27:38','huangbin','1','2018-03-09 09:27:50','1','1','雁滩公园元宵灯会',1,1);
/*!40000 ALTER TABLE `t_columns_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_eq_class`
--

DROP TABLE IF EXISTS `t_eq_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_eq_class` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '分类名称',
  `class_level` bigint(20) DEFAULT NULL COMMENT '分类级别',
  `has_child` varchar(1) DEFAULT NULL COMMENT '是否有子分类',
  `limit_hours` bigint(20) DEFAULT NULL COMMENT '维修时限',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级分类',
  `sort_no` bigint(20) DEFAULT NULL COMMENT '排序',
  `status` varchar(1) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `FK_4ldxl2aq8lxus75q9c38hg9an` (`parent_id`),
  CONSTRAINT `FK_4ldxl2aq8lxus75q9c38hg9an` FOREIGN KEY (`parent_id`) REFERENCES `t_eq_class` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='设备分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_eq_class`
--

LOCK TABLES `t_eq_class` WRITE;
/*!40000 ALTER TABLE `t_eq_class` DISABLE KEYS */;
INSERT INTO `t_eq_class` VALUES (2,'设备分类',1,'1',72,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_eq_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_equipment`
--

DROP TABLE IF EXISTS `t_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_equipment` (
  `id` int(11) NOT NULL COMMENT '序号',
  `eq_code` varchar(20) DEFAULT NULL COMMENT '设备编号',
  `eam_no` varchar(20) DEFAULT NULL COMMENT '资产编号',
  `description` varchar(20) DEFAULT NULL COMMENT '描述',
  `eq_model` varchar(50) DEFAULT NULL COMMENT '设备型号',
  `expected_year` bigint(20) DEFAULT NULL COMMENT '预计年限',
  `maintainer` varchar(20) DEFAULT NULL COMMENT '维修人员',
  `manage_level` bigint(20) DEFAULT NULL COMMENT '管理等级',
  `manager` varchar(20) DEFAULT NULL COMMENT '管理人员',
  `net_value` double DEFAULT NULL COMMENT '净值',
  `original_value` double DEFAULT NULL COMMENT '原值',
  `product_date` varchar(255) DEFAULT NULL COMMENT '出厂日期',
  `product_factory` varchar(50) DEFAULT NULL COMMENT '生产厂家',
  `purchase_date` varchar(255) DEFAULT NULL COMMENT '购置日期',
  `purchase_price` double DEFAULT NULL COMMENT '购置价格',
  `run_date` varchar(255) DEFAULT NULL COMMENT '运行日期',
  `setup_date` varchar(255) DEFAULT NULL COMMENT '安装日期',
  `warranty_period` varchar(255) DEFAULT NULL COMMENT '保修期限',
  `eq_class_id` bigint(20) DEFAULT NULL COMMENT '设备分类',
  `location_id` bigint(20) DEFAULT NULL COMMENT '所属位置',
  `auth_key` varchar(20) DEFAULT NULL COMMENT '授权码',
  `running` varchar(1) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_r5ya4ap66cuujml9n8o6y0kqv` (`eq_code`),
  KEY `FK_jau1cw3ijvgyp4fh43rnvbw3e` (`eq_class_id`),
  CONSTRAINT `FK_jau1cw3ijvgyp4fh43rnvbw3e` FOREIGN KEY (`eq_class_id`) REFERENCES `t_eq_class` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='设备信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_equipment`
--

LOCK TABLES `t_equipment` WRITE;
/*!40000 ALTER TABLE `t_equipment` DISABLE KEYS */;
INSERT INTO `t_equipment` VALUES (1,'1','1','1','1',1,'1',1,'1',1,1,'1','1','1',1,'1','1','1',2,2,'01','1','1'),(2,'2','1','1','1',2,'2',2,'2',2,1,'1','1','1',1,'1','1','1',2,2,'01','1','1');
/*!40000 ALTER TABLE `t_equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_etl_media`
--

DROP TABLE IF EXISTS `t_etl_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_etl_media` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file_absolute_url` varchar(100) NOT NULL,
  `file_name` varchar(50) NOT NULL,
  `file_relative_url` varchar(100) NOT NULL,
  `file_size` bigint(20) NOT NULL,
  `memo` varchar(100) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `etl_table_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_2ifnjpxuqksqrfm50jlg42jdu` (`etl_table_id`),
  CONSTRAINT `FK_2ifnjpxuqksqrfm50jlg42jdu` FOREIGN KEY (`etl_table_id`) REFERENCES `t_etl_table` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_etl_media`
--

LOCK TABLES `t_etl_media` WRITE;
/*!40000 ALTER TABLE `t_etl_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_etl_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_etl_table`
--

DROP TABLE IF EXISTS `t_etl_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_etl_table` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `base_table_name` varchar(50) NOT NULL,
  `domain_name` varchar(100) DEFAULT NULL,
  `drop_status` varchar(1) NOT NULL,
  `service_table_name` varchar(50) NOT NULL,
  `status` varchar(1) NOT NULL,
  `table_desc` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_etl_table`
--

LOCK TABLES `t_etl_table` WRITE;
/*!40000 ALTER TABLE `t_etl_table` DISABLE KEYS */;
INSERT INTO `t_etl_table` VALUES (1,'t_base_equipments','com.subway.domain.equipments.Equipments','1','t_equipments','1','设备信息表'),(2,'t_location','com.subway.domain','1','t_location','1','位置信息');
/*!40000 ALTER TABLE `t_etl_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_etl_table_config`
--

DROP TABLE IF EXISTS `t_etl_table_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_etl_table_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `base_col_desc` varchar(100) NOT NULL,
  `base_col_name` varchar(50) DEFAULT NULL,
  `class_type` varchar(100) DEFAULT NULL,
  `data_type` varchar(50) NOT NULL,
  `is_null` varchar(1) NOT NULL,
  `length` bigint(20) DEFAULT NULL,
  `reference_col_name` varchar(20) DEFAULT NULL,
  `reference_table` varchar(20) DEFAULT NULL,
  `reference_type` varchar(1) DEFAULT NULL,
  `service_col_name` varchar(50) DEFAULT NULL,
  `sort_no` bigint(20) DEFAULT NULL,
  `status` varchar(1) NOT NULL,
  `table_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_fsumbiilv16asdguxajcsne33` (`table_id`),
  CONSTRAINT `FK_fsumbiilv16asdguxajcsne33` FOREIGN KEY (`table_id`) REFERENCES `t_etl_table` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_etl_table_config`
--

LOCK TABLES `t_etl_table_config` WRITE;
/*!40000 ALTER TABLE `t_etl_table_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_etl_table_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_location`
--

DROP TABLE IF EXISTS `t_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `loc_code` varchar(30) DEFAULT NULL COMMENT '位置编码',
  `loc_name` varchar(100) DEFAULT NULL COMMENT '位置名称',
  `loc_desc` varchar(100) DEFAULT NULL COMMENT '位置描述',
  `loc_level` bigint(20) NOT NULL COMMENT '位置级别',
  `loc_type` varchar(1) DEFAULT NULL COMMENT '位置类型',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级位置',
  `status` varchar(1) NOT NULL COMMENT '状态',
  `auth_key` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_location`
--

LOCK TABLES `t_location` WRITE;
/*!40000 ALTER TABLE `t_location` DISABLE KEYS */;
INSERT INTO `t_location` VALUES (1,'01','兰州地铁','兰州地铁',1,NULL,NULL,'1','01'),(2,'0101','兰州轨道交通1号线','1号线',2,'1',1,'1','01'),(3,'0102','兰州轨道交通2号线','2号线',1,'1',1,'1','01'),(6,NULL,NULL,NULL,1,NULL,NULL,'1','01'),(7,NULL,NULL,NULL,1,NULL,NULL,'1','01'),(8,NULL,NULL,NULL,1,NULL,NULL,'1','01'),(9,NULL,NULL,NULL,1,NULL,NULL,'1','01'),(11,NULL,NULL,NULL,1,NULL,NULL,'1','01'),(13,NULL,NULL,NULL,1,NULL,NULL,'1','01'),(14,NULL,'东方红广场','东方红广场',1,'1',2,'0','01'),(15,NULL,'东方红广场123','1231',1,'1',1,'1','01'),(16,NULL,'为其违法','11231231',1,'1',1,'1','01');
/*!40000 ALTER TABLE `t_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_media`
--

DROP TABLE IF EXISTS `t_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_media` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `auth_key` varchar(10) NOT NULL,
  `file_absolute_url` varchar(200) DEFAULT NULL,
  `file_name` varchar(50) NOT NULL,
  `file_relative_url` varchar(200) NOT NULL,
  `file_size` bigint(20) NOT NULL,
  `memo` varchar(100) DEFAULT NULL,
  `status` varchar(1) NOT NULL,
  `thumb_nail_url` varchar(200) DEFAULT NULL,
  `upload_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_media`
--

LOCK TABLES `t_media` WRITE;
/*!40000 ALTER TABLE `t_media` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_member`
--

DROP TABLE IF EXISTS `t_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_member` (
  `id` int(11) NOT NULL,
  `card_no` varchar(20) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `enter_date` datetime DEFAULT NULL,
  `has_photo` varchar(1) DEFAULT NULL,
  `member_type` varchar(1) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `sort_no` bigint(20) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `auth_key` varchar(255) DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_member`
--

LOCK TABLES `t_member` WRITE;
/*!40000 ALTER TABLE `t_member` DISABLE KEYS */;
INSERT INTO `t_member` VALUES (1,'01','2010-01-01 00:00:00','2030-01-01 00:00:00','1','1','黄斌',1,'1',NULL,'/upload/member/2018031111040497086.jpg'),(2,'02','2010-01-01 00:00:00','2030-01-01 00:00:00','1','1','张超',2,'1',NULL,'upload/member/2018031111040497086.jpg'),(4,'04','2010-01-01 00:00:00','2030-01-01 00:00:00','1','1','李永成',4,'1',NULL,'upload/member/头像.jpg'),(6,'06','2010-01-01 00:00:00','2030-01-01 00:00:00','1','1','张品忠',6,'1',NULL,'upload/member/2018031111040497086.jpg'),(7,'07','2010-01-01 00:00:00','2030-01-01 00:00:00','1','1','顾晓英',7,'1',NULL,'/upload/member/女士.jpg');
/*!40000 ALTER TABLE `t_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_member_works`
--

DROP TABLE IF EXISTS `t_member_works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_member_works` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_focus` varchar(1) NOT NULL,
  `member_type` varchar(1) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `release_time` datetime DEFAULT NULL,
  `sort_no` bigint(20) DEFAULT NULL,
  `status` varchar(1) NOT NULL,
  `upload_time` datetime DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `unit_id` bigint(20) DEFAULT NULL,
  `photo_url` varchar(200) DEFAULT NULL,
  `works_type` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_auc66en6ynpj7yg3f6fs8u5g8` (`unit_id`),
  CONSTRAINT `FK_auc66en6ynpj7yg3f6fs8u5g8` FOREIGN KEY (`unit_id`) REFERENCES `t_unit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_member_works`
--

LOCK TABLES `t_member_works` WRITE;
/*!40000 ALTER TABLE `t_member_works` DISABLE KEYS */;
INSERT INTO `t_member_works` VALUES (1,'1','1','万里江山','2012-01-01 00:00:00',1,'1','2012-01-01 00:00:00',NULL,NULL,'upload/memberWorks/万里江山图.jpg',NULL),(2,'1','1','清明上河图','2012-01-01 00:00:00',1,'1','2012-01-01 00:00:00',NULL,NULL,'upload/memberWorks/清明上河图.jpg',NULL),(3,'1','1','丽人行','2012-01-01 00:00:00',1,'1','2012-01-01 00:00:00',NULL,NULL,'/upload/memberWorks/万里江山图.jpg',NULL),(4,'1','1','林海雪原','2012-01-01 00:00:00',1,'1','2012-01-01 00:00:00',NULL,NULL,'/upload/memberWorks/2018031111040497086.jpg',NULL),(5,'1','1','江南春晓','2012-01-01 00:00:00',1,'1','2012-01-01 00:00:00',NULL,NULL,'/upload/memberWorks/万里江山图.jpg',NULL),(6,'1','1','长城秋色','2012-01-01 00:00:00',1,'1','2012-01-01 00:00:00',NULL,NULL,'/upload/memberWorks/清明上河图.jpg',NULL),(7,'1','1','万里江山','2012-01-01 00:00:00',1,'1','2012-01-01 00:00:00',NULL,NULL,'upload/memberWorks/no_pic.jpg',NULL);
/*!40000 ALTER TABLE `t_member_works` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_menu`
--

DROP TABLE IF EXISTS `t_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `icon_class` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `menu_desc` varchar(20) COLLATE utf8_bin NOT NULL,
  `menu_name` varchar(20) COLLATE utf8_bin NOT NULL,
  `sort_no` bigint(20) DEFAULT NULL,
  `status` varchar(1) COLLATE utf8_bin NOT NULL,
  `url` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_56r8tk50cond0r1oo2x2s9weg` (`menu_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_menu`
--

LOCK TABLES `t_menu` WRITE;
/*!40000 ALTER TABLE `t_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_message`
--

DROP TABLE IF EXISTS `t_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_message` (
  `id` int(11) NOT NULL,
  `content` varchar(45) DEFAULT NULL,
  `sort_no` int(11) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `columns_id` bigint(20) DEFAULT NULL,
  `site_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_jj94v6e80f3toxannglpi587o` (`columns_id`),
  KEY `FK_l1brnj4pgfjehneq941r92v6x` (`site_id`),
  CONSTRAINT `FK_jj94v6e80f3toxannglpi587o` FOREIGN KEY (`columns_id`) REFERENCES `t_columns` (`id`),
  CONSTRAINT `FK_l1brnj4pgfjehneq941r92v6x` FOREIGN KEY (`site_id`) REFERENCES `t_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_message`
--

LOCK TABLES `t_message` WRITE;
/*!40000 ALTER TABLE `t_message` DISABLE KEYS */;
INSERT INTO `t_message` VALUES (1,'12312312',1,'1',NULL,NULL),(2,'1231231x3',1,'1',NULL,NULL),(3,'123123123123',1,'1',NULL,NULL);
/*!40000 ALTER TABLE `t_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_operate_log`
--

DROP TABLE IF EXISTS `t_operate_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_operate_log` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='t_operate_log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_operate_log`
--

LOCK TABLES `t_operate_log` WRITE;
/*!40000 ALTER TABLE `t_operate_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_operate_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pavilion_author`
--

DROP TABLE IF EXISTS `t_pavilion_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pavilion_author` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `has_photo` varchar(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `sort_no` bigint(20) DEFAULT NULL,
  `status` varchar(1) NOT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pavilion_author`
--

LOCK TABLES `t_pavilion_author` WRITE;
/*!40000 ALTER TABLE `t_pavilion_author` DISABLE KEYS */;
INSERT INTO `t_pavilion_author` VALUES (1,'黄斌','1','2012-01-01 00:00:00',1,'1','/upload/pavilionAuthor/头像.jpg'),(2,'张三','1','2012-01-01 00:00:00',1,'1','/upload/pavilionAuthor/头像.jpg'),(3,'李四','1','2012-01-01 00:00:00',1,'1','/upload/pavilionAuthor/头像.jpg'),(4,'王五','0','2012-01-01 00:00:00',1,'1',NULL),(5,'郭六','0','2012-01-01 00:00:00',1,'1',NULL),(6,'姚九','0','2012-01-01 00:00:00',1,'1',NULL);
/*!40000 ALTER TABLE `t_pavilion_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pavilion_works`
--

DROP TABLE IF EXISTS `t_pavilion_works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pavilion_works` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `col_name` varchar(20) NOT NULL,
  `has_photo` varchar(1) DEFAULT NULL,
  `is_focus` varchar(1) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `release_time` datetime DEFAULT NULL,
  `sort_no` bigint(20) DEFAULT NULL,
  `status` varchar(1) NOT NULL,
  `upload_time` datetime DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `columns_id` bigint(20) DEFAULT NULL,
  `photo_url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_l5n62fkr1qbqbmu5r4luuceo6` (`author_id`),
  KEY `FK_gkonxccpja969nvfbkhlkkwo0` (`columns_id`),
  CONSTRAINT `FK_gkonxccpja969nvfbkhlkkwo0` FOREIGN KEY (`columns_id`) REFERENCES `t_columns` (`id`),
  CONSTRAINT `FK_l5n62fkr1qbqbmu5r4luuceo6` FOREIGN KEY (`author_id`) REFERENCES `t_pavilion_author` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pavilion_works`
--

LOCK TABLES `t_pavilion_works` WRITE;
/*!40000 ALTER TABLE `t_pavilion_works` DISABLE KEYS */;
INSERT INTO `t_pavilion_works` VALUES (1,'1','1','1','清明上河图','2018-01-01 00:00:00',1,'1','2018-01-01 00:00:00',1,NULL,'/upload/pavilionWorks/清明上河图.jpg'),(2,'1','1','1','万里江山图','2018-01-01 00:00:00',1,'1','2018-01-01 00:00:00',1,NULL,'/upload/pavilionWorks/万里江山图.jpg'),(3,'1','1','1','1','2018-01-01 00:00:00',1,'1','2018-01-01 00:00:00',1,NULL,'/upload/pavilionWorks/万里江山图.jpg'),(4,'1','1','1','1','2018-01-01 00:00:00',1,'1','2018-01-01 00:00:00',1,NULL,'/upload/pavilionWorks/万里江山图.jpg'),(5,'1','1','1','1','2018-01-01 00:00:00',1,'1','2018-01-01 00:00:00',1,NULL,'/upload/pavilionWorks/万里江山图.jpg'),(6,'1','1','1','1','2018-01-01 00:00:00',1,'1','2018-01-01 00:00:00',1,NULL,'/upload/pavilionWorks/万里江山图.jpg'),(7,'1','1','1','1','2018-01-01 00:00:00',1,'1','2018-01-01 00:00:00',1,NULL,'/upload/pavilionWorks/万里江山图.jpg'),(8,'1','1','1','1','2018-01-01 00:00:00',1,'1','2018-01-01 00:00:00',1,NULL,'');
/*!40000 ALTER TABLE `t_pavilion_works` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_person`
--

DROP TABLE IF EXISTS `t_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_person` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `person_no` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '人员编号',
  `person_name` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '人员姓名',
  `birth_date` date DEFAULT NULL COMMENT '出生日期',
  `email` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '电子邮箱',
  `telephone` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系电话',
  `sort_no` bigint(20) DEFAULT NULL COMMENT '排序',
  `status` varchar(1) CHARACTER SET utf8 DEFAULT '1' COMMENT '启用状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='人员信息表 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_person`
--

LOCK TABLES `t_person` WRITE;
/*!40000 ALTER TABLE `t_person` DISABLE KEYS */;
INSERT INTO `t_person` VALUES (1,'004143','管理员','1989-04-01','huangbin10025@126.com','19993101300',1,'1'),(2,'002244','肖纯','1989-04-01','','',1,'1'),(3,'003322','张成飞','1989-04-01','','',1,'1'),(4,'004433','李国庆','1989-04-01','afgafadf@qq.com','18890989098',1,'1'),(5,'005133','李瑶','1989-04-01','','',1,'1'),(6,'006443','李琪','1989-04-01','','',1,'1'),(7,'007112','李莹',NULL,'876301469@qq.com','18810197978',1,'1'),(8,'007113','潘瑜',NULL,'panyu@163.com','18789098987',11,'1'),(9,'007114','赵婉',NULL,'zhaowan@163.com','18789098987',2,'1'),(10,'007115','李如意',NULL,'ruyi@163.com','18789098987',14,'1'),(11,'000909','张超',NULL,'zhangchao@qq.com','1568908909',19,'1'),(12,'000910','董存辉',NULL,'zhangchao@qq.com','1568908909',20,'1'),(13,'000920','张品忠',NULL,'zhangchao@qq.com','1568908909',21,'1'),(14,'000921','肖成',NULL,'zhangchao@qq.com','1568908909',22,NULL),(15,'000923','郭丹丹',NULL,'guodandan@qq.com','1568908909',24,'1');
/*!40000 ALTER TABLE `t_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_resource`
--

DROP TABLE IF EXISTS `t_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `resource_code` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '资源编号',
  `app_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '应用名称',
  `resource_level` bigint(20) DEFAULT NULL COMMENT '级别',
  `resource_name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '资源名称',
  `resource_url` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '资源路径',
  `static_flag` varchar(1) CHARACTER SET utf8 DEFAULT NULL COMMENT '静态标识',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级节点',
  `icon_class` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '图标',
  `sort_no` bigint(20) DEFAULT NULL COMMENT '排序',
  `status` varchar(1) CHARACTER SET utf8 DEFAULT NULL COMMENT '启用状态',
  PRIMARY KEY (`id`),
  KEY `FK_m48cgw8i5tfw17pfqfvtf24ef` (`parent_id`),
  CONSTRAINT `FK_m48cgw8i5tfw17pfqfvtf24ef` FOREIGN KEY (`parent_id`) REFERENCES `t_resource` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='系统资源信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_resource`
--

LOCK TABLES `t_resource` WRITE;
/*!40000 ALTER TABLE `t_resource` DISABLE KEYS */;
INSERT INTO `t_resource` VALUES (1,'0',NULL,0,'兰州地铁EAM','','1',NULL,NULL,1,'1'),(2,'01',NULL,1,'统计分析','','1',1,'fa fa-tachometer fa-fw',1,'1'),(3,'0101',NULL,2,'发稿统计','href=\'/portalConfig/index\'','1',2,NULL,3,'1'),(4,'02',NULL,1,'系统管理','','1',1,'fa fa-group fa-fw',2,'1'),(5,'0201',NULL,2,'用户信息','data-url=\'/user/list\'','1',4,NULL,1,'1'),(6,'0202',NULL,2,'人员信息','data-url=\'/person/list\'','1',4,NULL,2,'1'),(7,'0203',NULL,2,'角色信息','data-url=\'/role/list\'','1',4,NULL,3,'1'),(8,'0204',NULL,2,'应用授权','data-url=\'/authority/list\'','1',4,NULL,4,'1'),(9,'03',NULL,1,'设备管理','','1',1,'fa fa-file-text fa-fw',3,'1'),(10,'0301',NULL,2,'位置信息','data-url=\'/location/list\'','1',9,NULL,1,'1'),(11,'0302',NULL,2,'设备分类','data-url=\'/eqClass/list\'','1',9,NULL,2,'1'),(12,'04',NULL,1,'维修管理','','1',1,'fa fa-table fa-fw',5,'1'),(13,'0401',NULL,2,'报修车信息','data-url=\'/workOrder/list\'','1',12,NULL,1,'1'),(14,'0402',NULL,2,'会员作品','data-url=\'/memberWorks/list\'','1',12,NULL,2,'1'),(32,'0501','USER',3,'新建记录','onclick=\'add()\'','1',5,'glyphicon glyphicon-plus',1,'1'),(33,'0502','USER',3,'编辑记录','onclick=\'edit()\'','1',5,'glyphicon glyphicon-edit',2,'1'),(34,'0503','USER',3,'保存记录','onclick=\'saveUser()\'','1',5,'glyphicon glyphicon-save',3,'1'),(38,'1201','',2,'资源管理','data-url=\'resource/list\'','0',4,'',5,'1'),(40,'3801','RESOURCE',3,'新建记录','onclick=\'add()\'','0',38,'glyphicon glyphicon-plus',1,'1'),(41,'3802','RESOURCE',3,'编辑记录','onclick=\'edit()\'','0',38,'glyphicon glyphicon-edit',2,'1'),(42,'3803','RESOURCE',3,'保存记录','onclick=\'save()\'','0',38,'glyphicon glyphicon-save',3,'1'),(43,'3804','RESOURCE',3,'删除记录','onclick=\'del()\'','0',38,'glyphicon glyphicon-remove',4,'1'),(56,'56',NULL,1,'网上展馆','','1',1,'fa fa-star fa-fw',6,'1'),(63,'56',NULL,2,'展馆作者','data-url=\'/pavilionAuthor/list\'','1',56,'fa fa-tachometer fa-fw',1,'1'),(64,'56',NULL,2,'展馆作品','data-url=\'/pavilionWorks/list\'','1',56,'fa fa-tachometer fa-fw',2,'1'),(71,'601','PERSON',3,'新建记录','onclick=\'add()\'','0',6,'glyphicon glyphicon-plus',1,'1'),(72,'602','PERSON',3,'编辑记录','onclick=\'edit()\'','0',6,'glyphicon glyphicon-edit',2,'1'),(73,'603','PERSON',3,'保存记录','onclick=\'save()\'','0',6,'glyphicon glyphicon-save',3,'1'),(74,'604','PERSON',3,'删除记录','onclick=\'del()\'','0',6,'glyphicon glyphicon-remove',4,'1'),(96,'050401','ROLE',3,'新建记录','onclick=\'add()\'','0',7,'glyphicon glyphicon-plus',1,'1'),(97,'050402','ROLE',3,'编辑记录','onclick=\'edit()\'','0',7,'glyphicon glyphicon-edit',2,'1'),(98,'050403','ROLE',3,'保存记录','onclick=\'save()\'','0',7,'glyphicon glyphicon-save',3,'1'),(99,'050404','ROLE',3,'删除记录','onclick=\'del()\'','0',7,'glyphicon glyphicon-remove',4,'1'),(102,'102',NULL,1,'审核发布','','1',1,'fa fa-tachometer fa-fw',7,'1'),(103,'56',NULL,2,'审核列表','data-url=\'review/list\'','1',102,'fa fa-tachometer fa-fw',1,'1'),(112,'56',NULL,2,'复审列表','data-url=\'review/list\'','1',102,'fa fa-tachometer fa- tables',2,'1'),(116,'105',NULL,2,'外委单位','data-url=\'unit/list\'','1',9,'fa fa-tachometer fa-fw',3,'1'),(131,'1001','LOCATION',3,'新建记录','onclick=\'add()\'','1',10,'glyphicon glyphicon-plus',1,'1'),(132,'1002','SITE',3,'保存记录','onclick=\'save()\'','1',10,'glyphicon glyphicon-save',2,'1'),(133,'1002','SITE',3,'编辑记录','onclick=\'edit()\'','1',10,'glyphicon glyphicon-edit',3,'1'),(134,'1003','SITE',3,'删除记录','onclick=\'del()\'','1',10,'glyphicon glyphicon-remove',4,'1'),(159,'0206','',2,'数据授权','data-url=\'authorityData/list\'','0',4,NULL,6,'1'),(160,'020601','AUTHORITYDATA',3,'添加人员','onClick=\'grant()\'','0',159,'glyphicon glyphicon-user',1,'1'),(161,'08','',1,'数据导入','数据导入','0',1,'fa fa-group fa-fw',8,'1'),(162,'0801','',2,'数据导入表信息','data-url=\'/etlTable/list\'','0',161,'1',1,'1'),(163,'0802','',2,'导入表配置','data-url=\'/etl/list\'','0',161,'1',2,'1'),(164,'080101','ETLTABLE',3,'新建记录','onclick=\'add()\'','0',162,'glyphicon glyphicon-plus',1,'1'),(165,'080102','ETLTABLE',3,'编辑记录','onclick=\'edit()\'','0',162,'glyphicon glyphicon-edit',2,'1'),(166,'080103','ETLTABLE',3,'保存记录','onclick=\'save()\'','0',162,'glyphicon glyphicon-save',3,'1'),(167,'080104','ETLTABLE',3,'删除记录','onclick=\'del()\'','0',162,'glyphicon glyphicon-remove',4,'1'),(170,'080107','ETLTABLE',3,'提取配置项','onclick=\'extractConfig()\'','0',162,'glyphicon glyphicon-import',7,'1'),(171,'02',NULL,1,'开发管理','','1',1,'fa fa-group fa-fw',9,'1'),(172,'0201',NULL,2,'应用配置','data-url=\'/app/list\'','1',171,NULL,1,'1'),(173,'020101','APP',3,'新建记录','onclick=\'add()\'','0',172,'glyphicon glyphicon-plus',1,'1'),(174,'020102','APP',3,'编辑记录','onclick=\'edit()\'','0',172,'glyphicon glyphicon-edit',2,'1'),(175,'020103','APP',3,'保存记录','onclick=\'save()\'','0',172,'glyphicon glyphicon-save',3,'1'),(176,'020104','APP',3,'删除记录','onclick=\'del()\'','0',172,'glyphicon glyphicon-remove',4,'1'),(179,'020107','APP',3,'生成应用','onclick=\'genApp()\'','0',172,'glyphicon glyphicon-import',7,'1'),(180,'0303',NULL,2,'设备信息','data-url=\'/equipment/list\'','1',9,NULL,4,'1'),(181,'0202',NULL,2,'模板管理','data-url=\'/template/list\'','1',171,NULL,2,'1'),(182,'0403',NULL,2,'多媒体管理','data-url=\'/media/list\'','1',12,NULL,3,'1'),(183,'0203',NULL,2,'数据表配置','data-url=\'/tableConfig/list\'','1',171,NULL,3,'1'),(184,'050401','MEMBER',3,'新建记录','onclick=\'add()\'','0',12,'glyphicon glyphicon-plus',1,'1'),(185,'050402','MEMBER',3,'编辑记录','onclick=\'edit()\'','0',12,'glyphicon glyphicon-edit',2,'1'),(186,'050403','MEMBER',3,'保存记录','onclick=\'save()\'','0',12,'glyphicon glyphicon-save',3,'1'),(187,'050404','MEMBER',3,'删除记录','onclick=\'del()\'','0',12,'glyphicon glyphicon-remove',4,'1'),(190,'050401','MEMBERWORKS',3,'新建记录','onclick=\'add()\'','0',14,'glyphicon glyphicon-plus',1,'1'),(191,'050402','MEMBERWORKS',3,'编辑记录','onclick=\'edit()\'','0',14,'glyphicon glyphicon-edit',2,'1'),(192,'050403','MEMBERWORKS',3,'保存记录','onclick=\'save()\'','0',14,'glyphicon glyphicon-save',3,'1'),(193,'050404','MEMBERWORKS',3,'删除记录','onclick=\'del()\'','0',14,'glyphicon glyphicon-remove',4,'1'),(196,'56',NULL,2,'终审列表','data-url=\'review/list\'','1',102,'fa fa-tachometer fa-fw',3,'1'),(197,'050402','REVIEW',3,'提交复审','onclick=\'edit()\'','0',103,'glyphicon glyphicon-edit',2,'1'),(198,'050403','REVIEW',3,'提交发布','onclick=\'save()\'','0',103,'glyphicon glyphicon-save',3,'1'),(199,'050404','REVIEW',3,'退回','onclick=\'del()\'','0',103,'glyphicon glyphicon-remove',4,'1'),(200,'050405','REVIEW',3,'转报','onclick=\'backwards()\'','0',103,'glyphicon glyphicon-backward',5,'1'),(201,'050406','REVIEW',3,'已初审列表','onclick=\'forwards()\'','0',103,'glyphicon glyphicon-forward',6,'1'),(202,'050402','REVIEW',3,'提交复审','onclick=\'edit()\'','0',112,'glyphicon glyphicon-edit',2,'1'),(203,'050403','REVIEW',3,'提交发布','onclick=\'save()\'','0',112,'glyphicon glyphicon-save',3,'1'),(204,'050404','REVIEW',3,'退回','onclick=\'del()\'','0',112,'glyphicon glyphicon-remove',4,'1'),(205,'050405','REVIEW',3,'转报','onclick=\'backwards()\'','0',112,'glyphicon glyphicon-backward',5,'1'),(206,'050406','COLUMNSCONTENT',3,'新建记录','onclick=\'forwards()\'','0',112,'glyphicon glyphicon-forward',6,'1'),(207,'050402','UNIT',3,'新建记录','onclick=\'add()\'','0',116,'glyphicon glyphicon-edit',2,'1'),(208,'050403','COLUMNSCONTENT',3,'推荐|取消推荐','onclick=\'save()\'','0',116,'glyphicon glyphicon-save',3,'1'),(209,'050404','COLUMNSCONTENT',3,'撤销发布','onclick=\'del()\'','0',116,'glyphicon glyphicon-remove',4,'1'),(210,'050405','COLUMNSCONTENT',3,'转报','onclick=\'backwards()\'','0',116,'glyphicon glyphicon-backward',5,'1'),(211,'050406','COLUMNSCONTENT',3,'导出','onclick=\'forwards()\'','0',116,'glyphicon glyphicon-forward',6,'1'),(212,'050401','COLUMNS',3,'新建记录','onclick=\'add()\'','0',11,'glyphicon glyphicon-plus',1,'1'),(213,'050402','COLUMNS',3,'编辑记录','onclick=\'edit()\'','0',11,'glyphicon glyphicon-edit',2,'1'),(214,'050403','COLUMNS',3,'保存记录','onclick=\'save()\'','0',11,'glyphicon glyphicon-save',3,'1'),(215,'050404','COLUMNS',3,'删除记录','onclick=\'del()\'','0',11,'glyphicon glyphicon-remove',4,'1'),(216,'050401','PAVILIONAUTHOR',3,'新建记录','onclick=\'add()\'','0',63,'glyphicon glyphicon-plus',1,'1'),(217,'050402','PAVILIONAUTHOR',3,'编辑记录','onclick=\'edit()\'','0',63,'glyphicon glyphicon-edit',2,'1'),(218,'050403','PAVILIONAUTHOR',3,'保存记录','onclick=\'save()\'','0',63,'glyphicon glyphicon-save',3,'1'),(219,'050404','PAVILIONAUTHOR',3,'删除记录','onclick=\'del()\'','0',63,'glyphicon glyphicon-remove',4,'1'),(220,'050401','PAVILIONWORKS',3,'新建记录','onclick=\'add()\'','0',64,'glyphicon glyphicon-plus',1,'1'),(221,'050402','PAVILIONWORKS',3,'编辑记录','onclick=\'edit()\'','0',64,'glyphicon glyphicon-edit',2,'1'),(222,'050403','PAVILIONWORKS',3,'保存记录','onclick=\'save()\'','0',64,'glyphicon glyphicon-save',3,'1'),(223,'050404','PAVILIONWORKS',3,'删除记录','onclick=\'del()\'','0',64,'glyphicon glyphicon-remove',4,'1'),(224,'050401','COLUMNSCONTENT',3,'新建记录','onclick=\'add()\'','0',116,'glyphicon glyphicon-plus',1,'1'),(225,'050401','EQCLASS',3,'新建记录','onclick=\'add()\'','0',11,'glyphicon glyphicon-plus',1,'1');
/*!40000 ALTER TABLE `t_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_review`
--

DROP TABLE IF EXISTS `t_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_review` (
  `id` int(11) NOT NULL,
  `column_id` int(11) DEFAULT NULL,
  `sort_no` int(11) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='信息审核列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_review`
--

LOCK TABLES `t_review` WRITE;
/*!40000 ALTER TABLE `t_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role`
--

DROP TABLE IF EXISTS `t_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `role_desc` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '角色描述',
  `role_name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '角色名称',
  `sort_no` bigint(20) DEFAULT NULL COMMENT '排序',
  `status` varchar(1) CHARACTER SET utf8 NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ovncscj4f7ddi1sjqawayb6t5` (`role_desc`),
  UNIQUE KEY `UK_bojr4duyesjymks0ty5yjwhx3` (`role_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role`
--

LOCK TABLES `t_role` WRITE;
/*!40000 ALTER TABLE `t_role` DISABLE KEYS */;
INSERT INTO `t_role` VALUES (1,'管理员','admin',1,'1'),(2,'只读角色','游客',0,'1'),(3,'甘肃文联','wl',0,'1'),(4,'作家协会','zjxh',0,'1'),(5,'role1111','role',0,'1');
/*!40000 ALTER TABLE `t_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role_resource`
--

DROP TABLE IF EXISTS `t_role_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_role_resource` (
  `role_id` bigint(20) NOT NULL COMMENT '角色',
  `resource_id` bigint(20) NOT NULL COMMENT '资源',
  KEY `FK_hvd3v1xf4men57mo38osb4ih1` (`resource_id`),
  KEY `FK_qie95ky0tnqn6cl36rd606yxo` (`role_id`),
  CONSTRAINT `FK_hvd3v1xf4men57mo38osb4ih1` FOREIGN KEY (`resource_id`) REFERENCES `t_resource` (`id`),
  CONSTRAINT `FK_qie95ky0tnqn6cl36rd606yxo` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色资源信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role_resource`
--

LOCK TABLES `t_role_resource` WRITE;
/*!40000 ALTER TABLE `t_role_resource` DISABLE KEYS */;
INSERT INTO `t_role_resource` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,32),(1,33),(1,34),(1,38),(1,40),(1,41),(1,42),(1,43),(1,56),(1,63),(1,64),(1,71),(1,72),(1,73),(1,74),(1,96),(1,97),(1,98),(1,99),(1,102),(1,103),(1,116),(1,131),(1,132),(1,133),(1,134),(1,159),(1,160),(1,161),(1,162),(1,163),(1,164),(1,165),(1,166),(1,167),(1,170),(1,171),(1,172),(1,173),(1,174),(1,175),(1,176),(1,179),(1,180),(1,181),(1,182),(1,183),(1,184),(1,185),(1,186),(1,187),(1,190),(1,191),(1,192),(1,193),(1,197),(1,198),(1,199),(1,200),(1,201),(1,207),(1,208),(1,209),(1,210),(1,211),(1,212),(1,213),(1,214),(1,215),(1,216),(1,217),(1,218),(1,219),(1,220),(1,221),(1,222),(1,223),(1,224),(1,225);
/*!40000 ALTER TABLE `t_role_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_role_user`
--

DROP TABLE IF EXISTS `t_role_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_role_user` (
  `role_id` bigint(20) NOT NULL COMMENT '角色',
  `user_id` bigint(20) NOT NULL COMMENT '用户',
  KEY `FK_5jg9sj3cv5ews49641tu2hitf` (`user_id`),
  KEY `FK_jkq2lfs3kx3cexyr5raqtrgg0` (`role_id`),
  CONSTRAINT `FK_5jg9sj3cv5ews49641tu2hitf` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FK_jkq2lfs3kx3cexyr5raqtrgg0` FOREIGN KEY (`role_id`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='角色用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_role_user`
--

LOCK TABLES `t_role_user` WRITE;
/*!40000 ALTER TABLE `t_role_user` DISABLE KEYS */;
INSERT INTO `t_role_user` VALUES (1,2),(1,6),(1,5),(1,4),(1,3),(1,7),(2,2),(1,1);
/*!40000 ALTER TABLE `t_role_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_site`
--

DROP TABLE IF EXISTS `t_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_site` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `domain_name` varchar(20) NOT NULL,
  `begin_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `deploy_host` varchar(20) NOT NULL,
  `sort_no` varchar(20) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_site`
--

LOCK TABLES `t_site` WRITE;
/*!40000 ALTER TABLE `t_site` DISABLE KEYS */;
INSERT INTO `t_site` VALUES (1,'文艺评论家协会','www.pljxh.com','2014-04-20 00:00:00','2024-04-20 00:00:00','1','1','1'),(2,'十九大','www.shijiuda.com','2017-10-31 00:00:00','2027-10-31 00:00:00','1','1','1'),(3,'甘肃省文联网','www.wlweb.com','2011-11-28 00:00:00','2016-11-28 00:00:00','http://192.168.0.1','1','1'),(4,'甘肃省戏剧家协会','www.xjxh.com','2011-12-08 00:00:00','2021-12-08 00:00:00','1','1','1'),(5,'甘肃省作家协会','www.zjjxh.com','2011-12-08 00:00:00','2021-12-08 00:00:00','1','1','1'),(6,'甘肃省美术家协会','www.msjxh.com','2011-12-08 00:00:00','2021-12-08 00:00:00','1','1','1'),(7,'甘肃省杂技家协会','www.zjaxh.com','2011-12-08 00:00:00','2021-12-08 00:00:00','1','1','1'),(8,'甘肃省音乐家协会','www.yyjxh.com','2011-12-08 00:00:00','2021-12-08 00:00:00','1','1','1'),(9,'甘肃省舞蹈家协会','www.wdjxh.com','2011-12-08 00:00:00','2021-12-08 00:00:00','1','1','1'),(10,'甘肃省曲艺家协会','www.qyjxh.com','2011-12-08 00:00:00','2021-12-08 00:00:00','1','1','1'),(11,'甘肃省民间文艺家协会','www.mjwyjxh.com','2011-12-08 00:00:00','2021-12-08 00:00:00','1','1','1'),(12,'甘肃省书法家协会','www.fsjxh.com','2011-12-08 00:00:00','2021-12-08 00:00:00','1','1','1'),(13,'甘肃省电影家协会','www.dyjxh.com','2011-12-08 00:00:00','2021-12-08 00:00:00','1','1','1'),(14,'甘肃省电视家协会','www.dsjxh.com','2011-12-08 00:00:00','2021-12-08 00:00:00','1','1','1'),(15,'甘肃省摄影家协会','www.syjxh.com','2011-12-08 00:00:00','2021-12-08 00:00:00','1','1','1'),(16,'理论研究室','www.llyjs.com','2011-12-08 00:00:00','2021-12-08 00:00:00','1','1','1'),(17,'甘肃省文学院','www.wxy.com','2011-12-08 00:00:00','2021-12-08 00:00:00','1','1','1'),(18,'测试数据','www.ftbjb.com','2011-12-08 00:00:00','2021-12-08 00:00:00','1','1','1');
/*!40000 ALTER TABLE `t_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_info`
--

DROP TABLE IF EXISTS `t_sys_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `sys_name` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '参数名称',
  `description` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '描述',
  `logo_url` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'logo图标',
  `sort_no` bigint(20) DEFAULT NULL COMMENT '排序',
  `status` varchar(1) CHARACTER SET utf8 DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_594nbbdvvwwqa3yft4p5jxbcd` (`sys_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='系统配置信息表 ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_info`
--

LOCK TABLES `t_sys_info` WRITE;
/*!40000 ALTER TABLE `t_sys_info` DISABLE KEYS */;
INSERT INTO `t_sys_info` VALUES (1,'system_name','网站发布系统','/img/logo/logo.png',1,'1'),(2,'pre_maint_auto_schedule','是否自动调度',NULL,2,'1');
/*!40000 ALTER TABLE `t_sys_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_sys_log`
--

DROP TABLE IF EXISTS `t_sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `user_name` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户',
  `remote_ip` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '访问ip地址',
  `request_time` datetime DEFAULT NULL COMMENT '请求时间',
  `url` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '请求路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='系统日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_sys_log`
--

LOCK TABLES `t_sys_log` WRITE;
/*!40000 ALTER TABLE `t_sys_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_table_column_config`
--

DROP TABLE IF EXISTS `t_table_column_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_table_column_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `class_type` varchar(100) NOT NULL,
  `col_desc` varchar(100) NOT NULL,
  `col_name` varchar(50) NOT NULL,
  `data_type` varchar(50) NOT NULL,
  `is_null` varchar(1) NOT NULL,
  `length` bigint(20) DEFAULT NULL,
  `sort_no` bigint(20) DEFAULT NULL,
  `status` varchar(1) NOT NULL,
  `table_id` bigint(20) NOT NULL,
  `converter` varchar(50) DEFAULT NULL,
  `formatter` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_g1jw2eob5dg8nf2ww47dyg455` (`table_id`),
  CONSTRAINT `FK_g1jw2eob5dg8nf2ww47dyg455` FOREIGN KEY (`table_id`) REFERENCES `t_table_config` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_table_column_config`
--

LOCK TABLES `t_table_column_config` WRITE;
/*!40000 ALTER TABLE `t_table_column_config` DISABLE KEYS */;
INSERT INTO `t_table_column_config` VALUES (1,'int(11)','序号','id','int','0',NULL,1,'1',5,NULL,NULL),(2,'varchar(30)','位置编码','loCode','varchar','1',30,2,'1',5,NULL,NULL),(3,'varchar(100)','位置名称','locName','varchar','1',100,3,'1',5,NULL,NULL),(4,'varchar(100)','位置描述','locDesc','varchar','1',100,4,'1',5,NULL,NULL),(5,'bigint(20)','位置级别','locLevel','bigint','0',NULL,5,'1',5,NULL,NULL),(6,'varchar(1)','位置类型','locType','varchar','1',1,6,'1',5,NULL,NULL),(7,'bigint(20)','上级位置','parentId','bigint','1',NULL,7,'1',5,NULL,NULL),(8,'varchar(1)','状态','status','varchar','0',1,8,'1',5,NULL,NULL),(9,'bigint(20)','序号','id','bigint','0',NULL,1,'1',6,'1','1'),(10,'varchar(20)','分类名称','name','varchar','1',20,2,'1',6,'1','1'),(11,'bigint(20)','分类级别','class_level','bigint','1',NULL,3,'1',6,'1','1'),(12,'varchar(1)','是否有子分类','has_child','varchar','1',1,4,'1',6,'showYes','1'),(13,'bigint(20)','维修时限','limit_hours','bigint','1',NULL,5,'1',6,'1','1'),(14,'bigint(20)','上级分类','parent_id','bigint','1',NULL,6,'1',6,'1','1'),(15,'bigint(20)','排序','sort_no','bigint','1',NULL,7,'1',6,'1','1'),(16,'varchar(1)','状态','status','varchar','1',1,8,'1',6,'showStatus','1'),(17,'bigint(20)','序号','id','bigint','0',NULL,1,'1',1,'1','1'),(18,'varchar(20)','应用名称','name','varchar','0',20,2,'1',1,'1','1'),(19,'varchar(50)','应用描述','appDesc','varchar','0',50,3,'1',1,'1','1'),(20,'bigint(20)','配置表','table_config_id','bigint','1',NULL,4,'1',1,'1','1'),(21,'varchar(20)','排序','sortNo','varchar','0',20,5,'1',1,'1','1'),(22,'varchar(1)','状态','status','varchar','0',1,6,'1',1,'1','1'),(23,'bigint(20)','序号','id','bigint','0',NULL,1,'1',7,'',''),(24,'varchar(50)','单位名称','name','varchar','0',50,2,'1',7,'',''),(25,'varchar(200)','单位描述','unitDesc','varchar','1',200,3,'1',7,'',''),(26,'varchar(20)','联系人','contact','varchar','1',20,4,'1',7,'',''),(27,'varchar(20)','联系电话','telephone','varchar','1',20,5,'1',7,'',''),(28,'varchar(1)','工作值','workDays','varchar','1',1,6,'1',7,'',''),(29,'varchar(20)','排序','sortNo','varchar','0',20,7,'1',7,'',''),(30,'varchar(1)','状态','status','varchar','0',1,8,'1',7,'showStatus',''),(31,'int(11)','序号','id','int','0',NULL,1,'1',8,'',''),(32,'varchar(20)','设备编号','eqCode','varchar','1',20,2,'1',8,'',''),(33,'varchar(20)','资产编号','eamNo','varchar','1',20,3,'1',8,'',''),(34,'varchar(20)','描述','description','varchar','1',20,4,'1',8,'',''),(35,'varchar(50)','设备型号','eqModel','varchar','1',50,5,'1',8,'',''),(36,'bigint(20)','预计年限','expectedYear','bigint','1',NULL,6,'1',8,'',''),(37,'varchar(20)','维修人员','maintainer','varchar','1',20,7,'1',8,'',''),(38,'bigint(20)','管理等级','manageLevel','bigint','1',NULL,8,'1',8,'',''),(39,'varchar(20)','管理人员','manager','varchar','1',20,9,'1',8,'',''),(40,'double','净值','netValue','double','1',NULL,10,'1',8,'',''),(41,'double','原值','originalValue','double','1',NULL,11,'1',8,'',''),(42,'varchar(255)','出厂日期','productDate','varchar','1',255,12,'1',8,'',''),(43,'varchar(50)','生产厂家','productFactory','varchar','1',50,13,'1',8,'',''),(44,'varchar(255)','购置日期','purchaseDate','varchar','1',255,14,'1',8,'',''),(45,'double','购置价格','purchasePrice','double','1',NULL,15,'1',8,'',''),(46,'varchar(255)','运行日期','runDate','varchar','1',255,16,'1',8,'',''),(47,'varchar(255)','安装日期','setupDate','varchar','1',255,17,'1',8,'',''),(48,'varchar(255)','保修期限','warrantyPeriod','varchar','1',255,18,'1',8,'',''),(49,'bigint(20)','设备分类','eq_class_id','bigint','1',NULL,19,'1',8,'',''),(50,'bigint(20)','所属位置','location_id','bigint','1',NULL,20,'1',8,'',''),(51,'varchar(20)','授权码','authKey','varchar','1',20,21,'1',8,'',''),(52,'bigint(20)','序号','id','bigint','0',NULL,1,'1',9,'',''),(53,'varchar(20)','报修行号','orderLine_no','varchar','0',20,2,'1',9,'',''),(54,'varchar(200)','工单描述','orderDesc','varchar','1',200,3,'1',9,'',''),(55,'varchar(20)','报修人','reporter','varchar','1',20,4,'1',9,'',''),(56,'varchar(1)','报修方式','reportType','varchar','1',1,5,'1',9,'',''),(57,'varchar(255)','报修时间','reportTime','varchar','1',255,6,'1',9,'',''),(58,'varchar(20)','记录人','creator','varchar','1',20,7,'1',9,'',''),(59,'varchar(20)','维修期限','deadline','varchar','1',20,8,'1',9,'',''),(60,'bigint(20)','设备','equipmentId','bigint','1',NULL,9,'1',9,'',''),(61,'bigint(20)','维修单位','unitId','bigint','1',NULL,10,'1',9,'',''),(62,'bit(1)','是否延期','expired','bit','1',NULL,11,'1',9,'',''),(63,'varchar(1)','状态','status','varchar','1',1,12,'1',9,'',''),(64,'varchar(20)','授权码','authKey','varchar','1',20,13,'1',9,'','');
/*!40000 ALTER TABLE `t_table_column_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_table_config`
--

DROP TABLE IF EXISTS `t_table_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_table_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `domain_name` varchar(100) NOT NULL,
  `repository_name` varchar(100) NOT NULL,
  `search_service_name` varchar(100) NOT NULL,
  `service_name` varchar(100) NOT NULL,
  `sort_no` bigint(20) NOT NULL,
  `status` varchar(1) NOT NULL,
  `table_desc` varchar(100) NOT NULL,
  `table_name` varchar(50) NOT NULL,
  `short_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_table_config`
--

LOCK TABLES `t_table_config` WRITE;
/*!40000 ALTER TABLE `t_table_config` DISABLE KEYS */;
INSERT INTO `t_table_config` VALUES (1,'com.subway.app.App','com.subway.app.AppRepository','com.subway.app.AppSearchService','com.subway.app.AppService',1,'1','应用信息','t_app','App'),(2,'com.subway.tableConfig.TableConfig','com.subway.tableConfig.TableConfigRepository','com.subway.tableConfig.TableConfigSearchService','com.subway.tableConfig.TableConfigService',1,'1','数据配置','t_table_config','TableConfig'),(5,'com.subway.location.Location','com.subway.location.LocationRepository','com.subway.pavilionWorks.location.LocationSearchService','com.subway.location.LocationService',1,'1','位置信息','t_location','Location'),(6,'com.subway.eqClass.EqClass','com.subway.eqClass.EqClassRepository','com.subway.eqClass.EqClassSearchService','com.subway.eqClass.EqClassService',1,'1','设备分类','t_eq_class','EqClass'),(7,'com.subway.unit.Unit','com.subway.unit.UnitRepository','com.subway.unit.UnitSearchService','com.subway.unit.UnitService',1,'1','外委单位','t_unit','Unit'),(8,'com.subway.equipment.Equipment','com.subway.equipment.EquipmentRepository','com.subway.equipment.EquipmentSearchService','com.subway.equipment.EquipmentService',1,'1','设备信息','t_equipment','Equipment'),(9,'com.subway.workOrder.WorkOrder','com.subway.workOrder.WorkOrderRepository','com.subway.workOrder.WorkOrderSearchService','com.subway.workOrder.WorkOrderService',1,'1','工单信息','t_work_order','WorkOrder');
/*!40000 ALTER TABLE `t_table_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_template`
--

DROP TABLE IF EXISTS `t_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_template` (
  `id` int(11) NOT NULL COMMENT 'id',
  `name` varchar(200) DEFAULT NULL COMMENT '模板名称',
  `file_name` varchar(200) DEFAULT NULL COMMENT '生成文件名称',
  `file_url` varchar(200) DEFAULT NULL COMMENT '生成文件路径',
  `sort_no` int(11) DEFAULT NULL COMMENT '排序',
  `status` varchar(1) DEFAULT NULL COMMENT '状态',
  `template_desc` varchar(200) NOT NULL,
  `template_name` varchar(200) NOT NULL,
  `template_url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='模板信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_template`
--

LOCK TABLES `t_template` WRITE;
/*!40000 ALTER TABLE `t_template` DISABLE KEYS */;
INSERT INTO `t_template` VALUES (1,'控制器模板','Controller.java','E:\\dev\\lzdt\\src\\main\\resources\\templates\\controllerTemplate.ftl',1,'1','生成控制器','controllerTemplate.ftl','E:\\dev\\lzdt\\src\\main\\resources\\templates\\controllerTemplate.ftl');
/*!40000 ALTER TABLE `t_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_unit`
--

DROP TABLE IF EXISTS `t_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_unit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name` varchar(50) NOT NULL COMMENT '单位名称',
  `unit_desc` varchar(200) DEFAULT NULL COMMENT '单位描述',
  `contact` varchar(20) DEFAULT NULL COMMENT '联系人',
  `telephone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `work_days` varchar(1) DEFAULT NULL COMMENT '工作值',
  `is_out` varchar(1) DEFAULT NULL,
  `status` varchar(1) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_unit`
--

LOCK TABLES `t_unit` WRITE;
/*!40000 ALTER TABLE `t_unit` DISABLE KEYS */;
INSERT INTO `t_unit` VALUES (1,'招商银行深圳分行','招商银行深圳分行','李瑶','19993101300','5','1','1'),(2,'山东电力','山东电力','黄斌','18693791525','5','1','1'),(3,'兰州中心','兰州中心','王芳','15956232125','5','1','1');
/*!40000 ALTER TABLE `t_unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_unit_class`
--

DROP TABLE IF EXISTS `t_unit_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_unit_class` (
  `unit_id` bigint(20) NOT NULL,
  `class_id` bigint(20) NOT NULL,
  PRIMARY KEY (`unit_id`,`class_id`),
  KEY `FK_o05kln4ffdjuyha77pd29sd5g` (`class_id`),
  CONSTRAINT `FK_4dintw17y80ytrc3r8bfknt3b` FOREIGN KEY (`unit_id`) REFERENCES `t_unit` (`id`),
  CONSTRAINT `FK_o05kln4ffdjuyha77pd29sd5g` FOREIGN KEY (`class_id`) REFERENCES `t_eq_class` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_unit_class`
--

LOCK TABLES `t_unit_class` WRITE;
/*!40000 ALTER TABLE `t_unit_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_unit_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user`
--

DROP TABLE IF EXISTS `t_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `user_name` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码',
  `person_id` bigint(20) DEFAULT NULL COMMENT '人员',
  `vlocations_id` bigint(20) DEFAULT NULL COMMENT '位置',
  `sort_no` bigint(20) DEFAULT NULL COMMENT '排序',
  `status` varchar(1) CHARACTER SET utf8 NOT NULL DEFAULT '1' COMMENT '启用状态',
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `id_card` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `person_name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `telephone` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_unique_index` (`user_name`),
  KEY `fk_person_index` (`person_id`),
  CONSTRAINT `FK_lu3rofbmhofhefs57m4uxc27j` FOREIGN KEY (`person_id`) REFERENCES `t_person` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user`
--

LOCK TABLES `t_user` WRITE;
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` VALUES (1,'huangbin','e10adc3949ba59abbe56e057f20f883e',1,1,1,'1',NULL,NULL,NULL,NULL),(2,'line2','e10adc3949ba59abbe56e057f20f883e',2,2,2,'1',NULL,NULL,NULL,NULL),(3,'line8','e10adc3949ba59abbe56e057f20f883e',3,3,3,'1',NULL,NULL,NULL,NULL),(4,'line10','e10adc3949ba59abbe56e057f20f883e',4,4,4,'1',NULL,NULL,NULL,NULL),(5,'line13','e10adc3949ba59abbe56e057f20f883e',5,5,5,'1',NULL,NULL,NULL,NULL),(6,'xzm','e10adc3949ba59abbe56e057f20f883e',6,411,2,'1',NULL,NULL,NULL,NULL),(7,'panyu','e10adc3949ba59abbe56e057f20f883e',8,4,1,'1',NULL,NULL,NULL,NULL),(8,'guodandan','e10adc3949ba59abbe56e057f20f883e',15,NULL,1,'1',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_log`
--

DROP TABLE IF EXISTS `t_user_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login_ip` varchar(20) DEFAULT NULL,
  `operation` varchar(20) DEFAULT NULL,
  `operation_time` datetime DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `user_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=423 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_log`
--

LOCK TABLES `t_user_log` WRITE;
/*!40000 ALTER TABLE `t_user_log` DISABLE KEYS */;
INSERT INTO `t_user_log` VALUES (1,'0:0:0:0:0:0:0:1','登录','2018-02-27 07:39:09','登录成功','huangbin'),(2,'0:0:0:0:0:0:0:1','登录','2018-02-27 07:53:01','登录成功','huangbin'),(3,'0:0:0:0:0:0:0:1','登录','2018-02-27 07:53:26','登录成功','huangbin'),(4,'0:0:0:0:0:0:0:1','登录','2018-02-27 07:54:59','登录成功','huangbin'),(5,'0:0:0:0:0:0:0:1','登录','2018-02-27 07:57:40','登录成功','huangbin'),(6,'0:0:0:0:0:0:0:1','登录','2018-02-27 08:01:50','登录成功','huangbin'),(7,'0:0:0:0:0:0:0:1','登录','2018-02-27 08:02:11','登录成功','huangbin'),(8,'0:0:0:0:0:0:0:1','登录','2018-02-27 08:47:36','登录成功','huangbin'),(9,'0:0:0:0:0:0:0:1','登录','2018-02-27 08:54:17','登录成功','huangbin'),(10,'0:0:0:0:0:0:0:1','登录','2018-02-27 08:55:50','登录成功','huangbin'),(11,'0:0:0:0:0:0:0:1','登录','2018-02-27 10:26:32','登录成功','huangbin'),(12,'0:0:0:0:0:0:0:1','登录','2018-02-27 20:24:10','登录成功','huangbin'),(13,'0:0:0:0:0:0:0:1','登录','2018-02-27 20:37:10','登录成功','huangbin'),(14,'0:0:0:0:0:0:0:1','登录','2018-02-27 21:54:41','登录成功','huangbin'),(15,'0:0:0:0:0:0:0:1','登录','2018-02-27 22:05:37','登录成功','huangbin'),(16,'0:0:0:0:0:0:0:1','登录','2018-02-28 13:23:11','登录成功','huangbin'),(17,'0:0:0:0:0:0:0:1','登录','2018-02-28 13:32:13','登录成功','huangbin'),(18,'0:0:0:0:0:0:0:1','登录','2018-02-28 14:05:47','登录成功','huangbin'),(19,'0:0:0:0:0:0:0:1','登录','2018-02-28 14:08:45','登录成功','huangbin'),(20,'0:0:0:0:0:0:0:1','鐧诲綍','2018-02-28 14:13:43','鐧诲綍鎴愬姛','huangbin'),(21,'0:0:0:0:0:0:0:1','登录','2018-02-28 14:16:25','登录成功','huangbin'),(22,'0:0:0:0:0:0:0:1','登录','2018-02-28 14:18:32','登录成功','huangbin'),(23,'0:0:0:0:0:0:0:1','登录','2018-02-28 14:27:55','登录成功','huangbin'),(24,'0:0:0:0:0:0:0:1','登录','2018-02-28 14:36:57','登录成功','huangbin'),(25,'0:0:0:0:0:0:0:1','登录','2018-02-28 14:40:27','登录成功','huangbin'),(26,'0:0:0:0:0:0:0:1','登录','2018-02-28 14:44:46','登录成功','huangbin'),(27,'0:0:0:0:0:0:0:1','登录','2018-02-28 14:48:11','登录成功','huangbin'),(28,'0:0:0:0:0:0:0:1','登录','2018-02-28 14:50:58','登录成功','huangbin'),(29,'0:0:0:0:0:0:0:1','登录','2018-02-28 14:56:02','登录成功','huangbin'),(30,'0:0:0:0:0:0:0:1','登录','2018-02-28 15:07:21','登录成功','huangbin'),(31,'0:0:0:0:0:0:0:1','登录','2018-02-28 15:10:01','登录成功','huangbin'),(32,'0:0:0:0:0:0:0:1','登录','2018-02-28 15:25:51','登录成功','huangbin'),(33,'0:0:0:0:0:0:0:1','登录','2018-02-28 15:30:19','登录成功','huangbin'),(34,'0:0:0:0:0:0:0:1','登录','2018-02-28 15:35:10','登录成功','huangbin'),(35,'0:0:0:0:0:0:0:1','登录','2018-02-28 15:40:13','登录成功','huangbin'),(36,'0:0:0:0:0:0:0:1','登录','2018-02-28 15:42:01','登录成功','huangbin'),(37,'0:0:0:0:0:0:0:1','登录','2018-02-28 15:45:47','登录成功','huangbin'),(38,'0:0:0:0:0:0:0:1','登录','2018-02-28 15:48:55','登录成功','huangbin'),(39,'0:0:0:0:0:0:0:1','登录','2018-02-28 15:53:54','登录成功','huangbin'),(40,'0:0:0:0:0:0:0:1','登录','2018-02-28 16:02:07','登录成功','huangbin'),(41,'0:0:0:0:0:0:0:1','登录','2018-02-28 16:08:35','登录成功','huangbin'),(42,'0:0:0:0:0:0:0:1','登录','2018-02-28 16:12:47','登录成功','huangbin'),(43,'0:0:0:0:0:0:0:1','登录','2018-02-28 16:16:31','登录成功','huangbin'),(44,'0:0:0:0:0:0:0:1','登录','2018-02-28 16:21:17','登录成功','huangbin'),(45,'0:0:0:0:0:0:0:1','登录','2018-03-01 08:39:20','登录成功','huangbin'),(46,'0:0:0:0:0:0:0:1','登录','2018-03-01 08:55:08','登录成功','huangbin'),(47,'0:0:0:0:0:0:0:1','登录','2018-03-01 09:04:59','登录成功','huangbin'),(48,'0:0:0:0:0:0:0:1','登录','2018-03-01 09:08:35','登录成功','huangbin'),(49,'0:0:0:0:0:0:0:1','登录','2018-03-01 09:11:12','登录成功','huangbin'),(50,'0:0:0:0:0:0:0:1','登录','2018-03-01 09:22:53','登录成功','huangbin'),(51,'0:0:0:0:0:0:0:1','登录','2018-03-01 09:28:32','登录成功','huangbin'),(52,'0:0:0:0:0:0:0:1','登录','2018-03-01 09:35:12','登录成功','huangbin'),(53,'0:0:0:0:0:0:0:1','登录','2018-03-01 09:40:37','登录成功','huangbin'),(54,'0:0:0:0:0:0:0:1','登录','2018-03-01 09:50:09','登录成功','huangbin'),(55,'0:0:0:0:0:0:0:1','登录','2018-03-01 09:58:39','登录成功','huangbin'),(56,'0:0:0:0:0:0:0:1','登录','2018-03-01 10:00:20','登录成功','huangbin'),(57,'0:0:0:0:0:0:0:1','登录','2018-03-01 10:07:38','登录成功','huangbin'),(58,'0:0:0:0:0:0:0:1','登录','2018-03-01 10:12:00','登录成功','huangbin'),(59,'0:0:0:0:0:0:0:1','登录','2018-03-01 10:14:26','登录成功','huangbin'),(60,'0:0:0:0:0:0:0:1','登录','2018-03-01 10:26:40','登录成功','huangbin'),(61,'0:0:0:0:0:0:0:1','登录','2018-03-01 10:28:43','登录成功','huangbin'),(62,'0:0:0:0:0:0:0:1','登录','2018-03-01 10:41:38','登录成功','huangbin'),(63,'0:0:0:0:0:0:0:1','登录','2018-03-01 10:45:42','登录成功','huangbin'),(64,'0:0:0:0:0:0:0:1','登录','2018-03-01 10:51:24','登录成功','huangbin'),(65,'0:0:0:0:0:0:0:1','登录','2018-03-01 11:10:45','登录成功','huangbin'),(66,'0:0:0:0:0:0:0:1','登录','2018-03-01 11:13:17','登录成功','huangbin'),(67,'0:0:0:0:0:0:0:1','登录','2018-03-01 11:19:50','登录成功','huangbin'),(68,'0:0:0:0:0:0:0:1','登录','2018-03-01 11:24:09','登录成功','huangbin'),(69,'0:0:0:0:0:0:0:1','登录','2018-03-01 11:26:01','登录成功','huangbin'),(70,'0:0:0:0:0:0:0:1','登录','2018-03-01 11:29:19','登录成功','huangbin'),(71,'0:0:0:0:0:0:0:1','登录','2018-03-01 11:34:14','登录成功','huangbin'),(72,'0:0:0:0:0:0:0:1','登录','2018-03-01 11:37:54','登录成功','huangbin'),(73,'0:0:0:0:0:0:0:1','登录','2018-03-01 11:40:13','登录成功','huangbin'),(74,'0:0:0:0:0:0:0:1','登录','2018-03-01 11:47:00','登录成功','huangbin'),(75,'0:0:0:0:0:0:0:1','登录','2018-03-01 11:50:52','登录成功','huangbin'),(76,'0:0:0:0:0:0:0:1','登录','2018-03-01 20:00:22','登录成功','huangbin'),(77,'0:0:0:0:0:0:0:1','登录','2018-03-01 20:04:38','登录成功','huangbin'),(78,'0:0:0:0:0:0:0:1','登录','2018-03-01 20:08:55','登录成功','huangbin'),(79,'0:0:0:0:0:0:0:1','登录','2018-03-01 20:12:20','登录成功','huangbin'),(80,'0:0:0:0:0:0:0:1','登录','2018-03-01 20:16:35','登录成功','huangbin'),(81,'0:0:0:0:0:0:0:1','登录','2018-03-01 20:22:58','登录成功','huangbin'),(82,'0:0:0:0:0:0:0:1','登录','2018-03-01 20:28:03','登录成功','huangbin'),(83,'0:0:0:0:0:0:0:1','登录','2018-03-01 20:40:04','登录成功','huangbin'),(84,'0:0:0:0:0:0:0:1','登录','2018-03-01 20:48:16','登录成功','huangbin'),(85,'0:0:0:0:0:0:0:1','登录','2018-03-01 21:11:59','登录成功','huangbin'),(86,'0:0:0:0:0:0:0:1','登录','2018-03-01 21:20:34','登录失败','huangbin'),(87,'0:0:0:0:0:0:0:1','登录','2018-03-01 21:20:37','登录成功','huangbin'),(88,'0:0:0:0:0:0:0:1','登录','2018-03-01 21:25:40','登录成功','huangbin'),(89,'0:0:0:0:0:0:0:1','登录','2018-03-01 21:30:19','登录成功','huangbin'),(90,'0:0:0:0:0:0:0:1','登录','2018-03-01 21:41:42','登录失败','huangbin'),(91,'0:0:0:0:0:0:0:1','登录','2018-03-01 21:41:45','登录成功','huangbin'),(92,'0:0:0:0:0:0:0:1','登录','2018-03-01 21:51:15','登录成功','huangbin'),(93,'0:0:0:0:0:0:0:1','登录','2018-03-01 22:05:38','登录成功','huangbin'),(94,'0:0:0:0:0:0:0:1','登录','2018-03-01 22:13:59','登录成功','huangbin'),(95,'0:0:0:0:0:0:0:1','登录','2018-03-01 22:14:19','登录成功','huangbin'),(96,'0:0:0:0:0:0:0:1','登录','2018-03-01 22:18:34','登录成功','huangbin'),(97,'0:0:0:0:0:0:0:1','登录','2018-03-02 13:34:46','登录成功','huangbin'),(98,'0:0:0:0:0:0:0:1','登录','2018-03-02 13:40:21','登录成功','huangbin'),(99,'0:0:0:0:0:0:0:1','登录','2018-03-02 13:49:46','登录成功','huangbin'),(100,'0:0:0:0:0:0:0:1','登录','2018-03-02 13:54:21','登录成功','huangbin'),(101,'0:0:0:0:0:0:0:1','登录','2018-03-02 13:58:48','登录成功','huangbin'),(102,'0:0:0:0:0:0:0:1','登录','2018-03-02 14:02:39','登录成功','huangbin'),(103,'0:0:0:0:0:0:0:1','登录','2018-03-02 14:16:06','登录成功','huangbin'),(104,'0:0:0:0:0:0:0:1','登录','2018-03-02 14:17:37','登录成功','huangbin'),(105,'0:0:0:0:0:0:0:1','登录','2018-03-02 14:19:34','登录成功','huangbin'),(106,'0:0:0:0:0:0:0:1','登录','2018-03-02 14:34:58','登录成功','huangbin'),(107,'0:0:0:0:0:0:0:1','登录','2018-03-02 14:37:56','登录成功','huangbin'),(108,'0:0:0:0:0:0:0:1','登录','2018-03-02 14:46:40','登录成功','huangbin'),(109,'0:0:0:0:0:0:0:1','登录','2018-03-02 20:47:55','登录成功','huangbin'),(110,'0:0:0:0:0:0:0:1','登录','2018-03-02 20:49:04','登录成功','huangbin'),(111,'0:0:0:0:0:0:0:1','登录','2018-03-02 21:13:30','登录成功','huangbin'),(112,'0:0:0:0:0:0:0:1','登录','2018-03-02 21:23:08','登录成功','huangbin'),(113,'0:0:0:0:0:0:0:1','登录','2018-03-02 22:03:15','登录成功','huangbin'),(114,'0:0:0:0:0:0:0:1','登录','2018-03-02 22:05:02','登录成功','huangbin'),(115,'0:0:0:0:0:0:0:1','登录','2018-03-02 22:10:33','登录成功','huangbin'),(116,'0:0:0:0:0:0:0:1','登录','2018-03-02 22:14:45','登录成功','huangbin'),(117,'0:0:0:0:0:0:0:1','登录','2018-03-02 22:15:52','登录成功','huangbin'),(118,'0:0:0:0:0:0:0:1','登录','2018-03-02 22:17:19','登录成功','huangbin'),(119,'0:0:0:0:0:0:0:1','登录','2018-03-02 22:25:47','登录成功','huangbin'),(120,'0:0:0:0:0:0:0:1','登录','2018-03-02 22:29:10','登录成功','huangbin'),(121,'0:0:0:0:0:0:0:1','登录','2018-03-02 22:43:18','登录成功','huangbin'),(122,'0:0:0:0:0:0:0:1','登录','2018-03-02 22:48:19','登录成功','huangbin'),(123,'0:0:0:0:0:0:0:1','登录','2018-03-02 23:19:04','登录成功','huangbin'),(124,'0:0:0:0:0:0:0:1','登录','2018-03-02 23:22:35','登录成功','huangbin'),(125,'0:0:0:0:0:0:0:1','登录','2018-03-02 23:25:37','登录成功','huangbin'),(126,'0:0:0:0:0:0:0:1','登录','2018-03-02 23:29:28','登录成功','huangbin'),(127,'0:0:0:0:0:0:0:1','登录','2018-03-03 07:19:48','登录成功','huangbin'),(128,'0:0:0:0:0:0:0:1','登录','2018-03-03 07:33:01','登录成功','huangbin'),(129,'0:0:0:0:0:0:0:1','登录','2018-03-03 07:35:17','登录成功','huangbin'),(130,'0:0:0:0:0:0:0:1','登录','2018-03-03 07:42:52','登录成功','huangbin'),(131,'0:0:0:0:0:0:0:1','登录','2018-03-03 07:49:06','登录成功','huangbin'),(132,'0:0:0:0:0:0:0:1','登录','2018-03-03 07:52:04','登录成功','huangbin'),(133,'0:0:0:0:0:0:0:1','登录','2018-03-03 07:56:21','登录成功','huangbin'),(134,'0:0:0:0:0:0:0:1','登录','2018-03-03 10:07:07','登录成功','huangbin'),(135,'0:0:0:0:0:0:0:1','登录','2018-03-03 10:11:31','登录成功','huangbin'),(136,'0:0:0:0:0:0:0:1','登录','2018-03-03 10:17:38','登录成功','huangbin'),(137,'0:0:0:0:0:0:0:1','登录','2018-03-03 10:25:32','登录成功','huangbin'),(138,'0:0:0:0:0:0:0:1','登录','2018-03-03 10:27:50','登录成功','huangbin'),(139,'0:0:0:0:0:0:0:1','登录','2018-03-03 11:53:35','登录成功','huangbin'),(140,'0:0:0:0:0:0:0:1','登录','2018-03-03 11:59:14','登录成功','huangbin'),(141,'0:0:0:0:0:0:0:1','登录','2018-03-03 12:01:33','登录成功','huangbin'),(142,'0:0:0:0:0:0:0:1','登录','2018-03-03 12:05:46','登录成功','huangbin'),(143,'0:0:0:0:0:0:0:1','登录','2018-03-03 12:08:45','登录成功','huangbin'),(144,'0:0:0:0:0:0:0:1','登录','2018-03-03 12:09:45','登录成功','huangbin'),(145,'0:0:0:0:0:0:0:1','登录','2018-03-03 14:32:12','登录成功','huangbin'),(146,'0:0:0:0:0:0:0:1','登录','2018-03-03 14:37:10','登录成功','huangbin'),(147,'0:0:0:0:0:0:0:1','登录','2018-03-03 14:43:33','登录成功','huangbin'),(148,'0:0:0:0:0:0:0:1','登录','2018-03-03 14:45:43','登录成功','huangbin'),(149,'0:0:0:0:0:0:0:1','登录','2018-03-03 14:49:04','登录成功','huangbin'),(150,'0:0:0:0:0:0:0:1','登录','2018-03-03 14:50:53','登录成功','huangbin'),(151,'0:0:0:0:0:0:0:1','登录','2018-03-03 14:56:15','登录成功','huangbin'),(152,'0:0:0:0:0:0:0:1','登录','2018-03-03 14:58:19','登录成功','huangbin'),(153,'0:0:0:0:0:0:0:1','登录','2018-03-03 15:00:43','登录成功','huangbin'),(154,'0:0:0:0:0:0:0:1','登录','2018-03-03 15:02:26','登录成功','huangbin'),(155,'0:0:0:0:0:0:0:1','登录','2018-03-03 15:06:46','登录成功','huangbin'),(156,'0:0:0:0:0:0:0:1','登录','2018-03-03 15:10:45','登录成功','huangbin'),(157,'0:0:0:0:0:0:0:1','登录','2018-03-03 15:13:30','登录成功','huangbin'),(158,'0:0:0:0:0:0:0:1','登录','2018-03-03 15:18:50','登录成功','huangbin'),(159,'0:0:0:0:0:0:0:1','登录','2018-03-03 15:20:02','登录成功','huangbin'),(160,'0:0:0:0:0:0:0:1','登录','2018-03-03 15:22:33','登录成功','huangbin'),(161,'0:0:0:0:0:0:0:1','登录','2018-03-03 15:27:53','登录成功','huangbin'),(162,'0:0:0:0:0:0:0:1','登录','2018-03-03 15:39:06','登录成功','huangbin'),(163,'0:0:0:0:0:0:0:1','登录','2018-03-03 16:06:29','登录成功','huangbin'),(164,'0:0:0:0:0:0:0:1','登录','2018-03-03 16:10:10','登录成功','huangbin'),(165,'0:0:0:0:0:0:0:1','登录','2018-03-03 16:19:46','登录成功','huangbin'),(166,'0:0:0:0:0:0:0:1','登录','2018-03-03 16:22:15','登录成功','huangbin'),(167,'0:0:0:0:0:0:0:1','登录','2018-03-03 16:23:58','登录成功','huangbin'),(168,'0:0:0:0:0:0:0:1','登录','2018-03-03 17:12:22','登录成功','huangbin'),(169,'0:0:0:0:0:0:0:1','登录','2018-03-03 17:21:33','登录成功','huangbin'),(170,'0:0:0:0:0:0:0:1','登录','2018-03-03 17:24:31','登录成功','huangbin'),(171,'0:0:0:0:0:0:0:1','登录','2018-03-03 17:29:27','登录成功','huangbin'),(172,'127.0.0.1','登录','2018-03-03 17:48:40','登录成功','huangbin'),(173,'0:0:0:0:0:0:0:1','登录','2018-03-03 17:55:57','登录成功','huangbin'),(174,'0:0:0:0:0:0:0:1','登录','2018-03-03 17:59:29','登录成功','huangbin'),(175,'0:0:0:0:0:0:0:1','登录','2018-03-03 17:59:42','登录成功','huangbin'),(176,'0:0:0:0:0:0:0:1','登录','2018-03-03 19:55:27','登录成功','huangbin'),(177,'0:0:0:0:0:0:0:1','登录','2018-03-03 20:40:28','登录成功','huangbin'),(178,'0:0:0:0:0:0:0:1','登录','2018-03-03 20:56:14','登录成功','huangbin'),(179,'0:0:0:0:0:0:0:1','登录','2018-03-03 21:08:31','登录成功','huangbin'),(180,'0:0:0:0:0:0:0:1','登录','2018-03-03 21:11:51','登录成功','huangbin'),(181,'0:0:0:0:0:0:0:1','登录','2018-03-03 21:41:30','登录成功','huangbin'),(182,'0:0:0:0:0:0:0:1','登录','2018-03-03 21:46:43','登录成功','huangbin'),(183,'0:0:0:0:0:0:0:1','登录','2018-03-04 07:35:27','登录成功','huangbin'),(184,'0:0:0:0:0:0:0:1','登录','2018-03-04 08:02:28','登录成功','huangbin'),(185,'0:0:0:0:0:0:0:1','登录','2018-03-04 14:51:56','登录成功','huangbin'),(186,'0:0:0:0:0:0:0:1','登录','2018-03-04 15:03:27','登录成功','huangbin'),(187,'0:0:0:0:0:0:0:1','登录','2018-03-04 15:18:02','登录成功','huangbin'),(188,'0:0:0:0:0:0:0:1','登录','2018-03-04 15:27:43','登录成功','huangbin'),(189,'0:0:0:0:0:0:0:1','登录','2018-03-04 15:39:13','登录成功','huangbin'),(190,'0:0:0:0:0:0:0:1','登录','2018-03-04 15:41:57','登录成功','huangbin'),(191,'0:0:0:0:0:0:0:1','登录','2018-03-04 15:42:26','登录成功','huangbin'),(192,'0:0:0:0:0:0:0:1','登录','2018-03-04 15:46:26','登录成功','huangbin'),(193,'0:0:0:0:0:0:0:1','登录','2018-03-04 15:48:12','登录成功','huangbin'),(194,'0:0:0:0:0:0:0:1','登录','2018-03-04 15:52:11','登录成功','huangbin'),(195,'0:0:0:0:0:0:0:1','登录','2018-03-04 15:53:54','登录成功','huangbin'),(196,'0:0:0:0:0:0:0:1','登录','2018-03-04 16:00:09','登录成功','huangbin'),(197,'0:0:0:0:0:0:0:1','登录','2018-03-04 16:16:39','登录成功','huangbin'),(198,'0:0:0:0:0:0:0:1','登录','2018-03-04 16:19:19','登录成功','huangbin'),(199,'0:0:0:0:0:0:0:1','登录','2018-03-04 16:30:04','登录成功','huangbin'),(200,'0:0:0:0:0:0:0:1','登录','2018-03-04 17:20:57','登录成功','huangbin'),(201,'0:0:0:0:0:0:0:1','登录','2018-03-04 17:22:50','登录成功','huangbin'),(202,'0:0:0:0:0:0:0:1','登录','2018-03-04 17:34:02','登录成功','huangbin'),(203,'0:0:0:0:0:0:0:1','登录','2018-03-04 17:37:02','登录成功','huangbin'),(204,'0:0:0:0:0:0:0:1','登录','2018-03-04 17:38:53','登录成功','huangbin'),(205,'0:0:0:0:0:0:0:1','登录','2018-03-04 17:46:34','登录成功','huangbin'),(206,'0:0:0:0:0:0:0:1','登录','2018-03-04 17:52:20','登录成功','huangbin'),(207,'0:0:0:0:0:0:0:1','登录','2018-03-04 20:41:09','登录成功','huangbin'),(208,'0:0:0:0:0:0:0:1','登录','2018-03-04 20:48:55','登录成功','huangbin'),(209,'0:0:0:0:0:0:0:1','登录','2018-03-04 20:55:57','登录成功','huangbin'),(210,'0:0:0:0:0:0:0:1','登录','2018-03-04 20:58:13','登录成功','huangbin'),(211,'0:0:0:0:0:0:0:1','登录','2018-03-04 21:00:05','登录成功','huangbin'),(212,'0:0:0:0:0:0:0:1','登录','2018-03-04 21:06:02','登录成功','huangbin'),(213,'0:0:0:0:0:0:0:1','登录','2018-03-05 07:09:07','登录成功','huangbin'),(214,'0:0:0:0:0:0:0:1','登录','2018-03-05 07:14:30','登录成功','huangbin'),(215,'0:0:0:0:0:0:0:1','登录','2018-03-05 07:51:30','登录成功','huangbin'),(216,'0:0:0:0:0:0:0:1','登录','2018-03-05 07:55:56','登录成功','huangbin'),(217,'0:0:0:0:0:0:0:1','登录','2018-03-08 08:46:43','登录成功','huangbin'),(218,'0:0:0:0:0:0:0:1','登录','2018-03-08 09:10:09','登录成功','huangbin'),(219,'0:0:0:0:0:0:0:1','登录','2018-03-08 09:13:35','登录成功','huangbin'),(220,'0:0:0:0:0:0:0:1','登录','2018-03-08 09:17:33','登录成功','huangbin'),(221,'0:0:0:0:0:0:0:1','登录','2018-03-08 09:25:54','登录成功','huangbin'),(222,'0:0:0:0:0:0:0:1','登录','2018-03-08 09:30:58','登录成功','huangbin'),(223,'0:0:0:0:0:0:0:1','登录','2018-03-08 09:34:48','登录成功','huangbin'),(224,'0:0:0:0:0:0:0:1','登录','2018-03-08 09:38:16','登录成功','huangbin'),(225,'0:0:0:0:0:0:0:1','登录','2018-03-08 09:44:38','登录成功','huangbin'),(226,'0:0:0:0:0:0:0:1','登录','2018-03-08 09:46:23','登录成功','huangbin'),(227,'0:0:0:0:0:0:0:1','登录','2018-03-08 09:47:41','登录成功','huangbin'),(228,'0:0:0:0:0:0:0:1','登录','2018-03-08 09:50:57','登录成功','huangbin'),(229,'0:0:0:0:0:0:0:1','登录','2018-03-08 18:06:28','登录成功','huangbin'),(230,'0:0:0:0:0:0:0:1','登录','2018-03-08 18:13:00','登录成功','huangbin'),(231,'0:0:0:0:0:0:0:1','登录','2018-03-08 18:22:12','登录成功','huangbin'),(232,'0:0:0:0:0:0:0:1','登录','2018-03-09 08:21:59','登录成功','huangbin'),(233,'0:0:0:0:0:0:0:1','登录','2018-03-09 08:27:03','登录成功','huangbin'),(234,'0:0:0:0:0:0:0:1','登录','2018-03-09 08:32:14','登录成功','huangbin'),(235,'0:0:0:0:0:0:0:1','登录','2018-03-09 08:39:02','登录成功','huangbin'),(236,'0:0:0:0:0:0:0:1','登录','2018-03-09 08:43:32','登录成功','huangbin'),(237,'0:0:0:0:0:0:0:1','登录','2018-03-09 08:50:08','登录成功','huangbin'),(238,'0:0:0:0:0:0:0:1','登录','2018-03-09 09:02:07','登录成功','huangbin'),(239,'0:0:0:0:0:0:0:1','登录','2018-03-09 09:18:12','登录成功','huangbin'),(240,'0:0:0:0:0:0:0:1','登录','2018-03-09 09:24:55','登录成功','huangbin'),(241,'0:0:0:0:0:0:0:1','登录','2018-03-09 09:38:13','登录成功','huangbin'),(242,'0:0:0:0:0:0:0:1','登录','2018-03-09 09:40:54','登录成功','huangbin'),(243,'0:0:0:0:0:0:0:1','登录','2018-03-09 09:52:15','登录成功','huangbin'),(244,'0:0:0:0:0:0:0:1','登录','2018-03-09 10:03:01','登录成功','huangbin'),(245,'0:0:0:0:0:0:0:1','登录','2018-03-09 10:07:36','登录成功','huangbin'),(246,'0:0:0:0:0:0:0:1','登录','2018-03-09 10:10:31','登录成功','huangbin'),(247,'0:0:0:0:0:0:0:1','登录','2018-03-09 10:20:15','登录成功','huangbin'),(248,'0:0:0:0:0:0:0:1','登录','2018-03-09 10:27:18','登录成功','huangbin'),(249,'0:0:0:0:0:0:0:1','登录','2018-03-09 10:33:43','登录成功','huangbin'),(250,'0:0:0:0:0:0:0:1','登录','2018-03-09 10:45:28','登录成功','huangbin'),(251,'0:0:0:0:0:0:0:1','登录','2018-03-09 10:51:15','登录成功','huangbin'),(252,'0:0:0:0:0:0:0:1','登录','2018-03-09 14:05:54','登录成功','huangbin'),(253,'0:0:0:0:0:0:0:1','登录','2018-03-09 14:40:06','登录成功','huangbin'),(254,'0:0:0:0:0:0:0:1','登录','2018-03-09 14:42:48','登录成功','huangbin'),(255,'0:0:0:0:0:0:0:1','登录','2018-03-09 14:50:09','登录成功','huangbin'),(256,'0:0:0:0:0:0:0:1','登录','2018-03-09 15:02:42','登录成功','huangbin'),(257,'0:0:0:0:0:0:0:1','登录','2018-03-09 15:03:38','登录成功','huangbin'),(258,'0:0:0:0:0:0:0:1','登录','2018-03-09 15:24:25','登录成功','huangbin'),(259,'0:0:0:0:0:0:0:1','登录','2018-03-09 16:00:07','登录成功','huangbin'),(260,'0:0:0:0:0:0:0:1','登录','2018-03-09 16:00:36','登录成功','huangbin'),(261,'0:0:0:0:0:0:0:1','登录','2018-03-09 16:04:40','登录成功','huangbin'),(262,'0:0:0:0:0:0:0:1','登录','2018-03-09 16:04:56','登录成功','huangbin'),(263,'0:0:0:0:0:0:0:1','登录','2018-03-09 16:06:37','登录成功','huangbin'),(264,'0:0:0:0:0:0:0:1','登录','2018-03-09 16:11:17','登录成功','huangbin'),(265,'0:0:0:0:0:0:0:1','登录','2018-03-11 20:58:45','登录成功','huangbin'),(266,'0:0:0:0:0:0:0:1','登录','2018-03-11 21:33:13','登录成功','huangbin'),(267,'0:0:0:0:0:0:0:1','登录','2018-03-11 21:33:59','登录成功','huangbin'),(268,'0:0:0:0:0:0:0:1','登录','2018-03-11 21:36:26','登录成功','huangbin'),(269,'0:0:0:0:0:0:0:1','登录','2018-03-11 21:38:56','登录成功','huangbin'),(270,'0:0:0:0:0:0:0:1','登录','2018-03-11 21:44:21','登录成功','huangbin'),(271,'0:0:0:0:0:0:0:1','登录','2018-03-11 21:50:08','登录成功','huangbin'),(272,'0:0:0:0:0:0:0:1','登录','2018-03-11 21:59:30','登录成功','huangbin'),(273,'0:0:0:0:0:0:0:1','登录','2018-03-11 22:09:39','登录失败','huangbin'),(274,'0:0:0:0:0:0:0:1','登录','2018-03-11 22:09:42','登录成功','huangbin'),(275,'0:0:0:0:0:0:0:1','登录','2018-03-11 22:18:44','登录成功','huangbin'),(276,'0:0:0:0:0:0:0:1','登录','2018-03-11 22:34:11','登录成功','huangbin'),(277,'0:0:0:0:0:0:0:1','登录','2018-03-11 22:45:26','登录成功','huangbin'),(278,'0:0:0:0:0:0:0:1','登录','2018-03-11 22:48:48','登录成功','huangbin'),(279,'0:0:0:0:0:0:0:1','登录','2018-03-11 23:01:10','登录成功','huangbin'),(280,'0:0:0:0:0:0:0:1','登录','2018-03-11 23:04:37','登录成功','huangbin'),(281,'0:0:0:0:0:0:0:1','登录','2018-03-11 23:07:38','登录成功','huangbin'),(282,'0:0:0:0:0:0:0:1','登录','2018-03-11 23:10:22','登录成功','huangbin'),(283,'0:0:0:0:0:0:0:1','登录','2018-03-12 07:42:35','登录成功','huangbin'),(284,'0:0:0:0:0:0:0:1','登录','2018-03-12 07:55:07','登录成功','huangbin'),(285,'0:0:0:0:0:0:0:1','登录','2018-03-12 07:56:37','登录成功','huangbin'),(286,'0:0:0:0:0:0:0:1','登录','2018-03-12 08:01:12','登录成功','huangbin'),(287,'0:0:0:0:0:0:0:1','登录','2018-03-12 08:07:44','登录成功','huangbin'),(288,'0:0:0:0:0:0:0:1','登录','2018-03-12 08:09:43','登录成功','huangbin'),(289,'0:0:0:0:0:0:0:1','登录','2018-03-12 08:12:10','登录成功','huangbin'),(290,'0:0:0:0:0:0:0:1','登录','2018-03-12 08:13:20','登录成功','huangbin'),(291,'0:0:0:0:0:0:0:1','登录','2018-03-12 08:16:13','登录成功','huangbin'),(292,'0:0:0:0:0:0:0:1','登录','2018-03-12 08:22:39','登录成功','huangbin'),(293,'0:0:0:0:0:0:0:1','登录','2018-03-12 08:27:32','登录成功','huangbin'),(294,'0:0:0:0:0:0:0:1','登录','2018-03-12 09:44:16','登录成功','huangbin'),(295,'0:0:0:0:0:0:0:1','登录','2018-03-12 10:00:24','登录成功','huangbin'),(296,'0:0:0:0:0:0:0:1','登录','2018-03-12 10:03:50','登录成功','huangbin'),(297,'0:0:0:0:0:0:0:1','登录','2018-03-12 10:12:22','登录成功','huangbin'),(298,'0:0:0:0:0:0:0:1','登录','2018-03-12 10:29:42','登录成功','huangbin'),(299,'0:0:0:0:0:0:0:1','登录','2018-03-12 10:39:26','登录成功','huangbin'),(300,'0:0:0:0:0:0:0:1','登录','2018-03-12 10:43:09','登录成功','huangbin'),(301,'0:0:0:0:0:0:0:1','登录','2018-03-12 10:46:25','登录成功','huangbin'),(302,'0:0:0:0:0:0:0:1','登录','2018-03-12 10:53:44','登录成功','huangbin'),(303,'0:0:0:0:0:0:0:1','登录','2018-03-12 11:00:12','登录成功','huangbin'),(304,'0:0:0:0:0:0:0:1','登录','2018-03-12 11:04:39','登录成功','huangbin'),(305,'0:0:0:0:0:0:0:1','登录','2018-03-12 11:14:22','登录成功','huangbin'),(306,'0:0:0:0:0:0:0:1','登录','2018-03-12 11:38:42','登录成功','huangbin'),(307,'0:0:0:0:0:0:0:1','登录','2018-03-12 11:49:05','登录成功','huangbin'),(308,'0:0:0:0:0:0:0:1','登录','2018-03-12 11:51:55','登录成功','huangbin'),(309,'0:0:0:0:0:0:0:1','登录','2018-03-12 14:21:41','登录成功','huangbin'),(310,'0:0:0:0:0:0:0:1','登录','2018-03-12 14:28:19','登录成功','huangbin'),(311,'0:0:0:0:0:0:0:1','登录','2018-03-12 14:31:19','登录成功','huangbin'),(312,'0:0:0:0:0:0:0:1','登录','2018-03-12 14:32:53','登录成功','huangbin'),(313,'0:0:0:0:0:0:0:1','登录','2018-03-12 14:37:39','登录成功','huangbin'),(314,'0:0:0:0:0:0:0:1','登录','2018-03-12 14:45:16','登录成功','huangbin'),(315,'0:0:0:0:0:0:0:1','登录','2018-03-12 14:59:44','登录成功','huangbin'),(316,'0:0:0:0:0:0:0:1','登录','2018-03-12 15:20:56','登录成功','huangbin'),(317,'0:0:0:0:0:0:0:1','登录','2018-03-12 15:29:59','登录成功','huangbin'),(318,'0:0:0:0:0:0:0:1','登录','2018-03-12 15:43:30','登录成功','huangbin'),(319,'0:0:0:0:0:0:0:1','登录','2018-03-12 15:45:38','登录成功','huangbin'),(320,'0:0:0:0:0:0:0:1','登录','2018-03-12 15:53:57','登录成功','huangbin'),(321,'0:0:0:0:0:0:0:1','登录','2018-03-12 15:57:10','登录成功','huangbin'),(322,'0:0:0:0:0:0:0:1','登录','2018-03-12 16:08:39','登录成功','huangbin'),(323,'0:0:0:0:0:0:0:1','登录','2018-03-12 16:21:45','登录成功','huangbin'),(324,'0:0:0:0:0:0:0:1','登录','2018-03-12 16:38:20','登录成功','huangbin'),(325,'0:0:0:0:0:0:0:1','登录','2018-03-12 16:42:57','登录成功','huangbin'),(326,'0:0:0:0:0:0:0:1','登录','2018-03-12 16:58:25','登录成功','huangbin'),(327,'0:0:0:0:0:0:0:1','登录','2018-03-12 17:05:42','登录成功','huangbin'),(328,'0:0:0:0:0:0:0:1','登录','2018-03-12 17:09:00','登录成功','huangbin'),(329,'0:0:0:0:0:0:0:1','登录','2018-03-12 17:16:59','登录成功','huangbin'),(330,'0:0:0:0:0:0:0:1','登录','2018-03-12 17:29:40','登录成功','huangbin'),(331,'0:0:0:0:0:0:0:1','登录','2018-03-12 17:47:52','登录成功','huangbin'),(332,'0:0:0:0:0:0:0:1','登录','2018-03-12 17:58:41','登录成功','huangbin'),(333,'0:0:0:0:0:0:0:1','登录','2018-03-12 18:04:51','登录成功','huangbin'),(334,'0:0:0:0:0:0:0:1','登录','2018-03-12 18:09:08','登录成功','huangbin'),(335,'0:0:0:0:0:0:0:1','登录','2018-03-12 20:04:24','登录成功','huangbin'),(336,'0:0:0:0:0:0:0:1','登录','2018-03-13 07:30:45','登录成功','huangbin'),(337,'0:0:0:0:0:0:0:1','登录','2018-03-13 07:41:00','登录成功','huangbin'),(338,'0:0:0:0:0:0:0:1','登录','2018-03-13 07:51:15','登录成功','huangbin'),(339,'0:0:0:0:0:0:0:1','登录','2018-03-13 08:03:24','登录成功','huangbin'),(340,'0:0:0:0:0:0:0:1','登录','2018-03-13 08:10:29','登录成功','huangbin'),(341,'0:0:0:0:0:0:0:1','登录','2018-03-13 08:14:26','登录成功','huangbin'),(342,'0:0:0:0:0:0:0:1','登录','2018-03-13 08:15:51','登录成功','huangbin'),(343,'0:0:0:0:0:0:0:1','登录','2018-03-13 08:20:43','登录成功','huangbin'),(344,'0:0:0:0:0:0:0:1','登录','2018-03-13 08:27:20','登录成功','huangbin'),(345,'0:0:0:0:0:0:0:1','登录','2018-03-13 08:36:30','登录成功','huangbin'),(346,'0:0:0:0:0:0:0:1','登录','2018-03-13 08:42:29','登录成功','huangbin'),(347,'0:0:0:0:0:0:0:1','登录','2018-03-13 08:53:50','登录成功','huangbin'),(348,'0:0:0:0:0:0:0:1','登录','2018-03-13 09:02:21','登录成功','huangbin'),(349,'0:0:0:0:0:0:0:1','登录','2018-03-13 09:04:19','登录成功','huangbin'),(350,'0:0:0:0:0:0:0:1','登录','2018-03-13 09:18:23','登录成功','huangbin'),(351,'0:0:0:0:0:0:0:1','登录','2018-03-13 09:23:19','登录成功','huangbin'),(352,'0:0:0:0:0:0:0:1','登录','2018-03-13 09:25:40','登录成功','huangbin'),(353,'0:0:0:0:0:0:0:1','登录','2018-03-13 09:29:47','登录成功','huangbin'),(354,'0:0:0:0:0:0:0:1','登录','2018-03-13 09:31:24','登录成功','huangbin'),(355,'0:0:0:0:0:0:0:1','登录','2018-03-13 09:36:47','登录成功','huangbin'),(356,'0:0:0:0:0:0:0:1','登录','2018-03-13 09:39:32','登录成功','huangbin'),(357,'0:0:0:0:0:0:0:1','登录','2018-03-13 10:36:52','登录成功','huangbin'),(358,'0:0:0:0:0:0:0:1','登录','2018-03-13 10:37:35','登录成功','huangbin'),(359,'0:0:0:0:0:0:0:1','登录','2018-03-13 10:45:42','登录成功','huangbin'),(360,'0:0:0:0:0:0:0:1','登录','2018-03-13 10:53:37','登录成功','huangbin'),(361,'0:0:0:0:0:0:0:1','登录','2018-03-13 10:57:27','登录成功','huangbin'),(362,'0:0:0:0:0:0:0:1','登录','2018-03-13 11:02:14','登录成功','huangbin'),(363,'0:0:0:0:0:0:0:1','登录','2018-03-13 11:08:00','登录成功','huangbin'),(364,'0:0:0:0:0:0:0:1','登录','2018-03-13 11:09:48','登录成功','huangbin'),(365,'0:0:0:0:0:0:0:1','登录','2018-03-13 11:13:20','登录成功','huangbin'),(366,'0:0:0:0:0:0:0:1','登录','2018-03-13 11:18:42','登录成功','huangbin'),(367,'0:0:0:0:0:0:0:1','登录','2018-03-13 11:21:16','登录成功','huangbin'),(368,'0:0:0:0:0:0:0:1','登录','2018-03-13 11:27:11','登录成功','huangbin'),(369,'0:0:0:0:0:0:0:1','登录','2018-03-13 11:35:59','登录成功','huangbin'),(370,'0:0:0:0:0:0:0:1','登录','2018-03-13 11:45:12','登录成功','huangbin'),(371,'127.0.0.1','登录','2018-03-13 12:13:47','登录成功','huangbin'),(372,'0:0:0:0:0:0:0:1','登录','2018-03-13 12:20:31','登录成功','huangbin'),(373,'0:0:0:0:0:0:0:1','登录','2018-03-13 12:34:54','登录成功','huangbin'),(374,'0:0:0:0:0:0:0:1','登录','2018-03-13 12:38:08','登录成功','huangbin'),(375,'0:0:0:0:0:0:0:1','登录','2018-03-13 12:47:17','登录成功','huangbin'),(376,'0:0:0:0:0:0:0:1','登录','2018-03-13 12:50:02','登录成功','huangbin'),(377,'0:0:0:0:0:0:0:1','登录','2018-03-13 12:58:38','登录成功','huangbin'),(378,'0:0:0:0:0:0:0:1','登录','2018-03-13 13:05:12','登录成功','huangbin'),(379,'0:0:0:0:0:0:0:1','登录','2018-03-13 13:08:24','登录成功','huangbin'),(380,'0:0:0:0:0:0:0:1','登录','2018-03-13 13:13:37','登录成功','huangbin'),(381,'0:0:0:0:0:0:0:1','登录','2018-03-13 16:36:31','登录成功','huangbin'),(382,'0:0:0:0:0:0:0:1','登录','2018-03-13 16:52:32','登录成功','huangbin'),(383,'0:0:0:0:0:0:0:1','登录','2018-03-13 17:13:10','登录成功','huangbin'),(384,'0:0:0:0:0:0:0:1','登录','2018-03-13 17:20:39','登录成功','huangbin'),(385,'0:0:0:0:0:0:0:1','登录','2018-03-13 17:23:42','登录成功','huangbin'),(386,'0:0:0:0:0:0:0:1','登录','2018-03-13 17:39:58','登录成功','huangbin'),(387,'0:0:0:0:0:0:0:1','登录','2018-03-13 19:36:34','登录成功','huangbin'),(388,'0:0:0:0:0:0:0:1','登录','2018-03-13 19:47:14','登录成功','huangbin'),(389,'0:0:0:0:0:0:0:1','登录','2018-03-13 19:47:44','登录成功','huangbin'),(390,'0:0:0:0:0:0:0:1','登录','2018-03-13 19:52:10','登录成功','huangbin'),(391,'0:0:0:0:0:0:0:1','登录','2018-03-13 19:53:49','登录成功','huangbin'),(392,'0:0:0:0:0:0:0:1','登录','2018-03-13 19:56:20','登录成功','huangbin'),(393,'0:0:0:0:0:0:0:1','登录','2018-03-13 20:01:28','登录成功','huangbin'),(394,'0:0:0:0:0:0:0:1','登录','2018-03-13 20:04:12','登录成功','huangbin'),(395,'0:0:0:0:0:0:0:1','登录','2018-03-13 20:12:50','登录成功','huangbin'),(396,'0:0:0:0:0:0:0:1','登录','2018-03-13 20:29:17','登录成功','huangbin'),(397,'0:0:0:0:0:0:0:1','登录','2018-03-13 20:32:46','登录成功','huangbin'),(398,'0:0:0:0:0:0:0:1','登录','2018-03-13 20:33:49','登录成功','huangbin'),(399,'0:0:0:0:0:0:0:1','登录','2018-03-13 20:47:10','登录成功','huangbin'),(400,'0:0:0:0:0:0:0:1','登录','2018-03-13 20:54:16','登录成功','huangbin'),(401,'0:0:0:0:0:0:0:1','登录','2018-03-13 20:57:19','登录成功','huangbin'),(402,'0:0:0:0:0:0:0:1','登录','2018-03-13 21:03:36','登录成功','huangbin'),(403,'0:0:0:0:0:0:0:1','登录','2018-03-13 21:08:05','登录成功','huangbin'),(404,'0:0:0:0:0:0:0:1','登录','2018-03-13 21:12:41','登录成功','huangbin'),(405,'0:0:0:0:0:0:0:1','登录','2018-03-13 21:16:38','登录成功','huangbin'),(406,'0:0:0:0:0:0:0:1','登录','2018-03-13 21:20:17','登录成功','huangbin'),(407,'0:0:0:0:0:0:0:1','登录','2018-03-13 21:40:38','登录成功','huangbin'),(408,'0:0:0:0:0:0:0:1','登录','2018-03-13 21:50:07','登录成功','huangbin'),(409,'0:0:0:0:0:0:0:1','登录','2018-03-13 21:55:52','登录成功','huangbin'),(410,'0:0:0:0:0:0:0:1','登录','2018-03-13 22:05:43','登录成功','huangbin'),(411,'0:0:0:0:0:0:0:1','登录','2018-03-13 22:08:41','登录成功','huangbin'),(412,'0:0:0:0:0:0:0:1','登录','2018-03-13 22:11:22','登录成功','huangbin'),(413,'0:0:0:0:0:0:0:1','登录','2018-03-13 22:15:03','登录成功','huangbin'),(414,'0:0:0:0:0:0:0:1','登录','2018-03-13 22:39:39','登录成功','huangbin'),(415,'0:0:0:0:0:0:0:1','登录','2018-03-13 23:09:36','登录成功','huangbin'),(416,'0:0:0:0:0:0:0:1','登录','2018-03-13 23:21:24','登录成功','huangbin'),(417,'0:0:0:0:0:0:0:1','登录','2018-03-13 23:24:34','登录成功','huangbin'),(418,'0:0:0:0:0:0:0:1','登录','2018-03-14 00:14:11','登录成功','huangbin'),(419,'0:0:0:0:0:0:0:1','登录','2018-03-14 00:55:23','登录成功','huangbin'),(420,'0:0:0:0:0:0:0:1','登录','2018-03-14 01:01:10','登录成功','huangbin'),(421,'0:0:0:0:0:0:0:1','登录','2018-03-14 01:10:00','登录成功','huangbin'),(422,'0:0:0:0:0:0:0:1','登录','2018-03-14 01:12:21','登录成功','huangbin');
/*!40000 ALTER TABLE `t_user_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_role`
--

DROP TABLE IF EXISTS `t_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户',
  `role_id` bigint(20) NOT NULL COMMENT '角色',
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FK_4uvv76e86ms8ru0kk9s01d3s2` (`role_id`),
  CONSTRAINT `FK_4uvv76e86ms8ru0kk9s01d3s2` FOREIGN KEY (`role_id`) REFERENCES `t_user` (`id`),
  CONSTRAINT `FK_kefwen29p9h9ilvry31mgyc94` FOREIGN KEY (`user_id`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_role`
--

LOCK TABLES `t_user_role` WRITE;
/*!40000 ALTER TABLE `t_user_role` DISABLE KEYS */;
INSERT INTO `t_user_role` VALUES (1,1),(2,1);
/*!40000 ALTER TABLE `t_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_work_flow`
--

DROP TABLE IF EXISTS `t_work_flow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_work_flow` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `sort_no` bigint(20) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_work_flow`
--

LOCK TABLES `t_work_flow` WRITE;
/*!40000 ALTER TABLE `t_work_flow` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_work_flow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_work_flow_event`
--

DROP TABLE IF EXISTS `t_work_flow_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_work_flow_event` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) DEFAULT NULL,
  `is_auto` bit(1) NOT NULL,
  `name` varchar(20) NOT NULL,
  `sort_no` bigint(20) NOT NULL,
  `status` varchar(1) NOT NULL,
  `trigger_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_work_flow_event`
--

LOCK TABLES `t_work_flow_event` WRITE;
/*!40000 ALTER TABLE `t_work_flow_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_work_flow_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_work_flow_instance`
--

DROP TABLE IF EXISTS `t_work_flow_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_work_flow_instance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `sort_no` bigint(20) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_work_flow_instance`
--

LOCK TABLES `t_work_flow_instance` WRITE;
/*!40000 ALTER TABLE `t_work_flow_instance` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_work_flow_instance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_work_flow_node`
--

DROP TABLE IF EXISTS `t_work_flow_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_work_flow_node` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `node_desc` varchar(50) DEFAULT NULL,
  `node_index` bigint(20) DEFAULT NULL,
  `sort_no` bigint(20) NOT NULL,
  `status` varchar(1) NOT NULL,
  `work_flow_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_9fn1behkr9u1cb92502v0e8hc` (`work_flow_id`),
  CONSTRAINT `FK_9fn1behkr9u1cb92502v0e8hc` FOREIGN KEY (`work_flow_id`) REFERENCES `t_work_flow` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_work_flow_node`
--

LOCK TABLES `t_work_flow_node` WRITE;
/*!40000 ALTER TABLE `t_work_flow_node` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_work_flow_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_work_flow_node_comment`
--

DROP TABLE IF EXISTS `t_work_flow_node_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_work_flow_node_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comment` varchar(200) NOT NULL,
  `sort_no` bigint(20) NOT NULL,
  `status` varchar(1) NOT NULL,
  `work_flow_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_ppyfhwuxnl66mhoj16bea1qwn` (`work_flow_id`),
  CONSTRAINT `FK_ppyfhwuxnl66mhoj16bea1qwn` FOREIGN KEY (`work_flow_id`) REFERENCES `t_work_flow` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_work_flow_node_comment`
--

LOCK TABLES `t_work_flow_node_comment` WRITE;
/*!40000 ALTER TABLE `t_work_flow_node_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_work_flow_node_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_work_order`
--

DROP TABLE IF EXISTS `t_work_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_work_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `order_line_no` varchar(20) NOT NULL COMMENT '报修行号',
  `order_desc` varchar(200) DEFAULT NULL COMMENT '工单描述',
  `reporter` varchar(20) DEFAULT NULL COMMENT '报修人',
  `report_type` varchar(1) DEFAULT NULL COMMENT '报修方式',
  `report_time` varchar(255) DEFAULT NULL COMMENT '报修时间',
  `creator` varchar(20) DEFAULT NULL COMMENT '记录人',
  `deadline` varchar(20) DEFAULT NULL COMMENT '维修期限',
  `equipment_id` bigint(20) DEFAULT NULL COMMENT '设备',
  `unit_id` bigint(20) DEFAULT NULL COMMENT '维修单位',
  `expired` bit(1) DEFAULT NULL COMMENT '是否延期',
  `status` varchar(1) DEFAULT NULL COMMENT '状态',
  `auth_key` varchar(20) DEFAULT NULL COMMENT '授权码',
  `order_state` varchar(1) DEFAULT NULL,
  `eq_class_id` bigint(20) DEFAULT NULL,
  `location_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_tcoxj627n0epl2lx2hn6d6nh3` (`order_line_no`),
  KEY `FK_4iuwkrbjxgnsthtf1lwx0q7tb` (`unit_id`),
  KEY `FK_10w4ypnular8c3q8031h6qgg3` (`eq_class_id`),
  CONSTRAINT `FK_10w4ypnular8c3q8031h6qgg3` FOREIGN KEY (`eq_class_id`) REFERENCES `t_eq_class` (`id`),
  CONSTRAINT `FK_4iuwkrbjxgnsthtf1lwx0q7tb` FOREIGN KEY (`unit_id`) REFERENCES `t_unit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_work_order`
--

LOCK TABLES `t_work_order` WRITE;
/*!40000 ALTER TABLE `t_work_order` DISABLE KEYS */;
INSERT INTO `t_work_order` VALUES (1,'20180314005811','灯箱闪烁接触不良','huangbin','s','2018-03-14 00:58:11','huangbin',NULL,2,NULL,'\0','1','01','0',2,NULL),(2,'20180314010241','热水器漏水','黄斌','s','2018-03-14 01:02:41','huangbin',NULL,2,NULL,'\0','1','01','0',2,NULL);
/*!40000 ALTER TABLE `t_work_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v_etl_table_tree`
--

DROP TABLE IF EXISTS `v_etl_table_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `v_etl_table_tree` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `p_id` bigint(20) DEFAULT NULL,
  `t` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `v_etl_table_tree`
--

LOCK TABLES `v_etl_table_tree` WRITE;
/*!40000 ALTER TABLE `v_etl_table_tree` DISABLE KEYS */;
/*!40000 ALTER TABLE `v_etl_table_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_role_auth_view`
--

DROP TABLE IF EXISTS `v_role_auth_view`;
/*!50001 DROP VIEW IF EXISTS `v_role_auth_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_role_auth_view` AS SELECT 
 1 AS `id`,
 1 AS `resource_code`,
 1 AS `resource_level`,
 1 AS `resource_name`,
 1 AS `resource_desc`,
 1 AS `icon_class`,
 1 AS `role_id`,
 1 AS `parent_id`,
 1 AS `app_name`,
 1 AS `resource_url`,
 1 AS `sort_no`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_role_auth_view`
--

/*!50001 DROP VIEW IF EXISTS `v_role_auth_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_role_auth_view` AS select `r`.`id` AS `id`,`r`.`resource_code` AS `resource_code`,`r`.`resource_level` AS `resource_level`,`r`.`resource_name` AS `resource_name`,`r`.`resource_name` AS `resource_desc`,`r`.`icon_class` AS `icon_class`,`rr`.`role_id` AS `role_id`,`r`.`parent_id` AS `parent_id`,`r`.`app_name` AS `app_name`,`r`.`resource_url` AS `resource_url`,`r`.`sort_no` AS `sort_no` from (`t_resource` `r` left join `t_role_resource` `rr` on((`r`.`id` = `rr`.`resource_id`))) order by `rr`.`role_id`,`r`.`resource_code` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-14  1:19:00
