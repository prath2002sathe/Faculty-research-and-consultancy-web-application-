-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2023 at 01:20 AM
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
-- Database: `faculty1`
--

-- --------------------------------------------------------

--
-- Table structure for table `access`
--

CREATE TABLE `access` (
  `access_id` int(11) NOT NULL,
  `access_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `access`
--

INSERT INTO `access` (`access_id`, `access_name`) VALUES
(1, 'Faculty'),
(2, 'Module Incharge'),
(3, 'Main Incharge');

-- --------------------------------------------------------

--
-- Table structure for table `conference`
--

CREATE TABLE `conference` (
  `con_id` int(11) NOT NULL,
  `register_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `con_title` varchar(256) NOT NULL,
  `con_name` varchar(100) NOT NULL,
  `con_doa` date NOT NULL,
  `con_dop` date NOT NULL,
  `con_auth_name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `conference`
--

INSERT INTO `conference` (`con_id`, `register_id`, `dept_id`, `con_title`, `con_name`, `con_doa`, `con_dop`, `con_auth_name`) VALUES
(1, 1, 1, 'Test Publication', 'abcd', '2023-05-16', '2023-05-23', 'Ganesh'),
(2, 3, 3, 'IEEE paper', 'Ganesh', '2023-11-26', '2023-11-28', 'ABCD');

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE `dept` (
  `dept_id` int(11) NOT NULL,
  `dept_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`dept_id`, `dept_name`) VALUES
(1, 'Computer Science'),
(2, 'Mechanical'),
(3, 'Civil'),
(4, 'Chemical'),
(5, 'E&TC');

-- --------------------------------------------------------

--
-- Table structure for table `fdp`
--

CREATE TABLE `fdp` (
  `fdp_id` int(11) NOT NULL,
  `register_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `fdp_name` varchar(256) NOT NULL,
  `fdp_topic` varchar(256) NOT NULL,
  `fdp_duration` int(11) NOT NULL,
  `fdp_organiser` varchar(100) NOT NULL,
  `fdp_date` date NOT NULL,
  `fdp_certificate` varchar(256) NOT NULL,
  `fdp_resource` varchar(100) NOT NULL,
  `fdp_status` int(11) NOT NULL,
  `fdp_status_receipt` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fdp`
--

INSERT INTO `fdp` (`fdp_id`, `register_id`, `dept_id`, `fdp_name`, `fdp_topic`, `fdp_duration`, `fdp_organiser`, `fdp_date`, `fdp_certificate`, `fdp_resource`, `fdp_status`, `fdp_status_receipt`) VALUES
(1, 3, 3, 'Ganesh', 'GDP on Exam', 1, 'Codexlabz', '2023-12-01', 'uploads/b-6.jpg', 'Ajay M', 2, ''),
(2, 3, 3, 'Ganesh', 'FDP on Pollution', 2, 'Codex', '2023-11-28', 'uploads/c-1.jpg', 'Ganesh', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `journal`
--

CREATE TABLE `journal` (
  `journal_id` int(11) NOT NULL,
  `register_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `journal_type` int(11) NOT NULL,
  `journal_title` varchar(256) NOT NULL,
  `journal_name` varchar(256) NOT NULL,
  `journal_doa` date NOT NULL,
  `journal_dop` date NOT NULL,
  `journal_impact_factor` varchar(50) NOT NULL,
  `journal_vol_no` varchar(50) NOT NULL,
  `journal_issn` varchar(50) NOT NULL,
  `journal_certificate` varchar(256) NOT NULL,
  `journal_abstract` varchar(256) NOT NULL,
  `journal_status` int(11) NOT NULL,
  `journal_isbn` varchar(50) NOT NULL,
  `journal_other_authors` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `journal`
--

INSERT INTO `journal` (`journal_id`, `register_id`, `dept_id`, `journal_type`, `journal_title`, `journal_name`, `journal_doa`, `journal_dop`, `journal_impact_factor`, `journal_vol_no`, `journal_issn`, `journal_certificate`, `journal_abstract`, `journal_status`, `journal_isbn`, `journal_other_authors`) VALUES
(1, 3, 3, 1, 'IOT', 'Ganesh', '2023-11-26', '2023-11-29', 'no', '4555', '4255', 'uploads/b-4.jpg', 'uploads/c-2.jpg', 2, '5465555', 'ganesha');

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `module_name` varchar(256) NOT NULL,
  `module_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`module_name`, `module_id`) VALUES
('Publication', 1),
('Seminar', 2),
('Workshop', 3),
('FDP', 4);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `register_id` int(11) NOT NULL,
  `module_id` int(10) DEFAULT NULL,
  `register_email` varchar(100) NOT NULL,
  `register_dept` int(11) NOT NULL,
  `register_access` int(11) NOT NULL,
  `register_password` varchar(20) NOT NULL,
  `register_name` varchar(256) DEFAULT NULL,
  `register_mobile` varchar(15) DEFAULT NULL,
  `register_address` varchar(256) DEFAULT NULL,
  `register_dob` varchar(100) DEFAULT NULL,
  `register_doj` varchar(100) DEFAULT NULL,
  `register_designation` varchar(50) DEFAULT NULL,
  `register_upload` varchar(100) DEFAULT NULL,
  `register_approve` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`register_id`, `module_id`, `register_email`, `register_dept`, `register_access`, `register_password`, `register_name`, `register_mobile`, `register_address`, `register_dob`, `register_doj`, `register_designation`, `register_upload`, `register_approve`) VALUES
(1, 1, 'main@gmail.com', 1, 3, 'Main@123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, 1, 'faculty@gmail.com', 1, 1, 'Faculty@123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(3, 2, 'module@gmail.com', 3, 2, 'Modul@123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(4, 1, 'ganeshsutar190@gmail.com', 2, 1, 'Ganesh@123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(5, 1, 'ganeshsutar190@gmail.com', 1, 1, 'Ganesh@123', 'Ganesh Uttam Sutar', '7387140146', 'Dighanchi Road', '1993-01-19', '2023-05-10', 'Asst. Prof', 'uploads/id-photo2.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `seminar`
--

CREATE TABLE `seminar` (
  `seminar_id` int(11) NOT NULL,
  `dept_id` int(2) NOT NULL,
  `register_id` int(11) NOT NULL,
  `seminar_name` varchar(256) NOT NULL,
  `seminar_duration` int(11) NOT NULL,
  `seminar_organiser` varchar(100) NOT NULL,
  `seminar_date` date NOT NULL,
  `seminar_certificate` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seminar`
--

INSERT INTO `seminar` (`seminar_id`, `dept_id`, `register_id`, `seminar_name`, `seminar_duration`, `seminar_organiser`, `seminar_date`, `seminar_certificate`) VALUES
(1, 1, 1, 'Seminar on IoT', 2, 'Codexlabz', '2023-06-14', 'uploads/b-2.jpg'),
(2, 2, 1, 'Seminar on Machin Learning', 3, 'TCS', '2023-10-10', 'uploads/b-4.jpg'),
(3, 1, 1, 'Seminar on Web Design', 1, 'Codexlabz', '2023-05-14', 'uploads/b-6.jpg'),
(4, 3, 3, 'Seminar on Soil Pulution', 1, 'ABC Group', '2023-05-28', 'uploads/about.jpg'),
(5, 3, 3, 'Seminar on Water Pulution', 3, 'XYZ tech', '2023-04-26', 'uploads/c-1.jpg'),
(6, 3, 3, 'Seminar on Android', 7, 'Codexlabz', '2023-11-26', 'uploads/banner.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `workshop`
--

CREATE TABLE `workshop` (
  `workshop_id` int(11) NOT NULL,
  `register_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `workshop_name` varchar(256) NOT NULL,
  `workshop_topic` varchar(256) NOT NULL,
  `workshop_duration` int(11) NOT NULL,
  `workshop_organiser` varchar(100) NOT NULL,
  `workshop_date` date NOT NULL,
  `workshop_certificate` varchar(256) NOT NULL,
  `workshop_resource` varchar(100) NOT NULL,
  `workshop_status` int(11) NOT NULL,
  `workshop_status_receipt` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `workshop`
--

INSERT INTO `workshop` (`workshop_id`, `register_id`, `dept_id`, `workshop_name`, `workshop_topic`, `workshop_duration`, `workshop_organiser`, `workshop_date`, `workshop_certificate`, `workshop_resource`, `workshop_status`, `workshop_status_receipt`) VALUES
(1, 3, 3, 'Workshop Week', 'Workshop on Solid Irrigation', 1, 'Codexalzb', '2023-11-26', 'uploads/bn-5.png', 'Ganesh', 2, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`access_id`);

--
-- Indexes for table `conference`
--
ALTER TABLE `conference`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `dept`
--
ALTER TABLE `dept`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `fdp`
--
ALTER TABLE `fdp`
  ADD PRIMARY KEY (`fdp_id`);

--
-- Indexes for table `journal`
--
ALTER TABLE `journal`
  ADD PRIMARY KEY (`journal_id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`register_id`);

--
-- Indexes for table `seminar`
--
ALTER TABLE `seminar`
  ADD PRIMARY KEY (`seminar_id`);

--
-- Indexes for table `workshop`
--
ALTER TABLE `workshop`
  ADD PRIMARY KEY (`workshop_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access`
--
ALTER TABLE `access`
  MODIFY `access_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `conference`
--
ALTER TABLE `conference`
  MODIFY `con_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dept`
--
ALTER TABLE `dept`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fdp`
--
ALTER TABLE `fdp`
  MODIFY `fdp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `journal`
--
ALTER TABLE `journal`
  MODIFY `journal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `module_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `register_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `seminar`
--
ALTER TABLE `seminar`
  MODIFY `seminar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `workshop`
--
ALTER TABLE `workshop`
  MODIFY `workshop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
