-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 29, 2024 at 11:40 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(2, 'Rakfiya jahan', 'rakfy', 716560510, 'sithumpabodha@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2024-02-23 05:29:19'),
(3, 'Sithum Pabodha', 'sithum', NULL, 'sithum@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2024-02-29 10:00:40'),
(4, 'Afrin Fathima', 'afrin', NULL, 'afrin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2024-02-29 10:00:40'),
(5, 'Nasma Fathima', 'nasma', NULL, 'nasma@yahoo.com', '81dc9bdb52d04dc20036dbd8313ed055', '2024-02-29 10:00:40');

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

CREATE TABLE `tblclass` (
  `ID` int(5) NOT NULL,
  `ClassName` varchar(50) DEFAULT NULL,
  `Section` varchar(20) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `tblclass` (`ID`, `ClassName`, `Section`, `CreationDate`) VALUES
(12, 'php', 'A', '2024-02-26 13:54:51'),
(13, 'java', 'B', '2024-02-26 13:59:50'),
(14, 'web design', 'C', '2024-02-26 14:00:15'),
(15, 'Python', 'D', '2024-02-29 09:07:12');

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

CREATE TABLE `tblnotice` (
  `ID` int(5) NOT NULL,
  `NoticeTitle` mediumtext DEFAULT NULL,
  `ClassId` int(10) DEFAULT NULL,
  `NoticeMsg` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblnotice`
--

INSERT INTO `tblnotice` (`ID`, `NoticeTitle`, `ClassId`, `NoticeMsg`, `CreationDate`) VALUES
(2, 'Marks of Unit Test.', 3, 'Meet your class teacher for seeing copies of unit test', '2022-01-19 06:35:58'),
(3, 'Marks of Unit Test.', 2, 'Meet your class teacher for seeing copies of unit test', '2022-01-19 06:35:58'),
(4, 'Test', 3, 'This is for testing.', '2022-02-02 18:17:03'),
(5, 'Test Notice', 8, 'This is for Testing.', '2022-02-02 19:03:43'),
(6, 'CA will be held on March 01', 12, 'Continues Assignment in PHP will be held on March 01', '2024-02-29 08:24:54'),
(7, 'JAVA CA will be held on March 01', 13, 'Continues Assignment in JAVA will be held on March 01', '2024-02-29 08:25:22');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<div style=\"text-align: start;\"><div style=\"color: rgb(204, 204, 204); background-color: rgb(31, 31, 31); font-family: Consolas, &quot;Courier New&quot;, monospace; font-size: 14px; line-height: 19px; white-space: pre; --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #17191a;\" data-darkreader-inline-color=\"\" data-darkreader-inline-bgcolor=\"\"><div>Dip Education is a leading provider of postgraduate education programmes in various Commonwealth countries, </div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;including Sri Lanka, Australia, New Zealand, and the United Kingdom. </div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Our courses are designed to equip you with the skills and knowledge to teach in diverse settings, from schools to workplaces,</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; and to advance your career in education. Whether you want to become a primary or secondary teacher, an early childhood educator, </div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; a vocational trainer, or an educational leader, we have a course that suits your needs and interests. Dip Education is committed </div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; to excellence in teaching and learning, </div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; and to fostering a community of passionate educators who make a difference in the world. Join us today and discover the benefits of a Dip </div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Education qualification</div></div></div>', NULL, NULL, NULL),
(2, 'contactus', 'Contact Us', '<div style=\"color: rgb(204, 204, 204); background-color: rgb(31, 31, 31); --darkreader-inline-color: #c8c3bc; --darkreader-inline-bgcolor: #17191a;\" courier=\"\" new\",=\"\" monospace;=\"\" font-size:=\"\" 14px;=\"\" line-height:=\"\" 19px;=\"\" white-space:=\"\" pre;=\"\" --darkreader-inline-color:=\"\" #c8c3bc;=\"\" --darkreader-inline-bgcolor:=\"\" #17191a;\"=\"\" data-darkreader-inline-color=\"\" data-darkreader-inline-bgcolor=\"\">Dip Educations , Oluvil, Sri Lanka.</div>', 'dipeducation@gmail.com', 711191198, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpublicnotice`
--

CREATE TABLE `tblpublicnotice` (
  `ID` int(5) NOT NULL,
  `NoticeTitle` varchar(200) DEFAULT NULL,
  `NoticeMessage` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpublicnotice`
--

INSERT INTO `tblpublicnotice` (`ID`, `NoticeTitle`, `NoticeMessage`, `CreationDate`) VALUES
(3, 'Our Institute will be close Feb 18-23', 'Due to Maintenance, Your Institute will be closed till 23 ', '2024-02-29 08:26:53'),
(4, 'For New Students of 2024 PHP Batch', 'Join to 1st day orientation on  March 05', '2024-02-29 08:30:06'),
(5, 'Welcome to Dip Educations', 'All newcomers are warmly welcome to our institute', '2024-02-29 09:17:14');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `ID` int(10) NOT NULL,
  `StudentName` varchar(200) DEFAULT NULL,
  `StudentEmail` varchar(200) DEFAULT NULL,
  `StudentClass` varchar(100) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `StuID` varchar(200) DEFAULT NULL,
  `FatherName` mediumtext DEFAULT NULL,
  `MotherName` mediumtext DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `AltenateNumber` bigint(10) DEFAULT NULL,
  `Address` mediumtext DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `DateofAdmission` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`ID`, `StudentName`, `StudentEmail`, `StudentClass`, `Gender`, `DOB`, `StuID`, `FatherName`, `MotherName`, `ContactNumber`, `AltenateNumber`, `Address`, `UserName`, `Password`, `Image`, `DateofAdmission`) VALUES
(5, 'Sithum Pabodha', 'sithumpabodha@gmail.com', '8', 'Male', '2001-01-23', '1080623', 'Raqsika', 'chintha', 1472589630, 1236987450, 'No.103/2,93 junction,kanthale.', 'sithum', '81dc9bdb52d04dc20036dbd8313ed055', '2f413c4becfa2db4bc4fc2ccead84f651643828242.png', '2022-02-02 18:57:22'),
(6, 'abhishek vibhooshitha', 'abhishek@gmail.com', '13', 'Male', '2001-01-12', '085', 'asd', 'asd', 71558860, 71558860, 'kottawa,colombo', 'abhishek', '81dc9bdb52d04dc20036dbd8313ed055', 'a7642afcbc3109e239cbb78a4e8216341708956127.png', '2024-02-26 14:02:07'),
(7, 'Sithum Pabodha', 'sithumpabodha@gmail.com', '15', 'Male', '2001-01-23', '084', 'test', 'test', 716560510, 716560510, 'No.103/2,93 Junction, Kanthale.', 'sithuma', '81dc9bdb52d04dc20036dbd8313ed055', '3eb6e88d5f2db915c9f545e30fb24b531709197879.jpg', '2024-02-29 09:11:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblclass`
--
ALTER TABLE `tblclass`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblnotice`
--
ALTER TABLE `tblnotice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpublicnotice`
--
ALTER TABLE `tblpublicnotice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblclass`
--
ALTER TABLE `tblclass`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblnotice`
--
ALTER TABLE `tblnotice`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpublicnotice`
--
ALTER TABLE `tblpublicnotice`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
