
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




DROP TABLE IF EXISTS `alertsystem`.`role` ;

CREATE TABLE IF NOT EXISTS `alertsystem`.`role` (
  `roleId` INT NOT NULL AUTO_INCREMENT ,
  `roleName` VARCHAR(32) NOT NULL ,
  PRIMARY KEY (`roleId`) ,
  UNIQUE INDEX `roleName_UNIQUE` (`roleName` ASC) )
ENGINE = InnoDB DEFAULT CHARSET=utf8;


LOCK TABLES `alertsystem`.`role` WRITE;
INSERT INTO  `alertsystem`.`role` (`roleId` ,`roleName`)
VALUES (NULL ,  'Admin');
UNLOCK TABLES;


DROP TABLE IF EXISTS `alertsystem`.`user` ;

CREATE TABLE IF NOT EXISTS `alertsystem`.`user` (
  `userId` INT NOT NULL AUTO_INCREMENT ,
  `userName` VARCHAR(32) NOT NULL ,
  `password` VARCHAR(64) NOT NULL ,
  `email` VARCHAR(256) NULL ,
  `roleId` INT NOT NULL ,
  `firstName` VARCHAR(32) NULL ,
  `lastName` VARCHAR(32) NULL ,
  `flag` INT NULL DEFAULT 1 ,
  PRIMARY KEY (`userId`) ,
  INDEX `roleid_idx` (`roleId` ASC) ,
  UNIQUE INDEX `userName_UNIQUE` (`userName` ASC) ,
  CONSTRAINT `roleid`
    FOREIGN KEY (`roleId` )
    REFERENCES `alertsystem`.`role` (`roleId` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8;


LOCK TABLES `alertsystem`.`user` WRITE;
INSERT INTO  `alertsystem`.`user` (`userId` ,`userName` ,`password` ,`email` ,`roleId` ,`firstName` ,`lastName` ,`flag`)
VALUES (NULL ,  'Admin',  'e7517141fb53f21ee439b355b5a1d0a',  'tsrh.test@gmail.com',  '1',  'Admin',  'TSRH',  '1');
UNLOCK TABLES;
/* For TSRH login 'Admin' login has the  password 'Admin@123'
The password for the email tsrh.test@gmail.com(which is the admin email id) is "admin_tsrh"*/



DROP TABLE IF EXISTS `patientrecord`;

CREATE TABLE IF NOT EXISTS `patientrecord` (
  `patientid` varchar(10) DEFAULT NULL,
  `lastname` varchar(25) DEFAULT NULL,
  `firstname` varchar(25) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `phonenumber` varchar(25) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mothersname` varchar(25) DEFAULT NULL,
  `photolink` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`patientid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



LOCK TABLES `patientrecord` WRITE;
UNLOCK TABLES;



DROP TABLE IF EXISTS `alert`;

CREATE TABLE IF NOT EXISTS `alert` (
  `alertId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alertCreatedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `alertTime` timestamp NULL DEFAULT NULL,
  `alertCreatedBy` varchar(50) NOT NULL,
  `userId` varchar(50) NOT NULL,
  `alertText` varchar(500) NOT NULL,
  `alertSourceType` int(11) DEFAULT NULL,
  `alertSourceId` varchar(50) NOT NULL,
  `alertState` varchar(50) NOT NULL,
  `repeating` tinyint(4) DEFAULT '0',
  `repeat_frequency` int(10) unsigned DEFAULT '0',
  `severity` tinyint(3) unsigned DEFAULT '3',
  PRIMARY KEY (`alertId`),
  KEY `idx_fk_userId` (`userId`),
  CONSTRAINT `fk_userId` FOREIGN KEY (`userId`) REFERENCES `user` (`userName`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



LOCK TABLES `alert` WRITE;
UNLOCK TABLES;



DROP TABLE IF EXISTS `alertarchive`;

CREATE TABLE IF NOT EXISTS `alertarchive` (
  `alertArchiveId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alertId` int(10) unsigned DEFAULT NULL,
  `alertCreatedTime` timestamp NULL DEFAULT NULL,
  `alertTime` timestamp NULL DEFAULT NULL,
  `alertArchivedTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `alertCreatedBy` varchar(50) DEFAULT NULL,
  `userId` varchar(50) DEFAULT NULL,
  `alertText` varchar(500) DEFAULT NULL,
  `alertSourceType` int(11) DEFAULT NULL,
  `alertSourceId` varchar(50) DEFAULT NULL,
  `alertState` varchar(50) DEFAULT NULL,
  `repeating` tinyint(4) DEFAULT NULL,
  `repeat_frequency` int(10) unsigned DEFAULT NULL,
  `severity` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`alertArchiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



LOCK TABLES `alertarchive` WRITE;
UNLOCK TABLES;



DROP TABLE IF EXISTS `alerthistory`;

CREATE TABLE IF NOT EXISTS `alerthistory` (
  `alertHistoryId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alertId` int(10) unsigned NOT NULL,
  `alertUpdateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `alertUpdateType` varchar(50) NOT NULL,
  `alertRemark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`alertHistoryId`),
  KEY `idx_fk_alertId` (`alertId`),
  CONSTRAINT `fk_alertId` FOREIGN KEY (`alertId`) REFERENCES `alert` (`alertId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



LOCK TABLES `alerthistory` WRITE;
UNLOCK TABLES;



DROP TABLE IF EXISTS `alerthistoryarchive`;

CREATE TABLE IF NOT EXISTS `alerthistoryarchive` (
  `alertHistoryArchiveId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alertHistoryId` int(10) unsigned DEFAULT NULL,
  `alertId` int(10) unsigned DEFAULT NULL,
  `alertUpdateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `alertUpdateType` varchar(50) DEFAULT NULL,
  `alertRemark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`alertHistoryArchiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



LOCK TABLES `alerthistoryarchive` WRITE;
UNLOCK TABLES;



DROP TABLE IF EXISTS `consultation_record`;

CREATE TABLE IF NOT EXISTS `consultation_record` (
  `consultationid` int(11) NOT NULL AUTO_INCREMENT,
  `patientid_consultation` varchar(10) DEFAULT NULL,
  `dateofconsultation` date DEFAULT NULL,
  `whomconsulted` varchar(50) DEFAULT NULL,
  `consultedfor` varchar(50) DEFAULT NULL,
  `prescription` varchar(50) DEFAULT NULL,
  `consultationcomments` varchar(150) DEFAULT NULL,
  `userid` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`consultationid`),
  KEY `patientid_consultation` (`patientid_consultation`),
  CONSTRAINT `consultation_record_ibfk_1` FOREIGN KEY (`patientid_consultation`) REFERENCES `patientrecord` (`patientid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



LOCK TABLES `consultation_record` WRITE;
UNLOCK TABLES;


DROP TABLE IF EXISTS `pending_dates`;

CREATE TABLE IF NOT EXISTS `pending_dates` (
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



LOCK TABLES `pending_dates` WRITE;
UNLOCK TABLES;




DROP TABLE IF EXISTS `physical_file`;

CREATE TABLE IF NOT EXISTS `physical_file` (
  `location` varchar(100) NOT NULL,
  `file_state` varchar(50) NOT NULL,
  `file_id` varchar(10) NOT NULL,
  `created_date` datetime NOT NULL,
    PRIMARY KEY `file_id` (`file_id`),
   CONSTRAINT `physical_file_record_ibfk_1` FOREIGN KEY (`file_id`) REFERENCES `patientrecord`(`patientid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



LOCK TABLES `physical_file` WRITE;
UNLOCK TABLES;



DROP TABLE IF EXISTS `test_request_record`;

   CREATE TABLE IF NOT EXISTS `test_request_record` (
  `testrequestid` int(11) NOT NULL AUTO_INCREMENT,
  `patientid_testrequest` varchar(10) DEFAULT NULL,
  `testname` varchar(50) DEFAULT NULL,
  `testrequestername` varchar(50) DEFAULT NULL,
  `testrequestdate` date DEFAULT NULL,
  `expectedresultdate` date DEFAULT NULL,
  `stafftobeinformed` varchar(250) DEFAULT NULL,
  `datetoinformstaff` date DEFAULT NULL,
  `otherstobeinformed` varchar(250) DEFAULT NULL,
  `datetoinformothers` date DEFAULT NULL,
  `comments` varchar(150) DEFAULT NULL,
  `userid` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`testrequestid`),
  KEY `patientid_testrequest` (`patientid_testrequest`),
  CONSTRAINT `test_request_record_ibfk_1` FOREIGN KEY (`patientid_testrequest`) REFERENCES `patientrecord` (`patientid`)
) ENGINE=InnoDB   DEFAULT CHARSET=latin1;



LOCK TABLES `test_request_record` WRITE;
UNLOCK TABLES;



DROP TABLE IF EXISTS `test_result_record`;

CREATE TABLE IF NOT EXISTS `test_result_record` (
  `testresultid` int(11) NOT NULL AUTO_INCREMENT,
  `test_result_requestid` int(11) DEFAULT NULL,
  `testtakendate` date DEFAULT NULL,
  `resultdate` date DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  `resultfilepath` varchar(50) DEFAULT NULL,
  `stafftobeinformed` varchar(250) DEFAULT NULL,
  `datetoinformstaff` date DEFAULT NULL,
  `otherstobeinformed` varchar(250) DEFAULT NULL,
  `datetoinformothers` date DEFAULT NULL,
  `comments` varchar(150) DEFAULT NULL,
  `userid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`testresultid`),
  KEY `test_result_requestid` (`test_result_requestid`),
  CONSTRAINT `test_result_record_ibfk_1` FOREIGN KEY (`test_result_requestid`) REFERENCES `test_request_record` (`testrequestid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



LOCK TABLES `test_result_record` WRITE;
UNLOCK TABLES;



DROP TABLE IF EXISTS `transactions`;

CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `time` datetime NOT NULL,
  `return_date` datetime DEFAULT NULL,
  `reason` varchar(300) DEFAULT NULL,
  `notes` varchar(300) DEFAULT NULL,
  `location` varchar(300) NOT NULL,
  `file_id` varchar(10) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



LOCK TABLES `transactions` WRITE;
UNLOCK TABLES;


DROP TABLE IF EXISTS `alertsystem`.`resources`;

CREATE TABLE IF NOT EXISTS `alertsystem`.`resources` (
  `resourceId` INT NOT NULL AUTO_INCREMENT ,
  `resourceName` VARCHAR(128) NOT NULL ,
  `resourceURL` VARCHAR(512) NOT NULL ,
  PRIMARY KEY (`resourceId`) ,
  UNIQUE INDEX `resourceName_UNIQUE` (`resourceName` ASC) )
ENGINE = InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `resources` */

LOCK TABLES `alertsystem`.`resources` WRITE;
INSERT INTO `resources` (`resourceId`, `resourceName`, `resourceURL`) VALUES
(1, 'Reports', 'ReportSelection.jsp'),
(2, 'Consult', 'consult.jsp'),
(3, 'File Tracking', 'FileTracking'),
(4, 'Set Alert', 'notification.jsp'),
(5, 'Phone Record', 'phone.jsp'),
(6, 'Patient Management', 'PatientManagement'),
(9, 'Tests', 'test.jsp');

UNLOCK TABLES;


DROP TABLE IF EXISTS `alertsystem`.`roleresourcerights` ;

CREATE  TABLE IF NOT EXISTS `alertsystem`.`roleresourcerights` (
  `roleId` INT NOT NULL ,
  `resourceId` INT NOT NULL ,
  `readEdit` INT NOT NULL ,
  INDEX `roleId_idx` (`roleId` ASC) ,
  INDEX `resourceId_idx` (`resourceId` ASC) ,
  CONSTRAINT `fk_roleId`
    FOREIGN KEY (`roleId` )
    REFERENCES `alertsystem`.`role` (`roleId` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_resourceId`
    FOREIGN KEY (`resourceId` )
    REFERENCES `alertsystem`.`resources` (`resourceId` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `roleResourceRights` */
LOCK TABLES `alertsystem`.`roleresourcerights` WRITE;
INSERT INTO `alertsystem`.`roleresourcerights` (`roleId`, `resourceId`, `readEdit`) 
VALUES ('1', '1', '-1');
UNLOCK TABLES;

DROP TABLE IF EXISTS `PatientNote` ;

CREATE TABLE IF NOT EXISTS `PatientNote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patientId` varchar(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(50) NOT NULL,
  `source` varchar(255) NOT NULL,
  `content` varchar(5000) NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;






CREATE TABLE IF NOT EXISTS `phone_conversation` (
  `pcID` int(11) NOT NULL AUTO_INCREMENT,
  `patientid` int(11) DEFAULT NULL,
  `caller` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `conversation` longtext,
  `creation_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` datetime DEFAULT NULL,
  PRIMARY KEY (`pcID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;





delimiter $$

CREATE TABLE IF NOT EXISTS `phone_conversation_archive` (
  `arch_pcID` int(11) NOT NULL,
  `patientid` int(11) DEFAULT NULL,
  `caller` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `conversation` longtext,
  `creation_time` datetime DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `archived` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`arch_pcID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8$$


CREATE TABLE IF NOT EXISTS `PatientPhoneCall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patientId` varchar(10) NOT NULL,
  `title` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `caller` varchar(60) NOT NULL,
  `sourceNumber` varchar(18) NOT NULL,
  `content` varchar(5000) NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

