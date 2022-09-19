-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 26, 2022 at 05:36 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(2, 14, 'tania', 'Khan', 'Female', 'tania@gmail.com', '1886782012', 'Gopal', 500, '2022-06-17', '12:00:00', 1, 1),
(2, 15, 'tania', 'Khan', 'Female', 'tania@gmail.com', '1886782012', 'Gopal', 500, '2022-06-16', '16:00:00', 1, 1),
(1, 16, 'utshab', 'brohma', 'Male', 'utshabbrohma@gmail.com', '1886782011', 'Huda', 550, '2022-06-17', '14:00:00', 1, 1),
(3, 17, 'Mahmudul', 'Hasan', 'Male', 'mhasan.meet@gmail.com', '1682568271', 'Gopal', 500, '2022-06-29', '14:00:00', 1, 1),
(4, 18, 'Utsob', 'Bromha', 'Male', 'utsob@gmail.com', '1234567891', 'Gopal', 500, '2022-07-07', '08:00:00', 1, 1),
(4, 19, 'Utsob', 'Bromha', 'Male', 'utsob@gmail.com', '1234567891', 'Huda', 550, '2022-06-30', '14:00:00', 1, 1),
(5, 20, 'Imran', 'Hasan', 'Male', 'imran@gmail.com', '1234567891', 'Gopal', 500, '2022-07-08', '12:00:00', 1, 1),
(4, 21, 'Utsob', 'Bromha', 'Male', 'utsob@gmail.com', '1234567891', 'Huda', 550, '2022-07-09', '14:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Utsob', 'utsob@gmail.com', '1886782011', 'Thanks for your service'),
('Tania', 'tania@gmail.com', '1886782012', 'I really appreciate your service');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`username`, `password`, `email`, `spec`, `docFees`) VALUES
('Gopal', 'g123', 'gopal@gmail.com', 'General', 500),
('Huda', 'h123', 'huda@gmail.com', 'Neurologist', 550);

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `bloodgroup` text NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `bloodgroup`, `password`, `cpassword`) VALUES
(2, 'tania', 'Khan', 'Female', 'tania@gmail.com', '1886782012', '0', 't123', '123'),
(3, 'Mahmudul', 'Hasan', 'Male', 'mhasan.meet@gmail.com', '1682568271', 'A+', '123456', '123456'),
(4, 'Utsob', 'Bromha', 'Male', 'utsob@gmail.com', '1234567891', 'A+', '123456', '123456'),
(5, 'Imran', 'Hasan', 'Male', 'imran@gmail.com', '1234567891', 'A', '123456', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `ID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Gopal', 1, 1, 'utshab', 'brohma', '2022-06-22', '15:00:00', 'Cough', 'Nothing', 'Just take a teaspoon of Benadryl every night'),
('Huda', 2, 2, 'Tania', 'Khan', '2022-06-23', '14:00:00', 'Cough', 'Skin dryness', 'Intake fruits with more water content'),
('Gopal', 5, 20, 'Imran', 'Hasan', '2022-07-08', '12:00:00', 'Fever', 'Fever', 'Napa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
