-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 27, 2025 at 10:42 AM
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
-- Database: `computers`
--
CREATE DATABASE IF NOT EXISTS `computers` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `computers`;

-- --------------------------------------------------------

--
-- Table structure for table `tblcomputers`
--

DROP TABLE IF EXISTS `tblcomputers`;
CREATE TABLE IF NOT EXISTS `tblcomputers` (
  `AssetTag` smallint(6) DEFAULT NULL,
  `ManufacturerID` tinyint(4) DEFAULT NULL,
  `DateReceived` varchar(19) DEFAULT NULL,
  `PurchasePrice` smallint(6) DEFAULT NULL,
  `Warranty` varchar(5) DEFAULT NULL,
  `EmployeeID` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcomputers`
--

INSERT INTO `tblcomputers` (`AssetTag`, `ManufacturerID`, `DateReceived`, `PurchasePrice`, `Warranty`, `EmployeeID`) VALUES
(1020, 3, '1999-01-05 00:00:00', 3200, 'False', 75),
(1041, 7, '2000-05-01 00:00:00', 1200, 'True', 57),
(1042, 5, '2000-05-01 00:00:00', 1200, 'True', 63),
(1043, 5, '2000-05-01 00:00:00', 1200, 'True', 67),
(1044, 4, '1999-08-20 00:00:00', 1499, 'False', 56),
(1047, 4, '1999-08-20 00:00:00', 1499, 'False', 47),
(1052, 2, '2000-10-19 00:00:00', 1250, 'True', 36),
(1055, 3, '1999-09-07 00:00:00', 2700, 'False', 44),
(1059, 4, '2000-04-02 00:00:00', 850, 'False', 53),
(1066, 3, '2000-11-07 00:00:00', 2300, 'True', 32),
(1072, 2, '1999-12-01 00:00:00', 1200, 'False', 70),
(1073, 2, '1999-12-01 00:00:00', 1200, 'False', 72),
(1075, 5, '2000-06-30 00:00:00', 1500, 'True', 27),
(1077, 3, '2001-02-28 00:00:00', 1050, 'True', 55),
(1080, 5, '1999-11-07 00:00:00', 1400, 'False', 73),
(1093, 3, '2000-07-05 00:00:00', 1100, 'True', 71),
(1124, 2, '2001-02-07 00:00:00', 899, 'True', 52),
(1164, 2, '2000-12-03 00:00:00', 1250, 'True', 26),
(1168, 1, '2001-01-12 00:00:00', 3200, 'True', 71),
(1198, 1, '2001-02-14 00:00:00', 3600, 'True', 32),
(1199, 2, '2001-03-30 00:00:00', 1199, 'True', 49),
(1208, 5, '2001-03-15 00:00:00', 999, 'True', 42),
(1215, 5, '2001-06-30 00:00:00', 1675, 'True', 43),
(1244, 1, '2001-05-14 00:00:00', 2900, 'True', 71),
(1245, 2, '2001-05-14 00:00:00', 1700, 'True', 68),
(1250, 5, '2001-06-02 00:00:00', 1300, 'True', 78);

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

DROP TABLE IF EXISTS `tbldepartments`;
CREATE TABLE IF NOT EXISTS `tbldepartments` (
  `DeptCode` smallint(6) DEFAULT NULL,
  `DeptName` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`DeptCode`, `DeptName`) VALUES
(100, 'Administration'),
(200, 'Finance'),
(300, 'Fulfillment'),
(400, 'Sales'),
(500, 'Technical Services');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

DROP TABLE IF EXISTS `tblemployees`;
CREATE TABLE IF NOT EXISTS `tblemployees` (
  `EmployeeID` smallint(6) DEFAULT NULL,
  `EmployeeLastName` varchar(12) DEFAULT NULL,
  `EmployeeFirstName` varchar(8) DEFAULT NULL,
  `DeptCode` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`EmployeeID`, `EmployeeLastName`, `EmployeeFirstName`, `DeptCode`) VALUES
(26, 'Smith', 'Jason', 300),
(27, 'McMillan', 'Lynne', 300),
(32, 'Wang', 'Amy', 300),
(36, 'Brown', 'Andrea', 200),
(39, 'Kilinski', 'Susan', 300),
(42, 'Atkinson', 'Angela', 400),
(43, 'Coleman', 'William', 100),
(44, 'Tydings', 'Jennifer', 400),
(47, 'Sandler, Jr.', 'Todd', 400),
(48, 'Caldwell', 'Josh', 300),
(49, 'Nguyen', 'Tram', 200),
(51, 'Sudore', 'Carrie', 300),
(52, 'Moss', 'Greg', 500),
(53, 'Fitzpatrick', 'Lisa', 400),
(55, 'Hall', 'John', 400),
(56, 'Haygood', 'Eric', 300),
(57, 'Griffith', 'Shelly', 400),
(58, 'Grakowsky', 'Norman', 300),
(63, 'Elmore', 'Heather', 300),
(67, 'Barnett', 'Amy', 100),
(68, 'Heinsler', 'Paul', 500),
(70, 'Middlebrook', 'Rachel', 100),
(71, 'Jio', 'Emily', 500),
(72, 'Barefoot', 'Karen', 400),
(73, 'Jacques', 'Philip', 400),
(75, 'Greene', 'Allison', 100),
(76, 'Francesco', 'Nick', 300),
(78, 'Ballantyne', 'Carl', 100),
(79, 'Cardinale', 'Alex', 300),
(81, 'Byam', 'Vishna', 400),
(82, 'Bonafede', 'Mike', 400),
(85, 'Kirk', 'Jahmal', 300),
(87, 'Aktasi', 'Goodwin', 300),
(88, 'Mann-Clark', 'Lori', 500),
(91, 'Palmeri', 'Nicole', 100),
(93, 'Chistopher', 'Devon', 400),
(94, 'Rivera', 'Michelle', 300),
(95, 'Barrows', 'Helene', 500),
(98, 'Andres', 'Leon', 200),
(100, 'Toscano', 'Michael', 500),
(101, 'Wolfe', 'Rex', 300),
(106, 'Kumar', 'Suri', 400),
(107, 'Zona', 'Brian', 300),
(113, 'VanBeckens', 'Erik', 500),
(116, 'Chapman-Hart', 'Dana', 500),
(122, 'Abbott', 'Rob', 500),
(123, 'Lange', 'Robert', 300),
(143, 'Bernstein', 'Edward', 400);

-- --------------------------------------------------------

--
-- Table structure for table `tblmanufacturers`
--

DROP TABLE IF EXISTS `tblmanufacturers`;
CREATE TABLE IF NOT EXISTS `tblmanufacturers` (
  `ManufacturerID` tinyint(4) DEFAULT NULL,
  `Manufacturer` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblmanufacturers`
--

INSERT INTO `tblmanufacturers` (`ManufacturerID`, `Manufacturer`) VALUES
(1, 'Atlas'),
(2, 'Cyber'),
(3, 'HiTech'),
(4, 'Micron'),
(5, 'Omni');

-- --------------------------------------------------------

--
-- Table structure for table `tblnotes`
--

DROP TABLE IF EXISTS `tblnotes`;
CREATE TABLE IF NOT EXISTS `tblnotes` (
  `AssetTag` smallint(6) DEFAULT NULL,
  `Note` varchar(23) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblnotes`
--

INSERT INTO `tblnotes` (`AssetTag`, `Note`) VALUES
(1020, 'Laptop'),
(1055, 'Laptop'),
(1066, 'Laptop'),
(1168, 'Financial system server'),
(1198, 'Fulfillment server'),
(1244, 'E-mail server'),
(1245, 'Print server');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
