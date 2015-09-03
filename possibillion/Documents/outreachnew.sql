-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2015 at 05:30 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `outreachnew`
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
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('834c98fff35249217f072ea2fbc91f66', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1441177804, 'a:2:{s:12:"user_details";a:16:{s:2:"id";s:2:"63";s:4:"name";s:9:"karunakar";s:5:"email";s:36:"karunakar.reddy@possibilliontech.com";s:13:"mobile_number";s:10:"7416542049";s:8:"password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:9:"user_type";s:1:"1";s:6:"center";N;s:6:"status";s:1:"1";s:11:"outreach_id";s:1:"0";s:8:"workshop";N;s:12:"participants";s:0:"";s:11:"experiments";N;s:13:"profile_image";s:10:"Desert.jpg";s:14:"createworkshop";N;s:10:"created_on";s:19:"2015-07-19 15:52:38";s:13:"last_loggedin";s:19:"2015-09-02 07:09:28";}s:13:"flash:new:msg";s:23:"Passwords do not match!";}'),
('8c6f1d379558d2be4c04add0ee0a48c8', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1441183855, ''),
('8ce6a4645f2d46fbb59e414a713d92a3', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1441183856, ''),
('a2a7e7f1203075b21975e00b85ca1ee6', '::1', 'Mozilla/5.0 (Windows NT 6.1; rv:40.0) Gecko/20100101 Firefox/40.0', 1441193504, 'a:2:{s:9:"user_data";s:0:"";s:12:"adminDetails";a:5:{s:13:"permission_id";s:1:"1";s:8:"admin_id";s:1:"1";s:10:"first_name";s:8:"outreach";s:9:"last_name";s:5:"Admin";s:5:"image";s:18:"14376608481103.jpg";}}'),
('ca1e75489dee06f348dd6ce3d8031905', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1441204714, ''),
('ec7f322e5b69fb5276e82f604051058c', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36', 1441183854, 'a:2:{s:9:"user_data";s:0:"";s:12:"user_details";a:16:{s:2:"id";s:2:"63";s:4:"name";s:9:"karunakar";s:5:"email";s:36:"karunakar.reddy@possibilliontech.com";s:13:"mobile_number";s:10:"7416542049";s:8:"password";s:32:"e10adc3949ba59abbe56e057f20f883e";s:9:"user_type";s:1:"1";s:6:"center";N;s:6:"status";s:1:"1";s:11:"outreach_id";s:1:"0";s:8:"workshop";N;s:12:"participants";s:0:"";s:11:"experiments";N;s:13:"profile_image";s:10:"Desert.jpg";s:14:"createworkshop";N;s:10:"created_on";s:19:"2015-07-19 15:52:38";s:13:"last_loggedin";s:19:"2015-09-02 08:05:26";}}');

-- --------------------------------------------------------

--
-- Table structure for table `nodalcoordinatortraining`
--

CREATE TABLE IF NOT EXISTS `nodalcoordinatortraining` (
  `id` int(12) NOT NULL,
  `participants_attended` int(12) NOT NULL,
  `experiments_conducted` int(12) NOT NULL,
  `attendance_sheet` text NOT NULL,
  `training_photos` text NOT NULL,
  `positive` text NOT NULL,
  `negative` text NOT NULL,
  `outreachid` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nodalcoordinatortraining`
--

INSERT INTO `nodalcoordinatortraining` (`id`, `participants_attended`, `experiments_conducted`, `attendance_sheet`, `training_photos`, `positive`, `negative`, `outreachid`, `created_on`) VALUES
(3, 12, 123, '1440761016VirtualLabs_Feedbackform.pdf', '1440761016Chrysanthemum.jpg', 'dsaf', 'asdf', 63, '2015-08-28 11:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `presentation_reporting_documents`
--

CREATE TABLE IF NOT EXISTS `presentation_reporting_documents` (
  `document_id` int(11) NOT NULL,
  `document_name` varchar(255) NOT NULL,
  `document_path` longtext,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '1',
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `presentation_reporting_documents`
--

INSERT INTO `presentation_reporting_documents` (`document_id`, `document_name`, `document_path`, `created_on`, `status`, `updated_on`) VALUES
(1, 'Virtual Labs Introduction presentation', NULL, '2015-08-20 05:27:31', 1, '0000-00-00 00:00:00'),
(2, 'College Report format', '1437747400-13.docx', '2015-07-29 09:01:52', 1, '0000-00-00 00:00:00'),
(3, 'Virtual Labs Introduction presentation', '1437748246-60.docx', '2015-07-29 09:02:07', 3, '0000-00-00 00:00:00'),
(4, 'sgdjsdjsgewiuryuwieyriuweyrsdhfgsdhfwurtuywqetrsfdhsgfhgdfqwtyyutweqrxzbvbxzvcvuwtqtutwetyytrytysdhsghsgqmnbvxdnvjhwegrjwhgrqeryetyeqrtertdhghsghfgtyqytrtzbvnbcvbnvetwutrwtmnbvcxzasdfghjklpoiuytrewqazqazwsxedcrfvtgbyhnujmik,ol.p;/['']', '1440153723-88.docx', '2015-08-21 14:43:58', 3, '0000-00-00 00:00:00'),
(5, 'jsgdhhfjsfgshgdjfgsdjgfsdhgfdshgfjhgdhfjhdsghsdgshgjdhgjhsdgfhgjdgsjdghfjdgfjhsgjdfgjsdgfjgjddhghsdgfgjhg', '1440154809-74.docx', '2015-08-21 15:51:39', 3, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(225) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `va_admin_users`
--

CREATE TABLE IF NOT EXISTS `va_admin_users` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_login` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_logout` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `edited_by` int(11) NOT NULL,
  `edited_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `image` text NOT NULL,
  `first_name` varchar(225) NOT NULL,
  `last_name` varchar(225) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='volyty admin users with credentials ';

--
-- Dumping data for table `va_admin_users`
--

INSERT INTO `va_admin_users` (`admin_id`, `admin_name`, `password`, `permission_id`, `created_on`, `last_login`, `last_logout`, `edited_by`, `edited_on`, `status`, `image`, `first_name`, `last_name`) VALUES
(1, 'admin@outreach.com', 'e10adc3949ba59abbe56e057f20f883e', 1, '2015-09-02 14:04:43', '2015-01-29 18:30:00', '2015-01-28 22:43:16', 1, '2015-04-29 02:04:23', 1, '14412025251844.jpg', 'outreachaasdf', 'Adminaasdf');

-- --------------------------------------------------------

--
-- Table structure for table `va_cms`
--

CREATE TABLE IF NOT EXISTS `va_cms` (
  `cms_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_tags` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'Status 1-Active 2-Inactive 3-Delete',
  `added_on` timestamp NULL DEFAULT NULL,
  `edited_on` timestamp NULL DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `edited_by` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `va_cms`
--

INSERT INTO `va_cms` (`cms_id`, `title`, `description`, `seo_title`, `seo_tags`, `status`, `added_on`, `edited_on`, `added_by`, `edited_by`) VALUES
(1, 'About outreach', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\n\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\n\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>', 'About', 'seo', 1, '2015-06-22 12:24:38', '2015-08-21 16:35:25', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `va_contacts`
--

CREATE TABLE IF NOT EXISTS `va_contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `va_contacts`
--

INSERT INTO `va_contacts` (`id`, `name`, `email`, `comment`, `status`, `created_on`) VALUES
(1, 'tirupati', 'thirupathirao57@gmail.com', 'This is testing message.', 3, '2015-06-23 14:15:54'),
(2, 'karunakar', 'karunakar.reddy@possibilliontech.com', 'asdf', 0, '2015-07-18 12:44:00'),
(3, 'demo', 'karana456@gmail.com', 'demo', 3, '2015-07-20 13:25:47'),
(4, 'ddfddf', 'fdfdf@gmail.com', 'fvfddfdfvdvd', 3, '2015-07-23 21:13:27'),
(5, 'karunakar reddy', 'karunkar.reddy@possibilliontech.com', 'DEMo', 0, '2015-08-19 07:54:23'),
(6, 'karunakar reddy', 'karana456@gmail.com', 'DEMO', 3, '2015-08-21 16:37:57');

-- --------------------------------------------------------

--
-- Table structure for table `va_logs`
--

CREATE TABLE IF NOT EXISTS `va_logs` (
  `id` int(11) NOT NULL,
  `subject` text NOT NULL,
  `type` varchar(100) NOT NULL,
  `msg_type` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=570 DEFAULT CHARSET=latin1;

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
(540, ' has been added. ', 'Staff', 'success', '2015-07-27 06:10:13'),
(541, ' has been added. ', 'Staff', 'success', '2015-08-19 10:05:31'),
(542, ' has been added. ', 'Staff', 'success', '2015-08-20 06:41:58'),
(543, ' has been added. ', 'Staff', 'success', '2015-08-20 06:45:07'),
(544, ' has been deleted. ', 'Coordinator', 'success', '2015-08-20 06:45:22'),
(545, ' has been deleted. ', 'Coordinator', 'success', '2015-08-20 06:45:29'),
(546, ' has been added. ', 'Staff', 'success', '2015-08-20 06:46:28'),
(547, ' has been added. ', 'Staff', 'success', '2015-08-20 06:52:09'),
(548, ' has been added. ', 'Staff', 'success', '2015-08-20 12:16:44'),
(549, ' Password has been updated. ', 'Admin', 'success', '2015-08-20 12:28:30');
INSERT INTO `va_logs` (`id`, `subject`, `type`, `msg_type`, `created`) VALUES
(550, ' Password has been updated. ', 'Admin', 'success', '2015-08-20 12:29:15'),
(551, ' has been added. ', 'Staff', 'success', '2015-08-21 05:08:21'),
(552, ' has been deleted. ', 'Coordinator', 'success', '2015-08-21 05:50:35'),
(553, ' has been added. ', 'Staff', 'success', '2015-08-21 05:57:45'),
(554, ' has been updated. ', 'Staff', 'success', '2015-08-21 06:49:28'),
(555, ' has been updated. ', 'Staff', 'success', '2015-08-21 06:49:54'),
(556, ' has been updated. ', 'Staff', 'success', '2015-08-21 06:54:32'),
(557, ' has been updated. ', 'Staff', 'success', '2015-08-21 07:01:44'),
(558, ' has been deleted. ', 'Coordinator', 'success', '2015-08-21 07:02:21'),
(559, 'Contact has been deleted. ', 'category', 'success', '2015-08-21 12:37:57'),
(560, ' has been added. ', 'Staff', 'success', '2015-08-21 15:12:58'),
(561, ' has been added. ', 'Staff', 'success', '2015-08-21 15:14:32'),
(562, ' has been added. ', 'Staff', 'success', '2015-08-21 15:23:09'),
(563, ' has been added. ', 'Staff', 'success', '2015-08-21 15:23:16'),
(564, ' has been added. ', 'Staff', 'success', '2015-08-21 15:24:18'),
(565, ' has been added. ', 'Staff', 'success', '2015-08-21 15:28:04'),
(566, ' has been added. ', 'Staff', 'success', '2015-09-02 12:28:18'),
(567, ' has been added. ', 'Staff', 'success', '2015-09-02 12:47:40'),
(568, 'Outreacha account has been updated. ', 'Profile', 'success', '2015-09-02 14:02:05'),
(569, ' has been added. ', 'Staff', 'success', '2015-09-02 14:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `va_users`
--

CREATE TABLE IF NOT EXISTS `va_users` (
  `id` int(11) NOT NULL,
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
  `createworkshop` int(11) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_loggedin` datetime DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `va_users`
--

INSERT INTO `va_users` (`id`, `name`, `email`, `mobile_number`, `password`, `user_type`, `center`, `status`, `outreach_id`, `workshop`, `participants`, `experiments`, `profile_image`, `createworkshop`, `created_on`, `last_loggedin`) VALUES
(63, 'karunakar', 'karunakar.reddy@possibilliontech.com', '7416542049', 'c33367701511b4f6020ec61ded352059', '1', NULL, 1, 0, NULL, '', NULL, 'blog_461426052475.jpg', NULL, '2015-07-19 10:22:38', '2015-09-02 14:37:06'),
(82, 'Manjula', 'manjulasetty@gmail.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', '1', NULL, 1, NULL, NULL, '', NULL, '09.jpg', NULL, '2015-07-27 13:10:13', '2015-08-21 08:25:57'),
(83, 'manjula possibillion', 'manjula.gangisetty@possibilliontech.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', '2', 'Possibillion', 1, 82, '20', '20', '20', '20150629021251 (4).jpg', 1, '2015-07-27 13:13:14', '2015-08-21 08:26:41'),
(87, 'Geeta Bose', 'geetabose@gmail.com', NULL, 'aa23dd48fa0e118c2abbac4fb459445c', '2', 'IIIT-Hyd', 1, 82, '50', '2500', '25000', NULL, 0, '2015-07-28 13:44:47', NULL),
(73, 'Susmita', 'susmita.chatterjee@possibilliontech.com', NULL, 'a7b5aef16bfff466afe93f124eb19af0', '1', NULL, 1, 0, NULL, '', NULL, NULL, NULL, '2015-07-20 18:06:43', NULL),
(84, 'karunakar', 'karunakar.2093@gmail.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', '2', 'hyderabad', 1, 63, '25', '250', '11', '531549_252669044836256_236359487_n.jpg', 2, '2015-07-27 20:29:27', '2015-09-02 14:37:49'),
(76, 'manjula', 'manjulasetty@gmail.com', NULL, '9270d2b541d8757adfd4229e84027666', '1', NULL, 3, 0, NULL, '', NULL, '', NULL, '2015-07-21 11:22:34', '2015-07-21 04:30:17'),
(78, 'geeta', 'geeta@vlabs.ac.in', NULL, 'dfa24abfb7d21f3502dec8d9d3036264', '1', NULL, 1, 0, NULL, '', NULL, 'Chrysanthemum.jpg', NULL, '2015-07-21 12:44:47', '2015-07-21 05:48:52'),
(79, 'sowjany', 'soujanya@vlabs.ac.in', NULL, '51577174c468611cb09672b287977e3b', '2', 'gnit', 1, 0, '2', '10', '45', NULL, NULL, '2015-07-21 12:50:40', NULL),
(89, 'Ramesh Rao', 'ramesh.rao@wittwarangal.com', NULL, '0c89a33749475e75b4cf6b3a92dcca55', '2', 'Warangal Institute of Information Technology, Warangal (WITT, Warangal))', 1, 82, '6', '1200', '3600', NULL, 0, '2015-07-29 11:11:01', NULL),
(125, 'karunakar', '#$%%%karunakar.2093@gmail.comasdfsfsd', NULL, 'ee3d87ac3bf5cdc48b29d148b65a67bf', '2', 'IIIT Hyderabad', 1, 63, '250', '250', '250', NULL, NULL, '2015-09-02 00:09:31', NULL),
(128, 'karunakar', 'karana456@gmail.com', NULL, 'e10adc3949ba59abbe56e057f20f883e', '1', NULL, 1, NULL, NULL, '', NULL, NULL, NULL, '2015-09-02 07:17:39', NULL),
(129, 'karunakar', 'karunaksar.2093@gmail.comss', NULL, '3cdaeb4f898cda5359dcfcfd1ea68765', '1', NULL, 1, NULL, NULL, '', NULL, NULL, NULL, '2015-09-02 08:43:30', NULL),
(93, 'Rajiv', 'geeta@vlabs.ac.in', NULL, '202213c7967428c07184c8dc5b72f71d', '2', 'TASK', 1, 63, '6', '600', '3500', NULL, NULL, '2015-08-20 07:52:01', NULL),
(98, 'testing', 'galladeepthi@gmail.com', NULL, '5582ec253ec3336c60dc15c8f269b779', '1', NULL, 1, NULL, NULL, '', NULL, NULL, NULL, '2015-08-20 16:16:43', NULL),
(115, 'Admind', 'satya.pampana@possibilliontech.com', NULL, '212df70cdf283128be6b1674eecdbb16', '1', NULL, 1, NULL, NULL, '', NULL, NULL, NULL, '2015-08-21 19:28:03', NULL),
(116, 'Raghav G', 'geeta@kern-comm.com', NULL, '31b213a5227fb97419c0eed9af94d4a2', '2', 'CET-HYD', 1, 63, '20', '2000', '20000', NULL, NULL, '2015-08-24 11:08:11', NULL),
(126, 'karunakar', 'karuanakar.2093@gmail.com', NULL, '5411d2f9bf924bb9ad8daac18da4345e', '2', 'IIIT Hyderabad', 1, 63, '250', '250', '250', NULL, NULL, '2015-09-02 00:44:58', NULL),
(127, 'karunakar', 'karunakar.reddy@possibilliontech.com', NULL, '9c919f209864c36383554ebfb46679d2', '1', NULL, 1, NULL, NULL, '', NULL, NULL, NULL, '2015-09-02 06:58:17', NULL),
(130, 'karunakar', 'karunakasadr.reddy@possibilliontech.com', NULL, 'f7e03c0a7aa6c7cc9cf9f6def1a268b1', '2', 'IIIT Hyderabad', 1, 63, '250', '250', '250', NULL, NULL, '2015-09-02 09:07:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `va_user_details`
--

CREATE TABLE IF NOT EXISTS `va_user_details` (
  `userdetails_id` int(11) NOT NULL,
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
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1 COMMENT='user details of volyty users';

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
(38, 89, NULL, 'Ramesh Rao', NULL, '', '', 0, 0, 0, '', '', ''),
(39, 90, NULL, 'srikanth', NULL, '', '', 0, 0, 0, '', '', ''),
(40, 91, NULL, 'testone', NULL, '', '', 0, 0, 0, '', '', ''),
(41, 92, NULL, 'test-coordinator', NULL, '', '', 0, 0, 0, '', '', ''),
(42, 93, NULL, 'Rajiv', NULL, '', '', 0, 0, 0, '', '', ''),
(43, 94, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(44, 95, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(45, 96, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(46, 97, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(47, 98, NULL, 'testing', NULL, '', '', 0, 0, 0, '', '', ''),
(48, 99, NULL, 'sdfgdhfdshjdghjfjsdhgewhcbxfcueryfsdvbngfevfsbndvfeurgsbdvceurcfbndvuefcbncbjdsfgyerdfdnxjcbguyhfgvc', NULL, '', '', 0, 0, 0, '', '', ''),
(49, 100, NULL, '', NULL, '', '', 0, 0, 0, '', '', ''),
(50, 101, NULL, 'sambasiva', NULL, '', '', 0, 0, 0, '', '', ''),
(51, 102, NULL, 'sambasiva', NULL, '', '', 0, 0, 0, '', '', ''),
(52, 103, NULL, 'maggidi', NULL, '', '', 0, 0, 0, '', '', ''),
(53, 104, NULL, 'pampana', NULL, '', '', 0, 0, 0, '', '', ''),
(54, 105, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(55, 106, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(56, 107, NULL, 'sambasiva', NULL, '', '', 0, 0, 0, '', '', ''),
(57, 108, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(58, 109, NULL, 'sambasiva', NULL, '', '', 0, 0, 0, '', '', ''),
(59, 110, NULL, 'satya', NULL, '', '', 0, 0, 0, '', '', ''),
(60, 111, NULL, 'Admind', NULL, '', '', 0, 0, 0, '', '', ''),
(61, 112, NULL, 'satya', NULL, '', '', 0, 0, 0, '', '', ''),
(62, 113, NULL, 'satya', NULL, '', '', 0, 0, 0, '', '', ''),
(63, 114, NULL, 'satya', NULL, '', '', 0, 0, 0, '', '', ''),
(64, 115, NULL, 'Admind', NULL, '', '', 0, 0, 0, '', '', ''),
(65, 116, NULL, 'Raghav G', NULL, '', '', 0, 0, 0, '', '', ''),
(66, 117, NULL, 'Karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(67, 118, NULL, 'Karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(68, 119, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(69, 120, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(70, 121, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(71, 122, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(72, 123, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(73, 124, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(74, 125, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(75, 126, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(76, 127, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(77, 128, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(78, 129, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', ''),
(79, 130, NULL, 'karunakar', NULL, '', '', 0, 0, 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `workshop`
--

CREATE TABLE IF NOT EXISTS `workshop` (
  `workshop_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `participate_institute` mediumtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `number_of_participants` int(11) NOT NULL,
  `no_of_sessions` varchar(250) NOT NULL,
  `durationofsessions` varchar(250) NOT NULL,
  `subject_of_session` varchar(250) NOT NULL,
  `labs_plan` varchar(255) NOT NULL,
  `other_details` longtext NOT NULL,
  `workshop_status` tinyint(4) NOT NULL DEFAULT '1',
  `uid` int(11) NOT NULL,
  `outreach_id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `latitude` varchar(222) DEFAULT NULL,
  `longitude` varchar(222) DEFAULT NULL,
  `address` text NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `faculty` varchar(255) DEFAULT NULL,
  `reason` text
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workshop`
--

INSERT INTO `workshop` (`workshop_id`, `name`, `location`, `participate_institute`, `date`, `number_of_participants`, `no_of_sessions`, `durationofsessions`, `subject_of_session`, `labs_plan`, `other_details`, `workshop_status`, `uid`, `outreach_id`, `report_id`, `latitude`, `longitude`, `address`, `created_on`, `updated_on`, `faculty`, `reason`) VALUES
(20, 'Ramesh Reddy', 'iiit pune', 'Jyothishmathi Institute of Technological Science,Sri Indu College of Engineering & Technology-An Autonomous Institution under UGC, NBA Accredited, NAAC\n', '2015-08-06 19:30:37', 250, '25', '1', '0', 'may be', 'TEST', 1, 83, 82, 38, '18.5840728', '73.73721269999999', ', P-14, Hinjewadi Rajiv Gandhi Infotech Park, Phase-1, Hinjawadi, Pune, Maharashtra 411057', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(19, 'Ramesh Reddy', 'GNIT Warangal', 'Jyothishmathi Institute of Technological Science,Sri Indu College of Engineering & Technology-An Autonomous Institution under UGC, NBA Accredited, NAAC\n', '2015-08-21 08:28:45', 250, '15', '1', '0', 'may be', 'test', 2, 83, 82, 39, '17.9884017', '79.53010029999996', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(18, 'Manjula', 'iit kanpur', 'Jyothishmathi Institute of Technological Science,Sri Indu College of Engineering & Technology-An Autonomous Institution under UGC, NBA Accredited, NAAC\n', '2015-08-07 10:09:36', 250, '25', '1', '0', 'may be', 'TEST', 2, 83, 82, 37, '26.5123388', '80.23289999999997', ',Address:\nIndian Institute of Technology\nKalyanpur\nKanpur-208016\nINDIA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(17, 'Manjula ', 'iit kanpur', 'Jyothishmathi Institute of Technological Science,Sri Indu College of Engineering & Technology-An Autonomous Institution under UGC, NBA Accredited, NAAC\n', '2015-08-06 19:31:07', 250, '15', '1', '0', 'may be', 'no', 2, 83, 82, 36, '26.5123388', '80.23289999999997', 'Address:\nIndian Institute of Technology\nKalyanpur\nKanpur-208016\nINDIA', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(21, 'Ramesh Reddy', 'jntu hyderabad', 'Jyothishmathi Institute of Technological Science,Sri Indu College of Engineering & Technology-An Autonomous Institution under UGC, NBA Accredited, NAAC', '2015-08-27 10:18:37', 250, '25', '1', '1', 'may be', 'DEMO', 3, 83, 82, 0, '17.496402', '78.39412990000005', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(40, 'karuanakar reddy', 'IIIT Hyderabad', 'SRI INDU', '2015-08-28 15:05:24', 123, '3', '1.5 hour/session', 'Computer science   & engineering', 'Data Structures', 'DEMO', 2, 84, 63, 58, '17.4447918', '78.34830979999992', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(41, 'karuanakar reddy', 'IIIT Hyderabad', 'SRI INDU', '2015-09-05 04:00:00', 122, '3', '1.5 hour/session', 'Computer science   & engineering', 'Data Structures', 'DEMO', 1, 84, 63, 0, '17.4447918', '78.34830979999992', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(33, 'Ramesh Reddy', 'IIIT Hyderabad', 'BVRIT Warangal, Sri Krishna College of Technological Science', '2015-08-26 11:58:50', 150, '3', '1.5 hour/session', 'Computer science   & engineering', 'Data Structures', 'yes', 1, 84, 63, 56, '17.4447918', '78.34830979999992', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(39, 'karuanakar reddy', 'IIIT Hyderabad', 'DEMO', '2015-08-28 15:03:34', 12, '3', '1.5 hour/session', 'Computer science   & engineering', 'Data Structures', 'DEMO', 3, 84, 63, 0, '17.4447918', '78.34830979999992', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'DEMO'),
(38, 'karuanakar reddy', 'IIIT Hyderabad', 'SRI INDU', '2015-08-28 15:09:07', 122, '3', '1.5 hour/session', 'Computer science   & engineering', 'Data Structures', 'DEMO', 2, 84, 63, 59, '17.4447918', '78.34830979999992', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(37, 'karuanakar reddy', 'III Hyderabad', 'SRI INDU', '2015-08-28 12:50:17', 300, '3', '1.5 hour/session', 'Computer science   & engineering', 'Data Structures', 'DEMO', 2, 118, 63, 57, '17.4968554', '78.3591609', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL),
(42, 'sadf', 'asdf', 'asdf', '2015-09-23 18:30:00', 11, '11', '11', '11', '1', '1', 1, 84, 63, 0, '28.4957166', '-81.53498630000001', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `workshop_documents`
--

CREATE TABLE IF NOT EXISTS `workshop_documents` (
  `document_id` int(11) NOT NULL,
  `document_name` varchar(255) NOT NULL,
  `document_path` longtext,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '1',
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workshop_documents`
--

INSERT INTO `workshop_documents` (`document_id`, `document_name`, `document_path`, `created_on`, `status`, `updated_on`) VALUES
(1, 'Eligibility-SystemsConfiguration-Infrastructure ', '1440048369-12.doc', '2015-08-20 05:26:09', 1, '0000-00-00 00:00:00'),
(2, 'Pre-requisites-for-workshop', '1440048323-17.pdf', '2015-08-20 05:25:23', 1, '0000-00-00 00:00:00'),
(3, 'Sample-workshop-schedule', '1440048263-45.doc', '2015-08-24 10:03:54', 3, '0000-00-00 00:00:00'),
(4, 'SJDFKDFHJDSFHREUIUTYUERYTHFGJHJJuygshdghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhsssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvtttttttttt', '1440141588-83.pdf', '2015-08-21 11:21:34', 3, '0000-00-00 00:00:00'),
(5, 'testinghfshydfusxhgfduytfd', '1440143149-31.docx', '2015-08-21 13:14:48', 3, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `workshop_metirial_documents`
--

CREATE TABLE IF NOT EXISTS `workshop_metirial_documents` (
  `document_id` int(11) NOT NULL,
  `document_name` varchar(255) NOT NULL,
  `document_path` longtext,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '1',
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `workshop_metirial_documents`
--

INSERT INTO `workshop_metirial_documents` (`document_id`, `document_name`, `document_path`, `created_on`, `status`, `updated_on`) VALUES
(1, 'doc123', '1437746606-66.docx', '2015-07-24 21:16:49', 3, '0000-00-00 00:00:00'),
(2, 'Attendance sheet', '1440045279-57.pdf', '2015-08-20 04:34:39', 1, '0000-00-00 00:00:00'),
(3, 'Feedback form', '1440045014-23.pdf', '2015-08-20 04:30:14', 1, '0000-00-00 00:00:00'),
(4, 'Flyers', '1438160417-43.docx', '2015-08-20 08:27:45', 3, '0000-00-00 00:00:00'),
(5, 'Banners', '1438160432-63.docx', '2015-08-20 08:26:34', 3, '0000-00-00 00:00:00'),
(6, 'Virtual Labs Handout', '1440044856-79.pdf', '2015-08-20 04:27:37', 1, '0000-00-00 00:00:00'),
(7, 'College Report', '1440045672-41.docx', '2015-08-20 04:41:12', 1, '0000-00-00 00:00:00'),
(8, 'Eligibility-SystemsConfiguration-Infrastructure ', '1440046234-32.doc', '2015-08-20 09:26:46', 3, '0000-00-00 00:00:00'),
(9, 'Pre-requisites-for-workshop', '1440046285-75.pdf', '2015-08-20 09:26:34', 3, '0000-00-00 00:00:00'),
(10, 'Sample-workshop-schedule', '1440046507-91.doc', '2015-08-20 09:26:29', 3, '0000-00-00 00:00:00'),
(11, 'jshghgfsdhgfhdgfdhhfyrteyhsxgjcfgyertfdhgfuweyaqdwegueredhgdhgvdhsghdghgfdhfgdyrfehdgfjhmbnxbvcvxhjgfjhdfgdhgfdhshghsghjgksdhsgfdshhsdfghsdhgdfhsgsdfdsjhdhdghjghjdsgfghdfsggdhjdsggfhghghghsdsfsdfsdfdsghjjhghjgjghjdsipuouoiuerersdghftgyerfhsgfyurthgsdhrtfe', '1440148788-48.docx', '2015-08-21 13:23:38', 3, '0000-00-00 00:00:00'),
(12, '&lt;html&gt;sdghfd&lt;/html&gt;', '1440149212-31.docx', '2015-08-21 14:31:27', 3, '0000-00-00 00:00:00'),
(13, 'Sample-workshop-schedule', '1440396265-52.doc', '2015-08-24 06:04:25', 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `workshop_report`
--

CREATE TABLE IF NOT EXISTS `workshop_report` (
  `report_id` int(11) NOT NULL,
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
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

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
(59, 38, 84, 20, 20, 'VirtualLabs_Feedbackform.pdf', NULL, 'VirtualLabs_Feedbackform.pdf', 'Chrysanthemum.jpg', 0, 0, 0, 0, 0, 0, 0, 'DEMO', 'DEMO', '2015-08-28 15:08:28', '0000-00-00 00:00:00', 1),
(57, 37, 118, 12, 12, 'VirtualLabs_Feedbackform.pdf', NULL, 'VirtualLabs_Feedbackform.pdf', 'Chrysanthemum.jpg', 0, 0, 0, 0, 0, 0, 0, 'asdf', 'sadf', '2015-08-28 12:10:14', '0000-00-00 00:00:00', 1),
(36, 17, 83, 250, 14, '4.png', '4.png', '404.png', '7.jpg', 0, 0, 0, 0, 0, 0, 0, 'demo', 'demo', '2015-08-07 11:45:33', '0000-00-00 00:00:00', 1),
(37, 18, 83, 250, 14, '6.jpg', 'Chrysanthemum.jpg', 'Chrysanthemum.jpg', 'Chrysanthemum - Copy.jpg', 0, 0, 0, 0, 0, 0, 0, '', '', '2015-08-07 11:42:25', '0000-00-00 00:00:00', 1),
(38, 20, 83, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, '', '', '2015-08-06 14:39:19', '0000-00-00 00:00:00', 1),
(39, 19, 83, 0, 0, '1437747400-13.docx', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, '', '', '2015-08-07 04:48:28', '0000-00-00 00:00:00', 1),
(40, 19, 83, 0, 0, '1437747400-13.docx', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, '', '', '2015-08-07 04:48:29', '0000-00-00 00:00:00', 0),
(41, 21, 83, 0, 0, '1437747400-13.docx', NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, '', '', '2015-08-07 05:03:53', '0000-00-00 00:00:00', 0),
(42, 22, 84, 12, 23, 'Structure of the IGNOU-MBA program.pdf', NULL, 'The effect of simulation games.pdf', 'The effect of simulation games.pdf', 0, 0, 0, 0, 0, 0, 0, 'yes', 'no', '2015-08-17 06:31:56', '0000-00-00 00:00:00', 1),
(54, 0, 84, 122, 122, 'Outreach Schema.pdf', NULL, 'Outreach Schema.pdf', '04Gr Flr-Pooja Room 1.jpg', 0, 0, 0, 0, 0, 0, 0, 'DEMO', 'demo', '2015-08-25 07:02:31', '0000-00-00 00:00:00', 1),
(58, 40, 84, 12, 12, 'VirtualLabs_Feedbackform.pdf', NULL, 'VirtualLabs_Feedbackform.pdf', 'Chrysanthemum.jpg', 0, 0, 0, 0, 0, 0, 0, 'DEMO', 'DEMIO', '2015-08-28 15:02:54', '0000-00-00 00:00:00', 1),
(56, 33, 84, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, '', '', '2015-08-26 11:58:50', '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `nodalcoordinatortraining`
--
ALTER TABLE `nodalcoordinatortraining`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `presentation_reporting_documents`
--
ALTER TABLE `presentation_reporting_documents`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `va_admin_users`
--
ALTER TABLE `va_admin_users`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `permission_id` (`permission_id`);

--
-- Indexes for table `va_cms`
--
ALTER TABLE `va_cms`
  ADD PRIMARY KEY (`cms_id`);

--
-- Indexes for table `va_contacts`
--
ALTER TABLE `va_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `va_logs`
--
ALTER TABLE `va_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `va_users`
--
ALTER TABLE `va_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `va_user_details`
--
ALTER TABLE `va_user_details`
  ADD PRIMARY KEY (`userdetails_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`),
  ADD KEY `user_id_3` (`user_id`);

--
-- Indexes for table `workshop`
--
ALTER TABLE `workshop`
  ADD PRIMARY KEY (`workshop_id`);

--
-- Indexes for table `workshop_documents`
--
ALTER TABLE `workshop_documents`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `workshop_metirial_documents`
--
ALTER TABLE `workshop_metirial_documents`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `workshop_report`
--
ALTER TABLE `workshop_report`
  ADD PRIMARY KEY (`report_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nodalcoordinatortraining`
--
ALTER TABLE `nodalcoordinatortraining`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `presentation_reporting_documents`
--
ALTER TABLE `presentation_reporting_documents`
  MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `va_admin_users`
--
ALTER TABLE `va_admin_users`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `va_cms`
--
ALTER TABLE `va_cms`
  MODIFY `cms_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `va_contacts`
--
ALTER TABLE `va_contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `va_logs`
--
ALTER TABLE `va_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=570;
--
-- AUTO_INCREMENT for table `va_users`
--
ALTER TABLE `va_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `va_user_details`
--
ALTER TABLE `va_user_details`
  MODIFY `userdetails_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `workshop`
--
ALTER TABLE `workshop`
  MODIFY `workshop_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `workshop_documents`
--
ALTER TABLE `workshop_documents`
  MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `workshop_metirial_documents`
--
ALTER TABLE `workshop_metirial_documents`
  MODIFY `document_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `workshop_report`
--
ALTER TABLE `workshop_report`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
