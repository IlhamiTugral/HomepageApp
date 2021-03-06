-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 15, 2019 at 10:56 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `homepage`
--

-- --------------------------------------------------------

--
-- Table structure for table `apps`
--

DROP TABLE IF EXISTS `apps`;
CREATE TABLE IF NOT EXISTS `apps` (
  `app_id` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`app_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apps`
--

INSERT INTO `apps` (`app_id`, `date`, `name`, `description`, `is_active`) VALUES
(1, 1559985992, 'Calendar', 'Takvim uygulaması', 1),
(2, 1559985992, 'Currency', 'Döviz uygulaması', 1),
(3, 1559985992, 'News', 'Haberler uygulaması', 0),
(4, 1559985992, 'Notes', 'Not Defteri uygulaması', 1),
(5, 1559985992, 'SearchEngine', 'Arama Motoru uygulaması', 1),
(7, 1559985992, 'Weather', 'Hava Durumu uygulaması', 1);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(2) NOT NULL,
  `name` varchar(16) CHARACTER SET utf8 NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`l_id`, `code`, `name`, `is_active`) VALUES
(1, 'en', 'English', 1),
(2, 'tr', 'Türkçe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
CREATE TABLE IF NOT EXISTS `notes` (
  `note_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL,
  `date` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `title` varchar(256) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`note_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`note_id`, `ip`, `date`, `u_id`, `title`, `description`) VALUES
(1, '127.0.0.1', 1576406427, 1, 'Demo Note', 'Example note. This note created by IlhamiTugral.');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

DROP TABLE IF EXISTS `themes`;
CREATE TABLE IF NOT EXISTS `themes` (
  `th_id` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(16) CHARACTER SET utf8 NOT NULL,
  `name` varchar(16) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`th_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`th_id`, `theme`, `name`, `is_active`) VALUES
(1, 'ocean-blue', 'ocean_blue', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL,
  `register_date` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `lang` varchar(2) NOT NULL,
  `email` varchar(256) NOT NULL,
  `username` varchar(16) NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 NOT NULL,
  `surname` varchar(16) CHARACTER SET utf8 NOT NULL,
  `password` varchar(32) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `theme` varchar(16) NOT NULL,
  `design` text NOT NULL,
  `settings` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `ip`, `register_date`, `date`, `token`, `lang`, `email`, `username`, `name`, `surname`, `password`, `is_active`, `theme`, `design`, `settings`) VALUES
(1, '127.0.0.1', 1576403105, 1576403105, 'ac4f6484e231eb1bd37dc2775f8faa8c', 'en', 'admin@example.com', 'admin', 'Demo', 'Account', 'e714f5e09b26f37bb36f63f24789a3b5', 0, 'ocean-blue', '[{Calendar}{Weather}][{SearchEngine}][{Notes}{Currency}]', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
