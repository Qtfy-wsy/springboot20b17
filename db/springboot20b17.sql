-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboot20b17
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `springboot20b17`
--

/*!40000 DROP DATABASE IF EXISTS `springboot20b17`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboot20b17` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboot20b17`;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1650869795590 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2022-04-25 06:45:55',11,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2022-04-25 06:45:55',12,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2022-04-25 06:45:55',13,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2022-04-25 06:45:55',14,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2022-04-25 06:45:55',15,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2022-04-25 06:45:55',16,'宇宙银河系月球1号','月某','13823888886','是'),(1650869795589,'2022-04-25 06:56:35',1650869508965,'人民北路5号','王强','13823877774','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1650869891016 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussshangpinxinxi`
--

DROP TABLE IF EXISTS `discussshangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1650869973178 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussshangpinxinxi`
--

LOCK TABLES `discussshangpinxinxi` WRITE;
/*!40000 ALTER TABLE `discussshangpinxinxi` DISABLE KEYS */;
INSERT INTO `discussshangpinxinxi` VALUES (101,'2022-04-25 06:45:55',1,1,'用户名1','评论内容1','回复内容1'),(102,'2022-04-25 06:45:55',2,2,'用户名2','评论内容2','回复内容2'),(103,'2022-04-25 06:45:55',3,3,'用户名3','评论内容3','回复内容3'),(104,'2022-04-25 06:45:55',4,4,'用户名4','评论内容4','回复内容4'),(105,'2022-04-25 06:45:55',5,5,'用户名5','评论内容5','回复内容5'),(106,'2022-04-25 06:45:55',6,6,'用户名6','评论内容6','回复内容6'),(1650869973177,'2022-04-25 06:59:32',1650869657897,1650869508965,'001','好',NULL);
/*!40000 ALTER TABLE `discussshangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `maijia`
--

DROP TABLE IF EXISTS `maijia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `maijia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `maijiazhanghao` varchar(200) NOT NULL COMMENT '卖家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `maijiaxingming` varchar(200) NOT NULL COMMENT '卖家姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzhenghao` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jf` float DEFAULT '0' COMMENT '积分',
  `money` float DEFAULT '0' COMMENT '余额',
  `vip` varchar(200) DEFAULT '否' COMMENT '是否会员',
  PRIMARY KEY (`id`),
  UNIQUE KEY `maijiazhanghao` (`maijiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1650869574792 DEFAULT CHARSET=utf8 COMMENT='卖家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `maijia`
--

LOCK TABLES `maijia` WRITE;
/*!40000 ALTER TABLE `maijia` DISABLE KEYS */;
INSERT INTO `maijia` VALUES (21,'2022-04-25 06:45:55','卖家账号1','123456','卖家姓名1','upload/maijia_touxiang1.jpg','男','13823888881','440300199101010001',10000,100,'否'),(22,'2022-04-25 06:45:55','卖家账号2','123456','卖家姓名2','upload/maijia_touxiang2.jpg','男','13823888882','440300199202020002',10000,100,'否'),(23,'2022-04-25 06:45:55','卖家账号3','123456','卖家姓名3','upload/maijia_touxiang3.jpg','男','13823888883','440300199303030003',10000,100,'否'),(24,'2022-04-25 06:45:55','卖家账号4','123456','卖家姓名4','upload/maijia_touxiang4.jpg','男','13823888884','440300199404040004',10000,100,'否'),(25,'2022-04-25 06:45:55','卖家账号5','123456','卖家姓名5','upload/maijia_touxiang5.jpg','男','13823888885','440300199505050005',10000,100,'否'),(26,'2022-04-25 06:45:55','卖家账号6','123456','卖家姓名6','upload/maijia_touxiang6.jpg','男','13823888886','440300199606060006',10000,100,'否'),(1650869574791,'2022-04-25 06:52:54','002','123456','张三','upload/1650869588864.jpg','男','13823899996','441456199002031456',0,0,'否');
/*!40000 ALTER TABLE `maijia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  `logistics` longtext COMMENT '物流',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '商户名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1650869910404 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1650869910403,'2022-04-25 06:58:29','202242514582949805692','shangpinxinxi',1650869508965,1650869657897,'二手电脑','upload/1650869600999.webp',1,1430,1430,1430,1430,1,'已完成','人民北路5号','13823877774','王强','<p>发货后输入物流信息</p>','002');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinfenlei`
--

DROP TABLE IF EXISTS `shangpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1650869682459 DEFAULT CHARSET=utf8 COMMENT='商品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinfenlei`
--

LOCK TABLES `shangpinfenlei` WRITE;
/*!40000 ALTER TABLE `shangpinfenlei` DISABLE KEYS */;
INSERT INTO `shangpinfenlei` VALUES (31,'2022-04-25 06:45:55','商品分类1'),(32,'2022-04-25 06:45:55','商品分类2'),(33,'2022-04-25 06:45:55','商品分类3'),(34,'2022-04-25 06:45:55','商品分类4'),(35,'2022-04-25 06:45:55','商品分类5'),(36,'2022-04-25 06:45:55','商品分类6'),(1650869682458,'2022-04-25 06:54:41','电子产品');
/*!40000 ALTER TABLE `shangpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `chengse` varchar(200) DEFAULT NULL COMMENT '成色',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `jf` int(11) DEFAULT '-1' COMMENT '积分',
  `price` float DEFAULT NULL COMMENT '价格',
  `vipprice` float DEFAULT '-1' COMMENT '会员价',
  `onelimittimes` int(11) DEFAULT '-1' COMMENT '单限',
  `alllimittimes` int(11) DEFAULT '-1' COMMENT '库存',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1650869657898 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (41,'2022-04-25 06:45:55','商品名称1','upload/shangpinxinxi_tupian1.jpg','商品分类1','成色1','品牌1','规格1','商品详情1','卖家账号1','联系电话1','2022-04-25 15:00:03',3,10000,99.9,1,1,98),(42,'2022-04-25 06:45:55','商品名称2','upload/shangpinxinxi_tupian2.jpg','商品分类2','成色2','品牌2','规格2','商品详情2','卖家账号2','联系电话2','2022-04-25 14:59:40',5,10000,99.9,2,2,99),(43,'2022-04-25 06:45:55','商品名称3','upload/shangpinxinxi_tupian3.jpg','商品分类3','成色3','品牌3','规格3','商品详情3','卖家账号3','联系电话3','2022-04-25 14:45:55',3,10000,99.9,3,3,99),(44,'2022-04-25 06:45:55','商品名称4','upload/shangpinxinxi_tupian4.jpg','商品分类4','成色4','品牌4','规格4','商品详情4','卖家账号4','联系电话4','2022-04-25 14:45:55',4,10000,99.9,4,4,99),(45,'2022-04-25 06:45:55','商品名称5','upload/shangpinxinxi_tupian5.jpg','商品分类5','成色5','品牌5','规格5','商品详情5','卖家账号5','联系电话5','2022-04-25 14:45:55',5,10000,99.9,5,5,99),(46,'2022-04-25 06:45:55','商品名称6','upload/shangpinxinxi_tupian6.jpg','商品分类6','成色6','品牌6','规格6','商品详情6','卖家账号6','联系电话6','2022-04-25 14:45:55',6,10000,99.9,6,6,99),(1650869657897,'2022-04-25 06:54:17','二手电脑','upload/1650869600999.webp','商品分类2','七成新','华为','14寸','<p>输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息</p><p><img src=\"http://localhost:8080/springboot20b17/upload/1650869654100.webp\"></p><p>输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息输入商品详情信息</p>','002','13823899996','2022-04-25 14:59:35',11,15000,1500,1430,1,0);
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,21,'卖家账号1','maijia','卖家','15eco4yjqfpfwfajlm2cg8tpg4s5aoap','2022-04-25 06:48:14','2022-04-25 07:48:15'),(2,1,'abo','users','管理员','uky2wz9cmrtnepojh4uuxg7nzecogybc','2022-04-25 06:48:35','2022-04-25 07:54:30'),(3,1650869574791,'002','maijia','卖家','1yh7n1yw0gu7c0xl0cj419fecwqkns8i','2022-04-25 06:52:59','2022-04-25 07:58:41'),(4,1650869508965,'001','yonghu','用户','xsrc40etiwfkuvazdvypy9xkyle08joi','2022-04-25 06:55:49','2022-04-25 07:59:10');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-04-25 06:45:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yijianhuishou`
--

DROP TABLE IF EXISTS `yijianhuishou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yijianhuishou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `chengse` varchar(200) DEFAULT NULL COMMENT '成色',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `huishoujia` float DEFAULT NULL COMMENT '回收价',
  `huishoushijian` datetime DEFAULT NULL COMMENT '回收时间',
  `maijiazhanghao` varchar(200) DEFAULT NULL COMMENT '卖家账号',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1650869721079 DEFAULT CHARSET=utf8 COMMENT='一键回收';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yijianhuishou`
--

LOCK TABLES `yijianhuishou` WRITE;
/*!40000 ALTER TABLE `yijianhuishou` DISABLE KEYS */;
INSERT INTO `yijianhuishou` VALUES (51,'2022-04-25 06:45:55','商品名称1','成色1','品牌1','规格1',1,'2022-04-25 14:45:55','卖家账号1','备注1','是','','未支付'),(52,'2022-04-25 06:45:55','商品名称2','成色2','品牌2','规格2',2,'2022-04-25 14:45:55','卖家账号2','备注2','是','','未支付'),(53,'2022-04-25 06:45:55','商品名称3','成色3','品牌3','规格3',3,'2022-04-25 14:45:55','卖家账号3','备注3','是','','未支付'),(54,'2022-04-25 06:45:55','商品名称4','成色4','品牌4','规格4',4,'2022-04-25 14:45:55','卖家账号4','备注4','是','','未支付'),(55,'2022-04-25 06:45:55','商品名称5','成色5','品牌5','规格5',5,'2022-04-25 14:45:55','卖家账号5','备注5','是','','未支付'),(56,'2022-04-25 06:45:55','商品名称6','成色6','品牌6','规格6',6,'2022-04-25 14:45:55','卖家账号6','备注6','是','','未支付'),(1650869721078,'2022-04-25 06:55:20','二手电脑','七成新','华为','14寸',1000,'2022-04-25 14:55:14','002','','否','不同意回收','未支付');
/*!40000 ALTER TABLE `yijianhuishou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `jf` float DEFAULT '0' COMMENT '积分',
  `money` float DEFAULT '0' COMMENT '余额',
  `vip` varchar(200) DEFAULT '否' COMMENT '是否会员',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1650869508966 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-04-25 06:45:55','用户账号1','123456','用户姓名1','upload/yonghu_touxiang1.jpg','男','13823888881','773890001@qq.com','是','',10000,100,'否'),(12,'2022-04-25 06:45:55','用户账号2','123456','用户姓名2','upload/yonghu_touxiang2.jpg','男','13823888882','773890002@qq.com','是','',10000,100,'否'),(13,'2022-04-25 06:45:55','用户账号3','123456','用户姓名3','upload/yonghu_touxiang3.jpg','男','13823888883','773890003@qq.com','是','',10000,100,'否'),(14,'2022-04-25 06:45:55','用户账号4','123456','用户姓名4','upload/yonghu_touxiang4.jpg','男','13823888884','773890004@qq.com','是','',10000,100,'否'),(15,'2022-04-25 06:45:55','用户账号5','123456','用户姓名5','upload/yonghu_touxiang5.jpg','男','13823888885','773890005@qq.com','是','',10000,100,'否'),(16,'2022-04-25 06:45:55','用户账号6','123456','用户姓名6','upload/yonghu_touxiang6.jpg','男','13823888886','773890006@qq.com','是','',10000,100,'否'),(1650869508965,'2022-04-25 06:51:48','001','123456','王强','upload/1650869758539.jpg','男','13823877774','','是','同意注册',1430,570,'是');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-30 16:01:34
