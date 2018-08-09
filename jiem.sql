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
  `acc_id` int(11) NOT NULL auto_increment,
  `ban_id` int(11) default NULL,
  `acc_number` varchar(30) default NULL,
  PRIMARY KEY  (`acc_id`),
  KEY `FK_Reference_36` (`ban_id`),
  CONSTRAINT `FK_Reference_36` FOREIGN KEY (`ban_id`) REFERENCES `bank` (`ban_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `account` */

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL auto_increment,
  `cou_id` int(11) default NULL,
  `pro_id` int(11) default NULL,
  `cit_id` int(11) default NULL,
  `Detailed_address` varchar(100) default NULL,
  `Consignee` varchar(20) default NULL,
  `add_phone` varchar(20) default NULL,
  PRIMARY KEY  (`address_id`),
  KEY `FK_Reference_7` (`cou_id`),
  KEY `FK_Reference_8` (`pro_id`),
  KEY `FK_Reference_9` (`cit_id`),
  CONSTRAINT `FK_Reference_9` FOREIGN KEY (`cit_id`) REFERENCES `city` (`cit_id`),
  CONSTRAINT `FK_Reference_7` FOREIGN KEY (`cou_id`) REFERENCES `country` (`cou_id`),
  CONSTRAINT `FK_Reference_8` FOREIGN KEY (`pro_id`) REFERENCES `province` (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `address` */

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `adm_id` int(11) NOT NULL auto_increment,
  `adm_name` varchar(20) default NULL,
  `adm_pwd` varchar(20) default NULL,
  `adm_nikename` varchar(20) default NULL,
  `adm_realname` varchar(20) default NULL,
  `adm_sex` int(11) default NULL,
  `amd_phone` varchar(20) default NULL,
  `adm_email` varchar(20) default NULL,
  `amd_regtiime` date default NULL,
  `adm_modtime` date default NULL,
  `bra_operation` int(11) default NULL,
  PRIMARY KEY  (`adm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

/*Table structure for table `audit` */

DROP TABLE IF EXISTS `audit`;

CREATE TABLE `audit` (
  `aud_id` int(11) NOT NULL auto_increment,
  `aud_type` int(11) default '0',
  `aud_time` date default NULL,
  PRIMARY KEY  (`aud_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `audit` */

/*Table structure for table `bank` */

DROP TABLE IF EXISTS `bank`;

CREATE TABLE `bank` (
  `ban_id` int(11) NOT NULL auto_increment,
  `bana_id` int(11) default NULL,
  `address_id` int(11) default NULL,
  `cou_id` int(11) default NULL,
  `pro_id` int(11) default NULL,
  `cit_id` int(11) default NULL,
  `ban_openname` varchar(30) default NULL,
  PRIMARY KEY  (`ban_id`),
  KEY `FK_Reference_25` (`bana_id`),
  KEY `FK_Reference_26` (`address_id`),
  KEY `FK_Reference_32` (`cou_id`),
  KEY `FK_Reference_33` (`pro_id`),
  KEY `FK_Reference_34` (`cit_id`),
  CONSTRAINT `FK_Reference_34` FOREIGN KEY (`cit_id`) REFERENCES `city` (`cit_id`),
  CONSTRAINT `FK_Reference_25` FOREIGN KEY (`bana_id`) REFERENCES `bank_name` (`bana_id`),
  CONSTRAINT `FK_Reference_26` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `FK_Reference_32` FOREIGN KEY (`cou_id`) REFERENCES `country` (`cou_id`),
  CONSTRAINT `FK_Reference_33` FOREIGN KEY (`pro_id`) REFERENCES `province` (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bank` */

/*Table structure for table `bank_name` */

DROP TABLE IF EXISTS `bank_name`;

CREATE TABLE `bank_name` (
  `bana_id` int(11) NOT NULL auto_increment,
  `bana_name` varchar(30) default NULL,
  PRIMARY KEY  (`bana_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bank_name` */

/*Table structure for table `borsel` */

DROP TABLE IF EXISTS `borsel`;

CREATE TABLE `borsel` (
  `bor_id` int(11) NOT NULL auto_increment,
  `bor_name` varchar(20) default NULL,
  `bor_pwd` varchar(20) default NULL,
  `bor_nikename` varchar(20) default NULL,
  `bor_realname` varchar(20) default NULL,
  `bor_sex` int(11) default NULL,
  `bor_phone` varchar(20) default NULL,
  `bor_email` varchar(20) default NULL,
  `company_id` int(11) default NULL,
  `money_id` int(11) default NULL,
  `usersta_id` int(11) default NULL,
  `bor_regdate` date default NULL,
  `bor_moddate` date default NULL,
  `bra_operation` int(11) NOT NULL,
  PRIMARY KEY  (`bor_id`),
  KEY `FK_Reference_15` (`company_id`),
  KEY `FK_Reference_17` (`money_id`),
  KEY `FK_Reference_19` (`usersta_id`),
  CONSTRAINT `FK_Reference_19` FOREIGN KEY (`usersta_id`) REFERENCES `state` (`usersta_id`),
  CONSTRAINT `FK_Reference_15` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`),
  CONSTRAINT `FK_Reference_17` FOREIGN KEY (`money_id`) REFERENCES `money` (`money_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `borsel` */

/*Table structure for table `brands` */

DROP TABLE IF EXISTS `brands`;

CREATE TABLE `brands` (
  `bra_id` int(11) NOT NULL auto_increment,
  `bra_name` varchar(20) default NULL,
  `bra_pwd` varchar(20) default NULL,
  `bra_nikename` varchar(20) default NULL,
  `bra_realname` varbinary(0) default NULL,
  `bra_serx` int(11) default NULL,
  `bra_phone` varchar(20) default NULL,
  `bra_email` varchar(20) default NULL,
  `pos_id` int(11) default NULL,
  `company_id` int(11) default NULL,
  `money_id` int(11) default NULL,
  `usersta_id` int(11) default NULL,
  `bra_regdate` date default NULL,
  `bra_moddate` date default NULL,
  `bra_operation` int(11) NOT NULL,
  PRIMARY KEY  (`bra_id`),
  KEY `FK_Reference_13` (`pos_id`),
  KEY `FK_Reference_14` (`company_id`),
  KEY `FK_Reference_16` (`money_id`),
  KEY `FK_Reference_18` (`usersta_id`),
  CONSTRAINT `FK_Reference_18` FOREIGN KEY (`usersta_id`) REFERENCES `state` (`usersta_id`),
  CONSTRAINT `FK_Reference_13` FOREIGN KEY (`pos_id`) REFERENCES `position` (`pos_id`),
  CONSTRAINT `FK_Reference_14` FOREIGN KEY (`company_id`) REFERENCES `company` (`company_id`),
  CONSTRAINT `FK_Reference_16` FOREIGN KEY (`money_id`) REFERENCES `money` (`money_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `brands` */

/*Table structure for table `business_type` */

DROP TABLE IF EXISTS `business_type`;

CREATE TABLE `business_type` (
  `bus_id` int(11) NOT NULL auto_increment,
  `bus_name` varchar(20) default NULL,
  PRIMARY KEY  (`bus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `business_type` */

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `cit_id` int(11) NOT NULL auto_increment,
  `cit_name` varchar(50) default NULL,
  `ity_number` varchar(10) default NULL,
  PRIMARY KEY  (`cit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `city` */

/*Table structure for table `commodity` */

DROP TABLE IF EXISTS `commodity`;

CREATE TABLE `commodity` (
  `com_id` int(11) NOT NULL auto_increment,
  `bra_id` int(11) default NULL,
  `aud_id` int(11) default NULL,
  `comtype_id` int(11) default NULL,
  `com_name` varchar(20) default NULL,
  `shelftime` date default NULL,
  `price` double default NULL,
  `stock` int(11) default NULL,
  `com_regdate` date default NULL,
  `com_moddate` date default NULL,
  `com_operation` int(11) default NULL,
  PRIMARY KEY  (`com_id`),
  KEY `FK_Reference_20` (`aud_id`),
  KEY `FK_Reference_21` (`comtype_id`),
  KEY `FK_Reference_3` (`bra_id`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`bra_id`) REFERENCES `brands` (`bra_id`),
  CONSTRAINT `FK_Reference_20` FOREIGN KEY (`aud_id`) REFERENCES `audit` (`aud_id`),
  CONSTRAINT `FK_Reference_21` FOREIGN KEY (`comtype_id`) REFERENCES `commodity_type` (`comtype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `commodity` */

/*Table structure for table `commodity_type` */

DROP TABLE IF EXISTS `commodity_type`;

CREATE TABLE `commodity_type` (
  `comtype_id` int(11) NOT NULL auto_increment,
  `comtype_name` varchar(20) default NULL,
  PRIMARY KEY  (`comtype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `commodity_type` */

/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL auto_increment,
  `address_id` int(11) default NULL,
  `bus_id` int(11) default NULL,
  `comtype_id` int(11) default NULL,
  `cou_id` int(11) default NULL,
  `pro_id` int(11) default NULL,
  `cit_id` int(11) default NULL,
  `company_name` varchar(20) default NULL,
  `company_brand` varchar(20) default NULL,
  `company_license` varchar(200) default NULL,
  `company_regtiime` date default NULL,
  `company_modtime` date default NULL,
  `company_operation` int(11) default NULL,
  PRIMARY KEY  (`company_id`),
  KEY `FK_Reference_10` (`address_id`),
  KEY `FK_Reference_11` (`bus_id`),
  KEY `FK_Reference_12` (`comtype_id`),
  KEY `FK_Reference_29` (`cou_id`),
  KEY `FK_Reference_30` (`pro_id`),
  KEY `FK_Reference_31` (`cit_id`),
  CONSTRAINT `FK_Reference_31` FOREIGN KEY (`cit_id`) REFERENCES `city` (`cit_id`),
  CONSTRAINT `FK_Reference_10` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `FK_Reference_11` FOREIGN KEY (`bus_id`) REFERENCES `business_type` (`bus_id`),
  CONSTRAINT `FK_Reference_12` FOREIGN KEY (`comtype_id`) REFERENCES `company_type` (`comtype_id`),
  CONSTRAINT `FK_Reference_29` FOREIGN KEY (`cou_id`) REFERENCES `country` (`cou_id`),
  CONSTRAINT `FK_Reference_30` FOREIGN KEY (`pro_id`) REFERENCES `province` (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `company` */

/*Table structure for table `company_type` */

DROP TABLE IF EXISTS `company_type`;

CREATE TABLE `company_type` (
  `comtype_id` int(11) NOT NULL auto_increment,
  `comtype_name` varchar(20) default NULL,
  PRIMARY KEY  (`comtype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `company_type` */

/*Table structure for table `complaints` */

DROP TABLE IF EXISTS `complaints`;

CREATE TABLE `complaints` (
  `complaints_id` int(11) NOT NULL auto_increment,
  `com_id` int(11) default NULL,
  `complaints_name` varchar(200) default NULL,
  `user_id` int(11) default NULL,
  `complaints_time` date default NULL,
  PRIMARY KEY  (`complaints_id`),
  KEY `FK_Reference_28` (`com_id`),
  CONSTRAINT `FK_Reference_28` FOREIGN KEY (`com_id`) REFERENCES `commodity` (`com_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `complaints` */

/*Table structure for table `contact` */

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `con_id` int(11) NOT NULL auto_increment,
  `com_id` int(11) default NULL,
  `ord_id` int(11) default NULL,
  `ord_number` char(10) default NULL,
  PRIMARY KEY  (`con_id`),
  KEY `FK_Reference_1` (`com_id`),
  KEY `FK_Reference_2` (`ord_id`),
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`ord_id`) REFERENCES `orderinfo` (`ord_id`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`com_id`) REFERENCES `commodity` (`com_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `contact` */

/*Table structure for table `country` */

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `cou_id` int(11) NOT NULL auto_increment,
  `cou_english` varchar(100) default NULL,
  `cou_name` varchar(50) default NULL,
  `Consignee` varchar(10) default NULL,
  `national_code` varchar(10) default NULL,
  PRIMARY KEY  (`cou_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `country` */

/*Table structure for table `financial` */

DROP TABLE IF EXISTS `financial`;

CREATE TABLE `financial` (
  `fin_id` int(11) NOT NULL auto_increment,
  `bra_id` int(11) default NULL,
  `bor_id` int(11) default NULL,
  `fin_name` varchar(20) default NULL,
  `fin_pramount` double default NULL,
  `fin_number` int(11) default NULL,
  `trading_time` date default NULL,
  `fin_regdate` date default NULL,
  `fin_moddate` date default NULL,
  `fin_operation` int(11) default NULL,
  PRIMARY KEY  (`fin_id`),
  KEY `FK_Reference_4` (`bra_id`),
  KEY `FK_Reference_5` (`bor_id`),
  CONSTRAINT `FK_Reference_5` FOREIGN KEY (`bor_id`) REFERENCES `borsel` (`bor_id`),
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`bra_id`) REFERENCES `brands` (`bra_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `financial` */

/*Table structure for table `money` */

DROP TABLE IF EXISTS `money`;

CREATE TABLE `money` (
  `money_id` int(11) NOT NULL auto_increment,
  `ban_id` int(11) default NULL,
  `acc_id` int(11) default NULL,
  `money_pwd` int(11) default NULL,
  `balance` double default NULL,
  PRIMARY KEY  (`money_id`),
  KEY `FK_Reference_24` (`ban_id`),
  KEY `FK_Reference_35` (`acc_id`),
  CONSTRAINT `FK_Reference_35` FOREIGN KEY (`acc_id`) REFERENCES `account` (`acc_id`),
  CONSTRAINT `FK_Reference_24` FOREIGN KEY (`ban_id`) REFERENCES `bank` (`ban_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `money` */

/*Table structure for table `orderinfo` */

DROP TABLE IF EXISTS `orderinfo`;

CREATE TABLE `orderinfo` (
  `ord_id` int(11) NOT NULL auto_increment,
  `address_id` int(11) default NULL,
  `ordsta_id` int(11) default NULL,
  `ord_pramount` double default NULL,
  `ord_number` int(11) default NULL,
  `ord_regdate` date default NULL,
  `ord_moddate` date default NULL,
  `ord_operation` int(11) default NULL,
  PRIMARY KEY  (`ord_id`),
  KEY `FK_Reference_22` (`address_id`),
  KEY `FK_Reference_27` (`ordsta_id`),
  CONSTRAINT `FK_Reference_27` FOREIGN KEY (`ordsta_id`) REFERENCES `orderinfo_state` (`ordsta_id`),
  CONSTRAINT `FK_Reference_22` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orderinfo` */

/*Table structure for table `orderinfo_state` */

DROP TABLE IF EXISTS `orderinfo_state`;

CREATE TABLE `orderinfo_state` (
  `ordsta_id` int(11) NOT NULL auto_increment,
  `ordsta_type` int(11) default '0',
  PRIMARY KEY  (`ordsta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orderinfo_state` */

/*Table structure for table `picture` */

DROP TABLE IF EXISTS `picture`;

CREATE TABLE `picture` (
  `pic_id` int(11) NOT NULL auto_increment,
  `com_id` int(11) default NULL,
  `pic_name` varchar(200) default NULL,
  `pic_address` varchar(200) default NULL,
  PRIMARY KEY  (`pic_id`),
  KEY `FK_Reference_23` (`com_id`),
  CONSTRAINT `FK_Reference_23` FOREIGN KEY (`com_id`) REFERENCES `commodity` (`com_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `picture` */

/*Table structure for table `position` */

DROP TABLE IF EXISTS `position`;

CREATE TABLE `position` (
  `pos_id` int(11) NOT NULL auto_increment,
  `pos_name` varchar(20) default NULL,
  PRIMARY KEY  (`pos_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `position` */

/*Table structure for table `province` */

DROP TABLE IF EXISTS `province`;

CREATE TABLE `province` (
  `pro_id` int(11) NOT NULL auto_increment,
  `pro_name` varchar(50) default NULL,
  `national_code` varchar(10) default NULL,
  `city_number` varchar(10) default NULL,
  PRIMARY KEY  (`pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `province` */

/*Table structure for table `state` */

DROP TABLE IF EXISTS `state`;

CREATE TABLE `state` (
  `usersta_id` int(11) NOT NULL auto_increment,
  `usersta_name` int(11) default '0',
  PRIMARY KEY  (`usersta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `state` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
