-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 27, 2025 at 11:38 AM
-- Server version: 5.6.51
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trainingcenter`
--
CREATE DATABASE IF NOT EXISTS `trainingcenter` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `trainingcenter`;

-- --------------------------------------------------------

--
-- Table structure for table `tblcourseattendance`
--

DROP TABLE IF EXISTS `tblcourseattendance`;
CREATE TABLE IF NOT EXISTS `tblcourseattendance` (
  `AttendanceID` smallint(6) NOT NULL DEFAULT '0',
  `CourseScheduleID` tinyint(4) DEFAULT NULL,
  `StudentID` smallint(6) DEFAULT NULL,
  `DeptCode` tinyint(4) DEFAULT NULL,
  `Notes` varchar(43) DEFAULT NULL,
  `DateRegistered` varchar(19) DEFAULT NULL,
  `Canceled` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`AttendanceID`),
  KEY `CourseScheduleID` (`CourseScheduleID`),
  KEY `StudentID` (`StudentID`),
  KEY `DeptCode` (`DeptCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcourseattendance`
--

INSERT INTO `tblcourseattendance` (`AttendanceID`, `CourseScheduleID`, `StudentID`, `DeptCode`, `Notes`, `DateRegistered`, `Canceled`) VALUES
(1173, 2, 1640, 5, '', '2001-03-30 00:00:00', 'False'),
(1174, 2, 3475, 10, 'Bumpable; possible conflict with meeting', '2001-03-31 00:00:00', 'True'),
(1175, 2, 4632, 1, '', '2001-03-31 00:00:00', 'False'),
(1176, 2, 4910, 11, '', '2001-04-01 00:00:00', 'False'),
(1177, 28, 4947, 15, '', '2001-04-01 00:00:00', 'False'),
(1178, 19, 4949, 1, '', '2001-04-01 00:00:00', 'False'),
(1179, 18, 4632, 1, '', '2001-04-01 00:00:00', 'False'),
(1180, 21, 4910, 11, '', '2001-04-01 00:00:00', 'False'),
(1181, 18, 4949, 1, 'Bumpable', '2001-04-01 00:00:00', 'False'),
(1182, 28, 4942, 2, '', '2001-04-01 00:00:00', 'False'),
(1183, 2, 4944, 5, '', '2001-04-02 00:00:00', 'False'),
(1184, 2, 3785, 3, '', '2001-04-02 00:00:00', 'False'),
(1185, 2, 4933, 10, '', '2001-04-02 00:00:00', 'False'),
(1186, 2, 4953, 11, '', '2001-04-02 00:00:00', 'False'),
(1187, 2, 5339, 12, '', '2001-04-02 00:00:00', 'False'),
(1188, 2, 5141, 4, 'May have to arrive 1hr late', '2001-04-02 00:00:00', 'False'),
(1189, 2, 5017, 6, '', '2001-04-02 00:00:00', 'False'),
(1190, 28, 3475, 10, '', '2001-04-05 00:00:00', 'False'),
(1191, 28, 4947, 15, 'May have to cancel due to possible conflict', '2001-04-05 00:00:00', 'True'),
(1192, 11, 4953, 11, '', '2001-04-05 00:00:00', 'False'),
(1193, 18, 5339, 12, '', '2001-04-05 00:00:00', 'False'),
(1194, 2, 4870, 8, '', '2001-04-05 00:00:00', 'False'),
(1195, 13, 5017, 6, '', '2001-04-05 00:00:00', 'False'),
(1196, 13, 3475, 10, '', '2001-04-05 00:00:00', 'False'),
(1197, 13, 4942, 2, '', '2001-04-05 00:00:00', 'False'),
(1198, 13, 4949, 1, '', '2001-04-06 00:00:00', 'False'),
(1199, 12, 1640, 5, '', '2001-04-06 00:00:00', 'False'),
(1200, 12, 5141, 4, '', '2001-04-06 00:00:00', 'False'),
(1201, 12, 4947, 15, '', '2001-04-06 00:00:00', 'False'),
(1202, 12, 4632, 1, '', '2001-04-06 00:00:00', 'False'),
(1203, 27, 3475, 10, '', '2001-04-06 00:00:00', 'False'),
(1204, 27, 4910, 11, '', '2001-04-07 00:00:00', 'False'),
(1205, 20, 4949, 1, '', '2001-04-07 00:00:00', 'False'),
(1206, 17, 4933, 10, '', '2001-04-07 00:00:00', 'False'),
(1207, 17, 5339, 12, '', '2001-04-07 00:00:00', 'False'),
(1209, 22, 4944, 1, '', '2001-02-22 00:00:00', 'False'),
(1210, 18, 4944, 10, '', '2001-02-22 00:00:00', 'False'),
(1211, 28, 4944, 10, '', '2001-02-26 00:00:00', 'False'),
(1213, 23, 4944, 10, '', '2001-02-26 00:00:00', 'False'),
(1214, 19, 4944, 10, '', '2001-02-26 00:00:00', 'False'),
(1218, 28, 1640, 10, '', '2001-02-27 00:00:00', 'False'),
(1219, 22, 5374, 10, '', '2001-08-11 00:00:00', 'False'),
(1220, 22, 4953, 10, '', '2001-04-03 00:00:00', 'False'),
(1221, 3, 4949, 10, '', '2001-04-03 00:00:00', 'False'),
(1222, 28, 4949, 10, '', '2001-04-03 00:00:00', 'False');

-- --------------------------------------------------------

--
-- Table structure for table `tblcourseinfo`
--

DROP TABLE IF EXISTS `tblcourseinfo`;
CREATE TABLE IF NOT EXISTS `tblcourseinfo` (
  `CourseCode` mediumint(9) NOT NULL DEFAULT '0',
  `FullName` varchar(45) DEFAULT NULL,
  `Abbrev` varchar(4) DEFAULT NULL,
  `TypeCode` varchar(3) DEFAULT NULL,
  `LevelCode` varchar(3) DEFAULT NULL,
  `Prerequisite` mediumint(9) DEFAULT NULL,
  `Description` varchar(149) DEFAULT NULL,
  `CostToDept` smallint(6) DEFAULT NULL,
  `Active` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`CourseCode`),
  KEY `Prerequisite` (`Prerequisite`),
  KEY `TypeCode` (`TypeCode`),
  KEY `LevelCode` (`LevelCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcourseinfo`
--

INSERT INTO `tblcourseinfo` (`CourseCode`, `FullName`, `Abbrev`, `TypeCode`, `LevelCode`, `Prerequisite`, `Description`, `CostToDept`, `Active`) VALUES
(200307, 'Introduction to the Membranophone', 'INMP', 'HST', 'I', NULL, 'Historical survey of membrane percussion instruments', 200, 'True'),
(200404, 'Introduction to the Chordophone', 'INCH', 'HST', 'I', NULL, 'Historical survey of stringed instruments', 200, 'True'),
(200587, 'Introduction to the Woodwinds', 'INWW', 'HST', 'I', NULL, '', 200, 'True'),
(200673, 'The Development of the Reed', 'DVRD', 'HST', 'II', 200587, 'Historical survey of reed design', 200, 'True'),
(200803, 'Introduction to the Brass Instruments', 'INBR', 'HST', 'I', NULL, '', 200, 'True'),
(390356, 'Making Sense of the Specs', 'UNSP', 'ETL', 'I', NULL, 'Employee-oriented interpretation of design specs', 200, 'True'),
(390482, 'When Your Peers Are Your Audience', 'WPYA', 'ETL', 'II', 390356, 'How best to communicate written technical information to company colleagues; the kinds of things they need to know', 300, 'True'),
(390630, 'Our Final Audience: Writing to the Customer', 'FAWC', 'CTL', 'II', 800359, 'How to present technical specs and products to the customer, including a frank discussion of how much is too much; for writers and editors', 300, 'True'),
(439010, 'Idiophone Design', 'IPDN', 'DSN', 'I', 200587, 'General study of design considerations', 250, 'True'),
(439016, 'Designing the Contemporary Woodwind', 'DCWW', 'DSN', 'II', 439010, 'Study of methods and materials of contemporary woodwind design', 300, 'True'),
(439305, 'Membranophone Design', 'MPDN', 'DSN', 'I', 200307, 'General study of design considerations', 200, 'True'),
(439421, 'Designing the Contemporary Chordophone', 'DSCC', 'DSN', 'II', 439662, 'Study of methods and materials of contemporary chordophone design', 300, 'True'),
(439662, 'Chordophone Design', 'CHDN', 'DSN', 'I', 200404, 'General study of design considerations', 200, 'True'),
(440879, 'Designing the Brass Instrument', 'DSBR', 'DSN', 'II', 439010, 'Study of methods and materials of brass-instrument design', 300, 'True'),
(441588, 'Acoustic Chordophone Assembly', 'ACCA', 'CLS', 'II', 439421, 'Study of tools, techniques, and measurements used in manufacture of acoustic strings', 300, 'True'),
(441688, 'Electronic Chordophone Assembly', 'ELCA', 'ASY', 'II', 439421, 'Study of tools, techniques, and measurements used in manufacture of electric strings', 300, 'True'),
(450398, 'Shaping and Assembing the Brass Instrument', 'SABR', 'ASY', 'II', 440879, 'Study of tools, techniques, and measurements used in manufacture of brass', 300, 'True'),
(500365, 'The MuseWorks Management Style', 'MWMS', 'MTS', 'I', NULL, 'Overview of our company philosophy of management', 200, 'True'),
(500463, 'Managing Resources and Personnel Effiectively', 'MRPE', 'MTS', 'II', 500365, 'Analysis of effective management techniques specific to MuseWorks needs, including time, materials, and personnel management', 300, 'True'),
(604036, 'The Idiophone: Hole and Valve Placement', 'IDVP', 'DSN', 'III', 439016, 'Study of idiophone design variations based on equal-temperament, pythagorean, and mean-tone standards', 375, 'True'),
(605100, 'Boring and Assembly of the Woodwind', 'BRWW', 'ASY', 'II', 439010, 'Study of tools, techniques, and measurements used in boring', 300, 'True'),
(700357, 'Introduction to MuseWare 3.0', 'INMW', 'SFT', 'I', NULL, 'General survey of features, tricks, and techniques', 200, 'True'),
(700452, 'MuseWare 3.0: General Design Applications', 'GDMW', 'SFT', 'II', 700357, 'Overview of MuseWare techniques used for general instrument design', 300, 'True'),
(700523, 'Advanced MuseWare 3.0', 'ADMW', 'SFT', 'III', 700452, 'Advanced MuseWare techniques, including development of custom protocols', 400, 'True'),
(800359, 'Introduction to the MuseWorks Style', 'IMWS', 'EDS', 'I', NULL, 'Overview of style considerations for writers and editors, including deviations from standard references', 200, 'True'),
(900359, 'Introduction to Recording Techniques', 'INRT', 'TSS', 'I', NULL, 'Theoretical and practical overview of recording techniques and procedures, including a guided tour of the studio facility', 250, 'True'),
(900527, 'Instrument-Specific Placement Considerations', 'ISPC', 'TSS', 'II', 900359, 'In-depth analysis of instrument placement for recording, based on principles of acoustical physics', 350, 'True'),
(900628, 'Producing the MuseWorks CD', 'PMCD', 'TSS', 'III', 900527, 'Practical application of recording techniques to produce the customer-oriented CD, which contains samples of instruments currently being manufactured', 450, 'True');

-- --------------------------------------------------------

--
-- Table structure for table `tblcourselevel`
--

DROP TABLE IF EXISTS `tblcourselevel`;
CREATE TABLE IF NOT EXISTS `tblcourselevel` (
  `LevelCode` varchar(3) NOT NULL DEFAULT '',
  `Description` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`LevelCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcourselevel`
--

INSERT INTO `tblcourselevel` (`LevelCode`, `Description`) VALUES
('I', 'Introductory'),
('II', 'Intermediate'),
('III', 'Advanced');

-- --------------------------------------------------------

--
-- Table structure for table `tblcourseschedule`
--

DROP TABLE IF EXISTS `tblcourseschedule`;
CREATE TABLE IF NOT EXISTS `tblcourseschedule` (
  `CourseScheduleID` tinyint(4) NOT NULL DEFAULT '0',
  `CourseCode` mediumint(9) DEFAULT NULL,
  `RoomCode` tinyint(4) DEFAULT NULL,
  `StartDate` varchar(19) DEFAULT NULL,
  `EndDate` varchar(19) DEFAULT NULL,
  `StartTime` varchar(19) DEFAULT NULL,
  `EndTime` varchar(19) DEFAULT NULL,
  `TimeUnit` varchar(4) DEFAULT NULL,
  `Duration` tinyint(4) DEFAULT NULL,
  `SeatsAvailable` tinyint(4) DEFAULT NULL,
  `Instructor` varchar(18) DEFAULT NULL,
  `CostToDept` decimal(4,1) DEFAULT NULL,
  `Notes` varchar(45) DEFAULT NULL,
  `Canceled` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`CourseScheduleID`),
  KEY `CourseCode` (`CourseCode`),
  KEY `RoomCode` (`RoomCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcourseschedule`
--

INSERT INTO `tblcourseschedule` (`CourseScheduleID`, `CourseCode`, `RoomCode`, `StartDate`, `EndDate`, `StartTime`, `EndTime`, `TimeUnit`, `Duration`, `SeatsAvailable`, `Instructor`, `CostToDept`, `Notes`, `Canceled`) VALUES
(2, 390356, 2, '2001-06-14 00:00:00', '2001-06-14 00:00:00', '1899-12-30 09:00:00', '1899-12-30 14:00:00', 'Hour', 5, 4, 'Iphigenia Mancx', '200.0', 'Requires overhead projector', 'False'),
(3, 200673, 3, '2001-06-16 00:00:00', '2001-06-16 00:00:00', '1899-12-30 09:00:00', '1899-12-30 16:00:00', 'Day', 1, 20, 'Perry Winkle', '210.0', '', 'False'),
(4, 604036, 4, '2001-06-16 00:00:00', '2001-06-17 00:00:00', '1899-12-30 09:00:00', '1899-12-30 17:00:00', 'Day', 2, 15, 'Dorrie Lowenstein', '375.0', 'Requires slide and overhead projectors', 'False'),
(5, 800359, 5, '2001-06-17 00:00:00', '2001-06-17 00:00:00', '1899-12-30 09:00:00', '1899-12-30 17:00:00', 'Day', 1, 24, 'Marcia Hepplewhite', '200.0', 'Requires overhead projector', 'False'),
(6, 390630, 6, '2001-06-18 00:00:00', '2001-06-18 00:00:00', '1899-12-30 09:00:00', '1899-12-30 05:00:00', 'Day', 1, 24, 'Marcia Hepplewhite', '315.0', 'Requires slide and overhead projectors', 'False'),
(7, 439662, 7, '2001-06-21 00:00:00', '2001-06-21 00:00:00', '1899-12-30 08:00:00', '1899-12-30 16:00:00', 'Day', 1, 22, 'Bertram Kipnis', '200.0', 'Requires slide projector', 'False'),
(8, 439421, 8, '2001-06-23 00:00:00', '2001-06-23 00:00:00', '1899-12-30 09:00:00', '1899-12-30 17:00:00', 'Day', 1, 23, 'Bertram Kipnis', '315.0', 'Requires slide projector', 'False'),
(9, 500365, 9, '2001-06-23 00:00:00', '2001-06-23 00:00:00', '1899-12-30 09:00:00', '1899-12-30 17:00:00', 'Day', 1, 7, 'Harada Ito', '200.0', 'Requires overhead projector', 'False'),
(10, 441588, 10, '2001-06-23 00:00:00', '2001-06-24 00:00:00', '1899-12-30 08:00:00', '1899-12-30 16:00:00', 'Day', 2, 15, 'Hans Goethe', '315.0', 'Requires slide projector and two large tables', 'False'),
(11, 441688, 11, '2001-06-25 00:00:00', '2001-06-28 00:00:00', '1899-12-30 08:00:00', '1899-12-30 16:00:00', 'Day', 2, 15, 'Hans Goethe', '315.0', 'Requires slide projector and two large tables', 'False'),
(12, 500463, 12, '2001-06-25 00:00:00', '2001-06-25 00:00:00', '1899-12-30 09:00:00', '1899-12-30 17:00:00', 'Day', 1, 7, 'Harada Ito', '315.0', 'Requires overhead projector', 'False'),
(13, 700523, 13, '2001-06-25 00:00:00', '2001-06-25 00:00:00', '1899-12-30 08:00:00', '1899-12-30 17:00:00', 'Day', 1, 15, 'Yolanda Kafka', '400.0', 'Requires overhead projector', 'False'),
(14, 900359, 14, '2001-06-28 00:00:00', '2001-06-28 00:00:00', '1899-12-30 08:00:00', '1899-12-30 16:00:00', 'Day', 1, 12, 'Bud Chandrasekhar', '250.0', '', 'False'),
(15, 900527, 1, '2001-06-29 00:00:00', '2001-06-29 00:00:00', '1899-12-30 09:00:00', '1899-12-30 17:00:00', 'Day', 1, 12, 'Bud Chankrasekhar', '367.5', '', 'False'),
(16, 700357, 2, '2001-06-29 00:00:00', '2001-06-29 00:00:00', '1899-12-30 09:00:00', '1899-12-30 17:00:00', 'Day', 1, 25, 'Yolanda Kafka', '200.0', 'Requires overhead projector', 'False'),
(17, 450398, 3, '2001-06-02 00:00:00', '2001-06-02 00:00:00', '1899-12-30 08:00:00', '1899-12-30 17:00:00', 'Day', 1, 15, 'Alma Redemptoris', '315.0', '', 'False'),
(18, 441588, 4, '2001-06-03 00:00:00', '2001-06-04 00:00:00', '1899-12-30 08:00:00', '1899-12-30 16:00:00', 'Day', 2, 15, 'Hans Goethe', '315.0', 'Requires slide projector and two large tables', 'False'),
(19, 390630, 5, '2001-06-03 00:00:00', '2001-06-03 00:00:00', '1899-12-30 09:00:00', '1899-12-30 05:00:00', 'Day', 1, 24, 'Marcia Hepplewhite', '315.0', 'Requires slide and overhead projectors', 'False'),
(20, 439662, 6, '2001-06-04 00:00:00', '2001-06-04 00:00:00', '1899-12-30 08:00:00', '1899-12-30 16:00:00', 'Day', 1, 22, 'Bertram Kipnis', '200.0', 'Requires slide projector', 'False'),
(21, 900527, 7, '2001-06-07 00:00:00', '2001-06-07 00:00:00', '1899-12-30 09:00:00', '1899-12-30 17:00:00', 'Day', 1, 12, 'Bud Chankrasekhar', '367.5', '', 'False'),
(22, 200673, 8, '2001-06-08 00:00:00', '2001-06-08 00:00:00', '1899-12-30 09:00:00', '1899-12-30 16:00:00', 'Day', 1, 20, 'Perry Winkle', '210.0', '', 'False'),
(23, 200673, 9, '2001-06-09 00:00:00', '2001-06-09 00:00:00', '1899-12-30 09:00:00', '1899-12-30 16:00:00', 'Day', 1, 20, 'Perry Winkle', '210.0', '', 'False'),
(24, 439421, 10, '2001-06-10 00:00:00', '2001-06-10 00:00:00', '1899-12-30 09:00:00', '1899-12-30 17:00:00', 'Day', 1, 23, 'Bertram Kipnis', '315.0', 'Requires slide projector', 'False'),
(25, 439421, 11, '2001-06-11 00:00:00', '2001-06-11 00:00:00', '1899-12-30 09:00:00', '1899-12-30 17:00:00', 'Day', 1, 23, 'Bertram Kipnis', '315.0', 'Requires slide projector', 'False'),
(26, 439421, 12, '2001-06-07 00:00:00', '2001-06-07 00:00:00', '1899-12-30 09:00:00', '1899-12-30 17:00:00', 'Day', 1, 2, 'Bertram Kipnis', '315.0', 'Requires slide projector', 'False'),
(27, 604036, 13, '2001-06-29 00:00:00', '2001-06-30 00:00:00', '1899-12-30 09:00:00', '1899-12-30 17:00:00', 'Day', 2, 15, 'Dorrie Lowenstein', '375.0', 'Requires slide and overhead projectors', 'False'),
(28, 200673, 14, '2001-06-30 00:00:00', '2001-06-30 00:00:00', '1899-12-30 09:00:00', '1899-12-30 16:00:00', 'Day', 1, 20, 'Perry Winkle', '210.0', '', 'False'),
(29, 900359, 1, '2001-06-30 00:00:00', '2001-06-30 00:00:00', '1899-12-30 08:00:00', '1899-12-30 16:00:00', 'Day', 1, 12, 'Bud Chandrasekhar', '250.0', '', 'False');

-- --------------------------------------------------------

--
-- Table structure for table `tblcoursetype`
--

DROP TABLE IF EXISTS `tblcoursetype`;
CREATE TABLE IF NOT EXISTS `tblcoursetype` (
  `TypeCode` varchar(3) NOT NULL DEFAULT '',
  `TypeName` varchar(38) DEFAULT NULL,
  `Active` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`TypeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcoursetype`
--

INSERT INTO `tblcoursetype` (`TypeCode`, `TypeName`, `Active`) VALUES
('ASY', 'Instrument Assembly', 'True'),
('CLS', 'Clerical Skills', 'True'),
('CSR', 'Customer Relations and Support', 'True'),
('CTL', 'Customer-Oriented Technical Literature', 'True'),
('DSN', 'Instrument Design', 'True'),
('EDS', 'Editorial Services', 'True'),
('EMA', 'Electronic Media', 'True'),
('ETL', 'Employee-Oriented Technical Literature', 'True'),
('HST', 'History of Instruments', 'True'),
('MTS', 'Management Training and Support', 'True'),
('SFT', 'Software', 'True'),
('TSS', 'Technical Support Services', 'True'),
('VDR', 'Vendor Relations', 'True');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartment`
--

DROP TABLE IF EXISTS `tbldepartment`;
CREATE TABLE IF NOT EXISTS `tbldepartment` (
  `DeptCode` tinyint(4) NOT NULL DEFAULT '0',
  `DeptName` varchar(22) DEFAULT NULL,
  `DeptHead` varchar(22) DEFAULT NULL,
  `Phone` bigint(20) DEFAULT NULL,
  `Ext` smallint(6) DEFAULT NULL,
  `Active` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`DeptCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbldepartment`
--

INSERT INTO `tbldepartment` (`DeptCode`, `DeptName`, `DeptHead`, `Phone`, `Ext`, `Active`) VALUES
(1, 'Stringed Instruments', 'Ignacio Gutierrez', 7165551010, 7439, 'True'),
(2, 'Woodwinds', 'Brunhilde Glentz', 7165551020, 7531, 'True'),
(3, 'Accounting', 'Iannis Mesencephalos', 7165551030, 7309, 'True'),
(4, 'Customer Relations', 'Ashweta Singh-Nehru', 7165551040, 7909, 'True'),
(5, 'Publishing', 'Buzz Meticulon', 7165551050, 7968, 'True'),
(6, 'Percussion Design', 'Kristen Ives', 7165551060, 7429, 'True'),
(7, 'Percussion Assembly', 'Gordon Tlingut', 7165551070, 7843, 'True'),
(8, 'Technical Support', 'Elzbieta Kostucha', 7165551080, 7425, 'True'),
(9, 'Brass Design', 'Aaron Feingold', 7165553010, 3890, 'True'),
(10, 'Brass Assembly', 'Lowell Fink', 7165551090, 7008, 'True'),
(11, 'Electronic Keyboards', 'Alicia De La Mancha', 7165552010, 7442, 'True'),
(12, 'Software Services', 'Bud Bradley', 7165552020, 7531, 'False'),
(13, 'Instrument Cases', 'Elaine O\'Malley', 7165553020, 3320, 'True'),
(14, 'Instrument Amplifiers', 'Dizzy Belle', 7165552030, 7514, 'True'),
(15, 'Stands and Supports', 'Gesualdo di Venosa', 7165553030, 3769, 'True'),
(16, 'Shipping and Receiving', 'Bjorg Tenneson', 7165553040, 3947, 'True'),
(17, 'Administration', 'Niyoshi Watanabe-Coker', 7165551100, 7000, 'True');

-- --------------------------------------------------------

--
-- Table structure for table `tblroom`
--

DROP TABLE IF EXISTS `tblroom`;
CREATE TABLE IF NOT EXISTS `tblroom` (
  `RoomCode` tinyint(4) NOT NULL DEFAULT '0',
  `Building` varchar(10) DEFAULT NULL,
  `Room` smallint(6) DEFAULT NULL,
  `Directions` varchar(82) DEFAULT NULL,
  `SeatsAvailable` tinyint(4) DEFAULT NULL,
  `Notes` varchar(69) DEFAULT NULL,
  `Active` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`RoomCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblroom`
--

INSERT INTO `tblroom` (`RoomCode`, `Building`, `Room`, `Directions`, `SeatsAvailable`, `Notes`, `Active`) VALUES
(1, 'Main', 100, 'Turn right at West Wing water cooler.', 25, 'Morning sun can sometimes be a problem, even with blinds closed.', 'True'),
(2, 'Main', 103, 'Turn right at West Wing water cooler.', 22, '', 'True'),
(3, 'Main', 105, 'Turn right at West Wing water cooler.', 20, 'Can sometimes be very cold, especially in PM.', 'True'),
(4, 'Main', 107, 'Turn right at West Wing water cooler.', 24, '', 'True'),
(5, 'Main', 109, 'Turn right at West Wing water cooler.', 25, 'Can sometimes hear pipes banging loudly when adjacent room is in use.', 'False'),
(6, 'Baylor', 214, 'On 2nd fl., turn left past waiting area.', 7, '', 'True'),
(7, 'Baylor', 258, 'On 2nd fl., at North end, through double doors.', 12, 'Tends to be very warm by PM.', 'True'),
(8, 'Baylor', 276, 'On 2nd fl., at North end, through double doors, then right at end of main hallway.', 15, '', 'True'),
(9, 'Baylor', 284, 'On 2nd fl., at North end, through double doors, then right at end of main hallway.', 15, '', 'True'),
(10, 'Williamson', 201, 'On 2nd fl., through reception area.', 23, 'Lighting still inadequate.', 'True'),
(11, 'Williamson', 202, 'On 2nd fl., through reception area.', 24, '', 'True'),
(12, 'Williamson', 203, 'On 2nd fl., through reception area.', 23, '', 'True'),
(13, 'Williamson', 204, 'On 2nd fl., through reception area.', 24, '', 'True'),
(14, 'Williamson', 205, 'On 2nd fl., through reception area.', 23, '', 'True');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

DROP TABLE IF EXISTS `tblstudent`;
CREATE TABLE IF NOT EXISTS `tblstudent` (
  `StudentID` smallint(6) NOT NULL DEFAULT '0',
  `DeptCode` tinyint(4) DEFAULT NULL,
  `LastName` varchar(11) DEFAULT NULL,
  `FirstName` varchar(10) DEFAULT NULL,
  `MI` varchar(3) DEFAULT NULL,
  `Salutation` varchar(3) DEFAULT NULL,
  `Title` varchar(29) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `City` varchar(11) DEFAULT NULL,
  `State` varchar(2) DEFAULT NULL,
  `Zip` mediumint(9) DEFAULT NULL,
  `ZipExt` smallint(6) DEFAULT NULL,
  `HomePhone` bigint(20) DEFAULT NULL,
  `OfficePhone` bigint(20) DEFAULT NULL,
  `OfficeExt` smallint(6) DEFAULT NULL,
  `Fax` varchar(10) DEFAULT NULL,
  `Notes` varchar(85) DEFAULT NULL,
  `active` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`StudentID`),
  KEY `DeptCode` (`DeptCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`StudentID`, `DeptCode`, `LastName`, `FirstName`, `MI`, `Salutation`, `Title`, `Address`, `City`, `State`, `Zip`, `ZipExt`, `HomePhone`, `OfficePhone`, `OfficeExt`, `Fax`, `Notes`, `active`) VALUES
(1640, 5, 'Benoit-Cruz', 'Averille', 'McK', 'Ms.', 'Editorial Supervisor', '4139 Platts Pl.', 'Arkchester', 'NY', 14608, 1440, 7165559402, 7165551000, 7930, '', 'She has taught several woodwind-assembly courses (at another company).', 'True'),
(3475, 10, 'Lassiter', 'Jacob', 'M', 'Mr.', 'Valve Technician', '145 Knollwood Terr.', 'Tunguska', 'NY', 14513, 9444, 7165553397, 7165551000, 7120, '7165551077', 'A truly motivated student, who learns extremely quickly', 'True'),
(3785, 3, 'Hemphill', 'Virginia', 'W', 'Ms.', 'Supervisor, Accounts Payable', '92 Ontario St.', 'Waterspring', 'NY', 14560, 9536, 7165553512, 7165553000, 3908, '7165553090', 'She is extremely motivated, and catches on very quickly', 'True'),
(4632, 1, 'Varistratos', 'Vitous', 'Z', 'Mr.', 'Senior Luthier', '809 Harada Rd.', 'Arkchester', 'NY', 14608, 1439, 7165559437, 7165551000, 7385, '7165551055', 'Extremely savvy technically, but knows and cares little about computers and software.', 'True'),
(4870, 8, 'Chiselwaite', 'Brad', 'V', 'Mr.', 'Network Technician', '504 Merganser Rd.', 'Arkchester', 'NY', 14607, 1441, 7165559305, 7165551000, 7824, '7165551099', '', 'True'),
(4910, 11, 'O\'Malley', 'Jacqueline', 'A', 'Ms.', 'Acoustical Engineer', '47 Bimploe St.', 'Watercress', 'NY', 14504, 6733, 7165555869, 7165551010, 9435, '7165551055', '', 'True'),
(4933, 10, 'Borkum', 'Spuds', 'U', 'Mr.', 'Bell Shaper', '8930 Kennelon Rd.', 'Wilkinson', 'NY', 14759, 3409, 7165550912, 7165551000, 7188, '7165551077', '', 'True'),
(4942, 2, 'Carlisle', 'George', 'X', 'Mr.', 'Senior Borer', '438 Shuttle Sq.', 'Arkchester', 'NY', 14608, 4222, 7165550022, 7165551000, 7170, '7165551077', '', 'True'),
(4944, 5, 'Abernathy', 'Mauna', 'O', 'Ms.', 'Editorial Assistant', '22 Sheffield Rd.', 'Arkchester', 'NY', 14607, 9776, 7165554865, 7165551000, 7211, '7165551077', 'Shows great attention to detail; a very quick learner', 'True'),
(4947, 15, 'Nancie', 'Curtis', 'L', 'Mr.', 'Manager, Local Sales', '909 Armagnac Way', 'Arkchester', 'NY', 14603, 1224, 7165553346, 7165551000, 7220, '7165551088', 'Has expressed interest in taking as many management-related courses as possible', 'True'),
(4949, 1, 'Kim', 'Wanchu', 'Y', 'Mr.', 'Luthier', '31 Washington Mews', 'Orestes', 'NY', 14869, 6942, 7165559090, 7165551010, 9332, '7165551055', '', 'True'),
(4953, 11, 'Jones', 'Juneeta', 'B', 'Ms.', 'Electronics Engineer', '401 Auburn Terr.', 'Bakersville', 'NY', 14390, 9028, 7165554838, 7165551010, 9410, '7165551055', '', 'True'),
(5017, 6, 'McGuire', 'Dave', 'M', 'Mr.', 'Design Specialist', '3367 Bournemouth St.', 'Arkchester', 'NY', 14607, 9712, 7165551750, 7165551000, 7002, '', '', 'True'),
(5141, 4, 'Tatum', 'Artemus', 'E', 'Mr.', 'Supervisor, Customer Feedback', '11 Keller Rd.', 'Arkchester', 'NY', 14605, 32, 7165553200, 7165551000, 7997, '7165551077', 'Tends to favor individualized attention', 'True'),
(5339, 12, 'Bernini', 'Michela', 'A', 'Ms.', 'CAD Product Specialist', '44 Rinsler St.', 'Arkchester', 'NY', 14607, 9342, 7165550044, 7165553000, 3922, '7165553033', '', 'True'),
(5374, 8, 'Ausable', 'Kelly', 'T', 'Ms.', 'Network Technician', '758 Haldemann Rd.', 'Arkchester', 'NY', 14609, 9356, 7165551016, 7165553000, 3970, '7165553090', 'Her mind is like a steel trap; she doesn\'t forget a thing.', 'True');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcourseattendance`
--
ALTER TABLE `tblcourseattendance`
  ADD CONSTRAINT `tblcourseattendance_ibfk_1` FOREIGN KEY (`CourseScheduleID`) REFERENCES `tblcourseschedule` (`CourseScheduleID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblcourseattendance_ibfk_2` FOREIGN KEY (`DeptCode`) REFERENCES `tbldepartment` (`DeptCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblcourseattendance_ibfk_3` FOREIGN KEY (`StudentID`) REFERENCES `tblstudent` (`StudentID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblcourseinfo`
--
ALTER TABLE `tblcourseinfo`
  ADD CONSTRAINT `tblcourseinfo_ibfk_1` FOREIGN KEY (`TypeCode`) REFERENCES `tblcoursetype` (`TypeCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblcourseinfo_ibfk_2` FOREIGN KEY (`LevelCode`) REFERENCES `tblcourselevel` (`LevelCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblcourseinfo_ibfk_3` FOREIGN KEY (`Prerequisite`) REFERENCES `tblcourseinfo` (`CourseCode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblcourseschedule`
--
ALTER TABLE `tblcourseschedule`
  ADD CONSTRAINT `tblcourseschedule_ibfk_1` FOREIGN KEY (`CourseCode`) REFERENCES `tblcourseinfo` (`CourseCode`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tblcourseschedule_ibfk_2` FOREIGN KEY (`RoomCode`) REFERENCES `tblroom` (`RoomCode`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
