-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2015 at 09:14 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `srms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `ID` varchar(5) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Position` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `Name`, `Position`, `Password`) VALUES
('A1', 'Allan', 'Admin', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE IF NOT EXISTS `cases` (
  `CaseNo` varchar(15) NOT NULL,
  `Suspect` varchar(50) NOT NULL,
  `SuspectAge` int(3) NOT NULL,
  `SuspectSex` varchar(6) NOT NULL,
  `SuspectPhone` varchar(25) NOT NULL,
  `SuspectOccupation` varchar(50) NOT NULL,
  `Complainant` varchar(50) NOT NULL,
  `ComplainantAge` int(3) NOT NULL,
  `ComplainantSex` varchar(6) NOT NULL,
  `ComplainantPhone` varchar(25) NOT NULL,
  `ComplainantOccupation` varchar(50) NOT NULL,
  `Crimes` varchar(200) NOT NULL,
  `Date` varchar(30) NOT NULL,
  `Officer` varchar(50) NOT NULL,
  `OfficerPhone` varchar(25) NOT NULL,
  PRIMARY KEY (`CaseNo`),
  UNIQUE KEY `IDNO` (`CaseNo`),
  KEY `IDNO_2` (`CaseNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cases`
--

INSERT INTO `cases` (`CaseNo`, `Suspect`, `SuspectAge`, `SuspectSex`, `SuspectPhone`, `SuspectOccupation`, `Complainant`, `ComplainantAge`, `ComplainantSex`, `ComplainantPhone`, `ComplainantOccupation`, `Crimes`, `Date`, `Officer`, `OfficerPhone`) VALUES
('P001', 'DOMINIQUE AUGUSTUS', 27, 'M', '+565464646', 'Teacher', 'TOBBY MAGUIRE', 25, 'M', '+646646468', 'Student', '1. Theft of Phone\n2. Theft of Laptop', '20 JUL, 2015 03:18 PM', 'CHARITY AKUMU', '+58797989');

-- --------------------------------------------------------

--
-- Table structure for table `officer`
--

CREATE TABLE IF NOT EXISTS `officer` (
  `ID` varchar(5) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Position` varchar(50) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `officer`
--

INSERT INTO `officer` (`ID`, `Name`, `Position`, `Password`) VALUES
('a2', 'James Buffon', 'Super Intendent', 'jbuffon');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
