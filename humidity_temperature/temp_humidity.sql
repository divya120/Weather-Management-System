-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 08, 2021 at 07:14 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `temp_humidity`
--

-- --------------------------------------------------------

--
-- Table structure for table `conditions`
--

DROP TABLE IF EXISTS `conditions`;
CREATE TABLE IF NOT EXISTS `conditions` (
  `ID` int(15) NOT NULL,
  `con 1` varchar(15) NOT NULL,
  `con 2` varchar(15) NOT NULL,
  `con 3` varchar(15) NOT NULL,
  `con 4` varchar(15) NOT NULL,
  `con 5` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `conditions`
--

INSERT INTO `conditions` (`ID`, `con 1`, `con 2`, `con 3`, `con 4`, `con 5`) VALUES
(15331705, 'Sunny', 'Windy', 'Cloudy', 'Rainy', 'Stormy');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `ID` int(15) NOT NULL,
  `location1` varchar(15) NOT NULL,
  `location2` varchar(15) NOT NULL,
  `location3` varchar(15) NOT NULL,
  `location4` varchar(15) NOT NULL,
  `location5` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`ID`, `location1`, `location2`, `location3`, `location4`, `location5`) VALUES
(15331705, 'Andheri', 'Mahim', 'Dadar', 'Bandra', 'Churchgate');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('divya12', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `researcher_attendance`
--

DROP TABLE IF EXISTS `researcher_attendance`;
CREATE TABLE IF NOT EXISTS `researcher_attendance` (
  `ID` int(15) NOT NULL AUTO_INCREMENT,
  `Morning Session` varchar(15) NOT NULL,
  `Evening Session` varchar(15) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=15331706 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `researcher_attendance`
--

INSERT INTO `researcher_attendance` (`ID`, `Morning Session`, `Evening Session`) VALUES
(15331705, 'Present', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `surrounding`
--

DROP TABLE IF EXISTS `surrounding`;
CREATE TABLE IF NOT EXISTS `surrounding` (
  `UserName` varchar(50) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `Time` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `ID` int(50) NOT NULL,
  `Humnidity Level` varchar(50) NOT NULL,
  `Temperanture Degree` varchar(50) NOT NULL,
  `Darkness Level` varchar(50) NOT NULL,
  `Past Natural Calamity` varchar(50) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `User ID` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `surrounding`
--

INSERT INTO `surrounding` (`UserName`, `Location`, `Time`, `Date`, `Address`, `Description`, `ID`, `Humnidity Level`, `Temperanture Degree`, `Darkness Level`, `Past Natural Calamity`, `Department`, `User ID`) VALUES
('divya12', 'India', '12:55', '10-4-21', 'Jogeshwari', 'Forest', 1, 'High', 'High', 'Low', 'Flood', '1012642', 'Weather Forecasting');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
CREATE TABLE IF NOT EXISTS `test` (
  `temperature` varchar(30) DEFAULT NULL,
  `humidity` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`temperature`, `humidity`) VALUES
('34', '68'),
('34', '68'),
('34', '68'),
('34', '68'),
('34', '68');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `Name` varchar(15) NOT NULL,
  `Last Name` varchar(15) NOT NULL,
  `Age` varchar(15) NOT NULL,
  `DOB` varchar(15) NOT NULL,
  `Address` varchar(25) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Email ID` varchar(15) NOT NULL,
  `Course` varchar(15) NOT NULL,
  `Qualification` varchar(15) NOT NULL,
  `ID` varchar(15) NOT NULL,
  `Branch` varchar(15) NOT NULL,
  `Aadhar No` varchar(15) NOT NULL,
  `Specialization` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Name`, `Last Name`, `Age`, `DOB`, `Address`, `Phone`, `Email ID`, `Course`, `Qualification`, `ID`, `Branch`, `Aadhar No`, `Specialization`) VALUES
('Rahul', 'Anandraj', '19', '1st Dec', 'Andheri', '90046', 'rahul@gmail.com', 'BE', 'HSC', '15200011', '', '', ''),
('Rahul', 'Anandraj', '19', '1st Dec', 'Andheri', '90046', 'rahul@gmail.com', 'BE', 'HSC', '15200012', 'COMPS', '32556', 'Weather');

-- --------------------------------------------------------

--
-- Table structure for table `user_attendance`
--

DROP TABLE IF EXISTS `user_attendance`;
CREATE TABLE IF NOT EXISTS `user_attendance` (
  `ID` int(15) NOT NULL AUTO_INCREMENT,
  `Morning Session` varchar(15) NOT NULL,
  `Evening Session` varchar(15) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=15331706 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_attendance`
--

INSERT INTO `user_attendance` (`ID`, `Morning Session`, `Evening Session`) VALUES
(15331705, 'Present', 'Present');

-- --------------------------------------------------------

--
-- Table structure for table `weather`
--

DROP TABLE IF EXISTS `weather`;
CREATE TABLE IF NOT EXISTS `weather` (
  `UserName` varchar(15) NOT NULL,
  `Sunny/Cloudy` varchar(15) NOT NULL,
  `Time` varchar(15) NOT NULL,
  `Date` varchar(15) NOT NULL,
  `Location` varchar(15) NOT NULL,
  `Temperature` varchar(15) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Humidity` varchar(15) NOT NULL,
  `Light Intensity` varchar(15) NOT NULL,
  `Serial No` varchar(15) NOT NULL,
  `ID` varchar(15) NOT NULL,
  `Type` varchar(15) NOT NULL,
  `Branch` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `weather`
--

INSERT INTO `weather` (`UserName`, `Sunny/Cloudy`, `Time`, `Date`, `Location`, `Temperature`, `Description`, `Humidity`, `Light Intensity`, `Serial No`, `ID`, `Type`, `Branch`) VALUES
('supriya12', 'Cloudy', '12:17', '12-4-21', 'Andheri', 'high', 'Sunny', 'low', 'dHigh', '2', '15331705', 'User', 'Weather Forecasting');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
