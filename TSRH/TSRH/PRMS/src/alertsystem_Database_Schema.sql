/*
SQLyog Trial v9.50 
MySQL - 5.5.17 : Database - alertsystem
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`alertsystem` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `alertsystem`;

/*Table structure for table `userinfo` */

DROP TABLE IF EXISTS `userinfo`;

CREATE TABLE `userinfo` (
  `userId` varchar(50) NOT NULL,
  `userName` varchar(45) NOT NULL,
  `emailId` varchar(45) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `userinfo` */

LOCK TABLES `userinfo` WRITE;

insert  into `userinfo`(`userId`,`userName`,`emailId`) values ('user1','user1','user1@email.com'),('user2','user2','user2'),('user3','user3','user3'),('user4','user4','user4'),('userId-1','userName-1','userMail-1@gmail.com');

UNLOCK TABLES;

/*Table structure for table `patientrecord` */

DROP TABLE IF EXISTS `patientrecord`;

CREATE TABLE `patientrecord` (
  `patientid` int(11) NOT NULL AUTO_INCREMENT,
  `lastname` varchar(25) DEFAULT NULL,
  `firstname` varchar(25) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `phonenumber` varchar(25) DEFAULT NULL,
  `address` varchar(25) DEFAULT NULL,
  `mothersname` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`patientid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `patientrecord` */

LOCK TABLES `patientrecord` WRITE;

insert  into `patientrecord`(`patientid`,`lastname`,`firstname`,`dateofbirth`,`phonenumber`,`address`,`mothersname`) values (1,'last','first','1990-01-10','222222222','address','mother');

UNLOCK TABLES;

/*Table structure for table `alert` */

DROP TABLE IF EXISTS `alert`;

CREATE TABLE `alert` (
  `alertId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alertCreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `alertTime` timestamp NULL DEFAULT NULL,
  `alertCreatedBy` varchar(50) NOT NULL,
  `userId` varchar(50) NOT NULL,
  `alertText` varchar(50) NOT NULL,
  `alertSourceType` int(11) DEFAULT NULL,
  `alertSourceId` varchar(50) NOT NULL,
  `alertState` varchar(50) NOT NULL,
  `repeating` tinyint(4) DEFAULT '0',
  `repeat_frequency` int(10) unsigned DEFAULT '0',
  `severity` tinyint(3) unsigned DEFAULT '3',
  PRIMARY KEY (`alertId`),
  KEY `idx_fk_userId` (`userId`),
  CONSTRAINT `fk_userId` FOREIGN KEY (`userId`) REFERENCES `userinfo` (`userId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `alert` */

LOCK TABLES `alert` WRITE;

insert  into `alert`(`alertId`,`alertCreatedTime`,`alertTime`,`alertCreatedBy`,`userId`,`alertText`,`alertSourceType`,`alertSourceId`,`alertState`,`repeating`,`repeat_frequency`,`severity`) values (4,'2011-12-30 02:11:19',NULL,'user1','user4','user 4 ',0,'user4 ','Set',0,1,3),(8,'2011-12-30 03:29:28',NULL,'user1','user1','What to do',0,'New Alert','Set',0,1,3),(9,'2011-12-30 03:29:47',NULL,'user1','user1','What to do again',0,'Alert again','Set',0,1,3),(10,'2011-12-30 13:37:35','2012-01-01 00:01:00','user1','user1','datew',0,'dgdhdj','Set',0,1,3),(11,'2011-12-30 15:07:21','2011-12-30 15:07:21','userId-1','userId-1','updateAlertText',1,'alertSourceId-1','alertStateNew',NULL,1,NULL);

UNLOCK TABLES;

/*Table structure for table `alertarchive` */

DROP TABLE IF EXISTS `alertarchive`;

CREATE TABLE `alertarchive` (
  `alertArchiveId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alertId` int(10) unsigned DEFAULT NULL,
  `alertCreatedTime` timestamp NULL DEFAULT NULL,
  `alertTime` timestamp NULL DEFAULT NULL,
  `alertArchivedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `alertCreatedBy` varchar(50) DEFAULT NULL,
  `userId` varchar(50) DEFAULT NULL,
  `alertText` varchar(50) DEFAULT NULL,
  `alertSourceType` int(11) DEFAULT NULL,
  `alertSourceId` varchar(50) DEFAULT NULL,
  `alertState` varchar(50) DEFAULT NULL,
  `repeating` tinyint(4) DEFAULT NULL,
  `repeat_frequency` int(10) unsigned DEFAULT NULL,
  `severity` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`alertArchiveId`)
) ENGINE=ARCHIVE DEFAULT CHARSET=utf8;

/*Data for the table `alertarchive` */

LOCK TABLES `alertarchive` WRITE;

insert  into `alertarchive`(`alertArchiveId`,`alertId`,`alertCreatedTime`,`alertTime`,`alertArchivedTime`,`alertCreatedBy`,`userId`,`alertText`,`alertSourceType`,`alertSourceId`,`alertState`,`repeating`,`repeat_frequency`,`severity`) values (1,1,'2011-12-30 01:55:34',NULL,'2011-12-30 03:08:53','user1','user1','aaaaaaaaaaaaa',0,'-1','Set',0,1,NULL),(2,3,'2011-12-30 02:08:04',NULL,'2011-12-30 03:14:37','user1','user1','My Message',0,'Alert 2','Set',0,1,3),(3,7,'2011-12-30 03:19:12',NULL,'2011-12-30 03:19:28','user1','user1','Message 2',0,'Alert 2','Set',0,1,3),(4,6,'2011-12-30 03:17:55',NULL,'2011-12-30 03:25:04','user1','user1','Message 2',0,'Alert 2','Set',0,1,3),(5,2,'2011-12-30 02:07:33',NULL,'2011-12-30 03:28:15','user1','user1','My Alert Message',0,'Alert One','Set',0,3,2),(6,5,'2011-12-30 03:17:38',NULL,'2011-12-30 03:28:46','user1','user1','My Message',0,'Alert One','Set',0,1,3);

UNLOCK TABLES;

/*Table structure for table `alerthistory` */

DROP TABLE IF EXISTS `alerthistory`;

CREATE TABLE `alerthistory` (
  `alertHistoryId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alertId` int(10) unsigned NOT NULL,
  `alertUpdateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `alertUpdateType` varchar(50) NOT NULL,
  `alertRemark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`alertHistoryId`),
  KEY `idx_fk_alertId` (`alertId`),
  CONSTRAINT `fk_alertId` FOREIGN KEY (`alertId`) REFERENCES `alert` (`alertId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `alerthistory` */

LOCK TABLES `alerthistory` WRITE;

insert  into `alerthistory`(`alertHistoryId`,`alertId`,`alertUpdateTime`,`alertUpdateType`,`alertRemark`) values (3,8,'2011-12-30 03:30:06','user1','I am remarking');

UNLOCK TABLES;

/*Table structure for table `alerthistoryarchive` */

DROP TABLE IF EXISTS `alerthistoryarchive`;

CREATE TABLE `alerthistoryarchive` (
  `alertHistoryArchiveId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alertHistoryId` int(10) unsigned DEFAULT NULL,
  `alertId` int(10) unsigned DEFAULT NULL,
  `alertUpdateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `alertUpdateType` varchar(50) DEFAULT NULL,
  `alertRemark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`alertHistoryArchiveId`)
) ENGINE=ARCHIVE DEFAULT CHARSET=utf8;

/*Data for the table `alerthistoryarchive` */

LOCK TABLES `alerthistoryarchive` WRITE;

insert  into `alerthistoryarchive`(`alertHistoryArchiveId`,`alertHistoryId`,`alertId`,`alertUpdateTime`,`alertUpdateType`,`alertRemark`) values (1,1,1,'2011-12-30 02:06:39','user1','Remark 1'),(2,2,5,'2011-12-30 03:18:07','user1','Remarked');

UNLOCK TABLES;

/*Table structure for table `consultation_record` */

DROP TABLE IF EXISTS `consultation_record`;

CREATE TABLE `consultation_record` (
  `consultationid` int(11) NOT NULL AUTO_INCREMENT,
  `patientid_consultation` int(11) DEFAULT NULL,
  `dateofconsultation` date DEFAULT NULL,
  `whomconsulted` varchar(50) DEFAULT NULL,
  `consultedfor` varchar(50) DEFAULT NULL,
  `prescription` varchar(50) DEFAULT NULL,
  `consultationremindernote` varchar(50) DEFAULT NULL,
  `consultationreminderdate` date DEFAULT NULL,
  `consultationcomments` varchar(150) DEFAULT NULL,
  `userid` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`consultationid`),
  KEY `patientid_consultation` (`patientid_consultation`),
  CONSTRAINT `consultation_record_ibfk_1` FOREIGN KEY (`patientid_consultation`) REFERENCES `patientrecord` (`patientid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `consultation_record` */

LOCK TABLES `consultation_record` WRITE;

insert  into `consultation_record`(`consultationid`,`patientid_consultation`,`dateofconsultation`,`whomconsulted`,`consultedfor`,`prescription`,`consultationremindernote`,`consultationreminderdate`,`consultationcomments`,`userid`) values (1,1,'2012-10-10','doctor.D','Patient ','good','reminder','2012-12-12','commented','u');

UNLOCK TABLES;

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

LOCK TABLES `employee` WRITE;

insert  into `employee`(`id`,`first_name`,`last_name`,`designation`,`created_date`) values (1,'Abraham','Vert','Office Assistant','2011-11-30 08:00:00'),(2,'William','Jones','Doctor','2011-11-30 08:00:00'),(3,'Anthony','Marc','Nurse','2011-11-30 08:00:00'),(4,'Matt','Wright','Doctor','2011-11-30 08:00:00'),(5,'Alex','Huber','Nurse','2011-11-30 08:00:00'),(6,'William','Losh','Research Assistant','2011-11-30 08:00:00'),(7,'Ric','Anderson','Doctor','2011-11-30 08:00:00'),(8,'Nathan','Johnson','Office Assistant','2011-11-30 08:00:00'),(9,'Kaylee','Morris','Nurse','2011-11-30 08:00:00'),(10,'Emily','johnson','Doctor','2011-11-30 08:00:00');

UNLOCK TABLES;

/*Table structure for table `patient` */

DROP TABLE IF EXISTS `patient`;

CREATE TABLE `patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `patient` */

LOCK TABLES `patient` WRITE;

insert  into `patient`(`id`,`first_name`,`last_name`,`dob`,`created_date`) values (1,'Ruby','Simpson','2000-07-05','2011-11-30 08:00:00'),(2,'Jean','Melton','1998-06-05','2011-11-30 08:00:00'),(3,'Matthew','Murphy','2005-02-16','2011-11-30 08:00:00'),(4,'William','David','2006-11-25','2011-11-30 08:00:00'),(5,'Kapil','Vyas','1988-10-26','2011-11-30 08:00:00'),(6,'Dony','Dwight','1992-12-21','2011-11-30 08:00:00'),(7,'James','Spargo','1999-01-20','2011-11-30 08:00:00'),(8,'John','Samuel','1982-03-26','2011-11-30 08:00:00'),(9,'Daniel','Thompson','2004-05-22','2011-11-30 08:00:00'),(10,'Jane','Victoria','2003-06-21','2011-11-30 08:00:00'),(11,'John','David','2000-05-21','2011-11-30 08:00:00'),(12,'James','Gosling','1998-09-13','2011-11-30 08:00:00'),(13,'Rudyard','Frost','2005-04-18','2011-11-30 08:00:00'),(14,'John','Wesley','2000-07-11','2011-11-30 08:00:00'),(15,'Ashley','David','2004-12-25','2011-11-30 08:00:00');

UNLOCK TABLES;


/*Table structure for table `pending_dates` */

DROP TABLE IF EXISTS `pending_dates`;

CREATE TABLE `pending_dates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pending_date` datetime NOT NULL,
  `employee_id` int(11) NOT NULL,
  `pending_location` varchar(100) DEFAULT NULL,
  `reason` varchar(300) DEFAULT NULL,
  `notes` varchar(300) DEFAULT NULL,
  `file_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pending_dates` */

LOCK TABLES `pending_dates` WRITE;

insert  into `pending_dates`(`id`,`pending_date`,`employee_id`,`pending_location`,`reason`,`notes`,`file_id`,`created_date`) values (1,'2011-12-02 04:20:00',4,'office','Blood Test','some notes',3,'2011-11-30 08:00:00'),(2,'2011-12-02 05:40:00',3,'CMT','Allergic treatment','some notes',2,'2011-11-30 08:00:00'),(3,'2011-12-02 06:20:00',10,'SALNE-D','Take care of billing','some notes',3,'2011-11-30 08:00:00'),(4,'2011-12-18 15:20:00',1,'CMT','Lab1','some notes',1,'2011-11-30 08:00:00'),(5,'2011-12-10 18:20:00',9,'SALNE-R','Lab107','some notes',5,'2011-11-30 08:00:00'),(6,'2011-12-07 16:25:00',8,'CMT','Theater21','some notes',4,'2011-11-30 08:00:00'),(7,'2011-12-13 17:25:00',3,'SALNE-D','Doctor Delgado needs to see urgently','some notes',7,'2011-11-30 08:00:00'),(8,'2011-12-22 18:20:00',8,'CMT','Test blood again','some notes',8,'2011-11-30 08:00:00'),(9,'2011-12-14 19:25:00',5,'SALNE-R','Brain exception error','some notes',9,'2011-11-30 08:00:00'),(10,'2011-12-15 14:25:00',3,'office','MRI followup','some notes',6,'2011-11-30 08:00:00');

UNLOCK TABLES;

/*Table structure for table `physical_file` */

DROP TABLE IF EXISTS `physical_file`;

CREATE TABLE `physical_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(100) NOT NULL,
  `file_state` varchar(50) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `physical_file` */

LOCK TABLES `physical_file` WRITE;

insert  into `physical_file`(`id`,`location`,`file_state`,`patient_id`,`created_date`) values (1,'Office','IN',2,'2011-11-30 08:00:00'),(2,'CMT','IN',1,'2011-11-30 08:00:00'),(3,'Research Office: Catherine','IN',4,'2011-11-30 08:00:00'),(4,'File given to: Dahlia','IN',3,'2011-11-30 08:00:00'),(5,'MC','IN',6,'2011-11-30 08:00:00'),(6,'Neupa','OUT',5,'2011-11-30 08:00:00'),(7,'TSNE','OUT',8,'2011-11-30 08:00:00'),(8,'BRNNE','IN',9,'2011-11-30 08:00:00'),(9,'SALNE-R','IN',7,'2011-11-30 08:00:00'),(10,'SALNE-D','OUT',11,'2011-11-30 08:00:00'),(11,'Alpha','IN',14,'2011-11-30 08:00:00'),(12,'Pending','IN',13,'2011-11-30 08:00:00'),(13,'Alpha','IN',12,'2011-11-30 08:00:00'),(14,'Discharged-TS','IN',10,'2011-11-30 08:00:00');

UNLOCK TABLES;

/*Table structure for table `test_request_record` */

DROP TABLE IF EXISTS `test_request_record`;

CREATE TABLE `test_request_record` (
  `testrequestid` int(11) NOT NULL AUTO_INCREMENT,
  `patientid_testrequest` int(11) DEFAULT NULL,
  `testname` varchar(50) DEFAULT NULL,
  `testrequestername` varchar(50) DEFAULT NULL,
  `testrequestdate` date DEFAULT NULL,
  `expectedresultdate` date DEFAULT NULL,
  `expectedresult` varchar(50) DEFAULT NULL,
  `istesttaken` varchar(30) DEFAULT NULL,
  `istestresultsubmitted` varchar(30) DEFAULT NULL,
  `remindernote` varchar(25) DEFAULT NULL,
  `reminderdate` date DEFAULT NULL,
  `comments` varchar(150) DEFAULT NULL,
  `userid` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`testrequestid`),
  KEY `patientid_testrequest` (`patientid_testrequest`),
  CONSTRAINT `test_request_record_ibfk_1` FOREIGN KEY (`patientid_testrequest`) REFERENCES `patientrecord` (`patientid`)
) ENGINE=InnoDB   DEFAULT CHARSET=latin1;

/*Data for the table `test_request_record` */

LOCK TABLES `test_request_record` WRITE;

insert  into `test_request_record`(`testrequestid`,`patientid_testrequest`,`testname`,`testrequestername`,`testrequestdate`,`expectedresultdate`,`expectedresult`,`istesttaken`,`istestresultsubmitted`,`remindernote`,`reminderdate`,`comments`,`userid`) values (1,1,'sampletest','sampletestrequest','2011-01-01','2011-02-02','normal','yes','yes','remind','2011-02-02','nione','user1'),(2,1,' Test1','tes ','2011-12-30','2011-12-13','yes','no','no','remind','2012-01-01','comment','user1');

UNLOCK TABLES;

/*Table structure for table `test_result_record` */

DROP TABLE IF EXISTS `test_result_record`;

CREATE TABLE `test_result_record` (
  `testresultid` int(11) NOT NULL AUTO_INCREMENT,
  `test_result_requestid` int(11) DEFAULT NULL,
  `testtakendate` date DEFAULT NULL,
  `resultdate` date DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  `resultfilepath` varchar(50) DEFAULT NULL,
  `whoistobeinformed` varchar(50) DEFAULT NULL,
  `whentobeinformed` varchar(50) DEFAULT NULL,
  `informed` varchar(30) DEFAULT NULL,
  `remindernote` varchar(150) DEFAULT NULL,
  `reminderdate` date DEFAULT NULL,
  `comments` varchar(150) DEFAULT NULL,
  `userid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`testresultid`),
  KEY `test_result_requestid` (`test_result_requestid`),
  CONSTRAINT `test_result_record_ibfk_1` FOREIGN KEY (`test_result_requestid`) REFERENCES `test_request_record` (`testrequestid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `test_result_record` */

LOCK TABLES `test_result_record` WRITE;

UNLOCK TABLES;

/*Table structure for table `transactions` */

DROP TABLE IF EXISTS `transactions`;

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `time` datetime NOT NULL,
  `return_date` datetime DEFAULT NULL,
  `reason` varchar(300) DEFAULT NULL,
  `notes` varchar(300) DEFAULT NULL,
  `location` varchar(300) NOT NULL,
  `file_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `transactions` */

LOCK TABLES `transactions` WRITE;

insert  into `transactions`(`id`,`employee_id`,`type`,`time`,`return_date`,`reason`,`notes`,`location`,`file_id`,`created_date`) values (1,5,'CHECK-OUT','2011-09-12 10:20:00','2011-09-17 09:20:00','Consultation to John','some notes','office',3,'2011-11-30 08:00:00'),(2,6,'CHECK-OUT','2011-09-12 02:10:00','2011-09-18 07:20:00','For Lab','some notes','Research Office: Catherine',9,'2011-11-30 08:00:00'),(3,4,'CHECK-OUT','2011-09-12 09:50:00','2011-09-28 10:50:00','Taken to Mrs Emily Johnson','some notes','File given to: Dahlia',5,'2011-11-30 08:00:00'),(4,9,'CHECK-OUT','2011-10-12 11:20:00','2011-10-19 14:30:00','Transferred to Mr William Jones','some notes','office',3,'2011-11-30 08:00:00'),(5,1,'CHECK-OUT','2011-10-12 02:10:00','2011-10-19 03:20:00','Awaiting Lab Results','some notes','CMT',7,'2011-11-30 08:00:00'),(6,2,'CHECK-OUT','2011-11-01 08:35:00','2011-11-07 05:20:00','Allergic information','some notes','office',5,'2011-11-30 08:00:00'),(7,3,'CHECK-OUT','2011-11-16 12:30:00','2011-11-19 04:20:00','Awaiting Results from William Jones','some notes','Research Office: Catherine',3,'2011-11-30 08:00:00'),(8,8,'CHECK-OUT','2011-11-19 06:45:00','2011-11-23 01:25:00','Should meet Mr Matt Wright','some notes','CMT',10,'2011-11-30 08:00:00'),(9,7,'CHECK-OUT','2011-11-12 01:20:00','2011-11-18 04:25:00','Allergic to Caffeine','some notes','File given to: Dahlia',1,'2011-11-30 08:00:00'),(10,10,'CHECK-OUT','2011-11-13 02:05:00','2011-11-16 06:25:00','Consultation to Ric Anderson','some notes','Research Office: Catherine',4,'2011-11-30 08:00:00'),(11,5,'CHECK-IN','2011-09-17 09:20:00',NULL,NULL,NULL,'Alpha',3,'2011-11-30 08:00:00'),(12,8,'CHECK-IN','2011-09-18 07:20:00',NULL,NULL,NULL,'Pending',9,'2011-11-30 08:00:00'),(13,10,'CHECK-IN','2011-09-28 10:50:00',NULL,NULL,NULL,'Discharged-TS',5,'2011-11-30 08:00:00'),(14,4,'CHECK-IN','2011-10-19 14:30:00',NULL,NULL,NULL,'Alpha',3,'2011-11-30 08:00:00'),(15,1,'CHECK-IN','2011-10-19 03:20:00',NULL,NULL,NULL,'Pending',7,'2011-11-30 08:00:00'),(16,7,'CHECK-IN','2011-11-07 05:20:00',NULL,NULL,NULL,'Pending',5,'2011-11-30 08:00:00'),(17,6,'CHECK-IN','2011-11-19 04:20:00',NULL,NULL,NULL,'Discharged-TS',3,'2011-11-30 08:00:00'),(18,2,'CHECK-IN','2011-11-23 01:25:00',NULL,NULL,NULL,'Alpha',10,'2011-11-30 08:00:00'),(19,9,'CHECK-IN','2011-11-18 04:25:00',NULL,NULL,NULL,'Pending',1,'2011-11-30 08:00:00'),(20,3,'CHECK-IN','2011-11-16 06:25:00',NULL,NULL,NULL,'Alpha',4,'2011-11-30 08:00:00'),(21,5,'TRANSFER','2011-09-15 09:20:00','2011-09-17 09:20:00','Files transferred to nurse','some notes','office',3,'2011-11-30 08:00:00'),(22,8,'TRANSFER','2011-09-15 13:25:00','2011-09-18 07:20:00','Files transferred to Emily','some notes','CMT',9,'2011-11-30 08:00:00'),(23,10,'TRANSFER','2011-09-21 14:25:00','2011-09-28 10:50:00','Files transferred to Mr Wright','some notes','CMT',5,'2011-11-30 08:00:00'),(24,4,'TRANSFER','2011-10-18 15:25:00','2011-10-19 14:30:00','Files transferred to Mr Wright','some notes','office',3,'2011-11-30 08:00:00'),(25,1,'TRANSFER','2011-10-17 11:25:00','2011-10-19 03:20:00','Files transferred to Mr Wright','some notes','office',7,'2011-11-30 08:00:00'),(26,7,'TRANSFER','2011-11-04 11:10:00','2011-11-07 05:20:00','Files transferred to Mr Wright','some notes','Research Office: Catherine',5,'2011-11-30 08:00:00'),(27,6,'TRANSFER','2011-11-18 08:10:00','2011-11-19 04:20:00','Files transferred to Mr Wright','some notes','CMT',3,'2011-11-30 08:00:00'),(28,2,'TRANSFER','2011-11-20 12:10:00','2011-11-23 01:25:00','Files transferred to Mr Wright','some notes','File given to: Dahlia',10,'2011-11-30 08:00:00'),(29,9,'TRANSFER','2011-11-14 10:40:00','2011-11-18 04:25:00','Files transferred to Mr Wright','some notes','Research Office: Catherine',1,'2011-11-30 08:00:00'),(30,3,'TRANSFER','2011-11-15 11:20:00','2011-11-16 06:25:00','Files transferred to Mr Wright','some notes','File given to: Dahlia',4,'2011-11-30 08:00:00');

UNLOCK TABLES;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
