/*
SQLyog Professional v12.09 (64 bit)
MySQL - 5.5.40 : Database - jpatest
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jpatest` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jpatest`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `uid` int(11) DEFAULT NULL,
  `ac_id` int(11) NOT NULL AUTO_INCREMENT,
  `money` double DEFAULT NULL,
  PRIMARY KEY (`ac_id`),
  KEY `uid` (`uid`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

/*Data for the table `account` */

insert  into `account`(`uid`,`ac_id`,`money`) values (11,1,5000),(1,2,3000),(2,3,4000),(3,4,2000),(3,5,6000),(4,6,7000),(11,7,10000),(11,9,3333),(7,12,8000),(9,13,7000),(9,14,7000),(14,16,3000),(29,26,10000),(28,27,3333),(30,28,66666),(31,29,333333),(32,30,3000),(34,32,10000),(33,33,333333),(35,34,4444),(38,36,55555);

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `adminname` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `id` int(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `admin` */

insert  into `admin`(`adminname`,`password`,`id`) values ('admin','admin',1);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `age` int(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`age`) values (1,'zhangsan','123',23),(2,'lisi','234',19),(3,'wangwu','678',22),(4,'zhouliu','890',18),(5,'wangfeng','222',26),(7,'zhansghufang','234',51),(9,'王小林','234',52),(11,'王峰','1992',28),(12,'李燕','520',26),(13,'张三','123',26),(14,'李四','lisi2',18),(26,'林海雪原','linhai',22),(27,'红楼梦','honglou',18),(28,'水浒传','222',222),(29,'Java编程思想','java',233),(30,'金瓶梅','panjinlian',22),(31,'三国演义','sanguoyanyi',28),(32,'Java核心技术卷I','java',234),(33,'马云','mayun',40),(34,'拉普拉斯的魔女','lapulasi',2222),(35,'黑心老板','heixin',50),(38,'王老五','laowu',55);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
