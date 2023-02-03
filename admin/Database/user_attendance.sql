-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 03, 2023 at 01:54 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alohababes`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `username`, `password`, `name`, `type`) VALUES
(2, 'admin', '6ce37c5ba1f4a8ecedea6b8b1fc7b8c5', 'Code Camp BD', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `emp_attendance`
--

CREATE TABLE `emp_attendance` (
  `attendance_id` int NOT NULL,
  `employee_id` varchar(100) NOT NULL,
  `employee_name` varchar(100) NOT NULL,
  `attendance_date` date NOT NULL,
  `attendance_timein` time NOT NULL,
  `attendance_timeout` time NOT NULL,
  `attendance_hour` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_list`
--

CREATE TABLE `emp_list` (
  `emp_id` int NOT NULL,
  `emp_card` varchar(100) NOT NULL,
  `emp_fname` varchar(100) NOT NULL,
  `emp_lname` varchar(100) NOT NULL,
  `emp_position` int NOT NULL,
  `emp_address` varchar(100) NOT NULL,
  `emp_contact` varchar(100) NOT NULL,
  `emp_gender` varchar(100) NOT NULL,
  `emp_timein` time NOT NULL,
  `emp_timeout` time NOT NULL,
  `sched_id` int NOT NULL,
  `emp_regdate` date NOT NULL,
  `emp_photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_position`
--

CREATE TABLE `emp_position` (
  `pos_id` int NOT NULL,
  `position_title` varchar(100) NOT NULL,
  `position_rate` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp_sched`
--

CREATE TABLE `emp_sched` (
  `sched_id` int NOT NULL,
  `sched_in` time NOT NULL,
  `sched_out` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salary_deduct`
--

CREATE TABLE `salary_deduct` (
  `deduct_id` int NOT NULL,
  `deduct_desc` varchar(100) NOT NULL,
  `deduct_amount` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_attendance`
--
ALTER TABLE `emp_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `emp_list`
--
ALTER TABLE `emp_list`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `emp_position`
--
ALTER TABLE `emp_position`
  ADD PRIMARY KEY (`pos_id`);

--
-- Indexes for table `emp_sched`
--
ALTER TABLE `emp_sched`
  ADD PRIMARY KEY (`sched_id`);

--
-- Indexes for table `salary_deduct`
--
ALTER TABLE `salary_deduct`
  ADD PRIMARY KEY (`deduct_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `emp_attendance`
--
ALTER TABLE `emp_attendance`
  MODIFY `attendance_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_list`
--
ALTER TABLE `emp_list`
  MODIFY `emp_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_position`
--
ALTER TABLE `emp_position`
  MODIFY `pos_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `emp_sched`
--
ALTER TABLE `emp_sched`
  MODIFY `sched_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_deduct`
--
ALTER TABLE `salary_deduct`
  MODIFY `deduct_id` int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
