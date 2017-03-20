-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2013 at 05:17 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mtarpsf_ug`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` text,
  `password` text,
  `registerdate` datetime DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `ip` text,
  `admin` float DEFAULT '0',
  `warn_style` int(1) NOT NULL DEFAULT '1',
  `hiddenadmin` tinyint(3) unsigned DEFAULT '0',
  `adminduty` tinyint(3) unsigned DEFAULT '0',
  `adminjail` tinyint(3) unsigned DEFAULT '0',
  `adminjail_time` int(11) DEFAULT NULL,
  `adminjail_by` text,
  `adminjail_reason` text,
  `banned` tinyint(3) unsigned DEFAULT '0',
  `banned_by` text,
  `banned_reason` text,
  `muted` tinyint(3) unsigned DEFAULT '0',
  `globalooc` tinyint(3) unsigned DEFAULT '1',
  `friendsmessage` varchar(255) NOT NULL DEFAULT 'Hi!',
  `adminjail_permanent` tinyint(3) unsigned DEFAULT '0',
  `adminreports` int(11) DEFAULT '0',
  `warns` tinyint(3) unsigned DEFAULT '0',
  `chatbubbles` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `adminnote` text,
  `appstate` tinyint(1) DEFAULT '0',
  `appdatetime` datetime DEFAULT NULL,
  `appreason` longtext,
  `email` text,
  `help` int(1) NOT NULL DEFAULT '1',
  `adblocked` int(1) NOT NULL DEFAULT '0',
  `newsblocked` int(1) DEFAULT '0',
  `mtaserial` text,
  `d_addiction` text,
  `loginhash` varchar(64) DEFAULT NULL,
  `credits` int(11) NOT NULL DEFAULT '0',
  `transfers` int(11) DEFAULT '0',
  `monitored` varchar(255) NOT NULL DEFAULT 'New Player',
  `autopark` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=96110 ;

-- --------------------------------------------------------

--
-- Table structure for table `adminhistory`
--

CREATE TABLE IF NOT EXISTS `adminhistory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(10) unsigned NOT NULL,
  `user_char` text NOT NULL,
  `admin` int(10) unsigned NOT NULL,
  `admin_char` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `action` tinyint(3) unsigned NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `reason` text NOT NULL,
  `hiddenadmin` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2326 ;

-- --------------------------------------------------------

--
-- Table structure for table `apb`
--

CREATE TABLE IF NOT EXISTS `apb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text NOT NULL,
  `doneby` int(11) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=154 ;

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE IF NOT EXISTS `applications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountID` int(11) NOT NULL,
  `dateposted` datetime NOT NULL,
  `content` text NOT NULL,
  `datereviewed` datetime DEFAULT NULL,
  `adminID` int(11) DEFAULT NULL,
  `adminNote` text,
  `adminAction` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `atms`
--

CREATE TABLE IF NOT EXISTS `atms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` decimal(10,6) DEFAULT '0.000000',
  `y` decimal(10,6) DEFAULT '0.000000',
  `z` decimal(10,6) DEFAULT '0.000000',
  `rotation` decimal(10,6) DEFAULT '0.000000',
  `dimension` int(5) DEFAULT '0',
  `interior` int(5) DEFAULT '0',
  `deposit` tinyint(3) unsigned DEFAULT '0',
  `limit` int(10) unsigned DEFAULT '5000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=432 ;

-- --------------------------------------------------------

--
-- Table structure for table `bannedips`
--

CREATE TABLE IF NOT EXISTS `bannedips` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(16) NOT NULL DEFAULT '0.0.0.0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `bannedserials`
--

CREATE TABLE IF NOT EXISTS `bannedserials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `serial` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table `blocked`
--

CREATE TABLE IF NOT EXISTS `blocked` (
  `userid` int(10) DEFAULT NULL,
  `blockedid` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `characters`
--

CREATE TABLE IF NOT EXISTS `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `charactername` text,
  `account` int(11) DEFAULT '0',
  `x` float DEFAULT '1770.02',
  `y` float DEFAULT '-1860.91',
  `z` float DEFAULT '13.5782',
  `rotation` float DEFAULT '359.388',
  `interior_id` int(5) DEFAULT '0',
  `dimension_id` int(5) DEFAULT '0',
  `health` float DEFAULT '100',
  `armor` float DEFAULT '0',
  `skin` int(3) DEFAULT '264',
  `money` bigint(20) DEFAULT '250',
  `gender` int(1) DEFAULT '0',
  `cuffed` int(11) DEFAULT '0',
  `duty` int(3) DEFAULT '0',
  `fightstyle` int(2) DEFAULT '4',
  `pdjail` int(1) DEFAULT '0',
  `pdjail_time` int(11) DEFAULT '0',
  `cked` int(1) DEFAULT '0',
  `lastarea` text,
  `age` int(3) DEFAULT '18',
  `faction_id` int(11) DEFAULT '-1',
  `faction_rank` int(2) DEFAULT '1',
  `faction_perks` text,
  `skincolor` int(1) DEFAULT '0',
  `weight` int(3) DEFAULT '180',
  `height` int(3) DEFAULT '180',
  `description` text,
  `deaths` int(11) DEFAULT '0',
  `faction_leader` int(1) DEFAULT '0',
  `fingerprint` text,
  `casualskin` int(3) DEFAULT '0',
  `bankmoney` bigint(20) DEFAULT '15000',
  `car_license` int(1) DEFAULT '0',
  `gun_license` int(1) DEFAULT '0',
  `tag` int(3) DEFAULT '1',
  `hoursplayed` int(11) DEFAULT '0',
  `pdjail_station` int(1) DEFAULT '0',
  `timeinserver` int(2) DEFAULT '0',
  `restrainedobj` int(11) DEFAULT '0',
  `restrainedby` int(11) DEFAULT '0',
  `dutyskin` int(3) DEFAULT '-1',
  `fish` int(10) unsigned NOT NULL DEFAULT '0',
  `truckingruns` int(10) unsigned NOT NULL DEFAULT '0',
  `truckingwage` int(10) unsigned NOT NULL DEFAULT '0',
  `blindfold` tinyint(4) NOT NULL DEFAULT '0',
  `lang1` tinyint(2) DEFAULT '1',
  `lang1skill` tinyint(3) DEFAULT '100',
  `lang2` tinyint(2) DEFAULT '0',
  `lang2skill` tinyint(3) DEFAULT '0',
  `lang3` tinyint(2) DEFAULT '0',
  `lang3skill` tinyint(3) DEFAULT '0',
  `currlang` tinyint(1) DEFAULT '1',
  `lastlogin` datetime DEFAULT NULL,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `election_candidate` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `election_canvote` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `election_votedfor` int(10) unsigned NOT NULL DEFAULT '0',
  `marriedto` int(10) unsigned NOT NULL DEFAULT '0',
  `photos` int(10) unsigned NOT NULL DEFAULT '0',
  `maxvehicles` int(4) unsigned NOT NULL DEFAULT '5',
  `ck_info` text,
  `alcohollevel` float NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `recovery` int(1) DEFAULT '0',
  `recoverytime` bigint(20) DEFAULT NULL,
  `walkingstyle` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16136 ;

-- --------------------------------------------------------

--
-- Table structure for table `computers`
--

CREATE TABLE IF NOT EXISTS `computers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `posX` float(10,5) NOT NULL,
  `posY` float(10,5) NOT NULL,
  `posZ` float(10,5) NOT NULL,
  `rotX` float(10,5) NOT NULL,
  `rotY` float(10,5) NOT NULL,
  `rotZ` float(10,5) NOT NULL,
  `interior` int(8) NOT NULL,
  `dimension` int(8) NOT NULL,
  `model` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `dancers`
--

CREATE TABLE IF NOT EXISTS `dancers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `rotation` float NOT NULL,
  `skin` smallint(5) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `interior` int(10) unsigned NOT NULL,
  `dimension` int(10) unsigned NOT NULL,
  `offset` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=104 ;

-- --------------------------------------------------------

--
-- Table structure for table `donators`
--

CREATE TABLE IF NOT EXISTS `donators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountID` int(11) NOT NULL,
  `charID` int(11) NOT NULL DEFAULT '-1',
  `perkID` int(4) NOT NULL,
  `perkValue` varchar(10) NOT NULL DEFAULT '1',
  `expirationDate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=286 ;

-- --------------------------------------------------------

--
-- Table structure for table `don_prices`
--

CREATE TABLE IF NOT EXISTS `don_prices` (
  `ProductID` int(10) DEFAULT NULL,
  `ProductPrice` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `don_transactions`
--

CREATE TABLE IF NOT EXISTS `don_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` varchar(64) NOT NULL,
  `donator_email` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `original_request` text,
  `dt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `handled` smallint(1) DEFAULT '0',
  `username` varchar(50) NOT NULL,
  `realamount` double NOT NULL DEFAULT '0',
  `item_number` int(11) NOT NULL DEFAULT '0',
  `validated` smallint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=107 ;

-- --------------------------------------------------------

--
-- Table structure for table `don_transaction_failed`
--

CREATE TABLE IF NOT EXISTS `don_transaction_failed` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `output` text NOT NULL,
  `ip` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

-- --------------------------------------------------------

--
-- Table structure for table `elevators`
--

CREATE TABLE IF NOT EXISTS `elevators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` decimal(10,6) DEFAULT '0.000000',
  `y` decimal(10,6) DEFAULT '0.000000',
  `z` decimal(10,6) DEFAULT '0.000000',
  `tpx` decimal(10,6) DEFAULT '0.000000',
  `tpy` decimal(10,6) DEFAULT '0.000000',
  `tpz` decimal(10,6) DEFAULT '0.000000',
  `dimensionwithin` int(5) DEFAULT '0',
  `interiorwithin` int(5) DEFAULT '0',
  `dimension` int(5) DEFAULT '0',
  `interior` int(5) DEFAULT '0',
  `car` tinyint(3) unsigned DEFAULT '0',
  `disabled` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=884 ;

-- --------------------------------------------------------

--
-- Table structure for table `emailaccounts`
--

CREATE TABLE IF NOT EXISTS `emailaccounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` text,
  `password` text,
  `creator` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=448 ;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE IF NOT EXISTS `emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL,
  `sender` text,
  `receiver` text,
  `subject` text,
  `message` text,
  `inbox` int(1) NOT NULL DEFAULT '0',
  `outbox` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

-- --------------------------------------------------------

--
-- Table structure for table `factions`
--

CREATE TABLE IF NOT EXISTS `factions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `bankbalance` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `rank_1` text,
  `rank_2` text,
  `rank_3` text,
  `rank_4` text,
  `rank_5` text,
  `rank_6` text,
  `rank_7` text,
  `rank_8` text,
  `rank_9` text,
  `rank_10` text,
  `rank_11` text,
  `rank_12` text,
  `rank_13` text,
  `rank_14` text,
  `rank_15` text,
  `rank_16` text,
  `rank_17` text,
  `rank_18` text,
  `rank_19` text,
  `rank_20` text,
  `wage_1` int(11) DEFAULT '100',
  `wage_2` int(11) DEFAULT '100',
  `wage_3` int(11) DEFAULT '100',
  `wage_4` int(11) DEFAULT '100',
  `wage_5` int(11) DEFAULT '100',
  `wage_6` int(11) DEFAULT '100',
  `wage_7` int(11) DEFAULT '100',
  `wage_8` int(11) DEFAULT '100',
  `wage_9` int(11) DEFAULT '100',
  `wage_10` int(11) DEFAULT '100',
  `wage_11` int(11) DEFAULT '100',
  `wage_12` int(11) DEFAULT '100',
  `wage_13` int(11) DEFAULT '100',
  `wage_14` int(11) DEFAULT '100',
  `wage_15` int(11) DEFAULT '100',
  `wage_16` int(11) DEFAULT '100',
  `wage_17` int(11) DEFAULT '100',
  `wage_18` int(11) DEFAULT '100',
  `wage_19` int(11) DEFAULT '100',
  `wage_20` int(11) DEFAULT '100',
  `motd` text,
  `note` text,
  `fnote` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=59 ;

-- --------------------------------------------------------

--
-- Table structure for table `forgotdetails`
--

CREATE TABLE IF NOT EXISTS `forgotdetails` (
  `uniquekey` varchar(32) NOT NULL,
  `account` int(11) DEFAULT '0',
  `keytimestamp` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE IF NOT EXISTS `friends` (
  `id` int(10) unsigned NOT NULL,
  `friend` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`,`friend`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fuelpeds`
--

CREATE TABLE IF NOT EXISTS `fuelpeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `posX` float NOT NULL,
  `posY` float NOT NULL,
  `posZ` float NOT NULL,
  `rotZ` float NOT NULL,
  `skin` int(3) NOT NULL,
  `priceratio` int(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

-- --------------------------------------------------------

--
-- Table structure for table `fuelstations`
--

CREATE TABLE IF NOT EXISTS `fuelstations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` decimal(10,6) DEFAULT '0.000000',
  `y` decimal(10,6) DEFAULT '0.000000',
  `z` decimal(10,6) DEFAULT '0.000000',
  `interior` int(5) DEFAULT '0',
  `dimension` int(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `gates`
--

CREATE TABLE IF NOT EXISTS `gates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `objectID` int(11) NOT NULL,
  `startX` float NOT NULL,
  `startY` float NOT NULL,
  `startZ` float NOT NULL,
  `startRX` float NOT NULL,
  `startRY` float NOT NULL,
  `startRZ` float NOT NULL,
  `endX` float NOT NULL,
  `endY` float NOT NULL,
  `endZ` float NOT NULL,
  `endRX` float NOT NULL,
  `endRY` float NOT NULL,
  `endRZ` float NOT NULL,
  `gateType` tinyint(3) unsigned NOT NULL,
  `autocloseTime` int(4) NOT NULL,
  `movementTime` int(4) NOT NULL,
  `objectDimension` int(11) NOT NULL,
  `objectInterior` int(11) NOT NULL,
  `gateSecurityParameters` text,
  `creator` varchar(50) NOT NULL DEFAULT '',
  `createdDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `adminNote` varchar(300) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=292 ;

-- --------------------------------------------------------

--
-- Table structure for table `informationicons`
--

CREATE TABLE IF NOT EXISTS `informationicons` (
  `id` int(10) DEFAULT NULL,
  `createdby` text,
  `x` float DEFAULT NULL,
  `y` float DEFAULT NULL,
  `z` float DEFAULT NULL,
  `rx` float DEFAULT NULL,
  `ry` float DEFAULT NULL,
  `rz` float DEFAULT NULL,
  `interior` float DEFAULT NULL,
  `dimension` float DEFAULT NULL,
  `information` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `interiors`
--

CREATE TABLE IF NOT EXISTS `interiors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` float DEFAULT '0',
  `y` float DEFAULT '0',
  `z` float DEFAULT '0',
  `type` int(1) DEFAULT '0',
  `owner` int(11) DEFAULT '-1',
  `locked` int(1) DEFAULT '0',
  `cost` int(11) DEFAULT '0',
  `name` text,
  `interior` int(5) DEFAULT '0',
  `interiorx` float DEFAULT '0',
  `interiory` float DEFAULT '0',
  `interiorz` float DEFAULT '0',
  `dimensionwithin` int(5) DEFAULT '0',
  `interiorwithin` int(5) DEFAULT '0',
  `angle` float DEFAULT '0',
  `angleexit` float DEFAULT '0',
  `supplies` int(11) DEFAULT '100',
  `safepositionX` float DEFAULT NULL,
  `safepositionY` float DEFAULT NULL,
  `safepositionZ` float DEFAULT NULL,
  `safepositionRZ` float DEFAULT NULL,
  `disabled` tinyint(3) unsigned DEFAULT '0',
  `lastused` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted` varchar(45) NOT NULL DEFAULT '0',
  `adminnote` text,
  `createdDate` datetime DEFAULT NULL,
  `creator` varchar(45) DEFAULT NULL,
  `isLightOn` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1844 ;

-- --------------------------------------------------------

--
-- Table structure for table `interior_business`
--

CREATE TABLE IF NOT EXISTS `interior_business` (
  `intID` int(11) NOT NULL,
  `businessNote` varchar(101) NOT NULL DEFAULT 'Welcome to our business!',
  PRIMARY KEY (`intID`),
  UNIQUE KEY `intID_UNIQUE` (`intID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves info about businesses - Maxime';

-- --------------------------------------------------------

--
-- Table structure for table `interior_logs`
--

CREATE TABLE IF NOT EXISTS `interior_logs` (
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `intID` int(11) DEFAULT NULL,
  `action` text,
  `actor` int(11) DEFAULT NULL,
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `log_id_UNIQUE` (`log_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Stores all admin actions on interiors - Monitored by Interior Manager - Maxime' AUTO_INCREMENT=5512 ;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `index` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL,
  `owner` int(10) unsigned NOT NULL,
  `itemID` int(10) NOT NULL,
  `itemValue` text NOT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1897500 ;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `jobID` int(11) DEFAULT '0',
  `jobCharID` int(11) DEFAULT '-1',
  `jobLevel` int(11) DEFAULT '1',
  `jobProgress` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves job info, skill level and progress - Maxime';

-- --------------------------------------------------------

--
-- Table structure for table `logtable`
--

CREATE TABLE IF NOT EXISTS `logtable` (
  `time` datetime NOT NULL,
  `action` int(2) NOT NULL,
  `source` varchar(12) NOT NULL,
  `affected` text NOT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lottery`
--

CREATE TABLE IF NOT EXISTS `lottery` (
  `characterid` int(255) NOT NULL,
  `ticketnumber` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `marijuanaplants`
--

CREATE TABLE IF NOT EXISTS `marijuanaplants` (
  `id` int(11) DEFAULT NULL,
  `timer` int(2) DEFAULT '24',
  `day` int(2) DEFAULT '1',
  `grams` float DEFAULT '0',
  `createdby` text,
  `x` float DEFAULT NULL,
  `y` float DEFAULT NULL,
  `z` float DEFAULT NULL,
  `rx` float DEFAULT NULL,
  `ry` float DEFAULT NULL,
  `rz` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mdcusers`
--

CREATE TABLE IF NOT EXISTS `mdcusers` (
  `user_name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL DEFAULT '123',
  `high_command` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `objects`
--

CREATE TABLE IF NOT EXISTS `objects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` int(6) NOT NULL DEFAULT '0',
  `posX` float(12,7) NOT NULL DEFAULT '0.0000000',
  `posY` float(12,7) NOT NULL DEFAULT '0.0000000',
  `posZ` float(12,7) NOT NULL DEFAULT '0.0000000',
  `rotX` float(12,7) NOT NULL DEFAULT '0.0000000',
  `rotY` float(12,7) NOT NULL DEFAULT '0.0000000',
  `rotZ` float(12,7) NOT NULL DEFAULT '0.0000000',
  `interior` int(5) NOT NULL,
  `dimension` int(5) NOT NULL,
  `comment` varchar(50) DEFAULT NULL,
  `solid` int(1) NOT NULL DEFAULT '1',
  `doublesided` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21185 ;

-- --------------------------------------------------------

--
-- Table structure for table `paynspray`
--

CREATE TABLE IF NOT EXISTS `paynspray` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` decimal(10,6) DEFAULT '0.000000',
  `y` decimal(10,6) DEFAULT '0.000000',
  `z` decimal(10,6) DEFAULT '0.000000',
  `dimension` int(5) DEFAULT '0',
  `interior` int(5) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

-- --------------------------------------------------------

--
-- Table structure for table `pd_tickets`
--

CREATE TABLE IF NOT EXISTS `pd_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vehid` int(11) NOT NULL,
  `reason` text NOT NULL,
  `amount` int(11) NOT NULL,
  `issuer` int(11) DEFAULT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`,`time`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=424 ;

-- --------------------------------------------------------

--
-- Table structure for table `phone_contacts`
--

CREATE TABLE IF NOT EXISTS `phone_contacts` (
  `phone` bigint(20) NOT NULL,
  `entryName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `entryNumber` bigint(20) NOT NULL,
  `entryEmail` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `entryAddress` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `entryFavorited` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phone_history`
--

CREATE TABLE IF NOT EXISTS `phone_history` (
  `targetNumber` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `duration` int(11) NOT NULL DEFAULT '0',
  `cost` float NOT NULL DEFAULT '0',
  `date2` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ownNumber` bigint(20) NOT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `flow` tinyint(4) NOT NULL DEFAULT '1',
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2987 ;

-- --------------------------------------------------------

--
-- Table structure for table `phone_settings`
--

CREATE TABLE IF NOT EXISTS `phone_settings` (
  `phonenumber` int(1) NOT NULL,
  `turnedon` smallint(1) unsigned NOT NULL DEFAULT '1',
  `secretnumber` smallint(1) unsigned NOT NULL DEFAULT '0',
  `ringtone` smallint(1) NOT NULL DEFAULT '1',
  `phonebook` varchar(40) DEFAULT NULL,
  `boughtby` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`phonenumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phone_sms`
--

CREATE TABLE IF NOT EXISTS `phone_sms` (
  `targetNumber` bigint(20) NOT NULL,
  `content` varchar(201) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `opened` tinyint(4) NOT NULL DEFAULT '0',
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `myNumber` bigint(20) NOT NULL,
  `flow` int(11) NOT NULL DEFAULT '1',
  UNIQUE KEY `ID_UNIQUE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `publicphones`
--

CREATE TABLE IF NOT EXISTS `publicphones` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `dimension` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  `value` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE IF NOT EXISTS `shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` float DEFAULT '0',
  `y` float DEFAULT '0',
  `z` float DEFAULT '0',
  `dimension` int(5) DEFAULT '0',
  `interior` int(5) DEFAULT '0',
  `shoptype` tinyint(4) DEFAULT '0',
  `rotation` float NOT NULL DEFAULT '0',
  `skin` int(11) DEFAULT '-1',
  `sPendingWage` int(11) NOT NULL DEFAULT '0',
  `sIncome` bigint(20) NOT NULL DEFAULT '0',
  `sCapacity` int(11) NOT NULL DEFAULT '10',
  `sSales` varchar(5000) NOT NULL DEFAULT '',
  `pedName` text,
  `deletedBy` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2732 ;

-- --------------------------------------------------------

--
-- Table structure for table `shop_contacts_info`
--

CREATE TABLE IF NOT EXISTS `shop_contacts_info` (
  `npcID` int(11) NOT NULL,
  `sOwner` text,
  `sPhone` text,
  `sEmail` text,
  `sForum` text,
  PRIMARY KEY (`npcID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Saves data about business''s owners in shop system - MAXIME';

-- --------------------------------------------------------

--
-- Table structure for table `shop_products`
--

CREATE TABLE IF NOT EXISTS `shop_products` (
  `npcID` int(11) DEFAULT NULL,
  `pItemID` int(11) DEFAULT NULL,
  `pItemValue` text,
  `pDesc` text,
  `pPrice` text,
  `pDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `pID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`pID`),
  UNIQUE KEY `pID_UNIQUE` (`pID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Saves on-sale products from players, business system by Maxime ' AUTO_INCREMENT=1875 ;

-- --------------------------------------------------------

--
-- Table structure for table `speedcams`
--

CREATE TABLE IF NOT EXISTS `speedcams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` float(11,7) NOT NULL DEFAULT '0.0000000',
  `y` float(11,7) NOT NULL DEFAULT '0.0000000',
  `z` float(11,7) NOT NULL DEFAULT '0.0000000',
  `interior` int(3) NOT NULL DEFAULT '0' COMMENT 'Stores the location of the pernament speedcams',
  `dimension` int(5) NOT NULL DEFAULT '0',
  `maxspeed` int(4) NOT NULL DEFAULT '120',
  `radius` int(4) NOT NULL DEFAULT '2',
  `enabled` smallint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

-- --------------------------------------------------------

--
-- Table structure for table `speedingviolations`
--

CREATE TABLE IF NOT EXISTS `speedingviolations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carID` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `speed` int(5) NOT NULL,
  `area` varchar(50) NOT NULL,
  `personVisible` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52951 ;

-- --------------------------------------------------------

--
-- Table structure for table `stats`
--

CREATE TABLE IF NOT EXISTS `stats` (
  `district` varchar(45) NOT NULL,
  `deaths` double DEFAULT '0',
  PRIMARY KEY (`district`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `suspectcrime`
--

CREATE TABLE IF NOT EXISTS `suspectcrime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suspect_name` text,
  `time` text,
  `date` text,
  `officers` text,
  `ticket` int(11) DEFAULT NULL,
  `arrest` int(11) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL,
  `ticket_price` text,
  `arrest_price` text,
  `fine_price` text,
  `illegal_items` text,
  `details` text,
  `done_by` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=989 ;

-- --------------------------------------------------------

--
-- Table structure for table `suspectdetails`
--

CREATE TABLE IF NOT EXISTS `suspectdetails` (
  `suspect_name` text,
  `birth` text,
  `gender` text,
  `ethnicy` text,
  `cell` int(5) DEFAULT '0',
  `occupation` text,
  `address` text,
  `other` text,
  `is_wanted` int(1) DEFAULT '0',
  `wanted_reason` text,
  `wanted_punishment` text,
  `wanted_by` text,
  `photo` text,
  `done_by` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `x` decimal(10,6) DEFAULT NULL,
  `y` decimal(10,6) DEFAULT NULL,
  `z` decimal(10,6) DEFAULT NULL,
  `interior` int(5) DEFAULT NULL,
  `dimension` int(5) DEFAULT NULL,
  `rx` decimal(10,6) DEFAULT NULL,
  `ry` decimal(10,6) DEFAULT NULL,
  `rz` decimal(10,6) DEFAULT NULL,
  `modelid` int(5) DEFAULT NULL,
  `creationdate` datetime DEFAULT NULL,
  `creator` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2907 ;

-- --------------------------------------------------------

--
-- Table structure for table `tc_comments`
--

CREATE TABLE IF NOT EXISTS `tc_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poster` int(11) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `posted` int(25) NOT NULL,
  `type` int(1) NOT NULL,
  `ticket` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1444 ;

-- --------------------------------------------------------

--
-- Table structure for table `tc_tickets`
--

CREATE TABLE IF NOT EXISTS `tc_tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creator` int(11) NOT NULL,
  `posted` int(25) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `status` int(1) NOT NULL,
  `lastpost` int(25) NOT NULL,
  `assigned` int(11) NOT NULL,
  `IP` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=318 ;

-- --------------------------------------------------------

--
-- Table structure for table `tempinteriors`
--

CREATE TABLE IF NOT EXISTS `tempinteriors` (
  `id` int(11) NOT NULL,
  `posX` float NOT NULL,
  `posY` float DEFAULT NULL,
  `posZ` float DEFAULT NULL,
  `interior` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tempobjects`
--

CREATE TABLE IF NOT EXISTS `tempobjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` int(6) NOT NULL DEFAULT '0',
  `posX` float(12,7) NOT NULL DEFAULT '0.0000000',
  `posY` float(12,7) NOT NULL DEFAULT '0.0000000',
  `posZ` float(12,7) NOT NULL DEFAULT '0.0000000',
  `rotX` float(12,7) NOT NULL DEFAULT '0.0000000',
  `rotY` float(12,7) NOT NULL DEFAULT '0.0000000',
  `rotZ` float(12,7) NOT NULL DEFAULT '0.0000000',
  `interior` int(5) NOT NULL,
  `dimension` int(5) NOT NULL,
  `comment` varchar(50) DEFAULT NULL,
  `solid` int(1) NOT NULL DEFAULT '1',
  `doublesided` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ticketreplies`
--

CREATE TABLE IF NOT EXISTS `ticketreplies` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `text` text NOT NULL,
  `by` text NOT NULL,
  `rank` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE IF NOT EXISTS `tickets` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `name` text NOT NULL,
  `status` text NOT NULL,
  `subject` text NOT NULL,
  `assigned` text NOT NULL,
  `priority` text NOT NULL,
  `username` text NOT NULL,
  `gamename` text NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` int(3) DEFAULT '0',
  `x` decimal(10,6) DEFAULT '0.000000',
  `y` decimal(10,6) DEFAULT '0.000000',
  `z` decimal(10,6) DEFAULT '0.000000',
  `rotx` decimal(10,6) DEFAULT '0.000000',
  `roty` decimal(10,6) DEFAULT '0.000000',
  `rotz` decimal(10,6) DEFAULT '0.000000',
  `currx` decimal(10,6) DEFAULT '0.000000',
  `curry` decimal(10,6) DEFAULT '0.000000',
  `currz` decimal(10,6) DEFAULT '0.000000',
  `currrx` decimal(10,6) DEFAULT '0.000000',
  `currry` decimal(10,6) DEFAULT '0.000000',
  `currrz` decimal(10,6) NOT NULL DEFAULT '0.000000',
  `fuel` int(3) DEFAULT '100',
  `engine` int(1) DEFAULT '0',
  `locked` int(1) DEFAULT '0',
  `lights` int(1) DEFAULT '0',
  `sirens` int(1) DEFAULT '0',
  `paintjob` int(11) DEFAULT '0',
  `hp` float DEFAULT '1000',
  `color1` varchar(50) DEFAULT '0',
  `color2` varchar(50) DEFAULT '0',
  `color3` varchar(50) DEFAULT NULL,
  `color4` varchar(50) DEFAULT NULL,
  `plate` text,
  `faction` int(11) DEFAULT '-1',
  `owner` int(11) DEFAULT '-1',
  `job` int(11) DEFAULT '-1',
  `tintedwindows` int(1) DEFAULT '0',
  `dimension` int(5) DEFAULT '0',
  `interior` int(5) DEFAULT '0',
  `currdimension` int(5) DEFAULT '0',
  `currinterior` int(5) DEFAULT '0',
  `enginebroke` int(1) DEFAULT '0',
  `items` text,
  `itemvalues` text,
  `Impounded` int(3) DEFAULT '0',
  `handbrake` int(1) DEFAULT '0',
  `safepositionX` float DEFAULT NULL,
  `safepositionY` float DEFAULT NULL,
  `safepositionZ` float DEFAULT NULL,
  `safepositionRZ` float DEFAULT NULL,
  `upgrades` varchar(150) DEFAULT '[ [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ] ]',
  `wheelStates` varchar(30) DEFAULT '[ [ 0, 0, 0, 0 ] ]',
  `panelStates` varchar(40) DEFAULT '[ [ 0, 0, 0, 0, 0, 0, 0 ] ]',
  `doorStates` varchar(30) DEFAULT '[ [ 0, 0, 0, 0, 0, 0 ] ]',
  `odometer` int(15) DEFAULT '0',
  `headlights` varchar(30) DEFAULT '[ [ 255, 255, 255 ] ]',
  `variant1` int(3) DEFAULT NULL,
  `variant2` int(3) DEFAULT NULL,
  `description1` varchar(300) NOT NULL DEFAULT '',
  `description2` varchar(300) NOT NULL DEFAULT '',
  `description3` varchar(300) NOT NULL DEFAULT '',
  `description4` varchar(300) NOT NULL DEFAULT '',
  `description5` varchar(300) NOT NULL DEFAULT '',
  `suspensionLowerLimit` float DEFAULT NULL,
  `driveType` char(5) DEFAULT NULL,
  `note` text,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `chopped` tinyint(4) NOT NULL DEFAULT '0',
  `stolen` tinyint(4) NOT NULL DEFAULT '0',
  `lastUsed` datetime DEFAULT NULL,
  `creationDate` datetime DEFAULT NULL,
  `createdBy` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9504 ;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_logs`
--

CREATE TABLE IF NOT EXISTS `vehicle_logs` (
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `vehID` int(11) DEFAULT NULL,
  `action` text,
  `actor` int(11) DEFAULT NULL,
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `log_id_UNIQUE` (`log_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Stores all admin actions on vehicles - Monitored by Vehicle Manager - Maxime' AUTO_INCREMENT=28244 ;

-- --------------------------------------------------------

--
-- Table structure for table `wiretransfers`
--

CREATE TABLE IF NOT EXISTS `wiretransfers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `reason` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=382759 ;

-- --------------------------------------------------------

--
-- Table structure for table `worlditems`
--

CREATE TABLE IF NOT EXISTS `worlditems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemid` int(11) DEFAULT '0',
  `itemvalue` text,
  `x` float DEFAULT '0',
  `y` float DEFAULT '0',
  `z` float DEFAULT '0',
  `dimension` int(5) DEFAULT '0',
  `interior` int(5) DEFAULT '0',
  `creationdate` datetime DEFAULT NULL,
  `rz` float DEFAULT '0',
  `creator` int(10) unsigned DEFAULT '0',
  `protected` int(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100365 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
