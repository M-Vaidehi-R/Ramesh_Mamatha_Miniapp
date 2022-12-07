-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 07, 2022 at 08:56 PM
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
-- Database: `db_minicooper`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_miniapp`
--

DROP TABLE IF EXISTS `tbl_miniapp`;
CREATE TABLE IF NOT EXISTS `tbl_miniapp` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `mini_name` varchar(350) NOT NULL,
  `mini_img` varchar(250) NOT NULL,
  `mini_price` varchar(450) NOT NULL,
  `mini_engine` varchar(300) NOT NULL,
  `mini_speedometer` varchar(200) NOT NULL,
  `mini_maxspeed` varchar(250) NOT NULL,
  `mini_tankcapacity` varchar(200) NOT NULL,
  `mini_wheels` varchar(200) NOT NULL,
  `mini_wheelsize` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_miniapp`
--

INSERT INTO `tbl_miniapp` (`id`, `mini_name`, `mini_img`, `mini_price`, `mini_engine`, `mini_speedometer`, `mini_maxspeed`, `mini_tankcapacity`, `mini_wheels`, `mini_wheelsize`) VALUES
(1, '2023 Mini Cooper SE 3 Door', 'electric.png', '$43,556', 'Fully Electric Motor', '7.3s', '150km/hr', 'N/A', '195/55 R16', '6.5J x 16'),
(2, '2023 Mini Cooper 3 Door', '3door.png', '$34,056', '3 cylinder 12 valves, twin power turbo', '8s', '210km/hr', '44L', '195/55 R16', '6.5J x 16'),
(3, '2023 Mini Cooper S 5 Door', '5door.png', '$40756', '4 cylinder 16 valves, twin power turbo', '6.9s', '233km/hr', '44L', '195/55 R16', '6.5J x 16'),
(4, '2023 Mini Cooper S', 'convertible.png', '$46356', '4 cylinder 16 valves, twin scroll turbo', '7.2s', '230km/hr', '44L', '195/55 R16', '6.5J x 16');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
