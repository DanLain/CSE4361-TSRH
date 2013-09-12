-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2012 at 07:07 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `alertsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `alert`
--

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
  KEY `userId` (`userId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `alert`
--

INSERT INTO `alert` (`alertId`, `alertCreatedTime`, `alertTime`, `alertCreatedBy`, `userId`, `alertText`, `alertSourceType`, `alertSourceId`, `alertState`, `repeating`, `repeat_frequency`, `severity`) VALUES
(15, '2012-11-11 22:23:54', '2012-12-11 06:11:00', 'sreeharsha', 'steve', 'asfg', 0, 'asdf', 'Set', 0, 1, 3),
(21, '2012-11-11 23:02:26', '2013-01-14 06:02:00', 'steve', 'sreeharsha', 'asdfa', 0, 'saldghf', 'Set', 0, 1, 3),
(23, '2012-11-11 23:14:15', '2012-12-25 06:00:00', 'steve', 'sreeharsha', 'Test with date format', 0, 'test with date format', 'Set', 0, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `alertarchive`
--

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
) ENGINE=ARCHIVE DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `alertarchive`
--

INSERT INTO `alertarchive` (`alertArchiveId`, `alertId`, `alertCreatedTime`, `alertTime`, `alertArchivedTime`, `alertCreatedBy`, `userId`, `alertText`, `alertSourceType`, `alertSourceId`, `alertState`, `repeating`, `repeat_frequency`, `severity`) VALUES
(1, 13, '2012-11-11 21:57:03', '2012-01-20 06:11:00', '2012-11-11 22:51:04', 'steve', 'sreeharsha', 'This is to test if the message box accepts huge amount of text or not. I guess the text written is good enough to test the alert', 0, 'test alert 4', 'Set', 0, 1, 3),
(2, 14, '2012-11-11 22:23:05', '2012-01-29 06:11:00', '2012-11-11 22:51:09', 'sreeharsha', 'steve', 'test steve', 0, 'test time', 'Set', 0, 1, 3),
(3, 16, '2012-11-11 22:39:27', '2012-01-07 06:12:00', '2012-11-11 22:51:12', 'sreeharsha', 'steve', 'asgasdg', 0, 'test alert 4b', 'Set', 0, 1, 3),
(4, 17, '2012-11-11 22:42:16', '2012-01-19 06:11:00', '2012-11-11 22:51:15', 'steve', 'sreeharsha', 'ttttttttttttt', 0, 'ttttttttt', 'Set', 0, 1, 3),
(5, 18, '2012-11-11 22:55:01', '2012-01-29 06:11:00', '2012-11-11 22:55:21', 'steve', 'sreeharsha', 'test alert to sree', 0, 'test alert', 'Set', 0, 1, 3),
(6, 19, '2012-11-11 22:58:30', '2012-01-25 06:12:00', '2012-11-11 22:59:24', 'steve', 'sreeharsha', 'tqwret', 0, 'test', 'Set', 0, 1, 3),
(7, 20, '2012-11-11 23:00:58', '2012-01-25 06:12:00', '2012-11-11 23:01:20', 'steve', 'sreeharsha', 'asdfasdf', 0, 'asdf', 'Set', 0, 1, 3),
(8, 22, '2012-11-11 23:06:36', '2012-01-25 06:12:00', '2012-11-11 23:06:40', 'steve', 'sreeharsha', 'asdffffffffff', 0, 'afasasdfasdf', 'Set', 0, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `alerthistory`
--

CREATE TABLE IF NOT EXISTS `alerthistory` (
  `alertHistoryId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alertId` int(10) unsigned NOT NULL,
  `alertUpdateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `alertUpdateType` varchar(50) NOT NULL,
  `alertRemark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`alertHistoryId`),
  KEY `idx_fk_alertId` (`alertId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `alerthistory`
--

INSERT INTO `alerthistory` (`alertHistoryId`, `alertId`, `alertUpdateTime`, `alertUpdateType`, `alertRemark`) VALUES
(2, 6, '2012-11-10 01:55:01', 'steve', 'test Remark1'),
(3, 7, '2012-11-11 06:12:51', 'steve', ''),
(4, 9, '2012-11-11 06:12:58', 'steve', ''),
(5, 9, '2012-11-11 06:13:06', 'steve', ''),
(6, 9, '2012-11-11 06:32:18', 'steve', 'klxjvhsdj'),
(7, 6, '2012-11-11 07:11:29', 'steve', '');

-- --------------------------------------------------------

--
-- Table structure for table `alerthistoryarchive`
--

CREATE TABLE IF NOT EXISTS `alerthistoryarchive` (
  `alertHistoryArchiveId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alertHistoryId` int(10) unsigned DEFAULT NULL,
  `alertId` int(10) unsigned DEFAULT NULL,
  `alertUpdateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `alertUpdateType` varchar(50) DEFAULT NULL,
  `alertRemark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`alertHistoryArchiveId`)
) ENGINE=ARCHIVE  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `alerthistoryarchive`
--

INSERT INTO `alerthistoryarchive` (`alertHistoryArchiveId`, `alertHistoryId`, `alertId`, `alertUpdateTime`, `alertUpdateType`, `alertRemark`) VALUES
(3, 1, 5, '2012-11-10 01:17:18', 'sreeharsha', 'test remark'),
(4, 10, 5, '2012-11-11 20:37:03', 'sreeharsha', '');

-- --------------------------------------------------------

--
-- Table structure for table `consultation_record`
--

CREATE TABLE IF NOT EXISTS `consultation_record` (
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
  KEY `patientid_consultation` (`patientid_consultation`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `consultation_record`
--

INSERT INTO `consultation_record` (`consultationid`, `patientid_consultation`, `dateofconsultation`, `whomconsulted`, `consultedfor`, `prescription`, `consultationremindernote`, `consultationreminderdate`, `consultationcomments`, `userid`) VALUES
(1, 1, '2012-10-10', 'doctor.D', 'Patient ', 'good', 'reminder', '2012-12-12', 'commented', 'u');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `first_name`, `last_name`, `designation`, `created_date`) VALUES
(1, 'Abraham', 'Vert', 'Office Assistant', '2011-11-30 08:00:00'),
(2, 'William', 'Jones', 'Doctor', '2011-11-30 08:00:00'),
(3, 'Anthony', 'Marc', 'Nurse', '2011-11-30 08:00:00'),
(4, 'Matt', 'Wright', 'Doctor', '2011-11-30 08:00:00'),
(5, 'Alex', 'Huber', 'Nurse', '2011-11-30 08:00:00'),
(6, 'William', 'Losh', 'Research Assistant', '2011-11-30 08:00:00'),
(7, 'Ric', 'Anderson', 'Doctor', '2011-11-30 08:00:00'),
(8, 'Nathan', 'Johnson', 'Office Assistant', '2011-11-30 08:00:00'),
(9, 'Kaylee', 'Morris', 'Nurse', '2011-11-30 08:00:00'),
(10, 'Emily', 'johnson', 'Doctor', '2011-11-30 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `first_name`, `last_name`, `dob`, `created_date`) VALUES
(1, 'Ruby', 'Simpson', '2000-07-05', '2011-11-30 08:00:00'),
(2, 'Jean', 'Melton', '1998-06-05', '2011-11-30 08:00:00'),
(3, 'Matthew', 'Murphy', '2005-02-16', '2011-11-30 08:00:00'),
(4, 'William', 'David', '2006-11-25', '2011-11-30 08:00:00'),
(5, 'Kapil', 'Vyas', '1988-10-26', '2011-11-30 08:00:00'),
(6, 'Dony', 'Dwight', '1992-12-21', '2011-11-30 08:00:00'),
(7, 'James', 'Spargo', '1999-01-20', '2011-11-30 08:00:00'),
(8, 'John', 'Samuel', '1982-03-26', '2011-11-30 08:00:00'),
(9, 'Daniel', 'Thompson', '2004-05-22', '2011-11-30 08:00:00'),
(10, 'Jane', 'Victoria', '2003-06-21', '2011-11-30 08:00:00'),
(11, 'John', 'David', '2000-05-21', '2011-11-30 08:00:00'),
(12, 'James', 'Gosling', '1998-09-13', '2011-11-30 08:00:00'),
(13, 'Rudyard', 'Frost', '2005-04-18', '2011-11-30 08:00:00'),
(14, 'John', 'Wesley', '2000-07-11', '2011-11-30 08:00:00'),
(15, 'Ashley', 'David', '2004-12-25', '2011-11-30 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `patientnote`
--

CREATE TABLE IF NOT EXISTS `patientnote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patientId` varchar(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(50) NOT NULL,
  `source` varchar(255) NOT NULL,
  `content` varchar(5000) NOT NULL,
  `hidden` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `patientnote`
--

INSERT INTO `patientnote` (`id`, `patientId`, `date`, `title`, `source`, `content`, `hidden`) VALUES
(1, 'null', '2012-04-02 09:50:20', '', '', '', 0),
(2, 'JS1', '2012-04-02 09:51:02', 'New Note', 'my instinct', 'The force is strong in this one.', 1),
(3, 'JS1', '2012-04-02 10:17:49', 'New Note #2', 'loling cakes', 'I like grass', 1),
(4, 'JS1', '2012-04-02 19:56:50', 'New Note #3', 'Source', 'Comment on the space-time continuum', 1),
(5, 'JS1', '2012-04-03 02:31:36', 'New Note to delete', 'testing', 'testing', 1),
(6, 'JS1', '2012-04-03 02:51:43', 'I edited this note', 'source', 'Fun with notes. New Stuff. This note has been edited.', 1),
(7, 'JS1', '2012-04-03 02:52:09', '', '', '', 1),
(8, 'JS1', '2012-04-03 03:01:22', '1', '1', '1', 1),
(9, 'JS1', '2012-04-03 04:16:31', '3', '4', '5', 1),
(10, '', '2012-04-03 05:49:02', 'Title', 'Source', 'Content', 0),
(11, '', '2012-04-03 05:59:53', 'Title', 'Source', 'Content', 0),
(12, '', '2012-04-03 06:01:54', 'Title', 'Source', 'Content', 0),
(13, '', '2012-04-03 06:06:12', 'Title', 'Source', 'Content', 0),
(14, '', '2012-04-03 06:15:56', 'New Title', 'Source', 'New Content', 0),
(15, '', '2012-04-03 06:25:46', 'Title', 'Source', 'Content', 0),
(16, '', '2012-04-03 06:26:58', 'Title', 'Source', 'Content', 0),
(17, '', '2012-04-03 06:35:03', 'Title', 'Source', 'Content', 0),
(18, 'JS1', '2012-04-03 06:08:22', 'Team 1 Note', 'Rebeka', 'The patient is responding well to treatment.', 0),
(19, '', '2012-04-03 06:41:23', 'Title', 'Source', 'Content', 0),
(20, '', '2012-04-03 06:53:26', 'Title', 'Source', 'Content', 0),
(21, '', '2012-04-03 06:55:02', 'Title', 'Source', 'Content', 0),
(22, '', '2012-04-03 06:57:12', 'Title', 'Source', 'Content', 0),
(23, '', '2012-04-03 07:17:45', 'Title', 'Source', 'Content', 0),
(24, '', '2012-04-03 07:20:57', 'Title', 'Source', 'Content', 0),
(25, 'JS1', '2012-04-11 01:29:14', 'New Note Thing', 'My head', 'This is a new note.', 0),
(26, 'JS1', '2012-04-11 02:11:33', 'This is a new note I just edited.', 'This is the source', 'Content of edited note', 1),
(27, '', '2012-04-24 19:37:32', 'Title', 'Source', 'Content', 0),
(28, 'JS1', '2012-04-24 20:24:32', 'aeou', 'aeou', 'aoeu', 1),
(29, 'JS1', '2012-04-24 20:26:06', 'Testing', 'test again', 'testing', 1),
(30, 'JS1', '2012-04-24 20:26:13', '', '', '', 1),
(31, 'JS1', '2012-04-24 20:27:09', 'oeu', 'aoeu', 'aoeu', 1),
(32, 'JS1', '2012-04-24 20:27:09', 'oeu', 'aoeu', 'aoeu', 1),
(33, 'JS1', '2012-04-24 20:31:50', 'Stupidness', 'aoe', 'aoeu', 1),
(34, 'JS1', '2012-04-24 20:33:10', 'Add another', 'aeo', 'aoeu', 1),
(35, 'JS1', '2012-04-25 01:06:06', 'New Note', 'Source', 'content', 1),
(36, '', '2012-05-01 17:54:30', 'Title', 'Source', 'Content', 0),
(37, '', '2012-05-01 17:57:20', 'Title', 'Source', 'Content', 0),
(38, '', '2012-05-01 18:31:11', 'Title', 'Source', 'Content', 0),
(39, '', '2012-05-01 18:33:59', 'Title', 'Source', 'Content', 0);

-- --------------------------------------------------------

--
-- Table structure for table `patientphonecall`
--

CREATE TABLE IF NOT EXISTS `patientphonecall` (
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

--
-- Dumping data for table `patientphonecall`
--

INSERT INTO `patientphonecall` (`id`, `patientId`, `title`, `date`, `caller`, `sourceNumber`, `content`, `hidden`) VALUES
(1, 'JS1', 'New Phone Call', '2012-04-02 10:54:11', 'Mrs. Smith', '839-333-2833', 'Testing', 0),
(18, 'JS1', 'Title', '0000-00-00 00:00:00', 'Caller', 'SourceNumber', 'Content', 0),
(17, 'JS1', 'Title', '0000-00-00 00:00:00', 'Caller', 'SourceNumber', 'Content', 0),
(16, 'JS1', 'Title', '0000-00-00 00:00:00', 'Caller', 'SourceNumber', 'Content', 0),
(15, 'JS1', 'Title', '0000-00-00 00:00:00', 'Caller', 'SourceNumber', 'Content', 0),
(14, 'JS1', 'Title', '0000-00-00 00:00:00', 'Caller', 'SourceNumber', 'Content', 0);

-- --------------------------------------------------------

--
-- Table structure for table `patientrecord`
--

CREATE TABLE IF NOT EXISTS `patientrecord` (
  `patientid` int(11) NOT NULL AUTO_INCREMENT,
  `lastname` varchar(25) DEFAULT NULL,
  `firstname` varchar(25) DEFAULT NULL,
  `dateofbirth` date DEFAULT NULL,
  `phonenumber` varchar(25) DEFAULT NULL,
  `address` varchar(25) DEFAULT NULL,
  `mothersname` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`patientid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `patientrecord`
--

INSERT INTO `patientrecord` (`patientid`, `lastname`, `firstname`, `dateofbirth`, `phonenumber`, `address`, `mothersname`) VALUES
(1, 'last', 'first', '1990-01-10', '222222222', 'address', 'mother');

-- --------------------------------------------------------

--
-- Table structure for table `pending_dates`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `pending_dates`
--

INSERT INTO `pending_dates` (`id`, `pending_date`, `employee_id`, `pending_location`, `reason`, `notes`, `file_id`, `created_date`) VALUES
(1, '2011-12-02 04:20:00', 4, 'office', 'Blood Test', 'some notes', 3, '2011-11-30 08:00:00'),
(2, '2011-12-02 05:40:00', 3, 'CMT', 'Allergic treatment', 'some notes', 2, '2011-11-30 08:00:00'),
(3, '2011-12-02 06:20:00', 10, 'SALNE-D', 'Take care of billing', 'some notes', 3, '2011-11-30 08:00:00'),
(4, '2011-12-18 15:20:00', 1, 'CMT', 'Lab1', 'some notes', 1, '2011-11-30 08:00:00'),
(5, '2011-12-10 18:20:00', 9, 'SALNE-R', 'Lab107', 'some notes', 5, '2011-11-30 08:00:00'),
(6, '2011-12-07 16:25:00', 8, 'CMT', 'Theater21', 'some notes', 4, '2011-11-30 08:00:00'),
(7, '2011-12-13 17:25:00', 3, 'SALNE-D', 'Doctor Delgado needs to see urgently', 'some notes', 7, '2011-11-30 08:00:00'),
(8, '2011-12-22 18:20:00', 8, 'CMT', 'Test blood again', 'some notes', 8, '2011-11-30 08:00:00'),
(9, '2011-12-14 19:25:00', 5, 'SALNE-R', 'Brain exception error', 'some notes', 9, '2011-11-30 08:00:00'),
(10, '2011-12-15 14:25:00', 3, 'office', 'MRI followup', 'some notes', 6, '2011-11-30 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `physical_file`
--

CREATE TABLE IF NOT EXISTS `physical_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(100) NOT NULL,
  `file_state` varchar(50) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `physical_file`
--

INSERT INTO `physical_file` (`id`, `location`, `file_state`, `patient_id`, `created_date`) VALUES
(1, 'Office', 'IN', 2, '2011-11-30 08:00:00'),
(2, 'CMT', 'IN', 1, '2011-11-30 08:00:00'),
(3, 'Research Office: Catherine', 'IN', 4, '2011-11-30 08:00:00'),
(4, 'File given to: Dahlia', 'IN', 3, '2011-11-30 08:00:00'),
(5, 'MC', 'IN', 6, '2011-11-30 08:00:00'),
(6, 'Neupa', 'OUT', 5, '2011-11-30 08:00:00'),
(7, 'TSNE', 'OUT', 8, '2011-11-30 08:00:00'),
(8, 'BRNNE', 'IN', 9, '2011-11-30 08:00:00'),
(9, 'SALNE-R', 'IN', 7, '2011-11-30 08:00:00'),
(10, 'SALNE-D', 'OUT', 11, '2011-11-30 08:00:00'),
(11, 'Alpha', 'IN', 14, '2011-11-30 08:00:00'),
(12, 'Pending', 'IN', 13, '2011-11-30 08:00:00'),
(13, 'Alpha', 'IN', 12, '2011-11-30 08:00:00'),
(14, 'Discharged-TS', 'IN', 10, '2011-11-30 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE IF NOT EXISTS `resources` (
  `resourceId` int(11) NOT NULL AUTO_INCREMENT,
  `resourceName` varchar(128) NOT NULL,
  `resourceURL` varchar(512) NOT NULL,
  PRIMARY KEY (`resourceId`),
  UNIQUE KEY `resourceName_UNIQUE` (`resourceName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`resourceId`, `resourceName`, `resourceURL`) VALUES
(1, 'Reports', 'ReportSelection.jsp'),
(2, 'Consult', 'consult.jsp'),
(3, 'File Tracking', 'FileTracking'),
(4, 'Set Alert', 'notification.jsp'),
(5, 'Phone Record', 'phone.jsp'),
(6, 'Patient Search', 'PatientSearch'),
(9, 'Tests', 'test.jsp');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(32) NOT NULL,
  PRIMARY KEY (`roleId`),
  UNIQUE KEY `roleName_UNIQUE` (`roleName`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`roleId`, `roleName`) VALUES
(1, 'Doctor');

-- --------------------------------------------------------

--
-- Table structure for table `roleresourcerights`
--

CREATE TABLE IF NOT EXISTS `roleresourcerights` (
  `roleId` int(11) NOT NULL,
  `resourceId` int(11) NOT NULL,
  `readEdit` int(11) NOT NULL,
  KEY `roleId_idx` (`roleId`),
  KEY `resourceId_idx` (`resourceId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roleresourcerights`
--

INSERT INTO `roleresourcerights` (`roleId`, `resourceId`, `readEdit`) VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(1, 6, 0),
(1, 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `test_request_record`
--

CREATE TABLE IF NOT EXISTS `test_request_record` (
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
  KEY `patientid_testrequest` (`patientid_testrequest`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `test_request_record`
--

INSERT INTO `test_request_record` (`testrequestid`, `patientid_testrequest`, `testname`, `testrequestername`, `testrequestdate`, `expectedresultdate`, `expectedresult`, `istesttaken`, `istestresultsubmitted`, `remindernote`, `reminderdate`, `comments`, `userid`) VALUES
(1, 1, 'sampletest', 'sampletestrequest', '2011-01-01', '2011-02-02', 'normal', 'yes', 'yes', 'remind', '2011-02-02', 'nione', 'user1'),
(2, 1, ' Test1', 'tes ', '2011-12-30', '2011-12-13', 'yes', 'no', 'no', 'remind', '2012-01-01', 'comment', 'user1');

-- --------------------------------------------------------

--
-- Table structure for table `test_result_record`
--

CREATE TABLE IF NOT EXISTS `test_result_record` (
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
  KEY `test_result_requestid` (`test_result_requestid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `employee_id`, `type`, `time`, `return_date`, `reason`, `notes`, `location`, `file_id`, `created_date`) VALUES
(1, 5, 'CHECK-OUT', '2011-09-12 10:20:00', '2011-09-17 09:20:00', 'Consultation to John', 'some notes', 'office', 3, '2011-11-30 08:00:00'),
(2, 6, 'CHECK-OUT', '2011-09-12 02:10:00', '2011-09-18 07:20:00', 'For Lab', 'some notes', 'Research Office: Catherine', 9, '2011-11-30 08:00:00'),
(3, 4, 'CHECK-OUT', '2011-09-12 09:50:00', '2011-09-28 10:50:00', 'Taken to Mrs Emily Johnson', 'some notes', 'File given to: Dahlia', 5, '2011-11-30 08:00:00'),
(4, 9, 'CHECK-OUT', '2011-10-12 11:20:00', '2011-10-19 14:30:00', 'Transferred to Mr William Jones', 'some notes', 'office', 3, '2011-11-30 08:00:00'),
(5, 1, 'CHECK-OUT', '2011-10-12 02:10:00', '2011-10-19 03:20:00', 'Awaiting Lab Results', 'some notes', 'CMT', 7, '2011-11-30 08:00:00'),
(6, 2, 'CHECK-OUT', '2011-11-01 08:35:00', '2011-11-07 05:20:00', 'Allergic information', 'some notes', 'office', 5, '2011-11-30 08:00:00'),
(7, 3, 'CHECK-OUT', '2011-11-16 12:30:00', '2011-11-19 04:20:00', 'Awaiting Results from William Jones', 'some notes', 'Research Office: Catherine', 3, '2011-11-30 08:00:00'),
(8, 8, 'CHECK-OUT', '2011-11-19 06:45:00', '2011-11-23 01:25:00', 'Should meet Mr Matt Wright', 'some notes', 'CMT', 10, '2011-11-30 08:00:00'),
(9, 7, 'CHECK-OUT', '2011-11-12 01:20:00', '2011-11-18 04:25:00', 'Allergic to Caffeine', 'some notes', 'File given to: Dahlia', 1, '2011-11-30 08:00:00'),
(10, 10, 'CHECK-OUT', '2011-11-13 02:05:00', '2011-11-16 06:25:00', 'Consultation to Ric Anderson', 'some notes', 'Research Office: Catherine', 4, '2011-11-30 08:00:00'),
(11, 5, 'CHECK-IN', '2011-09-17 09:20:00', NULL, NULL, NULL, 'Alpha', 3, '2011-11-30 08:00:00'),
(12, 8, 'CHECK-IN', '2011-09-18 07:20:00', NULL, NULL, NULL, 'Pending', 9, '2011-11-30 08:00:00'),
(13, 10, 'CHECK-IN', '2011-09-28 10:50:00', NULL, NULL, NULL, 'Discharged-TS', 5, '2011-11-30 08:00:00'),
(14, 4, 'CHECK-IN', '2011-10-19 14:30:00', NULL, NULL, NULL, 'Alpha', 3, '2011-11-30 08:00:00'),
(15, 1, 'CHECK-IN', '2011-10-19 03:20:00', NULL, NULL, NULL, 'Pending', 7, '2011-11-30 08:00:00'),
(16, 7, 'CHECK-IN', '2011-11-07 05:20:00', NULL, NULL, NULL, 'Pending', 5, '2011-11-30 08:00:00'),
(17, 6, 'CHECK-IN', '2011-11-19 04:20:00', NULL, NULL, NULL, 'Discharged-TS', 3, '2011-11-30 08:00:00'),
(18, 2, 'CHECK-IN', '2011-11-23 01:25:00', NULL, NULL, NULL, 'Alpha', 10, '2011-11-30 08:00:00'),
(19, 9, 'CHECK-IN', '2011-11-18 04:25:00', NULL, NULL, NULL, 'Pending', 1, '2011-11-30 08:00:00'),
(20, 3, 'CHECK-IN', '2011-11-16 06:25:00', NULL, NULL, NULL, 'Alpha', 4, '2011-11-30 08:00:00'),
(21, 5, 'TRANSFER', '2011-09-15 09:20:00', '2011-09-17 09:20:00', 'Files transferred to nurse', 'some notes', 'office', 3, '2011-11-30 08:00:00'),
(22, 8, 'TRANSFER', '2011-09-15 13:25:00', '2011-09-18 07:20:00', 'Files transferred to Emily', 'some notes', 'CMT', 9, '2011-11-30 08:00:00'),
(23, 10, 'TRANSFER', '2011-09-21 14:25:00', '2011-09-28 10:50:00', 'Files transferred to Mr Wright', 'some notes', 'CMT', 5, '2011-11-30 08:00:00'),
(24, 4, 'TRANSFER', '2011-10-18 15:25:00', '2011-10-19 14:30:00', 'Files transferred to Mr Wright', 'some notes', 'office', 3, '2011-11-30 08:00:00'),
(25, 1, 'TRANSFER', '2011-10-17 11:25:00', '2011-10-19 03:20:00', 'Files transferred to Mr Wright', 'some notes', 'office', 7, '2011-11-30 08:00:00'),
(26, 7, 'TRANSFER', '2011-11-04 11:10:00', '2011-11-07 05:20:00', 'Files transferred to Mr Wright', 'some notes', 'Research Office: Catherine', 5, '2011-11-30 08:00:00'),
(27, 6, 'TRANSFER', '2011-11-18 08:10:00', '2011-11-19 04:20:00', 'Files transferred to Mr Wright', 'some notes', 'CMT', 3, '2011-11-30 08:00:00'),
(28, 2, 'TRANSFER', '2011-11-20 12:10:00', '2011-11-23 01:25:00', 'Files transferred to Mr Wright', 'some notes', 'File given to: Dahlia', 10, '2011-11-30 08:00:00'),
(29, 9, 'TRANSFER', '2011-11-14 10:40:00', '2011-11-18 04:25:00', 'Files transferred to Mr Wright', 'some notes', 'Research Office: Catherine', 1, '2011-11-30 08:00:00'),
(30, 3, 'TRANSFER', '2011-11-15 11:20:00', '2011-11-16 06:25:00', 'Files transferred to Mr Wright', 'some notes', 'File given to: Dahlia', 4, '2011-11-30 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `email` varchar(256) DEFAULT NULL,
  `roleId` int(11) NOT NULL,
  `firstName` varchar(32) DEFAULT NULL,
  `lastName` varchar(32) DEFAULT NULL,
  `flag` int(11) DEFAULT '1',
  PRIMARY KEY (`userId`),
  UNIQUE KEY `userName_UNIQUE` (`userName`),
  KEY `roleid_idx` (`roleId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userId`, `userName`, `password`, `email`, `roleId`, `firstName`, `lastName`, `flag`) VALUES
(1, 'steve', 'c3a0f67a7398e2f4d1c4d04d655746ec', 'steve@mailme.com', 1, 'Steve', 'Warne', 0),
(2, 'sreeharsha', '6d1237f50f7e0fbb306a817f2095e57a', 'sree1988@gmail.com', 1, 'Sree', 'Reddy', 1),
(4, 'Admin', 'ba93ec756845738893248df54c15bcf7', 'sree1988@gmail.com', 1, 'Admin', 'Admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE IF NOT EXISTS `userinfo` (
  `userId` varchar(50) NOT NULL,
  `userName` varchar(45) NOT NULL,
  `emailId` varchar(45) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`userId`, `userName`, `emailId`) VALUES
('user1', 'user1', 'user1@email.com'),
('user2', 'user2', 'user2'),
('user3', 'user3', 'user3'),
('user4', 'user4', 'user4'),
('userId-1', 'userName-1', 'userMail-1@gmail.com');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alert`
--
ALTER TABLE `alert`
  ADD CONSTRAINT `alert_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userName`);

--
-- Constraints for table `consultation_record`
--
ALTER TABLE `consultation_record`
  ADD CONSTRAINT `consultation_record_ibfk_1` FOREIGN KEY (`patientid_consultation`) REFERENCES `patientrecord` (`patientid`);

--
-- Constraints for table `roleresourcerights`
--
ALTER TABLE `roleresourcerights`
  ADD CONSTRAINT `fk_resourceId` FOREIGN KEY (`resourceId`) REFERENCES `resources` (`resourceId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_roleId` FOREIGN KEY (`roleId`) REFERENCES `role` (`roleId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `test_request_record`
--
ALTER TABLE `test_request_record`
  ADD CONSTRAINT `test_request_record_ibfk_1` FOREIGN KEY (`patientid_testrequest`) REFERENCES `patientrecord` (`patientid`);

--
-- Constraints for table `test_result_record`
--
ALTER TABLE `test_result_record`
  ADD CONSTRAINT `test_result_record_ibfk_1` FOREIGN KEY (`test_result_requestid`) REFERENCES `test_request_record` (`testrequestid`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `roleid` FOREIGN KEY (`roleId`) REFERENCES `role` (`roleId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
