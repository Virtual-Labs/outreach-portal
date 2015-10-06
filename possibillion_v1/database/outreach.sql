CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_active` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `created`, `last_active`, `status`) VALUES
(1, 'Admin', 'admin@outreach.com', 'c33367701511b4f6020ec61ded352059', '2015-09-28 01:40:58', '0000-00-00 00:00:00', 1);

CREATE TABLE IF NOT EXISTS `nodalcentres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `location` text NOT NULL,
  `nodal_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `coordinator_idx` (`nodal_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

CREATE TABLE IF NOT EXISTS `nodalcoordinators` (
  `nodal_id` int(11) NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`nodal_id`),
  UNIQUE KEY `email` (`email`),
  KEY `created_by_idx` (`outreach_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

CREATE TABLE IF NOT EXISTS `nodalcoordinatorstraining` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `location` text NOT NULL,
  `duration` int(11) NOT NULL,
  `description` text NOT NULL,
  `invitees` text NOT NULL,
  `outreach_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_by_idx` (`outreach_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

CREATE TABLE IF NOT EXISTS `outreachcoordinators` (
  `outreach_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(256) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_active` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`outreach_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;


CREATE TABLE IF NOT EXISTS `workshopdocuments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `path` varchar(256) NOT NULL,
  `category` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;



CREATE TABLE IF NOT EXISTS `workshopphotos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` text NOT NULL,
  `workshop_report_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;


CREATE TABLE IF NOT EXISTS `workshopreports` (
  `workshop_report_id` int(11) NOT NULL AUTO_INCREMENT,
  `workshop_id` int(11) NOT NULL,
  `attendance_sheet` varchar(256) NOT NULL,
  `college_report` varchar(256) NOT NULL,
  `participants_attended` int(11) NOT NULL,
  `expriments_conducted` int(11) NOT NULL,
  `positive_comments` text NOT NULL,
  `negative_comments` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`workshop_report_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;


CREATE TABLE IF NOT EXISTS `workshops` (
  `workshop_id` int(11) NOT NULL AUTO_INCREMENT,
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
  `reason` text NOT NULL,
  PRIMARY KEY (`workshop_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

ALTER TABLE `nodalcentres`
  ADD CONSTRAINT `coordinator` FOREIGN KEY (`nodal_id`) REFERENCES `nodalcoordinators` (`nodal_id`);

ALTER TABLE `nodalcoordinators`
  ADD CONSTRAINT `created_by` FOREIGN KEY (`outreach_id`) REFERENCES `outreachcoordinators` (`outreach_id`);

