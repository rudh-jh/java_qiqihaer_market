CREATE DATABASE  IF NOT EXISTS `springboot2855f2n2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `springboot2855f2n2`;
-- MySQL dump 10.13  Distrib 8.0.45, for Win64 (x86_64)
--
-- Host: localhost    Database: springboot2855f2n2
-- ------------------------------------------------------
-- Server version	8.0.45

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
-- Table structure for table `aboutus`
--

DROP TABLE IF EXISTS `aboutus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aboutus` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='关于我们';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aboutus`
--

LOCK TABLES `aboutus` WRITE;
/*!40000 ALTER TABLE `aboutus` DISABLE KEYS */;
INSERT INTO `aboutus` VALUES (1,'2026-03-20 09:32:48','平台简介','齐齐哈尔特色粮油农产品销售平台','齐齐哈尔特色粮油农产品销售平台主要面向本地粮油产品销售与农户供货展示需求，围绕大米、杂粮、食用油、面粉、干货、粮油礼盒等产品，为用户提供商品浏览、加入购物车、在线下单、订单管理、收藏评论等功能。平台通过分类展示、商品推荐和农户信息展示，帮助用户更直观地了解产品来源、规格、库存和供货情况，也为本地农户提供一个线上展示和销售渠道。','upload/aboutus_picture1.jpg','upload/aboutus_picture2.jpg','upload/aboutus_picture3.jpg'),(2,'2025-03-20 09:32:48','关于我们 ','ABOUT US','当你设想门外是寒冷可怕的世界时，你还应该开门出去看看，是否真的如此。如果你有信心，你对前途就不犹豫了。如果你有勇气，你就不怕前途是否有困难或危险了每个人心中都应有两盏灯，一盏是希望的灯，一盏是勇气的灯。有了这两盏灯，我们就不怕海上的黑暗和风涛的险恶了。人的一生很像是在雾中行走。远远望去，只是迷蒙一片，辨不出方向和吉凶。可是，当你鼓起勇气，放下恐惧和怀疑，一步一步向前走去的时候，你就会发现，每走一步，你都能把下一步路看得清楚一点。“往前走，别站在远远的地方观望！”你就可以找到你的方向。','upload/aboutus_picture1.jpg','upload/aboutus_picture2.jpg','upload/aboutus_picture3.jpg');
/*!40000 ALTER TABLE `aboutus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2026-03-20 09:32:48',11,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2026-03-20 09:32:48',12,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2026-03-20 09:32:48',13,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2026-03-20 09:32:48',14,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2026-03-20 09:32:48',15,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2026-03-20 09:32:48',16,'宇宙银河系月球1号','月某','13823888886','是'),(7,'2026-03-20 09:32:48',17,'宇宙银河系黑洞1号','黑某','13823888887','是'),(8,'2026-03-20 09:32:48',18,'宇宙银河系地球1号','地某','13823888888','是'),(9,'2026-03-20 09:42:20',1707384962655,'广州珠江新城小区','安安','13699999988','否'),(10,'2026-03-20 09:45:49',26,'广州珠江新城小区','用户账号6','13699999988','是'),(11,'2026-03-20 10:28:51',1707384962655,'齐齐哈尔大学','111','15866666666','否'),(12,'2026-04-10 05:07:50',1707384962655,'qiqihaer','111','15864811211','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'zhunongshangpin' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` longtext COMMENT '图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` double DEFAULT NULL COMMENT '单价',
  `discountprice` double DEFAULT NULL COMMENT '会员价',
  `nonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chanpinfenlei`
--

DROP TABLE IF EXISTS `chanpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chanpinfenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chanpinfenlei` varchar(200) DEFAULT NULL COMMENT '产品分类',
  `image` longtext COMMENT 'image',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='产品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chanpinfenlei`
--

LOCK TABLES `chanpinfenlei` WRITE;
/*!40000 ALTER TABLE `chanpinfenlei` DISABLE KEYS */;
INSERT INTO `chanpinfenlei` VALUES (1,'2026-04-25 08:29:31','优质大米',NULL),(2,'2026-04-25 08:29:31','东北杂粮',NULL),(3,'2026-04-25 08:29:31','食用油',NULL),(4,'2026-04-25 08:29:31','面粉面条',NULL),(5,'2026-04-25 08:29:31','干货山珍',NULL),(6,'2026-04-25 08:29:31','豆制品',NULL),(7,'2026-04-25 08:29:31','粮油礼盒',NULL),(8,'2026-04-25 08:29:31','地方特产',NULL);
/*!40000 ALTER TABLE `chanpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  `url` varchar(500) DEFAULT NULL COMMENT 'url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg',NULL),(2,'picture2','upload/picture2.jpg',NULL),(3,'picture3','upload/1707385276585.jpg',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussnongjixuetang`
--

DROP TABLE IF EXISTS `discussnongjixuetang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discussnongjixuetang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='农技学堂评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussnongjixuetang`
--

LOCK TABLES `discussnongjixuetang` WRITE;
/*!40000 ALTER TABLE `discussnongjixuetang` DISABLE KEYS */;
/*!40000 ALTER TABLE `discussnongjixuetang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusszhunongshangpin`
--

DROP TABLE IF EXISTS `discusszhunongshangpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discusszhunongshangpin` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='助农商品评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusszhunongshangpin`
--

LOCK TABLES `discusszhunongshangpin` WRITE;
/*!40000 ALTER TABLE `discusszhunongshangpin` DISABLE KEYS */;
/*!40000 ALTER TABLE `discusszhunongshangpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusszhunongtuopin`
--

DROP TABLE IF EXISTS `discusszhunongtuopin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discusszhunongtuopin` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `avatarurl` longtext COMMENT '头像',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='助农脱贫评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusszhunongtuopin`
--

LOCK TABLES `discusszhunongtuopin` WRITE;
/*!40000 ALTER TABLE `discusszhunongtuopin` DISABLE KEYS */;
INSERT INTO `discusszhunongtuopin` VALUES (1,'2026-03-20 09:46:19',69,1707384962655,'upload/1707384961842.jpg','111','<p>详细内容</p>','<p>33</p>'),(2,'2026-04-10 05:06:41',61,1707384962655,'upload/1707384961842.jpg','111','<p>kljlkjl;</p>',NULL);
/*!40000 ALTER TABLE `discusszhunongtuopin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `typename` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `name` varchar(200) DEFAULT NULL COMMENT '发布人',
  `headportrait` longtext COMMENT '头像',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  `storeupnum` int DEFAULT '0' COMMENT '收藏数',
  `picture` longtext NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb3 COMMENT='公告资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (121,'2026-03-20 09:32:48','齐齐哈尔优质粮油产品上线销售','平台精选本地大米、杂粮、食用油等产品，为用户提供更加便捷的线上购买渠道。','平台公告','平台管理员','upload/news_headportrait1.jpg',35,'2026-04-10 13:06:52',18,2,12,'upload/news_picture1.jpg','<p>为进一步展示齐齐哈尔本地特色粮油产品，平台现已上线多类优质农产品，包括东北大米、杂粮组合、非转基因大豆油、面粉面条以及粮油礼盒等。用户可通过商品分类快速查找所需产品，并完成加入购物车、下单和订单管理等操作。</p>'),(122,'2026-03-20 09:32:48','东北大米选购时应关注哪些指标','选购东北大米时，可从产地、品种、色泽、气味、包装规格等方面进行判断。','粮油选购指南','粮油顾问','upload/news_headportrait2.jpg',42,'2026-04-10 13:06:55',21,1,15,'upload/news_picture2.jpg','<p>东北大米口感软糯、香味较好，受到许多消费者欢迎。用户在选购时应关注大米产地、生产日期、保质期、包装规格和执行标准等信息。平台在商品详情页中展示产品规格、生产地、库存和供货信息，方便用户进行对比选择。</p>'),(123,'2026-03-20 09:32:48','非转基因大豆油家庭装上新','平台新增多款家庭装食用油产品，适合日常烹饪和家庭储备。','新品上架','平台管理员','upload/news_headportrait3.jpg',38,'2026-03-20 17:32:48',16,1,10,'upload/news_picture3.jpg','<p>本次上新的食用油产品以非转基因大豆油、葵花籽油和玉米胚芽油为主，覆盖5L家庭装和小规格便携装。用户可根据家庭人口、烹饪习惯和价格区间进行选择。</p>'),(124,'2026-03-20 09:32:48','东北杂粮组合适合哪些人群','杂粮产品种类丰富，可作为日常主食搭配的重要选择。','健康饮食知识','粮油顾问','upload/news_headportrait4.jpg',51,'2026-03-20 17:32:48',24,2,19,'upload/news_picture4.jpg','<p>东北杂粮包括小米、黑米、红小豆、绿豆、玉米碴、高粱米等多种产品。合理搭配杂粮，有助于丰富日常饮食结构。平台提供多种杂粮组合装，适合家庭日常食用和节日送礼。</p>'),(125,'2026-03-20 09:32:48','本地农户直供专区正式上线','平台新增农户直供专区，集中展示本地供货商和特色粮油产品。','本地农户故事','平台管理员','upload/news_headportrait5.jpg',46,'2026-03-20 17:32:48',23,1,17,'upload/news_picture5.jpg','<p>为提升本地农产品线上销售能力，平台设置农户直供专区，展示农户账号、供货商品、规格、库存和供货情况。用户可以更直观地了解商品来源，也方便农户进行线上销售管理。</p>'),(126,'2026-03-20 09:32:48','粮油礼盒专区满足节日采购需求','平台推出多款粮油礼盒，适合家庭采购、节日走访和单位福利。','平台公告','平台管理员','upload/news_headportrait6.jpg',39,'2026-04-10 13:07:20',20,1,16,'upload/news_picture6.jpg','<p>粮油礼盒专区主要包括大米礼盒、杂粮礼盒、食用油组合礼盒和地方特产组合礼盒。用户可以根据价格、规格和产品类型进行选择，满足不同场景下的采购需求。</p>'),(127,'2026-03-20 09:32:48','面粉面条类商品购买指南','面粉和面条是家庭常用粮油产品，选购时应关注规格、产地和保质期。','粮油选购指南','粮油顾问','upload/news_headportrait7.jpg',33,'2026-03-20 17:32:48',14,1,9,'upload/news_picture7.jpg','<p>用户购买面粉、挂面、杂粮面条等产品时，应重点查看产品生产日期、规格、保质期和储存方式。平台在商品详情页中展示相关信息，帮助用户快速判断商品是否符合家庭使用需求。</p>'),(128,'2026-03-20 09:32:48','平台优化购物车多商品结算流程','用户可在购物车中勾选多个商品，一次性完成结算和下单。','平台公告','平台管理员','upload/news_headportrait8.jpg',44,'2026-03-20 17:32:48',22,1,14,'upload/news_picture8.jpg','<p>为提升用户购买体验，平台购物车支持多商品勾选、数量调整、合计金额展示和统一结算。用户可一次选择大米、杂粮、食用油等多类商品，并在确认订单页面统一提交订单。</p>'),(129,'2026-03-20 09:41:02','春季粮油储存需要注意什么','春季气温和湿度变化较大，粮油产品储存应注意防潮、防晒和密封。','健康饮食知识','粮油顾问','',31,'2026-04-10 13:01:09',13,1,8,'upload/1707385257752.jpg','<p>粮油产品购买后应放置在阴凉、干燥、通风处，避免阳光直射。大米、杂粮、面粉等产品开封后应尽量密封保存，食用油应避免长期高温存放，以保持较好的食用品质。</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newstype`
--

DROP TABLE IF EXISTS `newstype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `newstype` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `typename` varchar(200) NOT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb3 COMMENT='公告资讯分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newstype`
--

LOCK TABLES `newstype` WRITE;
/*!40000 ALTER TABLE `newstype` DISABLE KEYS */;
INSERT INTO `newstype` VALUES (111,'2026-03-20 09:32:48','分类名称1'),(112,'2026-03-20 09:32:48','分类名称2'),(113,'2026-03-20 09:32:48','分类名称3'),(114,'2026-03-20 09:32:48','分类名称4'),(115,'2026-03-20 09:32:48','分类名称5'),(116,'2026-03-20 09:32:48','分类名称6'),(117,'2026-03-20 09:32:48','分类名称7'),(118,'2026-03-20 09:32:48','分类名称8');
/*!40000 ALTER TABLE `newstype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nonghu`
--

DROP TABLE IF EXISTS `nonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `nonghuzhanghao` varchar(200) NOT NULL COMMENT '农户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `nonghuxingming` varchar(200) NOT NULL COMMENT '农户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nonghudianhua` varchar(200) DEFAULT NULL COMMENT '农户电话',
  `touxiang` longtext COMMENT '头像',
  `money` double DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `nonghuzhanghao` (`nonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1775797495571 DEFAULT CHARSET=utf8mb3 COMMENT='农商';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nonghu`
--

LOCK TABLES `nonghu` WRITE;
/*!40000 ALTER TABLE `nonghu` DISABLE KEYS */;
INSERT INTO `nonghu` VALUES (11,'2026-03-20 09:32:48','供应商账号1','123456','供应商姓名1','男','13823888881','upload/nonghu_touxiang1.jpg',200),(12,'2026-03-20 09:32:48','供应商账号2','123456','供应商姓名2','男','13823888882','upload/nonghu_touxiang2.jpg',200),(13,'2026-03-20 09:32:48','供应商账号3','123456','供应商姓名3','男','13823888883','upload/nonghu_touxiang3.jpg',200),(14,'2026-03-20 09:32:48','供应商账号4','123456','供应商姓名4','男','13823888884','upload/nonghu_touxiang4.jpg',200),(15,'2026-03-20 09:32:48','供应商账号5','123456','供应商姓名5','男','13823888885','upload/nonghu_touxiang5.jpg',200),(16,'2026-03-20 09:32:48','供应商账号6','123456','供应商姓名6','男','13823888886','upload/nonghu_touxiang6.jpg',200),(17,'2026-03-20 09:32:48','供应商账号7','123456','供应商姓名7','男','13823888887','upload/nonghu_touxiang7.jpg',200),(18,'2026-03-20 09:32:48','供应商账号8','123456','供应商姓名8','男','13823888888','upload/nonghu_touxiang8.jpg',200),(1775797495569,'2026-04-10 05:04:55','555','555','供应商555','男','15864811211','',0),(1775797495570,'2026-04-26 02:20:05','222','222','测试供货商222','男','13800000222','upload/touxiang1.jpg',0);
/*!40000 ALTER TABLE `nonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nongjixuetang`
--

DROP TABLE IF EXISTS `nongjixuetang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nongjixuetang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengbiaoti` varchar(200) DEFAULT NULL COMMENT '课程标题',
  `kechengfenlei` varchar(200) DEFAULT NULL COMMENT '课程分类',
  `kechengzhaopian` longtext COMMENT '课程照片',
  `kechengshipin` longtext COMMENT '课程视频',
  `wendangziliao` longtext COMMENT '文档资料',
  `kechengjianjie` longtext COMMENT '课程简介',
  `kechengxiangqing` longtext COMMENT '课程详情',
  `discussnum` int DEFAULT '0' COMMENT '评论数',
  `storeupnum` int DEFAULT '0' COMMENT '收藏数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb3 COMMENT='农技学堂';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nongjixuetang`
--

LOCK TABLES `nongjixuetang` WRITE;
/*!40000 ALTER TABLE `nongjixuetang` DISABLE KEYS */;
INSERT INTO `nongjixuetang` VALUES (71,'2026-03-20 09:32:48','课程标题1','种植技术','upload/nongjixuetang_kechengzhaopian1.jpg,upload/nongjixuetang_kechengzhaopian2.jpg,upload/nongjixuetang_kechengzhaopian3.jpg','','','课程简介1','课程详情1',0,1),(72,'2026-03-20 09:32:48','课程标题2','种植技术','upload/nongjixuetang_kechengzhaopian2.jpg,upload/nongjixuetang_kechengzhaopian3.jpg,upload/nongjixuetang_kechengzhaopian4.jpg','','','课程简介2','课程详情2',0,2),(73,'2026-03-20 09:32:48','课程标题3','种植技术','upload/nongjixuetang_kechengzhaopian3.jpg,upload/nongjixuetang_kechengzhaopian4.jpg,upload/nongjixuetang_kechengzhaopian5.jpg','','','课程简介3','课程详情3',0,3),(74,'2026-03-20 09:32:48','课程标题4','种植技术','upload/nongjixuetang_kechengzhaopian4.jpg,upload/nongjixuetang_kechengzhaopian5.jpg,upload/nongjixuetang_kechengzhaopian6.jpg','','','课程简介4','课程详情4',0,4),(75,'2026-03-20 09:32:48','课程标题5','种植技术','upload/nongjixuetang_kechengzhaopian5.jpg,upload/nongjixuetang_kechengzhaopian6.jpg,upload/nongjixuetang_kechengzhaopian7.jpg','','','课程简介5','课程详情5',0,5),(76,'2026-03-20 09:32:48','课程标题6','种植技术','upload/nongjixuetang_kechengzhaopian6.jpg,upload/nongjixuetang_kechengzhaopian7.jpg,upload/nongjixuetang_kechengzhaopian8.jpg','','','课程简介6','课程详情6',0,6),(77,'2026-03-20 09:32:48','课程标题7','种植技术','upload/nongjixuetang_kechengzhaopian7.jpg,upload/nongjixuetang_kechengzhaopian8.jpg,upload/nongjixuetang_kechengzhaopian9.jpg','','','课程简介7','课程详情7',0,7),(78,'2026-03-20 09:32:48','课程标题8','种植技术','upload/nongjixuetang_kechengzhaopian8.jpg,upload/nongjixuetang_kechengzhaopian9.jpg,upload/nongjixuetang_kechengzhaopian10.jpg','','','课程简介8','课程详情8',0,8),(79,'2026-03-20 09:40:44','课程xx','养殖技术','upload/1707385231843.jpg','upload/1707385236970.mp4','upload/1707385239362.doc','详细内容可自行编辑566565','<p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p>',0,1);
/*!40000 ALTER TABLE `nongjixuetang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `orderid` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT NULL COMMENT '商品表名',
  `userid` bigint DEFAULT NULL COMMENT '用户id',
  `goodid` bigint DEFAULT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` longtext COMMENT '商品图片',
  `buynumber` int DEFAULT NULL COMMENT '购买数量',
  `price` double DEFAULT NULL COMMENT '价格',
  `total` double DEFAULT NULL COMMENT '总价格',
  `discountprice` double DEFAULT NULL COMMENT '折扣价格',
  `discounttotal` double DEFAULT NULL COMMENT '折扣总价格',
  `type` int DEFAULT NULL COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `tel` varchar(100) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(100) DEFAULT NULL COMMENT '收货人',
  `logistics` varchar(255) DEFAULT NULL COMMENT '物流',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `nonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  `sfsh` varchar(50) DEFAULT NULL COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `role` varchar(100) DEFAULT NULL COMMENT '用户角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'2026425165920570','zhunongshangpin',1707384962655,1,'泰来弱碱大米 5kg','upload/zhunongshangpin_tupian1.jpg',1,36.9,36.9,36.9,36.9,1,'已完成','qiqihaer','15864811211','111',NULL,'','222','',NULL,'yonghu','2026-04-25 08:59:20'),(2,'202642692853211','zhunongshangpin',1707384962655,30,'饺子粉 5kg','upload/flour.jpg',1,32.9,32.9,32.9,32.9,1,'已支付','qiqihaer','15864811211','111',NULL,'','227','',NULL,'yonghu','2026-04-26 01:28:53'),(3,'202642692853210','zhunongshangpin',1707384962655,60,'东北黏豆包 1kg','upload/local.jpg',1,27.9,27.9,27.9,27.9,1,'已支付','qiqihaer','15864811211','111',NULL,'','225','',NULL,'yonghu','2026-04-26 01:28:53'),(4,'2026426102234020','zhunongshangpin',1707384962655,67,'测试五谷杂粮组合 3kg','upload/grain.jpg',1,46.9,46.9,46.9,46.9,1,'已完成','齐齐哈尔大学','15866666666','111',NULL,'','222','',NULL,'yonghu','2026-04-26 02:22:03'),(5,'2026426102235211','zhunongshangpin',1707384962655,66,'测试非转基因大豆油 5L','upload/oil.jpg',1,65.9,65.9,65.9,65.9,1,'已退款','齐齐哈尔大学','15866666666','111',NULL,'','222','',NULL,'yonghu','2026-04-26 02:22:03'),(6,'2026426102235902','zhunongshangpin',1707384962655,65,'测试东北长粒香大米 5kg','upload/rice.jpg',1,36.9,36.9,36.9,36.9,1,'已完成','齐齐哈尔大学','15866666666','111',NULL,'','222','',NULL,'yonghu','2026-04-26 02:22:03');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1,'2026-03-20 09:42:01',1707384962655,59,'zhunongshangpin','产品xx','upload/1707385136500.jpg','1',NULL,NULL),(2,'2026-03-20 09:46:12',1707384962655,69,'zhunongtuopin','文章xx','upload/1707385213644.jpg','1',NULL,NULL),(3,'2026-03-20 09:46:28',1707384962655,79,'nongjixuetang','课程xx','upload/1707385231843.jpg','1',NULL,NULL),(4,'2026-04-10 05:05:42',1707384962655,51,'zhunongshangpin','产品名称1','upload/zhunongshangpin_tupian1.jpg','1',NULL,NULL);
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemintro`
--

DROP TABLE IF EXISTS `systemintro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `systemintro` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `subtitle` varchar(200) DEFAULT NULL COMMENT '副标题',
  `content` longtext NOT NULL COMMENT '内容',
  `picture1` longtext COMMENT '图片1',
  `picture2` longtext COMMENT '图片2',
  `picture3` longtext COMMENT '图片3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='系统简介';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemintro`
--

LOCK TABLES `systemintro` WRITE;
/*!40000 ALTER TABLE `systemintro` DISABLE KEYS */;
INSERT INTO `systemintro` VALUES (1,'2026-03-20 09:32:48','系统简介','SYSTEM INTRODUCTION','在平静的海平面上，每个人都可以成为领航员。但如果只有阳光而没有阴影，只有欢乐而没有痛苦，那就不是完整的人生。就拿最幸福的人来说吧——他的幸福是一团纠结的纱线。痛苦和幸福轮番而至，让我们悲喜交集，甚至死亡都让人生更加可爱。人在生命的严肃时刻，在悲伤与丧亲的阴影下，才最接近真实的自我。在生活和事业的各个方面，才智的功能远不如性格，头脑的功能远不如心性，天分远不如自制力、毅力与教养。我始终认为内心开始过严肃生活的人，他外在的生活会开始变得更为俭朴。在一个奢侈浪费的年代，但愿我能让世人了解：人类真正的需求是多么的稀少。不重蹈覆辙才是真正的醒悟。比别人优秀并无任何高贵之处，真正的高贵在于超越从前的自我。','upload/systemintro_picture1.jpg','upload/systemintro_picture2.jpg','upload/systemintro_picture3.jpg');
/*!40000 ALTER TABLE `systemintro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','78zlp01rpsqa0vf3p892pkwys4j80wq4','2026-03-20 09:34:58','2026-04-26 03:24:47'),(2,1707384962655,'111','yonghu','用户','kj25nbvd6gi67rje3v0z98qqipojdbi4','2026-03-20 09:36:06','2026-04-26 02:28:31'),(3,1707384984080,'222','nonghu','农户','tg9okfbg07j1ofer8wt42shetitn0ne0','2026-03-20 09:36:29','2026-04-10 06:10:03'),(4,16,'供应商账号6','nonghu','农户','2iocjogtrbe7a2xk0t4pjxym1ys14ayq','2026-03-20 09:44:37','2026-03-20 10:44:38'),(5,26,'用户账号6','yonghu','用户','abv1xe5tf52kv2obf71xpp5ggibsphu0','2026-03-20 09:45:31','2026-03-20 10:45:31'),(6,14,'供应商账号4','nonghu','农户','ugj705ko8pq8up6a0mlbvnxledtnfuiz','2026-03-20 10:34:05','2026-03-20 11:34:05'),(7,1775797495569,'555','nonghu','农户','cg7zdn4wcjy9593z3l9rohcxbgktv8ce','2026-04-10 05:05:05','2026-04-10 06:05:05'),(8,1775797495570,'222','nonghu','农户','o1nq1kyj9a3gyra4nbpbeqm00owepxjc','2026-04-26 02:22:19','2026-04-26 03:27:45');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `image` varchar(200) DEFAULT NULL COMMENT '头像',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','upload/image1.jpg','管理员','2026-03-20 09:32:48');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wenzhangfenlei`
--

DROP TABLE IF EXISTS `wenzhangfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wenzhangfenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangfenlei` varchar(200) DEFAULT NULL COMMENT '文章分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='文章分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wenzhangfenlei`
--

LOCK TABLES `wenzhangfenlei` WRITE;
/*!40000 ALTER TABLE `wenzhangfenlei` DISABLE KEYS */;
INSERT INTO `wenzhangfenlei` VALUES (1,'2026-04-25 08:29:53','粮油选购指南'),(2,'2026-04-25 08:29:53','农产品质量安全'),(3,'2026-04-25 08:29:53','本地农户故事'),(4,'2026-04-25 08:29:53','健康饮食知识'),(5,'2026-04-25 08:29:53','助农政策宣传'),(6,'2026-04-25 08:29:53','平台公告');
/*!40000 ALTER TABLE `wenzhangfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yonghudianhua` varchar(200) DEFAULT NULL COMMENT '用户电话',
  `touxiang` longtext COMMENT '头像',
  `money` double DEFAULT '0' COMMENT '余额',
  `vip` varchar(200) DEFAULT '否' COMMENT '是否会员',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1775797094109 DEFAULT CHARSET=utf8mb3 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (21,'2026-03-20 09:32:48','用户账号1','123456','用户姓名1','男','13823888881','upload/yonghu_touxiang1.jpg',200,'否'),(22,'2026-03-20 09:32:48','用户账号2','123456','用户姓名2','男','13823888882','upload/yonghu_touxiang2.jpg',200,'否'),(23,'2026-03-20 09:32:48','用户账号3','123456','用户姓名3','男','13823888883','upload/yonghu_touxiang3.jpg',200,'否'),(24,'2026-03-20 09:32:48','用户账号4','123456','用户姓名4','男','13823888884','upload/yonghu_touxiang4.jpg',200,'否'),(25,'2026-03-20 09:32:48','用户账号5','123456','用户姓名5','男','13823888885','upload/yonghu_touxiang5.jpg',200,'否'),(26,'2026-03-20 09:32:48','用户账号6','123456','用户姓名6','男','13823888886','upload/yonghu_touxiang6.jpg',100.1,'否'),(27,'2026-03-20 09:32:48','用户账号7','123456','用户姓名7','男','13823888887','upload/yonghu_touxiang7.jpg',200,'否'),(28,'2026-03-20 09:32:48','用户账号8','123456','用户姓名8','男','13823888888','upload/yonghu_touxiang8.jpg',200,'否'),(1707384962655,'2026-03-20 09:36:02','111','111','安安','女','13699999988','upload/1707384961842.jpg',99915.2,'是');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhunongshangpin`
--

DROP TABLE IF EXISTS `zhunongshangpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zhunongshangpin` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chanpinbianhao` varchar(200) NOT NULL COMMENT '产品编号',
  `chanpinmingcheng` varchar(200) NOT NULL COMMENT '产品名称',
  `chanpinfenlei` varchar(200) NOT NULL COMMENT '产品分类',
  `tupian` longtext COMMENT '图片',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `baozhiqi` varchar(200) DEFAULT NULL COMMENT '保质期',
  `shengchandi` varchar(200) DEFAULT NULL COMMENT '生产地',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `chanpinxiangqing` longtext COMMENT '产品详情',
  `nonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '农户账号',
  `nonghuxingming` varchar(200) DEFAULT NULL COMMENT '农户姓名',
  `onelimittimes` int DEFAULT NULL COMMENT '单限',
  `alllimittimes` int DEFAULT NULL COMMENT '库存',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  `discussnum` int DEFAULT '0' COMMENT '评论数',
  `price` double NOT NULL COMMENT '价格',
  `vipprice` double DEFAULT '-1' COMMENT '会员价',
  `storeupnum` int DEFAULT '0' COMMENT '收藏数',
  `salenum` int DEFAULT '0' COMMENT '销量',
  `likenum` int DEFAULT '0' COMMENT '点赞量',
  `goodcommentnum` int DEFAULT '0' COMMENT '好评数',
  `gonghuoshijian` varchar(100) DEFAULT NULL COMMENT '供货时间',
  `gonghuoshuliang` int DEFAULT '0' COMMENT '供货数量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chanpinbianhao` (`chanpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb3 COMMENT='助农商品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhunongshangpin`
--

LOCK TABLES `zhunongshangpin` WRITE;
/*!40000 ALTER TABLE `zhunongshangpin` DISABLE KEYS */;
INSERT INTO `zhunongshangpin` VALUES (2,'2026-04-25 08:38:27','DM2026002','依安长粒香大米 10kg','优质大米','upload/rice.jpg','2026-03-21','12个月','黑龙江省齐齐哈尔市依安县','10kg/袋','依安长粒香大米米粒细长，米香自然，适合家庭长期储备，是东北大米中的常用优质品类。','223','供货商2',8,220,'2026-04-25 16:38:27',143,16,69.9,65.9,21,22,16,19,'每周一、三、五供货',302),(3,'2026-04-25 08:38:27','DM2026003','龙江珍珠米 5kg','优质大米','upload/rice.jpg','2026-03-22','12个月','黑龙江省齐齐哈尔市龙江县','5kg/袋','龙江珍珠米颗粒圆润，煮饭后口感柔软，适合老人、儿童及家庭日常食用。','224','供货商3',10,260,'2026-04-25 16:38:27',133,12,35.8,32.8,18,23,19,6,'每周一、三、五供货',343),(4,'2026-04-25 08:38:27','DM2026004','克山生态稻花香 5kg','优质大米','upload/rice.jpg','2026-03-22','12个月','黑龙江省齐齐哈尔市克山县','5kg/袋','克山生态稻花香大米香味较好，米饭松软适中，适合追求品质口感的家庭用户。','225','供货商4',10,180,'2026-04-25 16:38:27',165,20,49.9,46.9,31,24,22,13,'每周一、三、五供货',264),(5,'2026-04-25 08:38:27','DM2026005','家庭装东北大米 10kg','优质大米','upload/rice.jpg','2026-03-23','12个月','黑龙江省齐齐哈尔市','10kg/袋','家庭装东北大米适合三口之家或多人家庭使用，包装结实，储存方便，性价比较高。','226','供货商5',6,300,'2026-04-25 16:38:27',121,14,62.9,59.9,17,25,25,20,'每周一、三、五供货',385),(6,'2026-04-25 08:38:27','DM2026006','新米真空装长粒香 2.5kg','优质大米','upload/rice.jpg','2026-03-24','12个月','黑龙江省齐齐哈尔市','2.5kg/袋','小规格真空装长粒香大米便于保存，适合单人用户、小家庭或短期尝鲜购买。','227','供货商6',10,240,'2026-04-25 16:38:27',98,9,24.9,22.9,12,26,28,7,'每周一、三、五供货',326),(7,'2026-04-25 08:38:27','DM2026007','绿色圆粒米 5kg','优质大米','upload/rice.jpg','2026-03-25','12个月','黑龙江省齐齐哈尔市','5kg/袋','绿色圆粒米米粒饱满，适合熬粥、煮饭和家庭日常主食搭配。','228','供货商7',10,210,'2026-04-25 16:38:27',87,8,33.9,31.9,10,27,31,14,'每周一、三、五供货',297),(8,'2026-04-25 08:38:27','DM2026008','农户直供优质粳米 10kg','优质大米','upload/rice.jpg','2026-03-25','12个月','齐齐哈尔本地农户直供','10kg/袋','农户直供优质粳米由本地供货商统一供货，适合家庭批量采购和单位食堂使用。','229','供货商8',5,200,'2026-04-25 16:38:27',176,22,72.9,68.9,35,28,34,21,'每周一、三、五供货',288),(10,'2026-04-25 08:38:27','ZL2026002','东北红小豆 1kg','东北杂粮','upload/grain.jpg','2026-03-21','12个月','黑龙江省齐齐哈尔市','1kg/袋','东北红小豆颗粒均匀，适合煮粥、制作豆沙和家庭甜品。','223','供货商2',10,230,'2026-04-25 16:38:27',93,9,18.8,16.8,12,30,10,15,'每周二、四供货',320),(11,'2026-04-25 08:38:27','ZL2026003','绿豆杂粮组合装 1.5kg','东北杂粮','upload/grain.jpg','2026-03-22','12个月','黑龙江省齐齐哈尔市','1.5kg/袋','绿豆杂粮组合适合家庭夏季煮汤、煮粥，包装小巧，储存方便。','224','供货商3',10,210,'2026-04-25 16:38:27',88,8,22.9,20.9,11,31,13,22,'每周二、四供货',301),(12,'2026-04-25 08:38:27','ZL2026004','五谷杂粮礼盒 3kg','东北杂粮','upload/grain.jpg','2026-03-23','12个月','黑龙江省齐齐哈尔市','3kg/盒','五谷杂粮礼盒包含小米、黑米、红小豆、绿豆等多种粮食，适合家庭采购和节日送礼。','225','供货商4',5,150,'2026-04-25 16:38:27',135,15,59.9,55.9,22,32,16,9,'每周二、四供货',242),(13,'2026-04-25 08:38:27','ZL2026005','东北燕麦米 1kg','东北杂粮','upload/grain.jpg','2026-03-24','12个月','黑龙江省齐齐哈尔市','1kg/袋','东北燕麦米可搭配大米煮饭，也可熬粥，适合注重粗粮搭配的家庭用户。','226','供货商5',10,190,'2026-04-25 16:38:27',75,7,16.9,15.5,8,33,19,16,'每周二、四供货',283),(14,'2026-04-25 08:38:27','ZL2026006','玉米碴 2.5kg','东北杂粮','upload/grain.jpg','2026-03-24','12个月','黑龙江省齐齐哈尔市','2.5kg/袋','玉米碴颗粒均匀，适合熬粥和制作粗粮主食，是东北家庭常见粮食品类。','227','供货商6',10,240,'2026-04-25 16:38:27',69,6,19.9,18.5,9,34,22,23,'每周二、四供货',334),(15,'2026-04-25 08:38:27','ZL2026007','黑米 1kg','东北杂粮','upload/grain.jpg','2026-03-25','12个月','黑龙江省齐齐哈尔市','1kg/袋','黑米颗粒饱满，可与大米、小米搭配煮粥，提升日常饮食多样性。','228','供货商7',10,200,'2026-04-25 16:38:27',82,8,21.9,19.9,10,35,25,10,'每周二、四供货',295),(16,'2026-04-25 08:38:27','ZL2026008','高粱米 1kg','东北杂粮','upload/grain.jpg','2026-03-25','12个月','黑龙江省齐齐哈尔市','1kg/袋','高粱米适合粗粮搭配和家庭主食补充，颗粒完整，风味朴实。','229','供货商8',10,180,'2026-04-25 16:38:27',65,5,15.9,14.5,7,36,28,17,'每周二、四供货',276),(18,'2026-04-25 08:38:27','SY2026002','压榨葵花籽油 5L','食用油','upload/oil.jpg','2026-03-21','18个月','黑龙江省齐齐哈尔市','5L/桶','葵花籽油味道清淡，适合炒菜和凉拌，家庭使用频率较高。','223','供货商2',4,160,'2026-04-25 16:38:27',152,18,79.9,75.9,28,38,34,11,'每周三统一补货',258),(19,'2026-04-25 08:38:27','SY2026003','玉米胚芽油 5L','食用油','upload/oil.jpg','2026-03-22','18个月','黑龙江省齐齐哈尔市','5L/桶','玉米胚芽油适合多种烹饪方式，包装规格适中，适合家庭长期使用。','224','供货商3',4,150,'2026-04-25 16:38:27',141,16,76.9,72.9,25,39,37,18,'每周三统一补货',249),(20,'2026-04-25 08:38:27','SY2026004','一级大豆油家庭装 10L','食用油','upload/oil.jpg','2026-03-23','18个月','黑龙江省齐齐哈尔市','10L/桶','家庭装一级大豆油容量较大，适合多人家庭或食堂集中采购使用。','225','供货商4',2,120,'2026-04-25 16:38:27',171,19,128,119,33,40,10,5,'每周三统一补货',220),(21,'2026-04-25 08:38:27','SY2026005','东北冷榨亚麻籽油 1L','食用油','upload/oil.jpg','2026-03-24','12个月','黑龙江省齐齐哈尔市','1L/瓶','冷榨亚麻籽油适合凉拌和低温烹调，小规格包装便于家庭尝鲜。','226','供货商5',6,100,'2026-04-25 16:38:27',96,10,45.9,42.9,15,41,13,12,'每周三统一补货',201),(22,'2026-04-25 08:38:27','SY2026006','农家笨榨豆油 2.5L','食用油','upload/oil.jpg','2026-03-24','12个月','齐齐哈尔本地农户直供','2.5L/桶','农家笨榨豆油具有较浓豆香，适合喜欢传统风味的家庭用户。','227','供货商6',5,130,'2026-04-25 16:38:27',137,15,58.9,55.9,21,42,16,19,'每周三统一补货',232),(23,'2026-04-25 08:38:27','SY2026007','花生调和油 5L','食用油','upload/oil.jpg','2026-03-25','18个月','黑龙江省齐齐哈尔市','5L/桶','花生调和油口感香醇，适合炒菜、煎炸等日常厨房场景。','228','供货商7',4,140,'2026-04-25 16:38:27',118,13,82.9,78.9,18,43,19,6,'每周三统一补货',243),(24,'2026-04-25 08:38:27','SY2026008','礼盒装食用油组合','食用油','upload/oil.jpg','2026-03-25','18个月','黑龙江省齐齐哈尔市','2瓶/盒','食用油组合礼盒包装美观，适合节日走访、单位福利和家庭采购。','229','供货商8',3,90,'2026-04-25 16:38:27',145,17,99.9,94.9,26,44,22,13,'每周三统一补货',194),(26,'2026-04-25 08:38:27','MF2026002','雪花粉 10kg','面粉面条','upload/flour.jpg','2026-03-21','12个月','黑龙江省齐齐哈尔市','10kg/袋','雪花粉粉质细腻，适合家庭面食制作和日常主食加工。','223','供货商2',6,180,'2026-04-25 16:38:27',118,11,52.9,49.9,16,46,28,7,'每周一、四供货',286),(27,'2026-04-25 08:38:27','MF2026003','东北挂面 1kg','面粉面条','upload/flour.jpg','2026-03-22','12个月','黑龙江省齐齐哈尔市','1kg/袋','东北挂面筋道爽滑，适合早餐、简餐和家庭常备。','224','供货商3',10,260,'2026-04-25 16:38:27',76,6,12.9,11.9,8,47,31,14,'每周一、四供货',367),(28,'2026-04-25 08:38:27','MF2026004','鸡蛋挂面 1kg','面粉面条','upload/flour.jpg','2026-03-23','12个月','黑龙江省齐齐哈尔市','1kg/袋','鸡蛋挂面口感顺滑，烹煮方便，适合家庭日常快速用餐。','225','供货商4',10,240,'2026-04-25 16:38:27',83,7,14.9,13.5,9,48,34,21,'每周一、四供货',348),(29,'2026-04-25 08:38:27','MF2026005','杂粮面条 1kg','面粉面条','upload/flour.jpg','2026-03-24','12个月','黑龙江省齐齐哈尔市','1kg/袋','杂粮面条由小麦粉搭配杂粮粉加工而成，适合日常饮食搭配。','226','供货商5',10,210,'2026-04-25 16:38:27',91,8,16.9,15.5,10,49,37,8,'每周一、四供货',319),(30,'2026-04-25 08:38:27','MF2026006','饺子粉 5kg','面粉面条','upload/flour.jpg','2026-03-24','12个月','黑龙江省齐齐哈尔市','5kg/袋','饺子粉适合制作饺子皮、馄饨皮等面食，筋性较好，不易破皮。','227','供货商6',8,169,'2026-04-25 16:38:27',100,9,34.9,32.9,12,51,10,15,'每周一、四供货',280),(31,'2026-04-25 08:38:27','MF2026007','全麦面粉 2.5kg','面粉面条','upload/flour.jpg','2026-03-25','12个月','黑龙江省齐齐哈尔市','2.5kg/袋','全麦面粉适合制作全麦馒头、面包和家常面点，适合粗粮搭配。','228','供货商7',10,190,'2026-04-25 16:38:27',74,6,24.9,22.9,8,51,13,22,'每周一、四供货',301),(32,'2026-04-25 08:38:27','MF2026008','家庭面食组合装','面粉面条','upload/flour.jpg','2026-03-25','12个月','黑龙江省齐齐哈尔市','面粉5kg+挂面1kg','家庭面食组合包含面粉和挂面，适合日常家庭采购。','229','供货商8',5,120,'2026-04-25 16:38:27',110,12,45.9,42.9,15,52,16,9,'每周一、四供货',232),(34,'2026-04-25 08:38:27','GH2026002','野生榛蘑 250g','干货山珍','upload/drygoods.jpg','2026-03-21','12个月','黑龙江省齐齐哈尔市','250g/袋','榛蘑香味浓郁，适合炖鸡、炖肉和家庭汤菜。','223','供货商2',8,130,'2026-04-25 16:38:27',118,12,36.9,34.9,16,54,22,23,'每周五集中供货',244),(35,'2026-04-25 08:38:27','GH2026003','黄花菜干 250g','干货山珍','upload/drygoods.jpg','2026-03-22','12个月','黑龙江省齐齐哈尔市','250g/袋','黄花菜干适合煲汤、炒菜和家常炖菜，储存方便。','224','供货商3',10,150,'2026-04-25 16:38:27',87,8,22.9,20.9,10,20,25,10,'每周五集中供货',265),(36,'2026-04-25 08:38:27','GH2026004','东北干豆角 500g','干货山珍','upload/drygoods.jpg','2026-03-23','12个月','黑龙江省齐齐哈尔市','500g/袋','东北干豆角适合炖肉和家常菜，具有地方特色，适合家庭储备。','225','供货商4',10,140,'2026-04-25 16:38:27',79,7,24.9,22.9,9,21,28,17,'每周五集中供货',256),(37,'2026-04-25 08:38:27','GH2026005','山珍干货组合礼盒','干货山珍','upload/drygoods.jpg','2026-03-24','12个月','黑龙江省齐齐哈尔市','4件/盒','山珍干货组合包含木耳、榛蘑、黄花菜等产品，适合节日送礼和家庭采购。','226','供货商5',4,100,'2026-04-25 16:38:27',133,15,88,82,21,22,31,24,'每周五集中供货',217),(38,'2026-04-25 08:38:27','GH2026006','香菇干 250g','干货山珍','upload/drygoods.jpg','2026-03-24','12个月','黑龙江省齐齐哈尔市','250g/袋','香菇干香味浓郁，可用于炖菜、炒菜和煲汤。','227','供货商6',10,170,'2026-04-25 16:38:27',92,9,32.9,30.9,11,23,34,11,'每周五集中供货',288),(39,'2026-04-25 08:38:27','GH2026007','东北粉条 1kg','干货山珍','upload/drygoods.jpg','2026-03-25','12个月','黑龙江省齐齐哈尔市','1kg/袋','东北粉条适合炖菜、火锅和家常菜，口感劲道。','228','供货商7',10,200,'2026-04-25 16:38:27',104,10,19.9,18.5,13,24,37,18,'每周五集中供货',319),(40,'2026-04-25 08:38:27','GH2026008','干货家庭实惠装','干货山珍','upload/drygoods.jpg','2026-03-25','12个月','黑龙江省齐齐哈尔市','3件/组','干货家庭实惠装适合日常做饭搭配，包含木耳、粉条和干豆角。','229','供货商8',5,120,'2026-04-25 16:38:27',86,8,49.9,46.9,12,25,10,5,'每周五集中供货',240),(42,'2026-04-25 08:38:27','DZ2026002','黑豆 1kg','豆制品','upload/beans.jpg','2026-03-21','12个月','黑龙江省齐齐哈尔市','1kg/袋','黑豆适合煮粥、打豆浆和日常粗粮搭配。','223','供货商2',10,180,'2026-04-25 16:38:27',84,7,18.9,17.5,8,27,16,19,'每周二、五供货',302),(43,'2026-04-25 08:38:27','DZ2026003','豆浆豆组合 2kg','豆制品','upload/beans.jpg','2026-03-22','12个月','黑龙江省齐齐哈尔市','2kg/袋','豆浆豆组合包含黄豆、黑豆等多种豆类，适合家庭豆浆机使用。','224','供货商3',10,160,'2026-04-25 16:38:27',102,10,29.9,27.9,13,28,19,6,'每周二、五供货',283),(44,'2026-04-25 08:38:27','DZ2026004','东北腐竹 500g','豆制品','upload/beans.jpg','2026-03-23','12个月','黑龙江省齐齐哈尔市','500g/袋','东北腐竹适合凉拌、火锅和家常炒菜，口感筋道。','225','供货商4',10,140,'2026-04-25 16:38:27',77,6,21.9,19.9,9,29,22,13,'每周二、五供货',264),(45,'2026-04-25 08:38:27','DZ2026005','豆皮干货 500g','豆制品','upload/beans.jpg','2026-03-24','12个月','黑龙江省齐齐哈尔市','500g/袋','豆皮干货可用于凉拌和炖菜，储存方便，适合家庭常备。','226','供货商5',10,150,'2026-04-25 16:38:27',69,6,18.9,17.5,7,30,25,20,'每周二、五供货',275),(46,'2026-04-25 08:38:27','DZ2026006','农家豆制品组合','豆制品','upload/beans.jpg','2026-03-24','12个月','齐齐哈尔本地农户直供','3件/组','农家豆制品组合包含黄豆、腐竹、豆皮等产品，适合家庭采购。','227','供货商6',5,110,'2026-04-25 16:38:27',113,11,48.9,45.9,14,31,28,7,'每周二、五供货',236),(47,'2026-04-25 08:38:27','DZ2026007','绿豆 1kg','豆制品','upload/beans.jpg','2026-03-25','12个月','黑龙江省齐齐哈尔市','1kg/袋','绿豆适合熬汤、煮粥和夏季饮食搭配，是家庭常用豆类产品。','228','供货商7',10,190,'2026-04-25 16:38:27',72,7,16.9,15.5,8,32,31,14,'每周二、五供货',317),(48,'2026-04-25 08:38:27','DZ2026008','红小豆礼袋装 2kg','豆制品','upload/beans.jpg','2026-03-25','12个月','黑龙江省齐齐哈尔市','2kg/袋','红小豆礼袋装适合家庭储备和节日赠送，包装简洁大方。','229','供货商8',8,130,'2026-04-25 16:38:27',81,8,32.9,30.9,9,33,34,21,'每周二、五供货',258),(50,'2026-04-25 08:38:27','LH2026002','五谷杂粮礼盒 4kg','粮油礼盒','upload/gift.jpg','2026-03-21','12个月','黑龙江省齐齐哈尔市','4kg/盒','五谷杂粮礼盒包含多种粗粮，种类丰富，适合健康饮食和节日赠礼。','223','供货商2',4,120,'2026-04-25 16:38:27',178,21,89.9,84.9,32,35,10,15,'节日前集中备货，日常每周三补货',200),(51,'2026-04-25 08:38:27','LH2026003','食用油双瓶礼盒','粮油礼盒','upload/gift.jpg','2026-03-22','18个月','黑龙江省齐齐哈尔市','2瓶/盒','食用油双瓶礼盒适合节日采购和家庭储备，包装美观实用。','224','供货商3',3,90,'2026-04-25 16:38:27',166,19,108,99,29,36,13,22,'节日前集中备货，日常每周三补货',171),(52,'2026-04-25 08:38:27','LH2026004','粮油组合家庭礼盒','粮油礼盒','upload/gift.jpg','2026-03-23','12个月','黑龙江省齐齐哈尔市','大米5kg+食用油5L','粮油组合礼盒包含大米和食用油，适合家庭采购和单位福利发放。','225','供货商4',2,80,'2026-04-25 16:38:27',214,28,149,139,45,37,16,9,'节日前集中备货，日常每周三补货',162),(53,'2026-04-25 08:38:27','LH2026005','地方特产礼盒','粮油礼盒','upload/gift.jpg','2026-03-24','12个月','齐齐哈尔本地农户直供','5件/盒','地方特产礼盒包含杂粮、干货和豆制品等，突出本地农产品特色。','226','供货商5',3,90,'2026-04-25 16:38:27',157,17,129,119,27,38,19,16,'节日前集中备货，日常每周三补货',173),(54,'2026-04-25 08:38:27','LH2026006','家庭主食组合礼盒','粮油礼盒','upload/gift.jpg','2026-03-24','12个月','黑龙江省齐齐哈尔市','大米+面粉+挂面','家庭主食组合礼盒覆盖大米、面粉和挂面，适合一次性采购常用主食。','227','供货商6',3,100,'2026-04-25 16:38:27',142,16,99.9,92.9,24,39,22,23,'节日前集中备货，日常每周三补货',184),(55,'2026-04-25 08:38:27','LH2026007','东北山珍礼盒','粮油礼盒','upload/gift.jpg','2026-03-25','12个月','黑龙江省齐齐哈尔市','4件/盒','东北山珍礼盒包含木耳、榛蘑等干货，适合节日走访和家庭炖菜使用。','228','供货商7',3,75,'2026-04-25 16:38:27',134,14,138,128,22,40,25,10,'节日前集中备货，日常每周三补货',160),(56,'2026-04-25 08:38:27','LH2026008','农户直供精选礼盒','粮油礼盒','upload/gift.jpg','2026-03-25','12个月','齐齐哈尔本地农户直供','6件/盒','农户直供精选礼盒由平台本地供货商联合供货，包含多类粮油农产品。','229','供货商8',2,70,'2026-04-25 16:38:27',188,23,168,158,37,41,28,17,'节日前集中备货，日常每周三补货',156),(58,'2026-04-25 08:38:27','TC2026002','东北酸菜 500g','地方特产','upload/local.jpg','2026-03-21','6个月','黑龙江省齐齐哈尔市','500g/袋','东北酸菜适合炖菜、火锅和家常菜，具有地方特色。','223','供货商2',10,170,'2026-04-25 16:38:27',125,11,9.9,8.9,13,43,34,11,'每周三、六供货',258),(59,'2026-04-25 08:38:27','TC2026003','农家玉米面 2.5kg','地方特产','upload/local.jpg','2026-03-22','12个月','齐齐哈尔本地农户直供','2.5kg/袋','农家玉米面适合制作玉米饼、窝头和粗粮主食。','224','供货商3',10,160,'2026-04-25 16:38:27',96,9,19.9,18.5,10,44,37,18,'每周三、六供货',249),(60,'2026-04-25 08:38:27','TC2026004','东北黏豆包 1kg','地方特产','upload/local.jpg','2026-03-23','冷冻保存6个月','黑龙江省齐齐哈尔市','1kg/袋','东北黏豆包口感软糯，适合蒸食，是东北地区特色食品。','225','供货商4',6,129,'2026-04-25 16:38:27',151,15,29.9,27.9,19,46,10,5,'每周三、六供货',220),(61,'2026-04-25 08:38:27','TC2026005','东北粉皮 500g','地方特产','upload/local.jpg','2026-03-24','12个月','黑龙江省齐齐哈尔市','500g/袋','东北粉皮适合凉拌、炒菜和火锅，口感爽滑。','226','供货商5',10,150,'2026-04-25 16:38:27',78,7,12.9,11.9,8,46,13,12,'每周三、六供货',241),(62,'2026-04-25 08:38:27','TC2026006','农家黄豆酱 500g','地方特产','upload/local.jpg','2026-03-24','12个月','齐齐哈尔本地农户直供','500g/瓶','农家黄豆酱适合蘸食和家常炖菜，具有浓郁东北风味。','227','供货商6',8,110,'2026-04-25 16:38:27',118,12,18.9,17.5,14,47,16,19,'每周三、六供货',202),(63,'2026-04-25 08:38:27','TC2026007','东北玉米糁 2kg','地方特产','upload/local.jpg','2026-03-25','12个月','黑龙江省齐齐哈尔市','2kg/袋','东北玉米糁适合煮粥和制作粗粮饭，颗粒均匀，口感朴实。','228','供货商7',10,190,'2026-04-25 16:38:27',83,8,17.9,16.5,9,48,19,6,'每周三、六供货',283),(64,'2026-04-25 08:38:27','TC2026008','齐齐哈尔地方特产组合','地方特产','upload/local.jpg','2026-03-25','12个月','黑龙江省齐齐哈尔市','4件/组','地方特产组合包含蘸料、酸菜、玉米面和豆酱，适合家庭体验本地风味。','229','供货商8',4,90,'2026-04-25 16:38:27',159,18,69.9,65.9,23,49,22,13,'每周三、六供货',184),(65,'2026-04-26 02:20:05','TEST222001','测试东北长粒香大米 5kg','优质大米','upload/rice.jpg','2026-04-25','12个月','黑龙江省齐齐哈尔市','5kg/袋','该商品为供应商222测试商品，用于测试用户购买、支付、退货流程。商品类别为优质大米，库存充足，支持加入购物车和下单。','222','测试供货商222',10,99,'2026-04-26 10:20:05',39,5,39.9,36.9,8,21,15,10,'每周一、三、五供货',180),(66,'2026-04-26 02:20:05','TEST222002','测试非转基因大豆油 5L','食用油','upload/oil.jpg','2026-04-25','18个月','黑龙江省齐齐哈尔市','5L/桶','该商品为供应商222测试商品，用于测试用户购买、支付、退货流程。商品类别为食用油，适合家庭日常烹饪。','222','测试供货商222',5,80,'2026-04-26 10:20:05',47,6,69.9,65.9,12,26,18,12,'每周三统一补货',150),(67,'2026-04-26 02:20:05','TEST222003','测试五谷杂粮组合 3kg','东北杂粮','upload/grain.jpg','2026-04-25','12个月','黑龙江省齐齐哈尔市','3kg/袋','该商品为供应商222测试商品，用于测试用户购买、支付、退货流程。商品类别为东北杂粮，适合家庭日常粗粮搭配。','222','测试供货商222',8,119,'2026-04-26 10:20:05',42,4,49.9,46.9,10,23,16,9,'每周二、四供货',200);
/*!40000 ALTER TABLE `zhunongshangpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhunongtuopin`
--

DROP TABLE IF EXISTS `zhunongtuopin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zhunongtuopin` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `wenzhangbianhao` varchar(200) DEFAULT NULL COMMENT '文章编号',
  `wenzhangbiaoti` varchar(200) DEFAULT NULL COMMENT '文章标题',
  `wenzhangfenlei` varchar(200) DEFAULT NULL COMMENT '文章分类',
  `wenzhangzhaopian` longtext COMMENT '文章照片',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `wenzhangjianjie` longtext COMMENT '文章简介',
  `wenzhangxiangqing` longtext COMMENT '文章详情',
  `discussnum` int DEFAULT '0' COMMENT '评论数',
  `storeupnum` int DEFAULT '0' COMMENT '收藏数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wenzhangbianhao` (`wenzhangbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb3 COMMENT='助农脱贫';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhunongtuopin`
--

LOCK TABLES `zhunongtuopin` WRITE;
/*!40000 ALTER TABLE `zhunongtuopin` DISABLE KEYS */;
INSERT INTO `zhunongtuopin` VALUES (61,'2026-03-20 09:32:48','1111111111','文章标题1','文章分类1','upload/zhunongtuopin_wenzhangzhaopian1.jpg,upload/zhunongtuopin_wenzhangzhaopian2.jpg,upload/zhunongtuopin_wenzhangzhaopian3.jpg','2026-03-20','文章简介1','文章详情1',1,1),(62,'2026-03-20 09:32:48','2222222222','文章标题2','文章分类2','upload/zhunongtuopin_wenzhangzhaopian2.jpg,upload/zhunongtuopin_wenzhangzhaopian3.jpg,upload/zhunongtuopin_wenzhangzhaopian4.jpg','2026-03-20','文章简介2','文章详情2',0,2),(63,'2026-03-20 09:32:48','3333333333','文章标题3','文章分类3','upload/zhunongtuopin_wenzhangzhaopian3.jpg,upload/zhunongtuopin_wenzhangzhaopian4.jpg,upload/zhunongtuopin_wenzhangzhaopian5.jpg','2026-03-20','文章简介3','文章详情3',0,3),(64,'2026-03-20 09:32:48','4444444444','文章标题4','文章分类4','upload/zhunongtuopin_wenzhangzhaopian4.jpg,upload/zhunongtuopin_wenzhangzhaopian5.jpg,upload/zhunongtuopin_wenzhangzhaopian6.jpg','2026-03-20','文章简介4','文章详情4',0,4),(65,'2026-03-20 09:32:48','5555555555','文章标题5','文章分类5','upload/zhunongtuopin_wenzhangzhaopian5.jpg,upload/zhunongtuopin_wenzhangzhaopian6.jpg,upload/zhunongtuopin_wenzhangzhaopian7.jpg','2026-03-20','文章简介5','文章详情5',0,5),(66,'2026-03-20 09:32:48','6666666666','文章标题6','文章分类6','upload/zhunongtuopin_wenzhangzhaopian6.jpg,upload/zhunongtuopin_wenzhangzhaopian7.jpg,upload/zhunongtuopin_wenzhangzhaopian8.jpg','2026-03-20','文章简介6','文章详情6',0,6),(67,'2026-03-20 09:32:48','7777777777','文章标题7','文章分类7','upload/zhunongtuopin_wenzhangzhaopian7.jpg,upload/zhunongtuopin_wenzhangzhaopian8.jpg,upload/zhunongtuopin_wenzhangzhaopian9.jpg','2026-03-20','文章简介7','文章详情7',0,7),(68,'2026-03-20 09:32:48','8888888888','文章标题8','文章分类8','upload/zhunongtuopin_wenzhangzhaopian8.jpg,upload/zhunongtuopin_wenzhangzhaopian9.jpg,upload/zhunongtuopin_wenzhangzhaopian10.jpg','2026-03-20','文章简介8','文章详情8',0,8),(69,'2026-03-20 09:40:18','1707385204709','文章xx','文章分类x','upload/1707385213644.jpg','2026-03-20','详细内容可自行编辑566565','<p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p><p>操作者可以在输入框输入&nbsp;&nbsp;详情信息&nbsp;&nbsp;等内容。</p>',1,1);
/*!40000 ALTER TABLE `zhunongtuopin` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-26 12:47:32
