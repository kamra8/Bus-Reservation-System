/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.0.67-community-nt : Database - bus_resv
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`bus_resv` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bus_resv`;

/*Table structure for table `bus` */

DROP TABLE IF EXISTS `bus`;

CREATE TABLE `bus` (
  `id` varchar(100) default NULL,
  `no` varchar(100) default NULL,
  `type` varchar(100) default NULL,
  `operator` varchar(100) default NULL,
  `srcstn` varchar(100) default NULL,
  `deststn` varchar(100) default NULL,
  `fare` varchar(100) default NULL,
  `dtime` time default NULL,
  `atime` time default NULL,
  `stadd` varchar(100) default NULL,
  `contact` varchar(100) default NULL,
  `numseat` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bus` */

insert  into `bus`(`id`,`no`,`type`,`operator`,`srcstn`,`deststn`,`fare`,`dtime`,`atime`,`stadd`,`contact`,`numseat`) values ('6','b','b','b','k','b','b','00:00:05','00:00:04','b','b','b'),('r','r','r','r','r','r','r','11:54:00','21:44:00','hbh','bbhbj','hjbj'),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('1234','khhbkjb','bjknjb','nkjnk','jaipur','delhi','1000','11:30:00','11:30:00','jhghjb','6786876789','100');

/*Table structure for table `reg` */

DROP TABLE IF EXISTS `reg`;

CREATE TABLE `reg` (
  `username` varchar(100) default NULL,
  `password` varchar(100) default NULL,
  `utype` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reg` */

insert  into `reg`(`username`,`password`,`utype`) values ('','',NULL),('kamra','kamra0808','customer'),('kamra','kamra0808','customer'),('kamra','kamra0808','customer'),('manu','manu08','customer'),('manu','manu4','customer'),('prakar','prakhar','customer'),('fbkb','kbdcksdb','customer'),('sdkssndj','dnvjfnv','customer'),('sadas','bh','b'),('bkjbjk','b','b'),('b','b','b'),('kb',NULL,'b'),('bh','bh','bh'),('b','hb','hbh'),('bh','bh','bh'),('bh','bh','bh'),('bh','bh','b'),('j','n','jn'),('n','j','njn'),('jn','jn','jn'),('jn','jn','jnj'),('nj','nj','nj'),(NULL,'jn','jn'),('jnj','nj','nj'),('njn','jn','j'),('nj','nj','njnj'),('n','jn','jn'),('j','n','nj'),('nn','j','nj'),('nj','n','mn'),('j','n','j'),('n','jn','j'),(NULL,'jn','j'),(NULL,NULL,'customer'),(NULL,NULL,'customer'),(NULL,NULL,'customer'),(NULL,NULL,'customer'),(NULL,NULL,'customer'),('manu','kamra0808','customer'),('qwerty','qwerty','customer'),('kamra','kamra','manager');

/*Table structure for table `seatavailable` */

DROP TABLE IF EXISTS `seatavailable`;

CREATE TABLE `seatavailable` (
  `busid` varchar(100) default NULL,
  `date` date default NULL,
  `seatavai` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `seatavailable` */

insert  into `seatavailable`(`busid`,`date`,`seatavai`) values ('1234',NULL,'-51'),('1234',NULL,'58'),('1234',NULL,'62'),('1234',NULL,'71'),('1234',NULL,'75'),('1234',NULL,'79'),('1234',NULL,'80'),('1234','2016-12-12','81'),('1234','2016-11-30','82'),('1234','2016-12-27','99'),('1234','2016-10-30','4'),('1234','1994-08-08','94'),('1234','2016-11-29','94'),(NULL,NULL,''),('1234','2013-07-18','97'),('1234','2015-05-29','98'),('1234','2013-07-23','96'),('1234','2015-05-30','95'),('1234','2013-09-28','95'),('1234','2015-03-27','99');

/*Table structure for table `tkt` */

DROP TABLE IF EXISTS `tkt`;

CREATE TABLE `tkt` (
  `busid` varchar(100) default NULL,
  `src` varchar(100) default NULL,
  `dest` varchar(100) default NULL,
  `date` date default NULL,
  `tktnum` varchar(100) default NULL,
  `name` varchar(100) default NULL,
  `sex` varchar(100) default NULL,
  `age` varchar(100) default NULL,
  `email` varchar(100) default NULL,
  `mobno` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tkt` */

insert  into `tkt`(`busid`,`src`,`dest`,`date`,`tktnum`,`name`,`sex`,`age`,`email`,`mobno`) values ('6',NULL,NULL,NULL,'','shbdhb','M','12','kam@gmail.com','7791933229'),('6',NULL,NULL,NULL,'','dfszdz','F','23445465','kam@gmail.com','7791933229'),('6',NULL,NULL,NULL,'','hgc','M','4','kam@gmail.com','7791933229'),('6',NULL,NULL,NULL,'','fgfd','F','4','kam@gmail.com','7791933229'),('6',NULL,NULL,NULL,'698118','',NULL,'','',''),('6',NULL,NULL,NULL,'698118','',NULL,'','',''),('6',NULL,NULL,NULL,'698118','',NULL,'','',''),('6','k','b',NULL,'199423','',NULL,'','',''),('6','k','b',NULL,'199423','',NULL,'','',''),('6','k','b',NULL,'199423','',NULL,'','',''),('1234','jaipur','delhi',NULL,'865186','manu',NULL,'','',''),('1234','jaipur','delhi',NULL,'865186','',NULL,'','',''),('1234','jaipur','delhi',NULL,'865186','',NULL,'','',''),('1234','jaipur','delhi',NULL,'865186','',NULL,'','',''),('1234','jaipur','delhi',NULL,'232166','manu','M','20','wscxndkj','783873'),('1234','jaipur','delhi',NULL,'232166','tanu','F','10','wscxndkj','783873'),('1234','jaipur','delhi',NULL,'232166','sjknkj','M','25','wscxndkj','783873'),('1234','jaipur','delhi',NULL,'240767','manu','M','20','djkfenfd','k364846389'),('1234','jaipur','delhi',NULL,'240767','tanu','F','25','djkfenfd','k364846389'),('1234','jaipur','delhi',NULL,'103698','manu','M','12','ksnkajb','nksn,nsnm'),('1234','jaipur','delhi',NULL,'103698','ansn','F','13','ksnkajb','nksn,nsnm'),('1234','jaipur','delhi',NULL,'103698','nsnk','F','14','ksnkajb','nksn,nsnm'),('1234','jaipur','delhi',NULL,'198992','manu','M','20','kamrahimanshu08@gmail.com','7791933229'),('1234','jaipur','delhi',NULL,'198992','tanu','F','20','kamrahimanshu08@gmail.com','7791933229'),('1234','jaipur','delhi',NULL,'680210','dhsjbd','F','','',''),('1234','jaipur','delhi',NULL,'680210','',NULL,'','',''),('1234','jaipur','delhi',NULL,'9811','manu','M','25','skjnackj','444444'),('1234','jaipur','delhi',NULL,'710349','tanshhi','F','19','hsambxmn','ndkjnren'),('1234','jaipur','delhi','2016-12-12','690137','',NULL,'','',''),('1234','jaipur','delhi','2016-11-30','384096','atman','M','20','kamrahimanshu19@gmail.com','7791933229'),('1234','jaipur','delhi','2016-11-30','384096','kamra','M','20','kamrahimanshu19@gmail.com','7791933229'),('1234','jaipur','delhi','2016-11-30','384096','devo','M','20','kamrahimanshu19@gmail.com','7791933229'),('1234','jaipur','delhi','2016-11-30','384096','pussy','M','20','kamrahimanshu19@gmail.com','7791933229'),('1234','jaipur','delhi','2016-11-30','897077','manu','M','21','kamrahimanshu0.8@gmail.com','7791933229'),('1234','jaipur','delhi','2016-12-27','529262','',NULL,'','',''),('1234','jaipur','delhi','2016-10-30','571915','',NULL,'','',''),('1234','jaipur','delhi','2016-10-30','571915','',NULL,'','',''),('1234','jaipur','delhi','2016-10-30','571915','',NULL,'','',''),('1234','jaipur','delhi','2016-10-30','908297','',NULL,'','',''),('1234','jaipur','delhi','2016-10-30','908297','',NULL,'','',''),('1234','jaipur','delhi','2016-10-30','707918','',NULL,'','',''),('1234','jaipur','delhi','2016-10-30','707918','',NULL,'','',''),('1234','jaipur','delhi','2016-10-30','707918','',NULL,'','',''),('1234','jaipur','delhi','2016-10-30','707918','',NULL,'','',''),('1234','jaipur','delhi','2016-10-30','587935','',NULL,'','',''),('1234','jaipur','delhi','2016-10-30','587935','',NULL,'','',''),('1234','jaipur','delhi','2016-10-30','587935','',NULL,'','',''),('1234','jaipur','delhi','2016-10-30','587935','',NULL,'','',''),('1234','jaipur','delhi','2016-10-30','587935','',NULL,'','',''),('1234','jaipur','delhi','2016-10-30','930974','',NULL,'','',''),('1234','jaipur','delhi','2016-10-30','930974','',NULL,'','',''),('1234','jaipur','delhi','2016-10-30','930974','',NULL,'','',''),('1234','jaipur','delhi','2016-10-30','930974','',NULL,'','',''),('1234','jaipur','delhi','2016-10-30','930974','',NULL,'','',''),('1234','jaipur','delhi','2016-10-30','930974','',NULL,'','',''),('1234','jaipur','delhi','2016-10-30','199893','',NULL,'','',''),('1234','jaipur','delhi','2016-10-30','199893','',NULL,'','',''),('1234','jaipur','delhi','2016-10-30','199893','',NULL,'','',''),('1234','jaipur','delhi','2016-10-30','199893','',NULL,'','',''),('1234','jaipur','delhi','2016-10-30','199893','',NULL,'','',''),('1234','jaipur','delhi','2016-10-30','199893','',NULL,'','',''),('1234','jaipur','delhi','1994-08-08','312979','',NULL,'','',''),('1234','jaipur','delhi','1994-08-08','312979','',NULL,'','',''),('1234','jaipur','delhi','1994-08-08','312979','',NULL,'','',''),('1234','jaipur','delhi','1994-08-08','312979','',NULL,'','',''),('1234','jaipur','delhi','1994-08-08','312979','',NULL,'','',''),('1234','jaipur','delhi','1994-08-08','312979','',NULL,'','',''),('1234','jaipur','delhi','2016-11-29','70466','',NULL,'','',''),('1234','jaipur','delhi','2016-11-29','70466','',NULL,'','',''),('1234','jaipur','delhi','2016-11-29','70466','',NULL,'','',''),('1234','jaipur','delhi','2016-11-29','70466','',NULL,'','',''),('1234','jaipur','delhi','2016-11-29','70466','',NULL,'','',''),('1234','jaipur','delhi','2016-11-29','70466','',NULL,'','',''),(NULL,NULL,NULL,NULL,'396958','',NULL,'','',''),(NULL,NULL,NULL,NULL,'396958','',NULL,'','',''),(NULL,NULL,NULL,NULL,'396958','',NULL,'','',''),(NULL,NULL,NULL,NULL,'396958','',NULL,'','',''),(NULL,NULL,NULL,NULL,'396958','',NULL,'','',''),(NULL,NULL,NULL,NULL,'396958','',NULL,'','',''),('1234','jaipur','delhi','2013-07-18','570790','',NULL,'','',''),('1234','jaipur','delhi','2013-07-18','570790','',NULL,'','',''),('1234','jaipur','delhi','2013-07-18','570790','',NULL,'','',''),('1234','jaipur','delhi','2015-05-29','808268','',NULL,'','',''),('1234','jaipur','delhi','2015-05-29','808268','',NULL,'','',''),('1234','jaipur','delhi','2013-07-23','903815','',NULL,'','',''),('1234','jaipur','delhi','2013-07-23','903815','',NULL,'','',''),('1234','jaipur','delhi','2013-07-23','903815','',NULL,'','',''),('1234','jaipur','delhi','2013-07-23','903815','',NULL,'','',''),('1234','jaipur','delhi','2015-05-30','649607','',NULL,'','',''),('1234','jaipur','delhi','2015-05-30','649607','',NULL,'','',''),('1234','jaipur','delhi','2015-05-30','649607','',NULL,'','',''),('1234','jaipur','delhi','2015-05-30','649607','',NULL,'','',''),('1234','jaipur','delhi','2015-05-30','649607','',NULL,'','',''),('1234','jaipur','delhi','2013-09-28','903699','kamra','M','20','nasdkjncf,a','97089890'),('1234','jaipur','delhi','2013-09-28','903699','atman','M','20','nasdkjncf,a','97089890'),('1234','jaipur','delhi','2013-09-28','903699','devo','M','20','nasdkjncf,a','97089890'),('1234','jaipur','delhi','2013-09-28','903699','manu','M','20','nasdkjncf,a','97089890'),('1234','jaipur','delhi','2013-09-28','903699','raj','M','20','nasdkjncf,a','97089890'),('1234','jaipur','delhi','2015-03-27','948500','',NULL,'','','');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
