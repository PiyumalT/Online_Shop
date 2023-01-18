-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 18, 2023 at 09:33 PM
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
-- Database: `online_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `line_1` varchar(25) NOT NULL,
  `line_2` varchar(25) NOT NULL,
  `city` varchar(20) NOT NULL,
  `province` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `zip_code` varchar(8) NOT NULL,
  `phone` varchar(15) NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

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
(38, 15, 'ffhggh', 'ghfghfg', 'fghgf', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(39, 15, 'ffhggh', 'ghfghfg', 'fghgf', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(40, 15, 'ffhggh', 'ghfghfg', 'fghgf', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(41, 15, 'ffhggh', 'ghfghfg', 'fghgf', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(42, 15, 'ffhggh', 'ghfghfg', 'fghgf', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(43, 15, 'ffhggh', 'ghfghfg', 'fghgf', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(44, 15, 'ffhggh', 'ghfghfg', 'fghgf', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(45, 15, 'ffhggh', 'ghfghfg', 'fghgf', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(46, 15, 'ffhggh', 'ghfghfg', 'fghgf', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(47, 15, 'name 2', 'line 1', 'line 2', 'city 1', 'prov 1', 'country 1', '858585', '1616262623'),
(48, 15, 'ffhggh', 'ghfghfg', '', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(49, 15, 'ffhggh', 'ghfghfg', '', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(50, 15, 'ffhggh', 'ghfghfg', '', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(51, 15, 'ffhggh', 'ghfghfg', '', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(52, 15, 'ffhggh', 'ghfghfg', '', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(53, 1, 'my namexaaa', 'ad 1cd', 'yfyvfy', 'cty 1 b', 'pr 1', 'sl2', '0001', '7771234561616'),
(54, 15, 'ffhggh', 'ghfghfg', 'bcvbc', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(55, 15, 'ffhggh', 'ghfghfg', 'bcvbc', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(56, 15, 'ffhggh', 'ghfghfg', 'bcvbc', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623'),
(57, 15, 'ffhggh', 'ghfghfg', 'bcvbc', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'admin@aa.aa', 'admin123');

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
(15, 23, '', 1, 10000),
(12, 1, 'blue', 1, NULL),
(13, 1, 'blue', 1, 5000),
(13, 1, 'yellow', 1, NULL),
(18, 7, 'cgcjcgg', 1, 55),
(17, 1, 'green', 1, 2500),
(19, 14, '', 1, 40000);

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
  `qty` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `name`, `description`, `price`, `options`, `qty`, `category`) VALUES
(9, 'car wheel', 'Vosarea Hubcap Car Wheel Cap Hubcap Auto Refit Accessories 14 Inch (Blue Black)', 23000, '', 5, 'car part'),
(10, 'Exide Battery', 'High performance vehicle battery in Srilanka', 25000, '', 10, 'Van part'),
(11, 'Van Radiator', 'Aluminium Maruti Van Radiator, Synthetic Liquid', 10000, '', 4, 'van part'),
(12, 'van radiator coolant', 'Super Long Life Radiator Coolant - 50/50 Premixed Pink 2.5L - Part no. TO0888980076', 1000, '', 100, 'van part'),
(13, 'Radiator fan', 'VAN WEZEL 3749745 Fan, radiator \r\nØ: 404mm', 1500, '', 15, 'Vehicle part'),
(14, 'Car shock absorber', 'ACDelco Specialty 519-2 Spring Assisted Shock Absorber', 40000, '', 5, 'Car part'),
(15, 'Break pads', 'Yamaha Fz V1,V2 Brake Pad', 1150, '', 9, 'Car part'),
(16, 'Break disc', 'Disc brakes are generally used in passenger cars', 10000, '1pcs, 2pcs, 4pcs', 4, 'Van part'),
(17, 'Steering wheel', 'Car steering wheel black artificial ', 10000, '', 5, 'Car part'),
(18, 'Van head light', 'Brand	Eagle Eyes\r\nLight Source Type	Halogen\r\nPosition	Front\r\nLens Color	Clear\r\n', 5000, '', 12, 'Van part'),
(19, 'Van signal light', 'Left and Right side signal light', 1000, '', 10, 'Van part'),
(20, 'Van park light', 'SPPC Bumper Lights Park\r\n\r\nBrand	SPPC\r\nPosition	Right\r\nLens Color	Clear\r\nItem Dimensions LxWxH	18 x 12 x 6 inche', 5000, '', 10, 'Van part'),
(21, 'Car wipers', 'For safety on the road, windshield glass is the most critical part.', 1000, '', 12, 'Car part'),
(22, 'gear box', 'An automatic transmission relies heavily on fluid pressure to ensure its components to function. Think of the pump as the heart of the transmission, which provides all the necessary fluid to work', 100000, '', 5, 'van part'),
(23, 'Clutch plate', 'Clutch Plate Set Alto / Alto 800', 10000, '', 5, 'Car part'),
(24, 'Automatic gear oil', 'API Performance Level\r\nZF TE-ML 04D, 14E, 16N, 20F, 25F\r\nPackaging\r\n1L, 4L, 5L, 20L, 25L, 208L', 10000, '', 5, 'oil'),
(25, 'Wheel cover', 'ALTO 800 WHEEL COVER\r\nRim size:15 inch ', 2500, '', 100, 'vehicle part'),
(26, 'Piston Kit', 'Engine Type: Air and gas compressor\r\nBrand: GRASSO\r\n\r\nCompressor Type: GEA GRASSO RC11\r\n\r\nSpare Type: PISTON ASSEMBLY\r\n\r\nAir Compressor Model: GRASSO RC 11\r\n\r\nUsage/Application: Refrigeration Compressor\r\n\r\nDimension: Standard', 50000, '', 10, 'Car part'),
(27, 'Diesel tank', 'FOR-03-A Rear 37 Gallon Diesel or Gas Tank for 1997-2010 Ford E350, E450, E550 E-Series Cutaway Van', 10000, '', 10, 'Van part'),
(28, 'Display screen', 'Smart touch screen multimedia system for automobile. Original design and 3D rendering image.', 50000, '', 5, 'Car part'),
(29, 'Door', 'Replacing a Car Door', 5000, '', 6, 'Car part'),
(30, 'Starter motor', 'It is help to start the engine', 15000, '', 2, 'Car part'),
(31, 'Silencer muffler', '85-91 Astro Van Safari Van 4.3L Muffler Exhaust Pipe System Made In USA', 3000, '', 5, 'Car part'),
(32, 'Silencer pipe hanger rubber', '4Pcs Exhaust Pipe Hanger Rubber Exhaust Mount Bracket Shock Absorbent Heavy Duty Exhaust Insulator Universal Car Vehicle Exhaust Tail Pipe Mount for Most Car Truck Van', 500, '', 100, 'Car part'),
(33, 'Radiator overflow tank', 'RASTP Universal 1L Coolant Reservoir Overflow Tank, Aluminum Coolant Radiator Tank,Reservoir Expansion,Black', 15000, '', 10, 'Van part'),
(34, 'Front glass', 'High quality auto windshield XYG glass RH300-FZ RD/LH/X for TOYOTA HIACE VAN 2019-\r\n', 35000, '', 12, 'Van part'),
(35, 'Gear lever', ' Gear lever of manual gearbox. Manual six gear car transmission shifter', 8000, '', 10, 'Car part'),
(36, 'Oil sump tank', 'Car Part Oil Sump Tank for Renault Kangoo 1.9D', 25000, '', 9, 'Car part'),
(37, 'Rear spoiler', 'SKU	RS20TYSUP-MB\r\nYear	2023, 2022, 2021, 2020\r\nMake	TOYOTA\r\nModel	SUPRA\r\nBody Style	3-DOOR LIFTBACK\r\nChassis	A90\r\nCarbon Type	CARBON FIBRE GLOSS FINISH\r\nStyle	MB\r\nProduct Category	REAR SPOILER', 15000, '', 2, 'Car part'),
(38, 'Amaron Battery', 'Long life; Zero maintenance.\r\nFully sealed and tested.\r\nHigh cranking power.\r\n24+24 months pro rata warranty.', 42000, '', 10, 'Van part'),
(39, 'Chassis', 'Full chassis hand made in the UK. Tried & tested in our own workshops. We are confident that this is the best quality chassis that has ever been manufactured for the Morris Minor commercial. ', 100000, '', 2, 'Van part'),
(40, 'Shaft', 'Hiace van transmission input shaft parts 33301-35071', 10000, '', 5, 'Van part'),
(41, 'Side mirror', 'Auto Interior Mirrors ', 3000, '', 15, 'Car part'),
(42, 'Dianamo', 'VY11 ?AD van ?Dynamo ?Alternator ?23100 4M400 ?Long-term storage product ?? ?Pipe 275283', 100000, '', 12, 'Van part'),
(43, 'Oil filter', 'oil filter isolated on white background. Automobile spare part', 2500, '', 100, 'Van part'),
(44, 'Air filter', 'Generic Universal Air Filter 150mm Car Performance High Flow Air Filters Head Car Air Filter', 1500, '', 120, 'Car part'),
(45, 'Injection pump', 'Model NO:\r\nBH4qt90L9\r\nCar Make\r\nChangzhou Cy490d\r\n', 60000, '', 5, 'Van part'),
(46, 'Seat belt', 'Universal Retractable 3 Point Auto Car Safety Seat Belt for All Car Black Color', 2000, '', 14, 'Car part'),
(47, 'Power steering pump', 'Power Steering Pump Compatible with 06-11 Honda Civic 1.8L Replace for 21-5456 56110-RNAA01 56110RNAA02', 10000, '', 10, 'Van part'),
(48, 'Break master pump', 'Gdst High Quality Car Part Brake Pump Brake Master Cylinder 8-94313-438-2 for Isuzu', 3000, '', 4, 'Car part'),
(49, 'Hand break lever', 'FIAT DOBLO CARGO 263 VAN 2010-2019 HAND BRAKE LEVER / HANDLE', 2000, '', 12, 'Car part'),
(50, 'Break cylinder', 'Brake Wheel Cylinders use Aluminum making them the high quality replacement for many vehicles', 1000, '', 10, 'Van part');

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
  `paid` int(11) DEFAULT NULL,
  `shipped` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

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
(19, 1, 25, 20000, '2023-01-09 19:25:57', 1, NULL),
(20, 1, 26, NULL, NULL, NULL, NULL),
(21, 1, 28, 10000, '2023-01-11 16:09:07', 1, NULL),
(23, 1, 30, NULL, NULL, NULL, NULL),
(68, 15, NULL, NULL, NULL, NULL, NULL),
(29, 15, 44, NULL, NULL, NULL, NULL),
(30, 15, NULL, NULL, NULL, NULL, NULL),
(69, 15, NULL, NULL, NULL, NULL, NULL),
(67, 15, 52, NULL, NULL, NULL, NULL),
(66, 15, 51, NULL, NULL, NULL, NULL),
(65, 15, 50, 55, '2023-01-16 08:11:52', 1, 1),
(64, 15, NULL, NULL, NULL, NULL, NULL),
(63, 15, 48, NULL, NULL, NULL, NULL),
(46, 15, NULL, NULL, NULL, NULL, NULL),
(47, 15, NULL, NULL, NULL, NULL, NULL),
(48, 15, 31, 7500, '2023-01-11 19:29:31', 1, NULL),
(49, 15, 32, NULL, NULL, NULL, NULL),
(50, 15, 34, 7500, '2023-01-12 10:29:22', 1, NULL),
(51, 15, NULL, NULL, NULL, NULL, NULL),
(53, 15, 36, 22500, '2023-01-12 11:10:00', 1, NULL),
(54, 15, NULL, NULL, NULL, NULL, NULL),
(55, 15, 37, 10000, '2023-01-12 12:45:53', 1, 1),
(56, 15, 38, NULL, NULL, NULL, NULL),
(57, 15, NULL, NULL, NULL, NULL, NULL),
(58, 15, 39, 0, '2023-01-13 07:49:50', 1, NULL),
(59, 15, 40, NULL, NULL, NULL, NULL),
(60, 15, 41, 2500, '2023-01-13 10:24:30', 1, 1),
(62, 15, 45, NULL, NULL, NULL, NULL),
(70, 1, 53, NULL, NULL, NULL, NULL),
(71, 15, 54, 23000, '2023-01-18 20:25:54', 1, NULL),
(72, 15, 55, 13000, '2023-01-18 20:28:45', 1, NULL),
(73, 15, 56, 10000, '2023-01-18 20:29:27', 1, NULL),
(74, 15, 57, 2000, '2023-01-18 20:31:00', 1, NULL);

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
(71, 11, 1, '', 10000),
(71, 16, 1, '', 10000),
(71, 48, 1, '', 3000),
(72, 11, 1, '', 10000),
(72, 48, 1, '', 3000),
(73, 23, 1, '', 10000),
(74, 46, 1, '', 2000);

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
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `otp` int(11) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_users`
--

INSERT INTO `temp_users` (`email`, `password`, `otp`) VALUES
('zxvcnv@dgss.vs', '123456', 123),
('sdfds@ff.sd', 'aaaaaaa', 123),
('sdf1121ds@ff.sd', 'AAAaaa123', 670794),
('sivatharshan81@gmail.com', '3e0d162db9f1d48e0a4d07aa3477bf7f', 645431);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `reg_date` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

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
(15, 'aa@aa.aa', 'AAAaaa123', NULL, '2023-01-10'),
(17, 'kaputa11@hamham.uk', 'AAAaaa123', NULL, '2023-01-16'),
(18, 'sehixej929@themesw.com', '2ceb5fcac1c6d780d4c26cfeb06c0df2', NULL, '2023-01-16'),
(19, 'gapadig392@fandua.com', '72a969cc5fe47f7d2cd499077772df08', NULL, '2023-01-18');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
