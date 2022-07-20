-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 24, 2018 at 12:10 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iris_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `at_id` int(3) NOT NULL,
  `collegeid` int(6) NOT NULL,
  `Fullname` varchar(30) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('P','A') NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`at_id`, `collegeid`, `Fullname`, `date`, `status`) VALUES
(1, 710319, 'Prabin Shaiju', '2018-05-23 11:00:41', 'A'),
(10, 710329, 'Rikesh Shrestha', '2018-05-23 13:29:45', 'A'),
(22, 710336, 'sajan basnet', '2018-05-23 13:27:58', 'A'),
(23, 710319, 'Prabin Shaiju', '2018-05-23 16:47:33', 'P'),
(24, 710336, 'Sajan Basnet', '2018-05-23 16:47:33', 'P'),
(25, 710319, 'Prabin Shaiju', '2018-05-23 16:47:38', 'P'),
(26, 710336, 'Sajan Basnet', '2018-05-23 16:47:38', 'P'),
(27, 710314, 'Mahesh Yakami', '2018-05-23 18:58:34', 'P'),
(28, 710314, 'Mahesh Yakami', '2018-05-23 18:59:21', 'P'),
(29, 710314, 'Mahesh Yakami', '2018-05-23 19:01:14', 'P'),
(30, 710314, 'Mahesh Yakami', '2018-05-24 08:10:08', 'P'),
(31, 710314, 'Mahesh Yakami', '2018-05-24 08:12:39', 'P'),
(32, 710314, 'Mahesh Yakami', '2018-05-24 08:16:30', 'P'),
(33, 710314, 'Mahesh Yakami', '2018-05-24 14:13:20', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `info_details`
--

CREATE TABLE `info_details` (
  `fullname` varchar(30) NOT NULL,
  `dept` varchar(6) NOT NULL,
  `collegeid` int(6) NOT NULL,
  `email` text NOT NULL,
  `contactno` bigint(10) NOT NULL,
  `shift` enum('M','D') NOT NULL,
  `gender` enum('F','M') NOT NULL,
  `iris_template` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info_details`
--

INSERT INTO `info_details` (`fullname`, `dept`, `collegeid`, `email`, `contactno`, `shift`, `gender`, `iris_template`) VALUES
('Mahesh Yakami', 'Comp', 710314, 'memahes@gmail.com', 9808997637, 'M', 'M', '710314.bmp'),
('Prabin Shaiju', 'comp', 710319, 'nebarp@gmail.com', 9849173117, 'M', 'M', '710319.bmp'),
('Rikesh Shrestha', 'Comp', 710329, 'rykesh@outlook.com', 9860335848, 'D', 'M', '710329.bmp'),
('sajan basnet', 'comp', 710336, 'sajanbasnet75@gmail.com', 9843773129, 'D', 'M', '710336.bmp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD UNIQUE KEY `at_id` (`at_id`);

--
-- Indexes for table `info_details`
--
ALTER TABLE `info_details`
  ADD PRIMARY KEY (`collegeid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `at_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
