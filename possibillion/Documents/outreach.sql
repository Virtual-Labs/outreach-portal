-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 07, 2015 at 05:51 PM
-- Server version: 5.5.44-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

-- --------------------------------------------------------

--
-- Table structure for table `nodalcoordinatortraining`
--

CREATE TABLE IF NOT EXISTS `nodalcoordinatortraining` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `participants_attended` int(12) NOT NULL,
  `experiments_conducted` int(12) NOT NULL,
  `attendance_sheet` text NOT NULL,
  `training_photos` text NOT NULL,
  `positive` text NOT NULL,
  `negative` text NOT NULL,
  `outreachid` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `outreachid_idx` (`outreachid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

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
  `created_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`, `created_on`, `updated_on`) VALUES
(1, 'outreach', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'nodal', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

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
  `image` text NOT NULL,
  `first_name` varchar(225) NOT NULL,
  `last_name` varchar(225) NOT NULL,
  PRIMARY KEY (`admin_id`),
  KEY `permission_id` (`permission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` text NOT NULL,
  `type` varchar(100) NOT NULL,
  `msg_type` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=570 ;

--
-- Dumping data for table `va_logs`
--

INSERT INTO `va_logs` (`id`, `subject`, `type`, `msg_type`, `created`) VALUES
(1, ' has been added. ', 'Staff', 'success', '2015-09-02 14:13:30');

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
  `user_type` int(11) DEFAULT NULL,
  `center` varchar(222) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `outreach_id` int(11) DEFAULT NULL,
  `workshop` varchar(333) DEFAULT NULL,
  `participants` varchar(22) NOT NULL,
  `experiments` varchar(222) DEFAULT NULL,
  `profile_image` varchar(500) DEFAULT NULL,
  `createworkshop` int(11) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_loggedin` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_type` (`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `workshop`
--

CREATE TABLE IF NOT EXISTS `workshop` (
  `workshop_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `reason` text,
  PRIMARY KEY (`workshop_id`),
  KEY `uid_idx` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

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
  `document_id` int(11) NOT NULL AUTO_INCREMENT,
  `document_name` varchar(255) NOT NULL,
  `document_path` longtext,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT '1',
  `updated_on` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`document_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

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
  PRIMARY KEY (`report_id`),
  KEY `workshop_id_idx` (`workshop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nodalcoordinatortraining`
--
ALTER TABLE `nodalcoordinatortraining`
  ADD CONSTRAINT `outreachid` FOREIGN KEY (`outreachid`) REFERENCES `va_users` (`id`);

--
-- Constraints for table `va_users`
--
ALTER TABLE `va_users`
  ADD CONSTRAINT `user_type` FOREIGN KEY (`user_type`) REFERENCES `role` (`role_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `va_user_details`
--
ALTER TABLE `va_user_details`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `va_users` (`id`);

--
-- Constraints for table `workshop`
--
ALTER TABLE `workshop`
  ADD CONSTRAINT `uid` FOREIGN KEY (`uid`) REFERENCES `va_users` (`id`);

--
-- Constraints for table `workshop_report`
--
ALTER TABLE `workshop_report`
  ADD CONSTRAINT `workshop_id` FOREIGN KEY (`workshop_id`) REFERENCES `workshop` (`workshop_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
