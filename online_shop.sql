-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 04, 2023 at 11:14 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(5) NOT NULL,
  `line_1` varchar(25) NOT NULL,
  `line_2` varchar(25) NOT NULL,
  `city` varchar(20) NOT NULL,
  `province` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `zip_code` varchar(8) NOT NULL,
  `phone` varchar(15) NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `password`) VALUES
('admin@aa.aa', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `options` varchar(15) NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`item_id`,`options`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `options` varchar(30) NOT NULL,
  `qty` int(8) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`order_id`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp_users`
--

DROP TABLE IF EXISTS `temp_users`;
CREATE TABLE IF NOT EXISTS `temp_users` (
  `email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `otp` int(8) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_users`
--

INSERT INTO `temp_users` (`email`, `password`, `otp`) VALUES
('sdfds@ff.sd', 'aaaaaaa', 123);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `reg_date` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `Name`, `reg_date`) VALUES
(1, 'aa@aa.com', 'a', 'a', '2023-01-04'),
(2, 'aaa@aaa.aa', 'a', NULL, '2023-01-03'),
(3, 'aaa@aaa.aa', 'a', NULL, '2023-01-03'),
(4, 'abc@a.c', 'a', NULL, '2023-01-03'),
(5, 'bb@b.b', 'b', NULL, '2023-01-03'),
(6, 'aaa@aa.aaaa', 'a', NULL, '2023-01-04'),
(7, 'aaa@aa.aaa', 'a', NULL, '2023-01-04'),
(8, 'aaasa@aa.aaa', 'aaaaa', NULL, '2023-01-04'),
(9, 'aadd@aa.ff', 'aaaaaa', NULL, '2023-01-04'),
(10, 'gdfg@dsgfd.fg', 'aaaaaaaa', NULL, '2023-01-04'),
(11, 'gfdg@dsgsdf.fdg', 'aaaaaa', NULL, '2023-01-04');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
