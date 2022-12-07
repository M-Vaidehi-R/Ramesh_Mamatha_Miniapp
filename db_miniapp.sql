-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 06, 2022 at 09:38 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_miniapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini_carimg`
--

DROP TABLE IF EXISTS `tbl_mini_carimg`;
CREATE TABLE IF NOT EXISTS `tbl_mini_carimg` (
  `mini_img_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `mini_img` varchar(350) NOT NULL,
  PRIMARY KEY (`mini_img_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='mini image';

--
-- Dumping data for table `tbl_mini_carimg`
--

INSERT INTO `tbl_mini_carimg` (`mini_img_id`, `mini_img`) VALUES
(1, 'electric.jpg'),
(2, '3Door.jpg'),
(3, '5Door.jpg'),
(4, 'convertible.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini_engine`
--

DROP TABLE IF EXISTS `tbl_mini_engine`;
CREATE TABLE IF NOT EXISTS `tbl_mini_engine` (
  `mini_engine_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `mini_engine` varchar(350) NOT NULL,
  PRIMARY KEY (`mini_engine_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='mini engine ';

--
-- Dumping data for table `tbl_mini_engine`
--

INSERT INTO `tbl_mini_engine` (`mini_engine_id`, `mini_engine`) VALUES
(1, 'Fully Electric Motor'),
(2, '3 cylinder 12 valves, twin power turbo'),
(3, '4 cylinder 16 valves, twin power turbo'),
(4, '4 cylinder 16 valves, twin scroll turbo');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini_maxspeed`
--

DROP TABLE IF EXISTS `tbl_mini_maxspeed`;
CREATE TABLE IF NOT EXISTS `tbl_mini_maxspeed` (
  `mini_maxspeed_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `mini_maxspeed` varchar(150) NOT NULL,
  `mini_speedometer_id` tinyint(4) NOT NULL,
  PRIMARY KEY (`mini_maxspeed_id`),
  KEY `mini_speedometer_id` (`mini_speedometer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='maxspeed';

--
-- Dumping data for table `tbl_mini_maxspeed`
--

INSERT INTO `tbl_mini_maxspeed` (`mini_maxspeed_id`, `mini_maxspeed`, `mini_speedometer_id`) VALUES
(1, '150km/hr', 1),
(2, '210km/hr', 2),
(3, '233km/hr', 3),
(4, '230km/hr', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini_name`
--

DROP TABLE IF EXISTS `tbl_mini_name`;
CREATE TABLE IF NOT EXISTS `tbl_mini_name` (
  `mini_name_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `mini_name` varchar(350) NOT NULL,
  `mini_img_id` tinyint(4) NOT NULL,
  `mini_price_id` tinyint(4) NOT NULL,
  `mini_engine_id` tinyint(4) NOT NULL,
  `mini_maxspeed_id` tinyint(4) NOT NULL,
  `mini_speedometer_id` tinyint(4) NOT NULL,
  `mini_tankcapacity_id` tinyint(4) NOT NULL,
  `mini_wheels_id` tinyint(4) NOT NULL,
  `mini_wheelsize_id` tinyint(4) NOT NULL,
  PRIMARY KEY (`mini_name_id`),
  KEY `mini_img_id` (`mini_img_id`),
  KEY `mini_price_id` (`mini_price_id`),
  KEY `mini_engine_id` (`mini_engine_id`),
  KEY `mini_maxspeed_id` (`mini_maxspeed_id`),
  KEY `mini_speedometer_id` (`mini_speedometer_id`),
  KEY `mini_tankcapacity_id` (`mini_tankcapacity_id`),
  KEY `mini_wheels_id` (`mini_wheels_id`),
  KEY `mini_wheelsize_id` (`mini_wheelsize_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='For car name and id';

--
-- Dumping data for table `tbl_mini_name`
--

INSERT INTO `tbl_mini_name` (`mini_name_id`, `mini_name`, `mini_img_id`, `mini_price_id`, `mini_engine_id`, `mini_maxspeed_id`, `mini_speedometer_id`, `mini_tankcapacity_id`, `mini_wheels_id`, `mini_wheelsize_id`) VALUES
(1, '2023 Mini Cooper SE 3 Door', 1, 1, 1, 1, 1, 1, 1, 1),
(2, '2023 Mini Cooper 3 Door', 2, 2, 2, 2, 2, 2, 1, 1),
(3, '2023 Mini Cooper S 5 Door', 3, 3, 3, 3, 3, 2, 1, 1),
(4, '2023 Mini Cooper S', 4, 4, 4, 4, 4, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini_price`
--

DROP TABLE IF EXISTS `tbl_mini_price`;
CREATE TABLE IF NOT EXISTS `tbl_mini_price` (
  `mini_price_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `mini_price` varchar(150) NOT NULL,
  PRIMARY KEY (`mini_price_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='mini price and id';

--
-- Dumping data for table `tbl_mini_price`
--

INSERT INTO `tbl_mini_price` (`mini_price_id`, `mini_price`) VALUES
(1, '$43,556'),
(2, '$34,056'),
(3, '$40756'),
(4, '$46356');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini_speedometer`
--

DROP TABLE IF EXISTS `tbl_mini_speedometer`;
CREATE TABLE IF NOT EXISTS `tbl_mini_speedometer` (
  `mini_speedometer_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `mini_speedometer` varchar(150) NOT NULL,
  PRIMARY KEY (`mini_speedometer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COMMENT='mini speedometer';

--
-- Dumping data for table `tbl_mini_speedometer`
--

INSERT INTO `tbl_mini_speedometer` (`mini_speedometer_id`, `mini_speedometer`) VALUES
(1, '7.3s'),
(2, '8s'),
(3, '6.9s'),
(4, '7.2s');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini_tankcapacity`
--

DROP TABLE IF EXISTS `tbl_mini_tankcapacity`;
CREATE TABLE IF NOT EXISTS `tbl_mini_tankcapacity` (
  `mini_tankcapacity_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `mini_tankcapacity` varchar(250) NOT NULL,
  PRIMARY KEY (`mini_tankcapacity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COMMENT='tankcapacity';

--
-- Dumping data for table `tbl_mini_tankcapacity`
--

INSERT INTO `tbl_mini_tankcapacity` (`mini_tankcapacity_id`, `mini_tankcapacity`) VALUES
(1, 'N/A'),
(2, '44L');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini_wheels`
--

DROP TABLE IF EXISTS `tbl_mini_wheels`;
CREATE TABLE IF NOT EXISTS `tbl_mini_wheels` (
  `mini_wheels_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `mini_wheels` varchar(350) NOT NULL,
  `mini_wheelsize_id` tinyint(4) NOT NULL,
  PRIMARY KEY (`mini_wheels_id`),
  KEY `mini_wheelsize_id` (`mini_wheelsize_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='wheels';

--
-- Dumping data for table `tbl_mini_wheels`
--

INSERT INTO `tbl_mini_wheels` (`mini_wheels_id`, `mini_wheels`, `mini_wheelsize_id`) VALUES
(1, '195/55 R16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mini_wheelsize`
--

DROP TABLE IF EXISTS `tbl_mini_wheelsize`;
CREATE TABLE IF NOT EXISTS `tbl_mini_wheelsize` (
  `mini_wheelsize_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `mini_wheelsize` varchar(250) NOT NULL,
  PRIMARY KEY (`mini_wheelsize_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COMMENT='wheelsize';

--
-- Dumping data for table `tbl_mini_wheelsize`
--

INSERT INTO `tbl_mini_wheelsize` (`mini_wheelsize_id`, `mini_wheelsize`) VALUES
(1, '6.5J x 16');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_mini_maxspeed`
--
ALTER TABLE `tbl_mini_maxspeed`
  ADD CONSTRAINT `tbl_mini_maxspeed_ibfk_1` FOREIGN KEY (`mini_speedometer_id`) REFERENCES `tbl_mini_speedometer` (`mini_speedometer_id`);

--
-- Constraints for table `tbl_mini_name`
--
ALTER TABLE `tbl_mini_name`
  ADD CONSTRAINT `tbl_mini_name_ibfk_1` FOREIGN KEY (`mini_img_id`) REFERENCES `tbl_mini_carimg` (`mini_img_id`),
  ADD CONSTRAINT `tbl_mini_name_ibfk_2` FOREIGN KEY (`mini_price_id`) REFERENCES `tbl_mini_price` (`mini_price_id`),
  ADD CONSTRAINT `tbl_mini_name_ibfk_3` FOREIGN KEY (`mini_engine_id`) REFERENCES `tbl_mini_engine` (`mini_engine_id`),
  ADD CONSTRAINT `tbl_mini_name_ibfk_4` FOREIGN KEY (`mini_maxspeed_id`) REFERENCES `tbl_mini_maxspeed` (`mini_maxspeed_id`),
  ADD CONSTRAINT `tbl_mini_name_ibfk_5` FOREIGN KEY (`mini_speedometer_id`) REFERENCES `tbl_mini_speedometer` (`mini_speedometer_id`),
  ADD CONSTRAINT `tbl_mini_name_ibfk_6` FOREIGN KEY (`mini_tankcapacity_id`) REFERENCES `tbl_mini_tankcapacity` (`mini_tankcapacity_id`),
  ADD CONSTRAINT `tbl_mini_name_ibfk_7` FOREIGN KEY (`mini_wheels_id`) REFERENCES `tbl_mini_wheels` (`mini_wheels_id`),
  ADD CONSTRAINT `tbl_mini_name_ibfk_8` FOREIGN KEY (`mini_wheelsize_id`) REFERENCES `tbl_mini_wheelsize` (`mini_wheelsize_id`);

--
-- Constraints for table `tbl_mini_wheels`
--
ALTER TABLE `tbl_mini_wheels`
  ADD CONSTRAINT `tbl_mini_wheels_ibfk_1` FOREIGN KEY (`mini_wheelsize_id`) REFERENCES `tbl_mini_wheelsize` (`mini_wheelsize_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
