-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2023 at 07:45 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nbrc`
--

-- --------------------------------------------------------

--
-- Table structure for table `ahadmin`
--

CREATE TABLE `ahadmin` (
  `Aname` varchar(80) NOT NULL,
  `ADesignation` varchar(60) DEFAULT NULL,
  `ADepartment` varchar(100) DEFAULT NULL,
  `Aphone` varchar(20) DEFAULT NULL,
  `Amobile` varchar(15) DEFAULT NULL,
  `AEmail` varchar(350) NOT NULL,
  `AExperience` varchar(60) DEFAULT NULL,
  `APasscode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `anbuyer`
--

CREATE TABLE `anbuyer` (
  `BCode` varchar(100) NOT NULL,
  `Bname` varchar(300) NOT NULL,
  `BRegNum` varchar(100) NOT NULL,
  `BRdate` date NOT NULL,
  `BAddress` varchar(500) NOT NULL,
  `Bpin` varchar(20) NOT NULL,
  `Bphone` varchar(20) NOT NULL,
  `Bmobile` varchar(15) DEFAULT NULL,
  `BEmail` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `animalhouse`
--

CREATE TABLE `animalhouse` (
  `Name` varchar(100) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `RegNo` varchar(300) NOT NULL,
  `RegDate` date NOT NULL,
  `Address` varchar(500) NOT NULL,
  `Bphone` varchar(20) NOT NULL,
  `Bmobile` varchar(15) DEFAULT NULL,
  `BEmail` varchar(350) NOT NULL,
  `AHIncharge` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `animals`
--

CREATE TABLE `animals` (
  `AnimalID` bigint(20) NOT NULL,
  `Species` varchar(80) NOT NULL,
  `strain` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ansupplier`
--

CREATE TABLE `ansupplier` (
  `SCode` varchar(100) NOT NULL,
  `Sname` varchar(300) NOT NULL,
  `RegNum` varchar(100) NOT NULL,
  `Rdate` date NOT NULL,
  `SAddress` varchar(500) NOT NULL,
  `Spin` varchar(20) NOT NULL,
  `Sphone` varchar(20) NOT NULL,
  `Smobile` varchar(15) DEFAULT NULL,
  `SEmail` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `census`
--

CREATE TABLE `census` (
  `CensusID` bigint(20) NOT NULL,
  `Species` varchar(80) NOT NULL,
  `strain` varchar(100) DEFAULT NULL,
  `StockType` varchar(20) NOT NULL,
  `Male` int(11) DEFAULT '0',
  `Female` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `name` varchar(300) NOT NULL,
  `clientID` varchar(310) NOT NULL,
  `cType` varchar(200) NOT NULL,
  `status` varchar(20) DEFAULT 'Active',
  `mobile1` varchar(15) DEFAULT NULL,
  `mobile2` varchar(15) DEFAULT NULL,
  `phone1` varchar(20) DEFAULT NULL,
  `phone2` varchar(20) DEFAULT NULL,
  `email1` varchar(350) DEFAULT NULL,
  `email2` varchar(350) DEFAULT NULL,
  `region` varchar(50) NOT NULL,
  `cState` varchar(150) NOT NULL,
  `city` varchar(150) NOT NULL,
  `adderss` varchar(500) NOT NULL,
  `pin` varchar(20) NOT NULL,
  `cRegNum` varchar(100) NOT NULL,
  `cRdate` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `author` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cpcseanominee`
--

CREATE TABLE `cpcseanominee` (
  `Ctype` varchar(40) NOT NULL,
  `CName` varchar(80) NOT NULL,
  `Ftenure` int(11) NOT NULL DEFAULT '0',
  `Ttenure` int(11) NOT NULL DEFAULT '0',
  `CEmail` varchar(350) NOT NULL,
  `CPhone` varchar(20) NOT NULL,
  `CMobile` varchar(15) DEFAULT NULL,
  `CAddress` varchar(500) NOT NULL,
  `Cpin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cuser`
--

CREATE TABLE `cuser` (
  `Email` varchar(350) NOT NULL,
  `FirstName` varchar(40) NOT NULL,
  `LastName` varchar(40) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `InstituteName` varchar(200) DEFAULT NULL,
  `Passcode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `disposeanimal`
--

CREATE TABLE `disposeanimal` (
  `EntryNo` bigint(20) NOT NULL,
  `DisposeNumber` bigint(20) NOT NULL,
  `SpStrain` varchar(100) NOT NULL,
  `Gender` varchar(7) NOT NULL,
  `Weight_Age` varchar(30) DEFAULT NULL,
  `NoAnimal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `disposeform`
--

CREATE TABLE `disposeform` (
  `DisposeNumber` bigint(20) NOT NULL,
  `Projectcode` varchar(150) DEFAULT NULL,
  `Title` varchar(500) DEFAULT NULL,
  `DisposeBy` varchar(80) NOT NULL,
  `DisposeDate` date NOT NULL,
  `Reason` varchar(100) NOT NULL,
  `Euthanasia` varchar(50) NOT NULL,
  `discardedfrom` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `DocumentID` bigint(20) NOT NULL,
  `DocumentType` varchar(60) NOT NULL,
  `DocumentTitle` varchar(100) NOT NULL,
  `ReferenceDate` date NOT NULL,
  `MainDocument` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `experimentanimal`
--

CREATE TABLE `experimentanimal` (
  `ExperimentID` bigint(20) NOT NULL,
  `Species` varchar(80) NOT NULL,
  `strain` varchar(100) NOT NULL,
  `MALE` int(11) DEFAULT '0',
  `Female` int(11) DEFAULT '0',
  `ExpeirmentDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `experimentationanimal`
--

CREATE TABLE `experimentationanimal` (
  `EntryNo` bigint(20) NOT NULL,
  `ExperimentationNumber` bigint(20) NOT NULL,
  `SpStrain` varchar(100) NOT NULL,
  `Gender` varchar(7) NOT NULL,
  `Weight_Age` varchar(30) DEFAULT NULL,
  `NoAnimal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `experimentationform`
--

CREATE TABLE `experimentationform` (
  `ExperimentationNumber` bigint(20) NOT NULL,
  `Projectcode` varchar(150) NOT NULL,
  `Title` varchar(500) NOT NULL,
  `ExperimentBy` varchar(80) NOT NULL,
  `ExperimentDate` date NOT NULL,
  `ExpGroup` varchar(40) NOT NULL,
  `Route` varchar(50) NOT NULL,
  `SampleCollection` varchar(50) NOT NULL,
  `SCvalue` varchar(50) NOT NULL,
  `SCInterval` varchar(50) NOT NULL,
  `SIvalue` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forgot_pass`
--

CREATE TABLE `forgot_pass` (
  `emailId` varchar(191) NOT NULL,
  `tocken` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fsale`
--

CREATE TABLE `fsale` (
  `SaleID` bigint(20) NOT NULL,
  `Saledate` date NOT NULL,
  `Scode` varchar(80) NOT NULL,
  `Bcode` varchar(80) NOT NULL,
  `IEACdate` date NOT NULL,
  `IAECno` varchar(100) NOT NULL,
  `BillNo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fumigationregister`
--

CREATE TABLE `fumigationregister` (
  `FumigationID` bigint(20) NOT NULL,
  `FumigationDate` date NOT NULL,
  `RoomNo` varchar(20) NOT NULL,
  `Duration` varchar(30) NOT NULL,
  `FumigationBy` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `geneticmonitoring`
--

CREATE TABLE `geneticmonitoring` (
  `GeneticMonitoringID` bigint(20) NOT NULL,
  `GCollectionDate` date NOT NULL,
  `Species` varchar(80) NOT NULL,
  `strain` varchar(100) NOT NULL,
  `Gender` varchar(7) NOT NULL,
  `AnimalNo` int(11) NOT NULL,
  `DOB` date DEFAULT NULL,
  `GCollectedBy` varchar(80) NOT NULL,
  `RoomNo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `iaecmember`
--

CREATE TABLE `iaecmember` (
  `Itype` varchar(40) NOT NULL,
  `IName` varchar(80) NOT NULL,
  `Ftenure` int(11) NOT NULL DEFAULT '0',
  `Ttenure` int(11) NOT NULL DEFAULT '0',
  `IEmail` varchar(350) NOT NULL,
  `IPhone` varchar(20) DEFAULT NULL,
  `IMobile` varchar(15) DEFAULT NULL,
  `IAddress` varchar(500) NOT NULL,
  `Ipin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `indentanimal`
--

CREATE TABLE `indentanimal` (
  `EntryNo` bigint(20) NOT NULL,
  `IndentNumber` bigint(20) NOT NULL,
  `ProjectCode` varchar(150) NOT NULL,
  `SpStrain` varchar(100) NOT NULL,
  `Gender` varchar(7) NOT NULL,
  `Weight_Age` varchar(30) DEFAULT NULL,
  `NoAnimal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `indentform`
--

CREATE TABLE `indentform` (
  `IndentNumber` bigint(20) NOT NULL,
  `Projectcode` varchar(150) NOT NULL,
  `Title` varchar(500) NOT NULL,
  `RName` varchar(80) NOT NULL,
  `ARDate` date NOT NULL,
  `IndentTime` time NOT NULL,
  `Duration` varchar(40) DEFAULT NULL,
  `TAssistance` varchar(300) NOT NULL,
  `SRequest` varchar(300) NOT NULL,
  `IndentDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `issuedanimal`
--

CREATE TABLE `issuedanimal` (
  `IssueID` bigint(20) NOT NULL,
  `IssueDate` date NOT NULL,
  `IssueTime` time NOT NULL,
  `DeliveryPoint` varchar(50) NOT NULL,
  `TA_Name` varchar(80) NOT NULL,
  `Message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `EmailID` varchar(350) NOT NULL,
  `Passcode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `meeting`
--

CREATE TABLE `meeting` (
  `MeetingID` bigint(20) NOT NULL,
  `Minutes` varchar(600) DEFAULT NULL,
  `MDocumentTitle` varchar(100) NOT NULL,
  `MReferenceDate` date NOT NULL,
  `DocumentName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `microbialsampling`
--

CREATE TABLE `microbialsampling` (
  `MSamplingID` bigint(20) NOT NULL,
  `MCollectionDate` date NOT NULL,
  `RoomNo` varchar(20) NOT NULL,
  `Species` varchar(80) NOT NULL,
  `strain` varchar(100) NOT NULL,
  `Gender` varchar(7) NOT NULL,
  `AnimalNo` int(11) NOT NULL,
  `MCollectedBy` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mortality`
--

CREATE TABLE `mortality` (
  `MortalityNo` bigint(20) NOT NULL,
  `Mortalitycode` varchar(40) NOT NULL,
  `Species` varchar(80) NOT NULL,
  `strain` varchar(100) NOT NULL,
  `StockType` varchar(20) NOT NULL,
  `MALE` int(11) DEFAULT '0',
  `Female` int(11) DEFAULT '0',
  `MortalityDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `mortality`
--
DELIMITER $$
CREATE TRIGGER `mortalitydecrspst` BEFORE INSERT ON `mortality` FOR EACH ROW BEGIN

IF EXISTS ( SELECT strain from census WHERE strain = NEW.Strain) THEN 

	Update census SET census.Male=census.Male - NEW.MALE, 

		census.Female=census.Female-NEW.Female 

	WHERE census.strain= NEW.strain AND census.Stocktype= NEW.StockType;

ELSE

 	Update census SET census.Male=census.Male - NEW.MALE, 

		census.Female=census.Female-NEW.Female  

	WHERE census.Species= NEW.Species AND census.Stocktype= NEW.StockType;

END IF;

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `mortupdatedecrspst` BEFORE UPDATE ON `mortality` FOR EACH ROW BEGIN

IF EXISTS ( SELECT strain from census WHERE strain = NEW.Strain) THEN 

	Update census SET census.Male=census.Male - (NEW.MALE - OLD.MALE), 

		census.Female=census.Female - (NEW.Female - OLD.Female)

	WHERE census.strain= NEW.strain AND census.Stocktype= NEW.StockType;

ELSE

 	Update census SET census.Male=census.Male - (NEW.MALE - OLD.MALE), 

		census.Female=census.Female-(NEW.Female - OLD.Female)  

	WHERE census.Species= NEW.Species AND census.Stocktype= NEW.StockType;

END IF;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `production`
--

CREATE TABLE `production` (
  `ProductionNo` bigint(20) NOT NULL,
  `ProductionCode` varchar(40) NOT NULL,
  `Species` varchar(80) NOT NULL,
  `strain` varchar(100) NOT NULL,
  `StockType` varchar(20) NOT NULL,
  `MALE` int(11) DEFAULT '0',
  `Female` int(11) DEFAULT '0',
  `ProductionDate` date NOT NULL,
  `BredDate` date NOT NULL,
  `WeanDate` date NOT NULL,
  `Genotype` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `projectanimal`
--

CREATE TABLE `projectanimal` (
  `EntryNumber` bigint(20) NOT NULL,
  `ProjectCode` varchar(150) NOT NULL,
  `SpStrain` varchar(100) NOT NULL,
  `Gender` varchar(7) NOT NULL,
  `Weight_Age` varchar(30) DEFAULT NULL,
  `NoAnimal` int(11) NOT NULL,
  `IssueYear` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `projectincharge`
--

CREATE TABLE `projectincharge` (
  `Piname` varchar(80) NOT NULL,
  `PiDesignation` varchar(100) DEFAULT NULL,
  `PiDepartment` varchar(100) DEFAULT NULL,
  `Piphone` varchar(20) NOT NULL,
  `Pimobile` varchar(15) DEFAULT NULL,
  `PiEmail` varchar(350) NOT NULL,
  `PiExperience` varchar(100) DEFAULT NULL,
  `PiPasscode` varchar(100) NOT NULL,
  `Role` varchar(40) NOT NULL,
  `PiAddress` varchar(500) NOT NULL,
  `Pin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projectincharge`
--

INSERT INTO `projectincharge` (`Piname`, `PiDesignation`, `PiDepartment`, `Piphone`, `Pimobile`, `PiEmail`, `PiExperience`, `PiPasscode`, `Role`, `PiAddress`, `Pin`) VALUES
('User', 'user_designation', 'user-department', '', '000000000', 'User@gmail.com', '', '713d266a136ab9d9a9ae8900c87ed0daac5e4149', 'Incharge Animal Facility', 'User Address', '000000'),
('User_PI', 'User_PI', 'User_PI', '', '', 'User_PI@gmail.com', '', 'cf15d685901a69d56388a077aa32289a54e6b943', 'Principal Investigator', 'User_PI', '');

-- --------------------------------------------------------

--
-- Table structure for table `projectmember`
--

CREATE TABLE `projectmember` (
  `ProjectCode` varchar(150) NOT NULL,
  `pmName` varchar(80) NOT NULL,
  `pmDesignation` varchar(100) DEFAULT NULL,
  `pmDepartment` varchar(100) DEFAULT NULL,
  `pmPhone` varchar(20) NOT NULL,
  `pmMobile` varchar(15) DEFAULT NULL,
  `pmEmail` varchar(350) NOT NULL,
  `pmExperience` varchar(100) DEFAULT NULL,
  `pmPasscode` varchar(100) NOT NULL,
  `pmAddress` varchar(500) NOT NULL,
  `pmPin` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `author` varchar(350) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `ProjectCode` varchar(150) NOT NULL,
  `ProjectName` varchar(500) NOT NULL,
  `PrincipalInvestigator` varchar(80) NOT NULL,
  `ApprovalDate` date NOT NULL,
  `FromDate` date NOT NULL,
  `ToDate` date NOT NULL,
  `PiEmail` varchar(350) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `author` varchar(200) NOT NULL,
  `IeacApprove` date NOT NULL,
  `Remarks` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rejection`
--

CREATE TABLE `rejection` (
  `RejectNumber` bigint(20) NOT NULL,
  `IndentNumber` bigint(20) NOT NULL,
  `MSG` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `responseanimal`
--

CREATE TABLE `responseanimal` (
  `ResponseEntryId` bigint(20) NOT NULL,
  `ResponseNumber` bigint(20) NOT NULL,
  `SPStrain` varchar(100) NOT NULL,
  `Gender` varchar(7) NOT NULL,
  `Weight_Age` varchar(30) DEFAULT NULL,
  `NoAnimal` int(11) NOT NULL,
  `IndentNumber` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `responsenew`
--

CREATE TABLE `responsenew` (
  `ResponseNumber` bigint(20) NOT NULL,
  `IndentNumber` bigint(20) NOT NULL,
  `DateSupply` date NOT NULL,
  `TimeSupply` time NOT NULL,
  `AIFCode` varchar(20) NOT NULL,
  `DeliveryPoint` varchar(200) NOT NULL,
  `TAName` varchar(80) DEFAULT NULL,
  `MSG` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `RoomName` varchar(20) NOT NULL,
  `Status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sanimal`
--

CREATE TABLE `sanimal` (
  `EntrySaleNumber` bigint(20) NOT NULL,
  `SaleID` bigint(20) NOT NULL,
  `Species` varchar(80) NOT NULL,
  `strain` varchar(100) DEFAULT NULL,
  `StockType` varchar(20) NOT NULL,
  `MALE` int(11) DEFAULT '0',
  `Female` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `sanimal`
--
DELIMITER $$
CREATE TRIGGER `saledecrspst` BEFORE INSERT ON `sanimal` FOR EACH ROW BEGIN

IF EXISTS ( SELECT strain from census WHERE strain = NEW.Strain) THEN 

	Update census SET census.Male=census.Male - NEW.MALE, 

		census.Female=census.Female-NEW.Female 

	WHERE census.strain= NEW.strain AND census.Stocktype= NEW.StockType;

ELSE

 	Update census SET census.Male=census.Male - NEW.MALE, 

		census.Female=census.Female-NEW.Female  

	WHERE census.Species= NEW.Species AND census.Stocktype= NEW.StockType;

END IF;

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `saleupdatedecrspst` BEFORE UPDATE ON `sanimal` FOR EACH ROW BEGIN

IF EXISTS ( SELECT strain from census WHERE strain = NEW.Strain) THEN 

	Update census SET census.Male=census.Male - (NEW.MALE - OLD.MALE), 

		census.Female=census.Female-(NEW.Female - OLD.Female)

	WHERE census.strain= NEW.strain AND census.Stocktype= NEW.StockType;

ELSE

 	Update census SET census.Male=census.Male - (NEW.MALE - OLD.MALE), 

		census.Female=census.Female-(NEW.Female - OLD.Female)  

	WHERE census.Species= NEW.Species AND census.Stocktype= NEW.StockType;

END IF;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `name` varchar(300) NOT NULL,
  `supplierID` varchar(310) NOT NULL,
  `cType` varchar(200) NOT NULL,
  `status` varchar(20) DEFAULT 'Active',
  `mobile1` varchar(15) DEFAULT NULL,
  `mobile2` varchar(15) DEFAULT NULL,
  `phone1` varchar(20) DEFAULT NULL,
  `phone2` varchar(20) DEFAULT NULL,
  `email1` varchar(350) DEFAULT NULL,
  `email2` varchar(350) DEFAULT NULL,
  `region` varchar(50) NOT NULL,
  `cState` varchar(150) NOT NULL,
  `city` varchar(150) NOT NULL,
  `adderss` varchar(500) NOT NULL,
  `pin` varchar(20) NOT NULL,
  `cRegNum` varchar(100) NOT NULL,
  `cRdate` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `author` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supply`
--

CREATE TABLE `supply` (
  `SupplyID` bigint(20) NOT NULL,
  `SupplyTo` varchar(40) NOT NULL,
  `Supplydate` date NOT NULL,
  `SupplyFrom` varchar(40) NOT NULL,
  `SupplyBillNo` varchar(200) DEFAULT NULL,
  `PorT` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplyanimal`
--

CREATE TABLE `supplyanimal` (
  `EntrySupplyNumber` bigint(20) NOT NULL,
  `SupplyID` bigint(20) NOT NULL,
  `Species` varchar(80) NOT NULL,
  `strain` varchar(1000) DEFAULT NULL,
  `StockType` varchar(20) NOT NULL,
  `MALE` int(11) DEFAULT '0',
  `Female` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `supplyanimal`
--
DELIMITER $$
CREATE TRIGGER `Supplydecrspst` BEFORE INSERT ON `supplyanimal` FOR EACH ROW BEGIN

IF EXISTS ( SELECT strain from census WHERE strain = NEW.Strain) THEN 

	Update census SET census.Male=census.Male - NEW.MALE, 

		census.Female=census.Female-NEW.Female 

	WHERE census.strain= NEW.strain AND census.Stocktype= NEW.StockType;

ELSE

 	Update census SET census.Male=census.Male - NEW.MALE, 

		census.Female=census.Female-NEW.Female  

	WHERE census.Species= NEW.Species AND census.Stocktype= NEW.StockType;

END IF;

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `Suppupdatedecrspst` BEFORE UPDATE ON `supplyanimal` FOR EACH ROW BEGIN

IF EXISTS ( SELECT strain from census WHERE strain = NEW.Strain) THEN 

	Update census SET census.Male=census.Male - (NEW.MALE - OLD.MALE), 

		census.Female=census.Female-(NEW.Female - OLD.Female)

	WHERE census.strain= NEW.strain AND census.Stocktype= NEW.StockType;

ELSE

 	Update census SET census.Male=census.Male - (NEW.MALE - OLD.MALE), 

		census.Female=census.Female-(NEW.Female - OLD.Female) 

	WHERE census.Species= NEW.Species AND census.Stocktype= NEW.StockType;

END IF;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `temperature`
--

CREATE TABLE `temperature` (
  `EntryNumber` bigint(20) NOT NULL,
  `RoomNo` varchar(20) NOT NULL,
  `EntryDate` date NOT NULL,
  `EntryTime` time NOT NULL,
  `MinTemperature` float NOT NULL,
  `MaxTemperature` float NOT NULL,
  `Humidity` float NOT NULL,
  `Lintensity` float DEFAULT '0',
  `Avelocity` float DEFAULT '0',
  `Sound` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `treatmentregister`
--

CREATE TABLE `treatmentregister` (
  `TreatmentID` bigint(20) NOT NULL,
  `TreatmentDate` date NOT NULL,
  `RoomNo` varchar(20) NOT NULL,
  `Species` varchar(80) NOT NULL,
  `strain` varchar(100) NOT NULL,
  `ClinicalSigns` varchar(400) NOT NULL,
  `Treatment` varchar(400) NOT NULL,
  `TreatmentBy` varchar(80) NOT NULL,
  `idanimal` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `FName` varchar(40) NOT NULL,
  `LName` varchar(40) NOT NULL,
  `EmailID` varchar(350) NOT NULL,
  `Contact` varchar(20) NOT NULL,
  `UserType` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ahadmin`
--
ALTER TABLE `ahadmin`
  ADD PRIMARY KEY (`AEmail`);

--
-- Indexes for table `anbuyer`
--
ALTER TABLE `anbuyer`
  ADD PRIMARY KEY (`BCode`);

--
-- Indexes for table `animalhouse`
--
ALTER TABLE `animalhouse`
  ADD PRIMARY KEY (`RegNo`);

--
-- Indexes for table `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`AnimalID`);

--
-- Indexes for table `ansupplier`
--
ALTER TABLE `ansupplier`
  ADD PRIMARY KEY (`SCode`);

--
-- Indexes for table `census`
--
ALTER TABLE `census`
  ADD PRIMARY KEY (`CensusID`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`clientID`);

--
-- Indexes for table `cpcseanominee`
--
ALTER TABLE `cpcseanominee`
  ADD PRIMARY KEY (`CEmail`,`Ftenure`,`Ttenure`,`Ctype`);

--
-- Indexes for table `cuser`
--
ALTER TABLE `cuser`
  ADD PRIMARY KEY (`Email`);

--
-- Indexes for table `disposeanimal`
--
ALTER TABLE `disposeanimal`
  ADD PRIMARY KEY (`EntryNo`),
  ADD KEY `FK_DisposeAnimal` (`DisposeNumber`);

--
-- Indexes for table `disposeform`
--
ALTER TABLE `disposeform`
  ADD PRIMARY KEY (`DisposeNumber`),
  ADD KEY `FK_ProjectDispose` (`Projectcode`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`DocumentID`);

--
-- Indexes for table `experimentanimal`
--
ALTER TABLE `experimentanimal`
  ADD PRIMARY KEY (`ExperimentID`);

--
-- Indexes for table `experimentationanimal`
--
ALTER TABLE `experimentationanimal`
  ADD PRIMARY KEY (`EntryNo`),
  ADD KEY `FK_ExperimentationAnimal` (`ExperimentationNumber`);

--
-- Indexes for table `experimentationform`
--
ALTER TABLE `experimentationform`
  ADD PRIMARY KEY (`ExperimentationNumber`),
  ADD KEY `FK_ProjectExperimentation` (`Projectcode`);

--
-- Indexes for table `forgot_pass`
--
ALTER TABLE `forgot_pass`
  ADD PRIMARY KEY (`emailId`);

--
-- Indexes for table `fsale`
--
ALTER TABLE `fsale`
  ADD PRIMARY KEY (`SaleID`);

--
-- Indexes for table `fumigationregister`
--
ALTER TABLE `fumigationregister`
  ADD PRIMARY KEY (`FumigationID`);

--
-- Indexes for table `geneticmonitoring`
--
ALTER TABLE `geneticmonitoring`
  ADD PRIMARY KEY (`GeneticMonitoringID`);

--
-- Indexes for table `iaecmember`
--
ALTER TABLE `iaecmember`
  ADD PRIMARY KEY (`IEmail`,`Ftenure`,`Ttenure`,`Itype`);

--
-- Indexes for table `indentanimal`
--
ALTER TABLE `indentanimal`
  ADD PRIMARY KEY (`EntryNo`),
  ADD KEY `FK_IndentAnimal` (`IndentNumber`);

--
-- Indexes for table `indentform`
--
ALTER TABLE `indentform`
  ADD PRIMARY KEY (`IndentNumber`),
  ADD KEY `FK_ProjectIndent` (`Projectcode`);

--
-- Indexes for table `issuedanimal`
--
ALTER TABLE `issuedanimal`
  ADD PRIMARY KEY (`IssueID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`EmailID`);

--
-- Indexes for table `meeting`
--
ALTER TABLE `meeting`
  ADD PRIMARY KEY (`MeetingID`);

--
-- Indexes for table `microbialsampling`
--
ALTER TABLE `microbialsampling`
  ADD PRIMARY KEY (`MSamplingID`);

--
-- Indexes for table `mortality`
--
ALTER TABLE `mortality`
  ADD PRIMARY KEY (`MortalityNo`);

--
-- Indexes for table `production`
--
ALTER TABLE `production`
  ADD PRIMARY KEY (`ProductionNo`);

--
-- Indexes for table `projectanimal`
--
ALTER TABLE `projectanimal`
  ADD PRIMARY KEY (`EntryNumber`),
  ADD KEY `FK_ProjectAnimal` (`ProjectCode`);

--
-- Indexes for table `projectincharge`
--
ALTER TABLE `projectincharge`
  ADD PRIMARY KEY (`PiEmail`);

--
-- Indexes for table `projectmember`
--
ALTER TABLE `projectmember`
  ADD PRIMARY KEY (`pmEmail`),
  ADD KEY `FK_ProjectMember` (`ProjectCode`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`ProjectCode`);

--
-- Indexes for table `rejection`
--
ALTER TABLE `rejection`
  ADD PRIMARY KEY (`RejectNumber`);

--
-- Indexes for table `responseanimal`
--
ALTER TABLE `responseanimal`
  ADD PRIMARY KEY (`ResponseEntryId`),
  ADD KEY `FK_ResponseAnimal` (`ResponseNumber`);

--
-- Indexes for table `responsenew`
--
ALTER TABLE `responsenew`
  ADD PRIMARY KEY (`ResponseNumber`),
  ADD KEY `FK_IndentResponse` (`IndentNumber`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`RoomName`);

--
-- Indexes for table `sanimal`
--
ALTER TABLE `sanimal`
  ADD PRIMARY KEY (`EntrySaleNumber`),
  ADD KEY `FK_SaleAnimal` (`SaleID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplierID`);

--
-- Indexes for table `supply`
--
ALTER TABLE `supply`
  ADD PRIMARY KEY (`SupplyID`);

--
-- Indexes for table `supplyanimal`
--
ALTER TABLE `supplyanimal`
  ADD PRIMARY KEY (`EntrySupplyNumber`),
  ADD KEY `FK_SupplyAnimal` (`SupplyID`);

--
-- Indexes for table `temperature`
--
ALTER TABLE `temperature`
  ADD PRIMARY KEY (`EntryNumber`);

--
-- Indexes for table `treatmentregister`
--
ALTER TABLE `treatmentregister`
  ADD PRIMARY KEY (`TreatmentID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`EmailID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `animals`
--
ALTER TABLE `animals`
  MODIFY `AnimalID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `census`
--
ALTER TABLE `census`
  MODIFY `CensusID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `disposeanimal`
--
ALTER TABLE `disposeanimal`
  MODIFY `EntryNo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `disposeform`
--
ALTER TABLE `disposeform`
  MODIFY `DisposeNumber` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `DocumentID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `experimentanimal`
--
ALTER TABLE `experimentanimal`
  MODIFY `ExperimentID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `experimentationanimal`
--
ALTER TABLE `experimentationanimal`
  MODIFY `EntryNo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `experimentationform`
--
ALTER TABLE `experimentationform`
  MODIFY `ExperimentationNumber` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fsale`
--
ALTER TABLE `fsale`
  MODIFY `SaleID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fumigationregister`
--
ALTER TABLE `fumigationregister`
  MODIFY `FumigationID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `geneticmonitoring`
--
ALTER TABLE `geneticmonitoring`
  MODIFY `GeneticMonitoringID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `indentanimal`
--
ALTER TABLE `indentanimal`
  MODIFY `EntryNo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `indentform`
--
ALTER TABLE `indentform`
  MODIFY `IndentNumber` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `issuedanimal`
--
ALTER TABLE `issuedanimal`
  MODIFY `IssueID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting`
--
ALTER TABLE `meeting`
  MODIFY `MeetingID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `microbialsampling`
--
ALTER TABLE `microbialsampling`
  MODIFY `MSamplingID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mortality`
--
ALTER TABLE `mortality`
  MODIFY `MortalityNo` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `production`
--
ALTER TABLE `production`
  MODIFY `ProductionNo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projectanimal`
--
ALTER TABLE `projectanimal`
  MODIFY `EntryNumber` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `rejection`
--
ALTER TABLE `rejection`
  MODIFY `RejectNumber` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `responseanimal`
--
ALTER TABLE `responseanimal`
  MODIFY `ResponseEntryId` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `responsenew`
--
ALTER TABLE `responsenew`
  MODIFY `ResponseNumber` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sanimal`
--
ALTER TABLE `sanimal`
  MODIFY `EntrySaleNumber` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supply`
--
ALTER TABLE `supply`
  MODIFY `SupplyID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplyanimal`
--
ALTER TABLE `supplyanimal`
  MODIFY `EntrySupplyNumber` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temperature`
--
ALTER TABLE `temperature`
  MODIFY `EntryNumber` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `treatmentregister`
--
ALTER TABLE `treatmentregister`
  MODIFY `TreatmentID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `disposeanimal`
--
ALTER TABLE `disposeanimal`
  ADD CONSTRAINT `FK_DisposeAnimal` FOREIGN KEY (`DisposeNumber`) REFERENCES `disposeform` (`DisposeNumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `disposeform`
--
ALTER TABLE `disposeform`
  ADD CONSTRAINT `FK_ProjectDispose` FOREIGN KEY (`Projectcode`) REFERENCES `projects` (`ProjectCode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `experimentationanimal`
--
ALTER TABLE `experimentationanimal`
  ADD CONSTRAINT `FK_ExperimentationAnimal` FOREIGN KEY (`ExperimentationNumber`) REFERENCES `experimentationform` (`ExperimentationNumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `experimentationform`
--
ALTER TABLE `experimentationform`
  ADD CONSTRAINT `FK_ProjectExperimentation` FOREIGN KEY (`Projectcode`) REFERENCES `projects` (`ProjectCode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `indentanimal`
--
ALTER TABLE `indentanimal`
  ADD CONSTRAINT `FK_IndentAnimal` FOREIGN KEY (`IndentNumber`) REFERENCES `indentform` (`IndentNumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `indentform`
--
ALTER TABLE `indentform`
  ADD CONSTRAINT `FK_ProjectIndent` FOREIGN KEY (`Projectcode`) REFERENCES `projects` (`ProjectCode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `projectanimal`
--
ALTER TABLE `projectanimal`
  ADD CONSTRAINT `FK_ProjectAnimal` FOREIGN KEY (`ProjectCode`) REFERENCES `projects` (`ProjectCode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `projectmember`
--
ALTER TABLE `projectmember`
  ADD CONSTRAINT `FK_ProjectMember` FOREIGN KEY (`ProjectCode`) REFERENCES `projects` (`ProjectCode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `responseanimal`
--
ALTER TABLE `responseanimal`
  ADD CONSTRAINT `FK_ResponseAnimal` FOREIGN KEY (`ResponseNumber`) REFERENCES `responsenew` (`ResponseNumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `responsenew`
--
ALTER TABLE `responsenew`
  ADD CONSTRAINT `FK_IndentResponse` FOREIGN KEY (`IndentNumber`) REFERENCES `indentform` (`IndentNumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sanimal`
--
ALTER TABLE `sanimal`
  ADD CONSTRAINT `FK_SaleAnimal` FOREIGN KEY (`SaleID`) REFERENCES `fsale` (`SaleID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `supplyanimal`
--
ALTER TABLE `supplyanimal`
  ADD CONSTRAINT `FK_SupplyAnimal` FOREIGN KEY (`SupplyID`) REFERENCES `supply` (`SupplyID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
