-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 02, 2014 at 06:42 AM
-- Server version: 5.5.36
-- PHP Version: 5.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yck`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `title` varchar(150) NOT NULL,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `email` text NOT NULL,
  `permission` int(150) NOT NULL,
  `register_date` date NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `latitude`, `longitude`) VALUES
(1, 'Prishtina', 42.6667, 21.1667),
(2, 'Prizren', 42.2167, 20.7333),
(3, 'Peje', 42.6667, 20.3),
(4, 'Gjakove', 42.3833, 20.4333),
(5, 'Ferizaj ', 42.38, 21.17),
(6, 'Mitrovice', 42.8833, 20.8667),
(7, 'Gjilan', 42.47, 21.48),
(9, 'Istog', 42.7833, 20.4833),
(10, 'Shtime', 42.4333, 21.0333),
(11, 'Kline', 42.6208, 20.5751),
(12, 'Podujeve', 42.9167, 21.2),
(13, 'Therande', 42.38, 20.8219),
(14, 'Rahovec', 42.3994, 20.6547);

-- --------------------------------------------------------

--
-- Table structure for table `label`
--

CREATE TABLE IF NOT EXISTS `label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `neighborhood`
--

CREATE TABLE IF NOT EXISTS `neighborhood` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_city` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `neighborhood`
--

INSERT INTO `neighborhood` (`id`, `id_city`, `name`, `latitude`, `longitude`) VALUES
(2, 1, 'Kodra e Trimave', 158, 321),
(3, 0, 'Dardania', 12.00100040435791, 12.001999855041504),
(4, 2, 'Blakqoreve', 342, 4234),
(5, 1, 'Dardania', 42.6499732, 21.153794),
(6, 1, 'Arberia', 42.5, 12.645000457763672),
(7, 1, 'Te Qafa', 12.045599937438965, 12.001999855041504),
(8, 1, 'Sheshi"Nene Tereza"', 42.5, 12.645000457763672),
(9, 1, 'Ulpiana', 1541, 21.200000762939453),
(10, 1, 'Kalabria', 1541, 21.200000762939453),
(11, 1, 'Tophane', 1541, 21.200000762939453),
(12, 1, 'Lakerishte', 1541, 21.200000762939453),
(13, 1, 'Kolovica', 1541, 21.200000762939453),
(14, 1, 'Bregu i Diellit:Zona Lindje, jugu, perendimi dhe Aktashi 3', 1541, 21.200000762939453),
(16, 1, 'Lagjja e Spitalit', 1541, 21.200000762939453),
(17, 1, 'Lagjja e Muhagjereve', 1541, 21.200000762939453),
(18, 1, 'Sofalia', 1541, 21.200000762939453),
(19, 1, 'Veterniku', 1541, 21.200000762939453),
(20, 1, 'Hajvalia', 1541, 21.200000762939453),
(21, 1, 'Miradia e Eperme', 1541, 21.200000762939453),
(22, 1, 'Velania', 1541, 21.200000762939453),
(23, 1, 'Taslixhe', 1541, 21.200000762939453),
(24, 1, 'Mati 1', 1541, 21.200000762939453),
(25, 1, 'Mati 2', 1541, 21.200000762939453),
(26, 1, 'Bregu i diellit:Aktashi 1, 2, Zona qender dhe Qendra studentore', 1541, 21.200000762939453),
(30, 1, 'Vreshtat', 1541, 21.200000762939453),
(31, 1, 'Zona industriale', 1541, 21.200000762939453),
(32, 1, 'Banesat e Bardha', 1541, 21.200000762939453),
(33, 1, 'Bunari i Hajratit', 1541, 21.200000762939453),
(34, 1, 'Fshati Makovc', 1541, 21.200000762939453),
(35, 1, 'Fshati Llukar', 1541, 21.200000762939453),
(36, 1, 'Fshati Shkabaj', 1541, 21.200000762939453),
(37, 1, 'Lagjja te Komuna e Re', 1541, 21.200000762939453),
(39, 1, 'Lagjja e Universitetit', 12.00100040435791, 12.645000457763672);

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE IF NOT EXISTS `permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_admin` int(11) NOT NULL,
  `permission` int(100) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `recreations`
--

CREATE TABLE IF NOT EXISTS `recreations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_city` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(150) NOT NULL,
  `description` varchar(250) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `recreations`
--

INSERT INTO `recreations` (`id`, `id_city`, `category_id`, `title`, `description`, `latitude`, `longitude`) VALUES
(4, 1, 1, 'Cinema ABC', 'Shows the latest movies', 0, 0),
(5, 1, 1, 'Cinema', 'Cinema ABC-1', 0, 0),
(6, 1, 2, 'National Theatre of Kosovo', 'The centre of culture', 0, 0),
(7, 1, 2, '"Dodona" Theatre', 'Kids Theatre of dolls', 0, 0),
(8, 1, 2, '"Teatri i Babes" Theatre', 'Drama theatre for all ages', 0, 0),
(9, 1, 2, '"Oda" Theatre', 'One of the oldest theatres in Prishtina', 0, 0),
(10, 1, 3, 'City Park Of Prishtina', 'A park located in the centre of the city ', 0, 0),
(11, 1, 3, 'National Park Of Germia', 'The biggest park of Prishtina', 0, 0),
(12, 1, 3, '"Ulpiana" Park', 'A park to satisfy children', 0, 0),
(13, 1, 3, '"Dardania" Park', 'A Neighborhood park in prishtina', 0, 0),
(14, 1, 4, 'National Museum of Prishtina', 'A place of history', 0, 0),
(15, 2, 1, 'DokuKino', 'The oldest cinema in Prizren ', 0, 0),
(16, 2, 2, 'Theatre of Prizren', 'The only Theatre of Prizren', 0, 0),
(17, 2, 6, '"Gazi Mehmet Pasa" Hamam', 'It''s builded in 1563-1574', 0, 0),
(18, 2, 6, 'Prizren Castle', 'It''s 525m above the sea level', 0, 0),
(19, 2, 6, 'Stone bridge ', 'Was built at the end of XV century ', 0, 0),
(20, 2, 5, '"Sinan Pasha" Mosque', 'It''s build in 1615 by Sinan Pasha', 0, 0),
(21, 2, 6, 'Tomb of Gazi Mehmed Pasha', 'It''s an old tomb', 0, 0),
(22, 2, 6, 'DokuFest', 'Movie festival', 0, 0),
(23, 1, 6, 'PreFilmFest', 'Movie and  actress festival', 0, 0),
(24, 1, 6, '"ReMusica" Festival', 'International contemporary music festival', 0, 0),
(25, 1, 6, 'Prishtina Jazz Music', 'A Festival Of Jazz Music Lovers', 0, 0),
(26, 3, 6, 'Mill of Haxhi Zeka', 'The first industrial mill in the Austro-Hungarian period', 0, 0),
(27, 3, 6, 'Old Bazzar', 'A place with culturar heritage ', 0, 0),
(28, 3, 6, 'Hamam "Haxhi Beu"', 'Is ranked among valuable cultural building', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `recreations_category`
--

CREATE TABLE IF NOT EXISTS `recreations_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `recreations_category`
--

INSERT INTO `recreations_category` (`id`, `name`) VALUES
(1, 'Cinema'),
(2, 'Theatre'),
(3, 'Park'),
(4, 'Museum'),
(5, 'Mosque\r\n'),
(6, 'other');

-- --------------------------------------------------------

--
-- Table structure for table `sub_label`
--

CREATE TABLE IF NOT EXISTS `sub_label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_link` int(11) NOT NULL,
  `language` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `trash_collection`
--

CREATE TABLE IF NOT EXISTS `trash_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_neighborhood` int(11) NOT NULL,
  `street` varchar(100) NOT NULL,
  `start_h` time NOT NULL,
  `finish_h` time NOT NULL,
  `M` tinyint(1) NOT NULL,
  `T` tinyint(1) NOT NULL,
  `W` tinyint(1) NOT NULL,
  `TH` tinyint(1) NOT NULL,
  `F` tinyint(1) NOT NULL,
  `S` tinyint(1) NOT NULL,
  `SU` tinyint(1) NOT NULL,
  `license_plate` varchar(10) NOT NULL,
  `truck` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `trash_collection`
--

INSERT INTO `trash_collection` (`id`, `id_neighborhood`, `street`, `start_h`, `finish_h`, `M`, `T`, `W`, `TH`, `F`, `S`, `SU`, `license_plate`, `truck`) VALUES
(1, 1, '24 Maji', '16:00:44', '22:00:44', 0, 0, 0, 0, 0, 0, 0, '04-476-AR', ''),
(2, 2, '2 Korriku', '10:00:00', '12:00:00', 0, 0, 0, 0, 0, 0, 0, '05-428-BH', ''),
(3, 3, '7 Shtatori', '12:22:44', '17:44:55', 0, 0, 0, 0, 0, 0, 0, '05-776-AJ', ''),
(4, 2, '1 Tetori', '03:33:11', '22:35:02', 0, 0, 0, 0, 0, 0, 0, '05-429-BH', ''),
(5, 5, '27 Nentori', '13:42:00', '14:00:00', 0, 0, 0, 0, 0, 0, 0, '05-346-BH', ''),
(7, 2, '28 Nentori', '00:00:00', '00:00:00', 0, 0, 0, 0, 0, 0, 0, '05-192-AN', ''),
(8, 7, 'Abdullah Presheva', '00:00:00', '00:00:00', 0, 0, 0, 0, 0, 0, 0, '05-623-BL', ''),
(9, 2, 'Abdyl Dura', '00:00:00', '00:00:00', 0, 0, 0, 0, 0, 0, 0, '05-348-BH', '');

-- --------------------------------------------------------

--
-- Table structure for table `water_supply`
--

CREATE TABLE IF NOT EXISTS `water_supply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_neighborhood` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `latitude` float NOT NULL,
  `start_h` time NOT NULL,
  `finish_h` time NOT NULL,
  `monday` tinyint(4) NOT NULL,
  `tuesday` tinyint(4) NOT NULL,
  `wednesday` tinyint(4) NOT NULL,
  `thursday` tinyint(4) NOT NULL,
  `friday` tinyint(4) NOT NULL,
  `saturday` tinyint(4) NOT NULL,
  `sunday` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `water_supply`
--

INSERT INTO `water_supply` (`id`, `id_neighborhood`, `title`, `description`, `latitude`, `start_h`, `finish_h`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `sunday`) VALUES
(1, 2, '', 'Orari i furnizimit', 0, '05:00:00', '11:00:00', 0, 0, 0, 0, 0, 0, 0),
(2, 2, '', '', 0, '16:00:00', '22:00:00', 0, 0, 0, 0, 0, 0, 0),
(3, 2, '', 'Orari i reduktimeve', 0, '11:00:00', '16:00:00', 0, 0, 0, 0, 0, 0, 0),
(4, 2, '', '', 0, '22:00:00', '05:00:00', 0, 0, 0, 0, 0, 0, 0),
(5, 5, '', 'Orari i furnizimit', 0, '05:00:00', '22:00:00', 0, 0, 0, 0, 0, 0, 0),
(6, 5, '', 'Orari i reduktimeve', 0, '22:00:00', '05:00:00', 0, 0, 0, 0, 0, 0, 0),
(7, 6, '', 'Orari i furnizimit', 0, '05:00:00', '22:00:00', 0, 0, 0, 0, 0, 0, 0),
(8, 6, '', 'Orari i reduktimeve', 0, '22:00:00', '05:00:00', 0, 0, 0, 0, 0, 0, 0),
(9, 7, '', 'Orari i furnizimit', 0, '05:00:00', '22:00:00', 0, 0, 0, 0, 0, 0, 0),
(10, 7, '', 'Orari i reduktimeve', 0, '22:00:00', '05:00:00', 0, 0, 0, 0, 0, 0, 0),
(11, 8, '', 'Orari i furnizimit', 0, '05:00:00', '22:00:00', 0, 0, 0, 0, 0, 0, 0),
(12, 8, '', 'Orari i reduktimeve', 0, '22:00:00', '05:00:00', 0, 0, 0, 0, 0, 0, 0),
(13, 9, '', 'Orari i furnizimit', 0, '05:00:00', '22:00:00', 0, 0, 0, 0, 0, 0, 0),
(14, 9, '', 'Orari i reduktimeve', 0, '22:00:00', '05:00:00', 0, 0, 0, 0, 0, 0, 0),
(15, 10, '', 'Orari i furnizimit', 0, '05:00:00', '22:00:00', 0, 0, 0, 0, 0, 0, 0),
(16, 10, '', 'Orari i reduktimeve', 0, '22:00:00', '05:00:00', 0, 0, 0, 0, 0, 0, 0),
(17, 11, '', 'Orari i furnizimit', 0, '05:00:00', '22:00:00', 0, 0, 0, 0, 0, 0, 0),
(18, 11, '', 'Orari i reduktimeve', 0, '22:00:00', '05:00:00', 0, 0, 0, 0, 0, 0, 0),
(19, 12, '', 'Orari i furnizimit', 0, '05:00:00', '22:00:00', 0, 0, 0, 0, 0, 0, 0),
(20, 12, '', 'Orari i reduktimeve', 0, '22:00:00', '05:00:00', 0, 0, 0, 0, 0, 0, 0),
(21, 13, '', 'Orari i furnizimit', 0, '05:00:00', '10:00:00', 0, 0, 0, 0, 0, 0, 0),
(22, 13, '', '', 0, '16:00:00', '21:00:00', 0, 0, 0, 0, 0, 0, 0),
(23, 13, '', 'Orari i reduktimeve', 0, '10:00:00', '16:00:00', 0, 0, 0, 0, 0, 0, 0),
(24, 13, '', '', 0, '23:00:00', '05:00:00', 0, 0, 0, 0, 0, 0, 0),
(25, 14, '', 'Orari i furnizimit', 0, '06:00:00', '10:00:00', 0, 0, 0, 0, 0, 0, 0),
(26, 14, '', '', 0, '16:00:00', '22:00:00', 0, 0, 0, 0, 0, 0, 0),
(27, 14, '', 'Orari i reduktimeve', 0, '10:00:00', '16:00:00', 0, 0, 0, 0, 0, 0, 0),
(28, 14, '', '', 0, '21:00:00', '06:00:00', 0, 0, 0, 0, 0, 0, 0),
(29, 16, '', 'Orari i furnizimit', 0, '05:00:00', '11:00:00', 0, 0, 0, 0, 0, 0, 0),
(30, 16, '', '', 0, '16:00:00', '22:00:00', 0, 0, 0, 0, 0, 0, 0),
(31, 16, '', 'Orari i reduktimeve', 0, '11:00:00', '16:00:00', 0, 0, 0, 0, 0, 0, 0),
(32, 16, '', '', 0, '22:00:00', '05:00:00', 0, 0, 0, 0, 0, 0, 0),
(33, 17, '', 'Orari i furnizimit', 0, '05:00:00', '11:00:00', 0, 0, 0, 0, 0, 0, 0),
(34, 17, '', '', 0, '16:00:00', '22:00:00', 0, 0, 0, 0, 0, 0, 0),
(35, 17, '', 'Orari i reduktimeve', 0, '11:00:00', '16:00:00', 0, 0, 0, 0, 0, 0, 0),
(36, 17, '', '', 0, '22:00:00', '05:00:00', 0, 0, 0, 0, 0, 0, 0),
(37, 18, '', 'Orari i furnizimit', 0, '05:00:00', '11:00:00', 0, 0, 0, 0, 0, 0, 0),
(38, 18, '', '', 0, '16:00:00', '22:00:00', 0, 0, 0, 0, 0, 0, 0),
(39, 18, '', 'Orari i reduktimeve', 0, '11:00:00', '16:00:00', 0, 0, 0, 0, 0, 0, 0),
(40, 18, '', '', 0, '22:00:00', '05:00:00', 0, 0, 0, 0, 0, 0, 0),
(41, 19, '', 'Orari i furnizimit', 0, '06:00:00', '13:00:00', 0, 0, 0, 0, 0, 0, 0),
(42, 19, '', 'Orari i reduktimeve', 0, '13:00:00', '06:00:00', 0, 0, 0, 0, 0, 0, 0),
(43, 20, '', 'Orari i furnizimit', 0, '06:00:00', '13:00:00', 0, 0, 0, 0, 0, 0, 0),
(44, 20, '', 'Orari i reduktimeve', 0, '13:00:00', '06:00:00', 0, 0, 0, 0, 0, 0, 0),
(45, 21, '', 'Orari i furnizimit', 0, '05:00:00', '22:00:00', 0, 0, 0, 0, 0, 0, 0),
(46, 21, '', 'Orari i reduktimeve', 0, '22:00:00', '05:00:00', 0, 0, 0, 0, 0, 0, 0),
(47, 22, '', 'Orari i furnizimit', 0, '05:00:00', '10:00:00', 0, 0, 0, 0, 0, 0, 0),
(48, 22, '', '', 0, '16:00:00', '21:00:00', 0, 0, 0, 0, 0, 0, 0),
(49, 22, '', 'Orari i reduktimeve', 0, '10:00:00', '16:00:00', 0, 0, 0, 0, 0, 0, 0),
(50, 22, '', '', 0, '23:00:00', '05:00:00', 0, 0, 0, 0, 0, 0, 0),
(51, 23, '', 'Orari i furnizimit', 0, '05:00:00', '10:00:00', 0, 0, 0, 0, 0, 0, 0),
(52, 23, '', '', 0, '16:00:00', '21:00:00', 0, 0, 0, 0, 0, 0, 0),
(53, 23, '', 'Orari i reduktimeve', 0, '10:00:00', '16:00:00', 0, 0, 0, 0, 0, 0, 0),
(54, 23, '', '', 0, '23:00:00', '05:00:00', 0, 0, 0, 0, 0, 0, 0),
(55, 24, '', 'Orari i furnizimit', 0, '05:00:00', '10:00:00', 0, 0, 0, 0, 0, 0, 0),
(56, 24, '', '', 0, '16:00:00', '21:00:00', 0, 0, 0, 0, 0, 0, 0),
(57, 24, '', 'Orari i reduktimeve', 0, '10:00:00', '16:00:00', 0, 0, 0, 0, 0, 0, 0),
(58, 24, '', '', 0, '22:00:00', '05:00:00', 0, 0, 0, 0, 0, 0, 0),
(59, 25, '', 'Orari i furnizimit', 0, '05:00:00', '10:00:00', 0, 0, 0, 0, 0, 0, 0),
(60, 25, '', '', 0, '16:00:00', '21:00:00', 0, 0, 0, 0, 0, 0, 0),
(61, 25, '', 'Orari i reduktimeve', 0, '10:00:00', '16:00:00', 0, 0, 0, 0, 0, 0, 0),
(62, 25, '', '', 0, '22:00:00', '05:00:00', 0, 0, 0, 0, 0, 0, 0),
(63, 26, '', 'Orari i furnizimit', 0, '07:00:00', '10:00:00', 0, 0, 0, 0, 0, 0, 0),
(64, 26, '', '', 0, '16:00:00', '22:00:00', 0, 0, 0, 0, 0, 0, 0),
(65, 26, '', 'Orari i reduktimeve', 0, '10:00:00', '16:00:00', 0, 0, 0, 0, 0, 0, 0),
(66, 26, '', '', 0, '22:00:00', '07:00:00', 0, 0, 0, 0, 0, 0, 0),
(67, 30, '', 'Orari i furnizimit', 0, '05:00:00', '10:00:00', 0, 0, 0, 0, 0, 0, 0),
(68, 30, '', '', 0, '16:00:00', '21:00:00', 0, 0, 0, 0, 0, 0, 0),
(69, 30, '', 'Orari i reduktimeve', 0, '10:00:00', '16:00:00', 0, 0, 0, 0, 0, 0, 0),
(70, 30, '', '', 0, '23:00:00', '05:00:00', 0, 0, 0, 0, 0, 0, 0),
(71, 31, '', 'Orari i furnizimit', 0, '06:00:00', '21:00:00', 0, 0, 0, 0, 0, 0, 0),
(72, 31, '', 'Orari i reduktimeve', 0, '21:00:00', '06:00:00', 0, 0, 0, 0, 0, 0, 0),
(73, 32, '', 'Orari i furnizimit', 0, '05:00:00', '10:00:00', 0, 0, 0, 0, 0, 0, 0),
(74, 32, '', '', 0, '06:00:00', '21:00:00', 0, 0, 0, 0, 0, 0, 0),
(75, 32, '', 'Orari i reduktimeve', 0, '10:00:00', '16:00:00', 0, 0, 0, 0, 0, 0, 0),
(76, 32, '', '', 0, '23:00:00', '05:00:00', 0, 0, 0, 0, 0, 0, 0),
(77, 33, '', 'Orari i furnizimit', 0, '05:00:00', '10:00:00', 0, 0, 0, 0, 0, 0, 0),
(78, 33, '', '', 0, '16:00:00', '21:00:00', 0, 0, 0, 0, 0, 0, 0),
(79, 33, '', 'Orari i reduktimeve', 0, '10:00:00', '16:00:00', 0, 0, 0, 0, 0, 0, 0),
(80, 33, '', '', 0, '21:00:00', '05:00:00', 0, 0, 0, 0, 0, 0, 0),
(81, 34, '', 'Orari i furnizimit', 0, '05:00:00', '10:00:00', 0, 0, 0, 0, 0, 0, 0),
(82, 34, '', '', 0, '16:00:00', '21:00:00', 0, 0, 0, 0, 0, 0, 0),
(83, 34, '', 'Orari i reduktimeve', 0, '10:00:00', '16:00:00', 0, 0, 0, 0, 0, 0, 0),
(84, 34, '', '', 0, '21:00:00', '05:00:00', 0, 0, 0, 0, 0, 0, 0),
(85, 35, '', 'Orari i furnizimit', 0, '05:00:00', '10:00:00', 0, 0, 0, 0, 0, 0, 0),
(86, 35, '', '', 0, '16:00:00', '21:00:00', 0, 0, 0, 0, 0, 0, 0),
(87, 35, '', 'Orari i reduktimeve', 0, '10:00:00', '16:00:00', 0, 0, 0, 0, 0, 0, 0),
(88, 35, '', '', 0, '21:00:00', '05:00:00', 0, 0, 0, 0, 0, 0, 0),
(89, 36, '', 'Orari i furnizimit', 0, '05:00:00', '11:00:00', 0, 0, 0, 0, 0, 0, 0),
(90, 36, '', '', 0, '16:00:00', '22:00:00', 0, 0, 0, 0, 0, 0, 0),
(91, 36, '', 'Orari i reduktimeve', 0, '11:00:00', '16:00:00', 0, 0, 0, 0, 0, 0, 0),
(92, 36, '', '', 0, '22:00:00', '05:00:00', 0, 0, 0, 0, 0, 0, 0),
(93, 37, '', 'Orari i furnizimit', 0, '05:00:00', '11:00:00', 0, 0, 0, 0, 0, 0, 0),
(94, 37, '', '', 0, '16:00:00', '22:00:00', 0, 0, 0, 0, 0, 0, 0),
(95, 37, '', 'Orari i reduktimeve', 0, '11:00:00', '16:00:00', 0, 0, 0, 0, 0, 0, 0),
(96, 37, '', '', 0, '22:00:00', '05:00:00', 0, 0, 0, 0, 0, 0, 0),
(97, 39, '', 'Orari i furnizimit', 0, '05:00:00', '11:00:00', 0, 0, 0, 0, 0, 0, 0),
(98, 39, '', '', 0, '16:00:00', '22:00:00', 0, 0, 0, 0, 0, 0, 0),
(99, 39, '', 'Orari i reduktimeve', 0, '11:00:00', '16:00:00', 0, 0, 0, 0, 0, 0, 0),
(100, 39, '', '', 0, '22:00:00', '05:00:00', 0, 0, 0, 0, 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
