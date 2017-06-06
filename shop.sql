-- MySQL dump 10.16  Distrib 10.1.21-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: localhost
-- ------------------------------------------------------
-- Server version	10.1.21-MariaDB

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
-- Table structure for table `eop_app`
--

DROP TABLE IF EXISTS `eop_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eop_app` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(50) DEFAULT NULL,
  `app_name` varchar(50) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `descript` longtext,
  `deployment` int(11) DEFAULT '1',
  `path` varchar(255) DEFAULT NULL,
  `authorizationcode` varchar(50) DEFAULT NULL,
  `installuri` varchar(255) DEFAULT NULL,
  `deleteflag` int(11) DEFAULT '0',
  `version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eop_app`
--

LOCK TABLES `eop_app` WRITE;
/*!40000 ALTER TABLE `eop_app` DISABLE KEYS */;
INSERT INTO `eop_app` VALUES (1,'base','base应用',NULL,'base应用',0,'/core',NULL,NULL,0,'2.2.0'),(2,'cms','cms应用',NULL,'cms应用',0,'/cms',NULL,NULL,0,'2.2.0'),(3,'shop','shop应用',NULL,'shop应用',0,'/shop',NULL,NULL,0,'2.2.0');
/*!40000 ALTER TABLE `eop_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eop_ask`
--

DROP TABLE IF EXISTS `eop_ask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eop_ask` (
  `askid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `dateline` int(11) DEFAULT NULL,
  `isreply` smallint(1) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `siteid` int(11) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `sitename` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`askid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eop_ask`
--

LOCK TABLES `eop_ask` WRITE;
/*!40000 ALTER TABLE `eop_ask` DISABLE KEYS */;
/*!40000 ALTER TABLE `eop_ask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eop_data_log`
--

DROP TABLE IF EXISTS `eop_data_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eop_data_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `url` varchar(255) DEFAULT NULL,
  `pics` longtext,
  `sitename` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `logtype` varchar(50) DEFAULT NULL,
  `optype` varchar(50) DEFAULT NULL,
  `dateline` int(11) DEFAULT NULL,
  `userid` bigint(20) DEFAULT NULL,
  `siteid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eop_data_log`
--

LOCK TABLES `eop_data_log` WRITE;
/*!40000 ALTER TABLE `eop_data_log` DISABLE KEYS */;
INSERT INTO `eop_data_log` VALUES (1,'商品名:夏季圆领短袖T恤男<br>描述:<ul class=\"attributes-list\" style=\"margin: 0px; padding: 0px 15px; list-style: none; clear: both; color: rgb(0, 0, 0); font-family: tahoma, arial, &quot;Hiragino Sans GB&quot;, 宋体, sans-serif;\">\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"常规\">\n		<div class=\"attributes\" id=\"attributes\" style=\"margin-bottom: 10px; padding: 10px; border-bottom: 1px solid rgb(238, 238, 238);\">\n			<ul class=\"attributes-list\" style=\"margin: 0px; padding: 0px 15px; list-style: none; clear: both;\">\n				<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; line-height: 24px; text-overflow: ellipsis;\" title=\"常规\">\n					薄:&nbsp;常规</li>\n				<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; line-height: 24px; text-overflow: ellipsis;\" title=\"时尚潮牌\">\n					品牌类型:&nbsp;时尚潮牌</li>\n				<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; line-height: 24px; text-overflow: ellipsis;\" title=\"棉95% 聚氨酯弹性纤维(氨纶)5%\">\n					材质成分:&nbsp;棉95% 聚氨酯弹性纤维(氨纶)5%</li>\n				<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; line-height: 24px; text-overflow: ellipsis;\" title=\"短袖\">\n					袖长:&nbsp;短袖</li>\n				<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; line-height: 24px; text-overflow: ellipsis;\" title=\"MD-720\">\n					货号:&nbsp;MD-720</li>\n				<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; line-height: 24px; text-overflow: ellipsis;\" title=\"圆领\">\n					领型:&nbsp;圆领</li>\n				<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; line-height: 24px; text-overflow: ellipsis;\" title=\"白色 卡其色 灰色 浅蓝色 浅绿色\">\n					颜色:&nbsp;白色 卡其色 灰色 浅蓝色 浅绿色</li>\n				<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; line-height: 24px; text-overflow: ellipsis;\" title=\"4XL M L XL 2XL 3XL\">\n					尺码:&nbsp;4XL M L XL 2XL 3XL</li>\n				<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; line-height: 24px; text-overflow: ellipsis;\" title=\"南宝奇\">\n					品牌:&nbsp;南宝奇</li>\n				<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; line-height: 24px; text-overflow: ellipsis;\" title=\"常规\">\n					袖型:&nbsp;常规</li>\n				<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; line-height: 24px; text-overflow: ellipsis;\" title=\"修身\">\n					版型:&nbsp;修身</li>\n				<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; line-height: 24px; text-overflow: ellipsis;\" title=\"夏季\">\n					适用季节:&nbsp;夏季</li>\n				<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; line-height: 24px; text-overflow: ellipsis;\" title=\"2017年\">\n					上市时间:&nbsp;2017年</li>\n				<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; line-height: 24px; text-overflow: ellipsis;\" title=\"日常\">\n					适用场景:&nbsp;日常</li>\n				<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; line-height: 24px; text-overflow: ellipsis;\" title=\"青年\">\n					适用对象:&nbsp;青年</li>\n				<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; line-height: 24px; text-overflow: ellipsis;\" title=\"青春流行\">\n					基础风格:&nbsp;青春流行</li>\n				<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; line-height: 24px; text-overflow: ellipsis;\" title=\"潮\">\n					细分风格:&nbsp;潮</li>\n			</ul>\n		</div>\n		<div class=\"tb-official-remind\" style=\"width: 730px; margin: auto; padding: 20px 0px;\">\n			<div class=\"hd\" style=\"height: 30px; padding-left: 10px; font-size: 16px; background: rgb(235, 20, 65);\">\n				<img class=\"logo\" src=\"https://img.alicdn.com/tps/TB1BjBpOVXXXXXCaXXXXXXXXXXX-78-22.png\" srcset=\"//img.alicdn.com/tps/TB1wGBEOVXXXXavXFXXXXXXXXXX-156-44.png\" style=\"border-width: 0px 1px 0px 0px; border-top-style: initial; border-right-style: solid; border-bottom-style: initial; border-left-style: initial; border-top-color: initial; border-right-color: rgb(0, 0, 0); border-bottom-color: initial; border-left-color: initial; border-image: initial; vertical-align: middle; display: inline-block; height: 22px; margin-right: 5px; padding-right: 10px;\" title=\"服务承诺\" />&nbsp;<span style=\"display: inline-block; vertical-align: middle; line-height: 30px;\">专享服务承诺</span></div>\n			<div class=\"bd\" style=\"position: relative; background: rgb(246, 246, 246); overflow: hidden;\">\n				<ul style=\"margin: 0px; padding: 0px; list-style: none;\">\n					<li style=\"margin: 0px; padding: 20px 0px; display: inline; float: left; width: 364px; height: 105px; border-right: 1px solid rgb(232, 230, 230); border-bottom: 1px solid rgb(232, 230, 230);\">\n						<div class=\"icon-wrap\" style=\"float: left; width: 85px; min-height: 1px; padding-top: 5px; text-align: center;\">\n							<img class=\"icon\" src=\"https://img.alicdn.com/tps/TB17DgYOFXXXXbmXXXXXXXXXXXX-48-48.png\" srcset=\"//img.alicdn.com/tps/TB1DwclOFXXXXawapXXXXXXXXXX-96-96.png\" style=\"border: 0px; vertical-align: middle; display: inline-block; width: 48px; height: 48px;\" /></div>\n						<dl style=\"margin: 0px 40px 0px 0px; padding: 0px; color: rgb(51, 51, 51); overflow: hidden;\">\n							<dt style=\"margin: 0px; padding: 0px; font-size: 15px;\">\n								全国包邮</dt>\n							<dd style=\"margin: 0px; padding: 0px; line-height: 25px;\">\n								卖家承担从卖家处发货到您收货地址处的大陆非偏远地区首次发货的运费。</dd>\n						</dl>\n					</li>\n					<li class=\"even\" style=\"margin: 0px; padding: 20px 0px; display: inline; float: left; width: 364px; height: 105px; border-right: 0px none; border-bottom: 1px solid rgb(232, 230, 230);\">\n						<div class=\"icon-wrap\" style=\"float: left; width: 85px; min-height: 1px; padding-top: 5px; text-align: center;\">\n							<img class=\"icon\" src=\"https://img.alicdn.com/tps/TB1jhB5OVXXXXX1XpXXXXXXXXXX-48-48.png\" srcset=\"//img.alicdn.com/tps/TB1K4XKOVXXXXbhXVXXXXXXXXXX-96-96.png\" style=\"border: 0px; vertical-align: middle; display: inline-block; width: 48px; height: 48px;\" /></div>\n						<dl style=\"margin: 0px 40px 0px 0px; padding: 0px; color: rgb(51, 51, 51); overflow: hidden;\">\n							<dt style=\"margin: 0px; padding: 0px; font-size: 15px;\">\n								退货运费险</dt>\n							<dd style=\"margin: 0px; padding: 0px; line-height: 25px;\">\n								卖家承诺提供退货运费险，在交易成功前，消费者发起退货请求，保险公司对退货产生的单程运费提供保险服务。</dd>\n						</dl>\n					</li>\n					<li style=\"margin: 0px; padding: 20px 0px; display: inline; float: left; width: 364px; height: 105px; border-right: 1px solid rgb(232, 230, 230); border-bottom: 1px solid rgb(232, 230, 230);\">\n						<div class=\"icon-wrap\" style=\"float: left; width: 85px; min-height: 1px; padding-top: 5px; text-align: center;\">\n							<img class=\"icon\" src=\"https://img.alicdn.com/tps/TB1sS3DOFXXXXcUXFXXXXXXXXXX-48-48.png\" srcset=\"//img.alicdn.com/tps/TB1hVZoOFXXXXXmapXXXXXXXXXX-96-96.png\" style=\"border: 0px; vertical-align: middle; display: inline-block; width: 48px; height: 48px;\" /></div>\n						<dl style=\"margin: 0px 40px 0px 0px; padding: 0px; color: rgb(51, 51, 51); overflow: hidden;\">\n							<dt style=\"margin: 0px; padding: 0px; font-size: 15px;\">\n								48小时发货</dt>\n							<dd style=\"margin: 0px; padding: 0px; line-height: 25px;\">\n								卖家承诺在您付款后的48小时内完成发货，以快递公司系统内揽件记录的时间为准（定制、预售、大家电、家具等特殊类目除外）。</dd>\n						</dl>\n					</li>\n					<li class=\"even\" style=\"margin: 0px; padding: 20px 0px; display: inline; float: left; width: 364px; height: 105px; border-right: 0px none; border-bottom: 1px solid rgb(232, 230, 230);\">\n						<div class=\"icon-wrap\" style=\"float: left; width: 85px; min-height: 1px; padding-top: 5px; text-align: center;\">\n							<img class=\"icon\" src=\"https://img.alicdn.com/tps/TB1jy3COFXXXXXsXVXXXXXXXXXX-48-48.png\" srcset=\"//img.alicdn.com/tps/TB1jHZuOFXXXXXgaXXXXXXXXXXX-96-96.png\" style=\"border: 0px; vertical-align: middle; display: inline-block; width: 48px; height: 48px;\" /></div>\n						<dl style=\"margin: 0px 40px 0px 0px; padding: 0px; color: rgb(51, 51, 51); overflow: hidden;\">\n							<dt style=\"margin: 0px; padding: 0px; font-size: 15px;\">\n								质无忧</dt>\n							<dd style=\"margin: 0px; padding: 0px; line-height: 25px;\">\n								商家承诺所售商品如因&ldquo;不喜欢/不想要/不适合&rdquo;或质量问题发生退货退款，可向交易诚信记录良好的消费者提供闪电退货和极速退款服务。</dd>\n						</dl>\n					</li>\n					<li style=\"margin: 0px; padding: 20px 0px; display: inline; float: left; width: 364px; height: 105px; border-right: 1px solid rgb(232, 230, 230); border-bottom: 1px solid rgb(232, 230, 230);\">\n						<div class=\"icon-wrap\" style=\"float: left; width: 85px; min-height: 1px; padding-top: 5px; text-align: center;\">\n							<img class=\"icon\" src=\"https://img.alicdn.com/tps/TB1evsgOFXXXXchapXXXXXXXXXX-48-48.png\" srcset=\"//img.alicdn.com/tps/TB18ZIGOFXXXXb_XFXXXXXXXXXX-96-96.png\" style=\"border: 0px; vertical-align: middle; display: inline-block; width: 48px; height: 48px;\" /></div>\n						<dl style=\"margin: 0px 40px 0px 0px; padding: 0px; color: rgb(51, 51, 51); overflow: hidden;\">\n							<dt style=\"margin: 0px; padding: 0px; font-size: 15px;\">\n								十五天无理由退货</dt>\n							<dd style=\"margin: 0px; padding: 0px; line-height: 25px;\">\n								卖家承诺提供15天无理由退货服务，即您签收货物后15天内，在不影响商家的二次销售的情况下，可以无条件申请退货的服务。</dd>\n						</dl>\n					</li>\n				</ul>\n			</div>\n		</div>\n		<div class=\"tad-stage\" data-spm=\"4\" id=\"tad_second_area\">\n			&nbsp;</div>\n		<div class=\"J_DetailSection tshop-psm ke-post\" id=\"description\" style=\"clear: both; margin-bottom: 20px; font-stretch: normal; font-size: 14px; line-height: 1.5; font-family: tahoma, arial, 宋体, sans-serif; background-image: initial !important; background-position: initial !important; background-size: initial !important; background-repeat: initial !important; background-attachment: initial !important; background-origin: initial !important; background-clip: initial !important;\">\n			<div class=\"content\" id=\"J_DivItemDesc\" style=\"width: 750px; padding: 10px 0px 0px; overflow: hidden; word-wrap: break-word; position: relative !important;\">\n				<p style=\"margin: 1.12em 0px; padding: 0px; text-align: center;\">\n					<img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i4/79400578/TB2xKgYtiRnpuFjSZFCXXX2DXXa_!!79400578.jpg\" style=\"border: 0px; vertical-align: top; max-width: 750px;\" /><img align=\"absmiddle\" src=\"https://img.alicdn.com/imgextra/i3/79400578/TB2W5ZdtbBnpuFjSZFGXXX51pXa_!!79400578.jpg\" style=\"border: 0px; vertical-align: top; max-width: 750px;\" /></p>\n			</div>\n		</div>\n	</li>\n</ul>\n','/goods-20.html','http://static.enationsoft.com/attachment/moonbasa/goods/201005191637571691_thumbnail.jpg|http://static.enationsoft.com/attachment/moonbasa/goods/201005191637571691.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191637574335_thumbnail.jpg|http://static.enationsoft.com/attachment/moonbasa/goods/201005191637574335.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191637577658_thumbnail.jpg|http://static.enationsoft.com/attachment/moonbasa/goods/201005191637577658.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191637578637_thumbnail.jpg|http://static.enationsoft.com/attachment/moonbasa/goods/201005191637578637.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191637576315_thumbnail.jpg|http://static.enationsoft.com/attachment/moonbasa/goods/201005191637576315.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191637582947_thumbnail.jpg|http://static.enationsoft.com/attachment/moonbasa/goods/201005191637582947.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191637588742_thumbnail.jpg|http://static.enationsoft.com/attachment/moonbasa/goods/201005191637588742.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191637582140_thumbnail.jpg|http://static.enationsoft.com/attachment/moonbasa/goods/201005191637582140.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191637587795_thumbnail.jpg|http://static.enationsoft.com/attachment/moonbasa/goods/201005191637587795.jpg','shop新建站点','localhost','商品','修改',1496493442,1,1),(2,'商品名:夏季圆领短袖T恤男<br>描述:<p>\n	<img src=\"https://img.alicdn.com/imgextra/i4/79400578/TB2xKgYtiRnpuFjSZFCXXX2DXXa_!!79400578.jpg\" /></p>\n<ul class=\"attributes-list\" style=\"margin: 0px; padding: 0px 15px; list-style: none; clear: both; color: rgb(0, 0, 0); font-family: tahoma, arial, &quot;Hiragino Sans GB&quot;, 宋体, sans-serif;\">\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"常规\">\n		厚薄:&nbsp;常规</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"时尚潮牌\">\n		品牌类型:&nbsp;时尚潮牌</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"棉95% 聚氨酯弹性纤维(氨纶)5%\">\n		材质成分:&nbsp;棉95% 聚氨酯弹性纤维(氨纶)5%</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"短袖\">\n		袖长:&nbsp;短袖</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"MD-720\">\n		货号:&nbsp;MD-720</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"圆领\">\n		领型:&nbsp;圆领</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"白色 卡其色 灰色 浅蓝色 浅绿色\">\n		颜色:&nbsp;白色 卡其色 灰色 浅蓝色 浅绿色</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"4XL M L XL 2XL 3XL\">\n		尺码:&nbsp;4XL M L XL 2XL 3XL</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"南宝奇\">\n		品牌:&nbsp;南宝奇</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"常规\">\n		袖型:&nbsp;常规</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"修身\">\n		版型:&nbsp;修身</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"夏季\">\n		适用季节:&nbsp;夏季</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"2017年\">\n		上市时间:&nbsp;2017年</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"日常\">\n		适用场景:&nbsp;日常</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"青年\">\n		适用对象:&nbsp;青年</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"青春流行\">\n		基础风格:&nbsp;青春流行</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"潮\">\n		细分风格:&nbsp;潮</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"潮\">\n		&nbsp;</li>\n</ul>\n','/goods-20.html','http://static.enationsoft.com/attachment/moonbasa/goods/201005191637571691_thumbnail.jpg|http://static.enationsoft.com/attachment/moonbasa/goods/201005191637571691.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191637574335_thumbnail.jpg|http://static.enationsoft.com/attachment/moonbasa/goods/201005191637574335.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191637577658_thumbnail.jpg|http://static.enationsoft.com/attachment/moonbasa/goods/201005191637577658.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191637578637_thumbnail.jpg|http://static.enationsoft.com/attachment/moonbasa/goods/201005191637578637.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191637576315_thumbnail.jpg|http://static.enationsoft.com/attachment/moonbasa/goods/201005191637576315.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191637582947_thumbnail.jpg|http://static.enationsoft.com/attachment/moonbasa/goods/201005191637582947.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191637588742_thumbnail.jpg|http://static.enationsoft.com/attachment/moonbasa/goods/201005191637588742.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191637582140_thumbnail.jpg|http://static.enationsoft.com/attachment/moonbasa/goods/201005191637582140.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191637587795_thumbnail.jpg|http://static.enationsoft.com/attachment/moonbasa/goods/201005191637587795.jpg','shop新建站点','localhost','商品','修改',1496493524,1,1),(3,'商品名:贵妇人贴身小内裤<br>描述:<p>\n	&nbsp;</p>\n<p>\n	<li class=\"detail\">\n		&nbsp;\n		<dl>\n			<dt>\n				<b>蝴蝶结绣花设计 无限妩媚风情</b></dt>\n		</dl>\n		<dl>\n			<dt>\n				高雅大方的设计,上面有精美的电脑绣花,腰间是以丝带打的二个蝴蝶结,更添妩媚风情</dt>\n		</dl>\n		<dl>\n			<dt>\n				颜 色:黑色</dt>\n			<dt>\n				尺 码:均码</dt>\n			<dt>\n				面 料:氨纶15% 锦纶85%</dt>\n		</dl>\n	</li>\n</p>','/goods-17.html','http://static.enationsoft.com/attachment/moonbasa/goods/201005171741463075_thumbnail.jpg|http://static.enationsoft.com/attachment/moonbasa/goods/201005171741463075.jpg','shop新建站点','localhost','商品','修改',1496494241,1,1),(4,'商品名:Apple/苹果 iPhone 7 Plus 手机苹果7p iphone7 七代港版国行现货<br>描述:<ul class=\"attributes-list\" style=\"margin: 0px; padding: 0px 15px; list-style: none; clear: both; color: rgb(0, 0, 0); font-family: tahoma, arial, &quot;Hiragino Sans GB&quot;, 宋体, sans-serif;\">\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"2016011606893750\">\n		CCC证书编号:&nbsp;<a href=\"https://baike.taobao.com/view.htm?wd=2016011606893750&amp;ac=29\" style=\"text-decoration: none; color: rgb(51, 102, 204); outline: 0px;\" target=\"blank\">2016011606893750</a></li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"Apple/苹果 iPhone 7 Plus\">\n		产品名称:&nbsp;Apple/苹果 iPhone 7 Plus</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"Apple/苹果\">\n		CPU品牌:&nbsp;Apple/苹果</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"2016-09\">\n		上市时间:&nbsp;2016-09</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"iPhone 7 Plus\">\n		产品名称:&nbsp;iPhone 7 Plus</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"5.5英寸\">\n		屏幕尺寸:&nbsp;5.5英寸</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"7.3mm\">\n		机身厚度:&nbsp;7.3mm</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"2910mAh\">\n		电池容量:&nbsp;2910mAh</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"Apple/苹果\">\n		品牌:&nbsp;Apple/苹果</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"iPhone 7 Plus\">\n		Apple型号:&nbsp;iPhone 7 Plus</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"4G全网通\">\n		网络类型:&nbsp;4G全网通</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		款式:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"亮黑色【现货】 玫瑰金色【现货】 金色【现货】 银色【现货】 黑色【现货】 大红色特别版【现货已到】\">\n		机身颜色:&nbsp;亮黑色【现货】 玫瑰金色【现货】 金色【现货】 银色【现货】 黑色【现货】 大红色特别版【现货已到】</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"官方标配 套餐一\">\n		套餐类型:&nbsp;官方标配 套餐一</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"1200 万像素广角及长焦双镜头摄像头\">\n		后置摄像头:&nbsp;1200 万像素广角及长焦双镜头摄像头</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"iOS 10\">\n		操作系统:&nbsp;iOS 10</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		附加功能:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"全新\">\n		宝贝成色:&nbsp;全新</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"店铺三包\">\n		售后服务:&nbsp;店铺三包</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		触摸屏类型:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		运行内存RAM:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"32GB 128GB 256GB\">\n		存储容量:&nbsp;32GB 128GB 256GB</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		键盘类型:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"1920 x 1080 像素分辨率，401 ppi\">\n		分辨率:&nbsp;1920 x 1080 像素分辨率，401 ppi</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		手机类型:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		电池类型:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"1200 万像素广角及长焦双镜头摄像头\">\n		摄像头类型:&nbsp;1200 万像素广角及长焦双镜头摄像头</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		视频显示格式:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"蜂窝网络和无线连接\">\n		网络模式:&nbsp;蜂窝网络和无线连接</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		核心数:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"港澳台 美国 亚太 中国大陆\">\n		版本类型:&nbsp;港澳台 美国 亚太 中国大陆</li>\n</ul>\n','/goods-17.html','http://static.enationsoft.com/attachment/moonbasa/goods/201005171741463075_thumbnail.jpg|http://static.enationsoft.com/attachment/moonbasa/goods/201005171741463075.jpg','shop新建站点','localhost','商品','修改',1496494376,1,1),(5,'商品名:Apple/苹果 iPhone 7 Plus 手机苹果7p iphone7 七代港版国行现货<br>描述:<ul class=\"attributes-list\" hiragino=\"\" sans=\"\" style=\"margin: 0px; padding: 0px 15px; list-style: none; clear: both; color: rgb(0, 0, 0); font-family: tahoma, arial, \">\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"2016011606893750\">\n		CCC证书编号:&nbsp;<a href=\"https://baike.taobao.com/view.htm?wd=2016011606893750&amp;ac=29\" style=\"text-decoration: none; color: rgb(51, 102, 204); outline: 0px;\" target=\"blank\">2016011606893750</a></li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"Apple/苹果 iPhone 7 Plus\">\n		产品名称:&nbsp;Apple/苹果 iPhone 7 Plus</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"Apple/苹果\">\n		CPU品牌:&nbsp;Apple/苹果</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"2016-09\">\n		上市时间:&nbsp;2016-09</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"iPhone 7 Plus\">\n		产品名称:&nbsp;iPhone 7 Plus</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"5.5英寸\">\n		屏幕尺寸:&nbsp;5.5英寸</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"7.3mm\">\n		机身厚度:&nbsp;7.3mm</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"2910mAh\">\n		电池容量:&nbsp;2910mAh</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"Apple/苹果\">\n		品牌:&nbsp;Apple/苹果</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"iPhone 7 Plus\">\n		Apple型号:&nbsp;iPhone 7 Plus</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"4G全网通\">\n		网络类型:&nbsp;4G全网通</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		款式:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"亮黑色【现货】 玫瑰金色【现货】 金色【现货】 银色【现货】 黑色【现货】 大红色特别版【现货已到】\">\n		机身颜色:&nbsp;亮黑色【现货】 玫瑰金色【现货】 金色【现货】 银色【现货】 黑色【现货】 大红色特别版【现货已到】</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"官方标配 套餐一\">\n		套餐类型:&nbsp;官方标配 套餐一</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"1200 万像素广角及长焦双镜头摄像头\">\n		后置摄像头:&nbsp;1200 万像素广角及长焦双镜头摄像头</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"iOS 10\">\n		操作系统:&nbsp;iOS 10</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		附加功能:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"全新\">\n		宝贝成色:&nbsp;全新</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"店铺三包\">\n		售后服务:&nbsp;店铺三包</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		触摸屏类型:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		运行内存RAM:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"32GB 128GB 256GB\">\n		存储容量:&nbsp;32GB 128GB 256GB</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		键盘类型:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"1920 x 1080 像素分辨率，401 ppi\">\n		分辨率:&nbsp;1920 x 1080 像素分辨率，401 ppi</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		手机类型:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		电池类型:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"1200 万像素广角及长焦双镜头摄像头\">\n		摄像头类型:&nbsp;1200 万像素广角及长焦双镜头摄像头</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		视频显示格式:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"蜂窝网络和无线连接\">\n		网络模式:&nbsp;蜂窝网络和无线连接</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		核心数:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"港澳台 美国 亚太 中国大陆\">\n		版本类型:&nbsp;港澳台 美国 亚太 中国大陆</li>\n</ul>\n','/goods-17.html','http://static.enationsoft.com/attachment/moonbasa/goods/201005171741463075_thumbnail.jpg|http://static.enationsoft.com/attachment/moonbasa/goods/201005171741463075.jpg','shop新建站点','localhost','商品','修改',1496494394,1,1),(6,'商品名:Apple/苹果 iPhone 7 Plus 手机苹果7p iphone7 七代港版国行现货<br>描述:<ul class=\"attributes-list\" hiragino=\"\" sans=\"\" style=\"margin: 0px; padding: 0px 15px; list-style: none; clear: both; color: rgb(0, 0, 0); font-family: tahoma, arial, \">\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"2016011606893750\">\n		CCC证书编号:&nbsp;<a href=\"https://baike.taobao.com/view.htm?wd=2016011606893750&amp;ac=29\" style=\"text-decoration: none; color: rgb(51, 102, 204); outline: 0px;\" target=\"blank\">2016011606893750</a></li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"Apple/苹果 iPhone 7 Plus\">\n		产品名称:&nbsp;Apple/苹果 iPhone 7 Plus</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"Apple/苹果\">\n		CPU品牌:&nbsp;Apple/苹果</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"2016-09\">\n		上市时间:&nbsp;2016-09</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"iPhone 7 Plus\">\n		产品名称:&nbsp;iPhone 7 Plus</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"5.5英寸\">\n		屏幕尺寸:&nbsp;5.5英寸</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"7.3mm\">\n		机身厚度:&nbsp;7.3mm</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"2910mAh\">\n		电池容量:&nbsp;2910mAh</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"Apple/苹果\">\n		品牌:&nbsp;Apple/苹果</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"iPhone 7 Plus\">\n		Apple型号:&nbsp;iPhone 7 Plus</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"4G全网通\">\n		网络类型:&nbsp;4G全网通</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		款式:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"亮黑色【现货】 玫瑰金色【现货】 金色【现货】 银色【现货】 黑色【现货】 大红色特别版【现货已到】\">\n		机身颜色:&nbsp;亮黑色【现货】 玫瑰金色【现货】 金色【现货】 银色【现货】 黑色【现货】 大红色特别版【现货已到】</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"官方标配 套餐一\">\n		套餐类型:&nbsp;官方标配 套餐一</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"1200 万像素广角及长焦双镜头摄像头\">\n		后置摄像头:&nbsp;1200 万像素广角及长焦双镜头摄像头</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"iOS 10\">\n		操作系统:&nbsp;iOS 10</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		附加功能:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"全新\">\n		宝贝成色:&nbsp;全新</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"店铺三包\">\n		售后服务:&nbsp;店铺三包</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		触摸屏类型:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		运行内存RAM:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"32GB 128GB 256GB\">\n		存储容量:&nbsp;32GB 128GB 256GB</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		键盘类型:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"1920 x 1080 像素分辨率，401 ppi\">\n		分辨率:&nbsp;1920 x 1080 像素分辨率，401 ppi</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		手机类型:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		电池类型:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"1200 万像素广角及长焦双镜头摄像头\">\n		摄像头类型:&nbsp;1200 万像素广角及长焦双镜头摄像头</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		视频显示格式:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"蜂窝网络和无线连接\">\n		网络模式:&nbsp;蜂窝网络和无线连接</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		核心数:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"港澳台 美国 亚太 中国大陆\">\n		版本类型:&nbsp;港澳台 美国 亚太 中国大陆</li>\n</ul>\n','/goods-17.html','fs:/attachment/goods/201706032054043290_thumbnail.jpg|fs:/attachment/goods/201706032054043290.jpg,fs:/attachment/goods/201706032054347998_thumbnail.jpg|fs:/attachment/goods/201706032054347998.jpg','shop新建站点','localhost','商品','修改',1496494479,1,1);
/*!40000 ALTER TABLE `eop_data_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eop_reply`
--

DROP TABLE IF EXISTS `eop_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eop_reply` (
  `replyid` int(11) NOT NULL AUTO_INCREMENT,
  `askid` int(11) DEFAULT NULL,
  `content` longtext,
  `username` varchar(255) DEFAULT NULL,
  `dateline` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`replyid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eop_reply`
--

LOCK TABLES `eop_reply` WRITE;
/*!40000 ALTER TABLE `eop_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `eop_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eop_site`
--

DROP TABLE IF EXISTS `eop_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eop_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `sitename` varchar(255) DEFAULT NULL,
  `productid` varchar(50) DEFAULT NULL,
  `descript` longtext,
  `icofile` varchar(255) DEFAULT NULL,
  `logofile` varchar(255) DEFAULT NULL,
  `deleteflag` int(11) DEFAULT '0',
  `keywords` varchar(255) DEFAULT NULL,
  `themepath` varchar(50) DEFAULT NULL,
  `adminthemeid` int(11) DEFAULT NULL,
  `themeid` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT '0',
  `createtime` bigint(20) DEFAULT NULL,
  `lastlogin` bigint(20) DEFAULT NULL,
  `lastgetpoint` bigint(20) DEFAULT NULL,
  `logincount` int(11) DEFAULT NULL,
  `bkloginpicfile` varchar(255) DEFAULT NULL,
  `bklogofile` varchar(255) DEFAULT NULL,
  `sumpoint` bigint(20) DEFAULT '0',
  `sumaccess` bigint(20) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `usersex` int(11) DEFAULT NULL,
  `usertel` varchar(50) DEFAULT NULL,
  `usermobile` varchar(50) DEFAULT NULL,
  `usertel1` varchar(50) DEFAULT NULL,
  `useremail` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT '1',
  `qqlist` varchar(255) DEFAULT '122332368;584763691',
  `msnlist` varchar(255) DEFAULT NULL,
  `wwlist` varchar(255) DEFAULT NULL,
  `tellist` varchar(255) DEFAULT NULL,
  `worktime` varchar(255) DEFAULT '9:00~18:00',
  `siteon` int(11) DEFAULT '0',
  `closereson` varchar(255) DEFAULT NULL,
  `copyright` varchar(1000) DEFAULT 'Copyright &copy; 2017-2017',
  `icp` varchar(255) DEFAULT 'SAU 10000',
  `address` varchar(255) DEFAULT 'Shenyang',
  `zipcode` varchar(50) DEFAULT '000000',
  `qq` int(11) DEFAULT '1',
  `msn` int(11) DEFAULT '0',
  `ww` int(11) DEFAULT '0',
  `tel` int(11) DEFAULT '0',
  `wt` int(11) DEFAULT '1',
  `linkman` varchar(255) DEFAULT 'Mr.Z',
  `linktel` varchar(255) DEFAULT '024-12345678',
  `email` varchar(255) DEFAULT 'zyq@qq.com',
  `multi_site` smallint(1) DEFAULT '0',
  `relid` varchar(255) DEFAULT NULL,
  `sitestate` smallint(1) DEFAULT '0',
  `isimported` smallint(1) DEFAULT '0',
  `imptype` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eop_site`
--

LOCK TABLES `eop_site` WRITE;
/*!40000 ALTER TABLE `eop_site` DISABLE KEYS */;
INSERT INTO `eop_site` VALUES (1,1,'SAU Shop','shop','','http://localhost:8080/statics/images/default/favicon.ico','http://localhost:8080/statics/images/default/logo.gif',0,'','default',1,1,1000,0,0,0,0,NULL,NULL,0,0,'SAU Shop','admin',1,'010-12345678','13888888888','','youmail@domain.com',1,'122332368;584763691','','','','9:00~18:00',0,'','Copyright &copy; 2017-2017','SAU 10000','Shenyang','000000',1,0,0,0,1,'Mr.Z','024-12345678','zyq@qq.com',0,NULL,0,0,0);
/*!40000 ALTER TABLE `eop_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eop_sitedomain`
--

DROP TABLE IF EXISTS `eop_sitedomain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eop_sitedomain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(255) DEFAULT NULL,
  `domaintype` int(11) DEFAULT '0',
  `siteid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eop_sitedomain`
--

LOCK TABLES `eop_sitedomain` WRITE;
/*!40000 ALTER TABLE `eop_sitedomain` DISABLE KEYS */;
INSERT INTO `eop_sitedomain` VALUES (1,'localhost',0,1,1,0);
/*!40000 ALTER TABLE `eop_sitedomain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eop_user`
--

DROP TABLE IF EXISTS `eop_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eop_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `companyname` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `legalrepresentative` varchar(50) DEFAULT NULL,
  `linkman` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `logofile` varchar(255) DEFAULT NULL,
  `licensefile` varchar(255) DEFAULT NULL,
  `defaultsiteid` int(11) DEFAULT NULL,
  `deleteflag` int(11) DEFAULT '0',
  `usertype` int(11) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eop_user`
--

LOCK TABLES `eop_user` WRITE;
/*!40000 ALTER TABLE `eop_user` DISABLE KEYS */;
INSERT INTO `eop_user` VALUES (1,'admin','单机版用户','21232f297a57a5a743894ae4a801fc3','在这里输入详细地址',NULL,'在这里输入联系人信息','010-12345678','13888888888','youmail@domain.com',NULL,NULL,NULL,0,1,NULL);
/*!40000 ALTER TABLE `eop_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eop_userdetail`
--

DROP TABLE IF EXISTS `eop_userdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eop_userdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `bussinessscope` longtext,
  `regaddress` varchar(255) DEFAULT NULL,
  `regdate` bigint(20) DEFAULT NULL,
  `corpscope` int(11) DEFAULT '0',
  `corpdescript` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eop_userdetail`
--

LOCK TABLES `eop_userdetail` WRITE;
/*!40000 ALTER TABLE `eop_userdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `eop_userdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_access`
--

DROP TABLE IF EXISTS `es_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `page` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `access_time` int(11) DEFAULT NULL,
  `stay_time` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `membername` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_access`
--

LOCK TABLES `es_access` WRITE;
/*!40000 ALTER TABLE `es_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_adcolumn`
--

DROP TABLE IF EXISTS `es_adcolumn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_adcolumn` (
  `acid` bigint(20) NOT NULL AUTO_INCREMENT,
  `cname` varchar(255) DEFAULT NULL,
  `width` varchar(50) DEFAULT NULL,
  `height` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `anumber` bigint(20) DEFAULT NULL,
  `atype` int(11) DEFAULT NULL,
  `arule` bigint(20) DEFAULT NULL,
  `disabled` varchar(50) DEFAULT 'false',
  PRIMARY KEY (`acid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_adcolumn`
--

LOCK TABLES `es_adcolumn` WRITE;
/*!40000 ALTER TABLE `es_adcolumn` DISABLE KEYS */;
INSERT INTO `es_adcolumn` VALUES (1,'顶部Banner','337','74',NULL,NULL,1,NULL,'false'),(2,'JQuery广告','670','414',NULL,NULL,0,NULL,'false'),(3,'单幅广告','165','145',NULL,NULL,0,NULL,'false'),(4,'单幅广告_文胸','650px','308px',NULL,NULL,0,NULL,'false'),(5,'单幅广告_精品推荐','678px','308px',NULL,NULL,0,NULL,'false'),(6,'中间','812px','150px',NULL,NULL,0,NULL,'false');
/*!40000 ALTER TABLE `es_adcolumn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_admintheme`
--

DROP TABLE IF EXISTS `es_admintheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_admintheme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(50) DEFAULT NULL,
  `siteid` int(11) DEFAULT NULL,
  `themename` varchar(50) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `version` varchar(50) DEFAULT NULL,
  `framemode` int(11) DEFAULT '0',
  `deleteflag` int(11) DEFAULT '0',
  `thumb` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_admintheme`
--

LOCK TABLES `es_admintheme` WRITE;
/*!40000 ALTER TABLE `es_admintheme` DISABLE KEYS */;
INSERT INTO `es_admintheme` VALUES (1,NULL,NULL,'默认模板','default',NULL,'enation','1.0',0,0,'preview.png');
/*!40000 ALTER TABLE `es_admintheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_adminuser`
--

DROP TABLE IF EXISTS `es_adminuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_adminuser` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `userno` varchar(255) DEFAULT NULL,
  `userdept` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `dateline` int(11) DEFAULT NULL,
  `founder` smallint(1) DEFAULT NULL,
  `siteid` int(11) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_adminuser`
--

LOCK TABLES `es_adminuser` WRITE;
/*!40000 ALTER TABLE `es_adminuser` DISABLE KEYS */;
INSERT INTO `es_adminuser` VALUES (1,'admin','21232f297a57a5a743894ae4a801fc3',1,NULL,NULL,NULL,NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `es_adminuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_adv`
--

DROP TABLE IF EXISTS `es_adv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_adv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT,
  `acid` bigint(20) DEFAULT NULL,
  `atype` int(11) DEFAULT NULL,
  `begintime` bigint(20) DEFAULT NULL,
  `endtime` bigint(20) DEFAULT NULL,
  `isclose` int(11) DEFAULT NULL,
  `attachment` varchar(50) DEFAULT NULL,
  `atturl` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `aname` varchar(255) DEFAULT NULL,
  `clickcount` int(11) DEFAULT '0',
  `linkman` varchar(50) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `disabled` varchar(50) DEFAULT 'false',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_adv`
--

LOCK TABLES `es_adv` WRITE;
/*!40000 ALTER TABLE `es_adv` DISABLE KEYS */;
INSERT INTO `es_adv` VALUES (1,1,NULL,1272643200000,1433001600000,0,NULL,'http://static.enationsoft.com/attachment/moonbasa/adv/201005141622516071.swf','','顶部Banner',0,'','','','false'),(2,2,NULL,1272643200000,1433001600000,0,NULL,'http://static.enationsoft.com/attachment/moonbasa/adv/201005141628107681.jpg','../goods-6.html','闪光玻璃纱性感文胸',1,'','','','false'),(3,2,NULL,1272643200000,1433001600000,0,NULL,'http://static.enationsoft.com/attachment/moonbasa/adv/201005141631051623.jpg','../goods-18.html','柔美针织开衫',1,'','','','false'),(4,2,NULL,1272643200000,1433001600000,0,NULL,'http://static.enationsoft.com/attachment/moonbasa/adv/201005141631449567.jpg','../goods-19.html','大热性感女鞋系列',1,'','','','false'),(5,2,NULL,1272643200000,1433001600000,0,NULL,'http://static.enationsoft.com/attachment/moonbasa/adv/201005141632589345.jpg','../goods-20.html','莫代尔弹力花边吊带',1,'','','','false'),(6,2,NULL,1272643200000,1433001600000,0,NULL,'http://static.enationsoft.com/attachment/moonbasa/adv/201005141633314816.jpg','../goods-19.html','精美富贵花中跟凉拖',0,'','','','false'),(7,3,NULL,1272643200000,1433001600000,0,NULL,'http://static.enationsoft.com/attachment/moonbasa/adv/201005171054221976.jpg','../article-22.html','aaaaa',0,'','','','false'),(8,4,NULL,1272643200000,1433001600000,0,NULL,'fs:/attachment/adv/201108301454260289.gif','../search-cat-8.html','文胸系列广告图片',1,'','','','false'),(9,5,NULL,1272643200000,1433001600000,0,NULL,'http://static.enationsoft.com/attachment/moonbasa/adv/201005181120152889.gif','','13',0,'','','','false'),(10,6,NULL,1272643200000,1433001600000,0,NULL,'fs:/attachment/adv/201108301450117944.jpg','../goods-6.html','中间',1,'','','','false'),(11,6,NULL,1313424000000,1629043200000,0,NULL,'fs:/attachment/adv/201108301450436259.jpg','../index.html','中间',1,'','','','false'),(12,6,NULL,1313424000000,1629043200000,0,NULL,'fs:/attachment/adv/201108301451031337.jpg','../index.html','中间',0,'','','','false'),(13,6,NULL,1313424000000,1629043200000,0,NULL,'fs:/attachment/adv/201108301451201786.jpg','../index.html','中间',1,'','','','false');
/*!40000 ALTER TABLE `es_adv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_advance_logs`
--

DROP TABLE IF EXISTS `es_advance_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_advance_logs` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` mediumint(8) unsigned NOT NULL,
  `money` decimal(20,3) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `mtime` bigint(8) unsigned NOT NULL,
  `payment_id` varchar(20) DEFAULT NULL,
  `order_id` varchar(20) DEFAULT NULL,
  `paymethod` varchar(100) DEFAULT NULL,
  `memo` varchar(100) DEFAULT NULL,
  `import_money` decimal(20,3) NOT NULL DEFAULT '0.000',
  `explode_money` decimal(20,3) NOT NULL DEFAULT '0.000',
  `member_advance` decimal(20,3) NOT NULL DEFAULT '0.000',
  `shop_advance` decimal(20,3) NOT NULL DEFAULT '0.000',
  `disabled` enum('true','false') NOT NULL DEFAULT 'false',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_advance_logs`
--

LOCK TABLES `es_advance_logs` WRITE;
/*!40000 ALTER TABLE `es_advance_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_advance_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_agent`
--

DROP TABLE IF EXISTS `es_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_agent` (
  `agentid` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `sex` smallint(6) DEFAULT '0' COMMENT '0女1男',
  `zip` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `qq` varchar(50) DEFAULT NULL,
  `ww` varchar(50) DEFAULT NULL,
  `msn` varchar(50) DEFAULT NULL,
  `id_card` varchar(50) DEFAULT NULL,
  `bank_account` varchar(50) DEFAULT NULL,
  `bank_username` varchar(50) DEFAULT NULL,
  `bank_name` varchar(50) DEFAULT NULL,
  `bank_city` varchar(50) DEFAULT NULL,
  `shop_url` varchar(50) DEFAULT NULL,
  `state` smallint(6) DEFAULT '0' COMMENT '0未通过审核\n            1.通过审核',
  `dateline` int(11) DEFAULT NULL,
  PRIMARY KEY (`agentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_agent`
--

LOCK TABLES `es_agent` WRITE;
/*!40000 ALTER TABLE `es_agent` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_agent_transfer`
--

DROP TABLE IF EXISTS `es_agent_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_agent_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memberid` int(11) DEFAULT NULL,
  `price` decimal(20,3) DEFAULT NULL,
  `is_transfer` smallint(1) DEFAULT NULL COMMENT '0未转\n            1已转',
  `blank_account` varchar(50) DEFAULT NULL,
  `blank_username` varchar(50) DEFAULT NULL,
  `blank_name` varchar(50) DEFAULT NULL,
  `blank_city` varchar(50) DEFAULT NULL,
  `apply_time` int(11) DEFAULT NULL,
  `transfer_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_agent_transfer`
--

LOCK TABLES `es_agent_transfer` WRITE;
/*!40000 ALTER TABLE `es_agent_transfer` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_agent_transfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_article`
--

DROP TABLE IF EXISTS `es_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_article` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `create_time` bigint(20) DEFAULT NULL,
  `cat_id` mediumint(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_article`
--

LOCK TABLES `es_article` WRITE;
/*!40000 ALTER TABLE `es_article` DISABLE KEYS */;
INSERT INTO `es_article` VALUES (1,'顾客必读','<div class=\"pageWrap\">  <h4>如何订购商品？</h4> 您可以首先浏览我们的网站了解商品。看到您满意的商品您可以直接在我们的网站上实现订购。您也可以和我们网站的客服人员联系订购。 <h4>我通过网站看到你们的商品后觉得不错，但是我不是经常上网，你可以寄一些商品的图片和介绍给我吗？</h4> 答：我们的网站会不定期地为会员发送商品信息资料的电子邮件。如果您目前还没有成为我们的会员，您可以直接在我们的网站上注册，非常方便。 <h4>请告诉我在这里购物的理由好吗？</h4> <ol> <li>我们是一家拥有长期经营零售业务经验的网站；</li> <li>我们将给您带来优质的商品及更优惠的价格；</li> <li>多种付款方式以及快速的全国配送；</li> <li>人性化的退换货事宜；</li> <li>体贴入微的会员积分计划；</li> <li>所有产品为原厂正规包装；</li> </ol> <h4>你们的商品我都非常喜欢，已经购买了很多，但是有些怎么一直没货？会不会订不到？</h4> 由于网站顾客购买量比较大，商品随时可能断货，您可以通过网站上的“到货通知”按钮预定商品或直接联系我们的网站客服进行预约订购。 <h4>所有的产品都能够在网站上购买?</h4> 答：目前网站查找的都是可以订购的，但是必须是仓库中有库存的产品我们才可以与您确认。部分热销产品也可以通过我们的网站做一个预约，等到货品到后，我们会立即通过电话或者电子邮件的方式通知您来订购。 <h4>为什么要注册会员？</h4> <ol> <li>只有注册用户才可以在网上进行订购，享受优惠的价格。</li> <li>只有注册用户才可以登录\"会员中心\"，使用更多的会员购物功能,管理自己的资料。</li> <li>只有注册用户才可以在网上给其他注册的朋友留言。</li> <li>只有注册用户才有可能获取我们赠送的礼品。</li> </ol> <h4>忘记了密码怎么办？</h4> 为了保护客户利益，我们无法看到您的密码。当您忘记密码时，请登录注册页面，点击\"忘记密码\"，系统会自动将您的密码通过email告诉您，您可以登录\"会员中心\"去更改密码，以确保您的利益。 <h4>积分是怎么回事？有什么作用？</h4> 积分的高低只反映您对我们的关注和支持程度。我们的积分是通过订购商品产生的。对于高积分的客户我们会有一定的奖励，如积分兑换商品、积分抵扣价格、赠送商品,更优惠的价格购买商品等，以此回馈广大顾客。 </div>',1270540058647,3),(2,'会员等级折扣','<div class=\"pageWrap\">  我们的会员等级系统是动态的，按照会员积分的多少划分不同的等级，等级越高享受的商品折扣越大。 针对会员的促销活动和优惠政策会运用到每一个优惠活动中。如：“捆绑销售”、“积分换购”等等。 </div>',1270540058647,3),(3,'订单的几种状态','<div class=\"pageWrap\"><table cellspacing=\"2\" cellpadding=\"0\" border=\"0\" class=\"liststyle data\">    <col class=\"span-4 ColColorGray\" /> <col class=\"span-6\" /> <col class=\"span-6\" /> <col />    <thead>        <tr>            <th>状态名称</th>            <th>状态释义</th>            <th>定义</th>            <th>反馈信息</th>        </tr>    </thead>    <tbody>        <tr>            <th>确认</th>            <td>未确认</td>            <td>未审核确认订单</td>            <td>&nbsp;</td>        </tr>        <tr>            <th>已确认</th>            <td>货到付款订单已经审核确认</td>            <td>为您发送订单已确认信件</td>            <td>&nbsp;</td>        </tr>        <tr>            <th>付款</th>            <td>&nbsp;</td>            <td>&nbsp;</td>            <td>&nbsp;</td>        </tr>        <tr>            <th>部分付款</th>            <td>只收到部分订单货款</td>            <td>为您发送订单收款信件</td>            <td>&nbsp;</td>        </tr>        <tr>            <th>已付款</th>            <td>货款全部收到</td>            <td>为您发送订单收款信件</td>            <td>&nbsp;</td>        </tr>        <tr>            <th>取消</th>            <td>客户要求取消</td>            <td>客户自行取消的订单</td>            <td>为您发送订单取消信件</td>        </tr>        <tr>            <th>超送货范围取消</th>            <td>超出送货范围的订单</td>            <td>为您发送订单取消信件</td>            <td>&nbsp;</td>        </tr>        <tr>            <th>重复订单取消</th>            <td>同一日重复定购同样商品的订单</td>            <td>为您发送订单取消信件</td>            <td>&nbsp;</td>        </tr>        <tr>            <th>地址不详取消</th>            <td>客户所留地址不够详细，或只留信箱，无法上门送货的订单</td>            <td>为您发送订单取消信件</td>            <td>&nbsp;</td>        </tr>        <tr>            <th>货款逾期未收到</th>            <td>自订单日期后7日内仍然没有收到全部货款</td>            <td>为您发送订单取消信件</td>            <td>&nbsp;</td>        </tr>        <tr>            <th>货款不足取消</th>            <td>部分到款后7日内余款未付</td>            <td>为您发送订单取消信件</td>            <td>&nbsp;</td>        </tr>        <tr>            <th>发货</th>            <td>部分发货</td>            <td>由于订单中部分商品缺货，先将有库存的商品发货</td>            <td>&nbsp;为您发送全部发货信件</td>        </tr>        <tr>            <th>已发货</th>            <td>全部发货</td>            <td>为您发送部分发货信件</td>            <td>&nbsp;</td>        </tr>        <tr>            <th>退款</th>            <td>&nbsp;</td>            <td>&nbsp;</td>            <td>&nbsp;</td>        </tr>        <tr>            <th>部分退款</th>            <td>退回您的部分购物款项</td>            <td>&nbsp;</td>            <td>&nbsp;</td>        </tr>        <tr>            <th>全额退款</th>            <td>退回您的全部购物款项</td>            <td>&nbsp;</td>            <td>&nbsp;</td>        </tr>        <tr>            <th>退货</th>            <td>部分退货</td>            <td>收到了您退回订单中的部分商品</td>            <td>&nbsp;</td>        </tr>        <tr>            <th>全部退货</th>            <td>收到了您退回订单中的全部商品</td>            <td>&nbsp;</td>            <td>&nbsp;</td>        </tr>        <tr>            <th>归档</th>            <td>已归档</td>            <td>订单已经全部处理结束，归档保存</td>            <td>&nbsp;</td>        </tr>    </tbody></table></div>',1270540058647,3),(4,'积分奖励计划','<div class=\"pageWrap\"> <h4>积分增加</h4> 按照订单中商品金额或者商品可得积分，订单状态为已发货后可获得相应的积分 。 <h4>积分查询</h4> 会员可进入会员中心－会员信息中查看自己的积分情况。 <h4>积分有效期</h4> 积分长期有效。除非本网站取消积分奖励计划。如果取消积分奖励计划我们会提前通知广大用户。 <h4>积分说明</h4> 本积分奖励计划由本网站制定并保留所有的解释权和修改权。修改以网站公布为准，不做另行通知。 </div>',1270540058647,3),(5,'商品退货保障','<div class=\"pageWrap\"> <h4> 符合以下条件，可以要求换货 </h4> <ol> <li>客户在收到货物时当面在送货员面前拆包检查，发现货物有质量问题的；</li> <li>实际收到货物与网站上描述的有很大的出入的。</li> </ol> <strong>换货流程</strong>：客户当面要求送货人员退回货物，然后与我们联系。我们会为您重新发货，货物到达时间顺延。 <h4>符合以下条件，可以要求退货</h4> <ol> <li>客户收到货物后两天之内，发现商品有明显的制造缺陷的；</li> <li>货物经过一次换货但仍然存在质量问题的；</li> <li>由于人为原因造成超过我们承诺到货之日5天还没收到货物的。</li> </ol> <strong>退货流程：</strong>客户在收到货物后两天内与我们联系，我们会在三个工作日内通过银行汇款把您的货款退回。 <h4>在以下情况我们有权拒绝客户的退换货要求</h4> <ol> <li>货物出现破损，但没有在收货时当场要求送货人员换货的；</li> <li>超过退换货期限的退换货要求；</li> <li>退换货物不全或者外观受损 ；</li> <li>客户发货单据丢失或者不全；</li> <li>产品并非我们提供；</li> <li>货物本身不存在质量问题的 。</li> </ol> </div>',1270540058647,3),(6,'非会员购物通道','<div class=\"pageWrap\">  <ol> <li>我们提供非会员购物功能，在购物车下一步的时候，进入非会员购物通道即可使用此功能。</li> <li>但是由于非会员无法享受购物积分、无法查询订单等，所以我们建议您花一分钟时间注册成为会员，这样就能享受整个网站强大的会员功能和多种优惠措施。</li></ol> </div>',1270540058647,4),(7,'体贴的售后服务','<div class=\"pageWrap\">本网站所售产品均实行三包政策，请顾客保存好有效凭证，以确保我们为您更好服务。本公司的客户除享受国家规定“三包”。您可以更放心地在这里购物。<br><br> <h3> 保修细则 </h3> <h4>一、在本网站购买的商品，自购买日起(以到货登记为准)7日内出现性能故障，您可以选择退货、换货或修理。</h4> <ol> <li>在接到您的产品后，我公司将问题商品送厂商特约维修中心检测； </li> <li>检测报出来后，如非人为损坏的，是产品本身质量问题，我公司会及时按您的要求予以退款、换可或维修。 </li> <li>如果检测结果是无故障或是人为因素造成的故障，我公司会及时通知您，并咨询您的处理意见。 </li></ol> <h4>二、在本公司购买的商品，自购日起(以到货登记为准)15日内出现性能故障，您可以选择换货或修理。(享受15天退换货无需理由的商品，按《15天退换货无需理由细则》办理)</h4> <ol> <li>在接到您的产品后，我公司将问题商品送厂商特约维修中心检测； </li> <li>检测报出来后，如非人为损坏的，是产品本身质量问题，我公司会及时按您的要求予以退款、换可或维修。 </li> <li>如果检测结果是无故障或是人为因素造成的故障，我公司会及时通知您，并咨询您的处理意见。</li> </ol> <h4>三、在本公司购买的商品，自购日起(以到货登记为准)一年之内出现非人为损坏的质量问题，本公司承诺免费保修。</h4> <ol> <li>在接到您的产品后，我公司将问题商品送厂商特约维修中心检测； </li> <li>检测报出来后，如非人为损坏的，是产品本身质量问题，我公司会及时按您的要求予以退款、换可或维修。 </li> <li>如果检测结果是无故障或是人为因素造成的故障，我公司会及时通知您，并咨询您的处理意见。 </li> </ol> <h3>收费维修：</h3> <h4>一、对于人为造成的故障，本公司将采取收费维修，包括：</h4> <ol> <li>产品内部被私自拆开或其中任何部分被更替； </li> <li>商品里面的条码不清楚，无法成功判断； </li> <li>有入水、碎裂、损毁或有腐蚀等现象； </li> <li>过了保修期的商品。</li> </ol> <h4>二、符合以下条件，可以要求换货：</h4> <ol> <li>客户在收到货物时当面在送货员面前拆包检查，发现货物有质量问题的 </li> <li>实际收到货物与网站上描述的有很大的出入的 </li> <li>换货流程：客户当面要求送货人员退回货物，然后与我们联系。我们会在一个工作日内为您重新发货，货物到达时间顺延。</li> </ol> <h4>三、符合以下条件，可以要求退货：</h4> 客户收到货物后两天之内， <ol> <li>发现商品有明显的制造缺陷的 </li> <li>货物经过一次换货但仍然存在质量问题的 </li> <li>由于人为原因造成超过我们承诺到货之日三天还没收到货物的</li> </ol> 退货流程：客户在收到货物后两天内与我们联系，我们会在两个工作日内通过银行汇款把您的货款退回。 <h4>在以下情况我们有权拒绝客户的退换货要求：</h4> <ol> <li>货物出现破损，但没有在收货时当场要求送货人员换货的 </li> <li>超过退换货期限的退换货要求 </li> <li>退换货物不全或者外观受损 </li> <li>客户发货单据丢失或者不全 </li> <li>产品并非我们提供 </li> <li>货物本身不存在质量问题的</li> </ol> </div>',1270540058647,4),(8,'网站使用条款','<div class=\"pageWrap\"> 如果您在本网站访问或购物，您便接受了以下条件。 <h4>版权</h4> 本网站上的所有内容诸如文字、图表、标识、按钮图标、图像、声音文件片段、数字下载、数据编辑和软件都是本网站提供者的财产，受中国和国际版权法的保护。本网站上所有内容的汇编是本网站的排他财产，受中国和国际版权法的保护。本网站上所使用的所有软件都是本网站或其关联公司或其软件供应商的财产，受中国和国际版权法的保护。 <h4>许可和网站进入</h4> 本网站授予您有限的许可进入和个人使用本网站，未经本网站的明确书面同意不许下载（除了页面缓存）或修改网站或其任何部分。这一许可不包括对本网站或其内容的转售或商业利用、任何收集和利用产品目录、说明和价格、任何对本网站或其内容的衍生利用、任何为其他商业利益而下载或拷贝账户信息或使用任何数据采集、 robots或类似的数据收集和摘录工具。未经本网站的书面许可，严禁对本网站的内容进行系统获取以直接或间接创建或编辑文集、汇编、数据库或人名地址录（无论是否通过robots、spiders、自动仪器或手工操作）。另外，严禁为任何未经本使用条件明确允许的目的而使用本网站上的内容和材料。 未经本网站明确书面同意，不得以任何商业目的对本网站或其任何部分进行复制、复印、仿造、出售、转售、访问、或以其他方式加以利用。未经本网站明确书面同意，您不得用设计或运用设计技巧把本网站或其关联公司的商标、标识或其他专有信息（包括图像、文字、网页设计或形式）据为己有。未经本网站明确书面同意，您不可以meta tags或任何其他“隐藏文本”方式使用本网站的名字和商标。任何未经授权的使用都会终止本网站所授予的允许或许可。您被授予有限的、可撤销的和非独家的权利建立链接到本网站主页的超链接，只要这个链接不以虚假、误导、贬毁或其他侵犯性方式描写本网站、其关联公司或它们的产品和服务。 <h4>评论、意见、消息和其他内容</h4> 访问者可以张贴评论、意见及其他内容，以及提出建议、主意、意见、问题或其他信息，只要内容不是非法、淫秽、威胁、诽谤、侵犯隐私、侵犯知识产权或以其他形式对第三者构成伤害或侵犯或令公众讨厌，也不包含软件病毒、政治宣传、商业招揽、连锁信、大宗邮件或任何形式的“垃圾邮件”。您不可以使用虚假的电子邮件地址、冒充任何他人或实体或以其它方式对卡片或其他内容的来源进行误导。本网站保留清除或编辑这些内容的权利（但非义务），但不对所张贴的内容进行经常性的审查。如果您确实张贴了内容或提交了材料，除非我们有相反指示，您授予本网站及其关联公司非排他的、免费的、永久的、不可撤销的和完全的再许可权而在全世界范围内任何媒体上使用、复制、修改、改写、出版、翻译、创作衍生作品、分发和展示这样的内容。您授予本网站及其关联公司和被转许可人使用您所提交的与这些内容有关的名字的权利，如果他们选择这样做的话。您声明并担保您拥有或以其它方式控制您所张贴内容的权利，内容是准确的，对您所提供内容的使用不违反本政策并不会对任何人和实体造成伤害。您声明并保证对于因您所提供的内容引起的对本网站或其关联公司损害进行赔偿。本网站有权监控和编辑或清除任何活动或内容。本网站对您或任何第三方所张贴的内容不承担责任。 <h4>产品说明 </h4> 本网站及其关联公司努力使产品说明尽可能准确。不过，由于实际条件限制，本网站并不保证产品说明或本网站上的其他内容是准确的、完整的、可靠的、最新的或无任何错误的。 <h4>电子通讯 </h4> 当您访问本网站或给我们发送电子邮件时，您与我们用电子方式进行联系。您同意以电子方式接受我们的信息。我们将用电子邮件或通过在本网站上发布通知的方式与您进行联系。您同意我们用电子方式提供给您的所有协议、通知、披露和其他信息是符合此类通讯必须是书面形式的法定要求的。如果并且当本网站能够证明以电子形式的信息已经发送给您或者在本网站张贴这样的通知，将被视为您已收到所有协议、声明、披露和其他信息。 </div>',1270540058647,4),(9,'免责条款','<div class=\"pageWrap\"> <h4>免责声明</h4>如因不可抗力或其他无法控制的原因造成网站销售系统崩溃或无法正常使用，从而导致网上交易无法完成或丢失有关的信息、记录等，网站将不承担责任。但是我们将会尽合理的可能协助处理善后事宜，并努力使客户减少可能遭受的经济损失。<br>本店可以按买方的要求代办相关运输手续，但我们的责任义务仅限于按时发货，遇到物流（邮政）意外时协助买方查询，不承担任何物流（邮政）提供给顾客之外的赔偿，一切查询索赔事宜均按照物流（邮政）的规定办理。在物流（邮政）全程查询期限未满之前，买方不得要求赔偿。提醒买方一定核实好收货详细地址和收货人电话，以免耽误投递。凡在本店购物，均视为如同意此声明。<br> <h4>客户监督</h4>我们希望通过不懈努力，为客户提供最佳服务，我们在给客户提供服务的全程中接受客户的监督。 <h4>争议处理</h4>如果客户与网站之间发生任何争议，可依据当时双方所认定的协议或相关法律来解决。 </div>',1270540058647,4),(10,'简单的购物流程','<div class=\"pageWrap\"> <h2>简单的购物流程</h2> <h4>怎样注册？</h4> <p> 答：您可以直接点击\"会员注册\"进行注册。注册很简单，您只需按注册向导的要求输入一些基本信息即可。为了准确地为您服务，请务必在注册时填写您的真实信息，我们会为您保密。输入的帐号要4-10位，仅可使用英文字母、数字\"-\"。 </p> <h4>怎样成为会员?</h4> <p> 答：您可以直接点击\"会员登录与注册\"进行注册。注册很简单，您只需根据系统提示输入相关资料即可，请您填写完毕时，务必核对填写内容的准确性，并谨记您的会员账号和密码，以便您查询订单或是希望网站提供予您更多的服务时用以核对您的身份。 </p> <h4>如何在网上下单购买，怎么一个操作流程呢？</h4> <p> 答：这种方式和您逛商场的方式十分相似，您只要按照我们的商品分类页面或进入\"钻石珠宝\"、\"个性定制\"等逐页按照链接指明的路径浏览就可以了。 一旦看中了您喜欢的商品，您可以随时点击\"放入购物篮\"按钮将它放入\"购物篮\"。随后，您可以按\"去收银台\"。我们的商品十分丰富，不过您别担心，我们在每一页中都设立了详细明白的导航条，您是不会迷路的。 </p> </div>',1270540058647,4),(11,'支付方式','<div class=\"pageWrap\"> <table class=\"liststyle data\" border=\"0\" cellpadding=\"0\" cellspacing=\"2\"> <colgroup> <col class=\"span-4 ColColorGray\"> <col class=\"span-6\"> <col class=\"span-6\"> <col> </colgroup> <thead> <tr> <th width=\"123\">支付方式</th> <th width=\"198\">银行</th> <th width=\"518\">卡号</th> <th width=\"309\">户名</th> </tr> </thead> <tbody> <tr> <th><span style=\"text-align: left;\">预存款支付</span></th> <td>&nbsp;</td> <td colspan=\"2\">使用本商店会员预存款余额进行支付。如果余额不足，可进入会员中心在线充值。</td> </tr> <tr> <th><span style=\"text-align: left;\"> <label></label> </span></th> <td><img src=\"http://pic.shopex.cn/pictures/newsimg/1169028039.gif\"></td> <td>一卡通卡号：</td> <td rowspan=\"2\">刘小恪</td> </tr> <tr> <th>&nbsp;</th> <td><strong>招商</strong>银行上海分行</td> <td>&nbsp;</td> </tr> <tr> <th>&nbsp;</th> <td><font size=\"3\"><strong><img src=\"http://pic.shopex.cn/pictures/newsimg/1169028056.gif\"></strong></font></td> <td>灵通卡号：</td> <td rowspan=\"2\">刘小恪</td> </tr> <tr> <th>&nbsp;</th> <td><font size=\"3\"><strong>工商</strong></font>银行上海分行昌宁支行</td> <td><font color=\"#0080c0\">9558</font>8010<font color=\"#0080c0\">0×××8</font>9<font color=\"#0080c0\">×××</font></td> </tr> <tr> <th>&nbsp;</th> <td><strong><font size=\"3\"><img src=\"http://pic.shopex.cn/pictures/newsimg/1169028068.gif\"></font></strong></td> <td>金穗卡号：</td> <td rowspan=\"2\">刘小恪</td> </tr> <tr> <th>&nbsp;</th> <td><strong><font size=\"3\">农业</font></strong>银行上海分行共和支行</td> <td><font color=\"#0080c0\">622848×××8</font>9<font color=\"#0080c0\">×××</font></td> </tr> <tr> <th>&nbsp;</th> <td><font size=\"3\"><strong><img src=\"http://pic.shopex.cn/pictures/newsimg/1169028078.gif\"></strong></font></td> <td>龙卡号：</td> <td rowspan=\"2\">刘小恪</td> </tr> <tr> <th>&nbsp;</th> <td><font size=\"3\"><strong>建设</strong></font>银行上海分行</td> <td><font color=\"#0080c0\">4367</font>4212<font color=\"#0080c0\">1×××8<font color=\"#000000\">9</font><font color=\"#0080c0\">×××</font></font></td> </tr> <tr> <th>支付宝</th> <td><img alt=\"\" src=\"http://pic.shopex.cn/pictures/newsimg/1169028139.jpg\"></td> <td colspan=\"2\">支付宝（<a href=\"http://www.alipay.com/\"><font color=\"#0328c1\">www.alipay.com</font></a>）致力于为中国电子商务提供各种安全、方便、个性化的在线支付解决方案。支付宝从2003年10月在淘宝网推出，短短几年时间内迅速成为使用极其广泛的网上安全支付工具，深受用户喜爱。截止2006年6月，使用支付宝的用户已经超过2000万，日支付宝日交易总额超过４000万元人民币，日交易笔数超过25万笔。</td> </tr> <tr> <th><span style=\"text-align: left;\"> <label>paypal贝宝</label> </span></th> <td><img src=\"http://pic.shopex.cn/pictures/newsimg/1169028114.jpg\"></td> <td colspan=\"2\">paypal 贝宝（<a href=\"http://www.paypal.com.cn/\"><font color=\"#000000\">www.paypal.com.cn</font></a>）公司是世界领先的网络支付公司paypal 公司为中国市场度身定做的网络支付服务，可以用e-mail地址，透过信用卡及银行帐户，安全地支付及存入网上各类帐项。paypal公司利用现有的银行系统和信用卡系统，通过先进的网络技术和网络安全防范技术，在全球 103 个国家为超过 1 亿个人以及网上商户提供安全便利的网上支付服务。</td> </tr> </tbody> </table> </div>',1270540058647,5),(12,'配送方式','<div class=\"pageWrap\"><table class=\"liststyle data\" border=\"0\" cellpadding=\"0\" cellspacing=\"2\"> <colgroup> <col class=\"span-4 ColColorGray\"> <col class=\"span-6\"> <col class=\"span-6\"> <col> </colgroup><thead> <tr> <th width=\"79\">快递公司</th> <th width=\"120\">送货范围</th> <th width=\"117\">送达时间</th> <th width=\"815\">详细介绍</th></tr></thead> <tbody> <tr> <th><span style=\"text-align: left;\"><label style=\"width: auto;\">顺丰快递(+￥20.00)</label> <br><label></label></span></th> <td colspan=\"3\"><img src=\"http://pic.shopex.cn/pictures/newsimg/1169028571.jpg\"></td></tr> <tr> <th>&nbsp;</th> <td>全国</td> <td>2-4个工作日</td> <td>顺丰快递（<a href=\"http://www.sf-express.com/\"><font color=\"#0328c1\">www.sf-express.com</font></a>）可能是国内最好的快递公司。假如你希望快递公司的服务质量比较好，请选择顺丰。从速度到人员素质乃至安全性，顺丰都是国内数一数二的。配送过程中可以进入顺风网站查询和跟踪商品运输情况。</td></tr> <tr> <th><label style=\"width: auto;\">ems快递(+￥25.00)</label> <br></th> <td colspan=\"3\"><img src=\"http://pic.shopex.cn/pictures/newsimg/1169028716.jpg\"></td></tr> <tr> <th>&nbsp;</th> <td>全国</td> <td>2-5个工作日</td> <td>国家邮政特快专递，门对门服务，一般在2-5天内到达。由快递公司中转，所以速度反而会比一般的快递慢。主要用于一般快递无法到达地区。 </td></tr> <tr> <th><label style=\"width: auto;\">fedex联邦快递(+￥30.00)</label> <br></th> <td colspan=\"3\"><img src=\"http://pic.shopex.cn/pictures/newsimg/1169028674.jpg\"></td></tr> <tr> <th>&nbsp;</th> <td>全国</td> <td>1-2工作日</td> <td>联邦快递是全球最具规模的快递运输公司，为全球超过220个国家及地区提供快捷、可靠的快递服务。联邦快递设有环球航空及陆运网络，通常只需一至两个工作日，就能迅速运送时限紧迫的货件，而且确保准时送达。</td></tr></tbody></table> </div>',1270540058647,5),(13,'我的订单何时出库？','<div class=\"pageWrap\">订单的出库时间要以您订单的配货情况而定。请您随时登录“会员中心”查看订单状态。如果订单显示“已发货”，说明订单已经出库，请您耐心等待收货。 </div>',1270540058647,5),(14,'网上支付小贴士','<div class=\"pageWrap\"><h4>1、银行卡网上支付的开通手续</h4>因各地银行政策不同，建议您在网上支付前拨打所在地银行电话，咨询该行可供网上支付的银行卡种类及开通手续。 <table class=\"liststyle data\" border=\"0\" cellpadding=\"0\" cellspacing=\"2\"> <colgroup> <col class=\"span-4 ColColorGray\"> <col class=\"span-6\"> <col class=\"span-6\"> <col> </colgroup><thead> <tr> <th width=\"174\"><strong>银行名称</strong></th> <th width=\"153\"><strong>服务热线</strong></th> <th width=\"195\"><strong>银行名称</strong></th> <th width=\"184\"><strong>服务热线</strong></th> <th width=\"195\">银行名称</th> <th width=\"243\">服务热线</th></tr></thead> <tbody> <tr> <th>招商银行</th> <td>95555</td> <th>中国银行</th> <td>95566</td> <th>交通银行</th> <td>95559</td></tr> <tr> <th>中国工商银行</th> <td>95588</td> <th>北京银行</th> <td>010-96169</td> <th>光大银行</th> <td>95595</td></tr> <tr> <th>中国建设银行</th> <td>95533</td> <th>中国农业银行</th> <td>95599</td> <th>深圳发展银行</th> <td>95501</td></tr> <tr> <th>上海浦东发展银行</th> <td>95528</td> <th>广东发展银行</th> <td>95508</td> <th>中国邮政</th> <td>11185</td></tr> <tr> <th>民生银行</th> <td>95568</td> <th>华夏银行</th> <td>95577</td> <th>中信银行</th> <td>86668888</td></tr></tbody></table> <h4>2、支付金额上限</h4>目前各银行对于网上支付均有一定金额的限制，由于各银行政策不同，建议您在申请网上支付功能时向银行咨询相关事宜。 <h4>3、怎样判断网上支付是否成功？</h4> <ol> <li>当您完成网上在线支付过程后，系统应提示支付成功；如果系统没有提示支付失败或成功，您可通过电话、atm 、柜台或登录网上银行等各种方式查询银行卡余额，如果款项已被扣除，网上支付交易应该是成功的，请您耐心等待。</li> <li>如果出现信用卡超额透支、存折余额不足、意外断线等导致支付不成功，请您登录会员中心，找到该张未支付成功的订单，重新完成支付。</li></ol><span style=\"color: rgb(255, 0, 0);\">小贴士：请您在48小时之内完成支付，否则我们将不会保留您的订单。</span> <h4>4、造成“支付被拒绝”的原因有哪些？</h4> <ol> <li>所持银行卡尚未开通网上在线支付功能</li> <li>所持银行卡已过期、作废、挂失；</li> <li>所持银行卡内余额不足；</li> <li>输入银行卡卡号或密码不符；</li> <li>输入证件号不符；</li> <li>银行系统数据传输出现异常；</li> <li>网络中断。</li></ol> </div>',1270540058647,5),(15,'关于送货和验货','<div class=\"pageWrap\"> 1、送货上门、货到付款订单：快递员送货上门时，请您务必当面对照发货单核对商品，如果出现商品数量缺少、商品破损，请您当场办理整单商品的退货。若订单中含有赠品，请一并退回。一旦您确认签字，我们将无法为您办理退换或补发。 <ol><strong>特别提示：</strong> <li>如果您的订单使用帐户余额或礼券支付，只有退货商品的金额小于实际应付款金额时才可办理。 </li><li>如果您的订单中含有赠品，将无法提供此项服务；如果是成套商品，您只能整套退货。如果是捆绑商品，您在退主商品的同时需要将赠品一起退回。</li></ol>2、邮局邮寄订单：请您在领取包裹时务必检查外包装，如果发现包裹破损，请您不要签收，随后请及时将包裹单原件邮寄给我们，您的包裹单原件将作为我们为您办理补发或退款的唯一证明。收到包裹单后，我们将为您办理相关手续。如您未拆开外包装箱，也可以当场全部退货。平邮订单，在收到包裹时，如发现包裹破损，请您要求邮局出具包裹破损证明。<span style=\"color: rgb(255, 0, 0);\">注：敬请您在验货签收时仔细核对发票，如果出现发票开错或漏开，请您及时联系我们，注明订单号、邮寄地址和收信人姓名，我们接到您的信息后会尽快为您开具，并邮寄给您。</span> </div>',1270540058647,5),(16,'注册服务条款','<p align=\"center\"> <strong>注册服务条款</strong> </p> <p> 尊敬的用户，欢迎您注册成为本网站用户。在注册前请您仔细阅读如下服务条款：<br>本服务协议双方为本网站与本网站用户，本服务协议具有合同效力。<br>您确认本服务协议后，本服务协议即在您和本网站之间产生法律效力。请您务必在注册之前认真阅读全部服务协议内容，如有任何疑问，可向本网站咨询。<br>无论您事实上是否在注册之前认真阅读了本服务协议，只要您点击协议正本下方的\"注册\"按钮并按照本网站注册程序成功注册为用户，您的行为仍然表示您同意并签署了本服务协议。 </p> <h4>1．本网站服务条款的确认和接纳</h4>本网站各项服务的所有权和运作权归本网站拥有。 <h4>2．用户必须：</h4>(1)自行配备上网的所需设备， 包括个人电脑、调制解调器或其他必备上网装置。<br>(2)自行负担个人上网所支付的与此服务有关的电话费用、 网络费用。 <h4>3．用户在本网站上交易平台上不得发布下列违法信息：</h4>(1)反对宪法所确定的基本原则的；<br>(2).危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；<br>(3).损害国家荣誉和利益的；<br>(4).煽动民族仇恨、民族歧视，破坏民族团结的；<br>(5).破坏国家宗教政策，宣扬邪教和封建迷信的；<br>(6).散布谣言，扰乱社会秩序，破坏社会稳定的；<br>(7).散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；<br>(8).侮辱或者诽谤他人，侵害他人合法权益的；<br>(9).含有法律、行政法规禁止的其他内容的。 <h4>4． 有关个人资料</h4>用户同意：<br>(1) 提供及时、详尽及准确的个人资料。<br>(2).同意接收来自本网站的信息。<br>(3) 不断更新注册资料，符合及时、详尽准确的要求。所有原始键入的资料将引用为注册资料。<br>(4)本网站不公开用户的姓名、地址、电子邮箱和笔名，以下情况除外：<br>（a）用户授权本网站透露这些信息。<br>（b）相应的法律及程序要求本网站提供用户的个人资料。如果用户提供的资料包含有不正确的信息，本网站保留结束用户使用本网站信息服务资格的权利。 <h4>5. 用户在注册时应当选择稳定性及安全性相对较好的电子邮箱，并且同意接受并阅读本网站发往用户的各类电子邮件。如用户未及时从自己的电子邮箱接受电子邮件或因用户电子邮箱或用户电子邮件接收及阅读程序本身的问题使电子邮件无法正常接收或阅读的，只要本网站成功发送了电子邮件，应当视为用户已经接收到相关的电子邮件。电子邮件在发信服务器上所记录的发出时间视为送达时间。</h4> <h4>6． 服务条款的修改</h4>本网站有权在必要时修改服务条款，本网站服务条款一旦发生变动，将会在重要页面上提示修改内容。如果不同意所改动的内容，用户可以主动取消获得的本网站信息服务。如果用户继续享用本网站信息服务，则视为接受服务条款的变动。本网站保留随时修改或中断服务而不需通知用户的权利。本网站行使修改或中断服务的权利，不需对用户或第三方负责。 <h4>7． 用户隐私制度</h4>尊重用户个人隐私是本网站的一项基本政策。所以，本网站一定不会在未经合法用户授权时公开、编辑或透露其注册资料及保存在本网站中的非公开内容，除非有法律许可要求或本网站在诚信的基础上认为透露这些信息在以下四种情况是必要的：<br>(1) 遵守有关法律规定，遵从本网站合法服务程序。<br>(2) 保持维护本网站的商标所有权。<br>(3) 在紧急情况下竭力维护用户个人和社会大众的隐私安全。<br>(4)符合其他相关的要求。<br>本网站保留发布会员人口分析资询的权利。 <h4>8．用户的帐号、密码和安全性</h4>你一旦注册成功成为用户，你将得到一个密码和帐号。如果你不保管好自己的帐号和密码安全，将负全部责任。另外，每个用户都要对其帐户中的所有活动和事件负全责。你可随时根据指示改变你的密码，也可以结束旧的帐户重开一个新帐户。用户同意若发现任何非法使用用户帐号或安全漏洞的情况，请立即通告本网站。 <h4>9． 拒绝提供担保</h4>用户明确同意信息服务的使用由用户个人承担风险。 本网站不担保服务不会受中断，对服务的及时性，安全性，出错发生都不作担保，但会在能力范围内，避免出错。 <h4>10．有限责任</h4>本网站对任何直接、间接、偶然、特殊及继起的损害不负责任，这些损害来自：不正当使用本网站服务，或用户传送的信息不符合规定等。这些行为都有可能导致本网站形象受损，所以本网站事先提出这种损害的可能性，同时会尽量避免这种损害的发生。 <h4>11．信息的储存及限制</h4>本网站有判定用户的行为是否符合本网站服务条款的要求和精神的权利，如果用户违背本网站服务条款的规定，本网站有权中断其服务的帐号。 <h4>12．用户管理</h4><strong>用户必须遵循</strong>：<br>(1) 使用信息服务不作非法用途。<br>(2) 不干扰或混乱网络服务。<br>(3) 遵守所有使用服务的网络协议、规定、程序和惯例。用户的行为准则是以因特网法规，政策、程序和惯例为根据的。 <h4>13．保障</h4>用户同意保障和维护本网站全体成员的利益，负责支付由用户使用超出服务范围引起的律师费用，违反服务条款的损害补偿费用，其它人使用用户的电脑、帐号和其它知识产权的追索费。 <h4>14．结束服务</h4>用户或本网站可随时根据实际情况中断一项或多项服务。本网站不需对任何个人或第三方负责而随时中断服务。用户若反对任何服务条款的建议或对后来的条款修改有异议，或对本网站服务不满，用户可以行使如下权利：<br>(1) 不再使用本网站信息服务。<br>(2) 通知本网站停止对该用户的服务。<br>结束用户服务后，用户使用本网站服务的权利马上中止。从那时起，用户没有权利，本网站也没有义务传送任何未处理的信息或未完成的服务给用户或第三方。 <h4>15．通告</h4>所有发给用户的通告都可通过重要页面的公告或电子邮件或常规的信件传送。服务条款的修改、服务变更、或其它重要事件的通告都会以此形式进行。 <h4>16．信息内容的所有权</h4>本网站定义的信息内容包括：文字、软件、声音、相片、录象、图表；在广告中全部内容；本网站为用户提供的其它信息。所有这些内容受版权、商标、标签和其它财产所有权法律的保护。所以，用户只能在本网站和广告商授权下才能使用这些内容，而不能擅自复制、再造这些内容、或创造与内容有关的派生产品。 <h4>17．法律</h4>本网站信息服务条款要与中华人民共和国的法律解释一致。用户和本网站一致同意服从本网站所在地有管辖权的法院管辖。如发生本网站服务条款与中华人民共和国法律相抵触时，则这些条款将完全按法律规定重新解释，而其它条款则依旧保持对用户的约束力。 <p> </p>',1270540058647,6),(17,'隐私保护政策','<div class=\"pageWrap\"> <h4>个人信息</h4> 一般情况下，您无须提供您的姓名或其它个人信息即可访问我们的站点。但有时我们可能需要您提供一些信息，例如为了处理订单、与您联系、提供预订服务或处理工作应聘。我们可能需要这些信息完成以上事务的处理或提供更好的服务。 <h4> 用途</h4> <ol> <li>供我们网站交易和沟通等相关方使用，以满足您的订单等购物服务；</li> <li>用于与您保持联系，以开展客户满意度调查、市场研究或某些事务的处理；</li> <li> 用于不记名的数据分析（例如点击流量数据）；</li> <li> 帮助发展我们的业务关系（如果您是我们网站的业务合作伙伴或批发商）；</li> </ol> </div>',1270540058647,6),(18,'银行系统升级通告！','<p>尊敬的顾客：</p><br /><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  由于银行系统将于12.10号进行升级，因此在此期间，网上支付业务将会暂停，本网站将会暂停网上支付方式的订单，对此进行通告，谢谢您一贯的支持。</p>',1270540058647,7),(19,'商品评论改版升级','<p>首先，为了使得大家能更充分参与，我们将逐步放开对产品评论的资格限制，  顾客可以在购买商品后对商品进行评价，其他顾客还可以对评价进行是否好评的参与，得到较多用户好评的评论将得到更多的展示机会。</p>',1270540058647,7),(20,'5月8日暂停货品出库','<span>敬爱的顾客： <br />我们将于下2010年5月8日进行内部货品盘点和整合，当天将暂停货品的出库，但是为了广大用户能够尽量在周一收到您 周六晚间和周日下午 16：00 前 生成的有效本地订单 (外环外和外地订单将在周日下午发出，具体配送时间根据订单所选的货运方式而定)  ，将原有的上海外环线以内的一日二送改为一日一送的配送方式。 8月8日配送时间为上午9:00 至下午 18：00，由此为您带来的不便，还请您谅解。  届时我们将不提供上门自提，售后和送货等其他服务。 从2008年8月8日星期二起外环线以内的配送恢复为一日二送。  在此衷心的感谢各位顾客一贯以来对我们工作的支持和关注。</span>',1270540058647,7),(21,'系统升级通告','<p>尊敬的用户，您好！</p><p>　　为了给广大用户提供更好的服务，拟在 2010年 5月9日 12:30 － 14:00  做系统升级。</p><p>　　届时，页面会出现暂时不能使用的情况。</p><p>　　在此，衷心的感谢每位用户一贯以来对我们工作的支持和关 注。</p>',1270540058647,7),(22,'女士专场，任我选择!','<p>集结了麦包包、宝姿（Ports）、迪奥（Dior）、美宝莲、香奈儿（Chanel）、杰克.琼斯（Jack &amp;  Jones）等诸多知名品牌的服饰、包包，齐集商城专场，快来淘一款中意的爱衣吧！意想不到的价格让您清凉一&ldquo;吓&rdquo;。</p>',1270540058647,8),(23,'靓装搭配全攻略-今夏流行密码','<p>流行密码一: 带有珠光感的橘粉色外套很阳光，特别的褶皱剪裁对于女人来说是显现个人气质的设计。</p><p>流行密码二:  黑色是适合大众的颜色，小西服或者小夹克都可以选一款黑色，轻松的应对各种场合。</p><p>流行密码三:  大大的项链吸引人的注意，也让平领的连衣裙更富有层次和变化，脖子短的MM强烈推荐这种装扮。</p>',1270540058647,8),(24,'韩版Vivid服饰全场热卖！','<p>多年来Vivid服饰积极深化在中国市场，将时尚生活与韩国元素带给中国消费者。本次Vivid服饰专场将奉献给广大网友性价比超高的韩版服饰，欢迎光临 卖场选购！</p>',1270540058647,8),(25,'乐不思“暑”之买就送！','<p>亲爱的顾客，</p><p><br />可曾记得年幼时的&ldquo;强手棋&rdquo;？可曾记得游戏中的惊心动魄，乐趣无边。<br />今年夏天，我们帮您重新回味儿时 的乐趣。</p><p><br />即日起购买连衣裙、百褶裙、职业短裙等产品，均有机会获得太阳镜一副。<br />数量有限，送完为止哦！</p>',1270540058647,8),(26,'关于我们','<div class=\"pageWrap\"> <h2>关于我们</h2>  <div class=\"font11px\"><span style=\"font-size: 9pt; color: rgb(102, 102, 102); font-family: 宋体;\"><strong><span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\">修改本区域内容，请到</span><span style=\"font-size: 10.5pt; color: red; font-family: Times New Roman;\"> </span><span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\">商店管理后台</span><span style=\"font-size: 10.5pt; color: red; font-family: Times New Roman;\" lang=\"EN-US\"> <span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\">&gt;&gt;</span>&nbsp;页面管理<span style=\"font-size: 10.5pt; color: red; font-family: Times New Roman;\" lang=\"EN-US\"> <span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\">&gt;&gt; </span>站点栏目</span></span><span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\"> &gt;&gt;</span><span style=\"font-size: 10.5pt; color: red; font-family: Times New Roman;\" lang=\"EN-US\">&nbsp; 关于我们&nbsp; </span><span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\">进行编辑</span></strong></span></div><p> 本商城是新一代专业消费服务网站。我们利用强大的全球化集约采购优势、丰富的电子商务管理服务经验和最先进的互联网技术为您提供最新最好的产品。 </p> <h4>成立源起</h4> 在目前广大购物者渐渐对产品性价比要求越来越高的今天，我们发现必须有一套完善的采购经销体系，才能不断的提高产品质量同时降低产品价格，因此减少产品销售中间环节成本的增加势在必行。因此我们创办中国网上购物商城网站，让产品在网站上直接面对消费者，一方面网站可以提供比在商店购物中更为详尽的资料、历史渊源以及顾客评论等信息，顾客可以方便的从琳琅满目的各类商品中快速查询出需要的产品；另一方面也大大的减少商店运营成本，将价格实惠转让给顾客。 <h4>定位</h4> 本商城所登陆的商品全部是经过我们在千百种产品中精挑细选出的精品，每一件商品都有自己的特色，每件产品在登陆之前都经过网站编辑的层层筛选，这个将是我们自始至终所坚定的服务原则。 <h4>承诺</h4> 我们承诺提供权威的资讯、最低的价格和便捷的购物方式，为您打造全新的e时代购物新体验！我们承诺严格按照国家法规政策正规经营，经营的产品皆为正规渠道引进合法缴税的原装正品，有着完善的保修、退货与售后服务制度。为了让您更准确全面的了解您所需要的商品，我们的每一件商品都提供100%实样的高清晰数码照片、详尽的技术性能指标和制造厂商的介绍。同时采用多种便捷的支付方式和安全快速的配送体系，通过先进的互联网技术进行订单的实时跟踪，并保证每一位客户资料的安全与保密。 </div>',1270540058647,9999),(27,'联系我们','<div class=\"pageWrap\"> <h2>联系我们</h2>  <div class=\"font11px\"><span style=\"font-size: 9pt; color: rgb(102, 102, 102); font-family: 宋体;\"><strong><span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\">修改本区域内容，请到</span><span style=\"font-size: 10.5pt; color: red; font-family: Times New Roman;\"> </span><span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\">商店管理后台</span><span style=\"font-size: 10.5pt; color: red; font-family: Times New Roman;\" lang=\"EN-US\"> <span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\">&gt;&gt;</span>&nbsp;页面管理<span style=\"font-size: 10.5pt; color: red; font-family: Times New Roman;\" lang=\"EN-US\"> <span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\">&gt;&gt; </span>站点栏目</span></span><span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\"> &gt;&gt;</span><span style=\"font-size: 10.5pt; color: red; font-family: Times New Roman;\" lang=\"EN-US\">&nbsp; 联系我们&nbsp; </span><span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\">进行编辑</span></strong></span></div><p> 热心细致的服务态度打造温暖亲切的购物氛围。 </p> <table class=\"liststyle data\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"> <tbody><tr> <th>服务热线：</th> <td>021-8****818&nbsp;&nbsp;<span class=\"g\"><font color=\"#666666\">(工作时间竭诚为您服务)<br> 热线服务时间：<br> 周一～周五 09：00－18：00<br> 周六、周日以及公共假期 12：00－17：00</font></span></td> </tr> <tr> <th>电子邮箱：</th> <td><a href=\"mailto:storesupport@ourstore.com.cn.net\">storesupport@ourstore.com.cn.net</a></td> </tr> <tr> <th>商店留言：</th> <td>您可以点击“商店留言”将您的意见和建议提给我们。</td> </tr> <tr> <th>地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 址：</th> <td>上海市虹桥路333号405室</td> </tr> <tr> <th>邮政编码：</th> <td>200020</td> </tr> </tbody></table> </div>',1270540058647,9999),(28,'招聘信息','<div class=\"pageWrap\"> <h2>招聘信息</h2> <h4>我的工作！</h4> <ul class=\"list\"> <li>中国电子商务发展的领跑者；</li> <li>面向全世界的网上消费者提供几十个类别共计百万种商品；</li> <li>方便超值的网络购物，每天让近千万的网上消费者轻松得到精神和物质上的收获，让你的生活更多愉悦；</li> </ul> <h4>快来加入！</h4> 或许我们曾经陌路，或许我们曾经是对手，但我们可能是更好的工作伙伴。<br> 这里将给予你飞翔的天空、畅游的海洋、驰骋的疆土。<br> 这里是一个任由你发挥创造的平台！<br> 这里所需要的仅仅是你的热忱与才智！<br> 诚邀加盟，一起收获！共同愉悦！<br> </div>',1270540058647,9999),(29,'业务合作','<div class=\"pageWrap\"> <h2>业务合作</h2>  <div class=\"font11px\"><span style=\"font-size: 9pt; color: rgb(102, 102, 102); font-family: 宋体;\"><strong><span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\">修改本区域内容，请到</span><span style=\"font-size: 10.5pt; color: red; font-family: Times New Roman;\"> </span><span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\">商店管理后台</span><span style=\"font-size: 10.5pt; color: red; font-family: Times New Roman;\" lang=\"EN-US\"> <span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\">&gt;&gt;</span>&nbsp;页面管理<span style=\"font-size: 10.5pt; color: red; font-family: Times New Roman;\" lang=\"EN-US\"> <span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\">&gt;&gt; </span>站点栏目</span></span><span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\"> &gt;&gt;</span><span style=\"font-size: 10.5pt; color: red; font-family: Times New Roman;\" lang=\"EN-US\">&nbsp; 业务合作&nbsp; </span><span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\">进行编辑</span></strong></span></div>  <h4>媒体/广告合作</h4> <ul class=\"list\"> <li>联系人：张先生</li> <li>联系方式：021-62288</li> <li>合作范围：媒体活动宣传、内容合作、广告投放</li> <li></li> </ul> <h4>招商咨询</h4> <ul class=\"list\"> <li>联系人：陈先生</li> <li>联系方式：021-611-809</li> <li>合作范围：品牌服饰入驻及在线市场推广服务</li> </ul> </div>',1270540058647,9999),(30,'网页底部1','<div class=\"TreeList\"><div class=\"cat1\">新手上路</div><div class=\"cat2\"><a href=\"help-1.html\">顾客必读</a></div><div class=\"cat2\"><a href=\"help-2.html\">会员等级折扣</a></div><div class=\"cat2\"><a href=\"help-3.html\">订单的几种状态</a></div><div class=\"cat2\"><a href=\"help-4.html\">积分奖励计划</a></div><div class=\"cat2\"><a href=\"help-5.html\">商品退货保障</a></div></div><div class=\"TreeList\"><div class=\"cat1\">购物条款</div><div class=\"cat2\"><a href=\"help-16.html\">会员注册协议</a></div><div class=\"cat2\"><a href=\"help-17.html\">隐私保护政策</a></div></div><div class=\"TreeList\"><div class=\"cat1\">支付/配送方式</div><div class=\"cat2\"><a href=\"help-11.html\">支付方式</a></div><div class=\"cat2\"><a href=\"help-12.html\">配送方式</a></div><div class=\"cat2\"><a href=\"help-13.html\">订单何时出库？</a></div><div class=\"cat2\"><a href=\"help-14.html\">网上支付小贴士</a></div><div class=\"cat2\"><a href=\"help-15.html\">关于送货和验货</a></div></div><div class=\"TreeList\"><div class=\"cat1\">购物指南</div><div class=\"cat2\"><a href=\"help-6.html\">非会员购物通道</a></div><div class=\"cat2\"><a href=\"help-7.html\">体贴的售后服务</a></div><div class=\"cat2\"><a href=\"help-8.html\">网站使用条款</a></div><div class=\"cat2\"><a href=\"help-9.html\">网站免责声明</a></div><div class=\"cat2\"><a href=\"help-10.html\">简单的购物流程</a></div></div><div class=\"TreeList\"><div class=\"cat1\">新手上路</div><div class=\"cat2\"><a href=\"help-1.html\">顾客必读</a></div><div class=\"cat2\"><a href=\"help-2.html\">会员等级折扣</a></div><div class=\"cat2\"><a href=\"help-3.html\">订单的几种状态</a></div><div class=\"cat2\"><a href=\"help-4.html\">积分奖励计划</a></div><div class=\"cat2\"><a href=\"help-5.html\">商品退货保障</a></div></div>',1270540058647,9999),(31,'网页底部2','<div class=\"TreeList\"><div class=\"cat1\"><a href=\"help-26.html\">关于我们</a></div><div class=\"cat1\"><a href=\"contactus.html\">联系我们</a></div><div class=\"cat1\"><a href=\"help-28.html\">招聘信息</a></div><div class=\"cat1\"><a href=\"articleList-7.html\">最新公告</a></div><div class=\"cat1\"><a href=\"articleList-8.html\">促销信息</a></div><div class=\"cat1\"><a href=\"help-29.html\">业务合作</a></div><div class=\"cat1\"><a href=\"#\">站点地图</a></div></div>',1273556559197,9999),(34,'会员注册协议','<p>尊敬的用户，欢迎您注册成为本网站用户。在注册前请您仔细阅读如下服务条款：<br>本服务协议双方为本网站与本网站用户，本服务协议具有合同效力。<br>您确认本服务协议后，本服务协议即在您和本网站之间产生法律效力。请您务必在注册之前认真阅读全部服务协议内容，如有任何疑问，可向本网站咨询。<br>无论您事实上是否在注册之前认真阅读了本服务协议，只要您点击协议正本下方的\"注册\"按钮并按照本网站注册程序成功注册为用户，您的行为仍然表示您同意并签署了本服务协议。</p><h4>1．本网站服务条款的确认和接纳</h4>本网站各项服务的所有权和运作权归本网站拥有。<h4>2．用户必须：</h4>(1)自行配备上网的所需设备， 包括个人电脑、调制解调器或其他必备上网装置。<br>(2)自行负担个人上网所支付的与此服务有关的电话费用、 网络费用。<h4>3．用户在本网站上交易平台上不得发布下列违法信息：</h4>(1)反对宪法所确定的基本原则的；<br>(2).危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；<br>(3).损害国家荣誉和利益的；<br>(4).煽动民族仇恨、民族歧视，破坏民族团结的；<br>(5).破坏国家宗教政策，宣扬邪教和封建迷信的；<br>(6).散布谣言，扰乱社会秩序，破坏社会稳定的；<br>(7).散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；<br>(8).侮辱或者诽谤他人，侵害他人合法权益的；<br>(9).含有法律、行政法规禁止的其他内容的。<h4>4． 有关个人资料</h4>用户同意：<br>(1) 提供及时、详尽及准确的个人资料。<br>(2).同意接收来自本网站的信息。<br>(3) 不断更新注册资料，符合及时、详尽准确的要求。所有原始键入的资料将引用为注册资料。<br>(4)本网站不公开用户的姓名、地址、电子邮箱和笔名，以下情况除外：<br>（a）用户授权本网站透露这些信息。<br>（b）相应的法律及程序要求本网站提供用户的个人资料。如果用户提供的资料包含有不正确的信息，本网站保留结束用户使用本网站信息服务资格的权利。<h4>5.用户在注册时应当选择稳定性及安全性相对较好的电子邮箱，并且同意接受并阅读本网站发往用户的各类电子邮件。如用户未及时从自己的电子邮箱接受电子邮件或因用户电子邮箱或用户电子邮件接收及阅读程序本身的问题使电子邮件无法正常接收或阅读的，只要本网站成功发送了电子邮件，应当视为用户已经接收到相关的电子邮件。电子邮件在发信服务器上所记录的发出时间视为送达时间。</h4><h4>6． 服务条款的修改</h4>本网站有权在必要时修改服务条款，本网站服务条款一旦发生变动，将会在重要页面上提示修改内容。如果不同意所改动的内容，用户可以主动取消获得的本网站信息服务。如果用户继续享用本网站信息服务，则视为接受服务条款的变动。本网站保留随时修改或中断服务而不需通知用户的权利。本网站行使修改或中断服务的权利，不需对用户或第三方负责。<h4>7． 用户隐私制度</h4>尊重用户个人隐私是本网站的一项基本政策。所以，本网站一定不会在未经合法用户授权时公开、编辑或透露其注册资料及保存在本网站中的非公开内容，除非有法律许可要求或本网站在诚信的基础上认为透露这些信息在以下四种情况是必要的：<br>(1) 遵守有关法律规定，遵从本网站合法服务程序。<br>(2) 保持维护本网站的商标所有权。<br>(3) 在紧急情况下竭力维护用户个人和社会大众的隐私安全。<br>(4)符合其他相关的要求。<br>本网站保留发布会员人口分析资询的权利。<h4>8．用户的帐号、密码和安全性</h4>你一旦注册成功成为用户，你将得到一个密码和帐号。如果你不保管好自己的帐号和密码安全，将负全部责任。另外，每个用户都要对其帐户中的所有活动和事件负全责。你可随时根据指示改变你的密码，也可以结束旧的帐户重开一个新帐户。用户同意若发现任何非法使用用户帐号或安全漏洞的情况，请立即通告本网站。<h4>9． 拒绝提供担保</h4>用户明确同意信息服务的使用由用户个人承担风险。本网站不担保服务不会受中断，对服务的及时性，安全性，出错发生都不作担保，但会在能力范围内，避免出错。<h4>10．有限责任</h4>本网站对任何直接、间接、偶然、特殊及继起的损害不负责任，这些损害来自：不正当使用本网站服务，或用户传送的信息不符合规定等。这些行为都有可能导致本网站形象受损，所以本网站事先提出这种损害的可能性，同时会尽量避免这种损害的发生。<h4>11．信息的储存及限制</h4>本网站有判定用户的行为是否符合本网站服务条款的要求和精神的权利，如果用户违背本网站服务条款的规定，本网站有权中断其服务的帐号。<h4>12．用户管理</h4><strong>用户必须遵循</strong>：<br>(1) 使用信息服务不作非法用途。<br>(2) 不干扰或混乱网络服务。<br>(3) 遵守所有使用服务的网络协议、规定、程序和惯例。用户的行为准则是以因特网法规，政策、程序和惯例为根据的。<h4>13．保障</h4>用户同意保障和维护本网站全体成员的利益，负责支付由用户使用超出服务范围引起的律师费用，违反服务条款的损害补偿费用，其它人使用用户的电脑、帐号和其它知识产权的追索费。<h4>14．结束服务</h4>用户或本网站可随时根据实际情况中断一项或多项服务。本网站不需对任何个人或第三方负责而随时中断服务。用户若反对任何服务条款的建议或对后来的条款修改有异议，或对本网站服务不满，用户可以行使如下权利：<br>(1) 不再使用本网站信息服务。<br>(2) 通知本网站停止对该用户的服务。<br>结束用户服务后，用户使用本网站服务的权利马上中止。从那时起，用户没有权利，本网站也没有义务传送任何未处理的信息或未完成的服务给用户或第三方。<h4>15．通告</h4>所有发给用户的通告都可通过重要页面的公告或电子邮件或常规的信件传送。服务条款的修改、服务变更、或其它重要事件的通告都会以此形式进行。<h4>16．信息内容的所有权</h4>本网站定义的信息内容包括：文字、软件、声音、相片、录象、图表；在广告中全部内容；本网站为用户提供的其它信息。所有这些内容受版权、商标、标签和其它财产所有权法律的保护。所以，用户只能在本网站和广告商授权下才能使用这些内容，而不能擅自复制、再造这些内容、或创造与内容有关的派生产品。<h4>17．法律</h4>本网站信息服务条款要与中华人民共和国的法律解释一致。用户和本网站一致同意服从本网站所在地有管辖权的法院管辖。如发生本网站服务条款与中华人民共和国法律相抵触时，则这些条款将完全按法律规定重新解释，而其它条款则依旧保持对用户的约束力。<p></p>',1274680370187,9999),(35,'隐私保护条款','<div class=\"pageWrap\"><h4>个人信息</h4>一般情况下，您无须提供您的姓名或其它个人信息即可访问我们的站点。但有时我们可能需要您提供一些信息，例如为了处理订单、与您联系、提供预订服务或处理工作应聘。我们可能需要这些信息完成以上事务的处理或提供更好的服务。<h4>用途</h4><ol>	<li>供我们网站交易和沟通等相关方使用，以满足您的订单等购物服务；</li>	<li>用于与您保持联系，以开展客户满意度调查、市场研究或某些事务的处理；</li>	<li>用于不记名的数据分析（例如点击流量数据）；</li>	<li>帮助发展我们的业务关系（如果您是我们网站的业务合作伙伴或批发商）；</li></ol></div>',1274680419117,9999);
/*!40000 ALTER TABLE `es_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_article_cat`
--

DROP TABLE IF EXISTS `es_article_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_article_cat` (
  `cat_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `parent_id` mediumint(8) DEFAULT NULL,
  `cat_path` varchar(200) DEFAULT NULL,
  `cat_order` smallint(5) DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_article_cat`
--

LOCK TABLES `es_article_cat` WRITE;
/*!40000 ALTER TABLE `es_article_cat` DISABLE KEYS */;
INSERT INTO `es_article_cat` VALUES (1,'帮助中心',0,'0|1',0),(2,'其它文章',0,'0|2',0),(3,'新手上路',1,'0|1|3',0),(4,'购物指南',1,'0|1|4',1),(5,'支付/配送方式',1,'0|1|5',2),(6,'购物条款',1,'0|1|6',3),(7,'最新公告',2,'0|2|7',1),(8,'促销信息',2,'0|2|8',2),(9999,'单独文章',0,'0|9999',100);
/*!40000 ALTER TABLE `es_article_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_auth_action`
--

DROP TABLE IF EXISTS `es_auth_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_auth_action` (
  `actid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `objvalue` longtext,
  PRIMARY KEY (`actid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_auth_action`
--

LOCK TABLES `es_auth_action` WRITE;
/*!40000 ALTER TABLE `es_auth_action` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_auth_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_border`
--

DROP TABLE IF EXISTS `es_border`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_border` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `borderid` varchar(50) DEFAULT NULL,
  `bordername` varchar(50) DEFAULT NULL,
  `themepath` varchar(50) DEFAULT NULL,
  `deleteflag` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_border`
--

LOCK TABLES `es_border` WRITE;
/*!40000 ALTER TABLE `es_border` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_border` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_brand`
--

DROP TABLE IF EXISTS `es_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_brand` (
  `brand_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `keywords` longtext,
  `brief` longtext,
  `url` varchar(255) DEFAULT NULL,
  `disabled` smallint(1) DEFAULT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_brand`
--

LOCK TABLES `es_brand` WRITE;
/*!40000 ALTER TABLE `es_brand` DISABLE KEYS */;
INSERT INTO `es_brand` VALUES (1,'爱慕','http://static.enationsoft.com/attachment/moonbasa/brand/201005141501149421.jpg',NULL,'','http://aimer.taobao.com/',0),(2,'GAINREEL','http://static.enationsoft.com/attachment/moonbasa/brand/201005141502176924.jpg',NULL,'','http://gainreel.mall.taobao.com/',0),(3,'优品生活','http://static.enationsoft.com/attachment/moonbasa/brand/201005141503521888.jpg',NULL,'','http://ypsh.mall.taobao.com/',0),(4,'猫人','http://static.enationsoft.com/attachment/moonbasa/brand/201005141504441707.jpg',NULL,'','http://list.mall.taobao.com/2/g-d----g,youmrsy-40-0--5002598',0),(5,'七匹狼','http://static.enationsoft.com/attachment/moonbasa/brand/201005141506044073.jpg',NULL,'','http://sknit.mall.taobao.com/',0),(6,'百丽','http://static.enationsoft.com/attachment/moonbasa/brand/201005171139064887.jpg',NULL,'','http://search.taobao.com/search?cat=50006843&commend=all&sty',0),(7,'Tata','http://static.enationsoft.com/attachment/moonbasa/brand/201005171139536431.jpg',NULL,'','http://search.taobao.com/search?cat=50006843&commend=all&sty',0);
/*!40000 ALTER TABLE `es_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_cart`
--

DROP TABLE IF EXISTS `es_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_cart` (
  `cart_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `product_id` mediumint(9) DEFAULT NULL,
  `itemtype` smallint(6) DEFAULT '0' COMMENT '      0商品\n                  1捆绑商品\n                  2赠品\n            ',
  `num` int(11) DEFAULT NULL,
  `weight` decimal(20,3) DEFAULT NULL,
  `session_id` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(20,3) DEFAULT NULL,
  `addon` text,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_cart`
--

LOCK TABLES `es_cart` WRITE;
/*!40000 ALTER TABLE `es_cart` DISABLE KEYS */;
INSERT INTO `es_cart` VALUES (1,348,0,1,0.000,'B985B3972877892FED11FD0AC746AE85','郁金香刺绣模杯文胸',39.000,NULL);
/*!40000 ALTER TABLE `es_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_cart_optic`
--

DROP TABLE IF EXISTS `es_cart_optic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_cart_optic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rel_id` int(11) DEFAULT NULL,
  `opticid` int(11) DEFAULT NULL,
  `sessionid` varchar(50) DEFAULT NULL,
  `left_type` smallint(6) DEFAULT NULL,
  `left_sph` varchar(50) DEFAULT NULL,
  `left_cyl` varchar(50) DEFAULT NULL,
  `left_axis` varchar(50) DEFAULT NULL,
  `right_type` smallint(6) DEFAULT NULL,
  `right_sph` varchar(50) DEFAULT NULL,
  `right_cyl` varchar(50) DEFAULT NULL,
  `right_axis` varchar(50) DEFAULT NULL,
  `pd` varchar(50) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_cart_optic`
--

LOCK TABLES `es_cart_optic` WRITE;
/*!40000 ALTER TABLE `es_cart_optic` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_cart_optic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_comments`
--

DROP TABLE IF EXISTS `es_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_comments` (
  `comment_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `for_comment_id` mediumint(8) unsigned DEFAULT NULL,
  `object_id` mediumint(8) unsigned NOT NULL,
  `object_type` varchar(50) NOT NULL DEFAULT 'ask',
  `author_id` mediumint(8) unsigned DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `levelname` varchar(50) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `mem_read_status` enum('false','true') NOT NULL DEFAULT 'false',
  `adm_read_status` enum('false','true') NOT NULL DEFAULT 'false',
  `time` bigint(8) DEFAULT NULL,
  `lastreply` bigint(8) DEFAULT NULL,
  `reply_name` varchar(100) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `acomment` longtext,
  `ip` varchar(15) DEFAULT NULL,
  `display` enum('false','true') NOT NULL DEFAULT 'false',
  `p_index` tinyint(2) DEFAULT NULL,
  `disabled` enum('false','true') DEFAULT 'false',
  `commenttype` varchar(50) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_comments`
--

LOCK TABLES `es_comments` WRITE;
/*!40000 ALTER TABLE `es_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_coupons`
--

DROP TABLE IF EXISTS `es_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_coupons` (
  `cpns_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cpns_name` varchar(255) DEFAULT NULL,
  `pmt_id` mediumint(8) unsigned DEFAULT NULL,
  `cpns_prefix` varchar(50) DEFAULT NULL,
  `cpns_gen_quantity` int(8) unsigned DEFAULT '0',
  `cpns_key` varchar(20) DEFAULT NULL,
  `cpns_status` enum('0','1') DEFAULT '1' COMMENT '0为禁用状态\n            1为启用状态',
  `cpns_type` enum('0','1','2') DEFAULT '1' COMMENT '0为a类优惠卷\n            1为b类优惠卷',
  `cpns_point` int(10) DEFAULT NULL,
  `disabled` enum('true','false') DEFAULT 'false',
  PRIMARY KEY (`cpns_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_coupons`
--

LOCK TABLES `es_coupons` WRITE;
/*!40000 ALTER TABLE `es_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_data_cat`
--

DROP TABLE IF EXISTS `es_data_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_data_cat` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `cat_path` varchar(255) DEFAULT NULL,
  `cat_order` int(11) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `if_audit` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `detail_url` varchar(255) DEFAULT NULL,
  `tositemap` int(11) DEFAULT '0',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_data_cat`
--

LOCK TABLES `es_data_cat` WRITE;
/*!40000 ALTER TABLE `es_data_cat` DISABLE KEYS */;
INSERT INTO `es_data_cat` VALUES (1,'帮助中心',0,'0|1|',1,1,NULL,'newslist-1-1.html','',0),(2,' 网店公告',0,'0|2|',2,1,NULL,'newslist-2-1.html','',0),(3,'新手上路',1,'0|1|3|',1,1,NULL,'newslist-3-1.html','',0),(4,'购物指南',1,'0|1|4|',2,1,NULL,'newslist-4-1.html','',0),(5,'支付/配送方式',1,'0|1|5|',3,1,NULL,'newslist-5-1.html','',0),(6,'购物条款',1,'0|1|6|',4,1,NULL,'newslist-6-1.html','',0),(7,'退换货服务',1,'0|1|7|',5,1,NULL,'newslist-7-1.html','',0),(8,'最新公告',2,'0|2|8|',1,1,NULL,'newslist-8-1.html','',0),(9,'促销信息',2,'0|2|9|',2,1,NULL,'newslist-9-1.html','',0),(10,'其它文章',0,'0|10|',3,1,NULL,'newslist-10-1.html','',0),(11,'网店页脚链接',0,'0|11|',4,1,NULL,'newslist-11-1.html','',0);
/*!40000 ALTER TABLE `es_data_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_data_field`
--

DROP TABLE IF EXISTS `es_data_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_data_field` (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `china_name` varchar(255) DEFAULT NULL,
  `english_name` varchar(255) DEFAULT NULL,
  `data_type` int(11) DEFAULT NULL,
  `data_size` varchar(20) DEFAULT NULL,
  `show_form` varchar(255) DEFAULT NULL,
  `show_value` varchar(400) DEFAULT NULL,
  `add_time` bigint(20) DEFAULT NULL,
  `model_id` int(11) DEFAULT NULL,
  `save_value` longtext,
  `is_validate` smallint(1) DEFAULT NULL,
  `taxis` int(11) DEFAULT NULL,
  `dict_id` int(11) DEFAULT NULL,
  `is_show` int(11) DEFAULT NULL,
  PRIMARY KEY (`field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_data_field`
--

LOCK TABLES `es_data_field` WRITE;
/*!40000 ALTER TABLE `es_data_field` DISABLE KEYS */;
INSERT INTO `es_data_field` VALUES (1,'标题','title',NULL,NULL,'input',NULL,1314621321042,1,'',1,1,NULL,1),(2,'内容','content',NULL,NULL,'richedit',NULL,1314621345430,1,'',0,2,NULL,0);
/*!40000 ALTER TABLE `es_data_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_data_model`
--

DROP TABLE IF EXISTS `es_data_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_data_model` (
  `model_id` int(11) NOT NULL AUTO_INCREMENT,
  `china_name` varchar(255) DEFAULT NULL,
  `english_name` varchar(255) DEFAULT NULL,
  `add_time` bigint(20) DEFAULT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `brief` varchar(400) DEFAULT NULL,
  `if_audit` int(11) DEFAULT NULL,
  PRIMARY KEY (`model_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_data_model`
--

LOCK TABLES `es_data_model` WRITE;
/*!40000 ALTER TABLE `es_data_model` DISABLE KEYS */;
INSERT INTO `es_data_model` VALUES (1,'普通文章','en_article',1314621240047,NULL,'',0);
/*!40000 ALTER TABLE `es_data_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_delivery`
--

DROP TABLE IF EXISTS `es_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_delivery` (
  `delivery_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT NULL COMMENT '1发货\n            2退货\n            3换货',
  `order_id` mediumint(8) DEFAULT NULL,
  `member_id` mediumint(8) DEFAULT NULL,
  `money` decimal(20,3) DEFAULT NULL,
  `ship_type` varchar(255) DEFAULT NULL,
  `is_protect` tinyint(4) DEFAULT NULL,
  `protect_price` decimal(20,3) DEFAULT NULL,
  `logi_id` mediumint(8) DEFAULT NULL,
  `logi_name` varchar(255) DEFAULT NULL,
  `logi_no` varchar(255) DEFAULT NULL,
  `ship_name` varchar(255) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `ship_addr` varchar(255) DEFAULT NULL,
  `ship_zip` varchar(50) DEFAULT NULL,
  `ship_tel` varchar(50) DEFAULT NULL,
  `ship_mobile` varchar(50) DEFAULT NULL,
  `ship_email` varchar(50) DEFAULT NULL,
  `op_name` varchar(255) DEFAULT NULL,
  `remark` longtext,
  `create_time` bigint(8) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`delivery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_delivery`
--

LOCK TABLES `es_delivery` WRITE;
/*!40000 ALTER TABLE `es_delivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_delivery_item`
--

DROP TABLE IF EXISTS `es_delivery_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_delivery_item` (
  `item_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `delivery_id` mediumint(8) DEFAULT NULL,
  `goods_id` mediumint(8) DEFAULT NULL,
  `product_id` mediumint(8) DEFAULT NULL,
  `sn` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `num` mediumint(8) DEFAULT NULL,
  `itemtype` smallint(1) DEFAULT '0',
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_delivery_item`
--

LOCK TABLES `es_delivery_item` WRITE;
/*!40000 ALTER TABLE `es_delivery_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_delivery_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_dly_area`
--

DROP TABLE IF EXISTS `es_dly_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_dly_area` (
  `area_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_dly_area`
--

LOCK TABLES `es_dly_area` WRITE;
/*!40000 ALTER TABLE `es_dly_area` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_dly_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_dly_center`
--

DROP TABLE IF EXISTS `es_dly_center`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_dly_center` (
  `dly_center_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `zip` varchar(6) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `cellphone` varchar(100) DEFAULT NULL,
  `sex` enum('male','famale') DEFAULT NULL,
  `memo` longtext,
  `disabled` enum('true','false') NOT NULL DEFAULT 'false',
  PRIMARY KEY (`dly_center_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_dly_center`
--

LOCK TABLES `es_dly_center` WRITE;
/*!40000 ALTER TABLE `es_dly_center` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_dly_center` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_dly_type`
--

DROP TABLE IF EXISTS `es_dly_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_dly_type` (
  `type_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `protect` smallint(1) DEFAULT NULL,
  `protect_rate` float(6,3) DEFAULT NULL,
  `has_cod` tinyint(1) DEFAULT NULL,
  `min_price` float(10,2) DEFAULT NULL,
  `detail` text,
  `corp_id` mediumint(8) DEFAULT NULL,
  `ordernum` int(10) DEFAULT NULL,
  `disabled` smallint(1) DEFAULT NULL,
  `is_same` smallint(1) DEFAULT NULL,
  `config` text,
  `expressions` text,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_dly_type`
--

LOCK TABLES `es_dly_type` WRITE;
/*!40000 ALTER TABLE `es_dly_type` DISABLE KEYS */;
INSERT INTO `es_dly_type` VALUES (1,'快递-申通深圳（示范）',0,10.000,NULL,100.00,'国内一般1-2天送达',4,1,0,0,'{\"continueprice\":0,\"continueunit\":1000,\"defAreaFee\":0,\"expression\":\"\",\"firstprice\":0,\"firstunit\":1000,\"have_cod\":0,\"is_same\":0,\"useexp\":0}','null+tint(w-1000)/1000*null'),(2,'快递-顺丰上海（示范）',0,NULL,NULL,NULL,'江浙沪当日送达，其他地区隔日送达',5,2,0,0,'{\"continueprice\":0,\"continueunit\":1000,\"defAreaFee\":0,\"expression\":\"\",\"firstprice\":0,\"firstunit\":1000,\"have_cod\":0,\"is_same\":0,\"useexp\":0}','null+tint(w-1000)/1000*null'),(3,'北京同城快递（示范）',0,NULL,NULL,NULL,'当日送达',2,3,0,0,'{\"continueprice\":0,\"continueunit\":1000,\"defAreaFee\":0,\"expression\":\"\",\"firstprice\":0,\"firstunit\":1000,\"have_cod\":0,\"is_same\":0,\"useexp\":0}','null+tint(w-1000)/1000*null'),(4,'平邮（示范）',0,NULL,0,NULL,'',0,5,0,1,'{\"continueprice\":2,\"continueunit\":500,\"defAreaFee\":0,\"expression\":\"\",\"firstprice\":5,\"firstunit\":500,\"have_cod\":0,\"is_same\":0,\"useexp\":0}','5.0+tint(w-500)/500*2.0'),(5,'货到付款（示范）',1,1.000,NULL,10.00,'送货并上门收款',0,6,0,0,'{\"continueprice\":0,\"continueunit\":1000,\"defAreaFee\":0,\"expression\":\"\",\"firstprice\":0,\"firstunit\":1000,\"have_cod\":0,\"is_same\":0,\"useexp\":0}','null+tint(w-1000)/1000*null'),(6,'上门自取（示范）',0,NULL,0,NULL,'到指定门店自取',0,8,0,1,'{\"continueprice\":0,\"continueunit\":1000,\"defAreaFee\":0,\"expression\":\"\",\"firstprice\":0,\"firstunit\":1000,\"have_cod\":0,\"is_same\":0,\"useexp\":0}','0.0+tint(w-1000)/1000*0.0');
/*!40000 ALTER TABLE `es_dly_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_dly_type_area`
--

DROP TABLE IF EXISTS `es_dly_type_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_dly_type_area` (
  `type_id` mediumint(8) DEFAULT NULL,
  `area_id_group` text,
  `area_name_group` text,
  `expressions` text,
  `has_cod` smallint(1) DEFAULT NULL,
  `config` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_dly_type_area`
--

LOCK TABLES `es_dly_type_area` WRITE;
/*!40000 ALTER TABLE `es_dly_type_area` DISABLE KEYS */;
INSERT INTO `es_dly_type_area` VALUES (2,'21,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41','上海','8.0+tint(w-1000)/1000*2.0',0,'{\"areaId\":\"21|close\",\"areaName\":\"上海\",\"continueprice\":2,\"continueunit\":1000,\"expression\":\"\",\"firstprice\":8,\"firstunit\":1000,\"have_cod\":0,\"useexp\":0}'),(2,'1643,3133,1643,1644,1645,1646,1647,1648,1649,1650,1651,1652,1653,1654,1655,1656,1657,1658,1659,1660,1661,1662,1663,1664,1665,1666,1667,1668,1669,1670,1671,1672,1673,1674,1675,1676,1677,1678,1679,1680,1681,1682,1683,1684,1685,1686,1687,1688,1689,1690,1691,1692,1693,1694,1695,1696,1697,1698,1699,1700,1701,1702,1703,1704,1705,1706,1707,1708,1709,1710,1711,1712,1713,1714,1715,1716,1717,1718,1719,1720,1721,1722,1723,1724,1725,1726,1727,1728,1729,1730,1731,1732,1733,1734,1735,1736,1737,1738,1739,1740,1741,1742,1743,1744,1745,1746,1747,1748,1749,1750,1751,1752,1753,1754,1755,1756,1757,1758,1759,1760,1761,1762,3133,3134,3135,3136,3137,3138,3139,3140,3141,3142,3143,3144,3145,3146,3147,3148,3149,3150,3151,3152,3153,3154,3155,3156,3157,3158,3159,3160,3161,3162,3163,3164,3165,3166,3167,3168,3169,3170,3171,3172,3173,3174,3175,3176,3177,3178,3179,3180,3181,3182,3183,3184,3185,3186,3187,3188,3189,3190,3191,3192,3193,3194,3195,3196,3197,3198,3199,3200,3201,3202,3203,3204,3205,3206,3207,3208,3209,3210,3211,3212,3213,3214,3215,3216,3217,3218,3219,3220,3221,3222,3223,3224,3225,3226,3227,3228,3229,3230,3231,3232,3233,3234','江苏,浙江','15.0+tint(w-1000)/1000*2.0',0,'{\"areaId\":\"1643|close,3133|close\",\"areaName\":\"江苏,浙江\",\"continueprice\":2,\"continueunit\":1000,\"expression\":\"\",\"firstprice\":15,\"firstunit\":1000,\"have_cod\":0,\"useexp\":0}'),(2,'3235,3239,3242,3235,3236,3237,3238,3239,3240,3241,3242,3243,3244,3245,3246,3247,3248,3249,3250,3251,3252,3253,3254,3255,3256,3257,3258,3259,3260,3261,3262,3263,3264,3265,3266','香港,澳门,台湾','30.0+tint(w-1000)/1000*3.0',0,'{\"areaId\":\"3235|close,3239|close,3242|close\",\"areaName\":\"香港,澳门,台湾\",\"continueprice\":3,\"continueunit\":1000,\"expression\":\"\",\"firstprice\":30,\"firstunit\":1000,\"have_cod\":0,\"useexp\":0}'),(1,'423,423,424,425,426,427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565','广东','8.0+tint(w-1000)/1000*2.0',0,'{\"areaId\":\"423,423,424,425,426,427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565\",\"areaName\":\"广东\",\"continueprice\":2,\"continueunit\":1000,\"expression\":\"\",\"firstprice\":8,\"firstunit\":1000,\"have_cod\":0,\"useexp\":0}'),(1,'21,227,566,2987,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,676,677,678,679,680,681,682,683,684,685,686,687,688,689,2987,2988,2989,2990,2991,2992,2993,2994,2995,2996,2997,2998,2999,3000,3001,3002,3003,3004,3005,3006,3007,3008,3009,3010,3011,3012,3013,3014,3015,3016,3017,3018,3019,3020,3021,3022,3023,3024,3025,3026,3027,3028,3029,3030,3031,3032,3033,3034,3035,3036,3037,3038,3039,3040,3041,3042,3043,3044,3045,3046,3047,3048,3049,3050,3051,3052,3053,3054,3055,3056,3057,3058,3059,3060,3061,3062,3063,3064,3065,3066,3067,3068,3069,3070,3071,3072,3073,3074,3075,3076,3077,3078,3079,3080,3081,3082,3083,3084,3085,3086,3087,3088,3089,3090,3091,3092,3093,3094,3095,3096,3097,3098,3099,3100,3101,3102,3103,3104,3105,3106,3107,3108,3109,3110,3111,3112,3113,3114,3115,3116,3117,3118,3119,3120,3121,3122,3123,3124,3125,3126,3127,3128,3129,3130,3131,3132','上海,福建,广西,云南','12.0+tint(w-1000)/1000*2.0',0,'{\"areaId\":\"21,227,566,2987,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,676,677,678,679,680,681,682,683,684,685,686,687,688,689,2987,2988,2989,2990,2991,2992,2993,2994,2995,2996,2997,2998,2999,3000,3001,3002,3003,3004,3005,3006,3007,3008,3009,3010,3011,3012,3013,3014,3015,3016,3017,3018,3019,3020,3021,3022,3023,3024,3025,3026,3027,3028,3029,3030,3031,3032,3033,3034,3035,3036,3037,3038,3039,3040,3041,3042,3043,3044,3045,3046,3047,3048,3049,3050,3051,3052,3053,3054,3055,3056,3057,3058,3059,3060,3061,3062,3063,3064,3065,3066,3067,3068,3069,3070,3071,3072,3073,3074,3075,3076,3077,3078,3079,3080,3081,3082,3083,3084,3085,3086,3087,3088,3089,3090,3091,3092,3093,3094,3095,3096,3097,3098,3099,3100,3101,3102,3103,3104,3105,3106,3107,3108,3109,3110,3111,3112,3113,3114,3115,3116,3117,3118,3119,3120,3121,3122,3123,3124,3125,3126,3127,3128,3129,3130,3131,3132\",\"areaName\":\"上海,福建,广西,云南\",\"continueprice\":2,\"continueunit\":1000,\"expression\":\"\",\"firstprice\":12,\"firstunit\":1000,\"have_cod\":0,\"useexp\":0}'),(1,'3235,3239,3242,3235,3236,3237,3238,3239,3240,3241,3242,3243,3244,3245,3246,3247,3248,3249,3250,3251,3252,3253,3254,3255,3256,3257,3258,3259,3260,3261,3262,3263,3264,3265,3266','香港,澳门,台湾','30.0+tint(w-1000)/1000*3.0',0,'{\"areaId\":\"3235,3239,3242,3235,3236,3237,3238,3239,3240,3241,3242,3243,3244,3245,3246,3247,3248,3249,3250,3251,3252,3253,3254,3255,3256,3257,3258,3259,3260,3261,3262,3263,3264,3265,3266\",\"areaName\":\"香港,澳门,台湾\",\"continueprice\":3,\"continueunit\":1000,\"expression\":\"\",\"firstprice\":30,\"firstunit\":1000,\"have_cod\":0,\"useexp\":0}'),(3,'1,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20','﻿北京','5.0+tint(w-1000)/1000*2.0',0,'{\"areaId\":\"1|close\",\"areaName\":\"﻿北京\",\"continueprice\":2,\"continueunit\":1000,\"expression\":\"\",\"firstprice\":5,\"firstunit\":1000,\"have_cod\":0,\"useexp\":0}'),(5,'21,1643,3133,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,1643,1644,1645,1646,1647,1648,1649,1650,1651,1652,1653,1654,1655,1656,1657,1658,1659,1660,1661,1662,1663,1664,1665,1666,1667,1668,1669,1670,1671,1672,1673,1674,1675,1676,1677,1678,1679,1680,1681,1682,1683,1684,1685,1686,1687,1688,1689,1690,1691,1692,1693,1694,1695,1696,1697,1698,1699,1700,1701,1702,1703,1704,1705,1706,1707,1708,1709,1710,1711,1712,1713,1714,1715,1716,1717,1718,1719,1720,1721,1722,1723,1724,1725,1726,1727,1728,1729,1730,1731,1732,1733,1734,1735,1736,1737,1738,1739,1740,1741,1742,1743,1744,1745,1746,1747,1748,1749,1750,1751,1752,1753,1754,1755,1756,1757,1758,1759,1760,1761,1762,3133,3134,3135,3136,3137,3138,3139,3140,3141,3142,3143,3144,3145,3146,3147,3148,3149,3150,3151,3152,3153,3154,3155,3156,3157,3158,3159,3160,3161,3162,3163,3164,3165,3166,3167,3168,3169,3170,3171,3172,3173,3174,3175,3176,3177,3178,3179,3180,3181,3182,3183,3184,3185,3186,3187,3188,3189,3190,3191,3192,3193,3194,3195,3196,3197,3198,3199,3200,3201,3202,3203,3204,3205,3206,3207,3208,3209,3210,3211,3212,3213,3214,3215,3216,3217,3218,3219,3220,3221,3222,3223,3224,3225,3226,3227,3228,3229,3230,3231,3232,3233,3234','上海,江苏,浙江','12.0+tint(w-1000)/1000*2.0',0,'{\"areaId\":\"21|close,1643|close,3133|close\",\"areaName\":\"上海,江苏,浙江\",\"continueprice\":2,\"continueunit\":1000,\"expression\":\"\",\"firstprice\":12,\"firstunit\":1000,\"have_cod\":0,\"useexp\":0}'),(5,'1,42,423,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,423,424,425,426,427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565','﻿北京,天津,广东','20.0+tint(w-1000)/1000*3.0',0,'{\"areaId\":\"1|close,42|close,423|close\",\"areaName\":\"﻿北京,天津,广东\",\"continueprice\":3,\"continueunit\":1000,\"expression\":\"\",\"firstprice\":20,\"firstunit\":1000,\"have_cod\":0,\"useexp\":0}');
/*!40000 ALTER TABLE `es_dly_type_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_en_article`
--

DROP TABLE IF EXISTS `es_en_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_en_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort` smallint(1) DEFAULT '0',
  `add_time` datetime DEFAULT NULL,
  `lastmodified` datetime DEFAULT NULL,
  `hit` bigint(20) DEFAULT NULL,
  `able_time` bigint(20) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL,
  `is_commend` int(11) DEFAULT NULL,
  `sys_lock` int(11) DEFAULT '0',
  `page_title` varchar(255) DEFAULT NULL,
  `page_keywords` varchar(255) DEFAULT NULL,
  `page_description` longtext,
  `site_code` int(11) DEFAULT '100000',
  `siteidlist` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_en_article`
--

LOCK TABLES `es_en_article` WRITE;
/*!40000 ALTER TABLE `es_en_article` DISABLE KEYS */;
INSERT INTO `es_en_article` VALUES (1,0,'2011-08-29 20:47:01','2011-08-29 20:47:01',1,NULL,NULL,NULL,3,NULL,0,'','','',100000,NULL,'商品退货保障','<div class=\"pageWrap\">	<h4>		符合以下条件，可以要求换货</h4>	<ol>		<li>			客户在收到货物时当面在送货员面前拆包检查，发现货物有质量问题的；</li>		<li>			实际收到货物与网站上描述的有很大的出入的。</li>	</ol>	<strong>换货流程</strong>：客户当面要求送货人员退回货物，然后与我们联系。我们会为您重新发货，货物到达时间顺延。	<h4>		符合以下条件，可以要求退货</h4>	<ol>		<li>			客户收到货物后两天之内，发现商品有明显的制造缺陷的；</li>		<li>			货物经过一次换货但仍然存在质量问题的；</li>		<li>			由于人为原因造成超过我们承诺到货之日5天还没收到货物的。</li>	</ol>	<strong>退货流程：</strong>客户在收到货物后两天内与我们联系，我们会在三个工作日内通过银行汇款把您的货款退回。	<h4>		在以下情况我们有权拒绝客户的退换货要求</h4>	<ol>		<li>			货物出现破损，但没有在收货时当场要求送货人员换货的；</li>		<li>			超过退换货期限的退换货要求；</li>		<li>			退换货物不全或者外观受损 ；</li>		<li>			客户发货单据丢失或者不全；</li>		<li>			产品并非我们提供；</li>		<li>			货物本身不存在质量问题的 。</li>	</ol></div>'),(2,0,'2011-08-29 20:47:37','2011-08-29 20:47:37',1,NULL,NULL,NULL,3,NULL,0,'','','',100000,NULL,'积分奖励计划','<div class=\"pageWrap\">	<h4>		积分增加</h4>	按照订单中商品金额或者商品可得积分，订单状态为已发货后可获得相应的积分 。	<h4>		积分查询</h4>	会员可进入会员中心－会员信息中查看自己的积分情况。	<h4>		积分有效期</h4>	积分长期有效。除非本网站取消积分奖励计划。如果取消积分奖励计划我们会提前通知广大用户。	<h4>		积分说明</h4>	本积分奖励计划由本网站制定并保留所有的解释权和修改权。修改以网站公布为准，不做另行通知。</div>'),(3,0,'2011-08-29 20:48:03','2011-08-29 20:48:03',4,NULL,NULL,NULL,3,NULL,0,'','','',100000,NULL,'订单的几种状态','<div class=\"pageWrap\">	<table border=\"0\" cellpadding=\"0\" cellspacing=\"2\" class=\"liststyle data\">		<colgroup>			<col class=\"span-4 ColColorGray\" />			<col class=\"span-6\" />			<col class=\"span-6\" />			<col />		</colgroup>		<thead>			<tr>				<th>					状态名称</th>				<th>					状态释义</th>				<th>					定义</th>				<th>					反馈信息</th>			</tr>		</thead>		<tbody>			<tr>				<th>					确认</th>				<td>					未确认</td>				<td>					未审核确认订单</td>				<td>					&nbsp;</td>			</tr>			<tr>				<th>					已确认</th>				<td>					货到付款订单已经审核确认</td>				<td>					为您发送订单已确认信件</td>				<td>					&nbsp;</td>			</tr>			<tr>				<th>					付款</th>				<td>					&nbsp;</td>				<td>					&nbsp;</td>				<td>					&nbsp;</td>			</tr>			<tr>				<th>					部分付款</th>				<td>					只收到部分订单货款</td>				<td>					为您发送订单收款信件</td>				<td>					&nbsp;</td>			</tr>			<tr>				<th>					已付款</th>				<td>					货款全部收到</td>				<td>					为您发送订单收款信件</td>				<td>					&nbsp;</td>			</tr>			<tr>				<th>					取消</th>				<td>					客户要求取消</td>				<td>					客户自行取消的订单</td>				<td>					为您发送订单取消信件</td>			</tr>			<tr>				<th>					超送货范围取消</th>				<td>					超出送货范围的订单</td>				<td>					为您发送订单取消信件</td>				<td>					&nbsp;</td>			</tr>			<tr>				<th>					重复订单取消</th>				<td>					同一日重复定购同样商品的订单</td>				<td>					为您发送订单取消信件</td>				<td>					&nbsp;</td>			</tr>			<tr>				<th>					地址不详取消</th>				<td>					客户所留地址不够详细，或只留信箱，无法上门送货的订单</td>				<td>					为您发送订单取消信件</td>				<td>					&nbsp;</td>			</tr>			<tr>				<th>					货款逾期未收到</th>				<td>					自订单日期后7日内仍然没有收到全部货款</td>				<td>					为您发送订单取消信件</td>				<td>					&nbsp;</td>			</tr>			<tr>				<th>					货款不足取消</th>				<td>					部分到款后7日内余款未付</td>				<td>					为您发送订单取消信件</td>				<td>					&nbsp;</td>			</tr>			<tr>				<th>					发货</th>				<td>					部分发货</td>				<td>					由于订单中部分商品缺货，先将有库存的商品发货</td>				<td>					&nbsp;为您发送全部发货信件</td>			</tr>			<tr>				<th>					已发货</th>				<td>					全部发货</td>				<td>					为您发送部分发货信件</td>				<td>					&nbsp;</td>			</tr>			<tr>				<th>					退款</th>				<td>					&nbsp;</td>				<td>					&nbsp;</td>				<td>					&nbsp;</td>			</tr>			<tr>				<th>					部分退款</th>				<td>					退回您的部分购物款项</td>				<td>					&nbsp;</td>				<td>					&nbsp;</td>			</tr>			<tr>				<th>					全额退款</th>				<td>					退回您的全部购物款项</td>				<td>					&nbsp;</td>				<td>					&nbsp;</td>			</tr>			<tr>				<th>					退货</th>				<td>					部分退货</td>				<td>					收到了您退回订单中的部分商品</td>				<td>					&nbsp;</td>			</tr>			<tr>				<th>					全部退货</th>				<td>					收到了您退回订单中的全部商品</td>				<td>					&nbsp;</td>				<td>					&nbsp;</td>			</tr>			<tr>				<th>					归档</th>				<td>					已归档</td>				<td>					订单已经全部处理结束，归档保存</td>				<td>					&nbsp;</td>			</tr>		</tbody>	</table></div>'),(4,0,'2011-08-29 20:48:32','2011-08-29 20:48:32',35,NULL,NULL,NULL,3,NULL,0,'','','',100000,NULL,'会员等级折扣','<div class=\"pageWrap\">	我们的会员等级系统是动态的，按照会员积分的多少划分不同的等级，等级越高享受的商品折扣越大。 针对会员的促销活动和优惠政策会运用到每一个优惠活动中。如：&ldquo;捆绑销售&rdquo;、&ldquo;积分换购&rdquo;等等。</div>'),(5,0,'2011-08-29 20:48:59','2011-08-29 20:48:59',9,NULL,NULL,NULL,3,NULL,0,'','','',100000,NULL,'顾客必读','<div class=\"pageWrap\">	<h4>		如何订购商品？</h4>	您可以首先浏览我们的网站了解商品。看到您满意的商品您可以直接在我们的网站上实现订购。您也可以和我们网站的客服人员联系订购。	<h4>		我通过网站看到你们的商品后觉得不错，但是我不是经常上网，你可以寄一些商品的图片和介绍给我吗？</h4>	答：我们的网站会不定期地为会员发送商品信息资料的电子邮件。如果您目前还没有成为我们的会员，您可以直接在我们的网站上注册，非常方便。	<h4>		请告诉我在这里购物的理由好吗？</h4>	<ol>		<li>			我们是一家拥有长期经营零售业务经验的网站；</li>		<li>			我们将给您带来优质的商品及更优惠的价格；</li>		<li>			多种付款方式以及快速的全国配送；</li>		<li>			人性化的退换货事宜；</li>		<li>			体贴入微的会员积分计划；</li>		<li>			所有产品为原厂正规包装；</li>	</ol>	<h4>		你们的商品我都非常喜欢，已经购买了很多，但是有些怎么一直没货？会不会订不到？</h4>	由于网站顾客购买量比较大，商品随时可能断货，您可以通过网站上的&ldquo;到货通知&rdquo;按钮预定商品或直接联系我们的网站客服进行预约订购。	<h4>		所有的产品都能够在网站上购买?</h4>	答：目前网站查找的都是可以订购的，但是必须是仓库中有库存的产品我们才可以与您确认。部分热销产品也可以通过我们的网站做一个预约，等到货品到后，我们会立即通过电话或者电子邮件的方式通知您来订购。	<h4>		为什么要注册会员？</h4>	<ol>		<li>			只有注册用户才可以在网上进行订购，享受优惠的价格。</li>		<li>			只有注册用户才可以登录&quot;会员中心&quot;，使用更多的会员购物功能,管理自己的资料。</li>		<li>			只有注册用户才可以在网上给其他注册的朋友留言。</li>		<li>			只有注册用户才有可能获取我们赠送的礼品。</li>	</ol>	<h4>		忘记了密码怎么办？</h4>	为了保护客户利益，我们无法看到您的密码。当您忘记密码时，请登录注册页面，点击&quot;忘记密码&quot;，系统会自动将您的密码通过email告诉您，您可以登录&quot;会员中心&quot;去更改密码，以确保您的利益。	<h4>		积分是怎么回事？有什么作用？</h4>	积分的高低只反映您对我们的关注和支持程度。我们的积分是通过订购商品产生的。对于高积分的客户我们会有一定的奖励，如积分兑换商品、积分抵扣价格、赠送商品,更优惠的价格购买商品等，以此回馈广大顾客。</div>'),(6,0,'2011-08-29 20:49:38','2011-08-29 20:49:38',0,NULL,NULL,NULL,4,NULL,0,'','','',100000,NULL,'简单的购物流程','<div class=\"pageWrap\">	<h2>		简单的购物流程</h2>	<h4>		怎样注册？</h4>	<p>		答：您可以直接点击&quot;会员注册&quot;进行注册。注册很简单，您只需按注册向导的要求输入一些基本信息即可。为了准确地为您服务，请务必在注册时填写您的真实信息，我们会为您保密。输入的帐号要4-10位，仅可使用英文字母、数字&quot;-&quot;。</p>	<h4>		怎样成为会员?</h4>	<p>		答：您可以直接点击&quot;会员登录与注册&quot;进行注册。注册很简单，您只需根据系统提示输入相关资料即可，请您填写完毕时，务必核对填写内容的准确性，并谨记您的会员账号和密码，以便您查询订单或是希望网站提供予您更多的服务时用以核对您的身份。</p>	<h4>		如何在网上下单购买，怎么一个操作流程呢？</h4>	<p>		答：这种方式和您逛商场的方式十分相似，您只要按照我们的商品分类页面或进入&quot;钻石珠宝&quot;、&quot;个性定制&quot;等逐页按照链接指明的路径浏览就可以了。 一旦看中了您喜欢的商品，您可以随时点击&quot;放入购物篮&quot;按钮将它放入&quot;购物篮&quot;。随后，您可以按&quot;去收银台&quot;。我们的商品十分丰富，不过您别担心，我们在每一页中都设立了详细明白的导航条，您是不会迷路的。</p></div>'),(7,0,'2011-08-29 20:50:02','2011-08-29 20:50:02',0,NULL,NULL,NULL,4,NULL,0,'','','',100000,NULL,'免责条款','<div class=\"pageWrap\">	<h4>		免责声明</h4>	如因不可抗力或其他无法控制的原因造成网站销售系统崩溃或无法正常使用，从而导致网上交易无法完成或丢失有关的信息、记录等，网站将不承担责任。但是我们将会尽合理的可能协助处理善后事宜，并努力使客户减少可能遭受的经济损失。<br />	本店可以按买方的要求代办相关运输手续，但我们的责任义务仅限于按时发货，遇到物流（邮政）意外时协助买方查询，不承担任何物流（邮政）提供给顾客之外的赔偿，一切查询索赔事宜均按照物流（邮政）的规定办理。在物流（邮政）全程查询期限未满之前，买方不得要求赔偿。提醒买方一定核实好收货详细地址和收货人电话，以免耽误投递。凡在本店购物，均视为如同意此声明。<br />	<h4>		客户监督</h4>	我们希望通过不懈努力，为客户提供最佳服务，我们在给客户提供服务的全程中接受客户的监督。	<h4>		争议处理</h4>	如果客户与网站之间发生任何争议，可依据当时双方所认定的协议或相关法律来解决。</div>'),(8,0,'2011-08-29 20:50:49','2011-08-29 20:50:49',1,NULL,NULL,NULL,4,NULL,0,'','','',100000,NULL,'网站使用条款','<div class=\"pageWrap\">	如果您在本网站访问或购物，您便接受了以下条件。	<h4>		版权</h4>	本网站上的所有内容诸如文字、图表、标识、按钮图标、图像、声音文件片段、数字下载、数据编辑和软件都是本网站提供者的财产，受中国和国际版权法的保护。本网站上所有内容的汇编是本网站的排他财产，受中国和国际版权法的保护。本网站上所使用的所有软件都是本网站或其关联公司或其软件供应商的财产，受中国和国际版权法的保护。	<h4>		许可和网站进入</h4>	本网站授予您有限的许可进入和个人使用本网站，未经本网站的明确书面同意不许下载（除了页面缓存）或修改网站或其任何部分。这一许可不包括对本网站或其内容的转售或商业利用、任何收集和利用产品目录、说明和价格、任何对本网站或其内容的衍生利用、任何为其他商业利益而下载或拷贝账户信息或使用任何数据采集、 robots或类似的数据收集和摘录工具。未经本网站的书面许可，严禁对本网站的内容进行系统获取以直接或间接创建或编辑文集、汇编、数据库或人名地址录（无论是否通过robots、spiders、自动仪器或手工操作）。另外，严禁为任何未经本使用条件明确允许的目的而使用本网站上的内容和材料。 未经本网站明确书面同意，不得以任何商业目的对本网站或其任何部分进行复制、复印、仿造、出售、转售、访问、或以其他方式加以利用。未经本网站明确书面同意，您不得用设计或运用设计技巧把本网站或其关联公司的商标、标识或其他专有信息（包括图像、文字、网页设计或形式）据为己有。未经本网站明确书面同意，您不可以meta tags或任何其他&ldquo;隐藏文本&rdquo;方式使用本网站的名字和商标。任何未经授权的使用都会终止本网站所授予的允许或许可。您被授予有限的、可撤销的和非独家的权利建立链接到本网站主页的超链接，只要这个链接不以虚假、误导、贬毁或其他侵犯性方式描写本网站、其关联公司或它们的产品和服务。	<h4>		评论、意见、消息和其他内容</h4>	访问者可以张贴评论、意见及其他内容，以及提出建议、主意、意见、问题或其他信息，只要内容不是非法、淫秽、威胁、诽谤、侵犯隐私、侵犯知识产权或以其他形式对第三者构成伤害或侵犯或令公众讨厌，也不包含软件病毒、政治宣传、商业招揽、连锁信、大宗邮件或任何形式的&ldquo;垃圾邮件&rdquo;。您不可以使用虚假的电子邮件地址、冒充任何他人或实体或以其它方式对卡片或其他内容的来源进行误导。本网站保留清除或编辑这些内容的权利（但非义务），但不对所张贴的内容进行经常性的审查。如果您确实张贴了内容或提交了材料，除非我们有相反指示，您授予本网站及其关联公司非排他的、免费的、永久的、不可撤销的和完全的再许可权而在全世界范围内任何媒体上使用、复制、修改、改写、出版、翻译、创作衍生作品、分发和展示这样的内容。您授予本网站及其关联公司和被转许可人使用您所提交的与这些内容有关的名字的权利，如果他们选择这样做的话。您声明并担保您拥有或以其它方式控制您所张贴内容的权利，内容是准确的，对您所提供内容的使用不违反本政策并不会对任何人和实体造成伤害。您声明并保证对于因您所提供的内容引起的对本网站或其关联公司损害进行赔偿。本网站有权监控和编辑或清除任何活动或内容。本网站对您或任何第三方所张贴的内容不承担责任。	<h4>		产品说明</h4>	本网站及其关联公司努力使产品说明尽可能准确。不过，由于实际条件限制，本网站并不保证产品说明或本网站上的其他内容是准确的、完整的、可靠的、最新的或无任何错误的。	<h4>		电子通讯</h4>	当您访问本网站或给我们发送电子邮件时，您与我们用电子方式进行联系。您同意以电子方式接受我们的信息。我们将用电子邮件或通过在本网站上发布通知的方式与您进行联系。您同意我们用电子方式提供给您的所有协议、通知、披露和其他信息是符合此类通讯必须是书面形式的法定要求的。如果并且当本网站能够证明以电子形式的信息已经发送给您或者在本网站张贴这样的通知，将被视为您已收到所有协议、声明、披露和其他信息。</div>'),(9,0,'2011-08-29 20:51:14','2011-08-29 20:51:14',1,NULL,NULL,NULL,4,NULL,0,'','','',100000,NULL,'体贴的售后服务','<div class=\"pageWrap\">	本网站所售产品均实行三包政策，请顾客保存好有效凭证，以确保我们为您更好服务。本公司的客户除享受国家规定&ldquo;三包&rdquo;。您可以更放心地在这里购物。<br />	<br />	<h3>		保修细则</h3>	<h4>		一、在本网站购买的商品，自购买日起(以到货登记为准)7日内出现性能故障，您可以选择退货、换货或修理。</h4>	<ol>		<li>			在接到您的产品后，我公司将问题商品送厂商特约维修中心检测；</li>		<li>			检测报出来后，如非人为损坏的，是产品本身质量问题，我公司会及时按您的要求予以退款、换可或维修。</li>		<li>			如果检测结果是无故障或是人为因素造成的故障，我公司会及时通知您，并咨询您的处理意见。</li>	</ol>	<h4>		二、在本公司购买的商品，自购日起(以到货登记为准)15日内出现性能故障，您可以选择换货或修理。(享受15天退换货无需理由的商品，按《15天退换货无需理由细则》办理)</h4>	<ol>		<li>			在接到您的产品后，我公司将问题商品送厂商特约维修中心检测；</li>		<li>			检测报出来后，如非人为损坏的，是产品本身质量问题，我公司会及时按您的要求予以退款、换可或维修。</li>		<li>			如果检测结果是无故障或是人为因素造成的故障，我公司会及时通知您，并咨询您的处理意见。</li>	</ol>	<h4>		三、在本公司购买的商品，自购日起(以到货登记为准)一年之内出现非人为损坏的质量问题，本公司承诺免费保修。</h4>	<ol>		<li>			在接到您的产品后，我公司将问题商品送厂商特约维修中心检测；</li>		<li>			检测报出来后，如非人为损坏的，是产品本身质量问题，我公司会及时按您的要求予以退款、换可或维修。</li>		<li>			如果检测结果是无故障或是人为因素造成的故障，我公司会及时通知您，并咨询您的处理意见。</li>	</ol>	<h3>		收费维修：</h3>	<h4>		一、对于人为造成的故障，本公司将采取收费维修，包括：</h4>	<ol>		<li>			产品内部被私自拆开或其中任何部分被更替；</li>		<li>			商品里面的条码不清楚，无法成功判断；</li>		<li>			有入水、碎裂、损毁或有腐蚀等现象；</li>		<li>			过了保修期的商品。</li>	</ol>	<h4>		二、符合以下条件，可以要求换货：</h4>	<ol>		<li>			客户在收到货物时当面在送货员面前拆包检查，发现货物有质量问题的</li>		<li>			实际收到货物与网站上描述的有很大的出入的</li>		<li>			换货流程：客户当面要求送货人员退回货物，然后与我们联系。我们会在一个工作日内为您重新发货，货物到达时间顺延。</li>	</ol>	<h4>		三、符合以下条件，可以要求退货：</h4>	客户收到货物后两天之内，	<ol>		<li>			发现商品有明显的制造缺陷的</li>		<li>			货物经过一次换货但仍然存在质量问题的</li>		<li>			由于人为原因造成超过我们承诺到货之日三天还没收到货物的</li>	</ol>	退货流程：客户在收到货物后两天内与我们联系，我们会在两个工作日内通过银行汇款把您的货款退回。	<h4>		在以下情况我们有权拒绝客户的退换货要求：</h4>	<ol>		<li>			货物出现破损，但没有在收货时当场要求送货人员换货的</li>		<li>			超过退换货期限的退换货要求</li>		<li>			退换货物不全或者外观受损</li>		<li>			客户发货单据丢失或者不全</li>		<li>			产品并非我们提供</li>		<li>			货物本身不存在质量问题的</li>	</ol></div>'),(10,0,'2011-08-29 20:51:37','2011-08-29 20:51:37',1,NULL,NULL,NULL,4,NULL,0,'','','',100000,NULL,'非会员购物通道','<div class=\"pageWrap\">	<ol>		<li>			我们提供非会员购物功能，在购物车下一步的时候，进入非会员购物通道即可使用此功能。</li>		<li>			但是由于非会员无法享受购物积分、无法查询订单等，所以我们建议您花一分钟时间注册成为会员，这样就能享受整个网站强大的会员功能和多种优惠措施。</li>	</ol></div>'),(11,0,'2011-08-29 20:52:46','2011-08-29 20:52:46',0,NULL,NULL,NULL,5,NULL,0,'','','',100000,NULL,'关于送货和验货','<div class=\"pageWrap\">	1、送货上门、货到付款订单：快递员送货上门时，请您务必当面对照发货单核对商品，如果出现商品数量缺少、商品破损，请您当场办理整单商品的退货。若订单中含有赠品，请一并退回。一旦您确认签字，我们将无法为您办理退换或补发。	<ol>		特别提示：		<li>			如果您的订单使用帐户余额或礼券支付，只有退货商品的金额小于实际应付款金额时才可办理。</li>		<li>			如果您的订单中含有赠品，将无法提供此项服务；如果是成套商品，您只能整套退货。如果是捆绑商品，您在退主商品的同时需要将赠品一起退回。</li>	</ol>	2、邮局邮寄订单：请您在领取包裹时务必检查外包装，如果发现包裹破损，请您不要签收，随后请及时将包裹单原件邮寄给我们，您的包裹单原件将作为我们为您办理补发或退款的唯一证明。收到包裹单后，我们将为您办理相关手续。如您未拆开外包装箱，也可以当场全部退货。平邮订单，在收到包裹时，如发现包裹破损，请您要求邮局出具包裹破损证明。<span style=\"color: rgb(255, 0, 0);\">注：敬请您在验货签收时仔细核对发票，如果出现发票开错或漏开，请您及时联系我们，注明订单号、邮寄地址和收信人姓名，我们接到您的信息后会尽快为您开具，并邮寄给您。</span></div>'),(12,0,'2011-08-29 20:53:13','2011-08-29 20:53:13',0,NULL,NULL,NULL,5,NULL,0,'','','',100000,NULL,'网上支付小贴士','<div class=\"pageWrap\">	<h4>		1、银行卡网上支付的开通手续</h4>	因各地银行政策不同，建议您在网上支付前拨打所在地银行电话，咨询该行可供网上支付的银行卡种类及开通手续。	<table border=\"0\" cellpadding=\"0\" cellspacing=\"2\" class=\"liststyle data\">		<colgroup>			<col class=\"span-4 ColColorGray\" />			<col class=\"span-6\" />			<col class=\"span-6\" />			<col />		</colgroup>		<thead>			<tr>				<th width=\"174\">					<strong>银行名称</strong></th>				<th width=\"153\">					<strong>服务热线</strong></th>				<th width=\"195\">					<strong>银行名称</strong></th>				<th width=\"184\">					<strong>服务热线</strong></th>				<th width=\"195\">					银行名称</th>				<th width=\"243\">					服务热线</th>			</tr>		</thead>		<tbody>			<tr>				<th>					招商银行</th>				<td>					95555</td>				<th>					中国银行</th>				<td>					95566</td>				<th>					交通银行</th>				<td>					95559</td>			</tr>			<tr>				<th>					中国工商银行</th>				<td>					95588</td>				<th>					北京银行</th>				<td>					010-96169</td>				<th>					光大银行</th>				<td>					95595</td>			</tr>			<tr>				<th>					中国建设银行</th>				<td>					95533</td>				<th>					中国农业银行</th>				<td>					95599</td>				<th>					深圳发展银行</th>				<td>					95501</td>			</tr>			<tr>				<th>					上海浦东发展银行</th>				<td>					95528</td>				<th>					广东发展银行</th>				<td>					95508</td>				<th>					中国邮政</th>				<td>					11185</td>			</tr>			<tr>				<th>					民生银行</th>				<td>					95568</td>				<th>					华夏银行</th>				<td>					95577</td>				<th>					中信银行</th>				<td>					86668888</td>			</tr>		</tbody>	</table>	<h4>		2、支付金额上限</h4>	目前各银行对于网上支付均有一定金额的限制，由于各银行政策不同，建议您在申请网上支付功能时向银行咨询相关事宜。	<h4>		3、怎样判断网上支付是否成功？</h4>	<ol>		<li>			当您完成网上在线支付过程后，系统应提示支付成功；如果系统没有提示支付失败或成功，您可通过电话、atm 、柜台或登录网上银行等各种方式查询银行卡余额，如果款项已被扣除，网上支付交易应该是成功的，请您耐心等待。</li>		<li>			如果出现信用卡超额透支、存折余额不足、意外断线等导致支付不成功，请您登录会员中心，找到该张未支付成功的订单，重新完成支付。</li>	</ol>	<span style=\"color: rgb(255, 0, 0);\">小贴士：请您在48小时之内完成支付，否则我们将不会保留您的订单。</span>	<h4>		4、造成&ldquo;支付被拒绝&rdquo;的原因有哪些？</h4>	<ol>		<li>			所持银行卡尚未开通网上在线支付功能</li>		<li>			所持银行卡已过期、作废、挂失；</li>		<li>			所持银行卡内余额不足；</li>		<li>			输入银行卡卡号或密码不符；</li>		<li>			输入证件号不符；</li>		<li>			银行系统数据传输出现异常；</li>		<li>			网络中断。</li>	</ol></div>'),(13,0,'2011-08-29 20:53:34','2011-08-29 20:53:34',0,NULL,NULL,NULL,5,NULL,0,'','','',100000,NULL,'我的订单何时出库？','<div class=\"pageWrap\">	订单的出库时间要以您订单的配货情况而定。请您随时登录&ldquo;会员中心&rdquo;查看订单状态。如果订单显示&ldquo;已发货&rdquo;，说明订单已经出库，请您耐心等待收货。</div>'),(14,0,'2011-08-29 20:54:10','2011-08-29 20:54:10',0,NULL,NULL,NULL,5,NULL,0,'','','',100000,NULL,'配送方式','<div class=\"pageWrap\">	<table border=\"0\" cellpadding=\"0\" cellspacing=\"2\" class=\"liststyle data\">		<colgroup>			<col class=\"span-4 ColColorGray\" />			<col class=\"span-6\" />			<col class=\"span-6\" />			<col />		</colgroup>		<thead>			<tr>				<th width=\"79\">					快递公司</th>				<th width=\"120\">					送货范围</th>				<th width=\"117\">					送达时间</th>				<th width=\"815\">					详细介绍</th>			</tr>		</thead>		<tbody>			<tr>				<th>					<span style=\"text-align: left;\"><label style=\"width: auto;\">顺丰快递(+￥20.00)</label> </span></th>				<td colspan=\"3\">					<img src=\"http://pic.shopex.cn/pictures/newsimg/1169028571.jpg\" /></td>			</tr>			<tr>				<th>					&nbsp;</th>				<td>					全国</td>				<td>					2-4个工作日</td>				<td>					顺丰快递（<a href=\"http://www.sf-express.com/\"><font color=\"#0328c1\">www.sf-express.com</font></a>）可能是国内最好的快递公司。假如你希望快递公司的服务质量比较好，请选择顺丰。从速度到人员素质乃至安全性，顺丰都是国内数一数二的。配送过程中可以进入顺风网站查询和跟踪商品运输情况。</td>			</tr>			<tr>				<th>					<label style=\"width: auto;\">ems快递(+￥25.00)</label></th>				<td colspan=\"3\">					<img src=\"http://pic.shopex.cn/pictures/newsimg/1169028716.jpg\" /></td>			</tr>			<tr>				<th>					&nbsp;</th>				<td>					全国</td>				<td>					2-5个工作日</td>				<td>					国家邮政特快专递，门对门服务，一般在2-5天内到达。由快递公司中转，所以速度反而会比一般的快递慢。主要用于一般快递无法到达地区。</td>			</tr>			<tr>				<th>					<label style=\"width: auto;\">fedex联邦快递(+￥30.00)</label></th>				<td colspan=\"3\">					<img src=\"http://pic.shopex.cn/pictures/newsimg/1169028674.jpg\" /></td>			</tr>			<tr>				<th>					&nbsp;</th>				<td>					全国</td>				<td>					1-2工作日</td>				<td>					联邦快递是全球最具规模的快递运输公司，为全球超过220个国家及地区提供快捷、可靠的快递服务。联邦快递设有环球航空及陆运网络，通常只需一至两个工作日，就能迅速运送时限紧迫的货件，而且确保准时送达。</td>			</tr>		</tbody>	</table></div>'),(15,0,'2011-08-29 20:54:43','2011-08-29 20:54:43',8,NULL,NULL,NULL,5,NULL,0,'','','',100000,NULL,'支付方式','<div class=\"pageWrap\">	<table border=\"0\" cellpadding=\"0\" cellspacing=\"2\" class=\"liststyle data\">		<colgroup>			<col class=\"span-4 ColColorGray\" />			<col class=\"span-6\" />			<col class=\"span-6\" />			<col />		</colgroup>		<thead>			<tr>				<th width=\"123\">					支付方式</th>				<th width=\"198\">					银行</th>				<th width=\"518\">					卡号</th>				<th width=\"309\">					户名</th>			</tr>		</thead>		<tbody>			<tr>				<th>					<span style=\"text-align: left;\">预存款支付</span></th>				<td>					&nbsp;</td>				<td colspan=\"2\">					使用本商店会员预存款余额进行支付。如果余额不足，可进入会员中心在线充值。</td>			</tr>			<tr>				<th>					&nbsp;</th>				<td>					<img src=\"http://pic.shopex.cn/pictures/newsimg/1169028039.gif\" /></td>				<td>					一卡通卡号：</td>				<td rowspan=\"2\">					刘小恪</td>			</tr>			<tr>				<th>					&nbsp;</th>				<td>					<strong>招商</strong>银行上海分行</td>				<td>					&nbsp;</td>			</tr>			<tr>				<th>					&nbsp;</th>				<td>					<font size=\"3\"><strong><img src=\"http://pic.shopex.cn/pictures/newsimg/1169028056.gif\" /></strong></font></td>				<td>					灵通卡号：</td>				<td rowspan=\"2\">					刘小恪</td>			</tr>			<tr>				<th>					&nbsp;</th>				<td>					<font size=\"3\"><strong>工商</strong></font>银行上海分行昌宁支行</td>				<td>					<font color=\"#0080c0\">9558</font>8010<font color=\"#0080c0\">0&times;&times;&times;8</font>9<font color=\"#0080c0\">&times;&times;&times;</font></td>			</tr>			<tr>				<th>					&nbsp;</th>				<td>					<strong><font size=\"3\"><img src=\"http://pic.shopex.cn/pictures/newsimg/1169028068.gif\" /></font></strong></td>				<td>					金穗卡号：</td>				<td rowspan=\"2\">					刘小恪</td>			</tr>			<tr>				<th>					&nbsp;</th>				<td>					<strong><font size=\"3\">农业</font></strong>银行上海分行共和支行</td>				<td>					<font color=\"#0080c0\">622848&times;&times;&times;8</font>9<font color=\"#0080c0\">&times;&times;&times;</font></td>			</tr>			<tr>				<th>					&nbsp;</th>				<td>					<font size=\"3\"><strong><img src=\"http://pic.shopex.cn/pictures/newsimg/1169028078.gif\" /></strong></font></td>				<td>					龙卡号：</td>				<td rowspan=\"2\">					刘小恪</td>			</tr>			<tr>				<th>					&nbsp;</th>				<td>					<font size=\"3\"><strong>建设</strong></font>银行上海分行</td>				<td>					<font color=\"#0080c0\">4367</font>4212<font color=\"#0080c0\">1&times;&times;&times;8<font color=\"#000000\">9</font><font color=\"#0080c0\">&times;&times;&times;</font></font></td>			</tr>			<tr>				<th>					支付宝</th>				<td>					<img alt=\"\" src=\"http://pic.shopex.cn/pictures/newsimg/1169028139.jpg\" /></td>				<td colspan=\"2\">					支付宝（<a href=\"http://www.alipay.com/\"><font color=\"#0328c1\">www.alipay.com</font></a>）致力于为中国电子商务提供各种安全、方便、个性化的在线支付解决方案。支付宝从2003年10月在淘宝网推出，短短几年时间内迅速成为使用极其广泛的网上安全支付工具，深受用户喜爱。截止2006年6月，使用支付宝的用户已经超过2000万，日支付宝日交易总额超过４000万元人民币，日交易笔数超过25万笔。</td>			</tr>			<tr>				<th>					<span style=\"text-align: left;\"><label>paypal贝宝</label> </span></th>				<td>					<img src=\"http://pic.shopex.cn/pictures/newsimg/1169028114.jpg\" /></td>				<td colspan=\"2\">					paypal 贝宝（<a href=\"http://www.paypal.com.cn/\"><font color=\"#000000\">www.paypal.com.cn</font></a>）公司是世界领先的网络支付公司paypal 公司为中国市场度身定做的网络支付服务，可以用e-mail地址，透过信用卡及银行帐户，安全地支付及存入网上各类帐项。paypal公司利用现有的银行系统和信用卡系统，通过先进的网络技术和网络安全防范技术，在全球 103 个国家为超过 1 亿个人以及网上商户提供安全便利的网上支付服务。</td>			</tr>		</tbody>	</table></div>'),(16,0,'2011-08-29 20:55:16','2011-08-29 20:55:16',2,NULL,NULL,NULL,6,NULL,0,'','','',100000,NULL,'注册服务条款','<p align=\"center\">	<strong>注册服务条款</strong></p><p>	尊敬的用户，欢迎您注册成为本网站用户。在注册前请您仔细阅读如下服务条款：<br />	本服务协议双方为本网站与本网站用户，本服务协议具有合同效力。<br />	您确认本服务协议后，本服务协议即在您和本网站之间产生法律效力。请您务必在注册之前认真阅读全部服务协议内容，如有任何疑问，可向本网站咨询。<br />	无论您事实上是否在注册之前认真阅读了本服务协议，只要您点击协议正本下方的&quot;注册&quot;按钮并按照本网站注册程序成功注册为用户，您的行为仍然表示您同意并签署了本服务协议。</p><h4>	1．本网站服务条款的确认和接纳</h4><p>	本网站各项服务的所有权和运作权归本网站拥有。</p><h4>	2．用户必须：</h4><p>	(1)自行配备上网的所需设备， 包括个人电脑、调制解调器或其他必备上网装置。<br />	(2)自行负担个人上网所支付的与此服务有关的电话费用、 网络费用。</p><h4>	3．用户在本网站上交易平台上不得发布下列违法信息：</h4><p>	(1)反对宪法所确定的基本原则的；<br />	(2).危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；<br />	(3).损害国家荣誉和利益的；<br />	(4).煽动民族仇恨、民族歧视，破坏民族团结的；<br />	(5).破坏国家宗教政策，宣扬邪教和封建迷信的；<br />	(6).散布谣言，扰乱社会秩序，破坏社会稳定的；<br />	(7).散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；<br />	(8).侮辱或者诽谤他人，侵害他人合法权益的；<br />	(9).含有法律、行政法规禁止的其他内容的。</p><h4>	4． 有关个人资料</h4><p>	用户同意：<br />	(1) 提供及时、详尽及准确的个人资料。<br />	(2).同意接收来自本网站的信息。<br />	(3) 不断更新注册资料，符合及时、详尽准确的要求。所有原始键入的资料将引用为注册资料。<br />	(4)本网站不公开用户的姓名、地址、电子邮箱和笔名，以下情况除外：<br />	（a）用户授权本网站透露这些信息。<br />	（b）相应的法律及程序要求本网站提供用户的个人资料。如果用户提供的资料包含有不正确的信息，本网站保留结束用户使用本网站信息服务资格的权利。</p><h4>	5. 用户在注册时应当选择稳定性及安全性相对较好的电子邮箱，并且同意接受并阅读本网站发往用户的各类电子邮件。如用户未及时从自己的电子邮箱接受电子邮件或因用户电子邮箱或用户电子邮件接收及阅读程序本身的问题使电子邮件无法正常接收或阅读的，只要本网站成功发送了电子邮件，应当视为用户已经接收到相关的电子邮件。电子邮件在发信服务器上所记录的发出时间视为送达时间。</h4><h4>	6． 服务条款的修改</h4><p>	本网站有权在必要时修改服务条款，本网站服务条款一旦发生变动，将会在重要页面上提示修改内容。如果不同意所改动的内容，用户可以主动取消获得的本网站信息服务。如果用户继续享用本网站信息服务，则视为接受服务条款的变动。本网站保留随时修改或中断服务而不需通知用户的权利。本网站行使修改或中断服务的权利，不需对用户或第三方负责。</p><h4>	7． 用户隐私制度</h4><p>	尊重用户个人隐私是本网站的一项基本政策。所以，本网站一定不会在未经合法用户授权时公开、编辑或透露其注册资料及保存在本网站中的非公开内容，除非有法律许可要求或本网站在诚信的基础上认为透露这些信息在以下四种情况是必要的：<br />	(1) 遵守有关法律规定，遵从本网站合法服务程序。<br />	(2) 保持维护本网站的商标所有权。<br />	(3) 在紧急情况下竭力维护用户个人和社会大众的隐私安全。<br />	(4)符合其他相关的要求。<br />	本网站保留发布会员人口分析资询的权利。</p><h4>	8．用户的帐号、密码和安全性</h4><p>	你一旦注册成功成为用户，你将得到一个密码和帐号。如果你不保管好自己的帐号和密码安全，将负全部责任。另外，每个用户都要对其帐户中的所有活动和事件负全责。你可随时根据指示改变你的密码，也可以结束旧的帐户重开一个新帐户。用户同意若发现任何非法使用用户帐号或安全漏洞的情况，请立即通告本网站。</p><h4>	9． 拒绝提供担保</h4><p>	用户明确同意信息服务的使用由用户个人承担风险。 本网站不担保服务不会受中断，对服务的及时性，安全性，出错发生都不作担保，但会在能力范围内，避免出错。</p><h4>	10．有限责任</h4><p>	本网站对任何直接、间接、偶然、特殊及继起的损害不负责任，这些损害来自：不正当使用本网站服务，或用户传送的信息不符合规定等。这些行为都有可能导致本网站形象受损，所以本网站事先提出这种损害的可能性，同时会尽量避免这种损害的发生。</p><h4>	11．信息的储存及限制</h4><p>	本网站有判定用户的行为是否符合本网站服务条款的要求和精神的权利，如果用户违背本网站服务条款的规定，本网站有权中断其服务的帐号。</p><h4>	12．用户管理</h4><p>	<strong>用户必须遵循</strong>：<br />	(1) 使用信息服务不作非法用途。<br />	(2) 不干扰或混乱网络服务。<br />	(3) 遵守所有使用服务的网络协议、规定、程序和惯例。用户的行为准则是以因特网法规，政策、程序和惯例为根据的。</p><h4>	13．保障</h4><p>	用户同意保障和维护本网站全体成员的利益，负责支付由用户使用超出服务范围引起的律师费用，违反服务条款的损害补偿费用，其它人使用用户的电脑、帐号和其它知识产权的追索费。</p><h4>	14．结束服务</h4><p>	用户或本网站可随时根据实际情况中断一项或多项服务。本网站不需对任何个人或第三方负责而随时中断服务。用户若反对任何服务条款的建议或对后来的条款修改有异议，或对本网站服务不满，用户可以行使如下权利：<br />	(1) 不再使用本网站信息服务。<br />	(2) 通知本网站停止对该用户的服务。<br />	结束用户服务后，用户使用本网站服务的权利马上中止。从那时起，用户没有权利，本网站也没有义务传送任何未处理的信息或未完成的服务给用户或第三方。</p><h4>	15．通告</h4><p>	所有发给用户的通告都可通过重要页面的公告或电子邮件或常规的信件传送。服务条款的修改、服务变更、或其它重要事件的通告都会以此形式进行。</p><h4>	16．信息内容的所有权</h4><p>	本网站定义的信息内容包括：文字、软件、声音、相片、录象、图表；在广告中全部内容；本网站为用户提供的其它信息。所有这些内容受版权、商标、标签和其它财产所有权法律的保护。所以，用户只能在本网站和广告商授权下才能使用这些内容，而不能擅自复制、再造这些内容、或创造与内容有关的派生产品。</p><h4>	17．法律</h4><p>	本网站信息服务条款要与中华人民共和国的法律解释一致。用户和本网站一致同意服从本网站所在地有管辖权的法院管辖。如发生本网站服务条款与中华人民共和国法律相抵触时，则这些条款将完全按法律规定重新解释，而其它条款则依旧保持对用户的约束力。</p>'),(17,0,'2011-08-29 20:55:42','2011-08-29 20:55:42',2,NULL,NULL,NULL,6,NULL,0,'','','',100000,NULL,'隐私保护政策','<div class=\"pageWrap\">	<h4>		个人信息</h4>	一般情况下，您无须提供您的姓名或其它个人信息即可访问我们的站点。但有时我们可能需要您提供一些信息，例如为了处理订单、与您联系、提供预订服务或处理工作应聘。我们可能需要这些信息完成以上事务的处理或提供更好的服务。	<h4>		用途</h4>	<ol>		<li>			供我们网站交易和沟通等相关方使用，以满足您的订单等购物服务；</li>		<li>			用于与您保持联系，以开展客户满意度调查、市场研究或某些事务的处理；</li>		<li>			用于不记名的数据分析（例如点击流量数据）；</li>		<li>			帮助发展我们的业务关系（如果您是我们网站的业务合作伙伴或批发商）；</li>	</ol></div>'),(18,0,'2011-08-29 20:58:02','2011-08-29 20:58:02',0,NULL,NULL,NULL,7,NULL,0,'','','',100000,NULL,'退换货政策','<div class=\"pageWrap\"><p>	<span style=\"color: #3c3c3c\">普通商品退换货：<br />	1.退回商品与办理退换货的商品一致。<br />	2.商品有良好的外包装,未经过度使用,未经水洗,配饰、标签(包含赠品)等齐全。<br />	3.如整单退货，原订单有使用礼券支付，退款将优先退礼券至您账户，礼券在收到您退货后2个工作日添加到帐，到帐后有效期在原基础上延长1个月且礼 券保留原消费限额；如订单部分退货，礼券在收到您退货后2个工作日添加到帐，到帐后90天内有效（退货礼券无消费限制）。若订单为非质量问题而拒收的，则 原单中使用的礼券作废。<br />	4.如果订单中部分金额采用现金账户余额支付,在办理退款时,此部分金额仍退回至帐户中。<br />	5.为保障顾客的权益，乳贴、丝袜及内裤等个人贴身用品一经签收后不予办理退换货。<br />	<br />	化妆品退换货：<br />	1.我们保证商品的正规进货渠道和质量，非质量和保质期（已过期或2个月即将过期）问题，化妆品及个人护理用品不予退换货。如在使用过程中对商品质量表示置疑，请出具国家质量检测报告，我们会按照国家法律规定予以处理。<br />	2.因个人喜好(气味，色泽、型号，外观)和个人肤质不同要求的退换货将无法受理。<br />	3.如您验收商品时发现包装箱破损，且包裹内的商品存在破损、短缺、错误或表面质量问题等，请现场拒收包裹或致电客服中心联系。否则商品签收后，我们无法鉴定原因，不予办理退换货。</span></p></div>'),(19,0,'2011-08-29 20:59:34','2011-08-29 20:59:34',0,NULL,NULL,NULL,7,NULL,0,'','','',100000,NULL,'退换货邮费问题? ','<div class=\"pageWrap\"><p>	<span style=\"color: #3c3c3c\">因仓库无法接收到付，为了保证您的货物尽快到达，请您先行垫付运费，收到退换货商品后 将返还￥15元运费礼券至您的帐户（已开通上门退换货服务的北京、上海、广州、深圳等地统一返还￥10元运费礼券，港澳台及海外退货返还￥30元运 费礼券，同张订单仅限首次办理退换货时补贴运费）</span></p></div>'),(20,0,'2011-08-29 21:00:03','2011-08-29 21:00:03',2,NULL,NULL,NULL,8,NULL,0,'','','',100000,NULL,'系统升级通告','<p>	尊敬的用户，您好！</p><p>	　　为了给广大用户提供更好的服务，拟在 2010年 5月9日 12:30 － 14:00 做系统升级。</p><p>	　　届时，页面会出现暂时不能使用的情况。</p><p>	　　在此，衷心的感谢每位用户一贯以来对我们工作的支持和关 注。</p>'),(21,0,'2011-08-29 21:00:24','2017-06-03 21:17:17',1,NULL,NULL,NULL,8,NULL,0,'','','',100000,NULL,'5月8日暂停货品出库','<p>\r\n	<span>敬爱的顾客：<br />\r\n	我们将于下2017年5月8日进行内部货品盘点和整合，当天将暂停货品的出库，但是为了广大用户能够尽量在周一收到您 周六晚间和周日下午 16：00 前 生成的有效本地订单 (外环外和外地订单将在周日下午发出，具体配送时间根据订单所选的货运方式而定) ，将原有的上海外环线以内的一日二送改为一日一送的配送方式。 8月8日配送时间为上午9:00 至下午 18：00，由此为您带来的不便，还请您谅解。 届时我们将不提供上门自提，售后和送货等其他服务。 从2008年8月8日星期二起外环线以内的配送恢复为一日二送。 在此衷心的感谢各位顾客一贯以来对我们工作的支持和关注。</span></p>\r\n'),(22,0,'2011-08-29 21:00:44','2011-08-29 21:00:44',8,NULL,NULL,NULL,8,NULL,0,'','','',100000,NULL,'商品评论改版升级','<p>	首先，为了使得大家能更充分参与，我们将逐步放开对产品评论的资格限制， 顾客可以在购买商品后对商品进行评价，其他顾客还可以对评价进行是否好评的参与，得到较多用户好评的评论将得到更多的展示机会。</p>'),(23,0,'2011-08-29 21:01:09','2011-08-29 21:01:09',2,NULL,NULL,NULL,8,NULL,0,'','','',100000,NULL,'银行系统升级通告！','<p>	尊敬的顾客：</p><br /><p>	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 由于银行系统将于12.10号进行升级，因此在此期间，网上支付业务将会暂停，本网站将会暂停网上支付方式的订单，对此进行通告，谢谢您一贯的支持。</p>'),(24,0,'2011-08-29 21:01:34','2011-08-29 21:01:34',4,NULL,NULL,NULL,9,NULL,0,'','','',100000,NULL,'乐不思“暑”之买就送！','<p>	亲爱的顾客，</p><p>	<br />	可曾记得年幼时的&ldquo;强手棋&rdquo;？可曾记得游戏中的惊心动魄，乐趣无边。<br />	今年夏天，我们帮您重新回味儿时 的乐趣。</p><p>	<br />	即日起购买连衣裙、百褶裙、职业短裙等产品，均有机会获得太阳镜一副。<br />	数量有限，送完为止哦！</p>'),(25,0,'2011-08-29 21:01:54','2011-08-29 21:01:54',3,NULL,NULL,NULL,9,NULL,0,'','','',100000,NULL,'韩版Vivid服饰全场热卖！','<p>	多年来Vivid服饰积极深化在中国市场，将时尚生活与韩国元素带给中国消费者。本次Vivid服饰专场将奉献给广大网友性价比超高的韩版服饰，欢迎光临 卖场选购！</p>'),(26,0,'2011-08-29 21:02:11','2011-08-29 21:02:11',1,NULL,NULL,NULL,9,NULL,0,'','','',100000,NULL,'靓装搭配全攻略-今夏流行密码','<p>	流行密码一: 带有珠光感的橘粉色外套很阳光，特别的褶皱剪裁对于女人来说是显现个人气质的设计。</p><p>	流行密码二: 黑色是适合大众的颜色，小西服或者小夹克都可以选一款黑色，轻松的应对各种场合。</p><p>	流行密码三: 大大的项链吸引人的注意，也让平领的连衣裙更富有层次和变化，脖子短的MM强烈推荐这种装扮。</p>'),(27,0,'2011-08-29 21:02:30','2011-08-29 21:02:30',3,NULL,NULL,NULL,9,NULL,0,'','','',100000,NULL,'女士专场，任我选择!','<p>	集结了麦包包、宝姿（Ports）、迪奥（Dior）、美宝莲、香奈儿（Chanel）、杰克.琼斯（Jack &amp; Jones）等诸多知名品牌的服饰、包包，齐集商城专场，快来淘一款中意的爱衣吧！意想不到的价格让您清凉一&ldquo;吓&rdquo;。</p>'),(28,0,'2011-08-29 21:05:27','2011-08-29 21:05:27',0,NULL,NULL,NULL,10,NULL,0,'','','',100000,NULL,'隐私保护条款','<div class=\"pageWrap\">	<h4>		个人信息</h4>	一般情况下，您无须提供您的姓名或其它个人信息即可访问我们的站点。但有时我们可能需要您提供一些信息，例如为了处理订单、与您联系、提供预订服务或处理工作应聘。我们可能需要这些信息完成以上事务的处理或提供更好的服务。	<h4>		用途</h4>	<ol>		<li>			供我们网站交易和沟通等相关方使用，以满足您的订单等购物服务；</li>		<li>			用于与您保持联系，以开展客户满意度调查、市场研究或某些事务的处理；</li>		<li>			用于不记名的数据分析（例如点击流量数据）；</li>		<li>			帮助发展我们的业务关系（如果您是我们网站的业务合作伙伴或批发商）；</li>	</ol></div>'),(29,0,'2011-08-29 21:05:48','2011-08-29 21:05:48',0,NULL,NULL,NULL,10,NULL,0,'','','',100000,NULL,'会员注册协议','<p>	尊敬的用户，欢迎您注册成为本网站用户。在注册前请您仔细阅读如下服务条款：<br />	本服务协议双方为本网站与本网站用户，本服务协议具有合同效力。<br />	您确认本服务协议后，本服务协议即在您和本网站之间产生法律效力。请您务必在注册之前认真阅读全部服务协议内容，如有任何疑问，可向本网站咨询。<br />	无论您事实上是否在注册之前认真阅读了本服务协议，只要您点击协议正本下方的&quot;注册&quot;按钮并按照本网站注册程序成功注册为用户，您的行为仍然表示您同意并签署了本服务协议。</p><h4>	1．本网站服务条款的确认和接纳</h4><p>	本网站各项服务的所有权和运作权归本网站拥有。</p><h4>	2．用户必须：</h4><p>	(1)自行配备上网的所需设备， 包括个人电脑、调制解调器或其他必备上网装置。<br />	(2)自行负担个人上网所支付的与此服务有关的电话费用、 网络费用。</p><h4>	3．用户在本网站上交易平台上不得发布下列违法信息：</h4><p>	(1)反对宪法所确定的基本原则的；<br />	(2).危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的；<br />	(3).损害国家荣誉和利益的；<br />	(4).煽动民族仇恨、民族歧视，破坏民族团结的；<br />	(5).破坏国家宗教政策，宣扬邪教和封建迷信的；<br />	(6).散布谣言，扰乱社会秩序，破坏社会稳定的；<br />	(7).散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的；<br />	(8).侮辱或者诽谤他人，侵害他人合法权益的；<br />	(9).含有法律、行政法规禁止的其他内容的。</p><h4>	4． 有关个人资料</h4><p>	用户同意：<br />	(1) 提供及时、详尽及准确的个人资料。<br />	(2).同意接收来自本网站的信息。<br />	(3) 不断更新注册资料，符合及时、详尽准确的要求。所有原始键入的资料将引用为注册资料。<br />	(4)本网站不公开用户的姓名、地址、电子邮箱和笔名，以下情况除外：<br />	（a）用户授权本网站透露这些信息。<br />	（b）相应的法律及程序要求本网站提供用户的个人资料。如果用户提供的资料包含有不正确的信息，本网站保留结束用户使用本网站信息服务资格的权利。</p><h4>	5.用户在注册时应当选择稳定性及安全性相对较好的电子邮箱，并且同意接受并阅读本网站发往用户的各类电子邮件。如用户未及时从自己的电子邮箱接受电子邮件或因用户电子邮箱或用户电子邮件接收及阅读程序本身的问题使电子邮件无法正常接收或阅读的，只要本网站成功发送了电子邮件，应当视为用户已经接收到相关的电子邮件。电子邮件在发信服务器上所记录的发出时间视为送达时间。</h4><h4>	6． 服务条款的修改</h4><p>	本网站有权在必要时修改服务条款，本网站服务条款一旦发生变动，将会在重要页面上提示修改内容。如果不同意所改动的内容，用户可以主动取消获得的本网站信息服务。如果用户继续享用本网站信息服务，则视为接受服务条款的变动。本网站保留随时修改或中断服务而不需通知用户的权利。本网站行使修改或中断服务的权利，不需对用户或第三方负责。</p><h4>	7． 用户隐私制度</h4><p>	尊重用户个人隐私是本网站的一项基本政策。所以，本网站一定不会在未经合法用户授权时公开、编辑或透露其注册资料及保存在本网站中的非公开内容，除非有法律许可要求或本网站在诚信的基础上认为透露这些信息在以下四种情况是必要的：<br />	(1) 遵守有关法律规定，遵从本网站合法服务程序。<br />	(2) 保持维护本网站的商标所有权。<br />	(3) 在紧急情况下竭力维护用户个人和社会大众的隐私安全。<br />	(4)符合其他相关的要求。<br />	本网站保留发布会员人口分析资询的权利。</p><h4>	8．用户的帐号、密码和安全性</h4><p>	你一旦注册成功成为用户，你将得到一个密码和帐号。如果你不保管好自己的帐号和密码安全，将负全部责任。另外，每个用户都要对其帐户中的所有活动和事件负全责。你可随时根据指示改变你的密码，也可以结束旧的帐户重开一个新帐户。用户同意若发现任何非法使用用户帐号或安全漏洞的情况，请立即通告本网站。</p><h4>	9． 拒绝提供担保</h4><p>	用户明确同意信息服务的使用由用户个人承担风险。本网站不担保服务不会受中断，对服务的及时性，安全性，出错发生都不作担保，但会在能力范围内，避免出错。</p><h4>	10．有限责任</h4><p>	本网站对任何直接、间接、偶然、特殊及继起的损害不负责任，这些损害来自：不正当使用本网站服务，或用户传送的信息不符合规定等。这些行为都有可能导致本网站形象受损，所以本网站事先提出这种损害的可能性，同时会尽量避免这种损害的发生。</p><h4>	11．信息的储存及限制</h4><p>	本网站有判定用户的行为是否符合本网站服务条款的要求和精神的权利，如果用户违背本网站服务条款的规定，本网站有权中断其服务的帐号。</p><h4>	12．用户管理</h4><p>	<strong>用户必须遵循</strong>：<br />	(1) 使用信息服务不作非法用途。<br />	(2) 不干扰或混乱网络服务。<br />	(3) 遵守所有使用服务的网络协议、规定、程序和惯例。用户的行为准则是以因特网法规，政策、程序和惯例为根据的。</p><h4>	13．保障</h4><p>	用户同意保障和维护本网站全体成员的利益，负责支付由用户使用超出服务范围引起的律师费用，违反服务条款的损害补偿费用，其它人使用用户的电脑、帐号和其它知识产权的追索费。</p><h4>	14．结束服务</h4><p>	用户或本网站可随时根据实际情况中断一项或多项服务。本网站不需对任何个人或第三方负责而随时中断服务。用户若反对任何服务条款的建议或对后来的条款修改有异议，或对本网站服务不满，用户可以行使如下权利：<br />	(1) 不再使用本网站信息服务。<br />	(2) 通知本网站停止对该用户的服务。<br />	结束用户服务后，用户使用本网站服务的权利马上中止。从那时起，用户没有权利，本网站也没有义务传送任何未处理的信息或未完成的服务给用户或第三方。</p><h4>	15．通告</h4><p>	所有发给用户的通告都可通过重要页面的公告或电子邮件或常规的信件传送。服务条款的修改、服务变更、或其它重要事件的通告都会以此形式进行。</p><h4>	16．信息内容的所有权</h4><p>	本网站定义的信息内容包括：文字、软件、声音、相片、录象、图表；在广告中全部内容；本网站为用户提供的其它信息。所有这些内容受版权、商标、标签和其它财产所有权法律的保护。所以，用户只能在本网站和广告商授权下才能使用这些内容，而不能擅自复制、再造这些内容、或创造与内容有关的派生产品。</p><h4>	17．法律</h4><p>	本网站信息服务条款要与中华人民共和国的法律解释一致。用户和本网站一致同意服从本网站所在地有管辖权的法院管辖。如发生本网站服务条款与中华人民共和国法律相抵触时，则这些条款将完全按法律规定重新解释，而其它条款则依旧保持对用户的约束力。</p>'),(30,0,'2011-08-29 21:06:29','2017-06-03 21:19:48',12,NULL,NULL,NULL,10,NULL,0,'','','',100000,NULL,'关于我们','<div class=\"pageWrap\">\r\n	<div class=\"font11px\">\r\n		&nbsp;</div>\r\n	<p>\r\n		本商城是新一代专业消费服务网站。我们利用强大的全球化集约采购优势、丰富的电子商务管理服务经验和最先进的互联网技术为您提供最新最好的产品。</p>\r\n	<h4>\r\n		成立源起</h4>\r\n	在目前广大购物者渐渐对产品性价比要求越来越高的今天，我们发现必须有一套完善的采购经销体系，才能不断的提高产品质量同时降低产品价格，因此减少产品销售中间环节成本的增加势在必行。因此我们创办中国网上购物商城网站，让产品在网站上直接面对消费者，一方面网站可以提供比在商店购物中更为详尽的资料、历史渊源以及顾客评论等信息，顾客可以方便的从琳琅满目的各类商品中快速查询出需要的产品；另一方面也大大的减少商店运营成本，将价格实惠转让给顾客。\r\n	<h4>\r\n		定位</h4>\r\n	本商城所登陆的商品全部是经过我们在千百种产品中精挑细选出的精品，每一件商品都有自己的特色，每件产品在登陆之前都经过网站编辑的层层筛选，这个将是我们自始至终所坚定的服务原则。\r\n	<h4>\r\n		承诺</h4>\r\n	我们承诺提供权威的资讯、最低的价格和便捷的购物方式，为您打造全新的e时代购物新体验！我们承诺严格按照国家法规政策正规经营，经营的产品皆为正规渠道引进合法缴税的原装正品，有着完善的保修、退货与售后服务制度。为了让您更准确全面的了解您所需要的商品，我们的每一件商品都提供100%实样的高清晰数码照片、详尽的技术性能指标和制造厂商的介绍。同时采用多种便捷的支付方式和安全快速的配送体系，通过先进的互联网技术进行订单的实时跟踪，并保证每一位客户资料的安全与保密。</div>\r\n'),(31,0,'2011-08-29 21:07:04','2011-08-29 21:07:04',0,NULL,NULL,NULL,10,NULL,0,'','','',100000,NULL,'联系我们','<div class=\"pageWrap\">	<h2>		联系我们</h2>	<div class=\"font11px\">		<span style=\"font-size: 9pt; color: rgb(102, 102, 102); font-family: 宋体;\"><strong><span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\">修改本区域内容，请到</span><span style=\"font-size: 10.5pt; color: red; font-family: Times New Roman;\"> </span><span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\">商店管理后台</span><span lang=\"EN-US\" style=\"font-size: 10.5pt; color: red; font-family: Times New Roman;\"> <span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\">&gt;&gt;</span>&nbsp;页面管理<span lang=\"EN-US\" style=\"font-size: 10.5pt; color: red; font-family: Times New Roman;\"> <span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\">&gt;&gt; </span>站点栏目</span></span><span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\"> &gt;&gt;</span><span lang=\"EN-US\" style=\"font-size: 10.5pt; color: red; font-family: Times New Roman;\">&nbsp; 联系我们&nbsp; </span><span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\">进行编辑</span></strong></span></div>	<p>		热心细致的服务态度打造温暖亲切的购物氛围。</p>	<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"liststyle data\" width=\"100%\">		<tbody>			<tr>				<th>					服务热线：</th>				<td>					021-8****818&nbsp;&nbsp;<span class=\"g\"><font color=\"#666666\">(工作时间竭诚为您服务)<br />					热线服务时间：<br />					周一～周五 09：00－18：00<br />					周六、周日以及公共假期 12：00－17：00</font></span></td>			</tr>			<tr>				<th>					电子邮箱：</th>				<td>					<a href=\"mailto:storesupport@ourstore.com.cn.net\">storesupport@ourstore.com.cn.net</a></td>			</tr>			<tr>				<th>					商店留言：</th>				<td>					您可以点击&ldquo;商店留言&rdquo;将您的意见和建议提给我们。</td>			</tr>			<tr>				<th>					地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 址：</th>				<td>					上海市虹桥路333号405室</td>			</tr>			<tr>				<th>					邮政编码：</th>				<td>					200020</td>			</tr>		</tbody>	</table></div>'),(32,0,'2011-08-29 21:07:30','2011-08-30 01:51:55',7,NULL,NULL,NULL,10,NULL,0,'','','',100000,NULL,'招聘信息','<div class=\"pageWrap\">	<h4>		我的工作！</h4>	<ul class=\"list\">		<li>			中国电子商务发展的领跑者；</li>		<li>			面向全世界的网上消费者提供几十个类别共计百万种商品；</li>		<li>			方便超值的网络购物，每天让近千万的网上消费者轻松得到精神和物质上的收获，让你的生活更多愉悦；</li>	</ul>	<h4>		快来加入！</h4>	或许我们曾经陌路，或许我们曾经是对手，但我们可能是更好的工作伙伴。<br />	这里将给予你飞翔的天空、畅游的海洋、驰骋的疆土。<br />	这里是一个任由你发挥创造的平台！<br />	这里所需要的仅仅是你的热忱与才智！<br />	诚邀加盟，一起收获！共同愉悦！</div>'),(33,0,'2011-08-29 21:07:52','2011-08-30 01:52:03',5,NULL,NULL,NULL,10,NULL,0,'','','',100000,NULL,'业务合作','<div class=\"pageWrap\">	<div class=\"font11px\">		<span style=\"font-size: 9pt; color: rgb(102, 102, 102); font-family: 宋体;\"><strong><span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\">修改本区域内容，请到</span><span style=\"font-size: 10.5pt; color: red; font-family: Times New Roman;\"> </span><span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\">商店管理后台</span><span lang=\"EN-US\" style=\"font-size: 10.5pt; color: red; font-family: Times New Roman;\"> <span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\">&gt;&gt;</span>&nbsp;页面管理<span lang=\"EN-US\" style=\"font-size: 10.5pt; color: red; font-family: Times New Roman;\"> <span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\">&gt;&gt; </span>站点栏目</span></span><span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\"> &gt;&gt;</span><span lang=\"EN-US\" style=\"font-size: 10.5pt; color: red; font-family: Times New Roman;\">&nbsp; 业务合作&nbsp; </span><span style=\"font-size: 10.5pt; color: red; font-family: 宋体;\">进行编辑</span></strong></span></div>	<h4>		媒体/广告合作</h4>	<ul class=\"list\">		<li>			联系人：张先生</li>		<li>			联系方式：021-62288</li>		<li>			合作范围：媒体活动宣传、内容合作、广告投放</li>		<li>			&nbsp;</li>	</ul>	<h4>		招商咨询</h4>	<ul class=\"list\">		<li>			联系人：陈先生</li>		<li>			联系方式：021-611-809</li>		<li>			合作范围：品牌服饰入驻及在线市场推广服务</li>	</ul></div>'),(34,0,'2011-08-29 21:11:54','2011-08-29 22:31:45',0,NULL,NULL,NULL,11,NULL,0,'','','',100000,NULL,'页脚帮助中心','  	<div class=\"list\">		<h4>新手上路</h4>		<ul>			<li><a href=\"help-3-5.html\">顾客必读</a></li>			<li><a href=\"help-3-4.html\">会员等级折扣</a></li>			<li><a href=\"help-3-3.html\">订单的几种状态</a></li>			<li><a href=\"help-3-2.html\">积分奖励计划</a></li>			<li><a href=\"help-3-1.html\">商品退货保障</a></li>		</ul>	</div>  	<div class=\"list\">		<h4>支付/配送方式</h4>		<ul>			<li><a href=\"help-5-15.html\">支付方式</a></li>			<li><a href=\"help-5-14.html\">配送方式</a></li>			<li><a href=\"help-5-13.html\">我的订单何时出库?</a></li>			<li><a href=\"help-5-12.html\">网上支付小贴士</a></li>			<li><a href=\"help-5-11.html\">关于送货和验货</a></li>		</ul>	</div>	<div class=\"list\">		<h4>购物条款</h4>		<ul>			<li><a href=\"help-6-17.html\">隐私保护政策</a></li>			<li><a href=\"help-6-16.html\">注册服务条款</a></li>		</ul>	</div>	<div class=\"list\">		<h4>购物指南</h4>		<ul>			<li><a href=\"help-4-10.html\">非会员购物通道</a></li>			<li><a href=\"help-4-9.html\">体贴的售后服务</a></li>			<li><a href=\"help-4-8.html\">网站使用条款</a></li>			<li><a href=\"help-4-7.html\">免责条款</a></li>			<li><a href=\"help-4-6.html\">简单的购物流程</a></li>		</ul>	</div>	<div class=\"list\">		<h4>退换货服务</h4>		<ul>			<li><a href=\"help-7-18.html\">退换货政策</a></li>			<li><a href=\"help-7-19.html\">退换货邮费问题</a></li>			<li><a href=\"help-7-36.html\">退换货流程</a></li>		</ul>	</div>'),(35,0,'2011-08-29 21:12:34','2011-08-30 01:53:27',0,NULL,NULL,NULL,11,NULL,0,'','','',100000,NULL,'页脚底部链接','<p>	<a href=\"article-10-30.html\">关于我们</a>| <a href=\"contactus.html\">联系我们</a>| <a href=\"article-10-32.html\">招聘信息</a>| <a href=\"articleList-8-1.html\">最新公告</a>| <a href=\"articleList-9-1.html\">促销信息</a>| <a href=\"article-10-33.html\">业务合作</a>| <a href=\"#\">站点地图</a></p>'),(36,0,'2011-08-29 22:30:59','2011-08-29 22:30:59',0,NULL,NULL,NULL,7,NULL,0,'','','',100000,NULL,'退换货流程','<p>	<span style=\"color: #3c3c3c\">退换货操作指南：<br />	1.同款商品更换尺码、颜色，选择办理换货。<br />	2.如需更换其他款商品，请将需换货的商品选择办理退货，待退货完成后重新订购需要更换的商品即可。<br />	3.订单中的多件商品部分需要更换，部分需要退货，请将全部商品办理退货，将所有商品一并退回，待商品退回、款项存入梦芭莎账户后重新订购需要更换的商品即可。</span></p>');
/*!40000 ALTER TABLE `es_en_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_favorite`
--

DROP TABLE IF EXISTS `es_favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_favorite` (
  `favorite_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `goods_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`favorite_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_favorite`
--

LOCK TABLES `es_favorite` WRITE;
/*!40000 ALTER TABLE `es_favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_freeoffer`
--

DROP TABLE IF EXISTS `es_freeoffer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_freeoffer` (
  `fo_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `fo_category_id` mediumint(8) DEFAULT NULL,
  `fo_name` varchar(50) DEFAULT NULL,
  `publishable` smallint(6) DEFAULT '0' COMMENT '0:是1:否',
  `recommend` smallint(6) DEFAULT '1',
  `sorder` smallint(6) DEFAULT NULL,
  `limit_purchases` smallint(6) DEFAULT NULL,
  `startdate` bigint(20) DEFAULT NULL,
  `enddate` bigint(20) DEFAULT NULL,
  `lv_ids` varchar(50) DEFAULT NULL,
  `price` decimal(20,3) DEFAULT NULL,
  `synopsis` varchar(255) DEFAULT NULL,
  `list_thumb` longtext,
  `pic` longtext,
  `score` mediumint(8) DEFAULT NULL,
  `weight` decimal(20,3) DEFAULT NULL,
  `repertory` mediumint(8) DEFAULT NULL,
  `descript` text,
  `disabled` smallint(6) DEFAULT '0' COMMENT '0:正常;1:回收站',
  PRIMARY KEY (`fo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_freeoffer`
--

LOCK TABLES `es_freeoffer` WRITE;
/*!40000 ALTER TABLE `es_freeoffer` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_freeoffer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_freeoffer_category`
--

DROP TABLE IF EXISTS `es_freeoffer_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_freeoffer_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) DEFAULT NULL,
  `publishable` smallint(6) DEFAULT '0' COMMENT '0:是1:否',
  `sorder` int(11) DEFAULT NULL,
  `disabled` smallint(6) DEFAULT '0' COMMENT '0:正常;1:回收站',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_freeoffer_category`
--

LOCK TABLES `es_freeoffer_category` WRITE;
/*!40000 ALTER TABLE `es_freeoffer_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_freeoffer_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_friends_link`
--

DROP TABLE IF EXISTS `es_friends_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_friends_link` (
  `link_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_friends_link`
--

LOCK TABLES `es_friends_link` WRITE;
/*!40000 ALTER TABLE `es_friends_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_friends_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_gnotify`
--

DROP TABLE IF EXISTS `es_gnotify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_gnotify` (
  `gnotify_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) unsigned DEFAULT NULL,
  `member_id` mediumint(8) unsigned DEFAULT NULL,
  `product_id` mediumint(8) unsigned DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `status` enum('ready','send','progress') NOT NULL DEFAULT 'ready',
  `send_time` bigint(8) unsigned DEFAULT NULL,
  `create_time` bigint(8) unsigned DEFAULT NULL,
  `disabled` enum('false','true') NOT NULL DEFAULT 'false',
  `remark` longtext,
  PRIMARY KEY (`gnotify_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_gnotify`
--

LOCK TABLES `es_gnotify` WRITE;
/*!40000 ALTER TABLE `es_gnotify` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_gnotify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_goods`
--

DROP TABLE IF EXISTS `es_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_goods` (
  `goods_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `sn` varchar(200) DEFAULT NULL,
  `brand_id` mediumint(8) DEFAULT NULL,
  `cat_id` mediumint(8) DEFAULT NULL,
  `type_id` mediumint(8) DEFAULT NULL,
  `goods_type` enum('normal','bind') DEFAULT 'normal',
  `unit` varchar(20) DEFAULT NULL,
  `weight` decimal(20,3) DEFAULT NULL,
  `market_enable` smallint(1) DEFAULT NULL COMMENT '0为未上架\n            1为上架了\n            ',
  `image_default` longtext COMMENT '用于显示在列表上的',
  `image_file` longtext COMMENT '商品相册中的图片',
  `brief` varchar(255) DEFAULT NULL,
  `intro` longtext,
  `price` decimal(20,3) DEFAULT NULL,
  `cost` decimal(20,3) DEFAULT NULL,
  `mktprice` decimal(20,3) DEFAULT NULL,
  `params` longtext,
  `specs` longtext,
  `have_spec` smallint(1) DEFAULT NULL,
  `adjuncts` longtext,
  `create_time` bigint(8) DEFAULT NULL,
  `last_modify` bigint(8) DEFAULT NULL,
  `view_count` int(10) DEFAULT NULL,
  `buy_count` int(10) DEFAULT NULL,
  `disabled` smallint(1) DEFAULT NULL,
  `store` mediumint(8) DEFAULT NULL,
  `point` int(10) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(1000) DEFAULT NULL,
  `meta_description` varchar(1000) DEFAULT NULL,
  `p20` varchar(255) DEFAULT NULL,
  `p19` varchar(255) DEFAULT NULL,
  `p18` varchar(255) DEFAULT NULL,
  `p17` varchar(255) DEFAULT NULL,
  `p16` varchar(255) DEFAULT NULL,
  `p15` varchar(255) DEFAULT NULL,
  `p14` varchar(255) DEFAULT NULL,
  `p13` varchar(255) DEFAULT NULL,
  `p12` varchar(255) DEFAULT NULL,
  `p11` varchar(255) DEFAULT NULL,
  `p10` varchar(255) DEFAULT NULL,
  `p9` varchar(255) DEFAULT NULL,
  `p8` varchar(255) DEFAULT NULL,
  `p7` varchar(255) DEFAULT NULL,
  `p6` varchar(255) DEFAULT NULL,
  `p5` varchar(255) DEFAULT NULL,
  `p4` varchar(255) DEFAULT NULL,
  `p3` varchar(255) DEFAULT NULL,
  `p2` varchar(255) DEFAULT NULL,
  `p1` varchar(255) DEFAULT NULL,
  `sord` int(11) DEFAULT '0',
  `have_field` smallint(1) DEFAULT '0',
  `isgroup` smallint(1) DEFAULT '0',
  `islimit` smallint(1) DEFAULT '0',
  `grade` int(11) DEFAULT '0',
  PRIMARY KEY (`goods_id`),
  KEY `goods_cat_id` (`cat_id`),
  KEY `gppds_brand_id` (`brand_id`),
  KEY `goods_name` (`name`),
  KEY `goods_sn` (`sn`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_goods`
--

LOCK TABLES `es_goods` WRITE;
/*!40000 ALTER TABLE `es_goods` DISABLE KEYS */;
INSERT INTO `es_goods` VALUES (1,'蝶恋刺绣舒适挺拔文胸','G20100514053945',1,6,1,'normal',NULL,0.000,1,'http://static.enationsoft.com/attachment/moonbasa/goods/201005181759232054.jpg','http://static.enationsoft.com/attachment/moonbasa/goods/201005181759232054.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005181759231245.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005181759245399.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005181759243337.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005181759243090.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005181759246791.jpg',NULL,'<p>	&nbsp;</p><p>	<li class=\"detail\">		&nbsp;		<dl>			<dt>				<b>国际最新蝶形设计文胸 热掀2010人气新高</b></dt>			<dt>				<b>超低零鸡心 加宽侧比 将丰满、性感二合一 </b></dt>		</dl>		<ul style=\"margin-top: 0pt;\">			<li>				<b>独特零鸡心 锁定性感焦点:</b>梦芭莎革命性零鸡心设计，将鸡心距离成功由10mm缩窄至0mm，性感更集中，轻松塑造深V乳沟视觉，为你锁定性感焦点，挑战女性性感极限。</li>			<li>				<b>宽侧比设计 立体侧推抬托:</b>宽侧比设计，有效地将腋下脂肪与副乳调拨侧推至胸前，造就立体侧推抬托的完美上身效果。两侧赘肉通通消失不见，坚挺美胸更加凸显。</li>			<li>				<b>金丝蝶翼刺绣 舒适又典雅:</b>蝴蝶造型美型文胸，特别添加金丝刺绣，制造赏心悦目的华贵美感，呈现一流舒适贴身的穿着感受，妆点出浪漫而典雅的女性气质。</li>		</ul>		<dl>		</dl>		<table bgcolor=\"#000000\" border=\"0\" cellpadding=\"0\" cellspacing=\"1\" style=\"font-size: 9pt;\">			<tbody>				<tr align=\"center\">					<td bgcolor=\"#ffffff\" height=\"14\" width=\"80\">						尺 寸 约</td>					<td bgcolor=\"#ffffff\" width=\"70\">						&nbsp;</td>					<td bgcolor=\"#ffffff\" width=\"70\">						&nbsp;</td>					<td bgcolor=\"#ffffff\" width=\"70\">						&nbsp;</td>				</tr>				<tr align=\"center\">					<td bgcolor=\"#ffffff\" height=\"14\" width=\"80\">						胸围（68-72）</td>					<td bgcolor=\"#ffffff\" width=\"70\">						70A</td>					<td bgcolor=\"#ffffff\" width=\"70\">						70B</td>					<td bgcolor=\"#ffffff\" width=\"70\">						70C</td>				</tr>				<tr align=\"center\">					<td bgcolor=\"#ffffff\" height=\"14\" width=\"80\">						胸围（73-77）</td>					<td bgcolor=\"#ffffff\" width=\"70\">						75A</td>					<td bgcolor=\"#ffffff\" width=\"70\">						75B</td>					<td bgcolor=\"#ffffff\" width=\"70\">						75C</td>				</tr>				<tr align=\"center\">					<td bgcolor=\"#ffffff\" height=\"14\" width=\"80\">						胸围（78-82）</td>					<td bgcolor=\"#ffffff\" width=\"70\">						80A</td>					<td bgcolor=\"#ffffff\" width=\"70\">						80B</td>					<td bgcolor=\"#ffffff\" width=\"70\">						80C</td>				</tr>				<tr align=\"center\">					<td bgcolor=\"#ffffff\" height=\"14\" width=\"80\">						胸围（83-87）</td>					<td bgcolor=\"#ffffff\" width=\"70\">						85A</td>					<td bgcolor=\"#ffffff\" width=\"70\">						85B</td>					<td bgcolor=\"#ffffff\" width=\"70\">						85C</td>				</tr>			</tbody>		</table>	</li></p>',99.000,40.000,559.000,'[]','',1,NULL,1273829985021,1273829985021,0,0,0,5,0,'蝶恋刺绣舒适挺拔文胸','蝶恋刺绣舒适挺拔文胸','蝶恋刺绣舒适挺拔文胸',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'棉100%','26%氨纶 74%锦纶','12%氨纶 88%锦纶','55%涤纶 40%锦纶 5%氨纶 ',0,0,0,0,0),(2,'凤尾花边玲珑杯晚礼装文胸','G20100514060836',1,6,1,'normal',NULL,0.000,1,'http://static.enationsoft.com/attachment/moonbasa/goods/201005181759559038.jpg','http://static.enationsoft.com/attachment/moonbasa/goods/201005181759559038.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005181759555952.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005181759551310.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005181759553479.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005181759559582.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005181759557716.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005181759567092.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005181759563048.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005181759568563.jpg',NULL,'<p>	&nbsp;</p><p>	<li class=\"detail\">		&nbsp;		<dl>			<dt>				<b>时尚塑身新潮流</b></dt>			<dt>				<b>A&mdash;C杯女性 立变丰满集中</b></dt>		</dl>		<ul style=\"margin-top: 0pt;\">			<li>				<b>时尚绕颈款 名媛争相斗艳新法宝:</b>风靡时尚界、名媛圈的流行内衣新宠,全新绕颈款式,演绎性感简约风尚,完全摆脱以往文胸肩带设计的累赘、不够美观等缺点,轻松的一挂,稳固穿戴而尽显时尚,展露美丽的肩背风情,百搭各种露背外衣.可调节双肩带设计,长短自由变化;</li>			<li>				<b>低鸡心交叉下扒 小胸也变得性感:</b>创新的剪裁手法,让小胸MM也可以变得性感.文胸特别采用交叉式下扒,除了在视觉给人优雅美感外,能更有效地拉紧双乳距离,创造零距离的集中效果;超低鸡心设计,塑造迷人、性感乳沟，让小胸MM也能拥有绝美的深V诱惑;</li>			<li>				<b>玲珑杯上托聚拢 瞬间包覆集中:</b>独创玲珑杯型,尤其适合小胸的MM穿戴,渐厚式罩杯设计,将胸部自然承托、上推,瞬间塑造理想美胸,有效防止胸部下垂、外扩,变得丰满而挺拔,让你更加拥有女性的自信与魅力;</li>			<li>				<b>超高比位 完美收紧腋下背部赘肉:</b>文胸比位比一般文胸高约3公分,有效地将腋下以及背部的赘肉收紧,并将之侧推转移至杯内,充盈胸线高度,令上身更显丰满圆润、紧致玲珑;</li>			<li>				<b>柔滑舒适面料 进口花边华美典雅:</b>精选高档弹力面料,柔滑舒适;精美绝伦的西班牙进口花边,特别镶雕闪光细丝,令文胸品质全面提升,为你增添一份奢华高贵的气质.可搭配长裙,演绎女神般的高雅;</li>		</ul>		<dl>		</dl>	</li></p>',168.000,90.000,698.000,'[]','',1,NULL,1273831716339,1273831716339,0,0,0,5,0,'凤尾花边玲珑杯晚礼装文胸','凤尾花边玲珑杯晚礼装文胸','凤尾花边玲珑杯晚礼装文胸',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'锦纶75.6% 氨纶24.4%','','氨纶20% 涤纶80% ','',0,0,0,0,0),(3,'立体绣花超细纤维塑身文胸','G20100514061525',1,6,1,'normal',NULL,0.000,1,'http://static.enationsoft.com/attachment/moonbasa/goods/201005181704252015.jpg','http://static.enationsoft.com/attachment/moonbasa/goods/201005181704252015.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005181704254100.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005181704266259.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005181704264713.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005181704268072.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005181704260829.jpg',NULL,'<p>	&nbsp;</p><p>	<li class=\"detail\">		&nbsp;		<dl>			<dt>				<b>日本时尚超细纤维文胸</b></dt>			<dt>				<b>柔洁光面配立体绣花性感舒适 优雅曼丽</b></dt>		</dl>		<ul style=\"margin-top: 0pt;\">			<li>				<b>风靡日本 超人气原版正品:</b>风靡日本千万女性的最新杯形，梦芭莎原版原单正品引入，时尚不凡的设计风格，进口超细纤维面料制成，精美的立体绣花蕾丝修饰，带来全新舒适的贴肤感，打造性感动人的魅力，尽显优雅曼丽的女性气质。</li>			<li>				<b>超细纤维面料 高品质超舒适:</b>文胸采用全新超细纤维面料，极力打造新一代高品质文胸典范，具有柔软、细滑、透气、亲肤等优点，穿着倍感舒适，为敏感脆弱的胸部带来最佳的呵护。</li>			<li>				<b>渐厚模杯设计 有效托胸聚胸:</b>杯碗采用渐厚设计，最大限度贴合人体与乳房节后，有效托高胸部，并具有良好的集中效果，瞬间修饰出完美坚挺的胸型。</li>			<li>				<b>立体绣花光杯 完美内搭穿着:</b>时尚简洁的光面杯形，光滑无痕，轻盈舒适，具有非常优良的搭配特性，随心搭配外穿不露痕，立体绣花蕾丝镶饰，则为你增添一份优雅而曼丽的女性气质。</li>		</ul>		<dl>		</dl>		<table bgcolor=\"#000000\" border=\"0\" cellpadding=\"0\" cellspacing=\"1\" style=\"font-size: 9pt;\">			<tbody>				<tr align=\"center\">					<td bgcolor=\"#ffffff\" height=\"14\" width=\"80\">						尺 寸 约</td>					<td bgcolor=\"#ffffff\" width=\"70\">						&nbsp;</td>					<td bgcolor=\"#ffffff\" width=\"70\">						&nbsp;</td>				</tr>				<tr align=\"center\">					<td bgcolor=\"#ffffff\" height=\"14\" width=\"80\">						胸围（68-72）</td>					<td bgcolor=\"#ffffff\" width=\"70\">						70A</td>					<td bgcolor=\"#ffffff\" width=\"70\">						70B</td>				</tr>				<tr align=\"center\">					<td bgcolor=\"#ffffff\" height=\"14\" width=\"80\">						胸围（73-77）</td>					<td bgcolor=\"#ffffff\" width=\"70\">						75A</td>					<td bgcolor=\"#ffffff\" width=\"70\">						75B</td>				</tr>				<tr align=\"center\">					<td bgcolor=\"#ffffff\" height=\"14\" width=\"80\">						胸围（78-82）</td>					<td bgcolor=\"#ffffff\" width=\"70\">						80A</td>					<td bgcolor=\"#ffffff\" width=\"70\">						80B</td>				</tr>				<tr align=\"center\">					<td bgcolor=\"#ffffff\" height=\"14\" width=\"80\">						胸围（83-87）</td>					<td bgcolor=\"#ffffff\" width=\"70\">						85A</td>					<td bgcolor=\"#ffffff\" width=\"70\">						85B</td>				</tr>			</tbody>		</table>	</li></p>',99.000,40.000,499.000,'[]','',1,NULL,1273832125755,1273832125755,0,0,0,5,0,'立体绣花超细纤维塑身文胸','立体绣花超细纤维塑身文胸','立体绣花超细纤维塑身文胸',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'棉100%','26%氨纶 74%锦纶','25%氨纶 75%锦纶','61%涤纶、39%尼龙',0,0,0,0,0),(4,'一片式隐形塑型文胸','G20100514063905',1,6,1,'normal',NULL,0.000,1,'http://static.enationsoft.com/attachment/moonbasa/goods/201005141837256199.jpg','http://static.enationsoft.com/attachment/moonbasa/goods/201005141837256199.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005141837254414.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005141837252717.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005141837251074.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005141837251409.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005141837254868.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005141837256314.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005142129019172.jpg',NULL,'<p>	&nbsp;</p><p>	<li class=\"detail\">		&nbsp;		<dl>			<dt>				<b>第三代革命一片式隐形塑形文胸.全新掌托式渐厚杯形,塑造超越想象的丰满效果:集中、丰满、性感!</b></dt>		</dl>		<ul style=\"margin-top: 0pt;\">			<li>				<b>掌托式渐厚杯形 定型托高 瞬间丰满:</b>高碗位设计,有效提高胸线.杯内凹槽结构采用掌托式的设计,最大限度贴合乳房曲线,如有一只手掌时刻握托着胸部下方,带来前所未有的穿戴舒适度.渐厚杯形设计,更好的定型聚胸,将胸线水平自然推高数公分,尤其适合小胸MM穿着;</li>			<li>				<b>隐形一片式 和压力、压痕说BYE:</b>传统的文胸,由于制作工艺,在鸡心(1点)、钢丝(2点)、腋下(2点)会形成5大压力,不但会产生压痕,严重时还会感觉压抑胸闷.此款文胸采用升级的一片式技术,毫无缝线,释放5大压力点,让您尽情体验无拘无束的贴身感受;</li>			<li>				<b>革命性零鸡心 让胸部更集中:</b>采用国际最新科技,将普通文胸的12mm鸡心成功缩窄到零,搭配渐进厚杯,再次挑战性感极限,塑造出极致丰盈的胸部效果;</li>			<li>				<b>加长型胶骨设计 尽收腋下脂肪:</b>比位胶骨特作加长设计,有效地将腋下多余的脂肪调拔侧推至前胸,让胸部更显丰盈圆润,同时在夏天里更好与小背心、紧身衣相搭,赘肉通通不见,坚挺美胸更加凸显;</li>			<li>				<b>蝶形下扒隐形钢圈 双重稳定双重舒适:</b>独特的蝶形下扒,能将文胸稳稳固定,即使运动都不移位!特有的隐形钢圈设计,杜绝了传统钢圈导致的压痕、过敏,穿着双倍舒适;</li>			<li>				<b>五排扣加长设计 避免尺码不合可能:</b>特有的加长五排扣设计,将尺码调节幅度增大30%,最外排扣和最里排扣有2个尺码的调节空间,避免了尺码不合的可能,消费者可根据自己的身形尽情调节,甚至达到100%合适状态,选购后无后顾之忧。</li>		</ul>		<dl>		</dl>	</li></p>',99.000,40.000,298.000,'[]','',1,NULL,1273833545780,1273833545780,0,0,0,5,0,'一片式隐形塑型文胸','一片式隐形塑型文胸','一片式隐形塑型文胸',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','','锦纶80%,氨纶20% ',0,0,0,0,0),(5,'高比位强侧推聚拢文胸','G20100514064445',2,7,1,'normal',NULL,0.000,1,'http://static.enationsoft.com/attachment/moonbasa/goods/201005141842059082.jpg','http://static.enationsoft.com/attachment/moonbasa/goods/201005141842059082.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005141842055761.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005141842053718.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005141842059154.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005141842053153.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005141842054811.jpg',NULL,'',45.000,18.000,139.000,'[]','',1,NULL,1273833885596,1273833885596,0,0,0,5,0,'高比位强侧推聚拢文胸','高比位强侧推聚拢文胸','高比位强侧推聚拢文胸',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'65%涤纶 35%棉','','80%锦纶 20%弹力纤维 ','',0,0,0,0,0),(6,'闪光玻璃纱性感文胸','G20100517115259',2,8,1,'normal',NULL,0.000,1,'http://static.enationsoft.com/attachment/moonbasa/goods/201005171400033838.jpg','http://static.enationsoft.com/attachment/moonbasa/goods/201005171400033838.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005171400034778.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005171400044520.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005171400043562.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005171400043183.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005171400046316.jpg',NULL,'<li class=\"detail\"> <br />	            <dl><dt><b>丰满MM的轻薄塑身选择!</b></dt><dt>最轻薄,最透气,塑身也轻松.超强集中效果,每一个试穿过的女性都由衷赞叹!</dt></dl><ul style=\"margin-top:0pt;\"><li><b>感受世界上最轻薄、最透气的面料,塑身也轻松:</b>采用世界一流的玻璃纱面料,密度稀疏、空隙清晰、手感柔爽,具有超强的透气性,穿着毫不闷热,让塑身变得轻松舒适,成为一种愉快的享受;</li><li><b>3D立体剪裁,瞬间提胸,全新体验:</b>创新的3D立体剪裁,有效包覆承托胸部,聚拢提胸包容好.加宽比位与高夹弯设计,有效将背部和腋下的赘肉推向胸部,让胸部瞬间呈现丰满挺拔的视觉美感.柔软下扒贴身舒适,稳固支撑不移位;</li><li><b>西班牙进口镂空刺绣,增添华美气质:</b>西班牙进口蕾丝花边,华美光泽呈现出上佳的品质,镂空设计性感透气;轻盈柔滑的触感,着身更服贴、更舒适,胸部视觉更显妩媚动人,为你增添高贵华美的气质;</li></ul>	          	            	            </li>',169.000,99.000,369.000,'[]','',1,NULL,1274068379933,1274068379933,0,0,0,10,0,'闪光玻璃纱性感文胸','闪光玻璃纱性感文胸','闪光玻璃纱性感文胸',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','',0,0,0,0,0),(7,'锦绣凤尾花边塑身抹胸','G20100517120007',2,7,1,'normal',NULL,0.000,1,'http://static.enationsoft.com/attachment/moonbasa/goods/201005171359358897.jpg','http://static.enationsoft.com/attachment/moonbasa/goods/201005171359358897.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005171359357239.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005171359360210.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005171359369475.jpg',NULL,'<li class=\"detail\"> <br />	            <dl><dt><b>精致模杯抹胸内衣</b></dt><dt><b>无痕舒适 塑造完美胸型凤尾刺绣 彰显奢华典雅</b></dt></dl><ul style=\"margin-top:0pt;\"><li><b>圆润丰挺美胸 一穿即显:</b>文胸采用全新立体模杯，完美承托包覆胸部，令胸部集中、性感、不臃肿。可插垫设计，可随心插放胸垫，将胸线自然加高；高鸡心位设计，更稳固更好承托效果，圆润丰挺的美胸视觉，瞬间呈现出来。</li><li><b>无痕贴身舒适 靓丽配搭:</b>文胸采用优质防黄海棉热压定型而成，杯型圆润流畅，符合人体学，穿着更加舒适，杯里百分百棉面料，柔软透气。无痕贴身，更好与外衣搭配，锦绣凤尾刺绣，彰显奢华典雅的气质。</li><li><b>两穿肩带设计 多样魅力:</b>两穿肩带设计，时尚又实用，秀出多样的风情魅力。穿上文胸肩带，增强对胸部的提拉作用，令穿戴更稳定，卸下肩带轻松舒适，方便与露肩或露背外衣搭配。</li></ul><dl></dl><table style=\"font-size:9pt;\" bgcolor=\"#000000\" border=\"0\" cellpadding=\"0\" cellspacing=\"1\">  <tbody><tr align=\"center\">    <td bgcolor=\"#ffffff\" width=\"80\" height=\"14\">尺 寸 约</td>    <td bgcolor=\"#ffffff\" width=\"70\"></td>    <td bgcolor=\"#ffffff\" width=\"70\"></td>    <td bgcolor=\"#ffffff\" width=\"70\"></td>     </tr>  <tr align=\"center\">    <td bgcolor=\"#ffffff\" width=\"80\" height=\"14\">胸围（68-72）</td>    <td bgcolor=\"#ffffff\" width=\"70\">70A</td>    <td bgcolor=\"#ffffff\" width=\"70\">70B</td>    <td bgcolor=\"#ffffff\" width=\"70\">70C</td>       </tr>     <tr align=\"center\">    <td bgcolor=\"#ffffff\" width=\"80\" height=\"14\">胸围（73-77）</td>       <td bgcolor=\"#ffffff\" width=\"70\">75A</td>    <td bgcolor=\"#ffffff\" width=\"70\">75B</td>    <td bgcolor=\"#ffffff\" width=\"70\">75C</td>   </tr><tr align=\"center\">    <td bgcolor=\"#ffffff\" width=\"80\" height=\"14\">胸围（78-82）</td>    <td bgcolor=\"#ffffff\" width=\"70\">80A</td>    <td bgcolor=\"#ffffff\" width=\"70\">80B</td>    <td bgcolor=\"#ffffff\" width=\"70\">80C</td>   </tr><tr align=\"center\">    <td bgcolor=\"#ffffff\" width=\"80\" height=\"14\">胸围（83-87）</td>    <td bgcolor=\"#ffffff\" width=\"70\">85A</td>    <td bgcolor=\"#ffffff\" width=\"70\">85B</td>    <td bgcolor=\"#ffffff\" width=\"70\">85C</td></tr></tbody></table>	          	            	            </li>',99.000,45.000,499.000,'[]','',1,NULL,1274068807685,1274068807685,0,0,0,5,0,'锦绣凤尾花边塑身抹胸','锦绣凤尾花边塑身抹胸','锦绣凤尾花边塑身抹胸',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','',0,0,0,0,0),(8,'进口刺绣花边时尚保健塑形文胸','G20100517121129',3,7,1,'normal',NULL,0.000,1,'http://static.enationsoft.com/attachment/moonbasa/goods/201005181542277870.jpg','http://static.enationsoft.com/attachment/moonbasa/goods/201005181542277870.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005181542273453.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005181542273566.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005181542270876.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005181542274086.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005181542274432.jpg',NULL,'<li class=\"detail\"> <br />	            <dl><dt><b>08最畅销精品NO.1 新一代人气魅力之星将优惠风暴进行到底</b></dt></dl><ul style=\"margin-top:0pt;\"><li><b>具有磁疗保健功能:</b>文胸内共6颗磁石,按摩乳房的乳根穴、乳中穴、天池穴,促进胸部的血液流畅和疏通乳腺,促进女性荷尔蒙的分泌,能缓解生理期乳房胀痛,对乳腺炎、肿块、小叶增生症、经前乳房胀痛,有良好的改善效果;</li><li><b>科学剪裁,上身效果极佳:</b>加宽比位及三胶骨设计,强力侧推效果,让胸部更集中.超宽的肩部连罩杯设计,对胸部有更好的承托和前聚作用.内置弹性记忆钢圈,更好的承托和固定胸部;</li><li><b>极度舒适透气:</b>整体采用进口莱卡面料,超强弹性不易变形.罩杯采用业内最薄2mm精细夹棉,透气舒适不易变形.里层采用进口牛奶丝,含17种氨基酸,有润肤养肤,抑菌祛湿的功效;</li><li><b>与国际时尚同步:</b>碗位采用瑞士进口独一无二的刺绣文胸.精湛的工艺让您的胸部频添不俗的高贵;</li></ul>	          	            	            </li>',98.000,45.000,698.000,'[]','',1,NULL,1274069489878,1274069489878,0,0,0,5,0,'进口刺绣花边时尚保健塑形文胸','进口刺绣花边时尚保健塑形文胸','进口刺绣花边时尚保健塑形文胸',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','','',0,0,0,0,0),(9,'高包容全罩杯塑身文胸','G20100517121537',3,7,1,'normal',NULL,0.000,1,'http://static.enationsoft.com/attachment/moonbasa/goods/201005171358211183.jpg','http://static.enationsoft.com/attachment/moonbasa/goods/201005171358211183.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005171358218747.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005171358211253.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005171358212364.jpg',NULL,'<li class=\"detail\"> <br />	            <dl><dt><b>新一代超包容全罩杯文胸</b></dt><dt><b>专为大胸MM量身定制彻底杜绝胸部下垂、外扩问题360度提胸聚胸 最贴心呵护</b></dt></dl><ul style=\"margin-top:0pt;\"><li><b>360度立体提胸聚胸:</b>新一代超包容全罩杯文胸，专门献给大胸MM的福音，创新全罩杯设计，360度包覆乳房，立体式提胸聚胸作用，可将乳房中央部分及周围脂肪全都包裹于内衣里，完美的支撑与提升集中效果，是最具塑身功能性的罩杯款。</li><li><b>升级包容 最贴心呵护:</b>革命性的升级包容效果，由创造性杯形与一流精品面料联合缔造，纯棉内贴里料穿着服帖，透气排汗，前所未有的舒适与包容效果，全面解放胸部的束缚感，并可有效防止胸部变形及各种疾病发生，给胸部更多的贴心保护。</li><li><b>高鸡心宽比位 托高侧推:</b>比一般文胸高2公分的鸡心设计，大幅提升对胸部的支撑和托高作用，穿戴更加稳定舒适；加宽比位设计，释放强力侧推效果，尽收腋下脂肪，让胸部更集中，肩带连罩杯设计，对胸部有更好的提拉和前聚作用。</li></ul><dl></dl><table style=\"font-size:9pt;\" bgcolor=\"#000000\" border=\"0\" cellpadding=\"0\" cellspacing=\"1\">  <tbody><tr align=\"center\">    <td width=\"80\" bgcolor=\"#ffffff\" height=\"14\">尺 寸 约</td>    <td width=\"70\" bgcolor=\"#ffffff\"></td>    <td width=\"70\" bgcolor=\"#ffffff\"></td>    <td width=\"70\" bgcolor=\"#ffffff\"></td> <td width=\"70\" bgcolor=\"#ffffff\"></td>     </tr>  <tr align=\"center\">    <td width=\"80\" bgcolor=\"#ffffff\" height=\"14\">胸围（68-72）</td>    <td width=\"70\" bgcolor=\"#ffffff\">70B</td>    <td width=\"70\" bgcolor=\"#ffffff\">70C</td>    <td width=\"70\" bgcolor=\"#ffffff\">70D</td> <td width=\"70\" bgcolor=\"#ffffff\">70E</td>       </tr>     <tr align=\"center\">    <td width=\"80\" bgcolor=\"#ffffff\" height=\"14\">胸围（73-77）</td>       <td width=\"70\" bgcolor=\"#ffffff\">75B</td>    <td width=\"70\" bgcolor=\"#ffffff\">75C</td>    <td width=\"70\" bgcolor=\"#ffffff\">75D</td> <td width=\"70\" bgcolor=\"#ffffff\">75E</td>   </tr><tr align=\"center\">    <td width=\"80\" bgcolor=\"#ffffff\" height=\"14\">胸围（78-82）</td>    <td width=\"70\" bgcolor=\"#ffffff\">80B</td>    <td width=\"70\" bgcolor=\"#ffffff\">80C</td>    <td width=\"70\" bgcolor=\"#ffffff\">80D</td> <td width=\"70\" bgcolor=\"#ffffff\">80E</td>   </tr><tr align=\"center\">    <td width=\"80\" bgcolor=\"#ffffff\" height=\"14\">胸围（83-87）</td>    <td width=\"70\" bgcolor=\"#ffffff\">85B</td>    <td width=\"70\" bgcolor=\"#ffffff\">85C</td>    <td width=\"70\" bgcolor=\"#ffffff\">85D</td> <td width=\"70\" bgcolor=\"#ffffff\">85E</td></tr></tbody></table>	          	            	            </li>',99.000,45.000,499.000,'[]','',1,NULL,1274069737545,1274069737545,0,0,0,5,0,'高包容全罩杯塑身文胸','高包容全罩杯塑身文胸','高包容全罩杯塑身文胸',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'100%棉','83%锦纶 17%氨纶','64%锦纶 20%氨纶 16%粘纤',0,0,0,0,0),(10,'柔媚刺绣舒适抹胸','G20100517023144',3,8,1,'normal',NULL,0.000,1,'http://static.enationsoft.com/attachment/moonbasa/goods/201005171429333383.jpg','http://static.enationsoft.com/attachment/moonbasa/goods/201005171429333383.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005171429346713.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005171429343930.jpg',NULL,'<p>	&nbsp;</p><p>	<li class=\"detail\">		&nbsp;		<dl>			<dt>				<b>B杯MM超值必备超透气软棉杯 呵护乳房肌肤</b></dt>		</dl>		<ul style=\"margin-top: 0pt;\">			<li>				透气网眼布料,时尚的颜色,使用一片式包裹杯面至侧翼的设计</li>			<li>				时尚刺绣外穿式肩带设计,适合春夏时节里搭配轻薄外衣穿着</li>			<li>				高鸡心设计，更能烘托出胸型圆挺，穿戴稳定舒适，乳房不移位</li>		</ul>		<dl>		</dl>		<table bgcolor=\"#000000\" border=\"0\" cellpadding=\"0\" cellspacing=\"1\" style=\"font-size: 9pt;\">			<tbody>				<tr align=\"center\">					<td bgcolor=\"#ffffff\" height=\"14\" width=\"80\">						尺 寸 约</td>					<td bgcolor=\"#ffffff\" width=\"70\">						&nbsp;</td>				</tr>				<tr align=\"center\">					<td bgcolor=\"#ffffff\" height=\"14\" width=\"80\">						胸围（68-72）</td>					<td bgcolor=\"#ffffff\" width=\"70\">						70B</td>				</tr>				<tr align=\"center\">					<td bgcolor=\"#ffffff\" height=\"14\" width=\"80\">						胸围（73-77）</td>					<td bgcolor=\"#ffffff\" width=\"70\">						75B</td>				</tr>				<tr align=\"center\">					<td bgcolor=\"#ffffff\" height=\"14\" width=\"80\">						胸围（78-82）</td>					<td bgcolor=\"#ffffff\" width=\"70\">						80B</td>				</tr>			</tbody>		</table>	</li></p>',39.000,9.000,99.000,'[]','',1,NULL,1274077904232,1274077904232,0,0,0,5,0,'柔媚刺绣舒适抹胸','柔媚刺绣舒适抹胸','柔媚刺绣舒适抹胸',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'100%棉','83%锦纶 17%氨纶','64%锦纶 20%氨纶 16%粘纤',0,0,0,0,0),(11,'郁金香刺绣模杯文胸','G20100517023705',4,8,1,'normal',NULL,0.000,1,'http://static.enationsoft.com/attachment/moonbasa/goods/201005171436115977.jpg','http://static.enationsoft.com/attachment/moonbasa/goods/201005171436115977.jpg',NULL,'<li class=\"detail\"> <br />	            <dl><dt><b>超值新品 惊艳上市渐厚模杯低鸡心设计塑造丰满 凸显美丽乳沟</b></dt></dl><ul style=\"margin-top:0pt;\"><li>全新渐厚模杯设计,自然推高乳房高度,一穿就挺的效果,适合胸部娇小型MM穿着</li><li>倒V式低鸡心创新款式,有效集中双乳,将迷人乳沟若隐若现的呈现,方便与外衣搭配</li><li>精美绝伦的刺绣配以高贵的酒红颜色,触感舒适,完美打造视觉焦点,尽现无穷女性魅力</li></ul><dl></dl><table style=\"font-size:9pt;\" bgcolor=\"#000000\" border=\"0\" cellpadding=\"0\" cellspacing=\"1\">  <tbody><tr align=\"center\">    <td bgcolor=\"#ffffff\" width=\"80\" height=\"14\">尺 寸 约</td>    <td bgcolor=\"#ffffff\" width=\"70\"></td>     </tr>  <tr align=\"center\">    <td bgcolor=\"#ffffff\" width=\"80\" height=\"14\">胸围（68-72）</td>    <td bgcolor=\"#ffffff\" width=\"70\">70A</td>       </tr>     <tr align=\"center\">    <td bgcolor=\"#ffffff\" width=\"80\" height=\"14\">胸围（73-77）</td>    <td bgcolor=\"#ffffff\" width=\"70\">75A</td>   </tr><tr align=\"center\">    <td bgcolor=\"#ffffff\" width=\"80\" height=\"14\">胸围（78-82）</td>    <td bgcolor=\"#ffffff\" width=\"70\">80A</td>   </tr></tbody></table>	          	            	            </li>',39.000,20.000,99.000,'[]',NULL,0,NULL,1274078225641,1274078225641,0,0,0,0,0,'郁金香刺绣模杯文胸','郁金香刺绣模杯文胸','郁金香刺绣模杯文胸',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'100%棉','83%锦纶 17%氨纶','83%锦纶 17%氨纶',0,0,0,0,0),(12,'秀丽刺绣闪钻文胸','G20100517030058',4,8,1,'normal',NULL,0.000,1,'http://static.enationsoft.com/attachment/moonbasa/goods/201005171500523651.jpg','http://static.enationsoft.com/attachment/moonbasa/goods/201005171500523651.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005171500527581.jpg',NULL,'<p>	&nbsp;</p><p>	<li class=\"detail\">		&nbsp;		<dl>			<dt>				<b>渐厚式超软模杯 穿戴超级舒适 自然托高胸线水平 </b></dt>		</dl>		<ul style=\"margin-top: 0pt;\">			<li>				上薄下厚的软棉杯形,尤其适合小胸MM穿戴,向上自然承托胸部,将胸线水平瞬间提高2-3公分;</li>			<li>				精美的刺绣花边点缀,令文胸更显时尚美观,完美衬托出典雅秀丽的气质;</li>		</ul>	</li></p>',29.000,13.000,89.000,'[]','',1,NULL,1274079658225,1274079658225,0,0,0,5,0,'秀丽刺绣闪钻文胸','秀丽刺绣闪钻文胸','秀丽刺绣闪钻文胸',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'100%棉','涤纶65% 棉35% ','锦纶85% 氨纶15% ',0,0,0,0,0),(13,'精致刺绣性感时尚文胸','G20100517032738',4,8,1,'normal',NULL,0.000,1,'http://static.enationsoft.com/attachment/moonbasa/goods/201005171525149288.jpg','http://static.enationsoft.com/attachment/moonbasa/goods/201005171525149288.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005171525144606.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005171525141065.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005171525149553.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005171525144837.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005171525144543.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005171525143185.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005171525155346.jpg',NULL,'<br />',29.000,13.000,60.000,'[]','',1,NULL,1274081258815,1274081258815,0,0,0,20,0,'精致刺绣性感时尚文胸','精致刺绣性感时尚文胸','精致刺绣性感时尚文胸',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'100%棉','65%聚酯纤维 35%棉','92%锦纶 8%氨纶',0,0,0,0,0),(14,'刺绣花边精油柔珠按摩塑形文胸','G20100517051945',5,6,1,'normal',NULL,0.000,1,'http://static.enationsoft.com/attachment/moonbasa/goods/201005181123281003.jpg','http://static.enationsoft.com/attachment/moonbasa/goods/201005181123281003.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005181123283008.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005181123282785.jpg',NULL,'<p>	&nbsp;</p><p>	<li class=\"detail\">		&nbsp;		<dl>			<dt>				<b>首创&ldquo;动态式&rdquo;美胸体验</b></dt>			<dt>				<b>香薰精油、按摩柔珠二合一 </b></dt>			<dt>				<b>让胸部同时享受SPA与按摩</b></dt>		</dl>		<ul style=\"margin-top: 0pt;\">			<li>				<b>首创&ldquo;动态式&rdquo;美胸 美妙享受前所未有：</b>只要穿上这件文胸,马上享受前所未有的&ldquo;动态式&rdquo;美胸体验,仿佛同时给胸部做SPA和按摩活动,促进胸部的再次发育和成长,让你越穿越舒服,越穿越丰挺！</li>			<li>				<b>芳香精油袋：</b>美妙醇厚的香味连绵不断,带来芬芳愉悦的舒适体验,会随着人体的呼吸和运动轻柔的按摩胸部,就象给胸部做SPA,丰胸同时享受清凉的滋润.</li>			<li>				<b>磁石柔珠：</b>多颗按摩柔珠,当穿戴时对乳房进行按摩,磁性作用,使皮肤表面处于微动状态,活化乳房,激活细胞代谢能力,促进血液循环,防止胸部外扩与萎缩.</li>			<li>				<b>三大创新工艺 塑造理想胸型:</b></li>			<li>				高脾位 超强侧推：独特高脾位设计,瞬间推高胸部高度数公分,超强侧推作用,有效防止胸部外扩与副乳现象发生.</li>			<li>				内胶骨 锁脂集中：特别增设的文胸内胶骨,固定脂肪不移位、不侧漏,令胸部更加集中丰挺;</li>			<li>				高鸡心 推高定型：文胸鸡心位置比一般文胸高约3公分,带来更加舒适的穿着感,包容效果更佳,自然推高胸线水平.</li>		</ul>		<dl>		</dl>		<table bgcolor=\"#000000\" border=\"0\" cellpadding=\"0\" cellspacing=\"1\" style=\"font-size: 9pt;\">			<tbody>				<tr align=\"center\">					<td bgcolor=\"#ffffff\" height=\"14\" width=\"80\">						尺 寸 约</td>					<td bgcolor=\"#ffffff\" width=\"70\">						&nbsp;</td>					<td bgcolor=\"#ffffff\" width=\"70\">						&nbsp;</td>					<td bgcolor=\"#ffffff\" width=\"70\">						&nbsp;</td>					<td bgcolor=\"#ffffff\" width=\"70\">						&nbsp;</td>					<td bgcolor=\"#ffffff\" width=\"70\">						&nbsp;</td>				</tr>				<tr align=\"center\">					<td bgcolor=\"#ffffff\" height=\"14\" width=\"80\">						胸围（68-72）</td>					<td bgcolor=\"#ffffff\" width=\"70\">						70B</td>					<td bgcolor=\"#ffffff\" width=\"70\">						70C</td>					<td bgcolor=\"#ffffff\" width=\"70\">						70D</td>					<td bgcolor=\"#ffffff\" width=\"70\">						70E</td>					<td bgcolor=\"#ffffff\" width=\"70\">						70F</td>				</tr>				<tr align=\"center\">					<td bgcolor=\"#ffffff\" height=\"14\" width=\"80\">						胸围（73-77）</td>					<td bgcolor=\"#ffffff\" width=\"70\">						75B</td>					<td bgcolor=\"#ffffff\" width=\"70\">						75C</td>					<td bgcolor=\"#ffffff\" width=\"70\">						75D</td>					<td bgcolor=\"#ffffff\" width=\"70\">						75E</td>					<td bgcolor=\"#ffffff\" width=\"70\">						75F</td>				</tr>				<tr align=\"center\">					<td bgcolor=\"#ffffff\" height=\"14\" width=\"80\">						胸围（78-82）</td>					<td bgcolor=\"#ffffff\" width=\"70\">						80B</td>					<td bgcolor=\"#ffffff\" width=\"70\">						80C</td>					<td bgcolor=\"#ffffff\" width=\"70\">						80D</td>					<td bgcolor=\"#ffffff\" width=\"70\">						80E</td>					<td bgcolor=\"#ffffff\" width=\"70\">						80F</td>				</tr>				<tr align=\"center\">					<td bgcolor=\"#ffffff\" height=\"14\" width=\"80\">						胸围（83-87）</td>					<td bgcolor=\"#ffffff\" width=\"70\">						85B</td>					<td bgcolor=\"#ffffff\" width=\"70\">						85C</td>					<td bgcolor=\"#ffffff\" width=\"70\">						85D</td>					<td bgcolor=\"#ffffff\" width=\"70\">						85E</td>					<td bgcolor=\"#ffffff\" width=\"70\">						85F</td>				</tr>			</tbody>		</table>	</li></p>',89.000,32.000,499.000,'[]','',1,NULL,1274087985877,1274087985877,0,0,0,5,0,'刺绣花边精油柔珠按摩塑形文胸','刺绣花边精油柔珠按摩塑形文胸','刺绣花边精油柔珠按摩塑形文胸',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','锦纶75.6% 氨纶24.4%','锦纶61.8% 氨纶38.2%',0,0,0,0,0),(15,'进口刺绣花边精棉内裤','G20100517053246',4,13,2,'normal',NULL,0.000,1,'http://static.enationsoft.com/attachment/moonbasa/goods/201005171731369580.jpg','http://static.enationsoft.com/attachment/moonbasa/goods/201005171731369580.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005171731366895.jpg',NULL,'<li class=\"detail\"> <br />	            <ul style=\"margin-top:0pt;\"><li>前幅采用先进进口的高弹莱卡面料,具有轻度收腹效果,舒适不易变形;</li><li>两侧瑞士手工刺绣透明网布,散发若隐若现的神秘诱惑感;</li></ul><dl><dt>面  料:埃及精细棉95%,氨纶5%</dt><dt>花  边:锦纶88.8%,氨纶11.2%</dt></dl></li>',39.000,10.000,69.000,'[]','',1,NULL,1274088766430,1274088766430,0,0,0,8,0,'进口刺绣花边精棉内裤','进口刺绣花边精棉内裤','进口刺绣花边精棉内裤',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'95%莫代尔 5%氨纶 ',0,0,0,0,0),(16,'莹滑蕾丝性感内裤','G20100517053902',4,13,2,'normal',NULL,0.000,1,'http://static.enationsoft.com/attachment/moonbasa/goods/201005171737361890.jpg','http://static.enationsoft.com/attachment/moonbasa/goods/201005171737361890.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005171737364818.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005171737378985.jpg',NULL,'<li class=\"detail\"> <br />	            <dl><dt><b>Modal纤维面料 手感柔软，悬垂性好 有利于人体健康</b></dt></dl><ul style=\"margin-top:0pt;\"><li>Modal纤维面料手感柔软，悬垂性好，吸湿性能、透气性能优于纯棉织物，有利于人体生理循环和健康。</li><li>大幅蕾丝花边，两侧使用双色花边，加倍服帖 无比透气，更显高贵性感。</li></ul><dl></dl><table style=\"font-size:9pt;\" bgcolor=\"#000000\" border=\"0\" cellpadding=\"0\" cellspacing=\"1\">  <tbody><tr align=\"center\">    <td width=\"80\" bgcolor=\"#ffffff\" height=\"14\">尺 寸 约</td>    <td width=\"70\" bgcolor=\"#ffffff\">M</td>    <td width=\"70\" bgcolor=\"#ffffff\">L</td>    <td width=\"70\" bgcolor=\"#ffffff\">XL</td>     </tr>  <tr align=\"center\">    <td width=\"80\" bgcolor=\"#ffffff\" height=\"14\">腰围</td>    <td width=\"70\" bgcolor=\"#ffffff\">52</td>    <td width=\"70\" bgcolor=\"#ffffff\">56</td>    <td width=\"70\" bgcolor=\"#ffffff\">60</td>       </tr>     <tr align=\"center\">    <td width=\"80\" bgcolor=\"#ffffff\" height=\"14\">臀围</td>    <td width=\"70\" bgcolor=\"#ffffff\">68</td>    <td width=\"70\" bgcolor=\"#ffffff\">72</td>    <td width=\"70\" bgcolor=\"#ffffff\">76</td>   </tr><tr align=\"center\">    <td width=\"80\" bgcolor=\"#ffffff\" height=\"14\">适用腰围（市尺）</td>    <td width=\"70\" bgcolor=\"#ffffff\">1.9-2.1</td>    <td width=\"70\" bgcolor=\"#ffffff\">2.1-2.2</td>    <td width=\"70\" bgcolor=\"#ffffff\">2.2-2.3</td>   </tr><tr align=\"center\">    <td width=\"80\" bgcolor=\"#ffffff\" height=\"14\">适用臀围</td>    <td width=\"70\" bgcolor=\"#ffffff\">80-90</td>    <td width=\"70\" bgcolor=\"#ffffff\">85-95</td>    <td width=\"70\" bgcolor=\"#ffffff\">90-100</td></tr></tbody></table>	          	            	            <br /><font style=\"font-size:9pt;\">提示：内裤属个人贴身卫生用品，非质量问题不予办理退换货。</font>	            	            </li>',29.000,8.000,99.000,'[]','',1,NULL,1274089142855,1274089142855,0,0,0,20,0,'莹滑蕾丝性感内裤','莹滑蕾丝性感内裤','莹滑蕾丝性感内裤',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'95%莫代尔 5%氨纶',0,0,0,0,0),(17,'Apple/苹果 iPhone 7 Plus 手机苹果7p iphone7 七代港版国行现货','G20100517054308',0,3,5,'normal',NULL,0.000,1,'fs:/attachment/goods/201706032054043290.jpg','fs:/attachment/goods/201706032054043290.jpg,fs:/attachment/goods/201706032054347998.jpg',NULL,'<ul class=\"attributes-list\" hiragino=\"\" sans=\"\" style=\"margin: 0px; padding: 0px 15px; list-style: none; clear: both; color: rgb(0, 0, 0); font-family: tahoma, arial, \">\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"2016011606893750\">\n		CCC证书编号:&nbsp;<a href=\"https://baike.taobao.com/view.htm?wd=2016011606893750&amp;ac=29\" style=\"text-decoration: none; color: rgb(51, 102, 204); outline: 0px;\" target=\"blank\">2016011606893750</a></li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"Apple/苹果 iPhone 7 Plus\">\n		产品名称:&nbsp;Apple/苹果 iPhone 7 Plus</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"Apple/苹果\">\n		CPU品牌:&nbsp;Apple/苹果</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"2016-09\">\n		上市时间:&nbsp;2016-09</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"iPhone 7 Plus\">\n		产品名称:&nbsp;iPhone 7 Plus</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"5.5英寸\">\n		屏幕尺寸:&nbsp;5.5英寸</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"7.3mm\">\n		机身厚度:&nbsp;7.3mm</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"2910mAh\">\n		电池容量:&nbsp;2910mAh</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"Apple/苹果\">\n		品牌:&nbsp;Apple/苹果</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"iPhone 7 Plus\">\n		Apple型号:&nbsp;iPhone 7 Plus</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"4G全网通\">\n		网络类型:&nbsp;4G全网通</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		款式:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"亮黑色【现货】 玫瑰金色【现货】 金色【现货】 银色【现货】 黑色【现货】 大红色特别版【现货已到】\">\n		机身颜色:&nbsp;亮黑色【现货】 玫瑰金色【现货】 金色【现货】 银色【现货】 黑色【现货】 大红色特别版【现货已到】</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"官方标配 套餐一\">\n		套餐类型:&nbsp;官方标配 套餐一</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"1200 万像素广角及长焦双镜头摄像头\">\n		后置摄像头:&nbsp;1200 万像素广角及长焦双镜头摄像头</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"iOS 10\">\n		操作系统:&nbsp;iOS 10</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		附加功能:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"全新\">\n		宝贝成色:&nbsp;全新</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"店铺三包\">\n		售后服务:&nbsp;店铺三包</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		触摸屏类型:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		运行内存RAM:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"32GB 128GB 256GB\">\n		存储容量:&nbsp;32GB 128GB 256GB</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		键盘类型:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"1920 x 1080 像素分辨率，401 ppi\">\n		分辨率:&nbsp;1920 x 1080 像素分辨率，401 ppi</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		手机类型:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		电池类型:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"1200 万像素广角及长焦双镜头摄像头\">\n		摄像头类型:&nbsp;1200 万像素广角及长焦双镜头摄像头</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		视频显示格式:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"蜂窝网络和无线连接\">\n		网络模式:&nbsp;蜂窝网络和无线连接</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"不详\">\n		核心数:&nbsp;不详</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"港澳台 美国 亚太 中国大陆\">\n		版本类型:&nbsp;港澳台 美国 亚太 中国大陆</li>\n</ul>\n',4888.000,4888.000,4888.000,'[]','[{\"cost\":4888,\"goodsLvPrices\":[],\"goods_id\":17,\"name\":\"Apple/苹果 iPhone 7 Plus 手机苹果7p iphone7 七代港版国行现货\",\"price\":4888,\"product_id\":223,\"sn\":\"G20100517054308\",\"specList\":[],\"specs\":\"黑色、均码\",\"specsvIdJson\":\"[]\",\"store\":20,\"weight\":0}]',1,NULL,1274089388831,1274089388831,0,0,0,20,0,'Apple/苹果 iPhone 7 Plus 手机苹果7p iphone7 七代港版国行现货','Apple/苹果 iPhone 7 Plus 手机苹果7p iphone7 七代港版国行现货','Apple/苹果 iPhone 7 Plus 手机苹果7p iphone7 七代港版国行现货',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'氨纶15% 锦纶85%',0,0,0,0,0),(18,'轻薄透气柔美针织开衫','G20100519015940',5,38,7,'normal',NULL,0.000,1,'http://static.enationsoft.com/attachment/moonbasa/goods/201005191355222659.jpg','http://static.enationsoft.com/attachment/moonbasa/goods/201005191355222659.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191355225756.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191355220014.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191355220628.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191355228982.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191355223302.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191355239893.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191355237963.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191355233635.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191355236246.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191355236167.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191355232319.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191355231949.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191355236892.jpg',NULL,' <br>	            <dt><b>春夏百搭必备开衫 轻薄透气柔滑</b></dt><ul style=\"margin-top: 0pt;\"><li>免烫耐磨，不易变形，不易掉色，11个颜色可供选择。。</li><li>面料柔软细腻，穿着舒适轻薄透气。</li><li>V领开衫，可以让你的美丽锁骨展露无疑，简洁大方，实用百搭。</li><li>（注：此款较轻薄，需要搭配小背心，请参考红色静物图及黑色模特实拍图。）</li></ul><dl></dl><table style=\"font-size: 9pt;\" bgcolor=\"#000000\" border=\"0\" cellpadding=\"0\" cellspacing=\"1\">  <tbody><tr align=\"center\">    <td bgcolor=\"#ffffff\" width=\"80\" height=\"14\">尺 寸 约</td>    <td bgcolor=\"#ffffff\" width=\"70\">S</td>    <td bgcolor=\"#ffffff\" width=\"70\">M</td>    <td bgcolor=\"#ffffff\" width=\"70\">L</td>    <td bgcolor=\"#ffffff\" width=\"70\">XL</td>  </tr>  <tr align=\"center\">    <td bgcolor=\"#ffffff\" width=\"80\" height=\"14\">衣&nbsp;&nbsp;&nbsp;&nbsp;长</td>    <td bgcolor=\"#ffffff\" width=\"70\">60.5</td>    <td bgcolor=\"#ffffff\" width=\"70\">62.5</td>    <td bgcolor=\"#ffffff\" width=\"70\">64.5</td>    <td bgcolor=\"#ffffff\" width=\"70\">66.5</td>  </tr> <tr align=\"center\">    <td bgcolor=\"#ffffff\" width=\"80\" height=\"14\">胸&nbsp;&nbsp;&nbsp;&nbsp;围</td>    <td bgcolor=\"#ffffff\" width=\"70\">85</td>    <td bgcolor=\"#ffffff\" width=\"70\">89</td>    <td bgcolor=\"#ffffff\" width=\"70\">93</td>    <td bgcolor=\"#ffffff\" width=\"70\">97</td> </tr>  <tr align=\"center\">    <td bgcolor=\"#ffffff\" width=\"80\" height=\"14\">肩宽</td>    <td bgcolor=\"#ffffff\" width=\"70\">34</td>    <td bgcolor=\"#ffffff\" width=\"70\">35</td>    <td bgcolor=\"#ffffff\" width=\"70\">36</td>    <td bgcolor=\"#ffffff\" width=\"70\">37</td> </tr> <tr align=\"center\">    <td bgcolor=\"#ffffff\" width=\"80\" height=\"14\">袖&nbsp;&nbsp;&nbsp;&nbsp;长</td>    <td bgcolor=\"#ffffff\" width=\"70\">57.5</td>    <td bgcolor=\"#ffffff\" width=\"70\">58.5</td>    <td bgcolor=\"#ffffff\" width=\"70\">59.5</td>    <td bgcolor=\"#ffffff\" width=\"70\">60.5</td> </tr>  <tr align=\"center\">    <td bgcolor=\"#ffffff\" width=\"80\" height=\"14\">适合身高</td>    <td bgcolor=\"#ffffff\" width=\"70\">155/80A</td>    <td bgcolor=\"#ffffff\" width=\"70\">160/84A</td>    <td bgcolor=\"#ffffff\" width=\"70\">165/88A</td>    <td bgcolor=\"#ffffff\" width=\"70\">170/92A</td>  </tr></tbody></table>	          	            	            ',39.000,15.000,198.000,'[]','{\"43\":\"http://static.enationsoft.com/attachment/moonbasa/goods/201005191355236246.jpg\",\"50\":\"http://static.enationsoft.com/attachment/moonbasa/goods/201005191355232319.jpg\",\"51\":\"http://static.enationsoft.com/attachment/moonbasa/goods/201005191355225756.jpg\",\"52\":\"http://static.enationsoft.com/attachment/moonbasa/goods/201005191355220014.jpg\",\"53\":\"http://static.enationsoft.com/attachment/moonbasa/goods/201005191355220628.jpg\",\"54\":\"http://static.enationsoft.com/attachment/moonbasa/goods/201005191355223302.jpg\",\"55\":\"http://static.enationsoft.com/attachment/moonbasa/goods/201005191355222659.jpg\",\"56\":\"http://static.enationsoft.com/attachment/moonbasa/goods/201005191355233635.jpg\"}',1,NULL,1274248780660,1274248780660,0,0,0,5,0,'轻薄透气柔美针织开衫','轻薄透气柔美针织开衫','轻薄透气柔美针织开衫',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'涤纶100%',0,0,0,0,0),(19,'精美富贵花时尚中跟凉拖','G20100519043434',6,29,6,'normal',NULL,0.000,1,'http://static.enationsoft.com/attachment/moonbasa/goods/201005191632484429.jpg','http://static.enationsoft.com/attachment/moonbasa/goods/201005191632484429.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191632486363.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191632494279.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191632496421.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191632492775.jpg',NULL,' <br>	            <dl><dt><b>真皮绒花朵浪漫雅致  中跟  舒适</b></dt></dl><ul style=\"margin-top: 0pt;\"><li>真皮绒花朵造型高雅别致，雅致镜面带来时尚活力</li><li>5厘米跟高舒适又稳当，烤漆鞋跟坚牢更耐穿</li><li>简洁设计露出完整脚踝曲线，凉爽又性感。</li><li></li></ul><dl></dl><table style=\"font-size: 9pt;\" bgcolor=\"#000000\" border=\"0\" cellpadding=\"0\" cellspacing=\"1\">  <tbody><tr align=\"center\">    <td bgcolor=\"#ffffff\" width=\"120\" height=\"14\">码数</td>    <td bgcolor=\"#ffffff\" width=\"70\">35</td>    <td bgcolor=\"#ffffff\" width=\"70\">36</td>    <td bgcolor=\"#ffffff\" width=\"70\">37</td>    <td bgcolor=\"#ffffff\" width=\"70\">38</td>    <td bgcolor=\"#ffffff\" width=\"70\">39</td> </tr>  <tr align=\"center\">    <td bgcolor=\"#ffffff\" width=\"120\" height=\"14\">脚长&nbsp;&nbsp;&nbsp;&nbsp;(cm)</td>    <td bgcolor=\"#ffffff\" width=\"70\">22.8</td>    <td bgcolor=\"#ffffff\" width=\"70\">23.3</td>    <td bgcolor=\"#ffffff\" width=\"70\">23.8</td>    <td bgcolor=\"#ffffff\" width=\"70\">24.3</td>    <td bgcolor=\"#ffffff\" width=\"70\">24.8</td>  </tr> <tr align=\"center\">    <td bgcolor=\"#ffffff\" width=\"120\" height=\"14\">脚宽&nbsp;&nbsp;&nbsp;&nbsp;(cm)</td>    <td bgcolor=\"#ffffff\" width=\"70\">7.8</td>    <td bgcolor=\"#ffffff\" width=\"70\">7.9</td>    <td bgcolor=\"#ffffff\" width=\"70\">8</td>    <td bgcolor=\"#ffffff\" width=\"70\">8.1</td>    <td bgcolor=\"#ffffff\" width=\"70\">8.2</td> </tr></tbody></table>	          	            	            ',0.000,0.000,399.000,'[]',NULL,0,NULL,1274258074152,1274258074153,0,0,0,0,0,'精美富贵花时尚中跟凉拖','精美富贵花时尚中跟凉拖','精美富贵花时尚中跟凉拖',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'5CM','烤漆跟','','TPU大底','进口镜面PU',0,0,0,0,0),(20,'夏季圆领短袖T恤男','G20100519044137',5,19,7,'normal',NULL,0.000,0,'http://static.enationsoft.com/attachment/moonbasa/goods/201005191637571691.jpg','http://static.enationsoft.com/attachment/moonbasa/goods/201005191637571691.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191637574335.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191637577658.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191637578637.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191637576315.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191637582947.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191637588742.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191637582140.jpg,http://static.enationsoft.com/attachment/moonbasa/goods/201005191637587795.jpg',NULL,'<p>\n	<img src=\"https://img.alicdn.com/imgextra/i4/79400578/TB2xKgYtiRnpuFjSZFCXXX2DXXa_!!79400578.jpg\" /></p>\n<ul class=\"attributes-list\" style=\"margin: 0px; padding: 0px 15px; list-style: none; clear: both; color: rgb(0, 0, 0); font-family: tahoma, arial, &quot;Hiragino Sans GB&quot;, 宋体, sans-serif;\">\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"常规\">\n		厚薄:&nbsp;常规</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"时尚潮牌\">\n		品牌类型:&nbsp;时尚潮牌</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"棉95% 聚氨酯弹性纤维(氨纶)5%\">\n		材质成分:&nbsp;棉95% 聚氨酯弹性纤维(氨纶)5%</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"短袖\">\n		袖长:&nbsp;短袖</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"MD-720\">\n		货号:&nbsp;MD-720</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"圆领\">\n		领型:&nbsp;圆领</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"白色 卡其色 灰色 浅蓝色 浅绿色\">\n		颜色:&nbsp;白色 卡其色 灰色 浅蓝色 浅绿色</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"4XL M L XL 2XL 3XL\">\n		尺码:&nbsp;4XL M L XL 2XL 3XL</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"南宝奇\">\n		品牌:&nbsp;南宝奇</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"常规\">\n		袖型:&nbsp;常规</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"修身\">\n		版型:&nbsp;修身</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"夏季\">\n		适用季节:&nbsp;夏季</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"2017年\">\n		上市时间:&nbsp;2017年</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"日常\">\n		适用场景:&nbsp;日常</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"青年\">\n		适用对象:&nbsp;青年</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"青春流行\">\n		基础风格:&nbsp;青春流行</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"潮\">\n		细分风格:&nbsp;潮</li>\n	<li style=\"margin: 0px 20px 0px 0px; padding: 0px; display: inline; float: left; width: 206px; height: 24px; overflow: hidden; text-indent: 5px; line-height: 24px; white-space: nowrap; text-overflow: ellipsis;\" title=\"潮\">\n		&nbsp;</li>\n</ul>\n',39.000,18.000,198.000,'[]','[{\"cost\":18,\"goodsLvPrices\":[],\"goods_id\":20,\"name\":\"夏季圆领短袖T恤男\",\"price\":39,\"product_id\":425,\"sn\":\"G20100519044137\",\"specList\":[],\"specs\":\"白色、S\",\"specsvIdJson\":\"[]\",\"store\":5,\"weight\":0}]',1,NULL,1274258497833,1274258497833,0,0,0,5,0,'台湾莫代尔弹力花边吊带家居服','台湾莫代尔弹力花边吊带家居服','台湾莫代尔弹力花边吊带家居服',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',0,0,0,0,0),(21,'轻薄内衣组合','P20100519044956',NULL,NULL,NULL,'bind',NULL,0.000,1,NULL,NULL,NULL,NULL,99.000,NULL,128.000,NULL,NULL,NULL,NULL,1274258996076,1274258996076,0,0,0,5,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,0);
/*!40000 ALTER TABLE `es_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_goods_adjunct`
--

DROP TABLE IF EXISTS `es_goods_adjunct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_goods_adjunct` (
  `adjunct_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `adjunct_name` varchar(50) DEFAULT NULL,
  `min_num` int(11) DEFAULT NULL,
  `max_num` int(11) DEFAULT NULL,
  `set_price` enum('discount','minus') DEFAULT NULL,
  `price` decimal(20,3) DEFAULT NULL,
  `items` text,
  PRIMARY KEY (`adjunct_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_goods_adjunct`
--

LOCK TABLES `es_goods_adjunct` WRITE;
/*!40000 ALTER TABLE `es_goods_adjunct` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_goods_adjunct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_goods_articles`
--

DROP TABLE IF EXISTS `es_goods_articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_goods_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsid` int(11) DEFAULT NULL,
  `articleid` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_goods_articles`
--

LOCK TABLES `es_goods_articles` WRITE;
/*!40000 ALTER TABLE `es_goods_articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_goods_articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_goods_cat`
--

DROP TABLE IF EXISTS `es_goods_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_goods_cat` (
  `cat_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `parent_id` mediumint(8) DEFAULT NULL,
  `cat_path` varchar(200) DEFAULT NULL,
  `goods_count` mediumint(8) DEFAULT NULL,
  `cat_order` smallint(5) DEFAULT NULL,
  `type_id` mediumint(8) DEFAULT NULL,
  `list_show` enum('0','1') DEFAULT '1',
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_goods_cat`
--

LOCK TABLES `es_goods_cat` WRITE;
/*!40000 ALTER TABLE `es_goods_cat` DISABLE KEYS */;
INSERT INTO `es_goods_cat` VALUES (1,'服装',0,'0|1|',0,0,7,'1',NULL),(2,'鞋靴',0,'0|2|',0,1,6,'1',NULL),(3,'数码',0,'0|3|',0,2,5,'1',NULL),(4,'家居服',0,'0|4|',0,3,4,'1',NULL),(5,'泳装',0,'0|5|',0,4,5,'1',NULL),(6,'女装',1,'0|1|6|',0,0,7,'1',NULL),(7,'男装',1,'0|1|7|',0,1,1,'1',NULL),(8,'裤子',1,'0|1|8|',0,2,1,'1',NULL),(9,'衬衫',1,'0|1|9|',0,3,1,'1',NULL),(10,'牛仔裤',1,'0|1|10|',0,4,1,'1',NULL),(11,'连衣裙',1,'0|1|11|',0,5,1,'1',NULL),(13,'运动鞋',2,'0|2|13|',0,0,6,'1',NULL),(14,'女鞋',2,'0|2|14|',0,1,6,'1',NULL),(15,'布鞋',2,'0|2|15|',0,2,2,'1',NULL),(16,'冰箱',3,'0|3|16|',0,0,5,'1',NULL),(17,'电脑',3,'0|3|17|',0,1,5,'1',NULL),(18,'洗衣机',3,'0|3|18|',0,2,3,'1',NULL),(19,'家居休闲',4,'0|4|19|',0,0,4,'0',NULL),(20,'睡衣',4,'0|4|20|',0,1,4,'1',NULL),(21,'浴袍',4,'0|4|21|',0,2,4,'1',NULL),(22,'瑜伽',4,'0|4|22|',0,3,4,'1',NULL),(23,'情趣',4,'0|4|23|',0,4,4,'1',NULL),(24,'比基尼',5,'0|5|24|',0,0,5,'1',NULL),(25,'分体式',5,'0|5|25|',0,1,5,'1',NULL),(26,'连体式',5,'0|5|26|',0,2,5,'1',NULL),(27,'鞋包',0,'0|27|',0,5,6,'1',NULL),(28,'凉鞋',27,'0|27|28|',0,0,6,'1',NULL),(29,'凉拖',27,'0|27|29|',0,1,6,'1',NULL),(30,'帆布鞋',27,'0|27|30|',0,2,6,'1',NULL),(31,'单鞋',27,'0|27|31|',0,3,6,'0',NULL),(32,'皮鞋',27,'0|27|32|',0,4,6,'1',NULL),(33,'皮靴/雪地靴',27,'0|27|33|',0,5,6,'1',NULL),(34,'棉拖',27,'0|27|34|',0,6,6,'0',NULL),(35,'休闲包',27,'0|27|35|',0,8,6,'1',NULL),(36,'商务包',27,'0|27|36|',0,9,6,'1',NULL),(37,'时尚服饰',0,'0|37|',0,6,7,'1',NULL),(38,'针织衫',37,'0|37|38|',0,0,7,'1',NULL),(39,'衬衣',37,'0|37|39|',0,1,7,'1',NULL),(40,'T恤',37,'0|37|40|',0,2,7,'1',NULL),(41,'背心/吊带',37,'0|37|41|',0,3,7,'0',NULL);
/*!40000 ALTER TABLE `es_goods_cat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_goods_complex`
--

DROP TABLE IF EXISTS `es_goods_complex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_goods_complex` (
  `goods_1` mediumint(8) unsigned NOT NULL,
  `goods_2` mediumint(8) unsigned NOT NULL,
  `manual` enum('left','both') DEFAULT NULL,
  `rate` mediumint(8) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_goods_complex`
--

LOCK TABLES `es_goods_complex` WRITE;
/*!40000 ALTER TABLE `es_goods_complex` DISABLE KEYS */;
INSERT INTO `es_goods_complex` VALUES (5,2,'both',100),(5,3,'both',100),(5,4,'both',100),(16,15,'left',100),(17,15,'left',100),(17,16,'left',100),(14,4,'left',100),(14,5,'left',100),(14,6,'left',100),(14,7,'left',100),(1,2,'both',100),(1,3,'both',100),(1,4,'both',100);
/*!40000 ALTER TABLE `es_goods_complex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_goods_field`
--

DROP TABLE IF EXISTS `es_goods_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_goods_field` (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `china_name` varchar(255) DEFAULT NULL,
  `english_name` varchar(255) DEFAULT NULL,
  `pluginid` varchar(255) DEFAULT NULL,
  `config` text,
  `add_time` bigint(20) DEFAULT NULL,
  `type_id` mediumint(8) DEFAULT NULL,
  `is_validate` smallint(1) DEFAULT NULL,
  `field_sort` int(11) DEFAULT NULL,
  `is_show` smallint(1) DEFAULT NULL COMMENT '0为不显示\n            1为显示',
  PRIMARY KEY (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_goods_field`
--

LOCK TABLES `es_goods_field` WRITE;
/*!40000 ALTER TABLE `es_goods_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_goods_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_goods_lv_price`
--

DROP TABLE IF EXISTS `es_goods_lv_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_goods_lv_price` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  `lvid` int(11) DEFAULT NULL,
  `price` decimal(20,3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_goods_lv_price`
--

LOCK TABLES `es_goods_lv_price` WRITE;
/*!40000 ALTER TABLE `es_goods_lv_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_goods_lv_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_goods_spec`
--

DROP TABLE IF EXISTS `es_goods_spec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_goods_spec` (
  `spec_id` mediumint(8) NOT NULL,
  `spec_value_id` mediumint(8) NOT NULL,
  `goods_id` mediumint(8) DEFAULT NULL,
  `product_id` mediumint(8) NOT NULL,
  PRIMARY KEY (`spec_id`,`spec_value_id`,`product_id`),
  KEY `fk_spec_goods_index` (`goods_id`),
  KEY `fk_spec_index` (`spec_id`),
  KEY `fk_spec_products` (`product_id`),
  KEY `fk_spec_value_index` (`spec_id`,`spec_value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_goods_spec`
--

LOCK TABLES `es_goods_spec` WRITE;
/*!40000 ALTER TABLE `es_goods_spec` DISABLE KEYS */;
INSERT INTO `es_goods_spec` VALUES (2,30,1,482),(2,33,1,483),(2,35,1,484),(2,32,2,478),(2,33,2,479),(2,34,2,480),(2,35,2,481),(2,31,3,475),(2,32,3,476),(2,33,3,477),(2,31,4,472),(2,32,4,473),(2,33,4,474),(2,30,5,455),(2,31,5,456),(2,32,5,457),(2,33,5,458),(1,27,6,317),(1,27,6,318),(1,27,6,319),(1,27,6,320),(1,27,6,321),(1,27,6,322),(1,27,6,323),(1,27,6,324),(1,27,6,325),(1,27,6,326),(1,27,6,327),(1,27,6,328),(2,29,6,317),(2,30,6,318),(2,31,6,319),(2,32,6,320),(2,33,6,321),(2,34,6,322),(2,35,6,323),(2,36,6,324),(2,37,6,325),(2,38,6,326),(2,39,6,327),(2,40,6,328),(1,26,7,314),(1,26,7,315),(1,26,7,316),(2,33,7,314),(2,34,7,315),(2,35,7,316),(1,26,8,341),(1,26,8,342),(1,26,8,343),(1,26,8,344),(1,26,8,345),(1,26,8,346),(1,26,8,347),(2,30,8,341),(2,31,8,342),(2,32,8,343),(2,33,8,344),(2,34,8,345),(2,35,8,346),(2,36,8,347),(1,28,9,234),(1,28,9,235),(1,28,9,236),(2,33,9,234),(2,34,9,235),(2,35,9,236),(2,33,10,469),(2,35,10,470),(2,38,10,471),(2,35,12,467),(2,36,12,468),(2,33,13,463),(2,34,13,464),(2,35,13,465),(2,36,13,466),(2,30,14,460),(2,31,14,461),(2,32,14,462),(1,28,15,215),(1,28,15,216),(1,28,15,217),(1,28,15,218),(2,13,15,215),(2,14,15,216),(2,15,15,217),(2,16,15,218),(1,22,16,224),(1,22,16,225),(1,22,16,226),(2,13,16,224),(2,14,16,225),(2,15,16,226),(1,43,18,388),(1,43,18,389),(1,43,18,390),(1,43,18,391),(1,50,18,392),(1,50,18,393),(1,50,18,394),(1,50,18,395),(1,51,18,396),(1,51,18,397),(1,51,18,398),(1,51,18,399),(1,52,18,400),(1,52,18,401),(1,52,18,402),(1,52,18,403),(1,53,18,404),(1,53,18,405),(1,53,18,406),(1,53,18,407),(1,54,18,408),(1,54,18,409),(1,54,18,410),(1,54,18,411),(1,55,18,412),(1,55,18,413),(1,55,18,414),(1,55,18,415),(1,56,18,416),(1,56,18,417),(1,56,18,418),(1,56,18,419),(1,57,18,420),(1,57,18,421),(1,57,18,422),(1,57,18,423),(2,12,18,388),(2,12,18,392),(2,12,18,396),(2,12,18,400),(2,12,18,404),(2,12,18,408),(2,12,18,412),(2,12,18,416),(2,12,18,420),(2,13,18,389),(2,13,18,393),(2,13,18,397),(2,13,18,401),(2,13,18,405),(2,13,18,409),(2,13,18,413),(2,13,18,417),(2,13,18,421),(2,14,18,390),(2,14,18,394),(2,14,18,398),(2,14,18,402),(2,14,18,406),(2,14,18,410),(2,14,18,414),(2,14,18,418),(2,14,18,422),(2,15,18,391),(2,15,18,395),(2,15,18,399),(2,15,18,403),(2,15,18,407),(2,15,18,411),(2,15,18,415),(2,15,18,419),(2,15,18,423);
/*!40000 ALTER TABLE `es_goods_spec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_goods_type`
--

DROP TABLE IF EXISTS `es_goods_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_goods_type` (
  `type_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `props` longtext COMMENT '1输入项 可搜索 \n            2输入项 不可搜索\n            3选择项 渐进式搜索 \n            4选择项 普通搜索 \n            5选择项 不可搜索 ',
  `params` longtext,
  `disabled` smallint(1) DEFAULT NULL,
  `is_physical` smallint(1) DEFAULT NULL,
  `have_prop` smallint(1) DEFAULT NULL COMMENT '1是\n            0否',
  `have_parm` smallint(1) DEFAULT NULL COMMENT '1是\n            0否',
  `join_brand` smallint(1) DEFAULT NULL COMMENT '1是\n            0否',
  `have_field` smallint(1) DEFAULT '0',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_goods_type`
--

LOCK TABLES `es_goods_type` WRITE;
/*!40000 ALTER TABLE `es_goods_type` DISABLE KEYS */;
INSERT INTO `es_goods_type` VALUES (1,'运动','[{\"hidden\":0,\"name\":\"外料\",\"nums\":[],\"optionAr\":[],\"optionMap\":[],\"options\":\"\",\"type\":1,\"valStr\":\"\",\"value\":\"\",\"valueList\":[]},{\"hidden\":0,\"name\":\"里料\",\"nums\":[],\"optionAr\":[],\"optionMap\":[],\"options\":\"\",\"type\":1,\"valStr\":\"\",\"value\":\"\",\"valueList\":[]},{\"hidden\":0,\"name\":\"胸杯里料\",\"nums\":[],\"optionAr\":[],\"optionMap\":[],\"options\":\"\",\"type\":1,\"valStr\":\"\",\"value\":\"\",\"valueList\":[]}]',NULL,0,0,1,0,1,0),(2,'鲜花','[{\"hidden\":0,\"name\":\"面料\",\"nums\":[],\"optionAr\":[],\"optionMap\":[],\"options\":\"\",\"type\":1,\"valStr\":\"\",\"value\":\"\",\"valueList\":[]}]',NULL,0,0,1,0,1,0),(3,'珠宝',NULL,NULL,0,0,0,0,1,0),(4,'美食',NULL,NULL,0,0,0,0,1,0),(5,'家电',NULL,NULL,0,0,0,0,0,0),(6,'鞋靴','[{\"hidden\":0,\"name\":\"面料\",\"nums\":[],\"optionAr\":[],\"optionMap\":[],\"options\":\"\",\"type\":1,\"valStr\":\"\",\"value\":\"\",\"valueList\":[]},{\"hidden\":0,\"name\":\"大底\",\"nums\":[],\"optionAr\":[],\"optionMap\":[],\"options\":\"\",\"type\":1,\"valStr\":\"\",\"value\":\"\",\"valueList\":[]},{\"hidden\":0,\"name\":\"花饰材料\",\"nums\":[],\"optionAr\":[],\"optionMap\":[],\"options\":\"\",\"type\":1,\"valStr\":\"\",\"value\":\"\",\"valueList\":[]},{\"hidden\":0,\"name\":\"鞋跟\",\"nums\":[],\"optionAr\":[],\"optionMap\":[],\"options\":\"\",\"type\":1,\"valStr\":\"\",\"value\":\"\",\"valueList\":[]},{\"hidden\":0,\"name\":\"跟高\",\"nums\":[],\"optionAr\":[],\"optionMap\":[],\"options\":\"\",\"type\":1,\"valStr\":\"\",\"value\":\"\",\"valueList\":[]}]',NULL,0,0,1,0,1,0),(7,'服装','[{\"hidden\":0,\"name\":\"面料\",\"nums\":[],\"optionAr\":[],\"optionMap\":[],\"options\":\"\",\"type\":1,\"valStr\":\"\",\"value\":\"\",\"valueList\":[]}]',NULL,0,0,1,0,1,0);
/*!40000 ALTER TABLE `es_goods_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_group_buy`
--

DROP TABLE IF EXISTS `es_group_buy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_group_buy` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `descript` varchar(255) DEFAULT NULL,
  `content` text,
  `discount` double DEFAULT NULL,
  `price` decimal(20,3) DEFAULT NULL,
  `start_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  `buy_count` int(11) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  `dis_type` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `is_index` smallint(1) DEFAULT '0',
  PRIMARY KEY (`groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_group_buy`
--

LOCK TABLES `es_group_buy` WRITE;
/*!40000 ALTER TABLE `es_group_buy` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_group_buy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_group_buy_count`
--

DROP TABLE IF EXISTS `es_group_buy_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_group_buy_count` (
  `ruleid` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) DEFAULT NULL,
  `start_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`ruleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_group_buy_count`
--

LOCK TABLES `es_group_buy_count` WRITE;
/*!40000 ALTER TABLE `es_group_buy_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_group_buy_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_guestbook`
--

DROP TABLE IF EXISTS `es_guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `parentid` int(11) DEFAULT NULL,
  `dateline` int(11) DEFAULT NULL,
  `issubject` smallint(1) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `sex` smallint(1) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_guestbook`
--

LOCK TABLES `es_guestbook` WRITE;
/*!40000 ALTER TABLE `es_guestbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_guestbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_index_item`
--

DROP TABLE IF EXISTS `es_index_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_index_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_index_item`
--

LOCK TABLES `es_index_item` WRITE;
/*!40000 ALTER TABLE `es_index_item` DISABLE KEYS */;
INSERT INTO `es_index_item` VALUES (1,'站点统计信息','/core/admin/indexItem!base.do',1),(2,'订单统计信息','/shop/admin/indexItem!order.do',2),(3,'商品统计信息','/shop/admin/indexItem!goods.do',3),(4,'流量统计信息','/core/admin/indexItem!access.do',4),(5,'访问点','/core/admin/indexItem!point.do',5);
/*!40000 ALTER TABLE `es_index_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_invoice_apply`
--

DROP TABLE IF EXISTS `es_invoice_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_invoice_apply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `add_time` bigint(20) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `state` smallint(1) DEFAULT '0' COMMENT '0已申请\n            1已通过',
  `refuse_reson` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_invoice_apply`
--

LOCK TABLES `es_invoice_apply` WRITE;
/*!40000 ALTER TABLE `es_invoice_apply` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_invoice_apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_limitbuy`
--

DROP TABLE IF EXISTS `es_limitbuy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_limitbuy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `start_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `is_index` smallint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_limitbuy`
--

LOCK TABLES `es_limitbuy` WRITE;
/*!40000 ALTER TABLE `es_limitbuy` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_limitbuy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_limitbuy_goods`
--

DROP TABLE IF EXISTS `es_limitbuy_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_limitbuy_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limitbuyid` int(11) DEFAULT NULL,
  `goodsid` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_limitbuy_goods`
--

LOCK TABLES `es_limitbuy_goods` WRITE;
/*!40000 ALTER TABLE `es_limitbuy_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_limitbuy_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_logi_company`
--

DROP TABLE IF EXISTS `es_logi_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_logi_company` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_logi_company`
--

LOCK TABLES `es_logi_company` WRITE;
/*!40000 ALTER TABLE `es_logi_company` DISABLE KEYS */;
INSERT INTO `es_logi_company` VALUES (1,'EMS'),(2,'一统快递'),(3,'圆通快递'),(4,'申通快递'),(5,'天天快递'),(6,'韵达快递'),(7,'龙邦物流'),(8,'宅急送');
/*!40000 ALTER TABLE `es_logi_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_member`
--

DROP TABLE IF EXISTS `es_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_member` (
  `member_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `agentid` int(11) DEFAULT NULL,
  `parentid` int(11) DEFAULT '0',
  `lv_id` mediumint(8) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `regtime` bigint(8) DEFAULT NULL,
  `pw_answer` varchar(255) DEFAULT NULL,
  `pw_question` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sex` smallint(1) DEFAULT NULL COMMENT '0女\n            1男',
  `birthday` bigint(8) DEFAULT NULL,
  `advance` decimal(20,3) DEFAULT '0.000',
  `province_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `point` int(11) DEFAULT '0',
  `mp` int(11) DEFAULT '0',
  `QQ` varchar(50) DEFAULT NULL,
  `msn` varchar(50) DEFAULT NULL,
  `remark` text,
  `lastlogin` bigint(20) DEFAULT '1280629569',
  `is_agent` smallint(1) DEFAULT '0' COMMENT '1.是\n            0否',
  `logincount` int(11) DEFAULT '0',
  `is_cheked` smallint(1) DEFAULT '0',
  `registerip` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_member`
--

LOCK TABLES `es_member` WRITE;
/*!40000 ALTER TABLE `es_member` DISABLE KEYS */;
INSERT INTO `es_member` VALUES (1,NULL,0,1,'lina','lina_jx@126.com','f6f4deb7dad1c2e5e0b4d6569dc3c1c5',1314631464651,NULL,NULL,'lina',0,NULL,0.000,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,10,0,NULL,NULL,NULL,1314670031,0,3,0,'127.0.0.1');
/*!40000 ALTER TABLE `es_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_member_address`
--

DROP TABLE IF EXISTS `es_member_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_member_address` (
  `addr_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `addr` varchar(255) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `def_addr` int(11) DEFAULT '0',
  PRIMARY KEY (`addr_id`),
  KEY `fk_member_addr` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_member_address`
--

LOCK TABLES `es_member_address` WRITE;
/*!40000 ALTER TABLE `es_member_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_member_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_member_coupon`
--

DROP TABLE IF EXISTS `es_member_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_member_coupon` (
  `memc_code` varchar(255) NOT NULL,
  `cpns_id` mediumint(8) unsigned NOT NULL,
  `member_id` mediumint(8) unsigned NOT NULL,
  `memc_gen_orderid` varchar(15) DEFAULT NULL,
  `memc_source` enum('a','b','c') NOT NULL DEFAULT 'a',
  `memc_enabled` enum('true','false') NOT NULL DEFAULT 'true',
  `memc_used_times` mediumint(9) DEFAULT '0',
  `memc_gen_time` bigint(8) DEFAULT NULL,
  PRIMARY KEY (`memc_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_member_coupon`
--

LOCK TABLES `es_member_coupon` WRITE;
/*!40000 ALTER TABLE `es_member_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_member_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_member_lv`
--

DROP TABLE IF EXISTS `es_member_lv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_member_lv` (
  `lv_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `default_lv` tinyint(1) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL COMMENT '如80%为8折',
  `point` int(11) DEFAULT '0',
  PRIMARY KEY (`lv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_member_lv`
--

LOCK TABLES `es_member_lv` WRITE;
/*!40000 ALTER TABLE `es_member_lv` DISABLE KEYS */;
INSERT INTO `es_member_lv` VALUES (1,'1级',1,100,0);
/*!40000 ALTER TABLE `es_member_lv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_menu`
--

DROP TABLE IF EXISTS `es_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(50) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `sorder` int(11) DEFAULT '50',
  `menutype` int(11) DEFAULT NULL,
  `datatype` varchar(50) DEFAULT NULL,
  `selected` int(11) DEFAULT '0',
  `deleteflag` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_menu`
--

LOCK TABLES `es_menu` WRITE;
/*!40000 ALTER TABLE `es_menu` DISABLE KEYS */;
INSERT INTO `es_menu` VALUES (1,'',0,'商品','/shop/admin/goods!list.do','ajax',50,2,NULL,0,0),(2,'',1,'商品管理','','',50,2,NULL,0,0),(3,'',2,'商品列表','/shop/admin/goods!list.do','ajax',50,2,NULL,0,0),(4,'',2,'添加商品','/shop/admin/goods!add.do','ajax',50,2,NULL,0,0),(5,'',1,'商品类别管理','','',50,2,NULL,0,0),(6,'',5,'类别列表','/shop/admin/cat!list.do','',50,2,NULL,0,0),(7,'',5,'添加类别','/shop/admin/cat!add.do','',50,2,NULL,0,0),(8,'',1,'品牌管理','','',50,2,NULL,0,0),(9,'',8,'品牌列表','/shop/admin/brand!list.do','',50,2,NULL,0,0),(10,'',8,'添加品牌','/shop/admin/brand!add.do','',50,2,NULL,0,0),(11,'',1,'类型管理','','',50,2,NULL,0,0),(12,'',11,'类型列表','/shop/admin/type!list.do','',50,2,NULL,0,0),(13,'',11,'添加类型','/shop/admin/type!step1.do','',50,2,NULL,0,0),(14,'',1,'规格管理','','',50,2,NULL,0,0),(15,'',14,'规格列表','/shop/admin/spec!list.do','ajax',50,2,NULL,0,0),(16,'',14,'添加规格','/shop/admin/spec!add.do','ajax',50,2,NULL,0,0),(17,'',1,'标签管理','','',50,2,NULL,0,0),(18,'',17,'标签列表','/shop/admin/tag!list.do','',50,2,NULL,0,0),(19,'',17,'添加标签','/shop/admin/tag!add.do','',50,2,NULL,0,0),(20,'',0,'订单','/shop/admin/order!list.do','ajax',50,2,NULL,0,0),(21,'',20,'订单管理','','',50,2,NULL,0,0),(22,'',21,'订单列表','/shop/admin/order!list.do','ajax',50,2,NULL,0,0),(23,'',20,'单据管理','','',50,2,NULL,0,0),(24,'',23,'收款单','/shop/admin/orderReport!paymentList.do','',50,2,NULL,0,0),(25,'',23,'退款单','/shop/admin/orderReport!refundList.do','',50,2,NULL,0,0),(26,'',23,'发货单','/shop/admin/orderReport!shippingList.do','',50,2,NULL,0,0),(27,'',23,'退货单','/shop/admin/orderReport!returnedList.do','',50,2,NULL,0,0),(28,'',20,'快递单管理','','',50,2,NULL,0,0),(29,'',28,'快递单模板管理','/shop/admin/printTmpl!list.do','',50,2,NULL,0,0),(30,'',28,'发货信息管理','/shop/admin/dlyCenter!list.do','',50,2,NULL,0,0),(31,'',0,'会员','/shop/admin/member!memberlist.do','',50,2,NULL,0,0),(32,'',31,'会员管理','','',50,2,NULL,0,0),(33,'',32,'会员列表','/shop/admin/member!memberlist.do','',50,2,NULL,0,0),(34,'',32,'会员等级','/shop/admin/member!list_lv.do','',50,2,NULL,0,0),(35,'',31,'商品评论','','',50,2,NULL,0,0),(36,'',35,'商品评论列表','/shop/admin/comments!bglist.do?object_type=discuss','',50,2,NULL,0,0),(37,'',31,'购买咨询','','',50,2,NULL,0,0),(38,'',37,'购买咨询列表','/shop/admin/comments!bglist.do?object_type=ask','',50,2,NULL,0,0),(39,'',31,'商店留言','','',50,2,NULL,0,0),(40,'',39,'留言列表','/shop/admin/comments!bglist.do?object_type=leavewords','',50,2,NULL,0,0),(41,'',31,'代理商管理','','',50,2,NULL,0,0),(42,'',41,'代理商申请列表','/shop/admin/agent!list.do?state=0','',50,2,NULL,0,0),(43,'',41,'代理商列表','/shop/admin/agent!list.do?state=1','',50,2,NULL,0,0),(44,'',41,'待转账列表','/shop/admin/transfer!list.do?isTransfer=0','',50,2,NULL,0,0),(45,'',41,'已转账列表','/shop/admin/transfer!list.do?isTransfer=1','',50,2,NULL,0,0),(46,'',0,'促销','/shop/admin/activities/index.jsp','',50,2,NULL,0,0),(47,'',46,'团购','','',50,2,NULL,0,0),(48,'',47,'团购列表','/shop/admin/groupBuy!list.do','',50,2,NULL,0,0),(49,'',47,'新增团购','/shop/admin/groupBuy!add.do','',50,2,NULL,0,0),(50,'',46,'活动','','',50,2,NULL,0,0),(51,'',50,'活动列表','/shop/admin/activity!list.do','',50,2,NULL,0,0),(52,'',50,'新增活动','/shop/admin/activity!add.do','',50,2,NULL,0,0),(53,'',46,'优惠券','','',50,2,NULL,0,0),(54,'',53,'优惠券列表','/shop/admin/coupon!list.do','',50,2,NULL,0,0),(55,'',53,'积分兑换优惠券','/shop/admin/coupon!exlist.do','',50,2,NULL,0,0),(56,'',46,'赠品兑换','','',50,2,NULL,0,0),(57,'',56,'赠品分类','/shop/admin/freeOfferCategory!list.do','',50,2,NULL,0,0),(58,'',56,'赠品列表','/shop/admin/freeOffer!list.do','',50,2,NULL,0,0),(59,'',46,'捆绑销售','','',50,2,NULL,0,0),(60,'',59,'捆绑商品列表','/shop/admin/bind!bindlist.do','',50,2,NULL,0,0),(61,'',0,'设置','/admin/setting/setting!edit_input.do','',50,2,NULL,0,0),(62,'',61,'网店设置','','',50,2,NULL,0,0),(63,'',62,'系统设置','/admin/setting/setting!edit_input.do','',50,2,NULL,0,0),(64,'',62,'我的账户','/core/admin/user/baseInfo.do','',50,2,NULL,0,0),(65,'',62,'站点设置','/core/admin/user/userSite!edit.do','',50,2,NULL,0,0),(66,'',62,'域名管理','/core/admin/user/userSite!domain.do','',50,2,NULL,0,0),(67,'',61,'配送管理','','',50,2,NULL,0,0),(68,'',67,'配送方式','/shop/admin/dlyType!list.do','',50,2,NULL,0,0),(69,'',67,'地区管理','/shop/admin/region!list.do','',50,2,NULL,0,0),(70,'',67,'物流公司','/shop/admin/logi!list_logi.do','',50,2,NULL,0,0),(71,'',61,'支付方式设置','','',50,2,NULL,0,0),(72,'',71,'支付方式','/shop/admin/payCfg!list.do','',50,2,NULL,0,0),(73,'',61,'权限管理','','',50,2,NULL,0,0),(74,'',73,'管理员管理','/core/admin/user/userAdmin.do','',50,2,NULL,0,0),(75,'',73,'角色管理','/core/admin/role!list.do','',50,2,NULL,0,0),(76,'',61,'数据管理','','',50,2,NULL,0,0),(77,'',76,'数据初始化','/core/admin/user/userSite!toInitData.do','',50,2,NULL,0,0),(78,'',76,'生成商品图片','/shop/admin/gallery.do','',50,2,NULL,0,0),(79,'',0,'页面','/core/admin/user/siteTheme.do','',50,2,NULL,0,0),(80,'',79,'主题管理','','',50,2,NULL,0,0),(81,'',80,'站点前台主题','/core/admin/user/siteTheme.do','',50,2,NULL,0,0),(82,'',80,'站点后台主题','/core/admin/user/siteAdminTheme.do','',50,2,NULL,0,0),(83,'',79,'广告管理','','',50,2,NULL,0,0),(84,'',83,'广告列表','/core/admin/adv!list.do','',50,2,NULL,0,0),(85,'',83,'广告位置','/core/admin/adColumn!list.do','',50,2,NULL,0,0),(86,'',79,'页面管理','','',50,2,NULL,0,0),(87,'',86,'文章管理','/cms/admin/cat!list.do','',50,2,NULL,0,0),(88,'',86,'友情链接','/core/admin/friendsLink!list.do','',50,2,NULL,0,0),(89,'',86,'导航栏管理','/core/admin/siteMenu!list.do','',50,2,NULL,0,0),(90,'',0,'报表','/shop/admin/statistics/index.jsp','',50,2,NULL,0,0),(91,'',90,'销售统计','','',50,2,NULL,0,0),(92,'',91,'销售额总览','/shop/admin/statistics!monthamount.do','',50,2,NULL,0,0),(93,'',91,'销售量（额）排名','/shop/admin/rank.do','',50,2,NULL,0,0),(94,'',91,'用户购买量（额）排名','/shop/admin/rank!rankmember.do','',50,2,NULL,0,0),(95,'',91,'商品访问购买率','/shop/admin/rank!rankbuy.do','',50,2,NULL,0,0),(96,'',91,'销售指标分析','/shop/admin/rank!rankall.do','',50,2,NULL,0,0),(97,'',90,'订单统计','','',50,2,NULL,0,0),(98,'',97,'按支付方式','/shop/admin/statistics!statByPayment.do','',50,2,NULL,0,0),(99,'',97,'按配送方式','/shop/admin/statistics!statByShip.do','',50,2,NULL,0,0),(100,'',0,'浏览网站','../','_blank',50,1,NULL,0,0),(101,'',0,'退出','/admin/logout.do','_self',50,1,NULL,0,0);
/*!40000 ALTER TABLE `es_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_message`
--

DROP TABLE IF EXISTS `es_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_message` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `for_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `msg_from` varchar(30) NOT NULL DEFAULT 'anonymous',
  `from_id` mediumint(8) unsigned DEFAULT '0',
  `from_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `to_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `msg_to` varchar(50) DEFAULT NULL,
  `to_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `unread` enum('1','0') NOT NULL DEFAULT '0',
  `folder` enum('inbox','outbox') NOT NULL DEFAULT 'inbox',
  `email` varchar(255) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `subject` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  `rel_order` bigint(20) unsigned DEFAULT '0',
  `date_line` bigint(8) NOT NULL DEFAULT '0',
  `is_sec` enum('true','false') NOT NULL DEFAULT 'true',
  `del_status` enum('0','1','2') DEFAULT '0',
  `disabled` enum('true','false') NOT NULL DEFAULT 'false',
  `msg_ip` varchar(20) NOT NULL DEFAULT '',
  `msg_type` enum('default','payment') NOT NULL DEFAULT 'default',
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_message`
--

LOCK TABLES `es_message` WRITE;
/*!40000 ALTER TABLE `es_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_order`
--

DROP TABLE IF EXISTS `es_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_order` (
  `order_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `sn` varchar(50) DEFAULT NULL,
  `member_id` mediumint(8) DEFAULT NULL,
  `status` smallint(1) DEFAULT NULL COMMENT '-2退货\n            -1退款\n            0未付款\n            1已付款\n            2已发货\n            3.完成\n            4作废',
  `pay_status` smallint(1) DEFAULT NULL COMMENT '0未付款\n            1已付款\n            2已经退款\n            3部分退款\n            4部分付款',
  `ship_status` smallint(1) DEFAULT NULL COMMENT '0未发货\n            1已发货\n            2.已退货\n            3 部分退货\n            4 部分发货',
  `shipping_id` mediumint(8) DEFAULT NULL,
  `shipping_type` varchar(255) DEFAULT NULL,
  `shipping_area` varchar(255) DEFAULT NULL,
  `payment_id` mediumint(8) DEFAULT NULL,
  `payment_name` varchar(50) DEFAULT NULL,
  `payment_type` varchar(50) DEFAULT NULL,
  `paymoney` decimal(20,2) DEFAULT NULL,
  `goods` text,
  `create_time` bigint(8) DEFAULT NULL,
  `ship_name` varchar(255) DEFAULT NULL,
  `ship_addr` varchar(255) DEFAULT NULL,
  `ship_zip` varchar(20) DEFAULT NULL,
  `ship_email` varchar(50) DEFAULT NULL,
  `ship_mobile` varchar(50) DEFAULT NULL,
  `ship_tel` varchar(50) DEFAULT NULL,
  `ship_day` varchar(255) DEFAULT NULL,
  `ship_time` varchar(255) DEFAULT NULL,
  `is_protect` tinyint(1) DEFAULT NULL,
  `protect_price` decimal(20,3) DEFAULT NULL,
  `goods_amount` decimal(20,2) DEFAULT NULL,
  `shipping_amount` decimal(20,3) DEFAULT NULL,
  `order_amount` decimal(20,3) DEFAULT NULL,
  `weight` decimal(20,3) DEFAULT NULL,
  `goods_num` mediumint(8) DEFAULT NULL,
  `gainedpoint` int(11) DEFAULT '0',
  `consumepoint` int(11) DEFAULT '0',
  `remark` longtext,
  `disabled` tinyint(1) DEFAULT NULL,
  `discount` decimal(20,3) DEFAULT NULL,
  `imported` smallint(1) DEFAULT '0' COMMENT '0未转账\n            1已转账',
  `pimported` smallint(1) DEFAULT '0',
  `complete_time` int(11) DEFAULT '0',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_order`
--

LOCK TABLES `es_order` WRITE;
/*!40000 ALTER TABLE `es_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_order_gift`
--

DROP TABLE IF EXISTS `es_order_gift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_order_gift` (
  `order_id` mediumint(8) DEFAULT NULL,
  `gift_id` mediumint(8) DEFAULT NULL,
  `gift_name` varchar(255) DEFAULT NULL,
  `getmethod` enum('present','exchange') DEFAULT NULL,
  `point` int(10) DEFAULT NULL,
  `num` int(10) DEFAULT '0',
  `shipnum` int(10) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_order_gift`
--

LOCK TABLES `es_order_gift` WRITE;
/*!40000 ALTER TABLE `es_order_gift` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_order_gift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_order_items`
--

DROP TABLE IF EXISTS `es_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_order_items` (
  `item_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) DEFAULT NULL,
  `goods_id` mediumint(8) DEFAULT NULL,
  `spec_id` mediumint(8) DEFAULT NULL,
  `num` mediumint(8) DEFAULT NULL,
  `ship_num` mediumint(8) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(20,3) DEFAULT NULL,
  `gainedpoint` int(11) DEFAULT '0',
  `addon` text,
  `state` smallint(1) DEFAULT '0' COMMENT '状态:\n            0正常\n            1申请退货\n            2已退货\n            3申请换货\n            4已换货',
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_order_items`
--

LOCK TABLES `es_order_items` WRITE;
/*!40000 ALTER TABLE `es_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_order_log`
--

DROP TABLE IF EXISTS `es_order_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_order_log` (
  `log_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) DEFAULT NULL,
  `op_id` mediumint(8) DEFAULT NULL,
  `op_name` varchar(50) DEFAULT NULL,
  `message` longtext,
  `op_time` bigint(8) DEFAULT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_order_log`
--

LOCK TABLES `es_order_log` WRITE;
/*!40000 ALTER TABLE `es_order_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_order_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_order_meta`
--

DROP TABLE IF EXISTS `es_order_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_order_meta` (
  `metaid` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` text,
  PRIMARY KEY (`metaid`),
  KEY `es_ind_orderex_orderid` (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_order_meta`
--

LOCK TABLES `es_order_meta` WRITE;
/*!40000 ALTER TABLE `es_order_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_order_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_order_pmt`
--

DROP TABLE IF EXISTS `es_order_pmt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_order_pmt` (
  `pmt_id` mediumint(8) DEFAULT NULL,
  `order_id` mediumint(8) DEFAULT NULL,
  `pmt_amount` decimal(20,3) DEFAULT NULL,
  `pmt_describe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_order_pmt`
--

LOCK TABLES `es_order_pmt` WRITE;
/*!40000 ALTER TABLE `es_order_pmt` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_order_pmt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_package_product`
--

DROP TABLE IF EXISTS `es_package_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_package_product` (
  `product_id` mediumint(8) unsigned NOT NULL,
  `goods_id` mediumint(8) unsigned NOT NULL,
  `discount` decimal(5,3) DEFAULT NULL,
  `pkgnum` mediumint(8) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`product_id`,`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_package_product`
--

LOCK TABLES `es_package_product` WRITE;
/*!40000 ALTER TABLE `es_package_product` DISABLE KEYS */;
INSERT INTO `es_package_product` VALUES (223,21,NULL,1),(317,21,NULL,1);
/*!40000 ALTER TABLE `es_package_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_payment_cfg`
--

DROP TABLE IF EXISTS `es_payment_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_payment_cfg` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `config` longtext,
  `biref` longtext,
  `pay_fee` decimal(20,2) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_payment_cfg`
--

LOCK TABLES `es_payment_cfg` WRITE;
/*!40000 ALTER TABLE `es_payment_cfg` DISABLE KEYS */;
INSERT INTO `es_payment_cfg` VALUES (1,'支付宝','{\"callback_encoding\":\"\",\"return_encoding\":\"\",\"partner\":\"123456\",\"seller_email\":\"demo@qq.com\",\"key\":\"123456\"}','<p>演示用，支付宝担保交易接口，请在后台修改相应参数</p>',NULL,'alipayEscowPlugin'),(2,'财付通','{\"chnid\":\"123456\",\"key\":\"123456\"}','<p>演示用，财付通担保交易接口，请在后台修改相应参数</p>',NULL,'tenpayMedPlugin'),(3,'货到付款','{}','<p>货到付款</p>',NULL,'offline'),(4,'预存款支付','{}','<p>预存款支付</p>',NULL,'deposit');
/*!40000 ALTER TABLE `es_payment_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_payment_logs`
--

DROP TABLE IF EXISTS `es_payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_payment_logs` (
  `payment_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `order_id` mediumint(8) DEFAULT NULL,
  `member_id` mediumint(8) DEFAULT NULL,
  `account` varchar(50) DEFAULT NULL,
  `bank` varchar(50) DEFAULT NULL,
  `pay_user` varchar(50) DEFAULT NULL,
  `money` decimal(20,3) DEFAULT NULL,
  `pay_cost` decimal(20,3) DEFAULT NULL,
  `pay_type` varchar(50) DEFAULT NULL,
  `pay_method` varchar(50) DEFAULT NULL,
  `remark` longtext,
  `op_id` mediumint(8) DEFAULT NULL,
  `type` smallint(1) DEFAULT NULL COMMENT '1收款\n            2退款',
  `status` smallint(1) DEFAULT NULL COMMENT '1成功\n            2进行中',
  `create_time` bigint(8) DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_payment_logs`
--

LOCK TABLES `es_payment_logs` WRITE;
/*!40000 ALTER TABLE `es_payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_pmt_goods`
--

DROP TABLE IF EXISTS `es_pmt_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_pmt_goods` (
  `pmt_id` mediumint(8) DEFAULT NULL,
  `goods_id` mediumint(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_pmt_goods`
--

LOCK TABLES `es_pmt_goods` WRITE;
/*!40000 ALTER TABLE `es_pmt_goods` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_pmt_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_pmt_member_lv`
--

DROP TABLE IF EXISTS `es_pmt_member_lv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_pmt_member_lv` (
  `pmt_id` mediumint(8) DEFAULT NULL,
  `lv_id` mediumint(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_pmt_member_lv`
--

LOCK TABLES `es_pmt_member_lv` WRITE;
/*!40000 ALTER TABLE `es_pmt_member_lv` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_pmt_member_lv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_point_history`
--

DROP TABLE IF EXISTS `es_point_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_point_history` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `member_id` mediumint(9) NOT NULL,
  `point` int(10) NOT NULL,
  `time` bigint(8) NOT NULL,
  `reason` varchar(50) NOT NULL,
  `related_id` bigint(20) unsigned DEFAULT NULL COMMENT '相关的订单ID/会员ID',
  `type` smallint(1) NOT NULL COMMENT '1为获得\n            2为消费\n            ',
  `operator` varchar(50) DEFAULT NULL,
  `point_type` smallint(1) DEFAULT '0' COMMENT '0等级积分 1为消费积分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_point_history`
--

LOCK TABLES `es_point_history` WRITE;
/*!40000 ALTER TABLE `es_point_history` DISABLE KEYS */;
INSERT INTO `es_point_history` VALUES (1,1,10,1314631464722,'register',NULL,1,'member',0),(2,1,0,1314670031689,'login',NULL,1,'member',0);
/*!40000 ALTER TABLE `es_point_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_print_tmpl`
--

DROP TABLE IF EXISTS `es_print_tmpl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_print_tmpl` (
  `prt_tmpl_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `prt_tmpl_title` varchar(100) NOT NULL,
  `shortcut` enum('false','true') DEFAULT 'false',
  `disabled` enum('false','true') DEFAULT 'false',
  `prt_tmpl_width` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `prt_tmpl_height` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `prt_tmpl_data` longtext,
  `bgimage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`prt_tmpl_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_print_tmpl`
--

LOCK TABLES `es_print_tmpl` WRITE;
/*!40000 ALTER TABLE `es_print_tmpl` DISABLE KEYS */;
INSERT INTO `es_print_tmpl` VALUES (1,'宅急送','true','false',250,150,'<printer picpos=0:0><items><name>收货人-姓名</name><ucode>ship_name</ucode><font>Times New Roman</font><fontsize>12</fontsize><letterspace>0</letterspace><bold>false</bold><italic>false</italic><align>left</align><position>489:129:115.25:34.25</position></items><items><name>收货人-地址</name><ucode>ship_addr</ucode><font>Times New Roman</font><fontsize>12</fontsize><letterspace>0</letterspace><bold>false</bold><italic>false</italic><align>left</align><position>480:162:270.25:52.25</position></items><items><name>收货人-地区</name><ucode>ship_area_0</ucode><font>Times New Roman</font><fontsize>12</fontsize><letterspace>0</letterspace><bold>false</bold><italic>false</italic><align>left</align><position>633:124:134.25:35.25</position></items><items><name>收货人-电话</name><ucode>ship_tel</ucode><font>Times New Roman</font><fontsize>12</fontsize><letterspace>0</letterspace><bold>false</bold><italic>false</italic><align>left</align><position>461:252:130:21</position></items><items><name>收货人-手机</name><ucode>ship_mobile</ucode><font>Times New Roman</font><fontsize>12</fontsize><letterspace>0</letterspace><bold>false</bold><italic>false</italic><align>left</align><position>631:249:117:21</position></items><items><name>发货人-姓名</name><ucode>dly_name</ucode><font>Times New Roman</font><fontsize>12</fontsize><letterspace>0</letterspace><bold>false</bold><italic>false</italic><align>left</align><position>128:131:109.25:25.25</position></items><items><name>发货人-地区</name><ucode>dly_area_0</ucode><font>Times New Roman</font><fontsize>12</fontsize><letterspace>0</letterspace><bold>false</bold><italic>false</italic><align>left</align><position>272:128:134:34</position></items><items><name>发货人-地址</name><ucode>dly_address</ucode><font>Times New Roman</font><fontsize>12</fontsize><letterspace>0</letterspace><bold>false</bold><italic>false</italic><align>left</align><position>115:168:271.25:48.25</position></items><items><name>发货人-电话</name><ucode>dly_tel</ucode><font>Times New Roman</font><fontsize>12</fontsize><letterspace>0</letterspace><bold>false</bold><italic>false</italic><align>left</align><position>99:254:138.25:18.25</position></items><items><name>发货人-手机</name><ucode>dly_mobile</ucode><font>Times New Roman</font><fontsize>12</fontsize><letterspace>0</letterspace><bold>false</bold><italic>false</italic><align>left</align><position>271:252:133:22</position></items><items><name>√</name><ucode>null</ucode><font>Times New Roman</font><fontsize>14</fontsize><letterspace>0</letterspace><bold>false</bold><italic>false</italic><align>left</align><position>379:428:18:16</position></items><items><name>订单-备注</name><ucode>order_memo</ucode><font>Times New Roman</font><fontsize>10</fontsize><letterspace>0</letterspace><bold>false</bold><italic>false</italic><align>left</align><position>518:361:132:62</position></items><items><name>订单物品总重量</name><ucode>order_weight</ucode><font>Times New Roman</font><fontsize>14</fontsize><letterspace>0</letterspace><bold>false</bold><italic>false</italic><align>left</align><position>360:304:70.25:20.25</position></items><items><name>订单-物品数量</name><ucode>order_count</ucode><font>Times New Roman</font><fontsize>14</fontsize><letterspace>0</letterspace><bold>false</bold><italic>false</italic><align>left</align><position>105:304:96:32</position></items><items><name>订单费用金额</name><ucode>ship_price</ucode><font>Times New Roman</font><fontsize>10</fontsize><letterspace>0</letterspace><bold>false</bold><italic>false</italic><align>left</align><position>254:427:67:27</position></items></printer>','http://static.enationsoft.com/attachment/moonbasa/printTmpl/201005051059310366.jpg');
/*!40000 ALTER TABLE `es_print_tmpl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_product`
--

DROP TABLE IF EXISTS `es_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_product` (
  `product_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `goods_id` mediumint(8) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sn` varchar(50) DEFAULT NULL,
  `store` mediumint(8) DEFAULT NULL,
  `price` decimal(20,3) DEFAULT NULL,
  `specs` longtext,
  `cost` decimal(20,3) DEFAULT NULL,
  `weight` decimal(20,3) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=485 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_product`
--

LOCK TABLES `es_product` WRITE;
/*!40000 ALTER TABLE `es_product` DISABLE KEYS */;
INSERT INTO `es_product` VALUES (215,15,'进口刺绣花边精棉内裤','G20100517053246-1',8,39.000,'肤色、M',10.000,0.000),(216,15,'进口刺绣花边精棉内裤','G20100517053246-2',8,39.000,'肤色、L',10.000,0.000),(217,15,'进口刺绣花边精棉内裤','G20100517053246-3',8,39.000,'肤色、XL',10.000,0.000),(218,15,'进口刺绣花边精棉内裤','G20100517053246-4',8,39.000,'肤色、XXL',10.000,0.000),(223,17,'Apple/苹果 iPhone 7 Plus 手机苹果7p iphone7 七代港版国行现货','G20100517054308',20,4888.000,'黑色、均码',4888.000,0.000),(224,16,'莹滑蕾丝性感内裤','G20100517053902-1',20,29.000,'黑色、M',8.000,0.000),(225,16,'莹滑蕾丝性感内裤','G20100517053902-2',20,29.000,'黑色、L',8.000,0.000),(226,16,'莹滑蕾丝性感内裤','G20100517053902-3',20,29.000,'黑色、XL',8.000,0.000),(234,9,'高包容全罩杯塑身文胸','G20100517121537-1',5,99.000,'肤色、75C',45.000,0.000),(235,9,'高包容全罩杯塑身文胸','G20100517121537-2',5,99.000,'肤色、75D',45.000,0.000),(236,9,'高包容全罩杯塑身文胸','G20100517121537-3',5,99.000,'肤色、80C',45.000,0.000),(314,7,'锦绣凤尾花边塑身抹胸','G20100517120007-1',5,99.000,'花色、75C',45.000,0.000),(315,7,'锦绣凤尾花边塑身抹胸','G20100517120007-2',5,99.000,'花色、75D',45.000,0.000),(316,7,'锦绣凤尾花边塑身抹胸','G20100517120007-3',5,99.000,'花色、80C',45.000,0.000),(317,6,'闪光玻璃纱性感文胸','G20100517115259-1',10,169.000,'灰色、70B',99.000,0.000),(318,6,'闪光玻璃纱性感文胸','G20100517115259-2',10,169.000,'灰色、70C',99.000,0.000),(319,6,'闪光玻璃纱性感文胸','G20100517115259-3',10,169.000,'灰色、70D',99.000,0.000),(320,6,'闪光玻璃纱性感文胸','G20100517115259-4',10,169.000,'灰色、75B',99.000,0.000),(321,6,'闪光玻璃纱性感文胸','G20100517115259-5',10,169.000,'灰色、75C',99.000,0.000),(322,6,'闪光玻璃纱性感文胸','G20100517115259-6',10,169.000,'灰色、75D',99.000,0.000),(323,6,'闪光玻璃纱性感文胸','G20100517115259-7',10,169.000,'灰色、80C',99.000,0.000),(324,6,'闪光玻璃纱性感文胸','G20100517115259-8',10,169.000,'灰色、80D',99.000,0.000),(325,6,'闪光玻璃纱性感文胸','G20100517115259-9',10,169.000,'灰色、80E',99.000,0.000),(326,6,'闪光玻璃纱性感文胸','G20100517115259-10',10,169.000,'灰色、85C',99.000,0.000),(327,6,'闪光玻璃纱性感文胸','G20100517115259-11',10,169.000,'灰色、85D',99.000,0.000),(328,6,'闪光玻璃纱性感文胸','G20100517115259-12',10,169.000,'灰色、85E',99.000,0.000),(341,8,'进口刺绣花边时尚保健塑形文胸','G20100517121129-1',5,98.000,'花色、70C',45.000,0.000),(342,8,'进口刺绣花边时尚保健塑形文胸','G20100517121129-2',5,98.000,'花色、70D',45.000,0.000),(343,8,'进口刺绣花边时尚保健塑形文胸','G20100517121129-3',5,98.000,'花色、75B',45.000,0.000),(344,8,'进口刺绣花边时尚保健塑形文胸','G20100517121129-4',5,98.000,'花色、75C',45.000,0.000),(345,8,'进口刺绣花边时尚保健塑形文胸','G20100517121129-5',5,98.000,'花色、75D',45.000,0.000),(346,8,'进口刺绣花边时尚保健塑形文胸','G20100517121129-6',5,98.000,'花色、80C',45.000,0.000),(347,8,'进口刺绣花边时尚保健塑形文胸','G20100517121129-7',5,98.000,'花色、80D',45.000,0.000),(348,11,'郁金香刺绣模杯文胸','G20100517023705',0,39.000,NULL,20.000,0.000),(388,18,'轻薄透气柔美针织开衫','G20100519015940-1',5,39.000,'黑色、S',15.000,0.000),(389,18,'轻薄透气柔美针织开衫','G20100519015940-2',5,39.000,'黑色、M',15.000,0.000),(390,18,'轻薄透气柔美针织开衫','G20100519015940-3',5,39.000,'黑色、L',15.000,0.000),(391,18,'轻薄透气柔美针织开衫','G20100519015940-4',5,39.000,'黑色、XL',15.000,0.000),(392,18,'轻薄透气柔美针织开衫','G20100519015940-5',5,39.000,'粉黄色、S',15.000,0.000),(393,18,'轻薄透气柔美针织开衫','G20100519015940-6',5,39.000,'粉黄色、M',15.000,0.000),(394,18,'轻薄透气柔美针织开衫','G20100519015940-7',5,39.000,'粉黄色、L',15.000,0.000),(395,18,'轻薄透气柔美针织开衫','G20100519015940-8',5,39.000,'粉黄色、XL',15.000,0.000),(396,18,'轻薄透气柔美针织开衫','G20100519015940-9',5,39.000,'橙色、S',15.000,0.000),(397,18,'轻薄透气柔美针织开衫','G20100519015940-10',5,39.000,'橙色、M',15.000,0.000),(398,18,'轻薄透气柔美针织开衫','G20100519015940-11',5,39.000,'橙色、L',15.000,0.000),(399,18,'轻薄透气柔美针织开衫','G20100519015940-12',5,39.000,'橙色、XL',15.000,0.000),(400,18,'轻薄透气柔美针织开衫','G20100519015940-13',5,39.000,'浅绿、S',15.000,0.000),(401,18,'轻薄透气柔美针织开衫','G20100519015940-14',5,39.000,'浅绿、M',15.000,0.000),(402,18,'轻薄透气柔美针织开衫','G20100519015940-15',5,39.000,'浅绿、L',15.000,0.000),(403,18,'轻薄透气柔美针织开衫','G20100519015940-16',5,39.000,'浅绿、XL',15.000,0.000),(404,18,'轻薄透气柔美针织开衫','G20100519015940-17',5,39.000,'浅蓝、S',15.000,0.000),(405,18,'轻薄透气柔美针织开衫','G20100519015940-18',5,39.000,'浅蓝、M',15.000,0.000),(406,18,'轻薄透气柔美针织开衫','G20100519015940-19',5,39.000,'浅蓝、L',15.000,0.000),(407,18,'轻薄透气柔美针织开衫','G20100519015940-20',5,39.000,'浅蓝、XL',15.000,0.000),(408,18,'轻薄透气柔美针织开衫','G20100519015940-21',5,39.000,'粉红色、S',15.000,0.000),(409,18,'轻薄透气柔美针织开衫','G20100519015940-22',5,39.000,'粉红色、M',15.000,0.000),(410,18,'轻薄透气柔美针织开衫','G20100519015940-23',5,39.000,'粉红色、L',15.000,0.000),(411,18,'轻薄透气柔美针织开衫','G20100519015940-24',5,39.000,'粉红色、XL',15.000,0.000),(412,18,'轻薄透气柔美针织开衫','G20100519015940-25',5,39.000,'浅玫红、S',15.000,0.000),(413,18,'轻薄透气柔美针织开衫','G20100519015940-26',5,39.000,'浅玫红、M',15.000,0.000),(414,18,'轻薄透气柔美针织开衫','G20100519015940-27',5,39.000,'浅玫红、L',15.000,0.000),(415,18,'轻薄透气柔美针织开衫','G20100519015940-28',5,39.000,'浅玫红、XL',15.000,0.000),(416,18,'轻薄透气柔美针织开衫','G20100519015940-29',5,39.000,'西瓜红、S',15.000,0.000),(417,18,'轻薄透气柔美针织开衫','G20100519015940-30',5,39.000,'西瓜红、M',15.000,0.000),(418,18,'轻薄透气柔美针织开衫','G20100519015940-31',5,39.000,'西瓜红、L',15.000,0.000),(419,18,'轻薄透气柔美针织开衫','G20100519015940-32',5,39.000,'西瓜红、XL',15.000,0.000),(420,18,'轻薄透气柔美针织开衫','G20100519015940-33',5,39.000,'粉紫色、S',15.000,0.000),(421,18,'轻薄透气柔美针织开衫','G20100519015940-34',5,39.000,'粉紫色、M',15.000,0.000),(422,18,'轻薄透气柔美针织开衫','G20100519015940-35',5,39.000,'粉紫色、L',15.000,0.000),(423,18,'轻薄透气柔美针织开衫','G20100519015940-36',5,39.000,'粉紫色、XL',15.000,0.000),(424,19,'精美富贵花时尚中跟凉拖','G20100519043434',0,0.000,NULL,0.000,0.000),(425,20,'夏季圆领短袖T恤男','G20100519044137',5,39.000,'白色、S',18.000,0.000),(445,21,'轻薄内衣组合','P20100519044956',5,99.000,NULL,NULL,0.000),(455,5,'高比位强侧推聚拢文胸','G20100514064445-1',5,45.000,'70C',18.000,0.000),(456,5,'高比位强侧推聚拢文胸','G20100514064445-2',5,45.000,'70D',18.000,0.000),(457,5,'高比位强侧推聚拢文胸','G20100514064445-3',5,45.000,'75B',18.000,0.000),(458,5,'高比位强侧推聚拢文胸','G20100514064445-4',5,45.000,'75C',18.000,0.000),(460,14,'刺绣花边精油柔珠按摩塑形文胸','G20100517051945-1',5,89.000,'70C',32.000,0.000),(461,14,'刺绣花边精油柔珠按摩塑形文胸','G20100517051945-2',5,89.000,'70D',32.000,0.000),(462,14,'刺绣花边精油柔珠按摩塑形文胸','G20100517051945-3',5,89.000,'75B',32.000,0.000),(463,13,'精致刺绣性感时尚文胸','G20100517032738-1',20,29.000,'75C',13.000,0.000),(464,13,'精致刺绣性感时尚文胸','G20100517032738-2',20,29.000,'75D',13.000,0.000),(465,13,'精致刺绣性感时尚文胸','G20100517032738-3',20,29.000,'80C',13.000,0.000),(466,13,'精致刺绣性感时尚文胸','G20100517032738-4',20,29.000,'80D',13.000,0.000),(467,12,'秀丽刺绣闪钻文胸','G20100517030058-1',5,29.000,'80C',13.000,0.000),(468,12,'秀丽刺绣闪钻文胸','G20100517030058-2',5,29.000,'80D',13.000,0.000),(469,10,'柔媚刺绣舒适抹胸','G20100517023144-1',5,39.000,'75C',9.000,0.000),(470,10,'柔媚刺绣舒适抹胸','G20100517023144-2',5,39.000,'80C',9.000,0.000),(471,10,'柔媚刺绣舒适抹胸','G20100517023144-3',5,39.000,'85C',9.000,0.000),(472,4,'一片式隐形塑型文胸','G20100514063905-1',5,99.000,'70D',40.000,0.000),(473,4,'一片式隐形塑型文胸','G20100514063905-2',5,99.000,'75B',40.000,0.000),(474,4,'一片式隐形塑型文胸','G20100514063905-3',5,99.000,'75C',40.000,0.000),(475,3,'立体绣花超细纤维塑身文胸','G20100514061525-1',5,99.000,'70D',40.000,0.000),(476,3,'立体绣花超细纤维塑身文胸','G20100514061525-2',5,99.000,'75B',40.000,0.000),(477,3,'立体绣花超细纤维塑身文胸','G20100514061525-3',5,99.000,'75C',40.000,0.000),(478,2,'凤尾花边玲珑杯晚礼装文胸','G20100514060836-1',5,168.000,'75B',90.000,0.000),(479,2,'凤尾花边玲珑杯晚礼装文胸','G20100514060836-2',5,168.000,'75C',90.000,0.000),(480,2,'凤尾花边玲珑杯晚礼装文胸','G20100514060836-3',5,168.000,'75D',90.000,0.000),(481,2,'凤尾花边玲珑杯晚礼装文胸','G20100514060836-4',5,168.000,'80C',90.000,0.000),(482,1,'蝶恋刺绣舒适挺拔文胸','G20100514053945-1',5,99.000,'70C',40.000,0.000),(483,1,'蝶恋刺绣舒适挺拔文胸','G20100514053945-2',5,99.000,'75C',40.000,0.000),(484,1,'蝶恋刺绣舒适挺拔文胸','G20100514053945-3',5,99.000,'80C',40.000,0.000);
/*!40000 ALTER TABLE `es_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_product_color`
--

DROP TABLE IF EXISTS `es_product_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_product_color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productid` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `colorid` int(11) DEFAULT NULL,
  `images` text,
  `intro` text,
  `default_image` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_product_color`
--

LOCK TABLES `es_product_color` WRITE;
/*!40000 ALTER TABLE `es_product_color` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_product_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_promotion`
--

DROP TABLE IF EXISTS `es_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_promotion` (
  `pmt_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `pmts_id` varchar(255) NOT NULL,
  `pmta_id` mediumint(8) unsigned DEFAULT NULL,
  `pmt_time_begin` bigint(8) DEFAULT NULL,
  `pmt_time_end` bigint(8) DEFAULT NULL,
  `order_money_from` decimal(20,3) NOT NULL DEFAULT '0.000',
  `order_money_to` decimal(20,3) NOT NULL DEFAULT '9999999.000',
  `seq` smallint(3) unsigned NOT NULL DEFAULT '0',
  `pmt_type` enum('0','1','2') NOT NULL DEFAULT '0' COMMENT '0为促销活动规则\n            1为优惠促销规则',
  `pmt_belong` enum('0','1') NOT NULL DEFAULT '0',
  `pmt_bond_type` enum('0','1','2') NOT NULL,
  `pmt_describe` longtext,
  `pmt_solution` longtext,
  `pmt_ifcoupon` smallint(3) unsigned NOT NULL DEFAULT '1',
  `pmt_update_time` bigint(8) DEFAULT '0',
  `pmt_basic_type` enum('goods','order') DEFAULT 'goods',
  `disabled` enum('true','false') DEFAULT 'false',
  `pmt_ifsale` enum('true','false') NOT NULL DEFAULT 'true',
  `pmt_distype` smallint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pmt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_promotion`
--

LOCK TABLES `es_promotion` WRITE;
/*!40000 ALTER TABLE `es_promotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_promotion_activity`
--

DROP TABLE IF EXISTS `es_promotion_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_promotion_activity` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `enable` smallint(1) DEFAULT NULL COMMENT '0为不可用\n            1为可用',
  `begin_time` bigint(8) DEFAULT NULL,
  `end_time` bigint(8) DEFAULT NULL,
  `brief` longtext,
  `disabled` smallint(1) DEFAULT NULL COMMENT '删除标注：\n            0为未删除\n            1为删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_promotion_activity`
--

LOCK TABLES `es_promotion_activity` WRITE;
/*!40000 ALTER TABLE `es_promotion_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_promotion_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_regions`
--

DROP TABLE IF EXISTS `es_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_regions` (
  `region_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `p_region_id` int(10) unsigned DEFAULT NULL,
  `region_path` varchar(255) DEFAULT NULL,
  `region_grade` mediumint(8) unsigned DEFAULT NULL,
  `local_name` varchar(50) NOT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_regions`
--

LOCK TABLES `es_regions` WRITE;
/*!40000 ALTER TABLE `es_regions` DISABLE KEYS */;
INSERT INTO `es_regions` VALUES (1,0,',1,',1,'北京'),(2,1,',1,2,',2,'北京市'),(3,2,',1,2,3,',3,'东城区'),(4,2,',1,2,4,',3,'西城区'),(5,2,',1,2,5,',3,'崇文区'),(6,2,',1,2,6,',3,'宣武区'),(7,2,',1,2,7,',3,'朝阳区'),(8,2,',1,2,8,',3,'丰台区'),(9,2,',1,2,9,',3,'石景山区'),(10,2,',1,2,10,',3,'海淀区'),(11,2,',1,2,11,',3,'门头沟区'),(12,2,',1,2,12,',3,'房山区'),(13,2,',1,2,13,',3,'通州区'),(14,2,',1,2,14,',3,'顺义区'),(15,2,',1,2,15,',3,'昌平区'),(16,2,',1,2,16,',3,'大兴区'),(17,2,',1,2,17,',3,'怀柔区'),(18,2,',1,2,18,',3,'平谷区'),(19,2,',1,2,19,',3,'密云县'),(20,2,',1,2,20,',3,'延庆县'),(21,0,',21,',1,'上海'),(22,21,',21,22,',2,'上海市'),(23,22,',21,22,23,',3,'黄浦区'),(24,22,',21,22,24,',3,'卢湾区'),(25,22,',21,22,25,',3,'徐汇区'),(26,22,',21,22,26,',3,'长宁区'),(27,22,',21,22,27,',3,'静安区'),(28,22,',21,22,28,',3,'普陀区'),(29,22,',21,22,29,',3,'闸北区'),(30,22,',21,22,30,',3,'虹口区'),(31,22,',21,22,31,',3,'杨浦区'),(32,22,',21,22,32,',3,'闵行区'),(33,22,',21,22,33,',3,'宝山区'),(34,22,',21,22,34,',3,'嘉定区'),(35,22,',21,22,35,',3,'浦东新区'),(36,22,',21,22,36,',3,'金山区'),(37,22,',21,22,37,',3,'松江区'),(38,22,',21,22,38,',3,'青浦区'),(39,22,',21,22,39,',3,'南汇区'),(40,22,',21,22,40,',3,'奉贤区'),(41,22,',21,22,41,',3,'崇明县'),(42,0,',42,',1,'天津'),(43,42,',42,43,',2,'天津市'),(44,43,',42,43,44,',3,'和平区'),(45,43,',42,43,45,',3,'河东区'),(46,43,',42,43,46,',3,'河西区'),(47,43,',42,43,47,',3,'南开区'),(48,43,',42,43,48,',3,'河北区'),(49,43,',42,43,49,',3,'红桥区'),(50,43,',42,43,50,',3,'塘沽区'),(51,43,',42,43,51,',3,'汉沽区'),(52,43,',42,43,52,',3,'大港区'),(53,43,',42,43,53,',3,'东丽区'),(54,43,',42,43,54,',3,'西青区'),(55,43,',42,43,55,',3,'津南区'),(56,43,',42,43,56,',3,'北辰区'),(57,43,',42,43,57,',3,'武清区'),(58,43,',42,43,58,',3,'宝坻区'),(59,43,',42,43,59,',3,'宁河县'),(60,43,',42,43,60,',3,'静海县'),(61,43,',42,43,61,',3,'蓟县'),(62,0,',62,',1,'重庆'),(63,62,',62,63,',2,'重庆市'),(64,63,',62,63,64,',3,'万州区'),(65,63,',62,63,65,',3,'涪陵区'),(66,63,',62,63,66,',3,'渝中区'),(67,63,',62,63,67,',3,'大渡口区'),(68,63,',62,63,68,',3,'江北区'),(69,63,',62,63,69,',3,'沙坪坝区'),(70,63,',62,63,70,',3,'九龙坡区'),(71,63,',62,63,71,',3,'南岸区'),(72,63,',62,63,72,',3,'北碚区'),(73,63,',62,63,73,',3,'万盛区'),(74,63,',62,63,74,',3,'双桥区'),(75,63,',62,63,75,',3,'渝北区'),(76,63,',62,63,76,',3,'巴南区'),(77,63,',62,63,77,',3,'黔江区'),(78,63,',62,63,78,',3,'长寿区'),(79,63,',62,63,79,',3,'綦江县'),(80,63,',62,63,80,',3,'潼南县'),(81,63,',62,63,81,',3,'铜梁县'),(82,63,',62,63,82,',3,'大足县'),(83,63,',62,63,83,',3,'荣昌县'),(84,63,',62,63,84,',3,'璧山县'),(85,63,',62,63,85,',3,'梁平县'),(86,63,',62,63,86,',3,'城口县'),(87,63,',62,63,87,',3,'丰都县'),(88,63,',62,63,88,',3,'垫江县'),(89,63,',62,63,89,',3,'武隆县'),(90,63,',62,63,90,',3,'忠县'),(91,63,',62,63,91,',3,'开县'),(92,63,',62,63,92,',3,'云阳县'),(93,63,',62,63,93,',3,'奉节县'),(94,63,',62,63,94,',3,'巫山县'),(95,63,',62,63,95,',3,'巫溪县'),(96,63,',62,63,96,',3,'石柱土家族自治县'),(97,63,',62,63,97,',3,'秀山土家族苗族自治县'),(98,63,',62,63,98,',3,'酉阳土家族苗族自治县'),(99,63,',62,63,99,',3,'彭水苗族土家族自治县'),(100,63,',62,63,100,',3,'江津市'),(101,63,',62,63,101,',3,'合川市'),(102,63,',62,63,102,',3,'永川市'),(103,63,',62,63,103,',3,'南川市');
/*!40000 ALTER TABLE `es_regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_returns_order`
--

DROP TABLE IF EXISTS `es_returns_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_returns_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordersn` varchar(50) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `memberid` int(11) DEFAULT NULL,
  `state` smallint(1) DEFAULT NULL COMMENT '0已申请\n            1已受理\n            2被拒绝\n            3进行中\n            4.完成\n            ',
  `type` smallint(6) DEFAULT NULL COMMENT '0退货	\n            1换货\n            2返修',
  `linkman` varchar(255) DEFAULT NULL,
  `linktel` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `facade` smallint(1) DEFAULT NULL,
  `wrap` smallint(1) DEFAULT NULL,
  `invoice` smallint(1) DEFAULT '0',
  `shiptype` varchar(255) DEFAULT NULL,
  `remark` text,
  `add_time` bigint(20) DEFAULT NULL,
  `refuse_reson` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_returns_order`
--

LOCK TABLES `es_returns_order` WRITE;
/*!40000 ALTER TABLE `es_returns_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_returns_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_role`
--

DROP TABLE IF EXISTS `es_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_role` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) DEFAULT NULL,
  `rolememo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_role`
--

LOCK TABLES `es_role` WRITE;
/*!40000 ALTER TABLE `es_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_role_auth`
--

DROP TABLE IF EXISTS `es_role_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_role_auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleid` int(11) DEFAULT NULL,
  `authid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_role_auth`
--

LOCK TABLES `es_role_auth` WRITE;
/*!40000 ALTER TABLE `es_role_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_role_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_settings`
--

DROP TABLE IF EXISTS `es_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT NULL,
  `cfg_value` varchar(1000) DEFAULT NULL,
  `cfg_group` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_settings`
--

LOCK TABLES `es_settings` WRITE;
/*!40000 ALTER TABLE `es_settings` DISABLE KEYS */;
INSERT INTO `es_settings` VALUES (1,NULL,'{\"detail_pic_height\":\"470\",\"thumbnail_pic_height\":\"245\",\"album_pic_height\":\"2030\",\"thumbnail_pic_width\":\"185\",\"album_pic_width\":\"1500\",\"detail_pic_width\":\"350\"}','photo'),(2,NULL,'{\"anonymous\":\"0\",\"validcode\":\"1\",\"pageSize\":\"5\",\"directShow\":\"0\"}','comments'),(3,'NULL','{\"title\":\"在线客服\",\"qqlist\":\"52560956:技术支持,25106942:市场营销\",\"state\":\"1\",\"worktime\":\"9:00至18:00\",\"qq\":\"1\"}','im'),(4,'NULL','','agent'),(5,NULL,'{\"state\":\"close\"}','widgetCache'),(6,NULL,'{\"buygoods_num\":\"0\",\"email_check\":\"1\",\"onlinepay\":\"1\",\"email_check_num\":\"0\",\"comment_img\":\"1\",\"register\":\"1\",\"register_link_num\":\"0\",\"onlinepay_num\":\"0\",\"register_num\":\"10\",\"comment_img_num\":\"0\",\"register_link\":\"1\",\"login_num\":\"0\",\"comment_num\":\"0\",\"login\":\"1\",\"buygoods\":\"1\",\"comment\":\"1\"}','point');
/*!40000 ALTER TABLE `es_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_site`
--

DROP TABLE IF EXISTS `es_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_site` (
  `siteid` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) DEFAULT NULL,
  `code` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `themeid` int(11) DEFAULT NULL,
  `slevel` smallint(1) DEFAULT NULL,
  PRIMARY KEY (`siteid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_site`
--

LOCK TABLES `es_site` WRITE;
/*!40000 ALTER TABLE `es_site` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_site_menu`
--

DROP TABLE IF EXISTS `es_site_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_site_menu` (
  `menuid` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`menuid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_site_menu`
--

LOCK TABLES `es_site_menu` WRITE;
/*!40000 ALTER TABLE `es_site_menu` DISABLE KEYS */;
INSERT INTO `es_site_menu` VALUES (1,0,'首页','index.html',NULL,0),(2,0,'数码','search-cat-3.html','',3),(3,2,'电脑','search-cat-16.html','',0),(5,0,'家电','search-cat-2.html','',2),(6,5,'生活电器','search-cat-13.html','',0),(7,5,'扫地机器人','search-cat-14.html','',1),(10,4,'领带',NULL,NULL,0),(13,0,'服装','search-cat-1.html','',1),(15,13,'男装','search-cat-6.html','',0),(16,13,'女装','search-cat-7.html','',0),(17,13,'童装','search-cat-8.html','',0),(18,5,'厨房电器','search-cat-15.html','',2),(19,2,'手机','search-cat-17.html','',0),(20,2,'相机','search-cat-18.html','',0),(21,0,'美食','search-cat-5.html','',4),(22,21,'水果','search-cat-24.html','',0),(23,21,'熟食','search-cat-25.html','',0),(24,21,'零食','search-cat-26.html','',0),(25,0,'品牌专区','brand.html',NULL,5),(26,28,'捆绑促销','package.html',NULL,0),(27,0,'客户留言','guestbook.html',NULL,7),(28,0,'促销专区','#',NULL,6),(29,28,'兑换赠品','giftlist.html',NULL,1),(30,0,'帮助中心','help-3-5.html','',9);
/*!40000 ALTER TABLE `es_site_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_spec_values`
--

DROP TABLE IF EXISTS `es_spec_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_spec_values` (
  `spec_value_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `spec_id` mediumint(8) DEFAULT NULL,
  `spec_value` varchar(100) DEFAULT NULL,
  `spec_image` varchar(255) DEFAULT NULL,
  `spec_order` mediumint(8) DEFAULT NULL,
  `spec_type` smallint(1) DEFAULT NULL,
  PRIMARY KEY (`spec_value_id`),
  KEY `fk_spec_value` (`spec_id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_spec_values`
--

LOCK TABLES `es_spec_values` WRITE;
/*!40000 ALTER TABLE `es_spec_values` DISABLE KEYS */;
INSERT INTO `es_spec_values` VALUES (9,2,'均码','../shop/admin/spec/image/spec_def.gif',NULL,0),(10,2,'XXS','../shop/admin/spec/image/spec_def.gif',NULL,0),(11,2,'XS','../shop/admin/spec/image/spec_def.gif',NULL,0),(12,2,'S','../shop/admin/spec/image/spec_def.gif',NULL,0),(13,2,'M','../shop/admin/spec/image/spec_def.gif',NULL,0),(14,2,'L','../shop/admin/spec/image/spec_def.gif',NULL,0),(15,2,'XL','../shop/admin/spec/image/spec_def.gif',NULL,0),(16,2,'XXL','../shop/admin/spec/image/spec_def.gif',NULL,0),(17,2,'XXXL','../shop/admin/spec/image/spec_def.gif',NULL,0),(29,2,'70B','../shop/admin/spec/image/spec_def.gif',NULL,0),(30,2,'70C','../shop/admin/spec/image/spec_def.gif',NULL,0),(31,2,'70D','../shop/admin/spec/image/spec_def.gif',NULL,0),(32,2,'75B','../shop/admin/spec/image/spec_def.gif',NULL,0),(33,2,'75C','../shop/admin/spec/image/spec_def.gif',NULL,0),(34,2,'75D','../shop/admin/spec/image/spec_def.gif',NULL,0),(35,2,'80C','../shop/admin/spec/image/spec_def.gif',NULL,0),(36,2,'80D','../shop/admin/spec/image/spec_def.gif',NULL,0),(37,2,'80E','../shop/admin/spec/image/spec_def.gif',NULL,0),(38,2,'85C','../shop/admin/spec/image/spec_def.gif',NULL,0),(39,2,'85D','../shop/admin/spec/image/spec_def.gif',NULL,0),(40,2,'85E','../shop/admin/spec/image/spec_def.gif',NULL,0),(41,1,'黄色','http://static.enationsoft.com/attachment/moonbasa/spec/201003231752553633.gif',NULL,1),(42,1,'绿色','http://static.enationsoft.com/attachment/moonbasa/spec/201003231753027271.gif',NULL,1),(43,1,'黑色','http://static.enationsoft.com/attachment/moonbasa/spec/201003231758466829.gif',NULL,1),(44,1,'红色','http://static.enationsoft.com/attachment/moonbasa/spec/201003231758540529.gif',NULL,1),(45,1,'蓝色','http://static.enationsoft.com/attachment/moonbasa/spec/201003231759056186.gif',NULL,1),(46,1,'白色','http://static.enationsoft.com/attachment/moonbasa/spec/201003231759165477.gif',NULL,1),(47,1,'花色','http://static.enationsoft.com/attachment/moonbasa/spec/201003231759251588.gif',NULL,1),(48,1,'灰色','http://static.enationsoft.com/attachment/moonbasa/spec/201003231759361219.gif',NULL,1),(49,1,'肤色','http://static.enationsoft.com/attachment/moonbasa/spec/201003231752553635.gif',NULL,1),(50,1,'粉黄色','http://static.enationsoft.com/attachment/moonbasa/spec/201005191140150035.jpg',NULL,1),(51,1,'橙色','http://static.enationsoft.com/attachment/moonbasa/spec/201005191141088633.jpg',NULL,1),(52,1,'浅绿','http://static.enationsoft.com/attachment/moonbasa/spec/201005191142251911.jpg',NULL,1),(53,1,'浅蓝','http://static.enationsoft.com/attachment/moonbasa/spec/201005191143231991.jpg',NULL,1),(54,1,'粉红色','http://static.enationsoft.com/attachment/moonbasa/spec/201005191144208127.jpg',NULL,1),(55,1,'浅玫红','http://static.enationsoft.com/attachment/moonbasa/spec/201005191145294591.jpg',NULL,1),(56,1,'西瓜红','http://static.enationsoft.com/attachment/moonbasa/spec/201005191146439979.jpg',NULL,1),(57,1,'粉紫色','http://static.enationsoft.com/attachment/moonbasa/spec/201005191147384601.jpg',NULL,1);
/*!40000 ALTER TABLE `es_spec_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_specification`
--

DROP TABLE IF EXISTS `es_specification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_specification` (
  `spec_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `spec_name` varchar(50) DEFAULT NULL,
  `spec_show_type` smallint(1) DEFAULT NULL,
  `spec_type` smallint(1) DEFAULT NULL,
  `spec_memo` varchar(50) DEFAULT NULL,
  `spec_order` mediumint(8) DEFAULT NULL,
  `disabled` smallint(1) DEFAULT NULL,
  PRIMARY KEY (`spec_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_specification`
--

LOCK TABLES `es_specification` WRITE;
/*!40000 ALTER TABLE `es_specification` DISABLE KEYS */;
INSERT INTO `es_specification` VALUES (1,'颜色',NULL,1,'',NULL,NULL),(2,'尺寸',NULL,0,'',NULL,NULL);
/*!40000 ALTER TABLE `es_specification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_tag_rel`
--

DROP TABLE IF EXISTS `es_tag_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_tag_rel` (
  `tag_id` mediumint(8) DEFAULT NULL,
  `rel_id` mediumint(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_tag_rel`
--

LOCK TABLES `es_tag_rel` WRITE;
/*!40000 ALTER TABLE `es_tag_rel` DISABLE KEYS */;
INSERT INTO `es_tag_rel` VALUES (2,15),(2,16),(3,16),(1,9),(2,9),(3,9),(3,7),(4,7),(1,6),(2,6),(4,6),(1,8),(2,8),(4,8),(4,11),(3,19),(4,5),(3,14),(4,14),(4,13),(3,10),(4,10),(1,4),(2,4),(3,4),(4,4),(1,3),(2,3),(3,3),(4,3),(1,2),(2,2),(1,1),(2,1),(3,20),(1,17),(2,17),(3,17);
/*!40000 ALTER TABLE `es_tag_rel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_tags`
--

DROP TABLE IF EXISTS `es_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_tags` (
  `tag_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) DEFAULT NULL,
  `rel_count` mediumint(8) DEFAULT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_tags`
--

LOCK TABLES `es_tags` WRITE;
/*!40000 ALTER TABLE `es_tags` DISABLE KEYS */;
INSERT INTO `es_tags` VALUES (1,'最新商品',0),(2,'促销',0),(3,'精品推荐',0),(4,'特价商品',0);
/*!40000 ALTER TABLE `es_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_theme`
--

DROP TABLE IF EXISTS `es_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appid` varchar(50) DEFAULT NULL,
  `themename` varchar(50) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `version` varchar(50) DEFAULT NULL,
  `deleteflag` int(11) DEFAULT NULL,
  `thumb` varchar(50) DEFAULT NULL,
  `siteid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_theme`
--

LOCK TABLES `es_theme` WRITE;
/*!40000 ALTER TABLE `es_theme` DISABLE KEYS */;
INSERT INTO `es_theme` VALUES (1,NULL,'默认模板','default',NULL,NULL,0,'preview.png',0);
/*!40000 ALTER TABLE `es_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_themeuri`
--

DROP TABLE IF EXISTS `es_themeuri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_themeuri` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `themeid` int(11) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `deleteflag` int(11) DEFAULT '0',
  `pagename` varchar(255) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  `sitemaptype` int(11) DEFAULT '0',
  `keywords` varchar(255) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_themeuri`
--

LOCK TABLES `es_themeuri` WRITE;
/*!40000 ALTER TABLE `es_themeuri` DISABLE KEYS */;
INSERT INTO `es_themeuri` VALUES (1,NULL,'/index.jsp','/index.html',0,'首页',1,0,NULL,NULL),(2,NULL,'/index.html','/index.html',0,'首页',1,0,NULL,NULL),(3,NULL,'/goods-(\\d+).html','/goods.html',0,'商品详情',2,0,NULL,NULL),(4,NULL,'/search-(.*).html','/default.html',0,'商品搜索',2,0,NULL,NULL),(5,NULL,'/compare.html','/default.html',0,'商品对比',1,0,NULL,NULL),(6,NULL,'/cart.html','/cart.html',0,'购物车',2,0,NULL,NULL),(7,NULL,'/member_(.*).html','/member.html',0,'会员中心',0,0,NULL,NULL),(8,NULL,'/orderdetail_(\\d+).html','/orderdetail.html',0,'订单 详情',0,0,NULL,NULL),(9,NULL,'/article-(\\d+)-(\\d+).html','/article.html',0,'文章详细',0,0,NULL,NULL),(10,NULL,'/friendslink.html','/default.html',0,'友情链接',0,0,NULL,NULL),(11,NULL,'/help-(\\d+)-(\\d+).html','/help.html',0,'帮助中心',0,0,NULL,NULL),(12,NULL,'/contactus.html','/contactus.html',0,'联系我们',0,0,NULL,NULL),(13,NULL,'/brandDetail-(\\d+).html','/default.html',0,'品牌详细',0,0,NULL,NULL),(14,NULL,'/brand.html','/default.html',0,'品牌列表',0,0,NULL,NULL),(15,NULL,'/package.html','/default.html',0,'捆绑促销',1,0,NULL,NULL),(16,NULL,'/guestbook.html','/default.html',0,'网店留言',1,0,NULL,NULL),(17,NULL,'/giftlist.html','/default.html',0,'赠品列表',0,0,NULL,NULL),(18,NULL,'/gift-(\\d+).html','/default.html',0,'赠品详情',0,0,NULL,NULL),(19,NULL,'/search.html','/default.html',0,'高级搜索',1,0,NULL,NULL),(20,NULL,'/articleList-(\\d+)-(\\d+).html','/articleList.html',0,'文章列表',0,0,NULL,NULL),(21,NULL,'/agentApply.html','/agentApply.html',0,'文章列表',0,0,NULL,NULL),(22,NULL,'/checkout.html','/checkout.html',0,'结算',0,0,NULL,NULL),(23,NULL,'/orderdetail-(\\\\w+).html','/orderdetail.html',0,'结算',0,0,NULL,NULL),(24,NULL,'/pay_(\\w+)_(\\w+).html','/payment.html',0,'支付成功',0,0,NULL,NULL),(25,NULL,'/payok_(\\w+)_(\\w+).html','/paysuccess.html',0,'支付成功',0,0,NULL,NULL),(26,NULL,'/exchange_point.html','/exchange_point.html',0,'卡片兑换',0,0,NULL,NULL);
/*!40000 ALTER TABLE `es_themeuri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_type_brand`
--

DROP TABLE IF EXISTS `es_type_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_type_brand` (
  `type_id` mediumint(8) DEFAULT NULL,
  `brand_id` mediumint(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_type_brand`
--

LOCK TABLES `es_type_brand` WRITE;
/*!40000 ALTER TABLE `es_type_brand` DISABLE KEYS */;
INSERT INTO `es_type_brand` VALUES (7,5),(6,6),(6,7),(4,1),(4,2),(4,3),(4,4),(4,5),(3,1),(3,2),(3,3),(3,4),(3,5),(2,1),(2,2),(2,3),(2,4),(2,5),(1,1),(1,2),(1,3),(1,4),(1,5);
/*!40000 ALTER TABLE `es_type_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_user_role`
--

DROP TABLE IF EXISTS `es_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_user_role`
--

LOCK TABLES `es_user_role` WRITE;
/*!40000 ALTER TABLE `es_user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `es_widgetbundle`
--

DROP TABLE IF EXISTS `es_widgetbundle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_widgetbundle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `widgetname` varchar(50) DEFAULT NULL,
  `widgettype` varchar(50) DEFAULT NULL,
  `settingurl` varchar(255) DEFAULT NULL,
  `deleteflag` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `es_widgetbundle`
--

LOCK TABLES `es_widgetbundle` WRITE;
/*!40000 ALTER TABLE `es_widgetbundle` DISABLE KEYS */;
/*!40000 ALTER TABLE `es_widgetbundle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-03 21:33:50
