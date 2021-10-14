-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 29, 2020 at 07:51 PM
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
-- Database: `techproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `rfid`
--

DROP TABLE IF EXISTS `rfid`;
CREATE TABLE IF NOT EXISTS `rfid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `surname` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `identification` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `credits` int(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rfid`
--

INSERT INTO `rfid` (`id`, `surname`, `name`, `identification`, `status`, `credits`) VALUES
(1, 'KHALIL', 'Georges', '9AD71078', 0, 15),
(2, 'THEVASURENDRAN', 'Tony', 'E2E6B22A', 0, 15),
(3, 'DE SILVA', 'Praveen', 'B24AFE23', 0, 15),
(4, 'ARNAL', 'Melchior', '1234ABCD', 0, 15),
(5, 'CHEN', 'Pascal', 'AAAA1111', 0, 15),
(6, 'DELAHEGUE', 'Emilien', '2222BBBB', 0, 15),
(7, 'CRENO', 'Danny', '3333CCCC', 0, 15),
(8, 'LANVERT', 'Olivier', '4444DDDD', 0, 15),
(9, 'BAZART', 'Clement', '5555EEEE', 0, 15),
(10, 'LEBLANC', 'Adrien', '6666FFFF', 0, 15),
(11, 'LAVILLAT', 'Bastien', '7777GGGG', 0, 15),
(12, 'TEMPESTA', 'Claudia', 'DDSS1212', 0, 15),
(13, 'VIEVILLE', 'Clement', 'AQEZ4124', 0, 15),
(14, 'LEFEBVRE', 'Faustine', 'PZSJ4223', 0, 15),
(15, 'CASAGRANDE', 'Jean', 'LDJD4928', 0, 15),
(16, 'PIERRE', 'Louis', 'IFJZ2442', 0, 15),
(17, 'PUYOU-LASCASSIES', 'Martin', 'FJDK4224', 0, 15),
(18, 'WISWESSER', 'Miriam', 'LDII9899', 0, 15),
(19, 'RONDOT', 'Paolo', 'JDDO1442', 0, 15),
(20, 'MARBEUF', 'Vincent', 'JDKS4923', 0, 15),
(21, 'BLOCK DE FRIBERG', 'Emmanuel', 'ODDQ1423', 0, 15),
(22, 'KAZOUINI', 'Mohamed-Amine', 'AKDO4243', 0, 15);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
