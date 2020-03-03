-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 03, 2020 at 09:19 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ibm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ibm_admin`
--

CREATE TABLE `ibm_admin` (
  `id` int(11) NOT NULL,
  `fname` varchar(256) NOT NULL,
  `lname` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL,
  `password` varchar(256) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibm_admin`
--

INSERT INTO `ibm_admin` (`id`, `fname`, `lname`, `email`, `phone`, `address`, `password`, `c_date`) VALUES
(1, 'Ezpk', 'Ezechiel', 'ezpk@gmail.com', '0786618495', '', 'ezpk@2019', '0000-00-00 00:00:00'),
(2, 'Kalengya', 'Ezechiel', 'ezechielkalengya@gmail.com', '0784700763', 'Gisozi/Kibanza', 'ezechiel', '2020-01-16 17:20:55'),
(3, 'Ezechiel', 'Kapanga', 'kapanga@gmail.com', '0786565652', 'Gisozi/Kibanza', 'Ezechiel@2020', '2020-01-16 17:20:44'),
(6, 'Abigael', 'Wanzirendi', 'abigael@gmail.com', '0785657657', 'Gisozi/Kibanza', 'Abigael@2020', '2020-01-17 13:26:20'),
(8, 'Elysee', 'Kapanga', 'elysee@gmail.com', '0786565652', 'Goma/RDC', 'Elysee@2020', '2020-01-17 13:07:02'),
(10, 'Arnold', 'Sibita', 'arnold@gmail.com', '+243997384875', 'Goma/DRC', 'Arnold@2020', '2020-03-03 14:48:20');

-- --------------------------------------------------------

--
-- Table structure for table `ibm_mentor`
--

CREATE TABLE `ibm_mentor` (
  `id` int(11) NOT NULL,
  `fname` varchar(256) NOT NULL,
  `lname` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL,
  `qualification` varchar(256) NOT NULL,
  `status` int(11) NOT NULL,
  `password` varchar(256) NOT NULL,
  `registered_by` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibm_mentor`
--

INSERT INTO `ibm_mentor` (`id`, `fname`, `lname`, `email`, `phone`, `address`, `qualification`, `status`, `password`, `registered_by`, `c_date`) VALUES
(1, 'Ezechiel', 'Ezpk Kalengya', 'ezechielezpk@gmail.com', '07857576', 'Gisozi/Kibanza', 'Masters in Data Science.', 1, 'Ezechiel@2020', 2, '2020-01-20 17:03:31'),
(4, 'Jibu', 'Sibita', 'jibu@gmail.com', '+250784700764', 'Gisozi/Kibanza', 'Master in Software Development', 1, 'Jibu@2020', 2, '2020-03-03 14:50:17');

-- --------------------------------------------------------

--
-- Table structure for table `ibm_participant`
--

CREATE TABLE `ibm_participant` (
  `id` int(11) NOT NULL,
  `training_program_id` int(11) NOT NULL,
  `fname` varchar(256) NOT NULL,
  `lname` varchar(256) NOT NULL,
  `email` varchar(256) NOT NULL,
  `phone` varchar(256) NOT NULL,
  `address` varchar(256) NOT NULL,
  `status` int(11) NOT NULL,
  `registered_by` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibm_participant`
--

INSERT INTO `ibm_participant` (`id`, `training_program_id`, `fname`, `lname`, `email`, `phone`, `address`, `status`, `registered_by`, `c_date`) VALUES
(1, 1, 'Ezechiel', 'Ezechiel Ezpk', 'ezechiel@gmail.com', '07854556', 'Gisozi/Kibanza', 1, 2, '2020-01-21 19:17:08'),
(2, 2, 'Abigael', 'Wanzirendi', 'abigael@gmail.com', '0787576767', 'Gisozi/Kibanza', 1, 2, '2020-01-28 20:03:23'),
(3, 3, 'Abigael', 'Wanzirendi', 'abigael@gmail.com', '0784701437', 'Gisozi/Kibanza', 1, 2, '2020-03-03 15:00:23');

-- --------------------------------------------------------

--
-- Table structure for table `ibm_training_course`
--

CREATE TABLE `ibm_training_course` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `registered_by` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibm_training_course`
--

INSERT INTO `ibm_training_course` (`id`, `name`, `description`, `registered_by`, `c_date`) VALUES
(1, 'Data Science', 'hello', 2, '2020-01-18 18:22:20'),
(2, 'Networking Cabling', 'cabling in netwoorking introduction.\r\n', 1, '2020-01-18 19:31:39'),
(5, 'OOP in JAVA', 'Object Oriented Programming in JAVA. This introduce from zero upto advance the Object Oriented Programming with JAVA.', 2, '2020-03-03 14:53:19');

-- --------------------------------------------------------

--
-- Table structure for table `ibm_training_program`
--

CREATE TABLE `ibm_training_program` (
  `id` int(11) NOT NULL,
  `program_code` varchar(256) NOT NULL,
  `training_course_id` int(11) NOT NULL,
  `mentor_id` int(11) NOT NULL,
  `program_from_date` date NOT NULL,
  `program_to_date` date NOT NULL,
  `registered_by` int(11) NOT NULL,
  `c_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ibm_training_program`
--

INSERT INTO `ibm_training_program` (`id`, `program_code`, `training_course_id`, `mentor_id`, `program_from_date`, `program_to_date`, `registered_by`, `c_date`) VALUES
(1, 'TPC02020011', 1, 1, '2020-01-20', '2020-01-31', 2, '2020-01-20 17:46:24'),
(2, 'TPC02020012', 2, 1, '2020-02-01', '2020-02-29', 2, '2020-01-20 17:53:50'),
(3, 'TPC02020035', 5, 4, '2020-03-09', '2020-04-10', 2, '2020-03-03 14:55:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ibm_admin`
--
ALTER TABLE `ibm_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ibm_mentor`
--
ALTER TABLE `ibm_mentor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ibm_participant`
--
ALTER TABLE `ibm_participant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ibm_training_course`
--
ALTER TABLE `ibm_training_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ibm_training_program`
--
ALTER TABLE `ibm_training_program`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ibm_admin`
--
ALTER TABLE `ibm_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ibm_mentor`
--
ALTER TABLE `ibm_mentor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ibm_participant`
--
ALTER TABLE `ibm_participant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ibm_training_course`
--
ALTER TABLE `ibm_training_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ibm_training_program`
--
ALTER TABLE `ibm_training_program`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
