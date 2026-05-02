
DROP DATABASE IF EXISTS `computers`;
CREATE DATABASE `computers` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `computers`;

CREATE TABLE `tbldepartments` (
  `DeptCode` SMALLINT NOT NULL,
  `DeptName` VARCHAR(18),
  PRIMARY KEY (`DeptCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `tblemployees` (
  `EmployeeID` SMALLINT NOT NULL,
  `EmployeeLastName` VARCHAR(12),
  `EmployeeFirstName` VARCHAR(8),
  `DeptCode` SMALLINT,
  PRIMARY KEY (`EmployeeID`),
  FOREIGN KEY (`DeptCode`) REFERENCES `tbldepartments`(`DeptCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `tblmanufacturers` (
  `ManufacturerID` TINYINT NOT NULL,
  `Manufacturer` VARCHAR(6),
  PRIMARY KEY (`ManufacturerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `tblcomputers` (
  `AssetTag` SMALLINT NOT NULL,
  `ManufacturerID` TINYINT,
  `DateReceived` DATETIME,
  `PurchasePrice` SMALLINT,
  `Warranty` BOOLEAN,
  `EmployeeID` SMALLINT,
  PRIMARY KEY (`AssetTag`),
  FOREIGN KEY (`ManufacturerID`) REFERENCES `tblmanufacturers`(`ManufacturerID`),
  FOREIGN KEY (`EmployeeID`) REFERENCES `tblemployees`(`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `tblnotes` (
  `AssetTag` SMALLINT,
  `Note` VARCHAR(23),
  FOREIGN KEY (`AssetTag`) REFERENCES `tblcomputers`(`AssetTag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
