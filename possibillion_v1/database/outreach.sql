-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2015 at 05:28 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `outreach`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_active` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `created`, `last_active`, `status`) VALUES
(1, 'Admin', 'admin@outreach.com', 'e10adc3949ba59abbe56e057f20f883e', '2015-10-27 10:27:49', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nodalcentres`
--

CREATE TABLE IF NOT EXISTS `nodalcentres` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `location` text NOT NULL,
  `nodal_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nodalcentres`
--

-- --------------------------------------------------------

--
-- Table structure for table `nodalcoordinators`
--

CREATE TABLE IF NOT EXISTS `nodalcoordinators` (
  `nodal_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(256) DEFAULT NULL,
  `outreach_id` int(11) NOT NULL,
  `target_workshops` int(11) NOT NULL,
  `target_participants` int(11) NOT NULL,
  `target_expriments` int(11) NOT NULL,
  `current_workshops` int(11) NOT NULL,
  `current_participants` int(11) NOT NULL,
  `currentex_priments` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_active` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_updated` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `phone` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nodalcoordinators`
--

-- --------------------------------------------------------

--
-- Table structure for table `nodalcoordinatorstraining`
--

CREATE TABLE IF NOT EXISTS `nodalcoordinatorstraining` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `location` text NOT NULL,
  `duration` int(11) NOT NULL,
  `description` text NOT NULL,
  `invitees` text NOT NULL,
  `outreach_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `outreachcoordinators`
--

CREATE TABLE IF NOT EXISTS `outreachcoordinators` (
  `outreach_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(256) NOT NULL,
  `institute_name` varchar(256) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_active` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `outreachcoordinators`
--

-- --------------------------------------------------------

--
-- Table structure for table `workshopdocuments`
--

CREATE TABLE IF NOT EXISTS `workshopdocuments` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `path` varchar(256) NOT NULL,
  `category` varchar(256) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `workshopphotos`
--

CREATE TABLE IF NOT EXISTS `workshopphotos` (
  `id` int(11) NOT NULL,
  `path` text NOT NULL,
  `workshop_report_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `workshopreports`
--

CREATE TABLE IF NOT EXISTS `workshopreports` (
  `workshop_report_id` int(11) NOT NULL,
  `workshop_id` int(11) NOT NULL,
  `attendance_sheet` varchar(256) NOT NULL,
  `college_report` varchar(256) NOT NULL,
  `participants_attended` int(11) NOT NULL,
  `expriments_conducted` int(11) NOT NULL,
  `positive_comments` text NOT NULL,
  `negative_comments` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `workshops`
--

CREATE TABLE IF NOT EXISTS `workshops` (
  `workshop_id` int(11) NOT NULL,
  `location` text NOT NULL,
  `nodal_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `institutes` text NOT NULL,
  `no_of_participants` int(11) NOT NULL,
  `no-of_sessions` int(11) NOT NULL,
  `duration_of_session` int(11) NOT NULL,
  `discipline` varchar(256) NOT NULL,
  `labs_planned` int(11) NOT NULL,
  `other_details` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL,
  `latitude` varchar(256) NOT NULL,
  `longitude` varchar(256) NOT NULL,
  `reason` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nodalcentres`
--
ALTER TABLE `nodalcentres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coordinator_idx` (`nodal_id`);

--
-- Indexes for table `nodalcoordinators`
--
ALTER TABLE `nodalcoordinators`
  ADD PRIMARY KEY (`nodal_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `created_by_idx` (`outreach_id`);

--
-- Indexes for table `nodalcoordinatorstraining`
--
ALTER TABLE `nodalcoordinatorstraining`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by_idx` (`outreach_id`);

--
-- Indexes for table `outreachcoordinators`
--
ALTER TABLE `outreachcoordinators`
  ADD PRIMARY KEY (`outreach_id`);

--
-- Indexes for table `workshopdocuments`
--
ALTER TABLE `workshopdocuments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workshopphotos`
--
ALTER TABLE `workshopphotos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `workshop_report_id` (`workshop_report_id`);

--
-- Indexes for table `workshopreports`
--
ALTER TABLE `workshopreports`
  ADD PRIMARY KEY (`workshop_report_id`),
  ADD UNIQUE KEY `workshop_id` (`workshop_id`);

--
-- Indexes for table `workshops`
--
ALTER TABLE `workshops`
  ADD PRIMARY KEY (`workshop_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nodalcentres`
--
ALTER TABLE `nodalcentres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `nodalcoordinators`
--
ALTER TABLE `nodalcoordinators`
  MODIFY `nodal_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `nodalcoordinatorstraining`
--
ALTER TABLE `nodalcoordinatorstraining`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `outreachcoordinators`
--
ALTER TABLE `outreachcoordinators`
  MODIFY `outreach_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `workshopdocuments`
--
ALTER TABLE `workshopdocuments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `workshopphotos`
--
ALTER TABLE `workshopphotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `workshopreports`
--
ALTER TABLE `workshopreports`
  MODIFY `workshop_report_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `workshops`
--
ALTER TABLE `workshops`
  MODIFY `workshop_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `nodalcentres`
--
ALTER TABLE `nodalcentres`
  ADD CONSTRAINT `coordinator` FOREIGN KEY (`nodal_id`) REFERENCES `nodalcoordinators` (`nodal_id`);

--
-- Constraints for table `nodalcoordinators`
--
ALTER TABLE `nodalcoordinators`
  ADD CONSTRAINT `created_by` FOREIGN KEY (`outreach_id`) REFERENCES `outreachcoordinators` (`outreach_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
