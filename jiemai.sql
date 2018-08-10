/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.0.24-community-nt : Database - jiemai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jiemai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jiemai`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `acc_id` int(11) NOT NULL auto_increment COMMENT '账户id',
  `ban_id` int(11) default NULL COMMENT '银行id',
  `acc_number` varchar(30) default NULL COMMENT '银行账号',
  PRIMARY KEY  (`acc_id`),
  KEY `FK_Reference_36` (`ban_id`),
  CONSTRAINT `FK_Reference_36` FOREIGN KEY (`ban_id`) REFERENCES `bank` (`ban_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `account` */

insert  into `account`(`acc_id`,`ban_id`,`acc_number`) values (1,1,'6217995540000335329');

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL auto_increment COMMENT '地址id',
  `cou_id` int(11) default NULL COMMENT '国家id',
  `pro_id` int(11) default NULL COMMENT '省份id',
  `cit_id` int(11) default NULL COMMENT '市县id',
  `Detailed_address` varchar(100) default NULL COMMENT '详细地址',
  `Consignee` varchar(20) default NULL COMMENT '收货人',
  `add_phone` varchar(20) default NULL COMMENT '手机号码',
  PRIMARY KEY  (`address_id`),
  KEY `FK_Reference_7` (`cou_id`),
  KEY `FK_Reference_8` (`pro_id`),
  KEY `FK_Reference_9` (`cit_id`),
  CONSTRAINT `FK_Reference_7` FOREIGN KEY (`cou_id`) REFERENCES `country` (`cou_id`),
  CONSTRAINT `FK_Reference_8` FOREIGN KEY (`pro_id`) REFERENCES `province` (`pro_id`),
  CONSTRAINT `FK_Reference_9` FOREIGN KEY (`cit_id`) REFERENCES `city` (`cit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `address` */

insert  into `address`(`address_id`,`cou_id`,`pro_id`,`cit_id`,`Detailed_address`,`Consignee`,`add_phone`) values (1,1,1,1,'茅店山东路2号','leige','17369343903');

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `adm_id` int(11) NOT NULL auto_increment COMMENT '管理员id',
  `adm_name` varchar(20) default NULL COMMENT '用户名',
  `adm_pwd` varchar(20) default NULL COMMENT '密码',
  `adm_nikename` varchar(20) default NULL COMMENT '昵称',
  `adm_realname` varchar(20) default NULL COMMENT '真实姓名',
  `adm_sex` int(11) default NULL COMMENT '性别',
  `amd_phone` varchar(20) default NULL COMMENT '手机号码',
  `adm_email` varchar(20) default NULL COMMENT '邮箱',
  `amd_regtiime` datetime default NULL COMMENT '注册时间',
  `adm_modtime` datetime default NULL COMMENT '修改时间',
  `bra_operation` int(11) default NULL COMMENT '操作者id',
  PRIMARY KEY  (`adm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`adm_id`,`adm_name`,`adm_pwd`,`adm_nikename`,`adm_realname`,`adm_sex`,`amd_phone`,`adm_email`,`amd_regtiime`,`adm_modtime`,`bra_operation`) values (1,'轻狂眼镜磊哥','666','磊哥哥','轻狂眼镜',1,'17369343903','1037554242@qq.com','2018-08-10 00:00:00','2018-08-10 00:00:00',0);

/*Table structure for table `audit` */

DROP TABLE IF EXISTS `audit`;

CREATE TABLE `audit` (
  `aud_id` int(11) NOT NULL auto_increment COMMENT '审核id',
  `aud_type` int(11) default '0' COMMENT '审核状态',
  `aud_time` datetime default NULL COMMENT '审核时间',
  PRIMARY KEY  (`aud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `audit` */

insert  into `audit`(`aud_id`,`aud_type`,`aud_time`) values (1,0,'2018-08-10 00:00:00'),(2,1,'2018-08-10 00:00:00'),(3,-1,'1018-08-10 00:00:00');

/*Table structure for table `bank` */

DROP TABLE IF EXISTS `bank`;

CREATE TABLE `bank` (
  `ban_id` int(11) NOT NULL auto_increment COMMENT '银行id',
  `bana_id` int(11) default NULL COMMENT '银行名称id',
  `address_id` int(11) default NULL COMMENT '地址id',
  `cou_id` int(11) default NULL COMMENT '国家id',
  `pro_id` int(11) default NULL COMMENT '省份id',
  `cit_id` int(11) default NULL COMMENT '市县id',
  `ban_openname` varchar(30) default NULL COMMENT '开户行支行名称',
  PRIMARY KEY  (`ban_id`),
  KEY `FK_Reference_25` (`bana_id`),
  KEY `FK_Reference_26` (`address_id`),
  KEY `FK_Reference_32` (`cou_id`),
  KEY `FK_Reference_33` (`pro_id`),
  KEY `FK_Reference_34` (`cit_id`),
  CONSTRAINT `FK_Reference_25` FOREIGN KEY (`bana_id`) REFERENCES `bank_name` (`bana_id`),
  CONSTRAINT `FK_Reference_26` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `FK_Reference_32` FOREIGN KEY (`cou_id`) REFERENCES `country` (`cou_id`),
  CONSTRAINT `FK_Reference_33` FOREIGN KEY (`pro_id`) REFERENCES `province` (`pro_id`),
  CONSTRAINT `FK_Reference_34` FOREIGN KEY (`cit_id`) REFERENCES `city` (`cit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bank` */

insert  into `bank`(`ban_id`,`bana_id`,`address_id`,`cou_id`,`pro_id`,`cit_id`,`ban_openname`) values (1,1,1,1,1,1,'中国工商银行武汉支行');

/*Table structure for table `bank_name` */

DROP TABLE IF EXISTS `bank_name`;

CREATE TABLE `bank_name` (
  `bana_id` int(11) NOT NULL auto_increment COMMENT '银行名称id',
  `bana_name` varchar(30) default NULL COMMENT '银行名称',
  PRIMARY KEY  (`bana_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bank_name` */

insert  into `bank_name`(`bana_id`,`bana_name`) values (1,'中国工商银行'),(2,'中国农业银行');

/*Table structure for table `borsel` */

DROP TABLE IF EXISTS `borsel`;

CREATE TABLE `borsel` (
  `bor_id` int(11) NOT NULL auto_increment COMMENT '借卖方id',
  `bor_name` varchar(20) default NULL COMMENT '用户名',
  `bor_pwd` varchar(20) default NULL COMMENT '密码',
  `bor_nikename` varchar(20) default NULL COMMENT '昵称',
  `bor_realname` varchar(20) default NULL COMMENT '真实姓名',
  `bor_sex` int(11) default NULL COMMENT '性别',
  `bor_phone` varchar(20) default NULL COMMENT '手机号码',
  `bor_email` varchar(20) default NULL COMMENT '邮箱',
  `company_id` int(11) default NULL COMMENT '公司id',
  `money_id` int(11) default NULL COMMENT '钱包id',
  `usersta_id` int(11) default NULL COMMENT '状态id',
  `bor_regdate` datetime default NULL COMMENT '注册时间',
  `bor_moddate` datetime default NULL COMMENT '修改时间',
  `bra_operation` int(11) NOT NULL COMMENT '操作者id',
  PRIMARY KEY  (`bor_id`),
  KEY `FK_Reference_15` (`company_id`),
  KEY `FK_Reference_17` (`money_id`),
  KEY `FK_Reference_19` (`usersta_id`),
  CONSTRAINT `FK_Reference_15` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`),
  CONSTRAINT `FK_Reference_17` FOREIGN KEY (`money_id`) REFERENCES `money` (`money_id`),
  CONSTRAINT `FK_Reference_19` FOREIGN KEY (`usersta_id`) REFERENCES `state` (`usersta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `borsel` */

insert  into `borsel`(`bor_id`,`bor_name`,`bor_pwd`,`bor_nikename`,`bor_realname`,`bor_sex`,`bor_phone`,`bor_email`,`company_id`,`money_id`,`usersta_id`,`bor_regdate`,`bor_moddate`,`bra_operation`) values (1,'雅球简爱','123456789','傻呆呆','呆呆',0,'17369343903','572525473@qq.com',1,1,1,'2018-08-10 00:00:00','2018-08-10 00:00:00',0);

/*Table structure for table `brands` */

DROP TABLE IF EXISTS `brands`;

CREATE TABLE `brands` (
  `bra_id` int(11) NOT NULL auto_increment COMMENT '品牌商id',
  `bra_name` varchar(20) default NULL COMMENT '用户名',
  `bra_pwd` varchar(20) default NULL COMMENT '密码',
  `bra_nikename` varchar(20) default NULL COMMENT '昵称',
  `bra_realname` varbinary(0) default NULL COMMENT '真实姓名',
  `bra_serx` int(11) default NULL COMMENT '性别',
  `bra_phone` varchar(20) default NULL COMMENT '手机号码',
  `bra_email` varchar(20) default NULL COMMENT '邮箱',
  `pos_id` int(11) default NULL COMMENT '职务id',
  `company_id` int(11) default NULL COMMENT '公司id',
  `money_id` int(11) default NULL COMMENT '钱包id',
  `usersta_id` int(11) default NULL COMMENT '状态id',
  `bra_regdate` datetime default NULL COMMENT '注册时间',
  `bra_moddate` datetime default NULL COMMENT '修改时间',
  `bra_operation` int(11) NOT NULL COMMENT '操作者id',
  PRIMARY KEY  (`bra_id`),
  KEY `FK_Reference_13` (`pos_id`),
  KEY `FK_Reference_14` (`company_id`),
  KEY `FK_Reference_16` (`money_id`),
  KEY `FK_Reference_18` (`usersta_id`),
  CONSTRAINT `FK_Reference_13` FOREIGN KEY (`pos_id`) REFERENCES `position` (`pos_id`),
  CONSTRAINT `FK_Reference_14` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`),
  CONSTRAINT `FK_Reference_16` FOREIGN KEY (`money_id`) REFERENCES `money` (`money_id`),
  CONSTRAINT `FK_Reference_18` FOREIGN KEY (`usersta_id`) REFERENCES `state` (`usersta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `brands` */

insert  into `brands`(`bra_id`,`bra_name`,`bra_pwd`,`bra_nikename`,`bra_realname`,`bra_serx`,`bra_phone`,`bra_email`,`pos_id`,`company_id`,`money_id`,`usersta_id`,`bra_regdate`,`bra_moddate`,`bra_operation`) values (1,'神舟一号','12345689','神舟一号','',1,'17369343897','564248456@qq.com',1,1,1,1,'2018-08-10 00:00:00','2018-08-10 00:00:00',0);

/*Table structure for table `business_type` */

DROP TABLE IF EXISTS `business_type`;

CREATE TABLE `business_type` (
  `bus_id` int(11) NOT NULL auto_increment COMMENT '主营类别id',
  `bus_name` varchar(20) default NULL COMMENT '类别名称',
  PRIMARY KEY  (`bus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `business_type` */

insert  into `business_type`(`bus_id`,`bus_name`) values (1,'服装类'),(2,'电子类');

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `cit_id` int(11) NOT NULL auto_increment COMMENT '市县id',
  `cit_name` varchar(50) default NULL COMMENT '市县名称',
  `ity_number` varchar(10) default NULL COMMENT '城市编号',
  PRIMARY KEY  (`cit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `city` */

insert  into `city`(`cit_id`,`cit_name`,`ity_number`) values (1,'北京','86-1');

/*Table structure for table `commodity` */

DROP TABLE IF EXISTS `commodity`;

CREATE TABLE `commodity` (
  `com_id` int(11) NOT NULL auto_increment COMMENT '商品id',
  `bra_id` int(11) default NULL COMMENT '发布人id',
  `aud_id` int(11) default NULL COMMENT '审核id',
  `comtype_id` int(11) default NULL COMMENT '商品类型id',
  `com_name` varchar(20) default NULL COMMENT '商品名称',
  `shelftime` datetime default NULL COMMENT '上架时间',
  `price` double default NULL COMMENT '价格',
  `stock` int(11) default NULL COMMENT '库存',
  `com_regdate` datetime default NULL COMMENT '生成时间',
  `com_moddate` datetime default NULL COMMENT '修改时间',
  `com_operation` int(11) default NULL COMMENT '操作者id',
  PRIMARY KEY  (`com_id`),
  KEY `FK_Reference_20` (`aud_id`),
  KEY `FK_Reference_21` (`comtype_id`),
  KEY `FK_Reference_3` (`bra_id`),
  CONSTRAINT `FK_Reference_20` FOREIGN KEY (`aud_id`) REFERENCES `audit` (`aud_id`),
  CONSTRAINT `FK_Reference_21` FOREIGN KEY (`comtype_id`) REFERENCES `commodity_type` (`comtype_id`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`bra_id`) REFERENCES `brands` (`bra_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `commodity` */

insert  into `commodity`(`com_id`,`bra_id`,`aud_id`,`comtype_id`,`com_name`,`shelftime`,`price`,`stock`,`com_regdate`,`com_moddate`,`com_operation`) values (1,1,1,1,'半年包烂船','2018-08-10 00:00:00',7450,100,'2018-08-10 00:00:00','2018-08-10 00:00:00',0);

/*Table structure for table `commodity_type` */

DROP TABLE IF EXISTS `commodity_type`;

CREATE TABLE `commodity_type` (
  `comtype_id` int(11) NOT NULL auto_increment COMMENT '商品类型id',
  `comtype_name` varchar(20) default NULL COMMENT '商品类型名称',
  PRIMARY KEY  (`comtype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `commodity_type` */

insert  into `commodity_type`(`comtype_id`,`comtype_name`) values (1,'电脑'),(2,'手机');

/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL auto_increment COMMENT '公司id',
  `address_id` int(11) default NULL COMMENT '地址id',
  `bus_id` int(11) default NULL COMMENT '主营类别id',
  `comtype_id` int(11) default NULL COMMENT '公司类别id',
  `cou_id` int(11) default NULL COMMENT '国家id',
  `pro_id` int(11) default NULL COMMENT '省份id',
  `cit_id` int(11) default NULL COMMENT '市县id',
  `company_name` varchar(20) default NULL COMMENT '公司名称',
  `company_brand` varchar(20) default NULL COMMENT '主营品牌',
  `company_license` varchar(200) default NULL COMMENT '公司营业执照',
  `company_regtiime` datetime default NULL COMMENT '生成时间',
  `company_modtime` datetime default NULL COMMENT '修改时间',
  `company_operation` int(11) default NULL COMMENT '操作者id',
  PRIMARY KEY  (`company_id`),
  KEY `FK_Reference_10` (`address_id`),
  KEY `FK_Reference_11` (`bus_id`),
  KEY `FK_Reference_12` (`comtype_id`),
  KEY `FK_Reference_29` (`cou_id`),
  KEY `FK_Reference_30` (`pro_id`),
  KEY `FK_Reference_31` (`cit_id`),
  CONSTRAINT `FK_Reference_10` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `FK_Reference_11` FOREIGN KEY (`bus_id`) REFERENCES `business_type` (`bus_id`),
  CONSTRAINT `FK_Reference_12` FOREIGN KEY (`comtype_id`) REFERENCES `company_type` (`comtype_id`),
  CONSTRAINT `FK_Reference_29` FOREIGN KEY (`cou_id`) REFERENCES `country` (`cou_id`),
  CONSTRAINT `FK_Reference_30` FOREIGN KEY (`pro_id`) REFERENCES `province` (`pro_id`),
  CONSTRAINT `FK_Reference_31` FOREIGN KEY (`cit_id`) REFERENCES `city` (`cit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `company` */

insert  into `company`(`company_id`,`address_id`,`bus_id`,`comtype_id`,`cou_id`,`pro_id`,`cit_id`,`company_name`,`company_brand`,`company_license`,`company_regtiime`,`company_modtime`,`company_operation`) values (1,1,1,1,1,1,1,'微软','微软','8008208820','2018-08-10 00:00:00','2018-08-10 00:00:00',0);

/*Table structure for table `company_type` */

DROP TABLE IF EXISTS `company_type`;

CREATE TABLE `company_type` (
  `comtype_id` int(11) NOT NULL auto_increment COMMENT '公司类型id',
  `comtype_name` varchar(20) default NULL COMMENT '类型名称',
  PRIMARY KEY  (`comtype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `company_type` */

insert  into `company_type`(`comtype_id`,`comtype_name`) values (1,'制造商'),(2,'代理商');

/*Table structure for table `complaints` */

DROP TABLE IF EXISTS `complaints`;

CREATE TABLE `complaints` (
  `complaints_id` int(11) NOT NULL auto_increment COMMENT '投诉id',
  `com_id` int(11) default NULL COMMENT '商品id',
  `complaints_name` varchar(200) default NULL COMMENT '投诉内容',
  `user_id` int(11) default NULL COMMENT '投诉人id',
  `complaints_time` datetime default NULL COMMENT '投诉时间',
  PRIMARY KEY  (`complaints_id`),
  KEY `FK_Reference_28` (`com_id`),
  CONSTRAINT `FK_Reference_28` FOREIGN KEY (`com_id`) REFERENCES `commodity` (`com_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `complaints` */

/*Table structure for table `contact` */

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `con_id` int(11) NOT NULL auto_increment COMMENT '联系表id',
  `com_id` int(11) default NULL COMMENT '商品id',
  `ord_id` int(11) default NULL COMMENT '订单id',
  `ord_number` char(10) default NULL COMMENT '订单单件商品数量',
  PRIMARY KEY  (`con_id`),
  KEY `FK_Reference_1` (`com_id`),
  KEY `FK_Reference_2` (`ord_id`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`com_id`) REFERENCES `commodity` (`com_id`),
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`ord_id`) REFERENCES `orderinfo` (`ord_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `contact` */

insert  into `contact`(`con_id`,`com_id`,`ord_id`,`ord_number`) values (1,1,1,'1');

/*Table structure for table `country` */

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `cou_id` int(11) NOT NULL auto_increment COMMENT '国家id',
  `cou_english` varchar(100) default NULL COMMENT '国家英文名称',
  `cou_name` varchar(50) default NULL COMMENT '国家名称',
  `Consignee` varchar(10) default NULL COMMENT '简称',
  `national_code` varchar(10) default NULL COMMENT '国家编码',
  PRIMARY KEY  (`cou_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `country` */

insert  into `country`(`cou_id`,`cou_english`,`cou_name`,`Consignee`,`national_code`) values (1,'China','中国','86','CN');

/*Table structure for table `financial` */

DROP TABLE IF EXISTS `financial`;

CREATE TABLE `financial` (
  `fin_id` int(11) NOT NULL auto_increment COMMENT '流水id',
  `bra_id` int(11) default NULL COMMENT '品牌商id',
  `bor_id` int(11) default NULL COMMENT '借卖方id',
  `fin_name` varchar(20) default NULL COMMENT '商品名称',
  `fin_pramount` double default NULL COMMENT '金额',
  `fin_number` int(11) default NULL COMMENT '数量',
  `trading_time` datetime default NULL COMMENT '交易时间',
  `fin_regdate` datetime default NULL COMMENT '生成时间',
  `fin_moddate` datetime default NULL COMMENT '修改时间',
  `fin_operation` int(11) default NULL COMMENT '操作者id',
  PRIMARY KEY  (`fin_id`),
  KEY `FK_Reference_4` (`bra_id`),
  KEY `FK_Reference_5` (`bor_id`),
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`bra_id`) REFERENCES `brands` (`bra_id`),
  CONSTRAINT `FK_Reference_5` FOREIGN KEY (`bor_id`) REFERENCES `borsel` (`bor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `financial` */

insert  into `financial`(`fin_id`,`bra_id`,`bor_id`,`fin_name`,`fin_pramount`,`fin_number`,`trading_time`,`fin_regdate`,`fin_moddate`,`fin_operation`) values (1,1,1,'半年包烂船',7460,1,'2018-08-10 00:00:00','2018-08-10 00:00:00',NULL,0);

/*Table structure for table `money` */

DROP TABLE IF EXISTS `money`;

CREATE TABLE `money` (
  `money_id` int(11) NOT NULL auto_increment COMMENT '钱包id',
  `ban_id` int(11) default NULL COMMENT '银行id',
  `acc_id` int(11) default NULL COMMENT '账户id',
  `money_pwd` int(11) default NULL COMMENT '支付密码',
  `balance` double default NULL COMMENT '余额',
  PRIMARY KEY  (`money_id`),
  KEY `FK_Reference_24` (`ban_id`),
  KEY `FK_Reference_35` (`acc_id`),
  CONSTRAINT `FK_Reference_24` FOREIGN KEY (`ban_id`) REFERENCES `bank` (`ban_id`),
  CONSTRAINT `FK_Reference_35` FOREIGN KEY (`acc_id`) REFERENCES `account` (`acc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `money` */

insert  into `money`(`money_id`,`ban_id`,`acc_id`,`money_pwd`,`balance`) values (1,1,1,888888,0.01);

/*Table structure for table `orderinfo` */

DROP TABLE IF EXISTS `orderinfo`;

CREATE TABLE `orderinfo` (
  `ord_id` int(11) NOT NULL auto_increment COMMENT '订单id',
  `address_id` int(11) default NULL COMMENT '地址id',
  `ordsta_id` int(11) default NULL COMMENT '订单状态id',
  `ord_pramount` double default NULL COMMENT '订单金额',
  `ord_number` int(11) default NULL COMMENT '订单号',
  `ord_regdate` datetime default NULL COMMENT '生成时间',
  `ord_moddate` datetime default NULL COMMENT '修改时间',
  `ord_operation` int(11) default NULL COMMENT '操作者id',
  PRIMARY KEY  (`ord_id`),
  KEY `FK_Reference_22` (`address_id`),
  KEY `FK_Reference_27` (`ordsta_id`),
  CONSTRAINT `FK_Reference_22` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `FK_Reference_27` FOREIGN KEY (`ordsta_id`) REFERENCES `orderinfo_state` (`ordsta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orderinfo` */

insert  into `orderinfo`(`ord_id`,`address_id`,`ordsta_id`,`ord_pramount`,`ord_number`,`ord_regdate`,`ord_moddate`,`ord_operation`) values (1,1,1,7460,2147483647,'2018-08-10 00:00:00','2018-08-10 00:00:00',2018);

/*Table structure for table `orderinfo_state` */

DROP TABLE IF EXISTS `orderinfo_state`;

CREATE TABLE `orderinfo_state` (
  `ordsta_id` int(11) NOT NULL auto_increment COMMENT '订单状态id',
  `ordsta_type` int(11) default '0' COMMENT '订单状态类型',
  PRIMARY KEY  (`ordsta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orderinfo_state` */

insert  into `orderinfo_state`(`ordsta_id`,`ordsta_type`) values (1,0),(2,1),(3,-1);

/*Table structure for table `picture` */

DROP TABLE IF EXISTS `picture`;

CREATE TABLE `picture` (
  `pic_id` int(11) NOT NULL auto_increment COMMENT '图片id',
  `com_id` int(11) default NULL COMMENT '商品id',
  `pic_name` varchar(200) default NULL COMMENT '图片名称',
  `pic_address` varchar(200) default NULL COMMENT '图片地址',
  PRIMARY KEY  (`pic_id`),
  KEY `FK_Reference_23` (`com_id`),
  CONSTRAINT `FK_Reference_23` FOREIGN KEY (`com_id`) REFERENCES `commodity` (`com_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `picture` */

/*Table structure for table `position` */

DROP TABLE IF EXISTS `position`;

CREATE TABLE `position` (
  `pos_id` int(11) NOT NULL auto_increment COMMENT '职务id',
  `pos_name` varchar(20) default NULL COMMENT '职务名称',
  PRIMARY KEY  (`pos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `position` */

insert  into `position`(`pos_id`,`pos_name`) values (1,'经理'),(2,'员工'),(3,'总裁');

/*Table structure for table `province` */

DROP TABLE IF EXISTS `province`;

CREATE TABLE `province` (
  `pro_id` int(11) NOT NULL auto_increment COMMENT '省份id',
  `pro_name` varchar(50) default NULL COMMENT '省份名称',
  `national_code` varchar(10) default NULL COMMENT '国家编码',
  `city_number` varchar(10) default NULL COMMENT '城市编号',
  PRIMARY KEY  (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `province` */

insert  into `province`(`pro_id`,`pro_name`,`national_code`,`city_number`) values (1,'北京','86','86-1');

/*Table structure for table `state` */

DROP TABLE IF EXISTS `state`;

CREATE TABLE `state` (
  `usersta_id` int(11) NOT NULL auto_increment COMMENT '用户状态id',
  `usersta_name` int(11) default '0' COMMENT '用户状态类型',
  PRIMARY KEY  (`usersta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `state` */

insert  into `state`(`usersta_id`,`usersta_name`) values (1,0),(2,1),(3,-1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
