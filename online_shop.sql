-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 13, 2023 at 06:24 AM
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
  `name` varchar(50) NOT NULL,
  `line_1` varchar(25) NOT NULL,
  `line_2` varchar(25) NOT NULL,
  `city` varchar(20) NOT NULL,
  `province` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `zip_code` varchar(8) NOT NULL,
  `phone` varchar(15) NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `user_id`, `name`, `line_1`, `line_2`, `city`, `province`, `country`, `zip_code`, `phone`) VALUES
(1, 1, 'user test 1', 'ad 1', 'ad 2', 'cty 1', 'pr 1', 'sl', '0001', '0771234567'),
(2, 1, 'user test 111', 'ad 1', 'ad 2', 'cty 1', 'pr 1', 'sl', '0001', '0771234567'),
(3, 1, 'user test 1', 'ad 1cd', 'ad 2', 'cty 1', 'pr 1', 'sl', '0001', '0771234567'),
(4, 1, 'user test 1dfgdf', 'ad 1cd', 'ad 2', 'cty 1', 'pr 1', 'sl', '0001', '0771234567'),
(5, 1, 'user test 1dfgdffasg', 'ad 1cd', 'ad 2', 'cty 1', 'pr 1', 'sl', '0001', '0771234567'),
(6, 1, 'user test 1dfgdffasg', 'ad 1cd', 'ad 2', 'cty 1', 'pr 1', 'sl', '0001', '0771234567'),
(7, 1, 'user test 1dfgdffasg', 'ad 1cd', 'ad 2', 'cty 1', 'pr 1', 'sl', '0001', '0771234567'),
(8, 1, 'user test 1dfgdffasg', 'ad 1cd', 'ad 2', 'cty 1', 'pr 1', 'sl', '0001', '0771234567'),
(9, 1, 'user test 1dfgdffasg', 'ad 1cd', 'ad 2', 'cty 1', 'pr 1', 'sl', '0001', '0771234567'),
(10, 1, 'my name', 'ad 1cd', '', 'cty 1 b', 'pr 1', 'sl2', '0001', '9771234567'),
(11, 1, 'my name', 'ad 1cd', '', 'cty 1 b', 'pr 1', 'sl2', '0001', '9771234567'),
(12, 1, 'my name', 'ad 1cd', '', 'cty 1 b', 'pr 1', 'sl2', '0001', '9771234567'),
(13, 1, 'my namex', 'ad 1cd', '', 'cty 1 b', 'pr 1', 'sl2', '0001', '7771234567'),
(14, 1, 'my namex', 'ad 1cd', '', 'cty 1 b', 'pr 1', 'sl2', '0001', '7771234567'),
(15, 1, 'my namex', 'ad 1cd', '', 'cty 1 b', 'pr 1', 'sl2', '0001', '7771234567'),
(16, 1, 'my namexz', 'ad 1cd', '', 'cty 1 b', 'pr 1', 'sl2', '0001', '7771234567'),
(17, 1, 'my namex', 'ad 1cd', '', 'cty 1 b', 'pr 1', 'sl2', '0001', '7771234567'),
(18, 1, 'my namex', 'ad 1cd', '', 'cty 1 b', 'pr 1', 'sl2', '0001', '7771234567'),
(19, 1, 'my namex', 'ad 1cd', '', 'cty 1 b', 'pr 1', 'sl2', '0001', '7771234567'),
(20, 1, 'my namex', 'ad 1cd', '', 'cty 1 b', 'pr 1', 'sl2', '0001', '7771234567'),
(21, 1, 'my namex', 'ad 1cd', '', 'cty 1 b', 'pr 1', 'sl2', '0001', '7771234567'),
(22, 1, 'my namex', 'ad 1cd', '', 'cty 1 b', 'pr 1', 'sl2', '0001', '7771234561616'),
(23, 1, 'my namex', 'ad 1cd', 'yfyvfy', 'cty 1 b', 'pr 1', 'sl2', '0001', '7771234561616'),
(24, 1, 'my namexaaa', 'ad 1cd', 'yfyvfy', 'cty 1 b', 'pr 1', 'sl2', '0001', '7771234561616'),
(25, 13, 'fdsgsdgfds', 'fasfas', 'fasfasf', 'asfasfas', 'asfasfasfas', 'asfasfas', '4444646', '596494964'),
(26, 15, 'ffhggh', 'ghfghfg', 'fghgf', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(27, 15, 'ffhggh', 'ghfghfg', 'fghgf', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(28, 15, 'ffhggh', 'ghfghfg', 'fghgf', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(29, 15, 'ffhggh', 'ghfghfg', 'fghgf', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(30, 15, 'ffhggh', 'ghfghfg', 'fghgf', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(31, 15, 'ffhggh', 'ghfghfg', 'fghgf', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(32, 15, 'ffhggh', 'ghfghfg', 'fghgf', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(33, 15, 'ffhggh', 'ghfghfg', 'fghgf', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(34, 15, 'ffhggh', 'ghfghfg', 'fghgf', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(35, 15, 'ffhggh', 'ghfghfg', 'fghgf', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(36, 15, 'ffhggh', 'ghfghfg', 'fghgf', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(37, 15, 'ffhggh', 'ghfghfg', 'fghgf', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(38, 15, 'ffhggh', 'ghfghfg', 'fghgf', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623');

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
  `price` float DEFAULT NULL,
  PRIMARY KEY (`user_id`,`item_id`,`options`,`qty`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`user_id`, `item_id`, `options`, `qty`, `price`) VALUES
(1, 1, 'red', 1, NULL),
(12, 1, 'blue', 1, NULL),
(13, 1, 'blue', 1, 5000),
(13, 1, 'yellow', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `options` varchar(100) NOT NULL,
  `qty` int(8) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `name`, `description`, `price`, `options`, `qty`, `category`) VALUES
(1, 'sample toy car', 'remote control toy car for children and adults. brand-new toy car. rechargeable battery up to 5 hours works', 2500, 'red, blue, green, yellow, black, white, gray, random', 50, NULL),
(0, 'Sorry, invalid Item.', 'Unavailable item', 0, 'default ', 0, NULL),
(3, 'rtgrgr', 'fasfsa', 555, 'safasf', 563, 'dsfgsdg'),
(4, 'rtgrgr', 'fasfsa', 555, 'safasf', 563, 'dsfgsdg'),
(5, 'rtgrgr', 'fasfsa', 555, 'safasf', 563, 'dsfgsdg'),
(6, 'rtgrgr', 'fasfsa', 555, 'safasf', 563, 'dsfgsdg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_id` int(11) NOT NULL,
  `address_id` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `paid` int(5) DEFAULT NULL,
  `shipped` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `cus_id`, `address_id`, `price`, `date`, `paid`, `shipped`) VALUES
(1, 1, 0, 1000, '2023-01-09 00:00:00', 1, NULL),
(2, 1, NULL, NULL, NULL, NULL, NULL),
(3, 1, 14, NULL, NULL, NULL, NULL),
(4, 1, 15, NULL, NULL, NULL, NULL),
(5, 1, 18, NULL, NULL, NULL, NULL),
(6, 1, 19, 17500, '2023-01-09 16:07:37', 1, NULL),
(7, 1, 20, NULL, NULL, NULL, NULL),
(8, 1, 21, NULL, NULL, NULL, NULL),
(9, 1, 22, NULL, NULL, NULL, NULL),
(10, 1, 23, 22500, '2023-01-09 12:18:47', 1, NULL),
(11, 1, 24, NULL, NULL, NULL, NULL),
(12, 1, NULL, NULL, NULL, NULL, NULL),
(13, 1, NULL, NULL, NULL, NULL, NULL),
(14, 1, NULL, NULL, NULL, NULL, NULL),
(15, 1, NULL, NULL, NULL, NULL, NULL),
(16, 1, NULL, NULL, NULL, NULL, NULL),
(31, 15, NULL, NULL, NULL, NULL, NULL),
(18, 1, NULL, NULL, NULL, NULL, NULL),
(19, 1, 25, 20000, '2023-01-09 19:25:57', 1, NULL),
(20, 1, 26, NULL, NULL, NULL, NULL),
(21, 1, 28, 10000, '2023-01-11 16:09:07', 1, NULL),
(32, 15, NULL, NULL, NULL, NULL, NULL),
(23, 1, 30, NULL, NULL, NULL, NULL),
(33, 15, NULL, NULL, NULL, NULL, NULL),
(28, 15, NULL, NULL, NULL, NULL, NULL),
(29, 15, NULL, NULL, NULL, NULL, NULL),
(30, 15, NULL, NULL, NULL, NULL, NULL),
(34, 15, NULL, NULL, NULL, NULL, NULL),
(35, 15, NULL, NULL, NULL, NULL, NULL),
(36, 15, NULL, NULL, NULL, NULL, NULL),
(37, 15, NULL, NULL, NULL, NULL, NULL),
(38, 15, NULL, NULL, NULL, NULL, NULL),
(39, 15, NULL, NULL, NULL, NULL, NULL),
(40, 15, NULL, NULL, NULL, NULL, NULL),
(41, 15, NULL, NULL, NULL, NULL, NULL),
(42, 15, NULL, NULL, NULL, NULL, NULL),
(43, 15, NULL, NULL, NULL, NULL, NULL),
(44, 15, NULL, NULL, NULL, NULL, NULL),
(45, 15, NULL, NULL, NULL, NULL, NULL),
(46, 15, NULL, NULL, NULL, NULL, NULL),
(47, 15, NULL, NULL, NULL, NULL, NULL),
(48, 15, 31, 7500, '2023-01-11 19:29:31', 1, NULL),
(49, 15, 32, NULL, NULL, NULL, NULL),
(50, 15, 34, 7500, '2023-01-12 10:29:22', 1, NULL),
(51, 15, NULL, NULL, NULL, NULL, NULL),
(52, 15, 35, NULL, NULL, NULL, NULL),
(53, 15, 36, 22500, '2023-01-12 11:10:00', 1, NULL),
(54, 15, NULL, NULL, NULL, NULL, NULL),
(55, 15, 37, 10000, '2023-01-12 12:45:53', 1, NULL),
(56, 15, 38, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
CREATE TABLE IF NOT EXISTS `order_details` (
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `options` varchar(50) NOT NULL,
  `price` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `item_id`, `qty`, `options`, `price`) VALUES
(1, 1, 2, 'red', 22),
(18, 1, 1, 'green', 2500),
(19, 1, 7, 'random', 17500),
(3, 1, 8, 'random', 20000),
(4, 1, 1, 'yellow', 2500),
(5, 1, 2, 'yellow', 5000),
(6, 1, 2, 'yellow', 5000),
(6, 1, 5, 'red', 12500),
(7, 1, 1, 'black', 2500),
(8, 1, 1, 'white', 2500),
(9, 1, 2, 'green', 5000),
(10, 1, 9, 'yellow', 22500),
(11, 1, 4, 'green', 10000),
(12, 1, 1, 'blue', 2500),
(13, 1, 1, 'blue', 2500),
(14, 1, 1, 'blue', 2500),
(15, 1, 1, 'blue', 2500),
(16, 1, 1, 'blue', 2500),
(17, 1, 1, 'blue', 2500),
(18, 1, 1, 'blue', 2500),
(19, 1, 1, 'blue', 2500),
(20, 1, 4, 'red', 10000),
(21, 1, 4, 'red', 10000),
(22, 1, 1, 'red', 2500),
(23, 1, 1, 'red', 2500),
(25, 1, 50, 'black', 125000),
(26, 1, 50, 'black', 125000),
(27, 1, 50, 'black', 125000),
(28, 1, 3, 'gray', 7500),
(29, 1, 3, 'gray', 7500),
(30, 1, 3, 'gray', 7500),
(31, 1, 6, 'gray', 15000),
(46, 1, 7, 'gray', 17500),
(46, 1, 5, 'random', 12500),
(47, 1, 1, 'gray', 2500),
(47, 1, 2, 'random', 5000),
(48, 1, 1, 'gray', 2500),
(48, 1, 2, 'random', 5000),
(49, 1, 2, 'gray', 5000),
(49, 1, 2, 'random', 5000),
(50, 1, 1, 'gray', 2500),
(50, 1, 2, 'random', 5000),
(51, 1, 4, 'blue', 10000),
(51, 1, 1, 'gray', 2500),
(51, 1, 2, 'random', 5000),
(53, 1, 4, 'blue', 10000),
(53, 1, 5, 'blue', 12500),
(54, 1, 4, 'blue', 10000),
(55, 1, 4, 'red', 10000),
(56, 1, 2, 'green', 5000),
(56, 1, 8, 'red', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `temp_orders`
--

DROP TABLE IF EXISTS `temp_orders`;
CREATE TABLE IF NOT EXISTS `temp_orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `options` varchar(50) NOT NULL,
  `qty` int(11) NOT NULL,
  `address_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_orders`
--

INSERT INTO `temp_orders` (`order_id`, `user_id`, `item_id`, `options`, `qty`, `address_id`) VALUES
(15, 1, 1, 'red', 3, 1),
(14, 1, 1, 'black', 1, NULL),
(16, 1, 1, 'red', 3, 9),
(17, 1, 2, 'blue', 2, 11),
(18, 1, 1, 'green', 1, 12),
(19, 1, 7, 'random', 7, NULL);

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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

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
(11, 'gfdg@dsgsdf.fdg', 'aaaaaa', NULL, '2023-01-04'),
(12, 'sadas@fds.ad', 'aaaaaaa', NULL, '2023-01-09'),
(13, 'fdfgsd@dsgds.rfg', 'aaaaaa', NULL, '2023-01-09'),
(14, 'ddsdsds@ffd.ga', 'aaaaaaa', NULL, '2023-01-10'),
(15, 'aa@aa.aa', 'AAAaaa123', NULL, '2023-01-10');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
