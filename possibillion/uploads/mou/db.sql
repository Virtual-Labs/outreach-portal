-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 31, 2015 at 08:51 AM
-- Server version: 5.5.41-cll-lve
-- PHP Version: 5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `outreach`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('532480a6104b86c4732a571540a81f5f', '49.206.0.78', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:28.0) Gecko/20100101 Firefox/28.0', 1438353640, 'a:2:{s:9:"user_data";s:0:"";s:12:"user_details";a:15:{s:2:"id";s:2:"63";s:4:"name";s:9:"karunakar";s:5:"email";s:36:"karunakar.reddy@possibilliontech.com";s:13:"mobile_number";s:10:"7416542049";s:8:"password";s:32:"c33367701511b4f6020ec61ded352059";s:9:"user_type";s:1:"1";s:6:"center";N;s:6:"status";s:1:"1";s:11:"outreach_id";s:1:"0";s:8:"workshop";N;s:12:"participants";s:0:"";s:11:"experiments";N;s:13:"profile_image";s:13:"outreach2.jpg";s:10:"created_on";s:19:"2015-07-19 03:22:38";s:13:"last_loggedin";s:19:"2015-07-31 13:39:30";}}'),
('a532d67e4be884372ce3d709c695e3d1', '49.206.0.78', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.125 Safari/537.36', 1438353232, '');

-- --------------------------------------------------------

--
-- Table structure for table `nodal_centers`
--

CREATE TABLE IF NOT EXISTS `nodal_centers` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(125) DEFAULT NULL,
  `coordinator` varchar(225) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `mou` varchar(225) DEFAULT NULL,
  `workshop` varchar(225) DEFAULT NULL,
  `participants` varchar(225) DEFAULT NULL,
  `experiments` varchar(225) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `nodal_centers`
--

INSERT INTO `nodal_centers` (`id`, `first_name`, `coordinator`, `email`, `mou`, `workshop`, `participants`, `experiments`) VALUES
(1, 'hyderabad', 'karunakar', 'karana4567@gmail.com', 'hhh', 'hhhh', '4', '5');

-- --------------------------------------------------------

--
-- Table structure for table `presentation_reporting_documents`
--

CREATE TABLE IF NOT EXISTS `presentation_reporting_documents` (
  `document_id` int(11) NOT NULL AUTO_INCREMENT,
  `document_name` varchar(255) NOT NULL,
  `document_path` longtext,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '1',
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`document_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `presentation_reporting_documents`
--

INSERT INTO `presentation_reporting_documents` (`document_id`, `document_name`, `document_path`, `created_on`, `status`, `updated_on`) VALUES
(1, 'Virtual Labs Introduction presentation', '1437746606-66.docx', '2015-07-29 09:02:03', 1, '0000-00-00 00:00:00'),
(2, 'College Report format', '1437747400-13.docx', '2015-07-29 09:01:52', 1, '0000-00-00 00:00:00'),
(3, 'Virtual Labs Introduction presentation', '1437748246-60.docx', '2015-07-29 09:02:07', 3, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `va_admin_details`
--

CREATE TABLE IF NOT EXISTS `va_admin_details` (
  `details_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `works` varchar(200) NOT NULL,
  `participants` varchar(200) NOT NULL,
  `experiments` varchar(200) NOT NULL,
  PRIMARY KEY (`details_id`),
  KEY `admin_id` (`admin_id`),
  KEY `admin_id_2` (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `va_admin_details`
--

INSERT INTO `va_admin_details` (`details_id`, `admin_id`, `first_name`, `last_name`, `email`, `image`, `works`, `participants`, `experiments`) VALUES
(1, 1, 'outreach', 'Admin', 'admin@task.com', '14376608481103.jpg', '', '', ''),
(14, 5, 'task', 'collage', 'collage@task.com', '', '', '', ''),
(15, 6, 'Cms', 'Permission', 'cms@permission.com', '', '', '', ''),
(16, 7, 'tirupati', 'rao', 'thirupathirao57@gmail.com', '', '', '', ''),
(17, 8, 'Rakesh', 'Reddy', 'rakesh.dady143@gmail.com', '', '', '', ''),
(18, 9, 'demo', 'testvv', 'nodaluser@gmail.com', '', '', '', ''),
(19, 10, 'demo', 'testvv', 'karana4567@gmail.com', '', '', '', ''),
(20, 11, 'demo', 'testvv', 'nodaluser12@gmail.com', '', 'demo', 'test', '444'),
(21, 46, 'demo', 'test', 'karana4567@gmail.com', '', 'adas', 'asdasd', '1234'),
(22, 48, '', 'asdffas', 'asdf@gmail.com', '', '', '', ''),
(23, 49, '', 'newdemo', 'karana4567248@gmail.com', '', '', '', ''),
(24, 50, '', 'outreachtest', 'manjula.gangisetty@gmail.com', '', '', '', ''),
(25, 51, '', 'rtrtrtrt', 'adminrt@outreach.com', '', '', '', ''),
(26, 52, '', 'asdffas', 'adminasasasasa@outreach.com', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `va_admin_permissions`
--

CREATE TABLE IF NOT EXISTS `va_admin_permissions` (
  `permission_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) DEFAULT NULL,
  `staff` set('read','write') DEFAULT NULL,
  `company` set('read','write') DEFAULT NULL,
  `students` set('read','write') DEFAULT NULL,
  `tepprogramme` set('read','write') DEFAULT NULL,
  `finishing_school` set('read','write') DEFAULT NULL,
  `courses` set('read','write') DEFAULT NULL,
  `test` set('read','write') DEFAULT NULL,
  `results` set('read','write') NOT NULL,
  `certifications` set('read','write') NOT NULL,
  `downloads` set('read','write') NOT NULL,
  `placements` set('read','write') NOT NULL,
  `notifications` set('read','write') NOT NULL,
  `settings` set('read','write') NOT NULL,
  `careers` set('read','write') DEFAULT NULL,
  `cms` set('read','write') DEFAULT NULL,
  `partners` set('read','write') DEFAULT NULL,
  `news` set('read','write') DEFAULT NULL,
  `contact` set('read','write') DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `edited_by` int(11) NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` int(11) DEFAULT NULL,
  `edited_on` datetime DEFAULT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `va_admin_permissions`
--

INSERT INTO `va_admin_permissions` (`permission_id`, `role_name`, `staff`, `company`, `students`, `tepprogramme`, `finishing_school`, `courses`, `test`, `results`, `certifications`, `downloads`, `placements`, `notifications`, `settings`, `careers`, `cms`, `partners`, `news`, `contact`, `status`, `edited_by`, `added_on`, `added_by`, `edited_on`) VALUES
(1, 'super admin', 'read,write', 'read,write', 'read,write', 'read,write', 'read,write', 'read,write', 'read,write', 'read,write', 'read,write', 'read,write', 'read,write', 'read,write', 'read,write', 'read,write', 'read,write', 'read,write', 'read,write', 'read,write', 1, 0, '2014-11-29 04:55:16', NULL, NULL),
(3, 'Company Admin', '', 'read,write', '', '', NULL, '', NULL, '', '', '', '', '', '', '', '', '', '', '', 1, 0, '2015-04-29 09:46:52', 1, NULL),
(4, 'cms', '', '', '', '', NULL, '', NULL, '', '', '', '', '', '', '', 'read', '', '', NULL, 1, 0, '2015-07-01 11:20:44', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `va_admin_users`
--

CREATE TABLE IF NOT EXISTS `va_admin_users` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_logout` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edited_by` int(11) NOT NULL,
  `edited_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`admin_id`),
  KEY `permission_id` (`permission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='volyty admin users with credentials ' AUTO_INCREMENT=13 ;

--
-- Dumping data for table `va_admin_users`
--

INSERT INTO `va_admin_users` (`admin_id`, `admin_name`, `password`, `permission_id`, `created_on`, `last_login`, `last_logout`, `edited_by`, `edited_on`, `status`) VALUES
(1, 'admin@outreach.com', 'e10adc3949ba59abbe56e057f20f883e', 1, '2015-07-16 19:05:41', '2015-01-29 18:30:00', '2015-01-28 22:43:16', 1, '2015-04-29 02:04:23', 1),
(11, 'nodaluser1@gmail.com', '06e3a8929159582392fc51c3cdb7f9f9', 1, '2015-07-16 19:08:16', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `va_affiliated_colleges`
--

CREATE TABLE IF NOT EXISTS `va_affiliated_colleges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `college_name` text NOT NULL,
  `university` int(11) NOT NULL,
  `course` varchar(100) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  UNIQUE KEY `category_id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=158 ;

--
-- Dumping data for table `va_affiliated_colleges`
--

INSERT INTO `va_affiliated_colleges` (`id`, `college_name`, `university`, `course`, `created_on`, `status`) VALUES
(1, 'Matrix Inst Of Tech', 1, 'MCA/MBA', '2015-07-06 12:35:43', 1),
(2, 'Anjamma Agi Reddy Engineering College for Women', 1, 'B-Tech', '2015-07-07 05:24:33', 1),
(3, 'Bandari Srinivas College of Engineering & Technology', 1, 'B-Tech', '2015-07-07 05:26:47', 1),
(4, 'CMR Engineering College', 1, 'B-Tech', '2015-07-07 05:27:08', 1),
(5, 'Cyberabad Institute of Technology', 1, 'B-Tech', '2015-07-07 05:27:27', 1),
(6, 'Gayatri Institute of Technology & Sciences', 1, 'B-Tech', '2015-07-07 05:27:44', 1),
(7, 'Guru Nanak Institute of Engineering & Technology', 1, 'B-Tech', '2015-07-07 05:28:00', 1),
(8, 'Hasvita Institute of Science & Technology', 1, 'B-Tech', '2015-07-07 05:33:24', 1),
(9, 'Kamakshi College of Engineering & Technology', 1, 'B-Tech', '2015-07-07 05:33:45', 1),
(10, 'KLR Engineering College', 1, 'B-Tech', '2015-07-07 05:34:08', 1),
(11, 'Sree Vaanmayi Institute of Engineering & Technology', 1, 'B-Tech', '2015-07-07 05:34:22', 1),
(12, 'TRV College of Engineering & Technology', 1, 'B-Tech', '2015-07-07 05:34:42', 1),
(13, 'Vidyaniketan Institute of Technology', 1, 'B-Tech', '2015-07-07 05:34:57', 1),
(14, 'Aarushi Group of Institutions', 1, 'B-Tech', '2015-07-07 05:35:28', 1),
(15, 'Anurag Group of Institutions', 1, 'B-Tech', '2015-07-07 05:36:10', 1),
(16, 'Global Group of Institutions', 1, 'B-Tech', '2015-07-07 05:36:24', 1),
(17, 'GSR Group of Institutions', 1, 'B-Tech', '2015-07-07 05:36:41', 1),
(18, 'Harshith Group of Institutions ', 1, 'B-Tech', '2015-07-07 05:36:55', 1),
(19, 'Nova Group of Institutions', 1, 'B-Tech', '2015-07-07 05:37:07', 1),
(20, 'S.V.S Group of Institutions', 1, 'B-Tech', '2015-07-07 05:37:23', 1),
(21, 'Sree Dattha Group of Institutions', 1, 'B-Tech', '2015-07-07 05:37:40', 1),
(22, 'St.Mary College of Engg & Tech', 1, 'B-Tech', '2015-07-07 05:39:15', 1),
(23, 'Vivekananda Group of Institutions', 1, 'B-Tech', '2015-07-07 05:40:07', 1),
(24, 'Lotus Institute of Management Studies', 1, 'MCA/MBA', '2015-07-07 05:40:40', 1),
(25, 'RKLK  PG College', 1, 'MCA/MBA', '2015-07-07 05:42:48', 1),
(26, 'Rousseau Inst. of Management Studies', 1, 'MCA/MBA', '2015-07-07 05:43:04', 1),
(27, 'Sahaja School of Business', 1, 'MCA/MBA', '2015-07-07 05:43:19', 1),
(28, 'Sree Chaitanya P.G. College ', 1, 'MCA/MBA', '2015-07-07 05:44:01', 1),
(29, 'Sree Dattha School of Business Management', 1, 'MCA/MBA', '2015-07-07 05:44:31', 1),
(30, 'Sree kavitha College of Management & Information Technology', 1, 'MCA/MBA', '2015-07-07 05:44:50', 1),
(31, 'SRM PG College ', 1, 'MCA/MBA', '2015-07-07 05:45:10', 1),
(32, 'Ushodaya Inst. of Management, & Technology', 1, 'MCA/MBA', '2015-07-07 05:45:39', 1),
(33, 'Aurora Degree College', 2, 'Degree', '2015-07-07 05:55:12', 1),
(34, 'A.V. Degree College', 2, 'Degree', '2015-07-07 05:55:31', 1),
(35, 'A.K. Navajeevan Degree Coll. for Women', 2, 'Degree', '2015-07-07 05:55:49', 1),
(36, 'ACME Degree College', 2, 'Degree', '2015-07-07 05:56:05', 1),
(37, 'Kranthi Degree College', 2, 'Degree', '2015-07-07 05:56:19', 1),
(38, 'Andhra Yuvathi Mandali Degree College for Women', 2, 'Degree', '2015-07-07 05:56:36', 1),
(39, 'Avanthi Degree College', 2, 'Degree', '2015-07-07 05:56:49', 1),
(40, 'Annie Besant Womens Degree College', 2, 'Degree', '2015-07-07 05:57:05', 1),
(41, 'Arunodaya Degree College', 2, 'Degree', '2015-07-07 05:57:20', 1),
(42, 'Badruka Degree College', 2, 'Degree', '2015-07-07 05:57:38', 1),
(43, 'BBCIT', 2, 'Degree', '2015-07-07 05:58:18', 1),
(44, 'Bhavans New Science Degree College', 2, 'Degree', '2015-07-07 05:58:33', 1),
(45, 'BJR Govt. Degree College', 2, 'Degree', '2015-07-07 05:58:58', 1),
(46, 'Bharat Degree College for Women', 2, 'Degree', '2015-07-07 05:59:14', 1),
(47, 'Bhavans Viveknanda Degree College', 2, 'Degree', '2015-07-07 05:59:31', 1),
(48, 'CAT Degree & PG College', 2, 'Degree', '2015-07-07 05:59:49', 1),
(49, 'Dharmavanth Degree College', 2, 'Degree', '2015-07-07 06:00:07', 1),
(50, 'Dr. B. R. Ambedkar Degree College', 2, 'Degree', '2015-07-07 06:00:25', 1),
(51, 'Dewan Bahadur Padma Rao Modiliar Degree College for Women', 2, 'Degree', '2015-07-07 06:00:41', 1),
(52, 'D.V.M Degree College of Commerce & Science', 2, 'Degree', '2015-07-07 06:00:59', 1),
(53, 'Don Bosco Degree College', 2, 'Degree', '2015-07-07 06:01:15', 1),
(54, 'David Memorial Degree College', 2, 'Degree', '2015-07-07 06:01:32', 1),
(55, 'Govt. Degree College for Women', 2, 'Degree', '2015-07-07 06:01:45', 1),
(56, 'G.M. Sanghi Degree College', 2, 'Degree', '2015-07-07 06:02:01', 1),
(57, 'Gauthami Degree College', 2, 'Degree', '2015-07-07 06:02:18', 1),
(58, 'G. Pulla Reddy Degree College', 2, 'Degree', '2015-07-07 06:02:49', 1),
(59, 'Geetanjali Degree College for Women', 2, 'Degree', '2015-07-07 06:03:05', 1),
(60, 'Gokul Degree College', 2, 'Degree', '2015-07-07 06:03:19', 1),
(61, 'Sree Venkateshwara Degree College', 2, 'Degree', '2015-07-07 06:03:35', 1),
(62, 'Haindavi Degree College', 2, 'Degree', '2015-07-07 06:04:04', 1),
(63, 'Kasturba Gandhi Degree College for Women', 1, 'Degree', '2015-07-07 06:04:28', 1),
(64, 'KEN Degree College', 2, 'Degree', '2015-07-07 06:04:47', 1),
(65, 'Kakitya Degree College', 2, 'Degree', '2015-07-07 06:05:20', 1),
(66, 'Chaitanya Bharathi Institute of Technology', 2, 'B-Tech', '2015-07-07 06:08:56', 1),
(67, 'Deccan College of Engineering &Tech;', 2, 'B-Tech', '2015-07-07 06:13:56', 1),
(68, 'Islamia College of Engineering & Technology for Women', 2, 'B-Tech', '2015-07-07 06:14:11', 1),
(69, 'M J COLLEGE OF ENGINEERING AND TECHNOLOGY', 2, 'B-Tech', '2015-07-07 06:14:25', 1),
(70, 'MATRUSRI ENGINEERING COLLEGE', 2, 'B-Tech', '2015-07-07 06:14:38', 1),
(71, 'Methodist College of Engineering & Technology ', 2, 'B-Tech', '2015-07-07 06:14:52', 1),
(72, 'Muffakham Jah (MJ) College of Engineering & Technology', 2, 'B-Tech', '2015-07-07 06:15:06', 1),
(73, 'MVSR (Maturi Venkata Subba Rao) Engineering College', 2, 'B-Tech', '2015-07-07 06:15:25', 1),
(74, 'Osmania University College of Engineering', 2, 'B-Tech', '2015-07-07 06:15:40', 1),
(75, 'Osmania University College of Technology', 2, 'B-Tech', '2015-07-07 06:15:55', 1),
(76, 'Stanley College of Engineering & Technology for Women', 2, 'B-Tech', '2015-07-07 06:16:10', 1),
(77, 'Swathi Institute of Technology & Sciences', 2, 'B-Tech', '2015-07-07 06:16:22', 1),
(78, 'Vasavi College of Engineering', 2, 'B-Tech', '2015-07-07 06:16:35', 1),
(79, 'Academy of Management Studies', 2, 'MCA/MBA', '2015-07-07 07:03:12', 1),
(80, 'Adarsh PG College of Computer Science', 2, 'MCA/MBA', '2015-07-07 07:03:28', 1),
(81, 'Al-Madina College of Computer Science', 2, 'MCA/MBA', '2015-07-07 07:03:42', 1),
(82, 'Al-Qurmoshi Institute of Business Management', 2, 'MCA/MBA', '2015-07-07 07:03:55', 1),
(83, 'Amjad Ali Khan College of Business Administration', 2, 'MCA/MBA', '2015-07-07 07:04:08', 1),
(84, 'AMS (Andhra Mahila Sabha) School of Informatics for Women ', 2, 'MCA/MBA', '2015-07-07 07:04:21', 1),
(85, 'Andhra Yuvathi Mandali School of Business for Women', 2, 'MCA/MBA', '2015-07-07 07:04:35', 1),
(86, 'Anwar Ul Uloom College For Computer Studies ', 2, 'MCA/MBA', '2015-07-07 07:05:00', 1),
(87, 'Apex College of Management & Computers', 2, 'MCA/MBA', '2015-07-07 07:05:24', 1),
(88, 'Aradhana PG College for MBA for Women', 2, 'MCA/MBA', '2015-07-07 07:05:41', 1),
(89, 'Aurora''s College of PG Studies', 2, 'MCA/MBA', '2015-07-07 07:05:54', 1),
(90, 'Auroras School of Computer Sci and Research', 2, 'MCA/MBA', '2015-07-07 07:06:05', 1),
(91, 'Badruka College PG Centre', 2, 'MCA/MBA', '2015-07-07 07:06:17', 1),
(92, 'Basaveshwara Institute of Information Technology (BIIT)', 2, 'MCA/MBA', '2015-07-07 07:06:32', 1),
(93, 'Brilliant PG College (MCA)', 2, 'MCA/MBA', '2015-07-07 07:06:48', 1),
(94, 'Chaitanya Institute of Business Management', 2, 'MCA/MBA', '2015-07-07 07:07:00', 1),
(95, 'CM Institute of Management', 2, 'MCA/MBA', '2015-07-07 07:07:14', 1),
(96, 'Deccan School of Management', 2, 'MCA/MBA', '2015-07-07 07:07:28', 1),
(97, 'Dr.B.R.Ambedkar Institute of Management & Technology', 2, 'MCA/MBA', '2015-07-07 07:07:40', 1),
(98, 'Hasvita PG College', 2, 'MCA/MBA', '2015-07-07 07:08:02', 1),
(99, 'Holy Mother PG College', 2, 'MCA/MBA', '2015-07-07 07:09:27', 1),
(100, 'Alluri Institute of Management Sciences', 3, 'MCA/MBA', '2015-07-07 07:30:33', 1),
(101, 'Annie Besant PG College ', 3, 'MCA/MBA', '2015-07-07 07:30:47', 1),
(102, 'Apoorva Institute of Management & Sciences', 3, 'MCA/MBA', '2015-07-07 07:31:02', 1),
(103, 'Avinash Institute of Management', 3, 'MCA/MBA', '2015-07-07 07:31:17', 1),
(104, 'Brown''s PG College', 3, 'MCA/MBA', '2015-07-07 07:31:37', 1),
(105, 'Chaitanya PG College', 3, 'MCA/MBA', '2015-07-07 07:31:51', 1),
(106, 'CKM Arts & Science College', 3, 'MCA/MBA', '2015-07-07 07:32:06', 1),
(107, 'Dhanvanthari Institute of Management Sciences', 3, 'MCA/MBA', '2015-07-07 07:32:21', 1),
(108, 'Gaayathri Institute of Management Studies', 3, 'MCA/MBA', '2015-07-07 07:32:35', 1),
(109, 'Herambhu Business School', 3, 'MCA/MBA', '2015-07-07 07:32:51', 1),
(110, 'Jaya Institute of Business Management', 3, 'MCA/MBA', '2015-07-07 07:33:08', 1),
(111, 'Jayamukhi Institute of Management Sciences', 3, 'MCA/MBA', '2015-07-07 07:33:22', 1),
(112, 'Kakatiya Institute of Management Studies', 3, 'MCA/MBA', '2015-07-07 07:33:40', 1),
(113, 'Kakatiya University College', 3, 'MCA/MBA', '2015-07-07 07:33:53', 1),
(114, 'Kavitha Memorial PG College', 3, 'MCA/MBA', '2015-07-07 07:34:07', 1),
(115, 'KU Arts and Science College', 3, 'MCA/MBA', '2015-07-07 07:34:20', 1),
(116, 'Laqshya College of Management', 3, 'MCA/MBA', '2015-07-07 07:34:37', 1),
(117, 'Mahaboobia Panjetan PG College', 3, 'MCA/MBA', '2015-07-07 07:34:52', 1),
(118, 'Manair College of Computer Science', 3, 'MCA/MBA', '2015-07-07 07:35:07', 1),
(119, 'Mohammadiya Institute of Management', 3, 'MCA/MBA', '2015-07-07 07:35:21', 1),
(120, 'New Science PG College', 3, 'MCA/MBA', '2015-07-07 07:35:34', 1),
(121, 'Pragathi School of Business', 3, 'MCA/MBA', '2015-07-07 07:35:48', 1),
(122, 'Rousseau Institute of Management Studies', 3, 'MCA/MBA', '2015-07-07 07:36:23', 1),
(123, 'Shantha Institute of PG College', 3, 'MCA/MBA', '2015-07-07 07:36:39', 1),
(124, 'Sree Chaitanya PG College', 3, 'MCA/MBA', '2015-07-07 07:36:59', 1),
(125, 'Sree Kavitha College of Management & Information Technology', 3, 'MCA/MBA', '2015-07-07 07:37:14', 1),
(126, 'SRM PG College ', 3, 'MCA/MBA', '2015-07-07 07:37:36', 1),
(127, 'Sree Vashistha Institute of Management Studies', 3, 'MCA/MBA', '2015-07-07 07:37:49', 1),
(128, 'Sri Gaayatri College Of Management Sciences', 3, 'MCA/MBA', '2015-07-07 07:38:04', 1),
(129, 'St.John School of Management', 3, 'MCA/MBA', '2015-07-07 07:38:17', 1),
(130, 'SVS PG College', 3, 'MCA/MBA', '2015-07-07 07:38:31', 1),
(131, 'Swarna Bharathi Institute of Management Sciences', 3, 'MCA/MBA', '2015-07-07 07:38:43', 1),
(132, 'Talasila College of Management & Information Technology', 3, 'MCA/MBA', '2015-07-07 07:38:59', 1),
(133, 'Vivekananda Degree & PG College', 3, 'MCA/MBA', '2015-07-07 07:39:21', 1),
(134, 'Government (A.B.V) Degree College, Warangal', 3, 'Degree', '2015-07-07 08:55:51', 1),
(135, 'Government (G.R.P) Degree College, Adilabad', 3, 'Degree', '2015-07-07 08:56:03', 1),
(136, 'Government (J.V.R) Degree College, Khammam', 3, 'Degree', '2015-07-07 08:56:15', 1),
(137, 'Government (Pingle) Degree College for Women, Warangal', 3, 'Degree', '2015-07-07 08:56:26', 1),
(138, 'Government (S.K.N.R) Degree College, Karimnagar', 3, 'Degree', '2015-07-07 08:56:38', 1),
(139, 'Government (S.R and B.G.N.R) Degree College, Khammam', 3, 'Degree', '2015-07-07 08:56:51', 1),
(140, 'Government (S.R.A.S) Degree College, Khammam', 3, 'Degree', '2015-07-07 08:57:03', 1),
(141, 'Government (S.R.R) Degree College, Karimnagar', 3, 'Degree', '2015-07-07 08:57:15', 1),
(142, 'Government Degree College (for Women), Mancherial', 3, 'Degree', '2015-07-07 08:57:31', 1),
(143, 'Government Degree College for Men, Adilabad', 3, 'Degree', '2015-07-07 08:58:22', 1),
(144, 'Kakatia University Arts and Science College, Warangal', 3, 'Degree', '2015-07-07 08:58:36', 1),
(145, 'Kakatiya Government Degree College, Hanamkonda', 3, 'Degree', '2015-07-07 08:58:48', 1),
(146, 'A.K. Vishvanatha Reddy Degree College, Bheemadevarapally Mandal', 3, 'Degree', '2015-07-07 08:59:01', 1),
(147, 'A.S.M. College for Women, Warangal', 3, 'Degree', '2015-07-07 08:59:13', 1),
(148, 'A.V.V. Degree College, Warangal', 3, 'Degree', '2015-07-07 08:59:25', 1),
(149, 'Acharya Degree College, Narsampet', 3, 'Degree', '2015-07-07 08:59:37', 1),
(150, 'Adarsha Degree College, Warangal', 3, 'Degree', '2015-07-07 08:59:51', 1),
(151, 'Adarsha Women''s Degree College, Bellampalli', 3, 'Degree', '2015-07-07 09:00:06', 1),
(152, 'B.B.M. Vaari Gayathri Degree College, Khammam', 3, 'Degree', '2015-07-07 09:00:20', 1),
(153, 'Bharathi Degree College, Warangal', 3, 'Degree', '2015-07-07 09:00:33', 1),
(154, 'Chanakya Degree College, Jammikunta', 3, 'Degree', '2015-07-07 09:00:43', 1),
(155, 'Dr. M.R. Reddy Degree College, Warangal', 3, 'Degree', '2015-07-07 09:00:55', 1),
(156, 'Gandhi Memorial Degree College, Karimnagar', 3, 'Degree', '2015-07-07 09:01:06', 1),
(157, 'Gayatri Degree College, Karimnagar', 3, 'Degree', '2015-07-07 09:01:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `va_branch`
--

CREATE TABLE IF NOT EXISTS `va_branch` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  UNIQUE KEY `category_id` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `va_branch`
--

INSERT INTO `va_branch` (`category_id`, `branch_name`, `created_on`, `status`) VALUES
(1, 'cse', '2015-06-10 12:50:26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `va_careers`
--

CREATE TABLE IF NOT EXISTS `va_careers` (
  `careers_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Status 1-Active 2-Inactive 3-Delete',
  `edited_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `seo_title` varchar(200) NOT NULL,
  `seo_tags` varchar(200) NOT NULL,
  PRIMARY KEY (`careers_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `va_careers`
--

INSERT INTO `va_careers` (`careers_id`, `title`, `description`, `added_on`, `status`, `edited_on`, `seo_title`, `seo_tags`) VALUES
(1, 'FINISHING SCHOOL PILOT', '<p>With a view to meet the shortage of skilled human resource requirements of corporates in the state TASK has taken up an initiative to pilot a Finishing School for Engineering/ MCA graduates.</p>\n\n<p>The finishing school program is for a period of 8 weeks during July 1st - August 31st, 2015 for the students of recognized institutes from Telangana. TASK has taken up a pilot of skilling about 100 engineering graduates. This effort has twin objectives of</p>\n\n<p>(1) Helping young graduates to find jobs by enhancing their employability quotient</p>\n\n<p>(2) Offering skilled candidates to Corporates.</p>\n\n<p>The programme offers rich inputs to enhance and sharpen the required skills among the engineering/MCA graduates and make them employable majorly in the IT and ITES industry. Further this programme does not guarantee employment but helps in enhancing the strike rate of the candidate to get through a job interview and selection process.</p>\n\n<p><strong>Pedagogy</strong></p>\n\n<p>The pedagogy would include concepts, practice sessions, guest lectures, simulations, projects, assignments and case studies with periodic assessments.</p>\n\n<p><strong>Eligibility:</strong></p>\n\n<p>Engineering/MCA graduates of recognized colleges who have completed their B.Tech. /B.E in 2013 or 2014 and are unemployed are eligible to attend the programme. The candidates have to declare that they have not obtained a job while applying for this programme.</p>\n\n<p><strong>Selection:</strong>&nbsp;Selection of candidates will be done on the basis of assessments and a formal interview</p>\n\n<p><strong>Program Fee:</strong>&nbsp;The program fee 2000 Rs/-&nbsp;and non-residential.</p>\n\n<p>Target Audience :&nbsp;Engg/MCA passed outs 2013/14 (unemployed)</p>\n\n<p>Max no of candidates : 100&nbsp;Nos</p>\n\n<p>Total no weeks for training : 8 weeks</p>\n\n<p>No. of days per week : 6 days (Mon- Sat)</p>\n\n<p>Hours of Training for 8 Weeks : 240&nbsp;hrs</p>\n\n<p>Time Frame for Training : July 1st - August 31st, 2015</p>\n\n<p>Training Venue : In and around Hyderabad</p>\n\n<p><strong>Selection Process</strong></p>\n\n<ol>\n <li>Assessment Test (Aptitude, Reasoning and Soft Skills)</li>\n <li>Group Discussion</li>\n <li>Interview</li>\n</ol>', '2015-06-22 16:51:52', 1, '0000-00-00 00:00:00', 'FINISHING SCHOOL PILOT', 'FINISHING SCHOOL PILOT'),
(2, 'SumTotal Systems', '<p>TASK is organizing a recruitment event with SumTotal Systems, LLC, a Skillsoft Company&nbsp;for 2015 pass outs. Eligibility criteria, Job Profile are as given below.</p>\n\n<p><strong><u>Qualification:</u></strong>&nbsp;BE/BTech ( CSE, IT ), Freshers (Male Candidates Only) with 75% aggregate in SSC,INTER and DEGREE</p>\n\n<p><strong><u>Job role:</u></strong>&nbsp;Data Center Admin / System Admin role</p>\n\n<p><strong><u>Skills Required:</u></strong>&nbsp;SQL Server, Windows Server (Both skills are Mandatory)</p>\n\n<p>&nbsp;<strong><u>Shifts:</u></strong>It is a Rotational shifts and rotational weekends (includes Night Shifts also)</p>\n\n<p>&nbsp;<strong><u>Salary Details:</u></strong>&nbsp;From 3.5 LPA (Fixed CTC)</p>\n\n<p>&nbsp;<strong><u>Note:</u></strong></p>\n\n<p>Please make sure candidate note about the shifts to the candidates before confirming their participation and the students should have average knowledge of sql server and windows server.</p>', '2015-06-22 16:52:58', 1, '0000-00-00 00:00:00', 'SumTotal Systems', 'SumTotal Systems'),
(3, 'VEDAIIT Engineer Trainee Recruitment Process', '<p>Selected meritorious candidates will get an opportunity to undergo Company sponsored training in selected domain.On successful completion of their sponsored training at VEDA IIT and completion of their degree in the respective University, they will be getting into the job.</p>\n\n<p>For further information: visit&nbsp;<a href="http://www.vedaiit.org/">www.vedaiit.org</a>,&nbsp;Call: 040-43929999 extn.9907(HR) , mail:<a href="mailto:careers@vedaiit.com">careers@vedaiit.com</a></p>\n\n<p><u><strong>Position</strong></u>:-</p>\n\n<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Engineer trainee in VLSI/Embedded System Design/SW&nbsp;Domains</p>\n\n<p><u><strong>Job Profile</strong></u>:-</p>\n\n<ul>\n <li>\n <p><strong>Logic Design</strong>&nbsp;&ndash;&nbsp;RTL Design, Implementation, Verification &amp; Testing</p>\n </li>\n <li>\n <p><strong>Layout Design</strong>&nbsp;&ndash;&nbsp;Custom layout design using basic components at transistor level, Layout verification</p>\n </li>\n <li>\n <p><strong>Analog Design</strong>&nbsp;&ndash;&nbsp;Analog circuit design, Spice simulation and Verilog A modeling</p>\n </li>\n <li>\n <p><strong>Physical Design</strong>&nbsp;&ndash;&nbsp;Physical placement &amp; Routing, Functional Equivalence Timing Closure and Design Rule Check</p>\n </li>\n <li>\n <p><strong>Embedded System</strong>&nbsp;&ndash;&nbsp;HE design, SYSTEM Engineering, Firmware/ Drivers/ Multimedia/ Application development, Testing, Automation &amp; QA for Mobile, Wearable, IOT systems</p>\n </li>\n <li>\n <p><strong>UX Design</strong>&nbsp;&ndash;&nbsp;Design and Develop Web, Mobile and Wearable products (UI) for worldwide markets based on a deep understanding of Engineering, Business and User needs</p>\n </li>\n <li>\n <p><strong>Project Associate</strong>&nbsp;&ndash;&nbsp;Develop and guide new lab experiments/assignments/mini-projects in VLSI Design at VEDA IIT, Exceptional proficiencies can enable working on industry projects additionally</p>\n </li>\n</ul>\n\n<p><u><strong>Eligibility</strong></u>:-</p>\n\n<p><strong>2015 B.E/B.Tech graduates ( from &nbsp;CSE, IT, ECE, EEE, EIE, EICE, ECM, ETM streams )&nbsp;&nbsp; with 65%</strong>&nbsp;<strong>throughout academics</strong></p>', '2015-06-22 16:54:00', 1, '0000-00-00 00:00:00', 'VEDAIIT Engineer Trainee Recruitment Process', 'VEDAIIT Engineer Trainee Recruitment Process');

-- --------------------------------------------------------

--
-- Table structure for table `va_careers_application`
--

CREATE TABLE IF NOT EXISTS `va_careers_application` (
  `application_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `careers_id` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `resume` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`application_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `va_categories`
--

CREATE TABLE IF NOT EXISTS `va_categories` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  UNIQUE KEY `category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `va_certifications`
--

CREATE TABLE IF NOT EXISTS `va_certifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `certifications_name` varchar(255) NOT NULL,
  `certificate` varchar(255) NOT NULL,
  `program_name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `va_certifications`
--

INSERT INTO `va_certifications` (`id`, `certifications_name`, `certificate`, `program_name`, `status`, `created_on`) VALUES
(1, 'ORACLE-Database and Java', '1434978209-6.docx', 'Certifications', 1, '2015-07-10 12:27:50'),
(2, 'IBM-DB2', '1434978347-7.doc', 'Certifications', 1, '2015-07-10 12:27:22'),
(3, 'MICROSOFT-MTA', '1436524530-23.docx', 'Certifications', 1, '2015-07-10 12:27:09'),
(4, 'GOOGLE - Android', '1436524509-5.docx', 'Certifications', 1, '2015-07-10 12:26:50'),
(5, 'GOOGLE Cloud Computing', '1436524496-18.docx', 'Certifications', 1, '2015-07-10 12:26:32'),
(6, 'AUTODESK Academy Programs', '1436531163-16.doc', 'Certifications', 1, '2015-07-10 12:26:03'),
(7, 'IBM-SAP', '1436524660-93.doc', 'Certifications', 1, '2015-07-10 10:37:40'),
(8, 'ESDM', '1436524726-69.pdf', 'ESDM', 1, '2015-07-10 10:38:46');

-- --------------------------------------------------------

--
-- Table structure for table `va_cms`
--

CREATE TABLE IF NOT EXISTS `va_cms` (
  `cms_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_tags` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Status 1-Active 2-Inactive 3-Delete',
  `added_on` timestamp NULL DEFAULT NULL,
  `edited_on` timestamp NULL DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `edited_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`cms_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `va_cms`
--

INSERT INTO `va_cms` (`cms_id`, `title`, `description`, `seo_title`, `seo_tags`, `status`, `added_on`, `edited_on`, `added_by`, `edited_by`) VALUES
(1, 'About outreach', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\n\n <p><span >There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</span></p>', 'About', 'seo', 1, '2015-06-22 12:24:38', '2015-07-20 18:53:24', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `va_colleges`
--

CREATE TABLE IF NOT EXISTS `va_colleges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `institution` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `college_code` varchar(255) DEFAULT NULL,
  `establishment` year(4) DEFAULT NULL,
  `socity_name` varchar(255) DEFAULT NULL,
  `affiliated_university` int(11) DEFAULT NULL,
  `street` text,
  `village` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `chairman_name` varchar(255) DEFAULT NULL,
  `chairman_office_phone` varchar(20) DEFAULT NULL,
  `chairman_residence_phone` varchar(20) DEFAULT NULL,
  `chairman_mobile` varchar(20) DEFAULT NULL,
  `chairman_fax` varchar(100) DEFAULT NULL,
  `chairman_email` varchar(100) DEFAULT NULL,
  `secretary_name` varchar(255) DEFAULT NULL,
  `secretary_office_phone` varchar(20) DEFAULT NULL,
  `secretary_residence_phone` varchar(20) DEFAULT NULL,
  `secretary_mobile` varchar(20) DEFAULT NULL,
  `secretary_fax` varchar(100) DEFAULT NULL,
  `secretary_email` varchar(100) DEFAULT NULL,
  `principal_name` varchar(255) DEFAULT NULL,
  `principal_office_phone` varchar(20) DEFAULT NULL,
  `principal_residence_phone` varchar(20) DEFAULT NULL,
  `principal_mobile` varchar(20) DEFAULT NULL,
  `principal_fax` varchar(100) DEFAULT NULL,
  `principal_email` varchar(100) DEFAULT NULL,
  `officer_name` varchar(255) DEFAULT NULL,
  `officer_office_phone` varchar(20) DEFAULT NULL,
  `officer_residence_phone` varchar(20) DEFAULT NULL,
  `officer_mobile` varchar(20) DEFAULT NULL,
  `officer_fax` varchar(100) DEFAULT NULL,
  `officer_email` varchar(100) DEFAULT NULL,
  `course_name` text,
  `starting_year` text,
  `current_intake` text,
  `final_year_strength` text,
  `amount` double DEFAULT NULL,
  `dd_number` varchar(255) DEFAULT NULL,
  `drawn_bank` varchar(255) DEFAULT NULL,
  `drawn_date` timestamp NULL DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `declaration` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `password` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `va_colleges`
--

INSERT INTO `va_colleges` (`id`, `institution`, `type`, `college_code`, `establishment`, `socity_name`, `affiliated_university`, `street`, `village`, `district`, `state`, `pincode`, `mobile`, `email`, `fax`, `website`, `chairman_name`, `chairman_office_phone`, `chairman_residence_phone`, `chairman_mobile`, `chairman_fax`, `chairman_email`, `secretary_name`, `secretary_office_phone`, `secretary_residence_phone`, `secretary_mobile`, `secretary_fax`, `secretary_email`, `principal_name`, `principal_office_phone`, `principal_residence_phone`, `principal_mobile`, `principal_fax`, `principal_email`, `officer_name`, `officer_office_phone`, `officer_residence_phone`, `officer_mobile`, `officer_fax`, `officer_email`, `course_name`, `starting_year`, `current_intake`, `final_year_strength`, `amount`, `dd_number`, `drawn_bank`, `drawn_date`, `latitude`, `longitude`, `declaration`, `status`, `password`, `created_on`) VALUES
(1, 'Matrix Inst of Tech', 'New Registration', 'mxit', 2008, 'Matrix Inst of Tech', 1, 'fghdg', 'hyd', 'Hyderabad', 'telangana', '500005', '9492844021', 'edsi.tirupatirao123@gmail.com', '', '', 'ghfgdhg', '3456436456', '3456436456', '3456436456', '', 'admin@task.com', 'ghgfr', '3456436456', '3456436456', '3456436456', '', 'admin@task.com', 'hgjkhgk', '3456436456', '3456436456', '3456436456', '', 'admin@task.com', 'ewrte', '3456436456', '3456436456', '3456436456', '', 'admin@task.com', '["gdfggb","gdfggb"]', '["2015","2015"]', '["bhfgh gdfg fgdfg","bhfgh gdfg fgdfg"]', '["329","329"]', 3000, '325435', 'SBI', '2015-07-30 07:00:00', 17.37, 78.48, 1, 1, '9417', '2015-07-06 13:48:35'),
(2, 'task', 'New Star Status for TASK', 'tsk', 2015, 'panjagutta', 1, 'fsgfd gfg', 'panjagutta', 'Hyderabad', 'telangana', '500005', '9492844021', 'edsi.tirupatirao@gmail.com', '', '', 'gfg', '01234567890', '01234567890', '01234567890', '', 'edsi.tirupatirao@gmail.com', 'gfdehgf', '01234567890', '01234567890', '01234567890', '', 'edsi.tirupatirao@gmail.com', 'gfdh', '01234567890', '01234567890', '01234567890', '', 'edsi.tirupatirao@gmail.com', 'fghfdh', '01234567890', '01234567890', '01234567890', '', 'edsi.tirupatirao@gmail.com', '["gfdsg"]', '["2015"]', '["bhfgh gdfg fgdfg"]', '["329"]', 30000, 'hfg', 'SBI', '2015-07-22 07:00:00', 17.383472495714766, 78.46356350462884, 1, 1, '928372', '2015-07-11 07:11:20'),
(3, 'testing', 'New Registration', 'testing', 2015, 'testing', 0, 'hyderabad', 'hyderabad', 'Adilabad', 'Telangana', '501162', '8977437023', 'postesting2@gmail.com', '', '', 'cs', '1321321231311', '122', '89774370237987987', '', 'POSTESTING@GMAIL.COM', 'DSF', '132', '1231', '11321231231', '', 'POSTESTING@GMAIL.COM', 'SDF', '7798797987987', '7987987979897', '466464632132', '', 'POSTESTING@GMAIL.COM', 'SDSD', '1321321', '123132', '13264654698798798', '', 'POSTESTING@GMAIL.COM', '["dx"]', '["2015"]', '["dd"]', '["2015"]', 2000, '231231', 'sdfds', '2015-07-13 07:00:00', 16.00357577414512, 16.003575774166613, 1, 1, '387962', '2015-07-13 11:52:26');

-- --------------------------------------------------------

--
-- Table structure for table `va_company_resource`
--

CREATE TABLE IF NOT EXISTS `va_company_resource` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(200) NOT NULL,
  `about_company` text NOT NULL,
  `company_logo` varchar(200) NOT NULL,
  `website` text NOT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `contact_person` varchar(200) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `district` varchar(250) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `amount_paid` varchar(200) DEFAULT NULL,
  `paidon` timestamp NULL DEFAULT NULL,
  `keywords` text,
  `status` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `va_company_resource`
--

INSERT INTO `va_company_resource` (`company_id`, `company_name`, `about_company`, `company_logo`, `website`, `latitude`, `longitude`, `email`, `contact_person`, `mobile`, `address`, `district`, `pincode`, `amount_paid`, `paidon`, `keywords`, `status`, `created_on`) VALUES
(1, 'poss', 'poss', '1433932840-83.jpg', 'http://poss.com', 23.019076187293035, 79.43492889404297, 'admin@task.com', 'poss', '1234567890', 'poss', 'poss', '123456', '0', '2015-06-18 18:30:00', 'poss', 3, '2015-06-19 20:47:26'),
(2, 'jntuh', 'Jntuh', '1434710858-86.jpg', 'http://www.jntuh.ac.in/new', 17.38487990481359, 78.48641395568848, 'Pa2registrar@jntuh.ac.in', 'JNT University Hyderabad', '32422253', 'JNT University Hyderabad,\nKukatpally,\nHyderabad 500085.,', 'hyd', '500085', '1000000', '2015-06-19 07:00:00', 'jntuh', 1, '2015-06-19 10:47:38'),
(3, 'Osmania University', 'Osmania University', '1434711127-48.jpg', 'http://www.osmania.ac.in/', 17.455472579972852, 78.50109100341797, 'registrar@osmania.ac.in', 'Osmania University', '4027682444', 'Administrative Building\nOsmania University Campus\nHyderabad-500007\nTelangana State, India.', 'Hyderabad', '500007', '1000000', '2015-06-19 07:00:00', 'Osmania,University', 1, '2015-06-19 13:58:18'),
(4, 'Auroras scientific Technological and Research Academy', 'Auroras scientific Technological and Research Academy', '1434722594-21.png', 'http://astra.edu.in/', 17.41354611437445, 78.40221405029297, 'info@astra.edu.in', 'Aurora''s Scientific, Technological & Research Academy', '9000095217', 'Bandlaguda, Keshavgiri Post, Near Chandrayanagutta,\nHyderabad, Telangana-500005', 'Hyderabad', '500005', '1000000', '2015-06-19 07:00:00', 'Aurora', 1, '2015-06-19 14:03:14'),
(5, 'AV College PG Center', 'AV College PG Center', '1434722807-20.png', 'http://www.avcollege.in/', 17.455472579972827, 78.54503631591797, 'avcollege@gmail.com', 'G.Madhusudhana Rao ', '04065760591', 'Gagan Mahal, Hyderabad-500029 \nTelangana , India.', 'Hyderabad', '500029', '1000000', '2015-06-19 07:00:00', 'av', 1, '2015-06-19 14:06:47'),
(6, 'Holy Mary Institute of Technology', 'Holy Mary Institute of Technology', '1434723109-95.jpg', 'http://hits.ac.in/', 17.602139123350852, 78.58932495117188, 'exambranchhitscoe@gmail.com', 'Holy Mary', '08415200255', 'Bogaram(V), Keesara(M), R.R.Dist., \nAndhra pradesh, India. ', 'Hyderabad', '500005', '1000000', '2015-06-19 07:00:00', 'Holy,Mary', 1, '2015-06-19 14:11:49');

-- --------------------------------------------------------

--
-- Table structure for table `va_contacts`
--

CREATE TABLE IF NOT EXISTS `va_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `va_contacts`
--

INSERT INTO `va_contacts` (`id`, `name`, `email`, `comment`, `status`, `created_on`) VALUES
(1, 'tirupati', 'thirupathirao57@gmail.com', 'This is testing message.', 3, '2015-06-23 14:15:54'),
(2, 'karunakar', 'karunakar.reddy@possibilliontech.com', 'asdf', 0, '2015-07-18 12:44:00'),
(3, 'demo', 'karana456@gmail.com', 'demo', 3, '2015-07-20 13:25:47'),
(4, 'ddfddf', 'fdfdf@gmail.com', 'fvfddfdfvdvd', 3, '2015-07-23 21:13:27');

-- --------------------------------------------------------

--
-- Table structure for table `va_courses`
--

CREATE TABLE IF NOT EXISTS `va_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `course_file` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `va_courses`
--

INSERT INTO `va_courses` (`id`, `title`, `description`, `course_file`, `status`, `created_on`) VALUES
(2, 'php', '<p>this is php course for 2months duration for freshers</p>\n', '1435578716-43.doc', 3, '2015-07-01 12:03:11'),
(3, 'android', '<p>android</p>\n', '1434538743-83.pdf', 3, '2015-06-27 11:59:30'),
(4, 'Employability Questionnaire', '<p>Employability Questionnaire</p>\n', '1435726983-92.pdf', 1, '2015-07-01 05:03:03'),
(5, 'skfdxgkhxkfsk', '<p>&nbsp;dscvjgwulfcglwjhcvjvqwuf</p>\n', '1436789475-8.pdf', 3, '2015-07-13 19:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `va_downloads`
--

CREATE TABLE IF NOT EXISTS `va_downloads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `certificate` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `va_downloads`
--

INSERT INTO `va_downloads` (`id`, `title`, `certificate`, `status`, `created_on`) VALUES
(1, 'TASK 2015-16 College Notification', '1435124160-88.pdf', 1, '2015-06-24 05:36:01'),
(2, 'TASK 2015-16 College Registration form', '1435124197-66.pdf', 1, '2015-06-24 05:36:37'),
(3, 'TASK Degree College Registration Notification 2015-16', '1435124227-56.pdf', 1, '2015-06-24 05:37:07'),
(4, 'TASK Degree College Registration form 2015-16', '1435124249-14.pdf', 1, '2015-06-24 05:37:29'),
(5, 'dfgdsg', '1435124586-35.docx', 3, '2015-06-24 12:43:10');

-- --------------------------------------------------------

--
-- Table structure for table `va_finishing_school_registers`
--

CREATE TABLE IF NOT EXISTS `va_finishing_school_registers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `ssc_percentage` double DEFAULT NULL,
  `inter_percentage` double DEFAULT NULL,
  `btech_percentage` double DEFAULT NULL,
  `aadhar_number` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `address` text,
  `district` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `employed` varchar(20) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `password` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `va_finishing_school_registers`
--

INSERT INTO `va_finishing_school_registers` (`id`, `first_name`, `last_name`, `ssc_percentage`, `inter_percentage`, `btech_percentage`, `aadhar_number`, `category`, `address`, `district`, `state`, `pincode`, `mobile`, `email`, `employed`, `status`, `password`, `created_on`) VALUES
(1, 'tirupati', 'rao', 85, 80, 70, '124314325545', 'OTHERS', 'erwf', 'gdfg', 'dfsgdfs', '500005', '9492844021', 'admin@task.com', 'Yes', 1, '985612', '2015-07-03 13:23:01'),
(2, 'dfgf', 'fgf', 60.65, 50.74, 55.78, '8797979798787797979879879879879', 'SC', 'ffghggf', 'gfh', 'ghfg', '6464646', '8977437023', 'postesting2@gmail.com', 'No', 1, '367986', '2015-07-09 09:33:46'),
(3, 'tirupati', 'rao', 84.167, 80, 70, '124314325545', 'SC', 'fsgfd gfg', 'Hyderabad', 'telangana', '500005', '9492844021', 'edsi.tirupatirao@gmail.com', 'Yes', 1, '799921', '2015-07-10 07:15:29');

-- --------------------------------------------------------

--
-- Table structure for table `va_gallery`
--

CREATE TABLE IF NOT EXISTS `va_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `images` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `va_gallery`
--

INSERT INTO `va_gallery` (`id`, `title`, `images`, `status`, `created_on`) VALUES
(1, 'demo', '[["aftercitruscheckoutpage.png","Screenshot from 2015-01-08 12:42:47.png","Screenshot from 2015-01-08 12:42:23.png","Screenshot from 2014-12-31 11:52:30.png"]]', 3, '2015-07-14 14:51:31'),
(2, 'DEMO1', '[["Screenshot from 2015-01-08 12:42:47.png","Screenshot from 2015-01-08 12:42:23.png","Screenshot from 2014-12-31 11:52:30.png"]]', 3, '2015-07-14 15:11:53'),
(3, 'demo2', '[["Screenshot from 2015-01-08 12:42:47.png","Screenshot from 2015-01-08 12:42:23.png","Screenshot from 2014-12-31 11:52:30.png"]]', 3, '2015-07-14 15:11:50'),
(4, 'demo21', '[["Screenshot from 2015-01-08 12:42:23.png","Screenshot from 2014-12-31 11:52:30.png"]]', 3, '2015-07-14 15:11:46'),
(5, 'demo21', '[["Screenshot from 2015-01-08 12:42:23.png","Screenshot from 2014-12-31 11:52:30.png"]]', 3, '2015-07-14 15:11:43'),
(6, 'demo11', '[["aftercitruscheckoutpage.png","Screenshot from 2015-01-08 12:42:47.png","Screenshot from 2015-01-08 12:42:23.png"]]', 3, '2015-07-14 15:11:40'),
(7, 'demo1', '[["Desert.jpg"]]', 0, '2015-07-14 09:55:37'),
(8, 'demo', '[["Chrysanthemum.jpg","Desert.jpg"]]', 0, '2015-07-14 09:53:56');

-- --------------------------------------------------------

--
-- Table structure for table `va_logs`
--

CREATE TABLE IF NOT EXISTS `va_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` text NOT NULL,
  `type` varchar(100) NOT NULL,
  `msg_type` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=541 ;

--
-- Dumping data for table `va_logs`
--

INSERT INTO `va_logs` (`id`, `subject`, `type`, `msg_type`, `created`) VALUES
(1, ' has been Created. ', 'collages', 'success', '2015-06-10 10:01:49'),
(2, ' has been Updated. ', 'collages', 'success', '2015-06-10 10:39:10'),
(3, ' has been Updated. ', 'collages', 'success', '2015-06-10 10:40:06'),
(4, ' has been Updated. ', 'collages', 'success', '2015-06-10 10:40:40'),
(5, 'company has been deleted. ', 'collages', 'success', '2015-06-10 10:41:31'),
(6, 'Task has been updated. ', 'Staff', 'success', '2015-06-10 10:44:01'),
(7, 'Cse has been Created. ', 'corporate', 'success', '2015-06-10 12:46:15'),
(8, 'Cse123 has been Updated. ', 'category', 'success', '2015-06-10 12:48:36'),
(9, 'Cse has been Updated. ', 'category', 'success', '2015-06-10 12:48:44'),
(10, 'company has been deleted. ', 'category', 'success', '2015-06-10 12:50:18'),
(11, 'notification has been Created. ', 'corporate', 'success', '2015-06-11 09:31:21'),
(12, 'notification has been Created. ', 'corporate', 'success', '2015-06-11 09:38:43'),
(13, 'notification has been Created. ', 'corporate', 'success', '2015-06-11 09:39:43'),
(14, 'notification has been Created. ', 'corporate', 'success', '2015-06-11 09:41:07'),
(15, 'notification has been Created. ', 'corporate', 'success', '2015-06-11 09:42:21'),
(16, 'company has been deleted. ', 'category', 'success', '2015-06-11 09:45:41'),
(17, 'company has been deleted. ', 'category', 'success', '2015-06-11 09:46:21'),
(18, 'notifications has been Updated. ', 'category', 'success', '2015-06-11 09:58:59'),
(19, 'notifications has been Updated. ', 'category', 'success', '2015-06-11 11:55:46'),
(20, 'notification has been Created. ', 'corporate', 'success', '2015-06-11 11:56:07'),
(21, 'company has been deleted. ', 'category', 'success', '2015-06-11 11:56:20'),
(22, 'company has been deleted. ', 'collages', 'success', '2015-06-12 07:28:37'),
(23, 'notification has been Created. ', 'corporate', 'success', '2015-06-13 14:00:47'),
(24, 'Poss has been Created. ', 'placements', 'success', '2015-06-17 10:30:32'),
(25, 'Android has been Created. ', 'courses', 'success', '2015-06-17 10:59:03'),
(26, ' has been Updated. ', 'collages', 'success', '2015-06-19 10:16:44'),
(27, ' has been Created. ', 'collages', 'success', '2015-06-19 10:47:38'),
(28, ' has been Created. ', 'collages', 'success', '2015-06-19 10:52:07'),
(29, ' has been Updated. ', 'collages', 'success', '2015-06-19 11:35:34'),
(30, 'company has been deleted. ', 'collages', 'success', '2015-06-19 13:47:26'),
(31, ' has been Updated. ', 'collages', 'success', '2015-06-19 13:55:05'),
(32, ' has been Updated. ', 'collages', 'success', '2015-06-19 13:58:18'),
(33, ' has been Created. ', 'collages', 'success', '2015-06-19 14:03:14'),
(34, ' has been Created. ', 'collages', 'success', '2015-06-19 14:06:47'),
(35, ' has been Created. ', 'collages', 'success', '2015-06-19 14:11:49'),
(36, 'TASK 2015-16 College Notification has been added. ', 'news', 'success', '2015-06-22 06:56:18'),
(37, 'TASK Degree College Registration Notification 2015-16 has been added. ', 'news', 'success', '2015-06-22 06:58:39'),
(38, 'TASK 2015-16 College Registration form has been added. ', 'news', 'success', '2015-06-22 08:09:24'),
(39, 'TASK 2015-16 College Registration form has been updated. ', 'news', 'success', '2015-06-22 08:43:27'),
(40, 'TASK 2015-16 College Registration form has been updated. ', 'news', 'success', '2015-06-22 08:44:06'),
(41, 'TASK 2015-16 College Registration form has been updated. ', 'news', 'success', '2015-06-22 08:44:53'),
(42, 'TASK 2015-16 College Registration form has been updated. ', 'news', 'success', '2015-06-22 08:45:31'),
(43, 'TASK 2015-16 College Registration form has been updated. ', 'news', 'success', '2015-06-22 08:59:30'),
(44, 'TASK 2015-16 College Registration form has been updated. ', 'news', 'success', '2015-06-22 09:02:36'),
(45, 'TASK 2015-16 College Registration form has been updated. ', 'news', 'success', '2015-06-22 09:03:04'),
(46, ' has been toggled. ', 'news', 'success', '2015-06-22 09:04:10'),
(47, ' has been toggled. ', 'news', 'success', '2015-06-22 09:04:20'),
(48, 'TASK 2015-16 College Notification has been updated. ', 'news', 'success', '2015-06-22 09:04:40'),
(49, 'TASK Degree College Registration Notification 2015-16 has been updated. ', 'news', 'success', '2015-06-22 09:08:09'),
(50, 'FINISHING SCHOOL PILOT has been added. ', 'careers', 'success', '2015-06-22 09:51:52'),
(51, 'SumTotal Systems has been added. ', 'careers', 'success', '2015-06-22 09:52:58'),
(52, 'VEDAIIT Engineer Trainee Recruitment Process has been added. ', 'careers', 'success', '2015-06-22 09:54:00'),
(53, 'Oracle Academy has been Created. ', 'placements', 'success', '2015-06-22 10:49:33'),
(54, 'Tech Trunk has been Created. ', 'placements', 'success', '2015-06-22 10:51:43'),
(55, 'SumTotal Systems, LLC, a Skillsoft company. has been Created. ', 'placements', 'success', '2015-06-22 10:53:08'),
(56, 'ORACLE ( Database and Java ) has been Created. ', 'certifications', 'success', '2015-06-22 13:03:30'),
(57, 'IBM ( DB2 ) has been Created. ', 'certifications', 'success', '2015-06-22 13:05:47'),
(58, 'MICROSOFT ( MTA ) has been Created. ', 'certifications', 'success', '2015-06-22 13:07:31'),
(59, 'GOOGLE ( Android ) has been Created. ', 'certifications', 'success', '2015-06-22 13:07:57'),
(60, 'GOOGLE ( Android ) has been Updated. ', 'certifications', 'success', '2015-06-22 13:08:18'),
(61, 'GOOGLE ( Android ) has been Updated. ', 'certifications', 'success', '2015-06-22 13:21:37'),
(62, 'GOOGLE ( Cloud Computing ) has been Created. ', 'certifications', 'success', '2015-06-22 13:22:34'),
(63, 'GOOGLE ( Cloud Computing ) has been Updated. ', 'certifications', 'success', '2015-06-22 13:23:03'),
(64, 'AUTODESK ( AutoCad ) has been Created. ', 'certifications', 'success', '2015-06-22 13:23:36'),
(65, 'company has been deleted. ', 'category', 'success', '2015-06-23 04:19:25'),
(66, 'company has been deleted. ', 'category', 'success', '2015-06-23 04:19:32'),
(67, 'notification has been Created. ', 'corporate', 'success', '2015-06-23 04:52:56'),
(68, 'notification has been Created. ', 'corporate', 'success', '2015-06-23 04:57:35'),
(69, 'notification has been Created. ', 'corporate', 'success', '2015-06-23 04:58:32'),
(70, 'notification has been Created. ', 'corporate', 'success', '2015-06-23 04:59:21'),
(71, 'Contact has been deleted. ', 'category', 'success', '2015-06-23 07:15:54'),
(72, 'AUTODESK ( AutoCad ) has been Updated. ', 'downloads', 'success', '2015-06-24 05:19:02'),
(73, 'downloads has been deleted. ', 'downloads', 'success', '2015-06-24 05:19:11'),
(74, 'TASK 2015-16 College Notification has been Created. ', 'downloads', 'success', '2015-06-24 05:36:01'),
(75, 'TASK 2015-16 College Registration form has been Created. ', 'downloads', 'success', '2015-06-24 05:36:37'),
(76, 'TASK Degree College Registration Notification 2015-16 has been Created. ', 'downloads', 'success', '2015-06-24 05:37:07'),
(77, 'TASK Degree College Registration form 2015-16 has been Created. ', 'downloads', 'success', '2015-06-24 05:37:29'),
(78, 'Dfgdsg has been Created. ', 'downloads', 'success', '2015-06-24 05:43:06'),
(79, 'downloads has been deleted. ', 'downloads', 'success', '2015-06-24 05:43:10'),
(80, 'TASK has been Created. ', 'testimonials', 'success', '2015-06-24 06:38:28'),
(81, 'NASSCOM has been Created. ', 'testimonials', 'success', '2015-06-24 06:45:46'),
(82, 'NASSCOM123 has been Updated. ', 'testimonials', 'success', '2015-06-24 06:48:21'),
(83, 'NASSCOM has been Updated. ', 'testimonials', 'success', '2015-06-24 06:48:30'),
(84, 'testimonials has been deleted. ', 'testimonials', 'success', '2015-06-24 06:49:36'),
(85, 'testimonials has been deleted. ', 'testimonials', 'success', '2015-06-24 07:17:47'),
(86, 'testimonials has been deleted. ', 'testimonials', 'success', '2015-06-24 07:17:49'),
(87, 'TASK 2015-16 College Registration form123 has been updated. ', 'news', 'success', '2015-06-24 09:53:19'),
(88, 'TASK 2015-16 College Registration form has been updated. ', 'news', 'success', '2015-06-24 09:53:31'),
(89, 'ABC has been added. ', 'partners', 'success', '2015-06-24 09:55:29'),
(90, 'ABCvgdgdsg has been updated. ', 'partners', 'success', '2015-06-24 09:56:04'),
(91, 'ABCv has been updated. ', 'partners', 'success', '2015-06-24 09:56:24'),
(92, 'Virtual Labs has been added. ', 'partners', 'success', '2015-06-24 10:23:43'),
(93, 'ISB has been added. ', 'partners', 'success', '2015-06-24 10:24:56'),
(94, 'Tucson Electric Power has been added. ', 'partners', 'success', '2015-06-24 10:26:29'),
(95, ' has been toggled. ', 'partners', 'success', '2015-06-24 10:27:10'),
(96, ' has been toggled. ', 'partners', 'success', '2015-06-24 10:27:13'),
(97, 'VEDAIIT has been Created. ', 'placements', 'success', '2015-06-24 13:01:01'),
(98, 'courses has been deleted. ', 'courses', 'success', '2015-06-27 04:59:30'),
(99, 'Php has been Updated. ', 'courses', 'success', '2015-06-29 11:48:17'),
(100, 'Php has been Updated. ', 'courses', 'success', '2015-06-29 11:51:56'),
(101, 'Employability Questionnaire has been Created. ', 'courses', 'success', '2015-06-29 11:53:50'),
(102, 'Question has been Created. ', 'questions', 'success', '2015-06-29 11:55:10'),
(103, 'Question has been Created. ', 'questions', 'success', '2015-06-29 11:56:09'),
(104, 'Question has been Created. ', 'questions', 'success', '2015-06-29 11:57:21'),
(105, 'Question has been Updated. ', 'questions', 'success', '2015-06-29 11:58:07'),
(106, 'Question has been Created. ', 'questions', 'success', '2015-06-29 12:04:18'),
(107, 'Question has been Created. ', 'questions', 'success', '2015-06-29 12:10:01'),
(108, 'Question has been Created. ', 'questions', 'success', '2015-06-29 12:25:41'),
(109, 'Question has been Created. ', 'questions', 'success', '2015-06-29 12:29:42'),
(110, 'Question has been Created. ', 'questions', 'success', '2015-06-29 12:41:17'),
(111, 'Question has been Created. ', 'questions', 'success', '2015-06-29 12:42:04'),
(112, 'Question has been Created. ', 'questions', 'success', '2015-06-29 12:42:58'),
(113, 'Question has been Created. ', 'questions', 'success', '2015-06-29 12:43:54'),
(114, 'Question has been Created. ', 'questions', 'success', '2015-06-29 12:44:46'),
(115, 'Question has been Created. ', 'questions', 'success', '2015-06-29 12:45:34'),
(116, 'Question has been Created. ', 'questions', 'success', '2015-06-29 12:46:28'),
(117, 'Question has been Created. ', 'questions', 'success', '2015-06-29 12:48:50'),
(118, 'registration has been deleted. ', 'registrations', 'success', '2015-06-29 13:23:10'),
(119, 'student has been deleted. ', 'students', 'success', '2015-06-29 13:24:42'),
(120, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:24:04'),
(121, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:25:01'),
(122, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:25:38'),
(123, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:26:34'),
(124, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:28:36'),
(125, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:30:39'),
(126, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:32:39'),
(127, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:33:29'),
(128, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:34:38'),
(129, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:35:49'),
(130, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:36:57'),
(131, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:37:42'),
(132, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:38:26'),
(133, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:39:13'),
(134, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:40:28'),
(135, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:41:12'),
(136, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:42:00'),
(137, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:42:56'),
(138, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:43:43'),
(139, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:44:33'),
(140, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:45:18'),
(141, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:46:05'),
(142, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:46:40'),
(143, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:47:22'),
(144, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:47:57'),
(145, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:49:04'),
(146, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:49:50'),
(147, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:50:43'),
(148, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:51:24'),
(149, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:52:50'),
(150, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:53:31'),
(151, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:54:02'),
(152, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:54:46'),
(153, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:55:28'),
(154, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:56:10'),
(155, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:56:54'),
(156, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:57:42'),
(157, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:58:20'),
(158, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:59:02'),
(159, 'Question has been Created. ', 'questions', 'success', '2015-06-30 04:59:45'),
(160, 'Question has been Created. ', 'questions', 'success', '2015-06-30 05:00:33'),
(161, 'Question has been Created. ', 'questions', 'success', '2015-06-30 05:14:19'),
(162, 'Question has been Created. ', 'questions', 'success', '2015-06-30 05:14:56'),
(163, 'Question has been Created. ', 'questions', 'success', '2015-06-30 05:15:43'),
(164, 'Question has been Created. ', 'questions', 'success', '2015-06-30 05:16:45'),
(165, 'Question has been Updated. ', 'questions', 'success', '2015-06-30 05:17:30'),
(166, 'Question has been Updated. ', 'questions', 'success', '2015-06-30 05:17:55'),
(167, 'Employability Questionnaire has been Updated. ', 'courses', 'success', '2015-07-01 04:35:08'),
(168, 'Employability Questionnaire has been Updated. ', 'courses', 'success', '2015-07-01 05:03:03'),
(169, 'courses has been deleted. ', 'courses', 'success', '2015-07-01 05:03:11'),
(170, 'student has been deleted. ', 'students', 'success', '2015-07-01 07:05:03'),
(171, 'TEP Progremme has been Approved. ', 'students', 'success', '2015-07-01 07:36:59'),
(172, 'General Admin Permission has been updated. ', 'Staff', 'success', '2015-07-01 11:19:50'),
(173, 'General Admin Permission has been updated. ', 'Staff', 'success', '2015-07-01 11:20:01'),
(174, ' Permission has been Added. ', 'Staff', 'success', '2015-07-01 11:20:44'),
(175, 'Task has been updated. ', 'Staff', 'success', '2015-07-01 11:21:33'),
(176, 'Task has been updated. ', 'Staff', 'success', '2015-07-01 11:21:42'),
(177, 'Cms has been added. ', 'Staff', 'success', '2015-07-01 11:22:30'),
(178, 'Tirupati has been added. ', 'Staff', 'success', '2015-07-01 11:25:45'),
(179, 'Careers Admin Permission has been updated. ', 'Staff', 'success', '2015-07-01 11:28:45'),
(180, ' has been toggled. ', 'partners', 'success', '2015-07-02 04:40:59'),
(181, 'ISB has been updated. ', 'partners', 'success', '2015-07-02 05:49:10'),
(182, ' has been toggled. ', 'partners', 'success', '2015-07-02 05:50:54'),
(183, ' has been toggled. ', 'partners', 'success', '2015-07-02 09:59:46'),
(184, 'student has been Approved. ', 'students', 'success', '2015-07-03 12:54:31'),
(185, 'Matrix Inst Of Tech has been Created. ', 'corporate', 'success', '2015-07-06 12:32:30'),
(186, 'College has been deleted. ', 'category', 'success', '2015-07-06 12:35:26'),
(187, 'Anjamma Agi Reddy Engineering College for Women has been Created. ', 'corporate', 'success', '2015-07-07 05:24:33'),
(188, 'Bandari Srinivas College of Engineering & Technology has been Created. ', 'corporate', 'success', '2015-07-07 05:26:47'),
(189, 'CMR Engineering College has been Created. ', 'corporate', 'success', '2015-07-07 05:27:08'),
(190, 'Cyberabad Institute of Technology has been Created. ', 'corporate', 'success', '2015-07-07 05:27:27'),
(191, 'Gayatri Institute of Technology & Sciences has been Created. ', 'corporate', 'success', '2015-07-07 05:27:44'),
(192, 'Guru Nanak Institute of Engineering & Technology has been Created. ', 'corporate', 'success', '2015-07-07 05:28:00'),
(193, 'Hasvita Institute of Science & Technology has been Created. ', 'corporate', 'success', '2015-07-07 05:33:24'),
(194, 'Kamakshi College of Engineering & Technology has been Created. ', 'corporate', 'success', '2015-07-07 05:33:45'),
(195, 'KLR Engineering College has been Created. ', 'corporate', 'success', '2015-07-07 05:34:08'),
(196, 'Sree Vaanmayi Institute of Engineering & Technology has been Created. ', 'corporate', 'success', '2015-07-07 05:34:22'),
(197, 'TRV College of Engineering & Technology has been Created. ', 'corporate', 'success', '2015-07-07 05:34:42'),
(198, 'Vidyaniketan Institute of Technology has been Created. ', 'corporate', 'success', '2015-07-07 05:34:57'),
(199, 'Aarushi Group of Institutions has been Created. ', 'corporate', 'success', '2015-07-07 05:35:28'),
(200, 'Anurag Group of Institutions has been Created. ', 'corporate', 'success', '2015-07-07 05:36:10'),
(201, 'Global Group of Institutions has been Created. ', 'corporate', 'success', '2015-07-07 05:36:24'),
(202, 'GSR Group of Institutions has been Created. ', 'corporate', 'success', '2015-07-07 05:36:41'),
(203, 'Harshith Group of Institutions  has been Created. ', 'corporate', 'success', '2015-07-07 05:36:55'),
(204, 'Nova Group of Institutions has been Created. ', 'corporate', 'success', '2015-07-07 05:37:07'),
(205, 'S.V.S Group of Institutions has been Created. ', 'corporate', 'success', '2015-07-07 05:37:23'),
(206, 'Sree Dattha Group of Institutions has been Created. ', 'corporate', 'success', '2015-07-07 05:37:40'),
(207, 'St.Mary College of Engg & Tech has been Created. ', 'corporate', 'success', '2015-07-07 05:39:15'),
(208, 'Vivekananda Group of Institutions has been Created. ', 'corporate', 'success', '2015-07-07 05:40:07'),
(209, 'Lotus Institute of Management Studies has been Created. ', 'corporate', 'success', '2015-07-07 05:40:40'),
(210, 'RKLK  PG College has been Created. ', 'corporate', 'success', '2015-07-07 05:42:48'),
(211, 'Rousseau Inst. of Management Studies has been Created. ', 'corporate', 'success', '2015-07-07 05:43:04'),
(212, 'Sahaja School of Business has been Created. ', 'corporate', 'success', '2015-07-07 05:43:19'),
(213, 'Sree Chaitanya P.G. College  has been Created. ', 'corporate', 'success', '2015-07-07 05:44:01'),
(214, 'Sree Dattha School of Business Management has been Created. ', 'corporate', 'success', '2015-07-07 05:44:31'),
(215, 'Sree kavitha College of Management & Information Technology has been Created. ', 'corporate', 'success', '2015-07-07 05:44:50'),
(216, 'SRM PG College  has been Created. ', 'corporate', 'success', '2015-07-07 05:45:10'),
(217, 'Ushodaya Inst. of Management, & Technology has been Created. ', 'corporate', 'success', '2015-07-07 05:45:39'),
(218, 'Aurora Degree College has been Created. ', 'corporate', 'success', '2015-07-07 05:55:12'),
(219, 'A.V. Degree College has been Created. ', 'corporate', 'success', '2015-07-07 05:55:31'),
(220, 'A.K. Navajeevan Degree Coll. for Women has been Created. ', 'corporate', 'success', '2015-07-07 05:55:49'),
(221, 'ACME Degree College has been Created. ', 'corporate', 'success', '2015-07-07 05:56:05'),
(222, 'Kranthi Degree College has been Created. ', 'corporate', 'success', '2015-07-07 05:56:19'),
(223, 'Andhra Yuvathi Mandali Degree College for Women has been Created. ', 'corporate', 'success', '2015-07-07 05:56:36'),
(224, 'Avanthi Degree College has been Created. ', 'corporate', 'success', '2015-07-07 05:56:49'),
(225, 'Annie Besant Womens Degree College has been Created. ', 'corporate', 'success', '2015-07-07 05:57:05'),
(226, 'Arunodaya Degree College has been Created. ', 'corporate', 'success', '2015-07-07 05:57:20'),
(227, 'Badruka Degree College has been Created. ', 'corporate', 'success', '2015-07-07 05:57:38'),
(228, 'BBCIT has been Created. ', 'corporate', 'success', '2015-07-07 05:58:18'),
(229, 'Bhavans New Science Degree College has been Created. ', 'corporate', 'success', '2015-07-07 05:58:33'),
(230, 'BJR Govt. Degree College has been Created. ', 'corporate', 'success', '2015-07-07 05:58:58'),
(231, 'Bharat Degree College for Women has been Created. ', 'corporate', 'success', '2015-07-07 05:59:14'),
(232, 'Bhavans Viveknanda Degree College has been Created. ', 'corporate', 'success', '2015-07-07 05:59:31'),
(233, 'CAT Degree & PG College has been Created. ', 'corporate', 'success', '2015-07-07 05:59:49'),
(234, 'Dharmavanth Degree College has been Created. ', 'corporate', 'success', '2015-07-07 06:00:07'),
(235, 'Dr. B. R. Ambedkar Degree College has been Created. ', 'corporate', 'success', '2015-07-07 06:00:25'),
(236, 'Dewan Bahadur Padma Rao Modiliar Degree College for Women has been Created. ', 'corporate', 'success', '2015-07-07 06:00:41'),
(237, 'D.V.M Degree College of Commerce & Science has been Created. ', 'corporate', 'success', '2015-07-07 06:00:59'),
(238, 'Don Bosco Degree College has been Created. ', 'corporate', 'success', '2015-07-07 06:01:15'),
(239, 'David Memorial Degree College has been Created. ', 'corporate', 'success', '2015-07-07 06:01:32'),
(240, 'Govt. Degree College for Women has been Created. ', 'corporate', 'success', '2015-07-07 06:01:45'),
(241, 'G.M. Sanghi Degree College has been Created. ', 'corporate', 'success', '2015-07-07 06:02:01'),
(242, 'Gauthami Degree College has been Created. ', 'corporate', 'success', '2015-07-07 06:02:18'),
(243, 'G. Pulla Reddy Degree College has been Created. ', 'corporate', 'success', '2015-07-07 06:02:49'),
(244, 'Geetanjali Degree College for Women has been Created. ', 'corporate', 'success', '2015-07-07 06:03:05'),
(245, 'Gokul Degree College has been Created. ', 'corporate', 'success', '2015-07-07 06:03:19'),
(246, 'Sree Venkateshwara Degree College has been Created. ', 'corporate', 'success', '2015-07-07 06:03:35'),
(247, 'Haindavi Degree College has been Created. ', 'corporate', 'success', '2015-07-07 06:04:04'),
(248, 'Kasturba Gandhi Degree College for Women has been Created. ', 'corporate', 'success', '2015-07-07 06:04:28'),
(249, 'KEN Degree College has been Created. ', 'corporate', 'success', '2015-07-07 06:04:47'),
(250, 'Kakitya Degree College has been Created. ', 'corporate', 'success', '2015-07-07 06:05:20'),
(251, 'Chaitanya Bharathi Institute of Technology has been Created. ', 'corporate', 'success', '2015-07-07 06:08:56'),
(252, 'Deccan College of Engineering &Tech; has been Created. ', 'corporate', 'success', '2015-07-07 06:13:56'),
(253, 'Islamia College of Engineering & Technology for Women has been Created. ', 'corporate', 'success', '2015-07-07 06:14:11'),
(254, 'M J COLLEGE OF ENGINEERING AND TECHNOLOGY has been Created. ', 'corporate', 'success', '2015-07-07 06:14:25'),
(255, 'MATRUSRI ENGINEERING COLLEGE has been Created. ', 'corporate', 'success', '2015-07-07 06:14:38'),
(256, 'Methodist College of Engineering & Technology  has been Created. ', 'corporate', 'success', '2015-07-07 06:14:52'),
(257, 'Muffakham Jah (MJ) College of Engineering & Technology has been Created. ', 'corporate', 'success', '2015-07-07 06:15:06'),
(258, 'MVSR (Maturi Venkata Subba Rao) Engineering College has been Created. ', 'corporate', 'success', '2015-07-07 06:15:25'),
(259, 'Osmania University College of Engineering has been Created. ', 'corporate', 'success', '2015-07-07 06:15:40'),
(260, 'Osmania University College of Technology has been Created. ', 'corporate', 'success', '2015-07-07 06:15:55'),
(261, 'Stanley College of Engineering & Technology for Women has been Created. ', 'corporate', 'success', '2015-07-07 06:16:10'),
(262, 'Swathi Institute of Technology & Sciences has been Created. ', 'corporate', 'success', '2015-07-07 06:16:22'),
(263, 'Vasavi College of Engineering has been Created. ', 'corporate', 'success', '2015-07-07 06:16:35'),
(264, 'Academy of Management Studies has been Created. ', 'corporate', 'success', '2015-07-07 07:03:12'),
(265, 'Adarsh PG College of Computer Science has been Created. ', 'corporate', 'success', '2015-07-07 07:03:28'),
(266, 'Al-Madina College of Computer Science has been Created. ', 'corporate', 'success', '2015-07-07 07:03:42'),
(267, 'Al-Qurmoshi Institute of Business Management has been Created. ', 'corporate', 'success', '2015-07-07 07:03:55'),
(268, 'Amjad Ali Khan College of Business Administration has been Created. ', 'corporate', 'success', '2015-07-07 07:04:08'),
(269, 'AMS (Andhra Mahila Sabha) School of Informatics for Women  has been Created. ', 'corporate', 'success', '2015-07-07 07:04:21'),
(270, 'Andhra Yuvathi Mandali School of Business for Women has been Created. ', 'corporate', 'success', '2015-07-07 07:04:35'),
(271, 'Anwar Ul Uloom College For Computer Studies  has been Created. ', 'corporate', 'success', '2015-07-07 07:05:00'),
(272, 'Apex College of Management & Computers has been Created. ', 'corporate', 'success', '2015-07-07 07:05:24'),
(273, 'Aradhana PG College for MBA for Women has been Created. ', 'corporate', 'success', '2015-07-07 07:05:41'),
(274, 'Aurora''s College of PG Studies has been Created. ', 'corporate', 'success', '2015-07-07 07:05:54'),
(275, 'Auroras School of Computer Sci and Research has been Created. ', 'corporate', 'success', '2015-07-07 07:06:05'),
(276, 'Badruka College PG Centre has been Created. ', 'corporate', 'success', '2015-07-07 07:06:17'),
(277, 'Basaveshwara Institute of Information Technology (BIIT) has been Created. ', 'corporate', 'success', '2015-07-07 07:06:32'),
(278, 'Brilliant PG College (MCA) has been Created. ', 'corporate', 'success', '2015-07-07 07:06:48'),
(279, 'Chaitanya Institute of Business Management has been Created. ', 'corporate', 'success', '2015-07-07 07:07:00'),
(280, 'CM Institute of Management has been Created. ', 'corporate', 'success', '2015-07-07 07:07:14'),
(281, 'Deccan School of Management has been Created. ', 'corporate', 'success', '2015-07-07 07:07:28'),
(282, 'Dr.B.R.Ambedkar Institute of Management & Technology has been Created. ', 'corporate', 'success', '2015-07-07 07:07:40'),
(283, 'Hasvita PG College has been Created. ', 'corporate', 'success', '2015-07-07 07:08:02'),
(284, 'Holy Mother PG College has been Created. ', 'corporate', 'success', '2015-07-07 07:09:27'),
(285, 'Alluri Institute of Management Sciences has been Created. ', 'corporate', 'success', '2015-07-07 07:30:33'),
(286, 'Annie Besant PG College  has been Created. ', 'corporate', 'success', '2015-07-07 07:30:47'),
(287, 'Apoorva Institute of Management & Sciences has been Created. ', 'corporate', 'success', '2015-07-07 07:31:02'),
(288, 'Avinash Institute of Management has been Created. ', 'corporate', 'success', '2015-07-07 07:31:17'),
(289, 'Brown''s PG College has been Created. ', 'corporate', 'success', '2015-07-07 07:31:37'),
(290, 'Chaitanya PG College has been Created. ', 'corporate', 'success', '2015-07-07 07:31:51'),
(291, 'CKM Arts & Science College has been Created. ', 'corporate', 'success', '2015-07-07 07:32:06'),
(292, 'Dhanvanthari Institute of Management Sciences has been Created. ', 'corporate', 'success', '2015-07-07 07:32:21'),
(293, 'Gaayathri Institute of Management Studies has been Created. ', 'corporate', 'success', '2015-07-07 07:32:35'),
(294, 'Herambhu Business School has been Created. ', 'corporate', 'success', '2015-07-07 07:32:51'),
(295, 'Jaya Institute of Business Management has been Created. ', 'corporate', 'success', '2015-07-07 07:33:08'),
(296, 'Jayamukhi Institute of Management Sciences has been Created. ', 'corporate', 'success', '2015-07-07 07:33:22'),
(297, 'Kakatiya Institute of Management Studies has been Created. ', 'corporate', 'success', '2015-07-07 07:33:40'),
(298, 'Kakatiya University College has been Created. ', 'corporate', 'success', '2015-07-07 07:33:53'),
(299, 'Kavitha Memorial PG College has been Created. ', 'corporate', 'success', '2015-07-07 07:34:07'),
(300, 'KU Arts and Science College has been Created. ', 'corporate', 'success', '2015-07-07 07:34:20'),
(301, 'Laqshya College of Management has been Created. ', 'corporate', 'success', '2015-07-07 07:34:37'),
(302, 'Mahaboobia Panjetan PG College has been Created. ', 'corporate', 'success', '2015-07-07 07:34:52'),
(303, 'Manair College of Computer Science has been Created. ', 'corporate', 'success', '2015-07-07 07:35:07'),
(304, 'Mohammadiya Institute of Management has been Created. ', 'corporate', 'success', '2015-07-07 07:35:21'),
(305, 'New Science PG College has been Created. ', 'corporate', 'success', '2015-07-07 07:35:34'),
(306, 'Pragathi School of Business has been Created. ', 'corporate', 'success', '2015-07-07 07:35:48'),
(307, 'Rousseau Institute of Management Studies has been Created. ', 'corporate', 'success', '2015-07-07 07:36:23'),
(308, 'Shantha Institute of PG College has been Created. ', 'corporate', 'success', '2015-07-07 07:36:39'),
(309, 'Sree Chaitanya PG College has been Created. ', 'corporate', 'success', '2015-07-07 07:36:59'),
(310, 'Sree Kavitha College of Management & Information Technology has been Created. ', 'corporate', 'success', '2015-07-07 07:37:14'),
(311, 'SRM PG College  has been Created. ', 'corporate', 'success', '2015-07-07 07:37:36'),
(312, 'Sree Vashistha Institute of Management Studies has been Created. ', 'corporate', 'success', '2015-07-07 07:37:49'),
(313, 'Sri Gaayatri College Of Management Sciences has been Created. ', 'corporate', 'success', '2015-07-07 07:38:04'),
(314, 'St.John School of Management has been Created. ', 'corporate', 'success', '2015-07-07 07:38:17'),
(315, 'SVS PG College has been Created. ', 'corporate', 'success', '2015-07-07 07:38:31'),
(316, 'Swarna Bharathi Institute of Management Sciences has been Created. ', 'corporate', 'success', '2015-07-07 07:38:43'),
(317, 'Talasila College of Management & Information Technology has been Created. ', 'corporate', 'success', '2015-07-07 07:38:59'),
(318, 'Vivekananda Degree & PG College has been Created. ', 'corporate', 'success', '2015-07-07 07:39:21'),
(319, 'Government (A.B.V) Degree College, Warangal has been Created. ', 'corporate', 'success', '2015-07-07 08:55:51'),
(320, 'Government (G.R.P) Degree College, Adilabad has been Created. ', 'corporate', 'success', '2015-07-07 08:56:03'),
(321, 'Government (J.V.R) Degree College, Khammam has been Created. ', 'corporate', 'success', '2015-07-07 08:56:15'),
(322, 'Government (Pingle) Degree College for Women, Warangal has been Created. ', 'corporate', 'success', '2015-07-07 08:56:26'),
(323, 'Government (S.K.N.R) Degree College, Karimnagar has been Created. ', 'corporate', 'success', '2015-07-07 08:56:38'),
(324, 'Government (S.R and B.G.N.R) Degree College, Khammam has been Created. ', 'corporate', 'success', '2015-07-07 08:56:51'),
(325, 'Government (S.R.A.S) Degree College, Khammam has been Created. ', 'corporate', 'success', '2015-07-07 08:57:03'),
(326, 'Government (S.R.R) Degree College, Karimnagar has been Created. ', 'corporate', 'success', '2015-07-07 08:57:15'),
(327, 'Government Degree College (for Women), Mancherial has been Created. ', 'corporate', 'success', '2015-07-07 08:57:31'),
(328, 'Government Degree College for Men, Adilabad has been Created. ', 'corporate', 'success', '2015-07-07 08:58:22'),
(329, 'Kakatia University Arts and Science College, Warangal has been Created. ', 'corporate', 'success', '2015-07-07 08:58:36'),
(330, 'Kakatiya Government Degree College, Hanamkonda has been Created. ', 'corporate', 'success', '2015-07-07 08:58:48'),
(331, 'A.K. Vishvanatha Reddy Degree College, Bheemadevarapally Mandal has been Created. ', 'corporate', 'success', '2015-07-07 08:59:01'),
(332, 'A.S.M. College for Women, Warangal has been Created. ', 'corporate', 'success', '2015-07-07 08:59:13'),
(333, 'A.V.V. Degree College, Warangal has been Created. ', 'corporate', 'success', '2015-07-07 08:59:25'),
(334, 'Acharya Degree College, Narsampet has been Created. ', 'corporate', 'success', '2015-07-07 08:59:37'),
(335, 'Adarsha Degree College, Warangal has been Created. ', 'corporate', 'success', '2015-07-07 08:59:51'),
(336, 'Adarsha Women''s Degree College, Bellampalli has been Created. ', 'corporate', 'success', '2015-07-07 09:00:06'),
(337, 'B.B.M. Vaari Gayathri Degree College, Khammam has been Created. ', 'corporate', 'success', '2015-07-07 09:00:20'),
(338, 'Bharathi Degree College, Warangal has been Created. ', 'corporate', 'success', '2015-07-07 09:00:33'),
(339, 'Chanakya Degree College, Jammikunta has been Created. ', 'corporate', 'success', '2015-07-07 09:00:43'),
(340, 'Dr. M.R. Reddy Degree College, Warangal has been Created. ', 'corporate', 'success', '2015-07-07 09:00:55'),
(341, 'Gandhi Memorial Degree College, Karimnagar has been Created. ', 'corporate', 'success', '2015-07-07 09:01:06'),
(342, 'Gayatri Degree College, Karimnagar has been Created. ', 'corporate', 'success', '2015-07-07 09:01:19'),
(343, 'Question has been Created. ', 'questions', 'success', '2015-07-08 07:26:57'),
(344, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 07:38:30'),
(345, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 07:38:44'),
(346, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 07:40:15'),
(347, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 07:40:27'),
(348, 'questions has been deleted. ', 'questions', 'success', '2015-07-08 07:40:39'),
(349, 'questions has been deleted. ', 'questions', 'success', '2015-07-08 07:42:16'),
(350, 'questions has been deleted. ', 'questions', 'success', '2015-07-08 07:42:36'),
(351, 'questions has been deleted. ', 'questions', 'success', '2015-07-08 07:43:22'),
(352, 'questions has been deleted. ', 'questions', 'success', '2015-07-08 07:43:45'),
(353, 'questions has been deleted. ', 'questions', 'success', '2015-07-08 07:44:42'),
(354, 'questions has been deleted. ', 'questions', 'success', '2015-07-08 07:45:32'),
(355, 'questions has been deleted. ', 'questions', 'success', '2015-07-08 07:45:49'),
(356, 'questions has been deleted. ', 'questions', 'success', '2015-07-08 07:46:09'),
(357, 'questions has been deleted. ', 'questions', 'success', '2015-07-08 07:46:25'),
(358, 'questions has been deleted. ', 'questions', 'success', '2015-07-08 07:46:49'),
(359, 'questions has been deleted. ', 'questions', 'success', '2015-07-08 07:47:20'),
(360, 'questions has been deleted. ', 'questions', 'success', '2015-07-08 07:47:43'),
(361, 'questions has been deleted. ', 'questions', 'success', '2015-07-08 07:47:59'),
(362, 'questions has been deleted. ', 'questions', 'success', '2015-07-08 07:48:19'),
(363, 'questions has been deleted. ', 'questions', 'success', '2015-07-08 07:48:37'),
(364, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 08:40:09'),
(365, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 08:40:37'),
(366, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 08:40:54'),
(367, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 08:42:08'),
(368, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 08:42:59'),
(369, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 08:43:35'),
(370, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 08:44:03'),
(371, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 08:44:40'),
(372, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 08:45:14'),
(373, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 08:45:53'),
(374, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 08:46:37'),
(375, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 08:47:15'),
(376, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 08:47:52'),
(377, 'questions has been deleted. ', 'questions', 'success', '2015-07-08 08:48:29'),
(378, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 08:48:55'),
(379, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 08:49:33'),
(380, 'questions has been deleted. ', 'questions', 'success', '2015-07-08 08:49:54'),
(381, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 08:50:21'),
(382, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 08:50:49'),
(383, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 08:56:24'),
(384, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 08:57:53'),
(385, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 08:58:42'),
(386, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 08:59:27'),
(387, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 08:59:57'),
(388, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 09:00:37'),
(389, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 09:01:16'),
(390, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 09:13:20'),
(391, 'questions has been deleted. ', 'questions', 'success', '2015-07-08 09:13:53'),
(392, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 09:14:22'),
(393, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 09:15:11'),
(394, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 09:15:39'),
(395, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 09:16:53'),
(396, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 09:17:24'),
(397, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 09:18:15'),
(398, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 09:18:37'),
(399, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 09:19:06'),
(400, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 09:19:35'),
(401, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 09:20:00'),
(402, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 09:20:49'),
(403, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 09:21:24'),
(404, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 09:21:43'),
(405, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 09:22:31'),
(406, 'Question has been Updated. ', 'questions', 'success', '2015-07-08 09:23:03'),
(407, 'VEDAIIT has been Updated. ', 'placements', 'success', '2015-07-09 13:18:32'),
(408, 'SumTotal Systems, LLC, a Skillsoft company. has been Updated. ', 'placements', 'success', '2015-07-09 13:20:04'),
(409, 'Tech Trunk has been Updated. ', 'placements', 'success', '2015-07-09 13:20:12'),
(410, 'Oracle Academy has been Updated. ', 'placements', 'success', '2015-07-09 13:20:19'),
(411, 'result has been deleted. ', 'results', 'success', '2015-07-09 13:43:43'),
(412, 'result has been deleted. ', 'results', 'success', '2015-07-09 13:43:47'),
(413, 'result has been deleted. ', 'results', 'success', '2015-07-09 13:43:56'),
(414, 'result has been deleted. ', 'results', 'success', '2015-07-09 13:45:15'),
(415, 'result has been deleted. ', 'results', 'success', '2015-07-09 13:45:22'),
(416, 'result has been deleted. ', 'results', 'success', '2015-07-09 13:45:26'),
(417, 'result has been deleted. ', 'results', 'success', '2015-07-09 13:45:30'),
(418, 'result has been deleted. ', 'results', 'success', '2015-07-09 13:45:34'),
(419, 'SRM PG College  has been Created. ', 'corporate', 'success', '2015-07-09 13:59:11'),
(420, '34325355 has been Updated. ', 'category', 'success', '2015-07-09 13:59:21'),
(421, 'College has been deleted. ', 'category', 'success', '2015-07-09 13:59:25'),
(422, 'CSE has been Created. ', 'corporate', 'success', '2015-07-09 14:12:11'),
(423, 'IT has been Updated. ', 'category', 'success', '2015-07-09 14:12:54'),
(424, 'company has been deleted. ', 'category', 'success', '2015-07-09 14:13:02'),
(425, 'notifications has been Updated. ', 'category', 'success', '2015-07-09 14:39:26'),
(426, 'notifications has been Updated. ', 'category', 'success', '2015-07-09 14:39:35'),
(427, 'notification has been Created. ', 'corporate', 'success', '2015-07-09 14:39:43'),
(428, 'notifications has been Updated. ', 'category', 'success', '2015-07-09 14:39:52'),
(429, 'company has been deleted. ', 'category', 'success', '2015-07-09 14:40:00'),
(430, 'Test has been Created. ', 'courses', 'success', '2015-07-09 14:44:52'),
(431, 'Test has been Created. ', 'courses', 'success', '2015-07-09 14:45:18'),
(432, 'Test has been Created. ', 'courses', 'success', '2015-07-09 14:54:34'),
(433, 'Test has been Updated. ', 'courses', 'success', '2015-07-09 15:08:16'),
(434, 'Test Please ignore has been Updated. ', 'courses', 'success', '2015-07-09 15:08:40'),
(435, 'Please ignore test has been Created. ', 'courses', 'success', '2015-07-10 07:42:57'),
(436, 'Question has been Created. ', 'questions', 'success', '2015-07-10 07:43:26'),
(437, 'Question has been Updated. ', 'questions', 'success', '2015-07-10 07:43:57'),
(438, 'questions has been deleted. ', 'questions', 'success', '2015-07-10 07:44:07'),
(439, 'Question has been Created. ', 'questions', 'success', '2015-07-10 07:46:08'),
(440, 'Question has been Created. ', 'questions', 'success', '2015-07-10 07:53:37'),
(441, 'Question has been Updated. ', 'questions', 'success', '2015-07-10 07:53:54'),
(442, 'Karuna A has been Updated. ', 'testimonials', 'success', '2015-07-10 08:23:06'),
(443, 'DIETY has been Updated. ', 'testimonials', 'success', '2015-07-10 08:23:54'),
(444, 'CBIT has been Created. ', 'corporate', 'success', '2015-07-10 09:42:37'),
(445, 'IT has been Created. ', 'corporate', 'success', '2015-07-10 09:44:57'),
(446, 'ESDM has been Created. ', 'corporate', 'success', '2015-07-10 10:06:53'),
(447, 'ESDM123 has been Updated. ', 'category', 'success', '2015-07-10 10:07:00'),
(448, 'ESD has been Updated. ', 'category', 'success', '2015-07-10 10:07:08'),
(449, 'ESDM has been Updated. ', 'category', 'success', '2015-07-10 10:07:16'),
(450, 'company has been deleted. ', 'category', 'success', '2015-07-10 10:07:29'),
(451, 'Certifications has been Created. ', 'corporate', 'success', '2015-07-10 10:21:32'),
(452, 'AUTODESK ( AutoCad ) has been Updated. ', 'certifications', 'success', '2015-07-10 10:23:59'),
(453, 'GOOGLE ( Cloud Computing ) has been Updated. ', 'certifications', 'success', '2015-07-10 10:34:56'),
(454, 'GOOGLE ( Android ) has been Updated. ', 'certifications', 'success', '2015-07-10 10:35:09'),
(455, 'MICROSOFT ( MTA ) has been Updated. ', 'certifications', 'success', '2015-07-10 10:35:30'),
(456, 'IBM-SAP has been Created. ', 'certifications', 'success', '2015-07-10 10:37:40'),
(457, 'ESDM has been Created. ', 'certifications', 'success', '2015-07-10 10:38:46'),
(458, 'certifications has been deleted. ', 'certifications', 'success', '2015-07-10 11:04:13'),
(459, 'certifications has been deleted. ', 'certifications', 'success', '2015-07-10 11:04:17'),
(460, 'AUTODESK Academy Programs has been Updated. ', 'certifications', 'success', '2015-07-10 12:26:03'),
(461, 'GOOGLE Cloud Computing has been Updated. ', 'certifications', 'success', '2015-07-10 12:26:32'),
(462, 'GOOGLE - Android has been Updated. ', 'certifications', 'success', '2015-07-10 12:26:50'),
(463, 'MICROSOFT-MTA has been Updated. ', 'certifications', 'success', '2015-07-10 12:27:09'),
(464, 'IBM-DB2 has been Updated. ', 'certifications', 'success', '2015-07-10 12:27:22'),
(465, 'ORACLE-Database and Java has been Updated. ', 'certifications', 'success', '2015-07-10 12:27:50'),
(466, 'College has been Approved. ', 'collages', 'success', '2015-07-11 06:54:28'),
(467, 'College has been Approved. ', 'collages', 'success', '2015-07-11 06:54:45'),
(468, 'registration has been deleted. ', 'registrations', 'success', '2015-07-13 05:49:42'),
(469, 'Zxcvbnm has been Created. ', 'corporate', 'success', '2015-07-13 12:02:58'),
(470, 'Skfdxgkhxkfsk has been Created. ', 'courses', 'success', '2015-07-13 12:11:15'),
(471, 'courses has been deleted. ', 'courses', 'success', '2015-07-13 12:11:53'),
(472, 'company has been deleted. ', 'category', 'success', '2015-07-13 12:12:08'),
(473, 'ISB has been updated. ', 'partners', 'success', '2015-07-13 12:14:36'),
(474, 'ISB has been updated. ', 'partners', 'success', '2015-07-13 12:18:00'),
(475, 'Rakesh has been added. ', 'Staff', 'success', '2015-07-13 14:51:18'),
(476, ' has been deleted. ', 'Staff', 'success', '2015-07-13 14:52:51'),
(477, 'RAKESH has been added. ', 'partners', 'success', '2015-07-13 15:12:03'),
(478, 'DIETY has been Updated. ', 'testimonials', 'success', '2015-07-14 07:31:45'),
(479, 'Karuna A has been Updated. ', 'testimonials', 'success', '2015-07-14 07:32:00'),
(480, 'Demo has been Created. ', 'gallery', 'success', '2015-07-14 07:48:44'),
(481, 'gallery has been deleted. ', 'gallery', 'success', '2015-07-14 07:51:31'),
(482, 'gallery has been deleted. ', 'gallery', 'success', '2015-07-14 08:11:40'),
(483, 'gallery has been deleted. ', 'gallery', 'success', '2015-07-14 08:11:43'),
(484, 'gallery has been deleted. ', 'gallery', 'success', '2015-07-14 08:11:46'),
(485, 'gallery has been deleted. ', 'gallery', 'success', '2015-07-14 08:11:50'),
(486, 'gallery has been deleted. ', 'gallery', 'success', '2015-07-14 08:11:53'),
(487, 'Mohit Jain has been Updated. ', 'testimonials', 'success', '2015-07-14 11:53:29'),
(488, 'Karuna A has been Updated. ', 'testimonials', 'success', '2015-07-14 11:53:55'),
(489, 'Demo has been added. ', 'Staff', 'success', '2015-07-16 18:42:57'),
(490, 'Demo has been added. ', 'Staff', 'success', '2015-07-16 18:44:22'),
(491, 'Demo has been added. ', 'Staff', 'success', '2015-07-16 19:02:28'),
(492, 'Demo has been added. ', 'Staff', 'success', '2015-07-17 05:01:52'),
(493, ' has been added. ', 'Staff', 'success', '2015-07-17 07:24:24'),
(494, ' has been added. ', 'Staff', 'success', '2015-07-17 07:26:34'),
(495, ' has been added. ', 'Staff', 'success', '2015-07-17 10:59:35'),
(496, ' has been added. ', 'Staff', 'success', '2015-07-17 11:01:11'),
(497, ' has been added. ', 'Staff', 'success', '2015-07-17 11:10:48'),
(498, ' has been added. ', 'Staff', 'success', '2015-07-17 13:19:04'),
(499, ' has been added. ', 'Staff', 'success', '2015-07-17 13:36:40'),
(500, ' has been added. ', 'Staff', 'success', '2015-07-17 13:37:13'),
(501, ' has been added. ', 'Staff', 'success', '2015-07-17 14:18:12'),
(502, 'Outreach account has been updated. ', 'Profile', 'success', '2015-07-18 07:14:30'),
(503, ' has been added. ', 'Staff', 'success', '2015-07-18 07:17:06'),
(504, ' has been added. ', 'Staff', 'success', '2015-07-18 07:56:35'),
(505, ' has been deleted. ', 'Coordinator', 'success', '2015-07-18 08:06:16'),
(506, ' has been deleted. ', 'Coordinator', 'success', '2015-07-18 08:06:23'),
(507, ' has been deleted. ', 'Coordinator', 'success', '2015-07-18 08:06:27'),
(508, ' has been deleted. ', 'Coordinator', 'success', '2015-07-18 08:06:34'),
(509, ' has been deleted. ', 'Coordinator', 'success', '2015-07-18 08:06:41'),
(510, ' has been added. ', 'Staff', 'success', '2015-07-18 08:14:51'),
(511, ' has been updated. ', 'Staff', 'success', '2015-07-18 08:48:47'),
(512, ' has been deleted. ', 'Coordinator', 'success', '2015-07-18 09:45:45'),
(513, ' has been added. ', 'Staff', 'success', '2015-07-18 09:46:17'),
(514, ' has been deleted. ', 'Coordinator', 'success', '2015-07-19 02:42:38'),
(515, ' has been deleted. ', 'Coordinator', 'success', '2015-07-19 02:42:48'),
(516, ' has been deleted. ', 'Coordinator', 'success', '2015-07-19 02:42:57'),
(517, ' has been added. ', 'Staff', 'success', '2015-07-19 03:09:43'),
(518, ' has been added. ', 'Staff', 'success', '2015-07-19 03:14:22'),
(519, ' has been deleted. ', 'Coordinator', 'success', '2015-07-19 03:15:03'),
(520, ' has been updated. ', 'Staff', 'success', '2015-07-19 03:19:07'),
(521, ' has been updated. ', 'Staff', 'success', '2015-07-19 03:20:40'),
(522, ' has been deleted. ', 'Coordinator', 'success', '2015-07-19 03:20:50'),
(523, ' has been added. ', 'Staff', 'success', '2015-07-19 03:22:38'),
(524, ' has been added. ', 'Staff', 'success', '2015-07-19 05:35:09'),
(525, 'Contact has been deleted. ', 'category', 'success', '2015-07-20 06:25:47'),
(526, ' has been added. ', 'Staff', 'success', '2015-07-20 11:06:43'),
(527, ' has been added. ', 'Staff', 'success', '2015-07-20 23:33:55'),
(528, 'Outreach account has been updated. ', 'Profile', 'success', '2015-07-20 23:39:34'),
(529, 'Outreach account has been updated. ', 'Profile', 'success', '2015-07-20 23:40:00'),
(530, ' has been added. ', 'Staff', 'success', '2015-07-21 04:22:35'),
(531, ' has been added. ', 'Staff', 'success', '2015-07-21 04:40:15'),
(532, ' has been added. ', 'Staff', 'success', '2015-07-21 05:44:47'),
(533, 'Contact has been deleted. ', 'category', 'success', '2015-07-23 14:13:27'),
(534, 'Outreach account has been updated. ', 'Profile', 'success', '2015-07-23 14:14:08'),
(535, ' has been deleted. ', 'Coordinator', 'success', '2015-07-24 04:32:31'),
(536, ' has been deleted. ', 'Coordinator', 'success', '2015-07-24 04:32:37'),
(537, ' has been deleted. ', 'Coordinator', 'success', '2015-07-24 04:32:43'),
(538, ' has been deleted. ', 'Coordinator', 'success', '2015-07-24 04:32:48'),
(539, ' has been updated. ', 'Staff', 'success', '2015-07-24 04:33:39'),
(540, ' has been added. ', 'Staff', 'success', '2015-07-27 06:10:13');

-- --------------------------------------------------------

--
-- Table structure for table `va_news`
--

CREATE TABLE IF NOT EXISTS `va_news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `banner` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Status 1-Active 2-Inactive 3-Delete',
  `edited_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `seo_title` varchar(200) NOT NULL,
  `seo_tags` varchar(200) NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `va_news`
--

INSERT INTO `va_news` (`news_id`, `title`, `banner`, `description`, `added_on`, `status`, `edited_on`, `seo_title`, `seo_tags`) VALUES
(1, ' outreach text news  outreach text news ', '1434956178-59.png', '<p>Telangana Academy for Skill and Knowledge , Hyderabad(Govt of Telangana) is inviting Registrations/Renewals from Engineering/MCA Colleges for TASK Training Program 2015-16.</p>\n\n<ul>\n <li>All the colleges which are Registered / Renewed during the academic year 2014 - 15 are required to renew their registration to allow the student registrations from their colleges. ?</li>\n <li>The Colleges which were not registered with JKC during the academic year 2014 -15, are required to go for new registration to allow fresh student registrations from their colleges. ?</li>\n <li>Last Date for the Registration / Renewals of TASK: 30-06-2015. ?</li>\n <li>Telangana Academy for Skill and Knowledge (TASK) would issue a NOTIFICATION for the student registrations from the Registered / Renewed College, after the completion of college registration process. ?</li>\n <li>Late fee will be imposed if Registration / Renewals are not completed by the above said date.</li>\n <li>&nbsp;It is mandatory for the colleges to Register / Renew before they can register their students.</li>\n</ul>\n', '2015-07-17 11:43:43', 1, '2015-06-22 16:04:40', 'TASK', 'TASK'),
(2, ' outreach text news  outreach text news ', '1434956319-84.png', '<p>Telangana Academy for Skill &amp; Knowledge, Hyderabad (Govt of Telangana) is inviting the new registrations/renewals from Degree colleges for the academic year 2015&ndash;16</p>\n\n<ul>\n <li>All the colleges which are registered / renewed during the academic year 2014&ndash;15 are required to renew their registration to allow the student registrations from their institutes.&nbsp;</li>\n <li>The institutes which were not registered with 2014-15 are required to go for the New Registration to allow the fresh student registrations from their institutes.</li>\n <li>Last Date for the Registration / Renewals of TASK: 30th June 2015. ?</li>\n <li>Telangana Academy for Skill &amp; Knowledge would issue a NOTIFICATION for the student registrations from the registered / renewed institutes after the completion of college registration process.</li>\n <li>&nbsp;Late fee will be imposed if Registration / Renewals are not completed by that date.</li>\n <li>&nbsp;It is mandatory for the institutes to register / renew before they can register their students</li>\n</ul>\n', '2015-07-17 11:43:49', 1, '2015-06-22 16:08:09', 'TASK', 'TASK'),
(3, ' outreach text news  outreach text news  outreach text news ', '1434960563-93.png', '<p>TASK is an innovative and pioneering initiative that attracts the best students from all over the state, providing them with a world class infrastructure and opportunities to apply their knowledge to the challenging problems.</p>\n\n<ul>\n <li>Collect the applications from the interested students and send the consolidated list, applications along</li>\n <li>with the Demand Draft (individual) in favor of &ldquo;Telangana Academy for Skill and Knowledge&rdquo;,</li>\n <li>payable at Hyderabad.</li>\n <li>Provide all the facilities for conducting TASK Training by TASK Trainers</li>\n <li>Support local hospitality for the visiting experts, guest trainers during the TASK Trainings.</li>\n <li>Collect User name and Passwords from TASK Office and dispatch to your students and maintain Student</li>\n <li>database</li>\n <li>See that all TASK registered students use their TASK ID and Password twice a month in order to refresh</li>\n <li>their knowledge about TASK recruitment drives and news.</li>\n <li>College has to send the TASK registered students to the TASK Recruitment Activities where ever</li>\n <li>Telangana Academy for Skill and Knowledge, Hyderabad organize and invite the students to attend</li>\n <li>Campus Placement Tests and Workshops arranged by Telangana Academy for Skill and Knowledge,</li>\n <li>Hyderabad from time to time.</li>\n <li>Support the various programs of Telangana Acaddemy for Skill and Knowledge, Hyderabad like Online</li>\n <li>Assessment Tests</li>\n <li>Tracking the attendance of students for TASK Training Activities.</li>\n <li>To facilitate Online Assessment for TASK students ( 1 assessment test/ semester)</li>\n</ul>\n', '2015-07-17 11:43:52', 1, '2015-06-24 16:53:31', 'TASK', 'Task');

-- --------------------------------------------------------

--
-- Table structure for table `va_news_application`
--

CREATE TABLE IF NOT EXISTS `va_news_application` (
  `application_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` varchar(200) NOT NULL,
  `news_id` int(11) NOT NULL,
  `message` varchar(500) NOT NULL,
  `resume` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`application_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `va_notifications`
--

CREATE TABLE IF NOT EXISTS `va_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  UNIQUE KEY `category_id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `va_notifications`
--

INSERT INTO `va_notifications` (`id`, `title`, `content`, `created_on`, `status`) VALUES
(1, 'FINISHING SCHOOL PILOT', '<p><strong>About the Programme:</strong></p>\n\n<p>With a view to meet the shortage of skilled human resource requirements of corporates in the state TASK has taken up an initiative to pilot a Finishing School for Engineering/ MCA graduates.</p>\n\n<p>The finishing school program is for a period of 8 weeks during July 1st - August 31st, 2015 for the students of recognized institutes from Telangana. TASK has taken up a pilot of skilling about 100 engineering graduates. This effort has twin objectives of</p>\n\n<p>(1) Helping young graduates to find jobs by enhancing their employability quotient</p>\n\n<p>(2) Offering skilled candidates to Corporates.</p>\n\n<p>The programme offers rich inputs to enhance and sharpen the required skills among the engineering/MCA graduates and make them employable majorly in the IT and ITES industry. Further this programme does not guarantee employment but helps in enhancing the strike rate of the candidate to get through a job interview and selection process.</p>\n\n<p><strong>Pedagogy</strong></p>\n\n<p>The pedagogy would include concepts, practice sessions, guest lectures, simulations, projects, assignments and case studies with periodic assessments.</p>\n\n<p><strong>Eligibility:</strong></p>\n\n<p>Engineering/MCA graduates of recognized colleges who have completed their B.Tech. /B.E in 2013 or 2014 and are unemployed are eligible to attend the programme. The candidates have to declare that they have not obtained a job while applying for this programme.</p>\n\n<p><strong>Selection:</strong>&nbsp;Selection of candidates will be done on the basis of assessments and a formal interview</p>\n\n<p><strong>Program Fee:</strong>&nbsp;The program fee 2000 Rs/-&nbsp;and non-residential.</p>\n\n<p>Target Audience :&nbsp;Engg/MCA passed outs 2013/14 (unemployed)</p>\n\n<p>Max no of candidates : 100&nbsp;Nos</p>\n\n<p>Total no weeks for training : 8 weeks</p>\n\n<p>No. of days per week : 6 days (Mon- Sat)</p>\n\n<p>Hours of Training for 8 Weeks : 240&nbsp;hrs</p>\n\n<p>Time Frame for Training : July 1st - August 31st, 2015</p>\n\n<p>Training Venue : In and around Hyderabad</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Selection Process</strong></p>\n\n<p>&nbsp;</p>\n\n<ol>\n <li>Assessment Test (Aptitude, Reasoning and Soft Skills)</li>\n <li>Group Discussion</li>\n <li>Interview</li>\n</ol>\n', '2015-06-23 04:52:56', 1),
(2, 'Tech Trunk', '<p ><span >Tech-Trunk as the name says is the &quot;Trunk of Technology&quot; whose branches are wide spread into the fields of &quot;Educational &amp; Industrial -Services and Solutions&quot;.</span></p>\n\n <p ><span >In today&#39;s fast moving world we are surrounded by the advance technologies which are helping us all in each and every single way. TT is looking forward for future and is planning to prepare our future a step forward. Today, when we still get amused by the word Technology, we try to make young generation well aware of Emerging Technologies under various domains of Engineering and Technology and there vast utilization in today&#39;s world. On the other hand, increase in industries has raised the demand for quality services and solutions. Thus, Automation&amp; IT Services and Solutions are the branches our mission firmly holds. On a brief note, fulfilling the needs of quality services and solutions in Education and Industries is our motto.</span></p>\n\n <p >&nbsp;</p>\n\n<p><strong><u>Internship Area:&nbsp;</u></strong>Embedded System &amp; Robotics</p>\n\n<p><strong><u>About the Internship:</u></strong></p>\n\n<p>The selected intern(s) will work on following during the internship:</p>\n\n<p>- Develop and design new Embedded and Robotics products,</p>\n\n<p>- Functional Designing,</p>\n\n<p>- MATLAB,</p>\n\n<p>- Working on Micro controller.</p>\n\n<p>&nbsp;</p>\n\n<p><strong><u># of Internships available:&nbsp;</u></strong>5</p>\n\n<p><strong><u>Who can apply:</u></strong></p>\n\n<p>Students of&nbsp;B.Tech&nbsp;(ECE/EEE/CSE) 3rd year/4th year/&nbsp;Passout.</p>\n\n<p><strong><u>Start Date -&nbsp;</u></strong>20 Jun, 2015</p>\n\n<p><strong><u>Duration</u></strong>- 3 Months</p>\n\n<p><strong><u>Stipend</u></strong>&nbsp;Rs.3000-8000</p>\n\n<p><strong><u>Application Deadline&nbsp;</u></strong>: 22 Jun, 2015</p>\n', '2015-06-23 04:57:35', 1),
(3, 'VEDAIIT Engineer Trainee Recruitment Process', '<p><strong>JKC is organizing a recruitment event with vedaIIT at for 2015 pass outs. Eligibility criteria, Positions details are as given below. The eligible and interested candidates can confirm their participation through the following link</strong>&nbsp;</p>\n\n<p><strong>Please apply online at&nbsp;<a href="http://www.vedaiit.org/"><strong>VEDAIIT</strong></a>&nbsp;site and those can confirm here their participation</strong>&nbsp;</p>\n\n<p><a href="http://www.ieg.gov.in/task/index.php?service=VEDAIIT2015_12052015" target="_blank"><u><strong>Click here to confirm your participation</strong></u></a>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><a href="http://www.vedaiit.org/"><strong>VEDAIIT</strong></a>&nbsp;is glad to share with you the Recruitment Opportunities for &quot;Engineer Trainee&rdquo; in VLSI/Embedded System Design/SW in our consortium company namely SoCtronics.</p>\n\n<p>Details are provided in the attached brochure.</p>\n\n<p>Last date for on-line application is&nbsp;<strong>June 01, 2015</strong>&nbsp;and recruitment Test is on&nbsp;<strong>June 06, 2015</strong></p>\n\n<p>Selected meritorious candidates will get an opportunity to undergo Company sponsored training in selected domain.On successful completion of their sponsored training at VEDA IIT and completion of their degree in the respective University, they will be getting into the job.</p>\n\n<p>For further information: visit&nbsp;<a href="http://www.vedaiit.org/">www.vedaiit.org</a>,&nbsp;Call: 040-43929999 extn.9907(HR) , mail:<a href="mailto:careers@vedaiit.com">careers@vedaiit.com</a></p>\n\n<p><u><strong>Position</strong></u>:-</p>\n\n<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Engineer trainee in VLSI/Embedded System Design/SW&nbsp;Domains</p>\n\n<p><u><strong>Job Profile</strong></u>:-</p>\n\n<ul>\n <li>\n <p><strong>Logic Design</strong>&nbsp;&ndash;&nbsp;RTL Design, Implementation, Verification &amp; Testing</p>\n </li>\n <li>\n <p><strong>Layout Design</strong>&nbsp;&ndash;&nbsp;Custom layout design using basic components at transistor level, Layout verification</p>\n </li>\n <li>\n <p><strong>Analog Design</strong>&nbsp;&ndash;&nbsp;Analog circuit design, Spice simulation and Verilog A modeling</p>\n </li>\n <li>\n <p><strong>Physical Design</strong>&nbsp;&ndash;&nbsp;Physical placement &amp; Routing, Functional Equivalence Timing Closure and Design Rule Check</p>\n </li>\n <li>\n <p><strong>Embedded System</strong>&nbsp;&ndash;&nbsp;HE design, SYSTEM Engineering, Firmware/ Drivers/ Multimedia/ Application development, Testing, Automation &amp; QA for Mobile, Wearable, IOT systems</p>\n </li>\n <li>\n <p><strong>UX Design</strong>&nbsp;&ndash;&nbsp;Design and Develop Web, Mobile and Wearable products (UI) for worldwide markets based on a deep understanding of Engineering, Business and User needs</p>\n </li>\n <li>\n <p><strong>Project Associate</strong>&nbsp;&ndash;&nbsp;Develop and guide new lab experiments/assignments/mini-projects in VLSI Design at VEDA IIT, Exceptional proficiencies can enable working on industry projects additionally</p>\n </li>\n</ul>\n\n<p><u><strong>Eligibility</strong></u>:-</p>\n\n<p><strong>2015 B.E/B.Tech graduates ( from &nbsp;CSE, IT, ECE, EEE, EIE, EICE, ECM, ETM streams )&nbsp;&nbsp; with 65%</strong>&nbsp;<strong>throughout academics</strong></p>\n', '2015-06-23 04:58:32', 1),
(4, 'Oracle Academy', '<p><strong>Code JAVA Together- 2015</strong>&nbsp;conducted by TASK in association with&nbsp;Oracle&nbsp;Academy&nbsp;on&nbsp;<strong>28th February 2015&nbsp;</strong>at&nbsp;<strong>Institute</strong><strong>&nbsp;of&nbsp;Aeronautical Engineering College,&nbsp;Hyderabad</strong><strong>.</strong></p>\n\n<p>&nbsp;</p>\n\n<p>Oracle&nbsp;Academy&nbsp;partnered with TASK (Telangana&nbsp;Academy&nbsp;for Skill and Knowledge) and sponsored the Code Java Together event.</p>\n\n<p>The students came from across the state of&nbsp;Telangana&nbsp;and&nbsp;participated in this event.</p>\n\n<p>&nbsp;</p>\n\n<p>There was an introductory session by&nbsp;<strong>Dr.&nbsp;Durvasula&nbsp;Somayajulu</strong>, Professor in the Department of Computer Science &amp; Engineering, National Institute of Technology, and&nbsp;Warangal.</p>\n\n<p><strong>Mr.Sujiv</strong><strong>&nbsp;Nair</strong>&nbsp;(CEO - TASK) addressed the participants and said that TASK would conduct such events in identifying the technical experts among the students in association with few more&nbsp;MNC&#39;s&nbsp;in coming days.&nbsp;</p>\n\n<p>There were sessions on&nbsp;<strong><em>RESTful</em></strong><strong><em>&nbsp;web services</em></strong>&nbsp;and&nbsp;<strong><em>Want to be a developer, where do I start</em></strong><em>?</em></p>\n\n<p>Students participated in a Java coding event and there were volunteers from Oracle,&nbsp;Hyderabad.</p>\n\n<p>Robots that were created and assembled by the Electronics and Communication Engineering students were on display at this event.</p>\n', '2015-07-09 14:39:35', 1),
(5, 'gfdhgfddtgrey', '<p>fhgdfgrhtrgfdsgrfedshed rtgrewstgewtg</p>\n', '2015-07-09 21:40:00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `va_our_programs`
--

CREATE TABLE IF NOT EXISTS `va_our_programs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  UNIQUE KEY `category_id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `va_our_programs`
--

INSERT INTO `va_our_programs` (`id`, `name`, `created_on`, `status`) VALUES
(1, 'ESDM', '2015-07-10 10:20:55', 1),
(2, 'Certifications', '2015-07-10 10:21:32', 1),
(3, 'zxcvbnm', '2015-07-13 19:12:08', 3);

-- --------------------------------------------------------

--
-- Table structure for table `va_partners`
--

CREATE TABLE IF NOT EXISTS `va_partners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Status 1-Active 2-Inactive 3-Delete',
  `edited_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `seo_title` varchar(200) NOT NULL,
  `seo_tags` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `va_partners`
--

INSERT INTO `va_partners` (`id`, `title`, `logo`, `description`, `added_on`, `status`, `edited_on`, `seo_title`, `seo_tags`) VALUES
(1, 'Virtual Labs', '1435141423-30.png', '<p>Welcome to the Problem Solving Virtual Lab developed at IIIT Hyderabad. The interactive experiments in this lab will give the students an opportunity for learning and better understanding of using computer programming as a tool to solve basic to advanced problems.</p>', '2015-07-02 09:59:46', 1, '2015-07-02 16:59:46', 'Virtual Labs', 'Virtual Labs'),
(2, 'ISB', '1435816150-15.png', '<p>The Technology Entrepreneurship Programme&nbsp;(TEP) brings to life and extends the ISB&rsquo;s enduring theme of creating knowledge for the service of society. Through TEP the School seeks&nbsp;to guide and inspire talented engineering student&rsquo;s entrepreneurial spirit; generating and&nbsp;translating innovations to positively impact individuals, communities, institutions, and societies. We seek to inspire and prepare students&nbsp;for innovative leadership and to actively support and encourage the translation of knowledge in the service of society.</p>\n\n<p><a href="http://www.tep.isb.edu" target="_blank">www.tep.isb.edu</a></p>\n', '2015-07-13 12:18:00', 1, '2015-07-13 19:18:00', 'ISB', 'ISB'),
(3, 'Tucson Electric Power', '1435141589-37.png', '<p>Tucson Electric Power provides the energy behind Tucson&#39;s economy. We deliver safe, reliable power to more than 414000 customers in the Tucson metropolitan area. We&rsquo;re also a local leader in community service, volunteerism and economic development efforts.</p>\n\n <p>TEP and its sister company,&nbsp;<a href="http://www.uesaz.com/">UniSource Energy Services</a>, are among a family of utilities owned by<a href="http://www.fortisinc.com/">Fortis</a>, Canada&rsquo;s largest investor-owned gas and electric utility holding company. Fortis completed an acquisition of&nbsp;<a href="http://www.uns.com/">UNS Energy</a>, TEP&rsquo;s and UES&rsquo; parent company, in August 2014.</p>\n\n<p>TEP offers comprehensive energy services through reliable, traditional resources and a growing renewable power portfolio. We also offer many ways to help our customers use energy more efficiently.</p>\n\n<p>TEP&#39;s community service efforts have earned nationwide acclaim. We provide direct contributions and other support for our employees&#39; volunteerism, encouraging a spirit of giving that is shared among the Fortis family of utilities.</p>', '2015-07-09 11:41:38', 3, '2015-07-09 18:41:38', 'Tucson Electric Power', 'Tucson Electric Power'),
(4, 'RAKESH', '1436800318-56.jpg', '<p>sgfgyjdegfcgfdghvghdgfxmnbcfjghdfghcfhdshmgvch</p>', '2015-07-13 15:12:41', 3, '2015-07-13 22:12:41', 'REDDY', 'REDDY');

-- --------------------------------------------------------

--
-- Table structure for table `va_placements`
--

CREATE TABLE IF NOT EXISTS `va_placements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(200) NOT NULL,
  `about_company` text NOT NULL,
  `company_logo` varchar(200) NOT NULL,
  `date_event` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `website` text NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `va_placements`
--

INSERT INTO `va_placements` (`id`, `company_name`, `about_company`, `company_logo`, `date_event`, `website`, `description`, `status`, `created_on`) VALUES
(1, 'Oracle Academy', 'Oracle Academy partnered with TASK (Telangana Academy for Skill and Knowledge) and sponsored the Code Java Together event.', '1434970173-68.jpg', '2015-07-22 07:00:00', 'https://academy.oracle.com', '<p><strong>Code JAVA Together- 2015</strong>&nbsp;conducted by TASK in association with&nbsp;Oracle&nbsp;Academy&nbsp;on&nbsp;<strong>28th February 2015&nbsp;</strong>at&nbsp;<strong>Institute</strong><strong>&nbsp;of&nbsp;Aeronautical Engineering College,&nbsp;Hyderabad</strong><strong>.</strong></p>\n\n<p>&nbsp;</p>\n\n<p>Oracle&nbsp;Academy&nbsp;partnered with TASK (Telangana&nbsp;Academy&nbsp;for Skill and Knowledge) and sponsored the Code Java Together event.</p>\n\n<p>The students came from across the state of&nbsp;Telangana&nbsp;and&nbsp;participated in this event.</p>\n\n<p>&nbsp;</p>\n\n<p>There was an introductory session by&nbsp;<strong>Dr.&nbsp;Durvasula&nbsp;Somayajulu</strong>, Professor in the Department of Computer Science &amp; Engineering, National Institute of Technology, and&nbsp;Warangal.</p>\n\n<p><strong>Mr.Sujiv</strong><strong>&nbsp;Nair</strong>&nbsp;(CEO - TASK) addressed the participants and said that TASK would conduct such events in identifying the technical experts among the students in association with few more&nbsp;MNC&#39;s&nbsp;in coming days.&nbsp;</p>\n\n<p>There were sessions on&nbsp;<strong><em>RESTful</em></strong><strong><em>&nbsp;web services</em></strong>&nbsp;and&nbsp;<strong><em>Want to be a developer, where do I start</em></strong><em>?</em></p>\n\n<p>Students participated in a Java coding event and there were volunteers from Oracle,&nbsp;Hyderabad.</p>\n\n<p>Robots that were created and assembled by the Electronics and Communication Engineering students were on display at this event.</p>\n', 1, '2015-07-09 13:20:19'),
(2, 'Tech Trunk', 'Tech-Trunk as the name says is the "Trunk of Technology" whose branches are wide spread into the fields of "Educational & Industrial -Services and Solutions".\n\nIn today''s fast moving world we are surrounded by the advance technologies which are helping us all in each and every single way. TT is looking forward for future and is planning to prepare our future a step forward. Today, when we still get amused by the word Technology, we try to make young generation well aware of Emerging Technologies under various domains of Engineering and Technology and there vast utilization in today''s world. On the other hand, increase in industries has raised the demand for quality services and solutions. Thus, Automation& IT Services and Solutions are the branches our mission firmly holds. On a brief note, fulfilling the needs of quality services and solutions in Education and Industries is our motto.', '1434970303-29.jpg', '2015-07-21 07:00:00', 'http://techtrunk.in/', '<p><strong><u>Internship Area:&nbsp;</u></strong>Embedded System &amp; Robotics</p>\n\n<p><strong><u>About the Internship:</u></strong></p>\n\n<p>The selected intern(s) will work on following during the internship:</p>\n\n<p>- Develop and design new Embedded and Robotics products,</p>\n\n<p>- Functional Designing,</p>\n\n<p>- MATLAB,</p>\n\n<p>- Working on Micro controller.</p>\n\n<p>&nbsp;</p>\n\n<p><strong><u># of Internships available:&nbsp;</u></strong>5</p>\n\n<p><strong><u>Who can apply:</u></strong></p>\n\n<p>Students of&nbsp;B.Tech&nbsp;(ECE/EEE/CSE) 3rd year/4th year/&nbsp;Passout.</p>\n\n<p><strong><u>Start Date -&nbsp;</u></strong>20 Jun, 2015</p>\n\n<p><strong><u>Duration</u></strong>- 3 Months</p>\n\n<p><strong><u>Stipend</u></strong>&nbsp;Rs.3000-8000</p>\n\n<p><strong><u>Application Deadline&nbsp;</u></strong>: 22 Jun, 2015</p>\n', 1, '2015-07-09 13:20:12'),
(3, 'SumTotal Systems, LLC, a Skillsoft company.', 'SumTotal Systems, LLC, a Skillsoft Company, is the only HR software provider to deliver Talent ExpansionTM solutions that help organizations discover, develop and unleash the hidden potential within their workforce and entire business ecosystem. SumTotal goes beyond traditional talent management and HCM applications, offering contextual and pervasive HR solutions that actually help improve employee performance in real time. Through the SumTotal elixHR® platform, we offer our customers a virtual system of record for all talent applications, providing a unique ability to link performance management, compensation and succession planning processes to learning management systems (LMS) and workforce management data to provide the HR metrics and workforce analytics they need.', '1434970388-90.jpg', '2015-07-15 07:00:00', 'http://www.sumtotalsystems.com/', '<p><strong><u>Qualification:</u></strong>&nbsp;BE/BTech ( CSE, IT ), Freshers (Male Candidates Only) with 75% aggregate in SSC,INTER and DEGREE</p>\n\n<p><strong><u>Job role:</u></strong>&nbsp;Data Center Admin / System Admin role</p>\n\n<p><strong><u>Skills Required:</u></strong>&nbsp;SQL Server, Windows Server (Both skills are Mandatory)</p>\n\n<p>&nbsp;<strong><u>Shifts:</u></strong>It is a Rotational shifts and rotational weekends (includes Night Shifts also)</p>\n\n<p>&nbsp;<strong><u>Salary Details:</u></strong>&nbsp;From 3.5 LPA (Fixed CTC)</p>\n\n<p>&nbsp;<strong><u>Note:</u></strong></p>\n\n<p>Please make sure candidate note about the shifts to the candidates before confirming their participation and the students should have average knowledge of sql server and windows server.</p>\n\n<div>\n<p>&nbsp;</p>\n\n<p><strong><a href="http://www.ieg.gov.in/task/index.php?service=SUMTOTAL2015_03062015" target="_blank">Please give confirmation, if you are eligible &amp; interested.</a></strong></p>\n</div>\n', 1, '2015-07-09 13:20:04'),
(4, 'VEDAIIT', 'VEDA IIT (VLSI Engineering and Design Automation) is an industry driven state-of-the-art training institute of excellence in various fields such as VLSI, Embedded systems and User Experience design. Since its inception in 1997, about 100 batches have progressed and about 2000 students have been successfully trained. The curriculum of all the courses at VEDA, is set in such a manner that the students have more hands on experience in their chosen field. VEDA is associated with a consortium of VLSI Design Houses for their participation in designing and structuring the curricula and also for their active involvement in imparting Industry Oriented Training on contemporary VLSI Design. It is safe to call VEDA an academic institute in a company environment. VEDA has been conducting MS Program in VLSI Engineering, which is a collaborative program of Jawaharlal Nehru Technological University, Hyderabad, India and a Consortium of VLSI Design Houses since 2002. Similarly we have several Diploma courses in fields like Embedded systems, Physical design, IC layout, Analog design, Logic design and User Experience design. VEDA IIT is managed by directors who have a long standing association with many universities and the semiconductor industry. VEDA is expanding every day in terms of knowledge, due to experienced faculty. The total man years of the teaching faculty at VEDA are about 200 years. Practical exercises, assignments are given out of design problems in the industry and students working on such problems get valuable insight into realistic design solutions. This type of knowledge and experience is helping them in improving their placement opportunities. VEDA proudly proclaims that all its alumni are recognized as successful professionals all over the globe.', '1435150861-91.jpg', '2015-07-22 07:00:00', 'http://vedaiit.org/', '<p><a href="http://www.vedaiit.org/"><strong>VEDAIIT</strong></a>&nbsp;is glad to share with you the Recruitment Opportunities for &quot;Engineer Trainee&rdquo; in VLSI/Embedded System Design/SW in our consortium company namely SoCtronics.</p>\n\n<p>Details are provided in the attached brochure.</p>\n\n<p>Last date for on-line application is&nbsp;<strong>June 01, 2015</strong>&nbsp;and recruitment Test is on&nbsp;<strong>June 06, 2015</strong></p>\n\n<p>Selected meritorious candidates will get an opportunity to undergo Company sponsored training in selected domain.On successful completion of their sponsored training at VEDA IIT and completion of their degree in the respective University, they will be getting into the job.</p>\n\n<p>For further information: visit&nbsp;<a href="http://www.vedaiit.org/">www.vedaiit.org</a>,&nbsp;Call: 040-43929999 extn.9907(HR) , mail:<a href="mailto:careers@vedaiit.com">careers@vedaiit.com</a></p>\n\n<p><u><strong>Position</strong></u>:-</p>\n\n<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Engineer trainee in VLSI/Embedded System Design/SW&nbsp;Domains</p>\n\n<p><u><strong>Job Profile</strong></u>:-</p>\n\n<ul>\n <li>\n <p><strong>Logic Design</strong>&nbsp;&ndash;&nbsp;RTL Design, Implementation, Verification &amp; Testing</p>\n </li>\n <li>\n <p><strong>Layout Design</strong>&nbsp;&ndash;&nbsp;Custom layout design using basic components at transistor level, Layout verification</p>\n </li>\n <li>\n <p><strong>Analog Design</strong>&nbsp;&ndash;&nbsp;Analog circuit design, Spice simulation and Verilog A modeling</p>\n </li>\n <li>\n <p><strong>Physical Design</strong>&nbsp;&ndash;&nbsp;Physical placement &amp; Routing, Functional Equivalence Timing Closure and Design Rule Check</p>\n </li>\n <li>\n <p><strong>Embedded System</strong>&nbsp;&ndash;&nbsp;HE design, SYSTEM Engineering, Firmware/ Drivers/ Multimedia/ Application development, Testing, Automation &amp; QA for Mobile, Wearable, IOT systems</p>\n </li>\n <li>\n <p><strong>UX Design</strong>&nbsp;&ndash;&nbsp;Design and Develop Web, Mobile and Wearable products (UI) for worldwide markets based on a deep understanding of Engineering, Business and User needs</p>\n </li>\n <li>\n <p><strong>Project Associate</strong>&nbsp;&ndash;&nbsp;Develop and guide new lab experiments/assignments/mini-projects in VLSI Design at VEDA IIT, Exceptional proficiencies can enable working on industry projects additionally</p>\n </li>\n</ul>\n\n<p><u><strong>Eligibility</strong></u>:-</p>\n\n<p><strong>2015 B.E/B.Tech graduates ( from &nbsp;CSE, IT, ECE, EEE, EIE, EICE, ECM, ETM streams )&nbsp;&nbsp; with 65%</strong>&nbsp;<strong>throughout academics</strong></p>\n', 1, '2015-07-09 13:18:32');

-- --------------------------------------------------------

--
-- Table structure for table `va_questions`
--

CREATE TABLE IF NOT EXISTS `va_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `skills` varchar(255) DEFAULT NULL,
  `sub_skills` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `question` text NOT NULL,
  `course_id` int(20) NOT NULL,
  `answer1` text NOT NULL,
  `answer2` text NOT NULL,
  `answer3` text NOT NULL,
  `answer4` text NOT NULL,
  `right_answer` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `va_questions`
--

INSERT INTO `va_questions` (`id`, `skills`, `sub_skills`, `category`, `question`, `course_id`, `answer1`, `answer2`, `answer3`, `answer4`, `right_answer`, `status`, `created_on`) VALUES
(2, 'Personal', 'Reasoning', 'Easy', '<p>Find the odd one out</p>\n', 4, 'Echo', 'Resonance', 'Tone', 'Ear', 4, 1, '2015-07-08 08:40:09'),
(3, 'Personal', 'Reasoning', 'Medium', '<p>If banana is apple, apple is grapes, grapes is mango, mango is nuts, nuts is guava, which of the following is a yellow fruit?&nbsp;</p>\n', 4, 'Mango', 'Guava', 'Apple', 'Nuts', 4, 1, '2015-07-08 09:23:03'),
(4, 'Personal', 'Reasoning', 'Hard', '<p>The words in the first column are written in a secret code in the second column. However, the secret writings in the second column are not in the same order. What is the code assigned for the letter D ?</p>\n\n <p>BRAIN 13529 ; &nbsp; &nbsp;&nbsp;<span >DRAIN 35293 ; &nbsp; &nbsp; &nbsp;RIVER 13754; &nbsp; &nbsp; DRIVE 83754</span></p>\n', 4, '3', '5', '9', '1', 4, 1, '2015-07-08 09:22:31'),
(5, 'Personal', 'Reasoning', 'Easy', '<p>Find the odd one out</p>\n', 4, 'December', 'February', 'March', 'July', 2, 1, '2015-07-08 09:21:43'),
(6, 'Personal', 'Reasoning', 'Medium', '<p>It has been established that &nbsp;</p>\n\n<p>P : Einstein was</p>\n\n<p>Q : although a great scientist</p>\n\n<p>R : weak in arithmetic</p>\n\n<p>S : right from his school days What is the right sequence</p>\n', 4, 'SRPQ', 'QPRS', 'QPSR', 'RQPS', 2, 1, '2015-07-08 09:21:24'),
(7, 'Personal', 'Reasoning', 'Hard', '<p>The temperature on Monday was lower than on Tuesday. The temperature on Wednesday was lower than on Tuesday. The temperature on Monday was higher than on Wednesday .If the first two statements are true, the third statement is</p>\n', 4, 'TRUE', 'FALSE', 'Uncertain', 'Not Applicable', 3, 1, '2015-07-08 09:20:49'),
(8, 'Personal', 'Communication', 'Easy', '<p>Which of these is good communication skill?</p>\n', 4, 'Talking Clearly', 'Shouting over the phone ', 'Looking bored', 'Monopolize The Conversation', 1, 1, '2015-07-08 09:20:00'),
(9, 'Personal', 'Communication', 'Medium', '<p>As she was on a very dangerous mission for the government she had to keep ......... about what she did for a living</p>\n', 4, 'Dad', 'Mum', 'Aunt', 'Mom', 2, 1, '2015-07-08 09:19:35'),
(10, 'Personal', 'Communication', 'Hard', '<p>Modern teamwork often brings together individuals from diverse groups who may not share common norms, values, or ......... but who do offer unique expertise, insights, and perspectives</p>\n', 4, 'Accommodation', 'Jargon', 'Vocabularies', 'Pleasantries', 3, 1, '2015-07-08 09:19:06'),
(11, 'Personal', 'Communication', 'Easy', '<p>What body language shows you are listening?</p>\n', 4, 'Putting your fingers in your ears', 'Nodding & making eye contact', 'Finish someone''s sentences', 'Asking questions', 2, 1, '2015-07-08 09:18:37'),
(12, 'Personal', 'Communication', 'Medium', '<p>One proven way to beat an enemy is find his <u><strong>Achilles heel</strong></u>. Find the suitable word indicating the meaning of the underlined pharse</p>\n', 4, 'Secret strategy', 'Amulet', 'Strong point', 'Weak spot', 4, 1, '2015-07-08 09:18:15'),
(13, 'Personal', 'Communication', 'Hard', '<p>E-mail, voice mail, audio conferencing and videoconferencing, and the myriad other technologies that enable individuals to communicate with each other not only increase the ways in which individuals can interact but also require a heightened sensitivity to the ......... of interpersonal interactions</p>\n', 4, 'Nuances', 'Shades', 'Naiveté', 'Repartee', 1, 1, '2015-07-08 09:17:24'),
(15, 'Personal', 'Presentation', 'Medium', '<p>Arrange the following sections of a presentation in the correct order:</p>\n\n<p>a. overview &nbsp; b. introduction &nbsp; &nbsp; c. start new section &nbsp; &nbsp; &nbsp; d. analyse a point &nbsp; &nbsp;e. give examples &nbsp; &nbsp; f. finish section &nbsp; &nbsp; g. paraphrase and clarify &nbsp; &nbsp; &nbsp;h. summarize and conclude &nbsp; &nbsp; &nbsp; i. inviting audience to ask questions/ discuss</p>\n', 4, 'a,d,b,c,e,f,h,g,i', 'a,b,d,c,e,f,h,g,i', 'a,b,c,d,e,f,g,h,i', 'b,a,c,d,e,f,h,g,i', 4, 1, '2015-07-08 09:16:53'),
(17, 'Personal', 'Presentation', 'Easy', '<p>During presentation keeping both hands in your pockets for long periods of time makes you look</p>\n', 4, 'Professional', 'Casual', 'Unprofessional', 'Nervous', 3, 1, '2015-07-08 09:15:39'),
(18, 'Personal', 'Presentation', 'Medium', '<p>How many do&#39;s are there in the below statements Look at the audience Put all your ideas onto the slide Over prepare Select Colors that Have High Contrast Keep It Short and Simple</p>\n', 4, '3', '4', '1', '2', 1, 1, '2015-07-08 09:15:11'),
(23, 'Personal', 'Time Management', 'Easy', '<p>Which of the following are advised for good time management?</p>\n', 4, 'Long term planning', 'Daily/weekly planning', 'Create “to do”list', 'All of the above', 4, 1, '2015-07-08 09:14:22'),
(27, 'Personal', 'Values', 'Medium', '<p>What should you do with old batteries?</p>\n', 4, 'Just throw them in the litter bin', 'Throw them in a special container that is for old batteries', 'Throw them anywhere outside, where no one can see them', 'Give it to kids to play', 2, 1, '2015-07-08 09:13:20'),
(28, 'Personal', 'Values', 'Hard', '<p>What is not a good value?</p>\n', 4, 'World Peace', 'Beauty in nature', 'Social Respect', 'Environment Pollution ', 4, 1, '2015-07-08 09:01:16'),
(32, 'Organisation', 'Interviewing Skills', 'Easy', '<p>When should you arrive at your interview?</p>\n', 4, 'Right on Time ', '10 Min early', '30 min early ', '5 min late', 2, 1, '2015-07-08 09:00:37'),
(34, 'Organisation', 'Interviewing Skills', 'Hard', '<p>You can have more control in every interview by</p>\n', 4, 'Knowing your strengths and specifically stating them ', 'Looking the interviewer in the eye', 'Asking a lot of counter questions', 'Smiling all through the interview process', 1, 1, '2015-07-08 08:59:57'),
(35, 'Organisation', 'Interviewing Skills', 'Easy', '<p>What will boost your confidence, and hone your interviewing skills?</p>\n', 4, 'Reading about the industry', 'A deep breath before you meet the interviewer', 'Practice Practice Practice ', 'Checking with others about their preparation for interview', 3, 1, '2015-07-08 08:59:27'),
(36, 'Organisation', 'Interviewing Skills', 'Medium', '<p>When asked the question &#39;What are weakness?</p>\n', 4, 'Spin one of your strengths as a weakness', 'Talk about one that isn''t too bad', 'Smile and divert the question', 'Pretend you did not hear ', 2, 1, '2015-07-08 08:58:42'),
(37, 'Organisation', 'Interviewing Skills', 'Hard', '<p>Which is the best answer to why do you want to work at this company?</p>\n', 4, 'I know your company is a leader and I would be a good fit because of my passion and experience ', 'I believe I can grow here and improve my skills', 'I’ve always wanted to work here!', 'I heard there were some open positions, so here I applied to get a job', 1, 1, '2015-07-08 08:57:53'),
(39, 'Organisation', 'Group Discussion', 'Medium', '<p>How many do&#39;s are there in the below statements</p>\n\n<p>Be polite at the same time be assertive</p>\n\n<p>Sit straight and show positive body language</p>\n\n<p>Be logical in your discussion</p>\n\n<p>Draw too much on personal experience or anecdote</p>\n', 4, '3', '4', '1', '2', 1, 1, '2015-07-08 08:56:24'),
(40, 'Organisation', 'Group Discussion', 'Hard', '<p>What is SPELT Approach for Group Discussion : socio-cultural impact, political impact, economic issues, legal and technological impact</p>\n', 4, 'socio-cultural impact,  political impact,', 'economic issues,', 'legal and technological impact', 'All of the above', 4, 1, '2015-07-08 08:50:49'),
(41, 'Organisation', 'Group Discussion', 'Easy', '<p>How many don&rsquo;t&#39;s are there in the below statements Keep eye contact while speaking Pointing fingers, shouting, abusing look at the moderators when you speak Allow others to speak Make sure to bring the discussion on track</p>\n', 4, '3', '4', '1', '2', 4, 1, '2015-07-08 08:50:21'),
(43, 'Organisation', 'Group Discussion', 'Hard', '<p>GD&rsquo;s can be on</p>\n', 4, 'Factual & Abstract Topics ', 'Controversial Topics ', 'Only case studies', 'All of the above ', 4, 1, '2015-07-08 08:49:33'),
(44, 'Organisation', 'Problem Solving', 'Easy', '<p>Following skills are not key to problem-solving</p>\n', 4, 'Analytical Ability', 'Initiative', 'Lateral Thinking', 'All of the above', 4, 1, '2015-07-08 08:48:55'),
(47, 'Organisation', 'Problem Solving', 'Easy', '<p>To solve a difficult problem, you must first</p>\n', 4, 'Write down the problem on a piece of paper.', 'Find someone to blame for the problem', 'Define the problem accurately', 'Deny the problem exists', 3, 1, '2015-07-08 08:47:52'),
(49, 'Organisation', 'Problem Solving', 'Hard', '<p>You are competing with for student leader post in your college.. The committee has asked all to finishtheir campaign activities one day prior. You realize that your opponents is talking to friends and others outside the campus and influencing them. What will you do?</p>\n', 4, 'Lodge a complaint to chairperson against the Opponent', 'Ask for withdrawal of your name', 'You treat all your friends for a party', 'rib with others that what is happening is wrong and pick a fight with your opponent ', 1, 1, '2015-07-08 08:47:15'),
(50, 'Organisation', 'Decision Making', 'Easy', '<p>Which do you follow to take decisions</p>\n\n<p>1) Gut &nbsp; &nbsp; 2) Data &nbsp; &nbsp;3) Information &nbsp; &nbsp;4) Knowledge</p>\n', 4, 'Only 1& 2', 'Only 3& 4', 'None. I will go with the flow', 'a&b', 4, 1, '2015-07-08 08:46:37'),
(51, 'Organisation', 'Decision Making', 'Medium', '<p>You saw a friend cheating on a test and the principal wants to know what you saw. How do you decide what to say?</p>\n', 4, 'I’d say I didn’t see anything', 'I let my friend that cheated convince me not to say anything', 'I block out what people tell me and go with my gut', 'Avoid the meeting ', 3, 1, '2015-07-08 08:45:53'),
(53, 'Organisation', 'Decision Making', 'Easy', '<p>Decision Making is a process that is performed by_________</p>\n', 4, 'Everybody in day to day life', 'Sometimes by specific people', 'only the professionals perform regularly', 'Only elders should do that', 1, 1, '2015-07-08 08:45:14'),
(55, 'Organisation', 'Decision Making', 'Hard', '<p>A local thug (bad element) has started illegal construction on your vacant plot. He has refused your request to vacate and threatened you of dire consequences in case you do not sell the property at a cheap price to him. You would</p>\n', 4, 'Sell the property at a cheap price to him', 'Negotiate with the goon to get a higher price.', 'Go to the police for necessary action', 'Ask for help from your neighbours', 3, 1, '2015-07-08 08:44:40'),
(56, 'Technical', 'Technical', 'Easy', '<p>The keyword used to transfer control from a function back to the calling function is</p>\n', 4, 'switch', 'goto', 'go back', 'return', 4, 1, '2015-07-08 08:44:03'),
(57, 'Technical', 'Technical', 'Medium', '<p>Point out the error in the program</p>\n\n<p>f(int a, int b) {</p>\n\n<p>int a;</p>\n\n<p>a = 20;</p>\n\n<p>return a;</p>\n\n<p>}</p>\n', 4, 'Missing parenthesis in return statement', 'The function should be defined as int f(int a, int b)', 'Redeclaration of a', 'None of above', 3, 1, '2015-07-08 08:43:35'),
(58, 'Technical', 'Technical', 'Hard', '<p>Every function must return a value</p>\n', 4, 'Yes', 'No ', 'Neither A Nor B', 'None of above', 2, 1, '2015-07-08 08:42:59'),
(59, 'Technical', 'Technical', 'Easy', '<p>Will the following functions work?</p>\n\n<p>int f1(int a, int b) {</p>\n\n<p>return ( f2(20) );</p>\n\n<p>}</p>\n\n<p>int f2(int a) {</p>\n\n<p>return (a*a);</p>\n\n<p>}</p>\n', 4, 'Yes', 'No ', 'Neither A Nor B', 'None of above', 2, 1, '2015-07-08 08:42:08'),
(60, 'Technical', 'Technical', 'Medium', '<p>The DBMS acts as an interface between what two components of an enterprise-class database system?</p>\n', 4, 'Database application and the database', 'Data and the database', 'The user and the database application', 'Database application and SQL', 1, 1, '2015-07-08 08:40:54'),
(61, 'Technical', 'Technical', 'Hard', '<p>Which of the following products implemented the CODASYL DBTG model?</p>\n', 4, 'IDMS', 'dBase-II', 'DB2', 'R:base', 1, 1, '2015-07-08 08:40:37');

-- --------------------------------------------------------

--
-- Table structure for table `va_results`
--

CREATE TABLE IF NOT EXISTS `va_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) NOT NULL,
  `questions` int(11) NOT NULL,
  `marks` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `va_results`
--

INSERT INTO `va_results` (`id`, `course_id`, `questions`, `marks`, `student_id`, `status`, `created_on`) VALUES
(1, 2, 1, 0, 3, 3, '2015-07-09 20:45:34'),
(2, 4, 10, 1, 4, 3, '2015-07-09 20:45:30'),
(3, 4, 10, 7, 1, 1, '2015-06-30 06:25:35'),
(4, 4, 10, 4, 1, 1, '2015-06-30 06:25:51'),
(5, 2, 1, 1, 1, 3, '2015-07-09 20:45:15'),
(6, 4, 60, 4, 4, 3, '2015-07-09 20:43:47'),
(7, 2, 1, 1, 4, 3, '2015-07-09 20:43:56'),
(8, 4, 60, 18, 4, 3, '2015-07-09 20:45:26'),
(9, 2, 1, 0, 4, 3, '2015-07-09 20:45:22'),
(10, 4, 25, 7, 1, 1, '2015-07-08 11:28:03'),
(11, 4, 25, 11, 1, 1, '2015-07-08 15:09:29'),
(12, 4, 25, 10, 1, 1, '2015-07-08 15:13:59'),
(13, 4, 25, 11, 1, 1, '2015-07-08 15:15:03'),
(14, 4, 25, 9, 1, 1, '2015-07-09 04:24:30'),
(15, 4, 25, 9, 1, 1, '2015-07-09 04:24:36'),
(16, 4, 25, 6, 1, 1, '2015-07-09 10:09:08'),
(17, 4, 25, 8, 1, 1, '2015-07-10 07:58:55'),
(18, 4, 25, 7, 1, 1, '2015-07-13 05:29:48'),
(19, 4, 25, 3, 1, 1, '2015-07-13 06:03:03'),
(20, 4, 25, 4, 1, 1, '2015-07-13 06:06:39'),
(21, 4, 25, 5, 1, 1, '2015-07-13 06:17:12'),
(22, 4, 25, 6, 1, 1, '2015-07-13 06:19:42'),
(23, 4, 25, 0, 1, 1, '2015-07-13 08:23:16'),
(24, 4, 25, 8, 1, 1, '2015-07-13 09:45:14');

-- --------------------------------------------------------

--
-- Table structure for table `va_students`
--

CREATE TABLE IF NOT EXISTS `va_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `university_hallticket` varchar(200) NOT NULL,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `date_birth` timestamp NULL DEFAULT NULL,
  `religion` varchar(255) NOT NULL,
  `aadhar_number` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `income` varchar(100) DEFAULT NULL,
  `parent_name` varchar(255) DEFAULT NULL,
  `parent_profession` varchar(200) DEFAULT NULL,
  `parent_mobile` varchar(100) NOT NULL,
  `street` text,
  `village` varchar(255) DEFAULT NULL,
  `mandal` varchar(255) NOT NULL,
  `district` varchar(255) DEFAULT NULL,
  `terms_conditions` int(11) NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alt_email` varchar(255) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `icet_rank` varchar(100) DEFAULT NULL,
  `eamcet_rank` varchar(255) DEFAULT NULL,
  `affiliated_university` int(11) DEFAULT NULL,
  `qualification` varchar(100) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `passing_year` year(4) DEFAULT NULL,
  `ssc_passing_year` year(4) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `ssc_total_marks` int(100) DEFAULT NULL,
  `ssc_obtained_marks` int(100) DEFAULT NULL,
  `ssc_percentage` double DEFAULT NULL,
  `ssc_board` varchar(20) DEFAULT NULL,
  `inter_passing_year` year(4) DEFAULT NULL,
  `inter_total_marks` int(100) DEFAULT NULL,
  `inter_obtained_marks` int(100) DEFAULT NULL,
  `inter_percentage` double DEFAULT NULL,
  `inter_board` varchar(20) DEFAULT NULL,
  `diploma_passing_year` year(4) DEFAULT NULL,
  `diploma_total_marks` int(100) DEFAULT NULL,
  `diploma_obtained_marks` int(100) DEFAULT NULL,
  `diploma_percentage` double DEFAULT NULL,
  `diploma_board` varchar(20) DEFAULT NULL,
  `specialization` text,
  `degree_passing_year` year(4) DEFAULT NULL,
  `degree_total_marks` int(100) DEFAULT NULL,
  `degree_obtained_marks` int(100) DEFAULT NULL,
  `degree_percentage` double DEFAULT NULL,
  `degree_board` varchar(20) DEFAULT NULL,
  `sem1_passing_year` year(4) DEFAULT NULL,
  `sem1_total_marks` int(100) DEFAULT NULL,
  `sem1_obtained_marks` int(100) DEFAULT NULL,
  `sem1_percentage` double DEFAULT NULL,
  `sem2_passing_year` year(4) DEFAULT NULL,
  `sem2_total_marks` int(100) DEFAULT NULL,
  `sem2_obtained_marks` int(100) DEFAULT NULL,
  `sem2_percentage` double DEFAULT NULL,
  `sem3_passing_year` year(4) DEFAULT NULL,
  `sem3_total_marks` int(100) DEFAULT NULL,
  `sem3_obtained_marks` int(100) DEFAULT NULL,
  `sem3_percentage` double DEFAULT NULL,
  `sem4_passing_year` year(4) DEFAULT NULL,
  `sem4_total_marks` int(100) DEFAULT NULL,
  `sem4_obtained_marks` int(100) DEFAULT NULL,
  `sem4_percentage` double DEFAULT NULL,
  `sem5_passing_year` year(4) DEFAULT NULL,
  `sem5_total_marks` int(100) DEFAULT NULL,
  `sem5_obtained_marks` int(100) DEFAULT NULL,
  `sem5_percentage` double DEFAULT NULL,
  `sem6_percentage` double DEFAULT NULL,
  `sem6_obtained_marks` double DEFAULT NULL,
  `sem6_total_marks` double DEFAULT NULL,
  `sem7_obtained_marks` double DEFAULT NULL,
  `sem7_total_marks` double DEFAULT NULL,
  `sem6_passing_year` year(4) DEFAULT NULL,
  `sem7_percentage` double DEFAULT NULL,
  `sem7_passing_year` year(4) DEFAULT NULL,
  `aggregate_marks` double DEFAULT NULL,
  `gaps` varchar(50) DEFAULT NULL,
  `no_gap_years` int(20) DEFAULT NULL,
  `gap_reason` text,
  `backlogs` timestamp NULL DEFAULT NULL,
  `dd_number` varchar(255) DEFAULT NULL,
  `drawn_bank` varchar(255) DEFAULT NULL,
  `drawn_date` timestamp NULL DEFAULT NULL,
  `declaration` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `password` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sem1_board` varchar(20) DEFAULT NULL,
  `sem2_board` varchar(20) DEFAULT NULL,
  `sem3_board` varchar(20) DEFAULT NULL,
  `sem4_board` varchar(20) DEFAULT NULL,
  `sem5_board` varchar(20) DEFAULT NULL,
  `sem6_board` varchar(20) DEFAULT NULL,
  `sem7_board` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `va_students`
--

INSERT INTO `va_students` (`id`, `university_hallticket`, `first_name`, `last_name`, `photo`, `gender`, `date_birth`, `religion`, `aadhar_number`, `category`, `income`, `parent_name`, `parent_profession`, `parent_mobile`, `street`, `village`, `mandal`, `district`, `terms_conditions`, `state`, `pincode`, `mobile`, `email`, `alt_email`, `institution`, `icet_rank`, `eamcet_rank`, `affiliated_university`, `qualification`, `branch`, `passing_year`, `ssc_passing_year`, `amount`, `ssc_total_marks`, `ssc_obtained_marks`, `ssc_percentage`, `ssc_board`, `inter_passing_year`, `inter_total_marks`, `inter_obtained_marks`, `inter_percentage`, `inter_board`, `diploma_passing_year`, `diploma_total_marks`, `diploma_obtained_marks`, `diploma_percentage`, `diploma_board`, `specialization`, `degree_passing_year`, `degree_total_marks`, `degree_obtained_marks`, `degree_percentage`, `degree_board`, `sem1_passing_year`, `sem1_total_marks`, `sem1_obtained_marks`, `sem1_percentage`, `sem2_passing_year`, `sem2_total_marks`, `sem2_obtained_marks`, `sem2_percentage`, `sem3_passing_year`, `sem3_total_marks`, `sem3_obtained_marks`, `sem3_percentage`, `sem4_passing_year`, `sem4_total_marks`, `sem4_obtained_marks`, `sem4_percentage`, `sem5_passing_year`, `sem5_total_marks`, `sem5_obtained_marks`, `sem5_percentage`, `sem6_percentage`, `sem6_obtained_marks`, `sem6_total_marks`, `sem7_obtained_marks`, `sem7_total_marks`, `sem6_passing_year`, `sem7_percentage`, `sem7_passing_year`, `aggregate_marks`, `gaps`, `no_gap_years`, `gap_reason`, `backlogs`, `dd_number`, `drawn_bank`, `drawn_date`, `declaration`, `status`, `password`, `created_on`, `sem1_board`, `sem2_board`, `sem3_board`, `sem4_board`, `sem5_board`, `sem6_board`, `sem7_board`) VALUES
(1, '123456', 'student', 'task', '1435738713-80.png', 'Male', '2015-07-13 07:00:00', 'hindhu', '124314325545', 'BC-D', '100000', 'student', 'student', '', 'hyd', 'hyd', '', 'Hyderabad', 0, 'telangana', '500005', '9492844021', 'student@gmail.com', 'admin@task.com', 'mxit', NULL, '2144344', 0, 'btech', 'cse', 2016, 2006, 3000, 600, 505, NULL, NULL, 2008, 1000, 800, NULL, NULL, 2015, 3252345, 3432, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2015, 3424, 54, NULL, 2015, 24354, 545, NULL, 2015, 54235, 534, NULL, 2015, 123, 123, NULL, 2015, 343, 432432, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0, '', '0000-00-00 00:00:00', '21423543', 'sbi', '2015-07-22 07:00:00', 1, 1, '656542', '2015-07-09 13:42:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '3525545643', 'Student', '', '1435325840-49.png', 'Male', '2015-06-19 07:00:00', 'hvffg', '124314325545', 'BC-D', '100000', 'hgfdhf', 'hfdgh', '', 'asf swqasfsdwfw wqrqw wqerfewq ewqrwe ewqfr dfds dwfds dwsfdsf dewfd dwfs dsfgsd dwsfds dsgfsd fdsg', 'vcdfhgd', '', 'Hyderabad', 0, 'telangana', '500005', '1234567890', 'student@task.com', 'admin@task.com', 'mxit', NULL, '2144344', 1, 'btech', 'cse', 2015, 2015, 3000, 213, 505, NULL, NULL, 2015, 1000, 3432, NULL, NULL, 2015, 3252345, 3432, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2015, 3424, 54, NULL, 2015, 24354, 545, NULL, 2015, 123, 123, NULL, 2015, 4563464, 6443, NULL, 2015, 343, 432432, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 123, 'sadfa sqfsa sdafsda sdafds dfds dfds dsfdsfds ', '0000-00-00 00:00:00', 'hfg', 'ghgj', '2015-06-25 07:00:00', 1, 2, '1320', '2015-07-06 13:50:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, '57364968', 'tirupati', 'rao', '1435925832-62.png', 'Male', '2002-07-23 07:00:00', 'Hindu', '124314325545', 'BC-D', NULL, 'ABCD', 'abcd', '1234567890', '1-234', 'nagarjuna circle', 'panjagutta', 'Hyderabad', 1, 'telangana', '500005', '9492844021', 'edsi.tirupatirao@gmail.com', 'admin@task.com', 'Kakatiya Institute of Management Studies', '21421', NULL, 1, 'MCA', NULL, 2015, 2006, 750, 600, 500, 83.333, NULL, 2008, 1000, 800, 80, NULL, 0000, 0, 0, 0, NULL, 'computers', 2011, 1000, 750, 75, NULL, 2012, 600, 500, 83.333, 2013, 600, 450, 75, 2014, 600, 480, 80, 2015, 600, 490, 81.667, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0, '', '0000-00-00 00:00:00', '354545425', 'SBI', '2015-07-02 07:00:00', 1, 1, '333033', '2015-07-06 13:51:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, '986796546', 'tirupati', 'btech', '1435927095-84.jpg', 'Male', '2015-07-16 07:00:00', 'Muslim', '124314325545', 'BC-D', '100000', 'hhghffd', 'hfdghfhgfd', '1234567890', '343', 'hyd', 'panjagutta', 'Hyderabad', 1, 'telangana', '500005', '9492844021', 'edsi.tirupatirao@gmail.com', 'admin@task.com', 'AAR MAHAVEER ENGINEERING COLLEGE', NULL, '2144344', 1, 'btech', 'cse', 2017, 2006, 3000, 600, 505, 84.167, NULL, 2015, 1000, 800, 80, NULL, 2015, 250, 240, 96, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2006, 600, 500, 83.333, 2007, 500, 450, 0, 2008, 600, 450, 75, 2015, 750, 550, 73.333, 2015, 750, 450, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0, '', '0000-00-00 00:00:00', '21423543', 'SBI', '2015-07-09 07:00:00', 1, 2, '85363', '2015-07-06 13:51:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, '457548767', 'tirupati', 'degree', '1435927665-78.png', 'Male', '1990-08-25 07:00:00', 'Christian', '124314325545', 'BC-D', '100000', 'ABCD', 'hdfghdfg', '1234567890', '5435', 'hyd', 'panjagutta', 'Hyderabad', 1, 'telangana', '500005', '9492844021', 'edsi.tirupatirao@gmail.com', 'admin@task.com', 'Aurora Degree College', NULL, NULL, 2, 'degree', NULL, 2018, 2015, 750, 600, 505, 84.167, NULL, 2015, 1000, 800, 80, NULL, 2015, 250, 240, 96, NULL, 'Computers', NULL, NULL, NULL, NULL, NULL, 2015, 600, 545, 90.833, 2015, 600, 450, 75, 2015, 600, 450, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0, '', '0000-00-00 00:00:00', '21423543', 'SBI', '2015-07-30 07:00:00', 1, 2, '587528', '2015-07-06 13:51:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '07K01F0052', 'Bitlu', 'srikanth', '1436266179-70.jpg', 'Male', '1986-07-24 07:00:00', 'Hindu', '642094892105', 'BC–A', NULL, 'B Krishna Murthy', 'Conductor', '9247289583', 'H.No:4-1/4, kanakadurga colony', 'Gopalpur', 'Hanamkonda', 'Warangal', 1, 'Telangana', '500016', '08886149700', 'task.srikanth@gmail.com', 'ieg.srikanth1@gmail.com', 'Matrix Inst Of Tech', '21390', NULL, 1, 'MCA', NULL, 2015, 2014, 0, 600, 498, 83, NULL, 2013, 1000, 785, 78.5, NULL, 0000, 0, 0, 0, NULL, 'B.Sc (M.St.Cs)', 2012, 1500, 1200, 80, NULL, 2015, 600, 490, 81.667, 2015, 600, 450, 0, 2015, 600, 489, 81.5, 2015, 600, 610, 101.667, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0, '', '0000-00-00 00:00:00', '00000', '00000', '0000-00-00 00:00:00', 1, 1, '152640', '2015-07-07 10:50:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'TASK8139', 'manchala', 'sakumar', '1436268789-33.jpg', 'Male', '1987-01-07 07:00:00', 'Hindu', '662671253356', 'BC–B', NULL, 'Gangadhar', 'Rajeshwari', '8143208266', '8-28', 'potharam', 'mallial', 'karimnagar', 1, 'telangana', '505452', '9603996666', 'saikumar.manchalas@gmail.com', 'saikumar266@gmail.com', 'Sahaja School of Business', '123', NULL, 1, 'MBA', NULL, 2011, 2002, 1000, 600, 466, 77.667, NULL, 2004, 1000, 652, 65.2, NULL, 0000, 0, 0, 0, NULL, 'B.SC COMPUTERS', 2007, 1100, 850, 77.273, NULL, 2010, 400, 300, 75, 2011, 400, 300, 0, 2011, 400, 300, 75, 2011, 400, 300, 75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0, '', '0000-00-00 00:00:00', '7150', 'SBH', '2015-04-09 07:00:00', 1, 1, '60440', '2015-07-07 11:33:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '026043006', 'Upendar', 'd', '1436336489-55.JPG', 'Male', '2015-07-08 07:00:00', 'Hindu', '533846684353', 'BC–A', '100000', 'chandraian', 'farmer', '8886127867', '123', 'arikayalapadu', 'enkoor', 'khammam', 1, 'telangana', '500168', '8886127867', 'upendar3328@gmail.com', 'upendar.ieg@gmail.com', 'Government (S.R and B.G.N.R) Degree College, Khammam', NULL, NULL, 3, 'degree', NULL, 2015, 2013, 200, 600, 412, 68.667, NULL, 2014, 1000, 630, 63, NULL, 0000, 0, 0, 0, NULL, 'BSC-BZC', NULL, NULL, NULL, NULL, NULL, 2016, 450, 300, 66.667, 2017, 450, 300, 66.667, 2017, 450, 250, 55.556, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'No', 0, '', '0000-00-00 00:00:00', '123456', 'andhra Bank', '2015-07-02 07:00:00', 1, 1, '324394', '2015-07-08 06:21:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '456565436', 'tirupati', 'rao', '1436421541-97.png', 'Male', '2015-07-08 07:00:00', 'Muslim', '124314325545', 'BC–B', '100000', 'hgfdhf', 'hfdgh', '01234567890', 'fsgfd gfg', 'hyd', 'panjagutta', 'Hyderabad', 1, 'telangana', '500005', '9492844021', 'postesting1@gmail.com', 'edsi.tirupatirao@gmail.com', 'Anjamma Agi Reddy Engineering College for Women', NULL, '2144344', 1, 'btech', 'cse', 2015, 2012, 750, 600, 505, 84.167, NULL, 1997, 1000, 800, 80, NULL, 0000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2012, 1050, 500, 47.619, 0000, 750, 0, 0, 0000, 750, 0, 0, 0000, 750, 0, 0, 0000, 750, 0, 0, 0, 0, 750, 0, 700, 0000, 0, 0000, 47.619, 'No', 0, '', '0000-00-00 00:00:00', '21423543', 'SBI', '2015-07-28 07:00:00', 1, 1, '639299', '2015-07-09 06:01:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '789654123', '741258', '963258', '1436422773-88.jpg', 'Male', '2015-07-08 07:00:00', 'Hindu', '654656', 'SC', '21656', '8798', '79879897', '789654', 'fghf', 'uyguyguy', 'iuyg', 'iyiyui', 1, 'uyuyuyg', '5646', '8977437023', 'postesting2@gmail.com', 'postesting2@gmail.com', 'Anjamma Agi Reddy Engineering College for Women', NULL, '1236516', 1, 'btech', 'ihjuihjui', 2015, 2005, 750, 600, 300, 50, NULL, 2010, 1000, 450, 45, NULL, 2011, 1000, 600, 60, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2013, 1050, 500, 47.619, 0000, 750, 0, 0, 0000, 750, 0, 0, 0000, 750, 0, 0, 0000, 750, 0, 0, 0, 0, 750, 0, 700, 0000, 0, 0000, 47.619, 'No', 0, '', '0000-00-00 00:00:00', '789654', 'sbi bank panjagutta', '2015-07-08 07:00:00', 1, 1, '1689', '2015-07-09 06:31:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2346534576', 'tirupati', 'rao', '1436431944-70.png', 'Male', '2015-07-15 07:00:00', 'Hindu', '124314325545', 'BC–B', NULL, 'hgfdhf', 'hfdgh', '9492844021', 'fsgfd gfg', 'hyd', 'panjagutta', 'Hyderabad', 1, 'telangana', '500005', '9492844021', 'postesting123@gmail.com', 'edsi.tirupatirao@gmail.com', 'Chaitanya Institute of Business Management', '21421', NULL, 2, 'MCA', NULL, 2016, 2011, 0, 600, 342, 57, NULL, 2011, 1000, 755, 75.5, NULL, 0000, 0, 0, 0, NULL, 'fdgfdgh', 2009, 866, 434, 50.115, NULL, 2012, 1050, 900, 85.714, 0000, 750, 0, 0, 0000, 750, 0, 0, 0000, 750, 0, 0, 0000, 750, 0, 0, 0, 0, 750, NULL, NULL, 0000, NULL, NULL, 85.714, 'No', 0, '', '0000-00-00 00:00:00', '0', 'N/A', '0000-00-00 00:00:00', 1, 1, '581232', '2015-07-09 08:54:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '677654754', 'tirupati', 'rao', '1436432412-2.png', 'Male', '2015-07-08 07:00:00', 'Hindu', '124314325545', 'BC–B', '100000', 'hgfdhf', 'hfdgh', '01234567890', 'fsgfd gfg', 'hyd', 'panjagutta', 'poss', 1, 'telangana', '500005', '9492844021', 'postesting23432@gmail.com', 'edsi.tirupatirao@gmail.com', 'Kasturba Gandhi Degree College for Women', NULL, NULL, 1, 'degree', NULL, 2015, 2011, 750, 600, 505, 84.167, NULL, 2012, 1000, 800, 80, NULL, 0000, 0, 0, 0, NULL, 'gsdgg', NULL, NULL, NULL, NULL, NULL, 2011, 1050, 54, 5.143, 0000, 750, 0, 0, 0000, 750, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5.143, 'No', 0, '', '0000-00-00 00:00:00', '21423543', 'ghgj', '2015-07-28 07:00:00', 1, 1, '727659', '2015-07-09 09:00:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '574567', 'tirupati', 'rao', '1436504885-36.png', 'Male', '2015-06-18 07:00:00', 'Hindu', '124314325545', 'SC', '100000', 'hgfdhf', 'hfdgh', '01234567890', 'fsgfd gfg', 'hyd', 'panjagutta', 'Hyderabad', 1, 'telangana', '500005', '9492844021', 'edsi.tirupatirao@gmail.com', 'edsi.tirupatirao@gmail.com', 'Anjamma Agi Reddy Engineering College for Women', NULL, '2144344', 1, 'btech', 'cse', 2015, 2010, 0, 600, 500, 83.333, NULL, 2012, 1000, 900, 90, NULL, 0000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2011, 1050, 900, 85.714, 0000, 750, 300, 40, 0000, 750, 700, 93.333, 0000, 750, 700, 93.333, 0000, 750, 0, 0, 0, 0, 750, 0, 700, 0000, 0, 0000, 78.095, 'No', 0, '', '0000-00-00 00:00:00', '0', 'N/A', '0000-00-00 00:00:00', 1, 1, '529127', '2015-07-10 05:08:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '576547', 'tirupati', 'rao', '1436506673-44.png', 'Male', '2015-07-15 07:00:00', 'Muslim', '124314325545', 'BC–A', NULL, 'hgfdhf', 'hfdgh', '01234567890', 'fsgfd gfg', 'hyd', 'panjagutta', 'Hyderabad', 1, 'telangana', '500005', '9492844021', 'postesting23432123@gmail.com', 'edsi.tirupatirao@gmail.com', 'Chaitanya Institute of Business Management', '21421', NULL, 2, 'MCA', NULL, 2016, 2012, 0, 600, 505, 84.167, NULL, 2011, 1000, 800, 80, NULL, 0000, 0, 0, 0, NULL, 'fdhfdujd', 2009, 1000, 800, 80, NULL, 2011, 1050, 900, 85.714, 0000, 750, 0, 0, 0000, 750, 0, 0, 0000, 750, 0, 0, 0000, 750, 0, 0, 0, 0, 750, NULL, NULL, 0000, NULL, NULL, 85.714, 'No', 0, '', '0000-00-00 00:00:00', '0', 'N/A', '0000-00-00 00:00:00', 1, 1, '661829', '2015-07-10 05:38:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '123456', 'tirupati', 'rao', '1436508211-74.png', 'Male', '1990-08-25 07:00:00', 'Muslim', '124314325545', 'BC–A', '100000', 'hgfdhf', 'hfdgh', '01234567890', 'fdgfd', 'hyd', 'panjagutta', 'Hyderabad', 1, 'telangana', '500005', '9492844021', 'edsi.tirupatirao@gmail.com', 'edsi.tirupatirao@gmail.com', 'Aurora Degree College', NULL, NULL, 2, 'degree', NULL, 2015, 2011, 0, 600, 505, 84.167, NULL, 2012, 1000, 800, 80, NULL, 0000, 250, 200, 80, NULL, 'gjhhgfj', NULL, NULL, NULL, NULL, NULL, 2012, 1050, 900, 85.714, 0000, 750, 0, 0, 0000, 750, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 85.714, 'No', 0, '', '0000-00-00 00:00:00', '0', 'N/A', '0000-00-00 00:00:00', 1, 1, '135061', '2015-07-10 06:03:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '123456', '123456', '123', '1436782168-23.jpg', 'Male', '2015-07-27 07:00:00', 'Hindu', '123', 'SC', NULL, '545', '45', '45', '45', '54', '45', '45', 1, '545', '6545', '8977437023', 'postesting2@gmail.com', 'postesting2@gmail.com', 'Lotus Institute of Management Studies', '123', NULL, 1, 'MCA', NULL, 2015, 2011, 200, 600, -400, -66.667, NULL, 2010, 1000, -885, -88.5, NULL, 2001, 1000, -950, 0, NULL, 'b.sc computer', 1999, 750, -400, -53.333, NULL, 2006, 1050, -555, -52.857, 2010, 750, -580, -77.333, 2010, 750, -450, -60, 2010, 750, -670, -89.333, 2010, 750, -790, -105.333, -73.333, -550, 750, NULL, NULL, 2007, NULL, NULL, -76.36483333333332, 'No', 0, '', '0000-00-00 00:00:00', '123456', 'banjarahills', '2015-07-27 07:00:00', 1, 1, '149798', '2015-07-13 10:12:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '741258963', 'yty', 'rytr', '1436785894-85.jpg', 'Male', '2015-07-26 07:00:00', 'Jain', '7987897', 'BC–A', '454654', 'sdf', 'sdf', '8977437023', 'sds', 'ssd', 'ss', 'Hyderabad', 1, 'Telangana', '446565', '8977437023', 'postesting2@gmail.com', '', 'Government Degree College (for Women), Mancherial', NULL, NULL, 3, 'degree', NULL, 2015, 1997, 200, 600, 300, 50, NULL, 1998, 1000, 400, 40, NULL, 1999, 1000, 500, 50, NULL, 'vbvb', NULL, NULL, NULL, NULL, NULL, 2008, 1050, 650, 0, 2008, 750, 300, 40, 2005, 750, 300, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26.666666666666668, 'No', 0, '', '0000-00-00 00:00:00', '123456', 'dssf', '2015-07-27 07:00:00', 1, 1, '818317', '2015-07-13 11:11:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '789654', 'divya', 'galla', '1436869383-13.jpg', 'Female', '2015-07-27 07:00:00', 'Hindu', '', 'SC', NULL, 'arjuna', 'aruna', '8977437023', '4-63', 'hyderbad', 'hyderabad', 'rr district', 1, 'ap', '500001', '8977437023', 'postesting2@gmail.com', 'postesting2@gmail.com', 'Sree Chaitanya P.G. College ', '56200', NULL, 1, 'MBA', NULL, 2015, 2000, 200, 600, 300, 50, '', 2008, 1000, 750, 75, '', 0000, 0, 0, 0, '', 'ghfgf', 2001, 1500, 850, 56.667, '', 2003, 1050, 550, 52.381, 2006, 750, 300, 40, 2004, 750, 253, 33.733, 2008, 750, 450, 60, 2008, 750, 412, 54.933, 74, 555, 750, NULL, NULL, 2006, NULL, NULL, 52.50783333333334, 'No', 0, '', '0000-00-00 00:00:00', '6654654654646', 'lhlkj', '2015-07-06 07:00:00', 1, 1, '592740', '2015-07-14 10:23:18', '', '', '', '', '', '', NULL),
(22, '6455646', 'sdf', 'sds', '1436871235-15.jpg', 'Male', '2015-07-26 07:00:00', 'Hindu', '3654654654', 'SC', '13212', 'kjhjkh', 'gkhgjgj', '8977437023', 'jgjhg', 'khkjhjkh', 'kjhjkh', 'Hyderabad', 1, 'Telangana', '6465465', '8977437023', 'postesting2@gmail.com', '', 'GSR Group of Institutions', NULL, '454', 1, NULL, 'khj', 2015, 1998, 0, 600, 452, 75.333, '', 1998, 1000, 752, 75.2, '', 0000, 0, 0, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, 2000, 1050, 841, 80.095, 2002, 750, 527, 70.267, 2003, 750, 600, 80, 2004, 750, 490, 65.333, 2004, 750, 526, 70.133, 60.8, 456, 750, 587, 700, 2002, 83.857, 2003, 72.92642857142857, 'No', 0, '', '0000-00-00 00:00:00', '0', 'N/A', '0000-00-00 00:00:00', 1, 1, '599841', '2015-07-14 10:54:04', '', '', '', '', '', '', ''),
(23, '46464565456', 'kgjk', 'hfhg', '1436872044-82.jpg', 'Male', '2015-07-27 07:00:00', 'Muslim', '', 'BC-A', '665464', 'gjhg', 'khkjh', '9979878945', 'gbhjnb', 'kkj', 'khkjh', 'Adilabad', 1, 'Telangana', '3454', '8977437023', 'postesting2@gmail.com', '', 'Kasturba Gandhi Degree College for Women', NULL, NULL, 1, NULL, NULL, 2015, 2002, 750, 600, 350, 58.333, '', 1996, 1000, 754, 75.4, '', 0000, 0, 0, 0, '', 'hjkh', NULL, NULL, NULL, NULL, NULL, 2007, 1050, -845, -80.476, 2008, 750, -562, -74.933, 1998, 750, -682, -90.933, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, -82.11399999999999, 'No', 0, '', '0000-00-00 00:00:00', '646546464', 'khkjhkj', '2015-07-26 07:00:00', 1, 1, '436128', '2015-07-14 11:07:31', '', '', '', NULL, NULL, NULL, NULL),
(24, '6465465', 'Hfgh', 'Ghdg', 'Null', 'Male', '2015-07-26 07:00:00', 'Hindu', '34564654', 'BC-C', NULL, 'fhgfh', 'gsdfs', '8977456321', 'gjh', 'lkjlk', 'kjhkhk', 'ghdgf', 1, 'fsdfd', '3132123', '8977437023', 'postesting2@gmail.com', '', 'Rousseau Inst. of Management Studies', '6545', NULL, 1, 'MBA', NULL, 2015, 1997, 0, 600, 523, 87.167, '', 1997, 1000, 896, 89.6, '', 0000, 0, 0, 0, '', 'hnfghf', 1998, 1000, 852, 85.2, '', 2008, 1050, 789, 75.143, 2007, 750, 541, 72.133, 2007, 750, 741, 98.8, 2005, 750, 632, 84.267, 2003, 750, 521, 69.467, 60.8, 456, 750, NULL, NULL, 1999, NULL, NULL, 76.76833333333333, 'No', 0, '', '0000-00-00 00:00:00', '0', 'N/A', '0000-00-00 00:00:00', 1, 1, '358746', '2015-07-14 11:12:47', '', '', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `va_tep_branch`
--

CREATE TABLE IF NOT EXISTS `va_tep_branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_name` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  UNIQUE KEY `category_id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `va_tep_branch`
--

INSERT INTO `va_tep_branch` (`id`, `branch_name`, `created_on`, `status`) VALUES
(2, 'IT', '2015-07-10 09:44:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `va_tep_colleges`
--

CREATE TABLE IF NOT EXISTS `va_tep_colleges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `college_name` text NOT NULL,
  `university` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL,
  UNIQUE KEY `category_id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `va_tep_colleges`
--

INSERT INTO `va_tep_colleges` (`id`, `college_name`, `university`, `created_on`, `status`) VALUES
(1, '34325355', 1, '2015-07-09 20:59:25', 3),
(2, 'CBIT', 1, '2015-07-10 09:42:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `va_tep_registers`
--

CREATE TABLE IF NOT EXISTS `va_tep_registers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `date_birth` timestamp NULL DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `affiliated_university` int(11) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `passing_year` year(4) DEFAULT NULL,
  `ssc_passing_year` year(4) DEFAULT NULL,
  `ssc_percentage` double DEFAULT NULL,
  `inter_passing_year` year(4) DEFAULT NULL,
  `inter_percentage` double DEFAULT NULL,
  `diploma_passing_year` double DEFAULT NULL,
  `diploma_percentage` double DEFAULT NULL,
  `sem1_percentage` double DEFAULT NULL,
  `sem1_passing_year` year(4) DEFAULT NULL,
  `sem2_passing_year` year(4) DEFAULT NULL,
  `sem2_percentage` double DEFAULT NULL,
  `sem3_passing_year` year(4) DEFAULT NULL,
  `sem3_percentage` double DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `dd_number` varchar(255) DEFAULT NULL,
  `drawn_bank` varchar(255) DEFAULT NULL,
  `drawn_date` timestamp NULL DEFAULT NULL,
  `aadhar_number` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `street` text,
  `village` varchar(255) DEFAULT NULL,
  `mandal` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `employed` varchar(20) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `password` varchar(255) DEFAULT NULL,
  `declaration` int(11) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `va_tep_registers`
--

INSERT INTO `va_tep_registers` (`id`, `first_name`, `last_name`, `photo`, `gender`, `date_birth`, `institution`, `affiliated_university`, `branch`, `passing_year`, `ssc_passing_year`, `ssc_percentage`, `inter_passing_year`, `inter_percentage`, `diploma_passing_year`, `diploma_percentage`, `sem1_percentage`, `sem1_passing_year`, `sem2_passing_year`, `sem2_percentage`, `sem3_passing_year`, `sem3_percentage`, `amount`, `dd_number`, `drawn_bank`, `drawn_date`, `aadhar_number`, `category`, `street`, `village`, `mandal`, `district`, `state`, `pincode`, `mobile`, `email`, `employed`, `status`, `password`, `declaration`, `created_on`) VALUES
(1, 'tirupati', 'rao', '1435930518-79.png', 'Male', '2015-06-18 07:00:00', 'ABHINAV HI-TECH COLLEGE OF ENGINEERING', 2, 'cse', 2015, 2015, 85, 2015, 80, NULL, NULL, 90.833, 2015, 2015, 75, 2015, 75, 3000, '555', 'SBI', '2015-07-22 07:00:00', '124314325545', 'OTHERS', 'fsgfd gfg', 'hyd', 'panjagutta', 'Hyderabad', 'telangana', '500005', '9492844021', 'edsi.tirupatirao@gmail.com', NULL, 1, '545276', 1, '2015-07-06 13:52:34'),
(2, 'tirupati', 'rao', '1436510982-38.png', 'Male', '2015-07-29 07:00:00', 'Anjamma Agi Reddy Engineering College for Women', 1, 'cse', 2015, 2012, 84.167, 2011, 80, NULL, NULL, 85.714, 2012, 0000, 0, NULL, NULL, 3000, 'hfg', 'SBI', '2015-07-29 07:00:00', '124314325545', 'BC-B', 'fsgfd gfg', 'hyd', 'panjagutta', 'Hyderabad', 'telangana', '500005', '9492844021', 'edsi.tirupatirao@gmail.com', NULL, 1, '772154', 1, '2015-07-10 06:52:49');

-- --------------------------------------------------------

--
-- Table structure for table `va_tep_renewal`
--

CREATE TABLE IF NOT EXISTS `va_tep_renewal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `tep_id` varchar(100) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `dd_number` varchar(255) DEFAULT NULL,
  `drawn_bank` varchar(255) DEFAULT NULL,
  `drawn_date` timestamp NULL DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `va_tep_renewal`
--

INSERT INTO `va_tep_renewal` (`id`, `first_name`, `last_name`, `institution`, `tep_id`, `amount`, `dd_number`, `drawn_bank`, `drawn_date`, `mobile`, `email`, `status`, `created_on`) VALUES
(1, 'tirupati', 'rao', 'mxit', '34324', 3000, 'hfg', 'SBI', '2015-07-22 07:00:00', '1234567890', 'edsi.tirupatirao@gmail.com', 1, '2015-07-13 06:00:40');

-- --------------------------------------------------------

--
-- Table structure for table `va_tep_status`
--

CREATE TABLE IF NOT EXISTS `va_tep_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `va_tep_status`
--

INSERT INTO `va_tep_status` (`id`, `status`, `created_on`, `name`) VALUES
(1, 1, '2015-07-11 19:44:56', 'tep');

-- --------------------------------------------------------

--
-- Table structure for table `va_test`
--

CREATE TABLE IF NOT EXISTS `va_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `test_file` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `va_test`
--

INSERT INTO `va_test` (`id`, `title`, `description`, `test_file`, `status`, `created_on`) VALUES
(2, 'Test Please ignore', '<p>testttttt</p>\n', '1436453092-92.pdf', 1, '2015-07-09 15:08:40'),
(4, 'Employability Questionnaire', '<p>Employability Questionnaire</p>\n', '1435726983-92.pdf', 1, '2015-07-09 14:58:43'),
(6, 'test', '<p>test</p>\n', '1436453118-67.pdf', 1, '2015-07-09 14:45:18'),
(7, 'test', '<p>testtttt</p>\n', '1436453674-34.pdf', 1, '2015-07-09 15:08:16'),
(8, 'please ignore test', '<p>test</p>\n', '1436514177-16.pdf', 1, '2015-07-10 07:42:57');

-- --------------------------------------------------------

--
-- Table structure for table `va_test_questions`
--

CREATE TABLE IF NOT EXISTS `va_test_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `skills` varchar(255) DEFAULT NULL,
  `sub_skills` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `question` text NOT NULL,
  `test_id` int(20) NOT NULL,
  `answer1` text NOT NULL,
  `answer2` text NOT NULL,
  `answer3` text NOT NULL,
  `answer4` text NOT NULL,
  `right_answer` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `va_test_questions`
--

INSERT INTO `va_test_questions` (`id`, `skills`, `sub_skills`, `category`, `question`, `test_id`, `answer1`, `answer2`, `answer3`, `answer4`, `right_answer`, `status`, `created_on`) VALUES
(2, 'Personal', 'Reasoning', 'Easy', '<p>Find the odd one out</p>\n', 4, 'Echo', 'Resonance', 'Tone', 'Ear', 4, 1, '2015-07-08 08:40:09'),
(3, 'Personal', 'Reasoning', 'Medium', '<p>If banana is apple, apple is grapes, grapes is mango, mango is nuts, nuts is guava, which of the following is a yellow fruit?&nbsp;</p>\n', 4, 'Mango', 'Guava', 'Apple', 'Nuts', 4, 1, '2015-07-08 09:23:03'),
(4, 'Personal', 'Reasoning', 'Hard', '<p>The words in the first column are written in a secret code in the second column. However, the secret writings in the second column are not in the same order. What is the code assigned for the letter D ?</p>\n\n <p>BRAIN 13529 ; &nbsp; &nbsp;&nbsp;<span >DRAIN 35293 ; &nbsp; &nbsp; &nbsp;RIVER 13754; &nbsp; &nbsp; DRIVE 83754</span></p>\n', 4, '3', '5', '9', '1', 4, 1, '2015-07-08 09:22:31'),
(5, 'Personal', 'Reasoning', 'Easy', '<p>Find the odd one out</p>\n', 4, 'December', 'February', 'March', 'July', 2, 1, '2015-07-08 09:21:43'),
(6, 'Personal', 'Reasoning', 'Medium', '<p>It has been established that &nbsp;</p>\n\n<p>P : Einstein was</p>\n\n<p>Q : although a great scientist</p>\n\n<p>R : weak in arithmetic</p>\n\n<p>S : right from his school days What is the right sequence</p>\n', 4, 'SRPQ', 'QPRS', 'QPSR', 'RQPS', 2, 1, '2015-07-08 09:21:24'),
(7, 'Personal', 'Reasoning', 'Hard', '<p>The temperature on Monday was lower than on Tuesday. The temperature on Wednesday was lower than on Tuesday. The temperature on Monday was higher than on Wednesday .If the first two statements are true, the third statement is</p>\n', 4, 'TRUE', 'FALSE', 'Uncertain', 'Not Applicable', 3, 1, '2015-07-08 09:20:49'),
(8, 'Personal', 'Communication', 'Easy', '<p>Which of these is good communication skill?</p>\n', 4, 'Talking Clearly', 'Shouting over the phone ', 'Looking bored', 'Monopolize The Conversation', 1, 1, '2015-07-08 09:20:00'),
(9, 'Personal', 'Communication', 'Medium', '<p>As she was on a very dangerous mission for the government she had to keep ......... about what she did for a living</p>\n', 4, 'Dad', 'Mum', 'Aunt', 'Mom', 2, 1, '2015-07-08 09:19:35'),
(10, 'Personal', 'Communication', 'Hard', '<p>Modern teamwork often brings together individuals from diverse groups who may not share common norms, values, or ......... but who do offer unique expertise, insights, and perspectives</p>\n', 4, 'Accommodation', 'Jargon', 'Vocabularies', 'Pleasantries', 3, 1, '2015-07-08 09:19:06'),
(11, 'Personal', 'Communication', 'Easy', '<p>What body language shows you are listening?</p>\n', 4, 'Putting your fingers in your ears', 'Nodding & making eye contact', 'Finish someone''s sentences', 'Asking questions', 2, 1, '2015-07-08 09:18:37'),
(12, 'Personal', 'Communication', 'Medium', '<p>One proven way to beat an enemy is find his <u><strong>Achilles heel</strong></u>. Find the suitable word indicating the meaning of the underlined pharse</p>\n', 4, 'Secret strategy', 'Amulet', 'Strong point', 'Weak spot', 4, 1, '2015-07-08 09:18:15'),
(13, 'Personal', 'Communication', 'Hard', '<p>E-mail, voice mail, audio conferencing and videoconferencing, and the myriad other technologies that enable individuals to communicate with each other not only increase the ways in which individuals can interact but also require a heightened sensitivity to the ......... of interpersonal interactions</p>\n', 4, 'Nuances', 'Shades', 'Naiveté', 'Repartee', 1, 1, '2015-07-08 09:17:24'),
(15, 'Personal', 'Presentation', 'Medium', '<p>Arrange the following sections of a presentation in the correct order:</p>\n\n<p>a. overview &nbsp; b. introduction &nbsp; &nbsp; c. start new section &nbsp; &nbsp; &nbsp; d. analyse a point &nbsp; &nbsp;e. give examples &nbsp; &nbsp; f. finish section &nbsp; &nbsp; g. paraphrase and clarify &nbsp; &nbsp; &nbsp;h. summarize and conclude &nbsp; &nbsp; &nbsp; i. inviting audience to ask questions/ discuss</p>\n', 4, 'a,d,b,c,e,f,h,g,i', 'a,b,d,c,e,f,h,g,i', 'a,b,c,d,e,f,g,h,i', 'b,a,c,d,e,f,h,g,i', 4, 1, '2015-07-08 09:16:53'),
(17, 'Personal', 'Presentation', 'Easy', '<p>During presentation keeping both hands in your pockets for long periods of time makes you look</p>\n', 4, 'Professional', 'Casual', 'Unprofessional', 'Nervous', 3, 1, '2015-07-08 09:15:39'),
(18, 'Personal', 'Presentation', 'Medium', '<p>How many do&#39;s are there in the below statements Look at the audience Put all your ideas onto the slide Over prepare Select Colors that Have High Contrast Keep It Short and Simple</p>\n', 4, '3', '4', '1', '2', 1, 1, '2015-07-08 09:15:11'),
(23, 'Personal', 'Time Management', 'Easy', '<p>Which of the following are advised for good time management?</p>\n', 4, 'Long term planning', 'Daily/weekly planning', 'Create “to do”list', 'All of the above', 4, 1, '2015-07-08 09:14:22'),
(27, 'Personal', 'Values', 'Medium', '<p>What should you do with old batteries?</p>\n', 4, 'Just throw them in the litter bin', 'Throw them in a special container that is for old batteries', 'Throw them anywhere outside, where no one can see them', 'Give it to kids to play', 2, 1, '2015-07-08 09:13:20'),
(28, 'Personal', 'Values', 'Hard', '<p>What is not a good value?</p>\n', 4, 'World Peace', 'Beauty in nature', 'Social Respect', 'Environment Pollution ', 4, 1, '2015-07-08 09:01:16'),
(32, 'Organisation', 'Interviewing Skills', 'Easy', '<p>When should you arrive at your interview?</p>\n', 4, 'Right on Time ', '10 Min early', '30 min early ', '5 min late', 2, 1, '2015-07-08 09:00:37'),
(34, 'Organisation', 'Interviewing Skills', 'Hard', '<p>You can have more control in every interview by</p>\n', 4, 'Knowing your strengths and specifically stating them ', 'Looking the interviewer in the eye', 'Asking a lot of counter questions', 'Smiling all through the interview process', 1, 1, '2015-07-08 08:59:57'),
(35, 'Organisation', 'Interviewing Skills', 'Easy', '<p>What will boost your confidence, and hone your interviewing skills?</p>\n', 4, 'Reading about the industry', 'A deep breath before you meet the interviewer', 'Practice Practice Practice ', 'Checking with others about their preparation for interview', 3, 1, '2015-07-08 08:59:27'),
(36, 'Organisation', 'Interviewing Skills', 'Medium', '<p>When asked the question &#39;What are weakness?</p>\n', 4, 'Spin one of your strengths as a weakness', 'Talk about one that isn''t too bad', 'Smile and divert the question', 'Pretend you did not hear ', 2, 1, '2015-07-08 08:58:42'),
(37, 'Organisation', 'Interviewing Skills', 'Hard', '<p>Which is the best answer to why do you want to work at this company?</p>\n', 4, 'I know your company is a leader and I would be a good fit because of my passion and experience ', 'I believe I can grow here and improve my skills', 'I’ve always wanted to work here!', 'I heard there were some open positions, so here I applied to get a job', 1, 1, '2015-07-08 08:57:53'),
(39, 'Organisation', 'Group Discussion', 'Medium', '<p>How many do&#39;s are there in the below statements</p>\n\n<p>Be polite at the same time be assertive</p>\n\n<p>Sit straight and show positive body language</p>\n\n<p>Be logical in your discussion</p>\n\n<p>Draw too much on personal experience or anecdote</p>\n', 4, '3', '4', '1', '2', 1, 1, '2015-07-08 08:56:24'),
(40, 'Organisation', 'Group Discussion', 'Hard', '<p>What is SPELT Approach for Group Discussion : socio-cultural impact, political impact, economic issues, legal and technological impact</p>\n', 4, 'socio-cultural impact,  political impact,', 'economic issues,', 'legal and technological impact', 'All of the above', 4, 1, '2015-07-08 08:50:49'),
(41, 'Organisation', 'Group Discussion', 'Easy', '<p>How many don&rsquo;t&#39;s are there in the below statements Keep eye contact while speaking Pointing fingers, shouting, abusing look at the moderators when you speak Allow others to speak Make sure to bring the discussion on track</p>\n', 4, '3', '4', '1', '2', 4, 1, '2015-07-08 08:50:21'),
(43, 'Organisation', 'Group Discussion', 'Hard', '<p>GD&rsquo;s can be on</p>\n', 4, 'Factual & Abstract Topics ', 'Controversial Topics ', 'Only case studies', 'All of the above ', 4, 1, '2015-07-08 08:49:33'),
(44, 'Organisation', 'Problem Solving', 'Easy', '<p>Following skills are not key to problem-solving</p>\n', 4, 'Analytical Ability', 'Initiative', 'Lateral Thinking', 'All of the above', 4, 1, '2015-07-08 08:48:55'),
(47, 'Organisation', 'Problem Solving', 'Easy', '<p>To solve a difficult problem, you must first</p>\n', 4, 'Write down the problem on a piece of paper.', 'Find someone to blame for the problem', 'Define the problem accurately', 'Deny the problem exists', 3, 1, '2015-07-08 08:47:52'),
(49, 'Organisation', 'Problem Solving', 'Hard', '<p>You are competing with for student leader post in your college.. The committee has asked all to finishtheir campaign activities one day prior. You realize that your opponents is talking to friends and others outside the campus and influencing them. What will you do?</p>\n', 4, 'Lodge a complaint to chairperson against the Opponent', 'Ask for withdrawal of your name', 'You treat all your friends for a party', 'rib with others that what is happening is wrong and pick a fight with your opponent ', 1, 1, '2015-07-08 08:47:15'),
(50, 'Organisation', 'Decision Making', 'Easy', '<p>Which do you follow to take decisions</p>\n\n<p>1) Gut &nbsp; &nbsp; 2) Data &nbsp; &nbsp;3) Information &nbsp; &nbsp;4) Knowledge</p>\n', 4, 'Only 1& 2', 'Only 3& 4', 'None. I will go with the flow', 'a&b', 4, 1, '2015-07-08 08:46:37'),
(51, 'Organisation', 'Decision Making', 'Medium', '<p>You saw a friend cheating on a test and the principal wants to know what you saw. How do you decide what to say?</p>\n', 4, 'I’d say I didn’t see anything', 'I let my friend that cheated convince me not to say anything', 'I block out what people tell me and go with my gut', 'Avoid the meeting ', 3, 1, '2015-07-08 08:45:53'),
(53, 'Organisation', 'Decision Making', 'Easy', '<p>Decision Making is a process that is performed by_________</p>\n', 4, 'Everybody in day to day life', 'Sometimes by specific people', 'only the professionals perform regularly', 'Only elders should do that', 1, 1, '2015-07-08 08:45:14'),
(55, 'Organisation', 'Decision Making', 'Hard', '<p>A local thug (bad element) has started illegal construction on your vacant plot. He has refused your request to vacate and threatened you of dire consequences in case you do not sell the property at a cheap price to him. You would</p>\n', 4, 'Sell the property at a cheap price to him', 'Negotiate with the goon to get a higher price.', 'Go to the police for necessary action', 'Ask for help from your neighbours', 3, 1, '2015-07-08 08:44:40'),
(56, 'Technical', 'Technical', 'Easy', '<p>The keyword used to transfer control from a function back to the calling function is</p>\n', 4, 'switch', 'goto', 'go back', 'return', 4, 1, '2015-07-08 08:44:03'),
(57, 'Technical', 'Technical', 'Medium', '<p>Point out the error in the program</p>\n\n<p>f(int a, int b) {</p>\n\n<p>int a;</p>\n\n<p>a = 20;</p>\n\n<p>return a;</p>\n\n<p>}</p>\n', 4, 'Missing parenthesis in return statement', 'The function should be defined as int f(int a, int b)', 'Redeclaration of a', 'None of above', 3, 1, '2015-07-08 08:43:35'),
(58, 'Technical', 'Technical', 'Hard', '<p>Every function must return a value</p>\n', 4, 'Yes', 'No ', 'Neither A Nor B', 'None of above', 2, 1, '2015-07-08 08:42:59'),
(59, 'Technical', 'Technical', 'Easy', '<p>Will the following functions work?</p>\n\n<p>int f1(int a, int b) {</p>\n\n<p>return ( f2(20) );</p>\n\n<p>}</p>\n\n<p>int f2(int a) {</p>\n\n<p>return (a*a);</p>\n\n<p>}</p>\n', 4, 'Yes', 'No ', 'Neither A Nor B', 'None of above', 2, 1, '2015-07-08 08:42:08'),
(60, 'Technical', 'Technical', 'Medium', '<p>The DBMS acts as an interface between what two components of an enterprise-class database system?</p>\n', 4, 'Database application and the database', 'Data and the database', 'The user and the database application', 'Database application and SQL', 1, 1, '2015-07-08 08:40:54'),
(61, 'Technical', 'Technical', 'Hard', '<p>Which of the following products implemented the CODASYL DBTG model?</p>\n', 4, 'IDMS', 'dBase-II', 'DB2', 'R:base', 1, 1, '2015-07-08 08:40:37'),
(63, 'Technical', 'Technical', 'Medium', '<p>tech?</p>\n', 8, 'knowledge', 'analytical skill', 'theory', 'logical', 4, 1, '2015-07-10 07:46:08'),
(64, 'Personal', 'Reasoning', 'Easy', '<p>fyhgdfgujt gfhgd yght hfyhdrfgtjhjt</p>\n', 7, 'PHP (recursive acronym for PHP: Hypertext Preprocessor) is a widely-used open source general-purpose scripting language that is especially suited for web development and can be embedded into HTML.', 'What distinguishes PHP from something like client-side JavaScript is that the code is executed on the server', 'What distinguishes PHP from something like client-side JavaScript is that the code is executed on the server', 'All of the above', 3, 1, '2015-07-10 07:53:54');

-- --------------------------------------------------------

--
-- Table structure for table `va_test_results`
--

CREATE TABLE IF NOT EXISTS `va_test_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) NOT NULL,
  `questions` int(11) NOT NULL,
  `marks` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=103 ;

--
-- Dumping data for table `va_test_results`
--

INSERT INTO `va_test_results` (`id`, `test_id`, `questions`, `marks`, `student_id`, `status`, `created_on`) VALUES
(1, 2, 1, 10, 3, 1, '2015-07-07 11:52:17'),
(2, 4, 10, 1, 4, 1, '2015-06-30 04:13:16'),
(3, 4, 10, 22, 1, 1, '2015-06-30 06:25:35'),
(4, 4, 10, 4, 1, 1, '2015-06-30 06:25:51'),
(5, 2, 1, 1, 1, 1, '2015-06-30 07:42:57'),
(6, 4, 60, 4, 4, 1, '2015-06-30 08:51:16'),
(7, 2, 1, 1, 4, 1, '2015-06-30 08:57:53'),
(8, 4, 60, 18, 4, 1, '2015-06-30 09:12:20'),
(9, 2, 1, 0, 4, 1, '2015-06-30 14:30:06'),
(10, 4, 25, 7, 1, 1, '2015-07-08 11:28:03'),
(11, 4, 25, 11, 1, 1, '2015-07-08 15:09:29'),
(12, 4, 25, 10, 1, 1, '2015-07-08 15:13:59'),
(13, 4, 25, 11, 1, 1, '2015-07-08 15:15:03'),
(14, 4, 25, 9, 1, 1, '2015-07-09 04:24:30'),
(15, 4, 25, 9, 1, 1, '2015-07-09 04:24:36'),
(16, 4, 25, 6, 1, 1, '2015-07-09 10:09:08'),
(17, 7, 1, 0, 1, 1, '2015-07-11 06:22:40'),
(18, 7, 1, 0, 1, 1, '2015-07-11 06:22:41'),
(19, 8, 1, 0, 1, 1, '2015-07-11 06:23:36'),
(20, 7, 1, 0, 1, 1, '2015-07-11 06:31:51'),
(21, 7, 1, 0, 1, 1, '2015-07-11 12:16:59'),
(22, 4, 25, 0, 1, 1, '2015-07-11 12:19:54'),
(23, 4, 25, 5, 1, 1, '2015-07-11 12:29:44'),
(24, 4, 25, 5, 1, 1, '2015-07-11 12:29:56'),
(25, 7, 1, 0, 1, 1, '2015-07-11 12:30:27'),
(26, 7, 1, 0, 1, 1, '2015-07-11 12:33:22'),
(27, 7, 1, 0, 1, 1, '2015-07-11 12:36:13'),
(28, 7, 1, 0, 1, 1, '2015-07-11 12:36:16'),
(29, 7, 1, 0, 1, 1, '2015-07-11 12:36:16'),
(30, 7, 1, 0, 1, 1, '2015-07-11 12:38:23'),
(31, 7, 1, 0, 1, 1, '2015-07-11 12:38:32'),
(32, 7, 1, 0, 1, 1, '2015-07-11 12:38:35'),
(33, 7, 1, 0, 1, 1, '2015-07-11 12:38:38'),
(34, 7, 1, 0, 1, 1, '2015-07-11 12:38:39'),
(35, 7, 1, 0, 1, 1, '2015-07-11 12:38:39'),
(36, 7, 1, 0, 1, 1, '2015-07-11 12:38:39'),
(37, 7, 1, 1, 1, 1, '2015-07-11 12:38:51'),
(38, 7, 1, 1, 1, 1, '2015-07-11 12:38:55'),
(39, 7, 1, 1, 1, 1, '2015-07-11 12:50:02'),
(40, 7, 1, 0, 1, 1, '2015-07-11 12:50:26'),
(41, 7, 1, 0, 1, 1, '2015-07-11 12:53:17'),
(42, 7, 1, 0, 1, 1, '2015-07-11 12:53:53'),
(43, 7, 1, 1, 1, 1, '2015-07-11 12:54:54'),
(44, 7, 1, 1, 1, 1, '2015-07-11 12:55:13'),
(45, 7, 1, 1, 1, 1, '2015-07-11 12:55:16'),
(46, 7, 1, 1, 1, 1, '2015-07-11 12:55:16'),
(47, 7, 1, 1, 1, 1, '2015-07-11 12:55:20'),
(48, 7, 1, 1, 1, 1, '2015-07-11 12:55:22'),
(49, 7, 1, 1, 1, 1, '2015-07-11 12:55:23'),
(50, 7, 1, 1, 1, 1, '2015-07-11 12:55:50'),
(51, 7, 1, 1, 1, 1, '2015-07-11 12:57:04'),
(52, 7, 1, 1, 1, 1, '2015-07-11 12:57:06'),
(53, 7, 1, 1, 1, 1, '2015-07-11 12:57:07'),
(54, 7, 1, 1, 1, 1, '2015-07-11 12:57:07'),
(55, 7, 1, 0, 1, 1, '2015-07-11 12:57:19'),
(56, 7, 1, 1, 1, 1, '2015-07-11 12:59:12'),
(57, 7, 1, 1, 1, 1, '2015-07-11 13:00:13'),
(58, 7, 1, 1, 1, 1, '2015-07-11 13:00:57'),
(59, 7, 1, 1, 1, 1, '2015-07-11 13:00:59'),
(60, 7, 1, 0, 1, 1, '2015-07-11 13:01:09'),
(61, 7, 1, 1, 1, 1, '2015-07-11 13:01:45'),
(62, 7, 1, 0, 1, 1, '2015-07-11 13:02:46'),
(63, 7, 1, 0, 1, 1, '2015-07-11 13:02:48'),
(64, 7, 1, 0, 1, 1, '2015-07-11 13:02:48'),
(65, 7, 1, 0, 1, 1, '2015-07-11 13:03:39'),
(66, 7, 1, 0, 1, 1, '2015-07-11 13:03:42'),
(67, 7, 1, 0, 1, 1, '2015-07-11 13:03:52'),
(68, 7, 1, 0, 1, 1, '2015-07-11 13:09:36'),
(69, 4, 25, 2, 1, 1, '2015-07-11 13:10:54'),
(70, 4, 25, 4, 1, 1, '2015-07-11 13:14:50'),
(71, 4, 25, 2, 1, 1, '2015-07-11 13:17:22'),
(72, 4, 25, 2, 1, 1, '2015-07-11 13:17:24'),
(73, 7, 1, 0, 1, 1, '2015-07-11 13:17:34'),
(74, 4, 25, 6, 1, 1, '2015-07-11 13:18:35'),
(75, 4, 25, 6, 1, 1, '2015-07-11 13:23:47'),
(76, 4, 25, 6, 1, 1, '2015-07-11 13:23:49'),
(77, 4, 25, 6, 1, 1, '2015-07-11 13:23:50'),
(78, 4, 25, 6, 1, 1, '2015-07-11 13:23:50'),
(79, 4, 25, 5, 1, 1, '2015-07-11 13:37:21'),
(80, 4, 25, 5, 1, 1, '2015-07-11 13:39:09'),
(81, 4, 25, 5, 1, 1, '2015-07-11 13:39:09'),
(82, 4, 25, 5, 1, 1, '2015-07-11 13:40:47'),
(83, 4, 25, 5, 1, 1, '2015-07-11 13:40:49'),
(84, 4, 25, 5, 1, 1, '2015-07-11 13:40:56'),
(85, 4, 25, 6, 1, 1, '2015-07-11 13:42:17'),
(86, 4, 25, 6, 1, 1, '2015-07-11 13:43:55'),
(87, 7, 1, 0, 1, 1, '2015-07-11 13:45:08'),
(88, 7, 1, 1, 1, 1, '2015-07-13 04:28:48'),
(89, 7, 1, 0, 1, 1, '2015-07-13 04:59:04'),
(90, 7, 1, 1, 1, 1, '2015-07-13 05:25:31'),
(91, 7, 1, 0, 1, 1, '2015-07-13 09:43:46'),
(92, 7, 1, 0, 1, 1, '2015-07-13 09:44:03'),
(93, 4, 25, 4, 1, 1, '2015-07-13 10:49:12'),
(94, 4, 25, 5, 1, 1, '2015-07-13 11:41:06'),
(95, 4, 25, 5, 1, 1, '2015-07-13 11:41:33'),
(96, 4, 25, 5, 1, 1, '2015-07-13 11:42:19'),
(97, 7, 1, 0, 1, 1, '2015-07-14 08:16:37'),
(98, 7, 1, 1, 1, 1, '2015-07-14 09:27:04'),
(99, 7, 1, 1, 1, 1, '2015-07-14 09:36:10'),
(100, 7, 1, 0, 41, 1, '2015-07-14 11:01:02'),
(101, 8, 1, 1, 41, 1, '2015-07-14 11:01:21'),
(102, 7, 1, 0, 1, 1, '2015-07-14 12:29:53');

-- --------------------------------------------------------

--
-- Table structure for table `va_testimonials`
--

CREATE TABLE IF NOT EXISTS `va_testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `va_testimonials`
--

INSERT INTO `va_testimonials` (`id`, `author`, `designation`, `content`, `image`, `status`, `created_on`) VALUES
(1, 'Karuna A', 'Collector and District Magistrate', 'One evening, I met CEO TASK with a request to work out a strategy for provision of jobs  for the rural youth of Warangal. He and his team   moved with amazing speed. Not only is  a concept paper ready but we are about  to roll out a finishing school for 100 jobless engineers with one of  the best trainers. All within a month .I''ve seen a commitment,passion and efficiency which will no doubt carry TASK and along with them  thousands of poor unemployed rural youth of Telangana  into a very bright future.', '1435127908-58.png', 1, '2015-07-14 11:53:55'),
(2, 'Mohit Jain', 'Sr Consultant PMU', 'My interaction with the team of "Telangana Academy for Skill and Knowledge (TASK)" is aimed at enhancing the skilling capacities in Electronic System & Design Manufacturing (ESDM) sector for improving the employability of the students/unemployed youth of Telangana. TASK has started well and the CEO of TASK , is himself taking so much interest in the implementation of the program, thereby leading by example. This has lead to the practices being followed by TASK being recognised as among the "Best Practices Reported by State Implementing Agency(SIAs)" in the recently concluded Expert Committee meeting of the Scheme. I wish TASK is able to complete its target and get an enhanced target next year.', '1436516634-8.png', 1, '2015-07-14 11:53:29');

-- --------------------------------------------------------

--
-- Table structure for table `va_user_details`
--

CREATE TABLE IF NOT EXISTS `va_user_details` (
  `userdetails_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `country_code` varchar(100) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`userdetails_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `user_id_2` (`user_id`),
  KEY `user_id_3` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='user details of volyty users' AUTO_INCREMENT=39 ;

--
-- Dumping data for table `va_user_details`
--

INSERT INTO `va_user_details` (`userdetails_id`, `user_id`, `first_name`, `last_name`, `birthday`, `gender`, `address`, `country_id`, `state_id`, `city_id`, `country_code`, `mobile`, `image`) VALUES
(1, 1, 'pos', 'testing', NULL, '', '', 0, 0, 0, '', '', ''),
(2, 53, NULL, 'Manjula', NULL, '', '', 0, 0, 0, '', '', ''),
(3, 54, NULL, 'Manjula', NULL, '', '', 0, 0, 0, '', '', ''),
(4, 55, NULL, 'Manjula', NULL, '', '', 0, 0, 0, '', '', ''),
(5, 56, NULL, 'dssadsf', NULL, '', '', 0, 0, 0, '', '', ''),
(6, 57, NULL, 'karunakarreddy', NULL, '', '', 0, 0, 0, '', '', ''),
(7, 58, NULL, 'karunakarreddy', NULL, '', '', 0, 0, 0, '', '', ''),
(8, 59, NULL, 'karunakarreddy', NULL, '', '', 0, 0, 0, '', '', ''),
(9, 60, NULL, 'karunakarreddy', NULL, '', '', 0, 0, 0, '', '', ''),
(10, 61, NULL, 'reddy', NULL, '', '', 0, 0, 0, '', '', ''),
(11, 62, NULL, 'reddy', NULL, '', '', 0, 0, 0, '', '', ''),
(12, 63, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(13, 64, NULL, NULL, NULL, '', '', 0, 0, 0, '', '', ''),
(14, 65, NULL, NULL, NULL, '', '', 0, 0, 0, '', '', ''),
(15, 66, NULL, NULL, NULL, '', '', 0, 0, 0, '', '', ''),
(16, 67, NULL, NULL, NULL, '', '', 0, 0, 0, '', '', ''),
(17, 68, NULL, 'ggg', NULL, '', '', 0, 0, 0, '', '', ''),
(18, 69, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(19, 70, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(20, 71, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(21, 72, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(22, 73, NULL, 'Susmita', NULL, '', '', 0, 0, 0, '', '', ''),
(23, 74, NULL, 'Manjula', NULL, '', '', 0, 0, 0, '', '', ''),
(24, 75, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(25, 76, NULL, 'manjula', NULL, '', '', 0, 0, 0, '', '', ''),
(26, 77, NULL, 'tirupati rao', NULL, '', '', 0, 0, 0, '', '', ''),
(27, 78, NULL, 'geeta', NULL, '', '', 0, 0, 0, '', '', ''),
(28, 79, NULL, 'sowjany', NULL, '', '', 0, 0, 0, '', '', ''),
(29, 80, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(30, 81, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(31, 82, NULL, 'Manjula', NULL, '', '', 0, 0, 0, '', '', ''),
(32, 83, NULL, 'manjula possibillion', NULL, '', '', 0, 0, 0, '', '', ''),
(33, 84, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(34, 85, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(35, 86, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(36, 87, NULL, 'Geeta Bose', NULL, '', '', 0, 0, 0, '', '', ''),
(37, 88, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(38, 89, NULL, 'Ramesh Rao', NULL, '', '', 0, 0, 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `va_user_users`
--

CREATE TABLE IF NOT EXISTS `va_user_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `login_time` timestamp NULL DEFAULT NULL,
  `registered_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) DEFAULT '0',
  `remember_me_token` varchar(200) NOT NULL,
  `provider` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 COMMENT='users table for volyty user module' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `va_user_users`
--

INSERT INTO `va_user_users` (`user_id`, `email`, `password`, `login_time`, `registered_on`, `status`, `remember_me_token`, `provider`) VALUES
(1, 'postesting9@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2015-02-01 20:34:24', '2015-01-29 13:07:28', 1, '', 'volyty');

-- --------------------------------------------------------

--
-- Table structure for table `va_users`
--

CREATE TABLE IF NOT EXISTS `va_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `center` varchar(222) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `outreach_id` int(11) DEFAULT NULL,
  `workshop` varchar(333) DEFAULT NULL,
  `participants` varchar(22) NOT NULL,
  `experiments` varchar(222) DEFAULT NULL,
  `profile_image` varchar(500) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_loggedin` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=90 ;

--
-- Dumping data for table `va_users`
--

INSERT INTO `va_users` (`id`, `name`, `email`, `mobile_number`, `password`, `user_type`, `center`, `status`, `outreach_id`, `workshop`, `participants`, `experiments`, `profile_image`, `created_on`, `last_loggedin`) VALUES
(63, 'karunakar', 'karunakar.reddy@possibilliontech.com', '7416542049', 'c33367701511b4f6020ec61ded352059', '1', NULL, 1, 0, NULL, '', NULL, 'outreach2.jpg', '2015-07-19 10:22:38', '2015-07-31 14:35:53'),
(82, 'Manjula', 'manjulasetty@gmail.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', '1', NULL, 1, NULL, NULL, '', NULL, '09.jpg', '2015-07-27 13:10:13', '2015-07-29 06:22:23'),
(83, 'manjula possibillion', 'manjula.gangisetty@possibilliontech.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', '2', 'Possibillion', 1, 82, '20', '20', '20', '20150629021251 (4).jpg', '2015-07-27 13:13:14', '2015-07-29 04:23:34'),
(87, 'Geeta Bose', 'geetabose@gmail.com', NULL, 'aa23dd48fa0e118c2abbac4fb459445c', '2', 'IIIT-Hyd', 1, 82, '50', '2500', '25000', NULL, '2015-07-28 13:44:47', NULL),
(73, 'Susmita', 'susmita.chatterjee@possibilliontech.com', NULL, 'a7b5aef16bfff466afe93f124eb19af0', '1', NULL, 1, 0, NULL, '', NULL, NULL, '2015-07-20 18:06:43', NULL),
(84, 'karunakar', 'karunakar.2093@gmail.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', '2', 'hyderabad', 1, 63, '25', '250', '11', '531549_252669044836256_236359487_n.jpg', '2015-07-27 20:29:27', '2015-07-30 13:23:14'),
(76, 'manjula', 'manjulasetty@gmail.com', NULL, '9270d2b541d8757adfd4229e84027666', '1', NULL, 3, 0, NULL, '', NULL, '', '2015-07-21 11:22:34', '2015-07-21 04:30:17'),
(86, 'karunakar', 'karana4567@gmail.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', '2', 'hyderabad', 1, 63, '25', '250', '11', 'outreach2.jpg', '2015-07-27 21:09:29', '2015-07-27 14:12:00'),
(78, 'geeta', 'geeta@vlabs.ac.in', NULL, 'dfa24abfb7d21f3502dec8d9d3036264', '1', NULL, 1, 0, NULL, '', NULL, 'Chrysanthemum.jpg', '2015-07-21 12:44:47', '2015-07-21 05:48:52'),
(79, 'sowjany', 'soujanya@vlabs.ac.in', NULL, '51577174c468611cb09672b287977e3b', '2', 'gnit', 1, 0, '2', '10', '45', NULL, '2015-07-21 12:50:40', NULL),
(88, 'karunakar', 'karana456@gmail.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', '2', 'hyderabad', 1, 63, '25', '250', '11', 'img.jpg', '2015-07-28 20:33:48', '2015-07-28 14:15:46'),
(89, 'Ramesh Rao', 'ramesh.rao@wittwarangal.com', NULL, '0c89a33749475e75b4cf6b3a92dcca55', '2', 'Warangal Institute of Information Technology, Warangal (WITT, Warangal))', 1, 82, '6', '1200', '3600', NULL, '2015-07-29 11:11:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `workshop`
--

CREATE TABLE IF NOT EXISTS `workshop` (
  `workshop_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `participate_institute` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `number_of_participants` int(11) NOT NULL,
  `no_of_sessions` int(11) NOT NULL,
  `durationofsessions` int(11) NOT NULL,
  `subject_of_session` int(11) NOT NULL,
  `labs_plan` varchar(255) NOT NULL,
  `other_details` longtext NOT NULL,
  `workshop_status` tinyint(4) NOT NULL DEFAULT '1',
  `uid` int(11) NOT NULL,
  `outreach_id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`workshop_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `workshop`
--

INSERT INTO `workshop` (`workshop_id`, `name`, `location`, `participate_institute`, `date`, `number_of_participants`, `no_of_sessions`, `durationofsessions`, `subject_of_session`, `labs_plan`, `other_details`, `workshop_status`, `uid`, `outreach_id`, `report_id`, `created_on`, `updated_on`) VALUES
(5, 'Vallapureddy', 'IIT Kanpur', 0, '2015-07-28 00:36:00', 23, 23, 1, 1, '  yes', 'Demo', 2, 80, 63, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'karunakar reddy', 'Hyderabad', 0, '2015-07-27 07:05:18', 12, 12, 12, 123, '12', '12', 1, 80, 63, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(1, 'demo1', 'Hyderabad', 0, '2015-07-27 07:05:14', 0, 0, 0, 0, '', '', 1, 80, 63, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Biochem', 'hyderabad', 0, '2015-07-27 07:04:55', 20, 20, 20, 0, '30', 'testing', 1, 83, 82, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'DEMOedit', 'Hyderabad', 0, '2015-07-30 06:34:08', 120, 12, 1, 125, 'yes', 'asfd', 1, 84, 63, 26, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'DEMO12', 'Hyderabad', 0, '2015-07-30 10:58:34', 120, 12, 1, 125, 'yes', 'asdfasf', 1, 84, 63, 31, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'DEMO1221', 'Hyderabad', 0, '2015-07-30 11:10:48', 120, 11, 11, 1, '1', '1', 1, 84, 63, 35, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'java workshop11', 'Hyderabad', 0, '2015-07-27 14:46:32', 120, 12, 1, 125, 'yes', 'DEMO', 1, 86, 63, 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'php workshop2', 'Hyderabad', 0, '2015-07-27 16:15:38', 120, 11, 1, 125, 'yes', 'asdf', 2, 86, 63, 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'DEMO', 'Hyderabad', 0, '0000-00-00 00:00:00', 120, 12, 1, 125, 'yes', '12', 1, 86, 63, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'testing', 'hyderabd', 0, '2015-07-28 01:35:55', 1221, 121, 12, 12, '12', '12', 2, 84, 63, 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `workshop_documents`
--

CREATE TABLE IF NOT EXISTS `workshop_documents` (
  `document_id` int(11) NOT NULL AUTO_INCREMENT,
  `document_name` varchar(255) NOT NULL,
  `document_path` longtext,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '1',
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`document_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `workshop_documents`
--

INSERT INTO `workshop_documents` (`document_id`, `document_name`, `document_path`, `created_on`, `status`, `updated_on`) VALUES
(1, 'Planning a workshop', '1437746606-66.docx', '2015-07-29 08:55:45', 1, '0000-00-00 00:00:00'),
(2, 'Conducting a workshop', '1438264433-92.doc', '2015-07-30 13:53:53', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `workshop_metirial_documents`
--

CREATE TABLE IF NOT EXISTS `workshop_metirial_documents` (
  `document_id` int(11) NOT NULL AUTO_INCREMENT,
  `document_name` varchar(255) NOT NULL,
  `document_path` longtext,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '1',
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`document_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `workshop_metirial_documents`
--

INSERT INTO `workshop_metirial_documents` (`document_id`, `document_name`, `document_path`, `created_on`, `status`, `updated_on`) VALUES
(1, 'doc123', '1437746606-66.docx', '2015-07-24 21:16:49', 3, '0000-00-00 00:00:00'),
(2, 'Attendance sheet', '1437747400-13.docx', '2015-07-29 08:58:22', 1, '0000-00-00 00:00:00'),
(3, 'Feedback form', '1438160401-33.docx', '2015-07-29 09:00:01', 1, '0000-00-00 00:00:00'),
(4, 'Flyers', '1438160417-43.docx', '2015-07-29 09:00:17', 1, '0000-00-00 00:00:00'),
(5, 'Banners', '1438160432-63.docx', '2015-07-29 09:00:32', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `workshop_report`
--

CREATE TABLE IF NOT EXISTS `workshop_report` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `workshop_id` int(11) NOT NULL,
  `uid` int(100) NOT NULL,
  `participate_attend` int(11) DEFAULT NULL,
  `participate_experiment` int(11) DEFAULT NULL,
  `upload_attend_sheet` longtext,
  `upload_experiment_sheet` longtext,
  `college_report` longtext,
  `workshop_photos` longtext,
  `report_status` tinyint(4) NOT NULL DEFAULT '0',
  `letter_head_status` tinyint(4) NOT NULL DEFAULT '0',
  `sealed_stamp_status` tinyint(4) NOT NULL DEFAULT '0',
  `pricipal_sign_status` tinyint(4) NOT NULL DEFAULT '0',
  `attend_status` tinyint(4) NOT NULL DEFAULT '0',
  `college_status` tinyint(4) NOT NULL DEFAULT '0',
  `workshop_status` tinyint(4) NOT NULL DEFAULT '0',
  `comments_positive` text,
  `comments_negative` text,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `workshop_report`
--

INSERT INTO `workshop_report` (`report_id`, `workshop_id`, `uid`, `participate_attend`, `participate_experiment`, `upload_attend_sheet`, `upload_experiment_sheet`, `college_report`, `workshop_photos`, `report_status`, `letter_head_status`, `sealed_stamp_status`, `pricipal_sign_status`, `attend_status`, `college_status`, `workshop_status`, `comments_positive`, `comments_negative`, `created_on`, `updated_on`, `status`) VALUES
(22, 7, 0, 250, 250, '531549_252669044836256_236359487_n.jpg', '', '531549_252669044836256_236359487_n.jpg', '531549_252669044836256_236359487_n.jpg', 0, 0, 0, 0, 0, 0, 0, '0', '0', '2015-07-27 13:43:01', '0000-00-00 00:00:00', NULL),
(21, 6, 0, 23, 23, 'Hydrangeas.jpg', '', 'Lighthouse.jpg', 'Chrysanthemum.jpg', 0, 0, 0, 0, 0, 0, 0, '23', '23', '2015-07-27 13:18:16', '0000-00-00 00:00:00', NULL),
(20, 6, 0, 12, 12, 'Jellyfish.jpg', '', 'Hydrangeas.jpg', 'Lighthouse.jpg', 0, 0, 0, 0, 0, 0, 0, '0', '0', '2015-07-27 13:16:44', '0000-00-00 00:00:00', NULL),
(19, 4, 0, 2344, 2342, '531549_252669044836256_236359487_n.jpg', '', '531549_252669044836256_236359487_n.jpg', '531549_252669044836256_236359487_n.jpg', 0, 0, 0, 0, 0, 0, 0, '0', '0', '2015-07-27 13:12:50', '0000-00-00 00:00:00', NULL),
(18, 5, 0, 2344, 2342, '531549_252669044836256_236359487_n.jpg', '', '531549_252669044836256_236359487_n.jpg', '531549_252669044836256_236359487_n.jpg', 1, 0, 0, 0, 0, 0, 0, '0', '0', '2015-07-27 12:20:40', '0000-00-00 00:00:00', NULL),
(23, 11, 0, 250, 2342, '4.png', '', '8.jpg', '7.jpg', 2, 0, 0, 0, 0, 0, 0, '0', '0', '2015-07-27 15:58:43', '0000-00-00 00:00:00', NULL),
(24, 12, 0, 2344, 2342, '6.jpg', '', '6.jpg', '6.jpg', 0, 0, 0, 0, 0, 0, 0, '0', '0', '2015-07-27 14:46:32', '0000-00-00 00:00:00', NULL),
(25, 14, 0, 23, 123, '404.png', '', '404.png', '404.png', 0, 0, 0, 0, 0, 0, 0, '0', '0', '2015-07-27 14:56:46', '0000-00-00 00:00:00', NULL),
(26, 7, 0, 12, 12334, 'Desert - Copy.jpg', '', 'Jellyfish.jpg', 'Koala.jpg', 0, 0, 0, 0, 0, 0, 0, '0', '0', '2015-07-30 06:40:07', '0000-00-00 00:00:00', 1),
(31, 8, 84, 12123, 12376555, 'Desert - Copy.jpg', 'Desert - Copy.jpg', 'Desert - Copy.jpg', 'Desert - Copy.jpg', 0, 0, 0, 0, 0, 0, 0, '127654545', '1376544', '2015-07-30 11:01:16', '0000-00-00 00:00:00', 0),
(30, 0, 84, 0, 0, '', '', '', '', 0, 0, 0, 0, 0, 0, 0, '0', '0', '2015-07-30 10:19:21', '0000-00-00 00:00:00', NULL),
(35, 9, 84, 24, 23445, 'Chrysanthemum.jpg', '', 'Chrysanthemum.jpg', 'Chrysanthemum - Copy.jpg', 0, 0, 0, 0, 0, 0, 0, 'gfhfg', 'dfvgbhfhgf', '2015-07-30 11:10:48', '0000-00-00 00:00:00', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;