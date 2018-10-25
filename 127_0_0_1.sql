-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2018 at 10:36 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `panaceadb`
--
CREATE DATABASE IF NOT EXISTS `panaceadb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `panaceadb`;

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_awardhistory`
--

CREATE TABLE `hr_general_awardhistory` (
  `id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `EmployeeId` varchar(50) NOT NULL,
  `AwardName` varchar(100) NOT NULL,
  `Institution` varchar(100) NOT NULL,
  `InstitutionAddress` varchar(200) NOT NULL,
  `IssuedDate` date NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedById` varchar(50) NOT NULL,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Remarks` varchar(100) NOT NULL,
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_certificates`
--

CREATE TABLE `hr_general_certificates` (
  `id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Entitlement` varchar(50) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedById` varchar(50) NOT NULL,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Remarks` varchar(100) NOT NULL,
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_certifications`
--

CREATE TABLE `hr_general_certifications` (
  `id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `EmployeeId` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `IssuedInstitution` varchar(100) NOT NULL,
  `InclusiveDateFrom` varchar(50) NOT NULL,
  `InclusiveDateTo` varchar(50) NOT NULL,
  `IssuedDate` date NOT NULL,
  `ValidityExpiration` date NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedById` varchar(50) NOT NULL,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Remarks` varchar(100) NOT NULL,
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_changehistory`
--

CREATE TABLE `hr_general_changehistory` (
  `Id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `EmployeeId` varchar(50) NOT NULL,
  `DepartmentId` int(8) NOT NULL,
  `PositionId` int(8) NOT NULL,
  `EmpTypeId` int(8) NOT NULL,
  `SiteId` int(8) NOT NULL,
  `CostCenterId` int(8) NOT NULL,
  `DateChanged` date NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_costcenters`
--

CREATE TABLE `hr_general_costcenters` (
  `Id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_darecords`
--

CREATE TABLE `hr_general_darecords` (
  `Id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `OffenseId` int(1) NOT NULL,
  `OffenseDuration` varchar(100) NOT NULL,
  `DisciplinaryActions` varchar(200) NOT NULL,
  `InclusiveDateFrom` date NOT NULL,
  `InclusiveDateTo` date NOT NULL,
  `DepartmentId` int(8) NOT NULL,
  `PositionId` int(8) NOT NULL,
  `SiteId` int(8) NOT NULL,
  `EmpTypeId` int(8) NOT NULL,
  `CostCenterId` int(11) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_departments`
--

CREATE TABLE `hr_general_departments` (
  `Id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_dependents`
--

CREATE TABLE `hr_general_dependents` (
  `id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `EmployeeId` varchar(50) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `Relation` varchar(50) NOT NULL,
  `Birthdate` date NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedById` varchar(50) NOT NULL,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_employees`
--

CREATE TABLE `hr_general_employees` (
  `Id` char(36) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `Code` varchar(191) NOT NULL,
  `LastName` varchar(191) NOT NULL,
  `MiddleName` varchar(191) NOT NULL,
  `FirstName` varchar(191) NOT NULL,
  `Suffix` varchar(10) NOT NULL,
  `Birthdate` date NOT NULL,
  `Birthplace` varchar(1000) NOT NULL,
  `CivilStatus` varchar(100) NOT NULL,
  `NationalityId` int(11) NOT NULL,
  `DepartmentId` int(11) NOT NULL,
  `CostCenterId` int(11) NOT NULL,
  `PositionId` int(11) NOT NULL,
  `EmployeeTypeId` int(11) NOT NULL,
  `EmployeeRankId` int(11) NOT NULL,
  `EmployeeGroupId` int(11) NOT NULL,
  `Leader1` varchar(50) NOT NULL,
  `Leader2` varchar(50) NOT NULL,
  `Leader3` varchar(50) NOT NULL,
  `Leader4` varchar(50) NOT NULL,
  `Leader5` varchar(50) NOT NULL,
  `Leader6` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `TelNo` varchar(191) NOT NULL,
  `MobileNo` varchar(191) NOT NULL,
  `PersonalEmail` varchar(191) NOT NULL,
  `CompanyEmail` varchar(191) NOT NULL,
  `HouseNo` varchar(10) NOT NULL,
  `Address1` varchar(191) NOT NULL,
  `Address2` varchar(191) NOT NULL,
  `Address3` varchar(191) NOT NULL,
  `Address4` varchar(191) NOT NULL,
  `Address5` varchar(191) NOT NULL,
  `Address6` varchar(191) NOT NULL,
  `CityId` int(11) NOT NULL,
  `ProvinceId` int(11) NOT NULL,
  `ZipCode` varchar(191) NOT NULL,
  `SiteId` int(11) NOT NULL,
  `VersionNo` int(11) NOT NULL DEFAULT '1',
  `Photopath` varchar(191) NOT NULL,
  `Tagline` varchar(1000) NOT NULL,
  `Bannerpath` varchar(100) NOT NULL,
  `TIN` varchar(191) NOT NULL,
  `SSS` varchar(100) NOT NULL,
  `PHILHEALTH` varchar(100) NOT NULL,
  `PAGIBIG` varchar(100) NOT NULL,
  `SubsidiaryId` int(11) NOT NULL,
  `Migrated` tinyint(1) NOT NULL,
  `DefaultTaxCodeId` int(11) NOT NULL,
  `CreatedById` varchar(191) NOT NULL,
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedById` varchar(191) NOT NULL,
  `ModifiedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Remarks` longtext NOT NULL,
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_emptypes`
--

CREATE TABLE `hr_general_emptypes` (
  `Id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_leaves`
--

CREATE TABLE `hr_general_leaves` (
  `id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `IconPath` varchar(100) NOT NULL,
  `BannerPath` varchar(100) NOT NULL,
  `ConditionType` varchar(50) NOT NULL,
  `ConditionValue` varchar(50) NOT NULL,
  `AttachmentRequired` tinyint(1) NOT NULL,
  `AttachmentRequiredSingleDay` tinyint(1) NOT NULL,
  `RequiredAttachment` varchar(100) NOT NULL,
  `RequiredApprovalNo` int(11) NOT NULL,
  `RequiredRemarks` tinyint(1) NOT NULL DEFAULT '0',
  `Notes` text NOT NULL,
  `IsEarnable` tinyint(1) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DisplayOrder` int(11) NOT NULL,
  `AddApprover1` varchar(50) NOT NULL,
  `AddApprover2` varchar(50) NOT NULL,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_loans`
--

CREATE TABLE `hr_general_loans` (
  `id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Notes` text NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `AddApprover1` varchar(50) NOT NULL,
  `AddApprover2` varchar(50) NOT NULL,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_offenses`
--

CREATE TABLE `hr_general_offenses` (
  `Id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_positions`
--

CREATE TABLE `hr_general_positions` (
  `Id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_ranks`
--

CREATE TABLE `hr_general_ranks` (
  `Id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_schoolhistory`
--

CREATE TABLE `hr_general_schoolhistory` (
  `id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `EmployeeId` varchar(50) NOT NULL,
  `SchoolName` varchar(100) NOT NULL,
  `SchoolAddress` varchar(200) NOT NULL,
  `Course` int(8) NOT NULL,
  `InclusiveDateFrom` varchar(50) NOT NULL,
  `InclusiveDateTo` varchar(50) NOT NULL,
  `Awards` varchar(200) NOT NULL,
  `Degree` int(8) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedById` varchar(50) NOT NULL,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Remarks` varchar(100) NOT NULL,
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_sites`
--

CREATE TABLE `hr_general_sites` (
  `Id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_skills`
--

CREATE TABLE `hr_general_skills` (
  `id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_traininghistory`
--

CREATE TABLE `hr_general_traininghistory` (
  `id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `EmployeeId` varchar(50) NOT NULL,
  `TrainingTitle` varchar(100) NOT NULL,
  `Institution` varchar(100) NOT NULL,
  `InstitutionAddress` varchar(200) NOT NULL,
  `InclusiveDateFrom` varchar(50) NOT NULL,
  `InclusiveDateTo` varchar(50) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedById` varchar(50) NOT NULL,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hr_general_workhistory`
--

CREATE TABLE `hr_general_workhistory` (
  `id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `EmployeeId` varchar(50) NOT NULL,
  `EmployerName` varchar(100) NOT NULL,
  `EmployerAddress` varchar(200) NOT NULL,
  `Designation` varchar(50) NOT NULL,
  `InclusiveDateFrom` varchar(50) NOT NULL,
  `InclusiveDateTo` varchar(50) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedById` varchar(50) NOT NULL,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(10) UNSIGNED NOT NULL,
  `UserId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PasswordHash` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `RecordedAt` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_companies`
--

CREATE TABLE `system_companies` (
  `Id` varchar(50) NOT NULL,
  `CompanyName` varchar(100) NOT NULL,
  `CompanyAddress` varchar(200) NOT NULL,
  `ContactPerson` varchar(200) NOT NULL,
  `Designation` varchar(100) NOT NULL,
  `IndustryType` int(8) NOT NULL,
  `ContractType` int(11) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_companies`
--

INSERT INTO `system_companies` (`Id`, `CompanyName`, `CompanyAddress`, `ContactPerson`, `Designation`, `IndustryType`, `ContractType`, `CreatedById`, `ModifiedById`, `CreatedAt`, `ModifiedAt`, `VersionNo`, `Active`) VALUES
('a73546e3-0aaf-432e-98d4-ca25b2077525', 'Businexus IT Solutions Inc.', 'Makati City', 'John Perry Carpio', 'President', 11, 0, 'ADMIN', 'ADMIN', '2018-10-20 11:42:16', '2018-10-20 11:42:16', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_company_services`
--

CREATE TABLE `system_company_services` (
  `Id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `ServiceId` varchar(50) NOT NULL,
  `ContractType` int(8) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_company_services`
--

INSERT INTO `system_company_services` (`Id`, `CompanyId`, `ServiceId`, `ContractType`, `CreatedById`, `ModifiedById`, `CreatedAt`, `ModifiedAt`, `VersionNo`, `Active`) VALUES
(1, 'a73546e3-0aaf-432e-98d4-ca25b2077525', '1', 0, 'ADMIN', 'ADMIN', '2018-10-20 12:09:40', '2018-10-20 12:09:40', 1, 1),
(2, 'a73546e3-0aaf-432e-98d4-ca25b2077525', '2', 0, 'ADMIN', 'ADMIN', '2018-10-20 12:09:40', '2018-10-20 12:09:40', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_contracts`
--

CREATE TABLE `system_contracts` (
  `Id` int(11) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `system_industries`
--

CREATE TABLE `system_industries` (
  `Id` int(11) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_industries`
--

INSERT INTO `system_industries` (`Id`, `Code`, `Name`, `Description`, `CreatedById`, `ModifiedById`, `CreatedAt`, `ModifiedAt`, `VersionNo`, `Active`) VALUES
(1, 'AGRI', 'Agriculture, Hunting, and Forestry', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1),
(2, 'FISH', 'Fishing', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1),
(3, 'MINE', 'Mining and Quarrying', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1),
(4, 'MANUF', 'Manufacturing', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1),
(5, 'UTIL', 'Electricity, Gas, and Water', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1),
(6, 'CONST', 'Construction', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1),
(7, 'TRADE', 'Wholesale and Retail Trade', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1),
(8, 'HOTEL', 'Hotels and Restaurants', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1),
(9, 'HSC', 'Transport, Storage, and Communication', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1),
(10, 'FINCE', 'Financial Intermediation', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1),
(11, 'BPO', 'Real Estate, Renting, and Business Services', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1),
(12, 'EDUC', 'Private Education', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1),
(13, 'HEALTH', 'Health and Social Work', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1),
(14, 'COMM', 'Other Community, Social, and Personal Services', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1),
(15, 'ALL', 'All Other Sectors', '', 'ADMIN', 'ADMIN', '2018-10-19 13:23:58', '2018-10-19 13:23:58', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_logs`
--

CREATE TABLE `system_logs` (
  `id` int(11) NOT NULL,
  `Timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UserId` varchar(50) NOT NULL,
  `Action` varchar(191) NOT NULL,
  `Entity` varchar(191) NOT NULL,
  `ActionData` text NOT NULL,
  `IpAddress` varchar(191) NOT NULL,
  `Device` varchar(191) NOT NULL,
  `Platform` varchar(30) NOT NULL,
  `UserAgent` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_logs`
--

INSERT INTO `system_logs` (`id`, `Timestamp`, `UserId`, `Action`, `Entity`, `ActionData`, `IpAddress`, `Device`, `Platform`, `UserAgent`) VALUES
(1, '2018-10-19 17:16:13', '', 'Login', 'Failed Authentication', '\"<p>The Email field is required.<\\/p>\\n<p>The Password field is required.<\\/p>\\n\"', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(2, '2018-10-19 17:22:59', '', 'Login', 'Failed Authentication', '\"<p>The Email field is required.<\\/p>\\n<p>The Password field is required.<\\/p>\\n\"', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(3, '2018-10-19 17:23:08', '', 'Login', 'Failed Authentication', '\"<p>The Email field is required.<\\/p>\\n<p>The Password field is required.<\\/p>\\n\"', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(4, '2018-10-19 17:49:58', '', 'Login', 'Failed Authentication', '\"<p>The Email field is required.<\\/p>\\n<p>The Password field is required.<\\/p>\\n\"', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(5, '2018-10-19 17:50:22', '', 'Login', 'Failed Authentication', '\"<p>The Email field is required.<\\/p>\\n<p>The Password field is required.<\\/p>\\n\"', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(6, '2018-10-19 17:50:47', '', 'Login', 'Failed Authentication', '\"<p>The Email field is required.<\\/p>\\n<p>The Password field is required.<\\/p>\\n\"', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(7, '2018-10-19 17:53:14', '', 'Login', 'Failed Authentication', '\"<p>The Email field is required.<\\/p>\\n<p>The Password field is required.<\\/p>\\n\"', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(8, '2018-10-20 09:15:01', '', 'Login', 'Failed Authentication', '\"<p>The Email field is required.<\\/p>\\n<p>The Password field is required.<\\/p>\\n\"', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(9, '2018-10-20 09:17:06', '', 'Login', 'Failed Authentication', '\"<p>The Email field is required.<\\/p>\\n<p>The Password field is required.<\\/p>\\n\"', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(10, '2018-10-20 09:18:18', '', 'Login', 'Failed Authentication', '\"<p>The Email field is required.<\\/p>\\n<p>The Password field is required.<\\/p>\\n\"', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(11, '2018-10-20 09:18:57', '', 'Login', 'Failed Authentication', '\"<p>The Email field is required.<\\/p>\\n<p>The Password field is required.<\\/p>\\n\"', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(12, '2018-10-20 09:19:44', '', 'Login', 'Failed Authentication', '\"<p>The Email field is required.<\\/p>\\n<p>The Password field is required.<\\/p>\\n\"', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(13, '2018-10-20 09:19:47', '', 'Login', 'Failed Authentication', '\"<p>The Email field is required.<\\/p>\\n<p>The Password field is required.<\\/p>\\n\"', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(14, '2018-10-20 09:19:50', '', 'Login', 'Failed Authentication', '\"<p>The Email field is required.<\\/p>\\n<p>The Password field is required.<\\/p>\\n\"', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(15, '2018-10-20 09:20:32', '', 'Login', 'Failed Authentication', '\"<p>The Email field is required.<\\/p>\\n<p>The Password field is required.<\\/p>\\n\"', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(16, '2018-10-20 09:20:35', '', 'Login', 'Failed Authentication', '\"<p>The Password field is required.<\\/p>\\n\"', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(17, '2018-10-20 09:21:24', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"asd\",\"Password\":\"asd\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(18, '2018-10-20 09:23:00', '', 'Failed Login', 'Authentication', '{\"error\":\"Incorrect Password.\",\"UserName\":\"admin\",\"Password\":\"asdasd\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(19, '2018-10-20 09:25:11', '', 'Failed Login', 'Authentication', '{\"error\":\"Incorrect Password.\",\"UserName\":\"admin\",\"Password\":\"asdasd\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(20, '2018-10-20 09:25:17', '', 'Failed Login', 'Authentication', '{\"error\":\"Incorrect Password.\",\"UserName\":\"admin\",\"Password\":\"123456\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(21, '2018-10-20 09:26:26', '', 'Failed Login', 'Authentication', '{\"error\":\"You have no permission to access this tool. Please contact IT and Security Department\",\"UserName\":\"admin\",\"Password\":\"1234\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(22, '2018-10-20 10:26:32', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(23, '2018-10-20 10:26:35', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(24, '2018-10-20 10:26:36', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(25, '2018-10-20 10:26:37', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(26, '2018-10-20 10:26:38', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(27, '2018-10-20 10:26:38', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(28, '2018-10-20 10:26:38', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(29, '2018-10-20 10:26:38', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(30, '2018-10-20 10:26:38', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(31, '2018-10-20 10:26:38', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(32, '2018-10-20 10:26:39', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(33, '2018-10-20 10:26:39', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(34, '2018-10-20 10:26:39', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(35, '2018-10-20 10:26:39', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(36, '2018-10-20 10:26:39', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(37, '2018-10-20 10:26:39', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(38, '2018-10-20 10:26:40', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(39, '2018-10-20 10:26:40', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(40, '2018-10-20 10:26:40', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(41, '2018-10-20 10:26:40', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(42, '2018-10-20 10:26:41', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(43, '2018-10-20 10:26:41', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(44, '2018-10-20 10:26:41', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(45, '2018-10-20 10:26:41', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(46, '2018-10-20 10:26:41', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(47, '2018-10-20 10:26:42', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(48, '2018-10-20 10:26:42', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(49, '2018-10-20 10:26:42', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(50, '2018-10-20 10:26:42', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(51, '2018-10-20 10:26:42', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(52, '2018-10-20 10:26:43', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(53, '2018-10-20 10:26:43', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(54, '2018-10-20 10:26:43', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(55, '2018-10-20 10:26:43', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(56, '2018-10-20 10:28:36', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"\'\'\'456456%`\",\"Password\":\"dsf123\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(57, '2018-10-20 10:30:54', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"asdasdas\",\"Password\":\"dasdad\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(58, '2018-10-20 10:31:15', '', 'Failed Login', 'Authentication', '{\"error\":\"Account doesnt exist.\",\"UserName\":\"asdasda\",\"Password\":\"sdasdasd\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(59, '2018-10-20 11:23:44', '', 'Failed Login', 'Authentication', '{\"error\":\"Incorrect Password.\",\"UserName\":\"admin\",\"Password\":\"123456\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(60, '2018-10-20 11:23:51', '', 'Successful Login', 'Authentication', '{\"userid\":null,\"firstname\":null,\"lastname\":null,\"temp\":\"1\",\"empid\":null,\"email\":\"isystem20@gmail.com\",\"mobile\":null,\"company\":\"a73546e3-0aaf-432e-98d4-ca25b2077525\",\"country\":null,\"department\":null,\"venture\":null,\"channel\":null,\"position\":null,\"type\":null,\"group\":null,\"leader1\":null,\"leader2\":null,\"leader3\":null,\"leader4\":null,\"leader5\":null,\"leader6\":null,\"photo\":null,\"gender\":null,\"pemail\":null,\"cemail\":null,\"isadmin\":null,\"rankcode\":null,\"loginname\":\"admin\",\"isEmailActive\":null,\"ismodadmin\":null,\"access_all\":null,\"access_ro\":null,\"access_mod\":null,\"access_del\":null,\"access_print\":null,\"access_ex\":null,\"access_in\":null,\"moduleid\":null,\"access_level\":null,\"editshift\":null}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(61, '2018-10-20 11:24:05', '', 'Successful Login', 'Authentication', '{\"userid\":null,\"firstname\":null,\"lastname\":null,\"temp\":\"1\",\"empid\":null,\"email\":\"isystem20@gmail.com\",\"mobile\":null,\"company\":\"a73546e3-0aaf-432e-98d4-ca25b2077525\",\"country\":null,\"department\":null,\"venture\":null,\"channel\":null,\"position\":null,\"type\":null,\"group\":null,\"leader1\":null,\"leader2\":null,\"leader3\":null,\"leader4\":null,\"leader5\":null,\"leader6\":null,\"photo\":null,\"gender\":null,\"pemail\":null,\"cemail\":null,\"isadmin\":null,\"rankcode\":null,\"loginname\":\"admin\",\"isEmailActive\":null,\"ismodadmin\":null,\"access_all\":null,\"access_ro\":null,\"access_mod\":null,\"access_del\":null,\"access_print\":null,\"access_ex\":null,\"access_in\":null,\"moduleid\":null,\"access_level\":null,\"editshift\":null}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(62, '2018-10-20 11:33:59', '58fa037a-c504-451d-bc12-b505aa92d585', 'Successful Login', 'Authentication', '{\"userid\":\"58fa037a-c504-451d-bc12-b505aa92d585\",\"companyid\":\"a73546e3-0aaf-432e-98d4-ca25b2077525\",\"code\":\"9999\",\"firstname\":\"Administrator\",\"lastname\":\"\",\"loginname\":\"admin\",\"userlevel\":\"99\",\"passwordexp\":\"1\",\"fixedpass\":\"1\",\"temp\":\"1\",\"passdate\":\"2018-10-17\",\"peopleid\":\"\",\"email\":\"isystem20@gmail.com\",\"photo\":\"\",\"activecode\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(63, '2018-10-20 14:11:12', '58fa037a-c504-451d-bc12-b505aa92d585', 'Successful Login', 'Authentication', '{\"userid\":\"58fa037a-c504-451d-bc12-b505aa92d585\",\"companyid\":\"a73546e3-0aaf-432e-98d4-ca25b2077525\",\"code\":\"9999\",\"firstname\":\"Administrator\",\"lastname\":\"\",\"loginname\":\"admin\",\"userlevel\":\"99\",\"passwordexp\":\"1\",\"fixedpass\":\"1\",\"temp\":\"1\",\"passdate\":\"2018-10-17\",\"peopleid\":\"\",\"email\":\"isystem20@gmail.com\",\"photo\":\"\",\"activecode\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(64, '2018-10-20 14:38:58', '', 'Logout', 'Successful Logout', '\"{\\\"__ci_last_regenerate\\\":1540017376,\\\"companyid\\\":\\\"a73546e3-0aaf-432e-98d4-ca25b2077525\\\",\\\"code\\\":\\\"9999\\\",\\\"firstname\\\":\\\"Administrator\\\",\\\"lastname\\\":\\\"\\\",\\\"loginname\\\":\\\"admin\\\",\\\"userlevel\\\":\\\"99\\\",\\\"passwordexp\\\":\\\"1\\\",\\\"fixedpass\\\":\\\"1\\\",\\\"temp\\\":\\\"1\\\",\\\"passdate\\\":\\\"2018-10-17\\\",\\\"peopleid\\\":\\\"\\\",\\\"email\\\":\\\"isystem20@gmail.com\\\",\\\"photo\\\":\\\"\\\",\\\"activecode\\\":\\\"\\\"}\"', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(65, '2018-10-20 14:40:50', '58fa037a-c504-451d-bc12-b505aa92d585', 'Login', 'Successful Authentication', '{\"userid\":\"58fa037a-c504-451d-bc12-b505aa92d585\",\"companyid\":\"a73546e3-0aaf-432e-98d4-ca25b2077525\",\"code\":\"9999\",\"firstname\":\"Administrator\",\"lastname\":\"\",\"loginname\":\"admin\",\"userlevel\":\"99\",\"passwordexp\":\"1\",\"fixedpass\":\"1\",\"temp\":\"1\",\"passdate\":\"2018-10-17\",\"peopleid\":\"\",\"email\":\"isystem20@gmail.com\",\"photo\":\"\",\"activecode\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(66, '2018-10-20 14:44:15', '', 'Logout', 'Successful Logout', '\"{\\\"__ci_last_regenerate\\\":1540017854,\\\"companyid\\\":\\\"a73546e3-0aaf-432e-98d4-ca25b2077525\\\",\\\"code\\\":\\\"9999\\\",\\\"firstname\\\":\\\"Administrator\\\",\\\"lastname\\\":\\\"\\\",\\\"loginname\\\":\\\"admin\\\",\\\"userlevel\\\":\\\"99\\\",\\\"passwordexp\\\":\\\"1\\\",\\\"fixedpass\\\":\\\"1\\\",\\\"temp\\\":\\\"1\\\",\\\"passdate\\\":\\\"2018-10-17\\\",\\\"peopleid\\\":\\\"\\\",\\\"email\\\":\\\"isystem20@gmail.com\\\",\\\"photo\\\":\\\"\\\",\\\"activecode\\\":\\\"\\\"}\"', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(67, '2018-10-20 14:44:20', '', 'Failed Login', 'Authentication', '{\"error\":\"Incorrect Password.\",\"UserName\":\"admin\",\"Password\":\"1234asd\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(68, '2018-10-20 14:44:43', '58fa037a-c504-451d-bc12-b505aa92d585', 'Login', 'Successful Authentication', '{\"userid\":\"58fa037a-c504-451d-bc12-b505aa92d585\",\"companyid\":\"a73546e3-0aaf-432e-98d4-ca25b2077525\",\"code\":\"9999\",\"firstname\":\"Administrator\",\"lastname\":\"\",\"loginname\":\"admin\",\"userlevel\":\"99\",\"passwordexp\":\"1\",\"fixedpass\":\"1\",\"temp\":\"1\",\"passdate\":\"2018-10-17\",\"peopleid\":\"\",\"email\":\"isystem20@gmail.com\",\"photo\":\"\",\"activecode\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(69, '2018-10-20 14:44:57', '', 'Logout', 'Successful Logout', '\"{\\\"__ci_last_regenerate\\\":1540017854,\\\"companyid\\\":\\\"a73546e3-0aaf-432e-98d4-ca25b2077525\\\",\\\"code\\\":\\\"9999\\\",\\\"firstname\\\":\\\"Administrator\\\",\\\"lastname\\\":\\\"\\\",\\\"loginname\\\":\\\"admin\\\",\\\"userlevel\\\":\\\"99\\\",\\\"passwordexp\\\":\\\"1\\\",\\\"fixedpass\\\":\\\"1\\\",\\\"temp\\\":\\\"1\\\",\\\"passdate\\\":\\\"2018-10-17\\\",\\\"peopleid\\\":\\\"\\\",\\\"email\\\":\\\"isystem20@gmail.com\\\",\\\"photo\\\":\\\"\\\",\\\"activecode\\\":\\\"\\\"}\"', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(70, '2018-10-20 14:45:06', '', 'Failed Login', 'Authentication', '{\"error\":\"Invalid Subscription. \",\"UserName\":\"admin\",\"Password\":\"1234\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(71, '2018-10-20 14:45:10', '', 'Failed Login', 'Authentication', '{\"error\":\"Invalid Subscription. \",\"UserName\":\"admin\",\"Password\":\"1234\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(72, '2018-10-20 14:45:22', '58fa037a-c504-451d-bc12-b505aa92d585', 'Login', 'Successful Authentication', '{\"userid\":\"58fa037a-c504-451d-bc12-b505aa92d585\",\"companyid\":\"a73546e3-0aaf-432e-98d4-ca25b2077525\",\"code\":\"9999\",\"firstname\":\"Administrator\",\"lastname\":\"\",\"loginname\":\"admin\",\"userlevel\":\"99\",\"passwordexp\":\"1\",\"fixedpass\":\"1\",\"temp\":\"1\",\"passdate\":\"2018-10-17\",\"peopleid\":\"\",\"email\":\"isystem20@gmail.com\",\"photo\":\"\",\"activecode\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(73, '2018-10-20 14:48:18', '', 'Logout', 'Successful Logout', '\"{\\\"__ci_last_regenerate\\\":1540017854,\\\"companyid\\\":\\\"a73546e3-0aaf-432e-98d4-ca25b2077525\\\",\\\"code\\\":\\\"9999\\\",\\\"firstname\\\":\\\"Administrator\\\",\\\"lastname\\\":\\\"\\\",\\\"loginname\\\":\\\"admin\\\",\\\"userlevel\\\":\\\"99\\\",\\\"passwordexp\\\":\\\"1\\\",\\\"fixedpass\\\":\\\"1\\\",\\\"temp\\\":\\\"1\\\",\\\"passdate\\\":\\\"2018-10-17\\\",\\\"peopleid\\\":\\\"\\\",\\\"email\\\":\\\"isystem20@gmail.com\\\",\\\"photo\\\":\\\"\\\",\\\"activecode\\\":\\\"\\\"}\"', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(74, '2018-10-20 15:14:06', '', 'Failed Login', 'Authentication', '{\"error\":\"Incorrect Password.\",\"UserName\":\"admin\",\"Password\":\"1234\",\"Reference\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(75, '2018-10-20 15:16:01', '58fa037a-c504-451d-bc12-b505aa92d585', 'Login', 'Successful Authentication', '{\"userid\":\"58fa037a-c504-451d-bc12-b505aa92d585\",\"companyid\":\"a73546e3-0aaf-432e-98d4-ca25b2077525\",\"code\":\"9999\",\"firstname\":\"Administrator\",\"lastname\":\"\",\"loginname\":\"admin\",\"userlevel\":\"99\",\"passwordexp\":\"1\",\"fixedpass\":\"1\",\"temp\":\"1\",\"passdate\":\"2018-10-17\",\"peopleid\":\"\",\"email\":\"isystem20@gmail.com\",\"photo\":\"\",\"activecode\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(76, '2018-10-20 15:16:15', '58fa037a-c504-451d-bc12-b505aa92d585', 'Login', 'Successful Authentication', '{\"userid\":\"58fa037a-c504-451d-bc12-b505aa92d585\",\"companyid\":\"a73546e3-0aaf-432e-98d4-ca25b2077525\",\"code\":\"9999\",\"firstname\":\"Administrator\",\"lastname\":\"\",\"loginname\":\"admin\",\"userlevel\":\"99\",\"passwordexp\":\"1\",\"fixedpass\":\"1\",\"temp\":\"1\",\"passdate\":\"2018-10-17\",\"peopleid\":\"\",\"email\":\"isystem20@gmail.com\",\"photo\":\"\",\"activecode\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(77, '2018-10-20 15:17:27', '', 'Logout', 'Successful Logout', '\"{\\\"__ci_last_regenerate\\\":1540019644,\\\"companyid\\\":\\\"a73546e3-0aaf-432e-98d4-ca25b2077525\\\",\\\"code\\\":\\\"9999\\\",\\\"firstname\\\":\\\"Administrator\\\",\\\"lastname\\\":\\\"\\\",\\\"loginname\\\":\\\"admin\\\",\\\"userlevel\\\":\\\"99\\\",\\\"passwordexp\\\":\\\"1\\\",\\\"fixedpass\\\":\\\"1\\\",\\\"temp\\\":\\\"1\\\",\\\"passdate\\\":\\\"2018-10-17\\\",\\\"peopleid\\\":\\\"\\\",\\\"email\\\":\\\"isystem20@gmail.com\\\",\\\"photo\\\":\\\"\\\",\\\"activecode\\\":\\\"\\\"}\"', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(78, '2018-10-20 15:21:54', '58fa037a-c504-451d-bc12-b505aa92d585', 'Login', 'Successful Authentication', '{\"userid\":\"58fa037a-c504-451d-bc12-b505aa92d585\",\"companyid\":\"a73546e3-0aaf-432e-98d4-ca25b2077525\",\"code\":\"9999\",\"firstname\":\"Administrator\",\"lastname\":\"\",\"loginname\":\"admin\",\"userlevel\":\"99\",\"passwordexp\":\"1\",\"fixedpass\":\"1\",\"temp\":\"1\",\"passdate\":\"2018-10-17\",\"peopleid\":\"\",\"email\":\"isystem20@gmail.com\",\"photo\":\"\",\"activecode\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(79, '2018-10-21 15:25:47', '58fa037a-c504-451d-bc12-b505aa92d585', 'Login', 'Successful Authentication', '{\"userid\":\"58fa037a-c504-451d-bc12-b505aa92d585\",\"companyid\":\"a73546e3-0aaf-432e-98d4-ca25b2077525\",\"code\":\"9999\",\"firstname\":\"Administrator\",\"lastname\":\"\",\"loginname\":\"admin\",\"userlevel\":\"99\",\"passwordexp\":\"1\",\"fixedpass\":\"1\",\"temp\":\"1\",\"passdate\":\"2018-10-17\",\"peopleid\":\"\",\"email\":\"isystem20@gmail.com\",\"photo\":\"\",\"activecode\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(80, '2018-10-22 11:06:57', '58fa037a-c504-451d-bc12-b505aa92d585', 'Login', 'Successful Authentication', '{\"userid\":\"58fa037a-c504-451d-bc12-b505aa92d585\",\"companyid\":\"a73546e3-0aaf-432e-98d4-ca25b2077525\",\"code\":\"9999\",\"firstname\":\"Administrator\",\"lastname\":\"\",\"loginname\":\"admin\",\"userlevel\":\"99\",\"passwordexp\":\"1\",\"fixedpass\":\"1\",\"temp\":\"1\",\"passdate\":\"2018-10-17\",\"peopleid\":\"\",\"email\":\"isystem20@gmail.com\",\"photo\":\"\",\"activecode\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(81, '2018-10-23 11:48:10', '58fa037a-c504-451d-bc12-b505aa92d585', 'Login', 'Successful Authentication', '{\"userid\":\"58fa037a-c504-451d-bc12-b505aa92d585\",\"companyid\":\"a73546e3-0aaf-432e-98d4-ca25b2077525\",\"code\":\"9999\",\"firstname\":\"Administrator\",\"lastname\":\"\",\"loginname\":\"admin\",\"userlevel\":\"99\",\"passwordexp\":\"1\",\"fixedpass\":\"1\",\"temp\":\"1\",\"passdate\":\"2018-10-17\",\"peopleid\":\"\",\"email\":\"isystem20@gmail.com\",\"photo\":\"\",\"activecode\":\"\"}', '::1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(82, '2018-10-24 12:00:47', '', 'Login', 'Failed Authentication', '\"<p>The Password field is required.<\\/p>\\n\"', '127.0.0.1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(83, '2018-10-24 12:00:52', '58fa037a-c504-451d-bc12-b505aa92d585', 'Login', 'Successful Authentication', '{\"userid\":\"58fa037a-c504-451d-bc12-b505aa92d585\",\"companyid\":\"a73546e3-0aaf-432e-98d4-ca25b2077525\",\"code\":\"9999\",\"firstname\":\"Administrator\",\"lastname\":\"\",\"loginname\":\"admin\",\"userlevel\":\"99\",\"passwordexp\":\"1\",\"fixedpass\":\"1\",\"temp\":\"1\",\"passdate\":\"2018-10-17\",\"peopleid\":\"\",\"email\":\"isystem20@gmail.com\",\"photo\":\"\",\"activecode\":\"\"}', '127.0.0.1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'),
(84, '2018-10-25 14:39:05', '58fa037a-c504-451d-bc12-b505aa92d585', 'Login', 'Successful Authentication', '{\"userid\":\"58fa037a-c504-451d-bc12-b505aa92d585\",\"companyid\":\"a73546e3-0aaf-432e-98d4-ca25b2077525\",\"code\":\"9999\",\"firstname\":\"Administrator\",\"lastname\":\"\",\"loginname\":\"admin\",\"userlevel\":\"99\",\"passwordexp\":\"1\",\"fixedpass\":\"1\",\"temp\":\"1\",\"passdate\":\"2018-10-17\",\"peopleid\":\"\",\"email\":\"isystem20@gmail.com\",\"photo\":\"\",\"activecode\":\"\"}', '127.0.0.1', '', 'Windows 10', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `system_modules`
--

CREATE TABLE `system_modules` (
  `Id` int(11) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `ServiceId` int(8) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_modules`
--

INSERT INTO `system_modules` (`Id`, `Code`, `Name`, `ServiceId`, `Description`, `CreatedById`, `ModifiedById`, `CreatedAt`, `ModifiedAt`, `VersionNo`, `Active`) VALUES
(1, 'EMP', 'Employees Management', 1, '', 'ADMIN', 'ADMIN', '2018-10-17 18:15:57', '2018-10-17 18:15:57', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_services`
--

CREATE TABLE `system_services` (
  `Id` int(11) NOT NULL,
  `Code` varchar(50) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_services`
--

INSERT INTO `system_services` (`Id`, `Code`, `Name`, `Description`, `CreatedById`, `ModifiedById`, `CreatedAt`, `ModifiedAt`, `VersionNo`, `Active`) VALUES
(1, 'Human Resource', 'Human Resource Information System', '', 'ADMIN', 'ADMIN', '2018-10-17 18:15:57', '2018-10-17 18:15:57', 1, 1),
(2, 'Payroll', 'Payroll Management System', '', 'ADMIN', 'ADMIN', '2018-10-17 18:15:57', '2018-10-17 18:15:57', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_users`
--

CREATE TABLE `system_users` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CompanyId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserCode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FirstName` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastName` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LoginName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PasswordHash` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SecurityUserLevelId` int(11) NOT NULL,
  `PasswordNeverExpires` tinyint(1) NOT NULL,
  `UserCantChangePassword` tinyint(1) NOT NULL,
  `UserChangePasswordNextLogon` tinyint(1) NOT NULL,
  `PasswordDate` date NOT NULL,
  `VersionNo` int(11) NOT NULL DEFAULT '1',
  `PeopleId` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserPhoto` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ActivationCode` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Remarks` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedById` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ModifiedById` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_users`
--

INSERT INTO `system_users` (`id`, `CompanyId`, `UserCode`, `FirstName`, `LastName`, `LoginName`, `PasswordHash`, `SecurityUserLevelId`, `PasswordNeverExpires`, `UserCantChangePassword`, `UserChangePasswordNextLogon`, `PasswordDate`, `VersionNo`, `PeopleId`, `Email`, `UserPhoto`, `ActivationCode`, `Remarks`, `remember_token`, `CreatedById`, `ModifiedById`, `CreatedAt`, `ModifiedAt`, `Active`) VALUES
('58fa037a-c504-451d-bc12-b505aa92d585', 'a73546e3-0aaf-432e-98d4-ca25b2077525', '9999', 'Administrator', '', 'admin', '6188b90b33da003b7b67c509540231cbe3b354ec259a8e9699da4b0655b2c854a6307fae6683b9bd908ad9cd41fb95bf2a9c073f3ab99c485e45088fec92ea0c', 99, 1, 1, 1, '2018-10-17', 1, '', 'isystem20@gmail.com', '', '', '', NULL, '58fa037a-c504-451d-bc12-b505aa92d585', '58fa037a-c504-451d-bc12-b505aa92d585', '2018-10-17 04:04:05', '2018-10-17 04:04:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_user_modules`
--

CREATE TABLE `system_user_modules` (
  `Id` int(11) NOT NULL,
  `CompanyId` varchar(50) NOT NULL,
  `UserId` varchar(50) NOT NULL,
  `ServiceId` int(8) NOT NULL,
  `ModuleId` int(8) NOT NULL,
  `AllowAdd` tinyint(1) NOT NULL,
  `AllowEdit` tinyint(1) NOT NULL,
  `AllowDelete` tinyint(1) NOT NULL,
  `AllowRead` tinyint(1) NOT NULL,
  `AllowPrint` tinyint(1) NOT NULL,
  `AllowExport` tinyint(1) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL,
  `CreatedById` varchar(50) NOT NULL,
  `ModifiedById` varchar(50) NOT NULL,
  `CreatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifiedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `VersionNo` int(11) DEFAULT '1',
  `Active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_user_modules`
--

INSERT INTO `system_user_modules` (`Id`, `CompanyId`, `UserId`, `ServiceId`, `ModuleId`, `AllowAdd`, `AllowEdit`, `AllowDelete`, `AllowRead`, `AllowPrint`, `AllowExport`, `isAdmin`, `CreatedById`, `ModifiedById`, `CreatedAt`, `ModifiedAt`, `VersionNo`, `Active`) VALUES
(1, 'a73546e3-0aaf-432e-98d4-ca25b2077525', '58fa037a-c504-451d-bc12-b505aa92d585', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'ADMIN', 'ADMIN', '2018-10-20 12:07:32', '2018-10-20 12:07:32', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'JOHN PERRY CARPIO', 'isystem20@gmail.com', NULL, '$2y$10$LPTO3qqsva8i6HuMDVdeH.cjthAyUQpsQRT6tctVlPq5pH/.VAnmO', NULL, '2018-10-16 19:16:20', '2018-10-16 19:16:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hr_general_awardhistory`
--
ALTER TABLE `hr_general_awardhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_general_certificates`
--
ALTER TABLE `hr_general_certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_general_certifications`
--
ALTER TABLE `hr_general_certifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_general_changehistory`
--
ALTER TABLE `hr_general_changehistory`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `hr_general_costcenters`
--
ALTER TABLE `hr_general_costcenters`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `hr_general_darecords`
--
ALTER TABLE `hr_general_darecords`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `hr_general_departments`
--
ALTER TABLE `hr_general_departments`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `hr_general_dependents`
--
ALTER TABLE `hr_general_dependents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_general_employees`
--
ALTER TABLE `hr_general_employees`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `hr_general_emptypes`
--
ALTER TABLE `hr_general_emptypes`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `hr_general_leaves`
--
ALTER TABLE `hr_general_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_general_loans`
--
ALTER TABLE `hr_general_loans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_general_offenses`
--
ALTER TABLE `hr_general_offenses`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `hr_general_positions`
--
ALTER TABLE `hr_general_positions`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `hr_general_ranks`
--
ALTER TABLE `hr_general_ranks`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `hr_general_schoolhistory`
--
ALTER TABLE `hr_general_schoolhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_general_sites`
--
ALTER TABLE `hr_general_sites`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `hr_general_skills`
--
ALTER TABLE `hr_general_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_general_traininghistory`
--
ALTER TABLE `hr_general_traininghistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hr_general_workhistory`
--
ALTER TABLE `hr_general_workhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_companies`
--
ALTER TABLE `system_companies`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `system_company_services`
--
ALTER TABLE `system_company_services`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `system_contracts`
--
ALTER TABLE `system_contracts`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `system_industries`
--
ALTER TABLE `system_industries`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `system_logs`
--
ALTER TABLE `system_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_modules`
--
ALTER TABLE `system_modules`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `system_services`
--
ALTER TABLE `system_services`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `system_users`
--
ALTER TABLE `system_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_sys_securityusers_loginname_unique` (`LoginName`);

--
-- Indexes for table `system_user_modules`
--
ALTER TABLE `system_user_modules`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hr_general_awardhistory`
--
ALTER TABLE `hr_general_awardhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_general_certificates`
--
ALTER TABLE `hr_general_certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_general_certifications`
--
ALTER TABLE `hr_general_certifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_general_changehistory`
--
ALTER TABLE `hr_general_changehistory`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_general_costcenters`
--
ALTER TABLE `hr_general_costcenters`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_general_darecords`
--
ALTER TABLE `hr_general_darecords`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_general_departments`
--
ALTER TABLE `hr_general_departments`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_general_dependents`
--
ALTER TABLE `hr_general_dependents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_general_emptypes`
--
ALTER TABLE `hr_general_emptypes`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_general_leaves`
--
ALTER TABLE `hr_general_leaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_general_loans`
--
ALTER TABLE `hr_general_loans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_general_offenses`
--
ALTER TABLE `hr_general_offenses`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_general_positions`
--
ALTER TABLE `hr_general_positions`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_general_ranks`
--
ALTER TABLE `hr_general_ranks`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_general_schoolhistory`
--
ALTER TABLE `hr_general_schoolhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_general_sites`
--
ALTER TABLE `hr_general_sites`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_general_skills`
--
ALTER TABLE `hr_general_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_general_traininghistory`
--
ALTER TABLE `hr_general_traininghistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hr_general_workhistory`
--
ALTER TABLE `hr_general_workhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_company_services`
--
ALTER TABLE `system_company_services`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_contracts`
--
ALTER TABLE `system_contracts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_industries`
--
ALTER TABLE `system_industries`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `system_logs`
--
ALTER TABLE `system_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `system_modules`
--
ALTER TABLE `system_modules`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `system_services`
--
ALTER TABLE `system_services`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_user_modules`
--
ALTER TABLE `system_user_modules`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
