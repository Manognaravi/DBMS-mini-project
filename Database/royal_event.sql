-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2023 at 11:04 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `royal_event`
--

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `permission` varchar(255) CHARACTER SET latin1 NOT NULL,
  `createuser` varchar(255) DEFAULT NULL,
  `deleteuser` varchar(255) DEFAULT NULL,
  `createbid` varchar(255) DEFAULT NULL,
  `updatebid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `permission`, `createuser`, `deleteuser`, `createbid`, `updatebid`) VALUES
(1, 'Superuser', '1', '1', '1', '1'),
(2, 'Admin', '1', NULL, '1', '1'),
(3, 'User', NULL, NULL, '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `Staffid` varchar(255) DEFAULT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Status` int(11) NOT NULL DEFAULT 1,
  `Photo` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT 'avatar15.jpg',
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `Staffid`, `AdminName`, `UserName`, `FirstName`, `LastName`, `MobileNumber`, `Email`, `Status`, `Photo`, `Password`, `AdminRegdate`) VALUES
(2, 'U002', 'Admin', 'ndbhalerao91@gmail.com', 'Nikhil', 'Bhalerao', 942397933, 'ndbhalerao91@gmail.com', 1, 'pro4.jpg', '21232f297a57a5a743894a0e4a801fc3', '2022-07-21 10:18:39'),
(28, 'U001', 'Admin', 'Suraj', 'Suraj', 'kale', 942397933, 'Suraj@gmail.com', 0, 'avatar15.jpg', '21232f297a57a5a743894a0e4a801fc3', '2022-07-25 19:45:45');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `ID` int(10) NOT NULL,
  `BookingID` int(10) DEFAULT NULL,
  `ServiceID` varchar(10) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `EventDate` varchar(200) DEFAULT NULL,
  `EventStartingtime` varchar(200) DEFAULT NULL,
  `EventEndingtime` varchar(200) DEFAULT NULL,
  `VenueAddress` mediumtext DEFAULT NULL,
  `EventType` varchar(200) DEFAULT NULL,
  `AdditionalInformation` mediumtext DEFAULT NULL,
  `BookingDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`ID`, `BookingID`, `ServiceID`, `Name`, `MobileNumber`, `Email`, `EventDate`, `EventStartingtime`, `EventEndingtime`, `VenueAddress`, `EventType`, `AdditionalInformation`, `BookingDate`, `Remark`, `Status`, `UpdationDate`) VALUES
(15, 977361722, '1', 'Jayesh Panghawane', 7070707078, 'jayesh768@gmail.com', '2022-03-25', '1 p.m', '6 p.m', 'Bansi Plaza, near Kumar Hotel,Nashik', 'Sangeet', 'Special Menu,Dj on time', '2022-03-22 09:29:18', 'event cancelled by party', NULL, '2023-01-27 17:29:23'),
(16, 182793407, '2', 'Nikhil Bhalerao', 9080908090, 'nikhil@gmail.com', '2022-03-22', '10 a.m', '12 p.m', 'Galaxy Banquet Hall, Saraswati Nagar, behind Relience Petrol Pump, Nashik', 'Freshers Party', 'Event for 500+ students with party package', '2022-03-22 15:12:36', 'Payment given order is confitmed', 'Approved', '2023-01-28 10:03:15'),
(20, 558944228, '2', 'Ritika', 4578451245, 'ritika@gmail.com', '2023-01-28', '1 p.m', '4 p.m', 'pune', 'Wedding', 'On time decoration', '2023-01-27 17:37:52', NULL, NULL, '2023-01-27 17:39:28'),
(21, 177981345, '6', 'madhuri', 7845123654, 'madhuri@gmail.com', '2023-01-28', '1 p.m', '7 p.m', 'nsk', 'Wedding', 'gfhfdcsc', '2023-01-27 17:44:07', 'Not yet allow', 'Cancelled', '2023-01-27 18:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `id` int(11) NOT NULL,
  `regno` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `companyname` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `companyemail` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `country` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `companyphone` text NOT NULL,
  `companyaddress` varchar(255) CHARACTER SET latin1 NOT NULL,
  `companylogo` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT 'avatar15.jpg',
  `status` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '0',
  `creationdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`id`, `regno`, `companyname`, `companyemail`, `country`, `companyphone`, `companyaddress`, `companylogo`, `status`, `creationdate`) VALUES
(4, '43422332', 'Royal Event Software', 'dummy@royalevents.com', 'India', '+919423979339', 'Kothrud Pune', 'logo.jpg', '1', '2022-03-22 12:17:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbleventtype`
--

CREATE TABLE `tbleventtype` (
  `ID` int(10) NOT NULL,
  `EventType` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbleventtype`
--

INSERT INTO `tbleventtype` (`ID`, `EventType`, `CreationDate`) VALUES
(1, 'Anniversary', '2022-01-22 07:01:39'),
(2, 'Birthday Party', '2022-01-22 07:02:34'),
(3, 'Charity', '2022-01-22 07:02:43'),
(4, 'Cocktail', '2022-01-22 07:03:00'),
(5, 'College', '2022-01-22 07:03:11'),
(6, 'Community', '2022-01-22 07:03:24'),
(7, 'Concert', '2022-01-22 07:03:35'),
(8, 'Engagement', '2022-01-22 07:03:51'),
(9, 'Get Together', '2022-01-22 07:04:04'),
(10, 'Government', '2022-01-22 07:04:15'),
(11, 'Night Club', '2022-01-22 07:04:26'),
(13, 'Post Wedding', '2022-01-22 07:05:01'),
(14, 'Pre Engagement', '2022-01-22 07:05:18'),
(15, 'Religious', '2022-01-22 07:05:27'),
(16, 'Sangeet', '2022-01-22 07:05:43'),
(17, 'Social', '2022-01-22 07:05:58'),
(18, 'Wedding', '2022-01-22 07:06:07'),
(21, 'Freshers Party', '2022-03-22 15:09:35');

-- --------------------------------------------------------

--
-- Table structure for table `tblservice`
--

CREATE TABLE `tblservice` (
  `ID` int(11) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `SerDes` varchar(250) NOT NULL,
  `ServicePrice` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblservice`
--

INSERT INTO `tblservice` (`ID`, `ServiceName`, `SerDes`, `ServicePrice`, `CreationDate`) VALUES
(1, 'Party decorations', 'we finish designing 4 hours  before your ceremony .', '8000', '2022-01-24 07:17:43'),
(2, 'Party DJ', '(we install the DJ equipment 1 hour before your selected event start time)', '700', '2022-01-24 07:18:32'),
(3, 'Ceremony Music', 'Our ceremony music service is a popular add on to our wedding DJ stay all day hire.', '650', '2022-01-24 07:19:14'),
(4, 'Photo Booth Hire', 'we install the DJ equipment before your ceremony ', '500', '2022-01-24 07:19:51'),
(6, 'Uplighters', 'Uplighters are bright lighting fixtures which are installed on the floor and shine a vibrant wash of colour over the walls of your venue', '200', '2022-01-24 07:21:14'),
(9, 'Party Sounds and Lights', 'this service contains 4 high bass speaker and 10 stereo speakers', '3500', '2022-03-22 15:11:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ServiceID` (`ServiceID`),
  ADD KEY `EventType` (`EventType`(191));

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbleventtype`
--
ALTER TABLE `tbleventtype`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EventType` (`EventType`(191));

--
-- Indexes for table `tblservice`
--
ALTER TABLE `tblservice`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbleventtype`
--
ALTER TABLE `tbleventtype`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblservice`
--
ALTER TABLE `tblservice`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
