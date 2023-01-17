-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 17, 2023 at 06:28 AM
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
-- Database: `5-23`
--
CREATE DATABASE IF NOT EXISTS `5-23` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `5-23`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `CustomerID` varchar(10) NOT NULL,
  `FirstName` varchar(20) DEFAULT NULL,
  `LastName` varchar(20) DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Province` varchar(25) DEFAULT NULL,
  `PostCode` int(6) DEFAULT NULL,
  `Telephone` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `FirstName`, `LastName`, `Address`, `City`, `Province`, `PostCode`, `Telephone`) VALUES
('C0001', 'KASUN', 'SILVA', '55/5,A', 'KELANIYA', 'WESTERN', 12001, '0771234567'),
('C0002', 'DASUN', 'SILVA', '15/5,C', 'KELANIYA', 'WESTERN', 10001, '0771234568'),
('C0003', 'SUPUN', 'E.F.', '52/5,A', 'GALLE', 'SOUTHERN', 10901, '0771234569'),
('C0004', 'KASUN', 'A.B.', '55/5,B', 'GALLE', 'SOUTHERN', 10001, '0771234560'),
('C0005', 'DASUN', 'C.D.', '55/4,E', 'Colombo', 'WESTERN', 10501, '0711234501'),
('C0006', 'KASUN', 'U.D.', '55/4,E', 'KELANIYA', 'WESTERN', 10601, '0771234501'),
('C0007', 'SUPUN', 'C.D.', '55/4,E', 'Colombo', 'WESTERN', 15001, '0771234501'),
('C0008', 'A.B.C', 'KASUN', '55/4,E', 'KELANIYA', 'WESTERN', 10601, '0771234501'),
('C0009', 'A.B.', 'SUPUN', '55/4,E', 'KELANIYA', 'WESTERN', 10051, '0771234801'),
('C0010', 'KASUN', 'Perera', '55/4,E', 'Colombo', 'WESTERN', 50501, '0772534501'),
('C0011', 'DASUN', 'C.D', '55/4,E', 'KANDY', 'CENTRAL', 10001, '0771234501');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `Student_ID` varchar(7) NOT NULL,
  `Subject_ID` varchar(7) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_ID`, `Subject_ID`) VALUES
('St001', 'su002'),
('St002', 'su002'),
('St003', 'su001'),
('St004', 'su004');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
CREATE TABLE IF NOT EXISTS `subject` (
  `Subject_ID` varchar(7) NOT NULL,
  `Subject_name` varchar(7) NOT NULL,
  `Teacher_ID` varchar(7) NOT NULL,
  PRIMARY KEY (`Subject_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`Subject_ID`, `Subject_name`, `Teacher_ID`) VALUES
('su001', 'Science', 'T001'),
('su002', 'Maths', 'T002'),
('su003', 'History', 'T001');
--
-- Database: `abc`
--
CREATE DATABASE IF NOT EXISTS `abc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `abc`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `CustomerID` varchar(10) NOT NULL,
  `FirstName` varchar(20) DEFAULT NULL,
  `LastName` varchar(20) DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Province` varchar(25) DEFAULT NULL,
  `PostCode` int(6) DEFAULT NULL,
  `Telephone` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `FirstName`, `LastName`, `Address`, `City`, `Province`, `PostCode`, `Telephone`) VALUES
('C0001', 'KASUN', 'SILVA', '55/5,A', 'KELANIYA', 'WESTERN', 12001, '0771234567'),
('C0002', 'DASUN', 'SILVA', '15/5,C', 'KELANIYA', 'WESTERN', 10001, '0771234568'),
('C0003', 'SUPUN', 'E.F.', '52/5,A', 'GALLE', 'SOUTHERN', 10901, '0771234569'),
('C0004', 'KASUN', 'A.B.', '55/5,B', 'GALLE', 'SOUTHERN', 10001, '0771234560'),
('C0005', 'DASUN', 'C.D.', '55/4,E', 'Colombo', 'WESTERN', 10501, '0711234501'),
('C0006', 'KASUN', 'U.D.', '55/4,E', 'KELANIYA', 'WESTERN', 10601, '0771234501'),
('C0007', 'SUPUN', 'C.D.', '55/4,E', 'Colombo', 'WESTERN', 15001, '0771234501'),
('C0008', 'A.B.C', 'KASUN', '55/4,E', 'KELANIYA', 'WESTERN', 10601, '0771234501'),
('C0009', 'A.B.', 'SUPUN', '55/4,E', 'KELANIYA', 'WESTERN', 10051, '0771234801'),
('C0010', 'KASUN', 'Perera', '55/4,E', 'Colombo', 'WESTERN', 50501, '0772534501'),
('C0011', 'DASUN', 'C.D', '55/4,E', 'KANDY', 'CENTRAL', 10001, '0771234501');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `ItemNo` varchar(10) NOT NULL,
  `ItemName` varchar(15) DEFAULT NULL,
  `Descrip` varchar(30) DEFAULT NULL,
  `OnHand` int(5) DEFAULT NULL,
  `Cost` int(6) DEFAULT NULL,
  PRIMARY KEY (`ItemNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ItemNo`, `ItemName`, `Descrip`, `OnHand`, `Cost`) VALUES
('I001', 'SOAP_1', '100Gg', 5, 100),
('I002', 'SOAP_2', '100Gg', 50, 105),
('I003', 'SOAP_3', '50Gg BOLT', 10, 60),
('I004', 'SOAP_9', 'BOLT 100Gg', 500, 100),
('I005', 'SOAP_10', '100Gg', 50, 100),
('I006', 'Rice', 'white', 0, 150);

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE IF NOT EXISTS `orderitem` (
  `OrderID` varchar(10) NOT NULL,
  `ItemNo` varchar(10) NOT NULL,
  `Quantity` int(5) DEFAULT NULL,
  PRIMARY KEY (`OrderID`,`ItemNo`),
  KEY `ItemNo` (`ItemNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderitem`
--

INSERT INTO `orderitem` (`OrderID`, `ItemNo`, `Quantity`) VALUES
('O0001', 'I001', 5),
('O0001', 'I002', 5),
('O0001', 'I003', 50),
('O0001', 'I004', 5),
('O0001', 'I005', 50),
('O0001', 'I006', 5),
('O0002', 'I001', 3),
('O0003', 'I005', 10),
('O0004', 'I004', 5),
('O0005', 'I002', 7),
('O0006', 'I001', 5),
('O0007', 'I003', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `OrderID` varchar(10) NOT NULL,
  `OrderDate` date DEFAULT NULL,
  `CustomerID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `CustomerID` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `OrderDate`, `CustomerID`) VALUES
('O0001', '2020-03-10', 'C0002'),
('O0002', '2020-03-20', 'C0001'),
('O0003', '2020-04-10', 'C0003'),
('O0004', '2020-04-16', 'C0005'),
('O0005', '2020-04-18', 'C0004'),
('O0006', '2020-05-23', 'C0002'),
('O0007', '2020-06-10', 'C0001'),
('O0008', '2020-06-11', 'C0001'),
('O0009', '2020-07-15', 'C0003'),
('O0010', '2020-07-16', 'C0005');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  ADD CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`ItemNo`) REFERENCES `item` (`ItemNo`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`);
--
-- Database: `microtech`
--
CREATE DATABASE IF NOT EXISTS `microtech` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `microtech`;

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `usermail` varchar(50) NOT NULL,
  `addr_line1` varchar(200) NOT NULL,
  `addr_line2` varchar(200) NOT NULL,
  `city` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `zip` int(7) NOT NULL,
  PRIMARY KEY (`usermail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`usermail`, `addr_line1`, `addr_line2`, `city`, `country`, `zip`) VALUES
('aaa@aa.aaa', 'aaaa', 'aaaaa', 'aa', 'aa', 1010),
('hasinisama99@gmail.com', 'No: 277/C', 'Makewita', 'Ja-Ela', 'Sri Lanka', 11350);

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `email` varchar(50) NOT NULL,
  `passwd` varchar(40) NOT NULL,
  `f_name` varchar(30) DEFAULT NULL,
  `l_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`email`, `passwd`, `f_name`, `l_name`) VALUES
('hasini@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Hasini', 'Samarathunga'),
('kajanthan@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Suresh', 'Kajanthan'),
('krishan@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Krishan', 'Shamod'),
('pasan@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Pasan', 'Jayawardene');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `usermail` varchar(50) NOT NULL,
  `itemid` varchar(10) NOT NULL,
  `no_of_items` int(4) NOT NULL,
  PRIMARY KEY (`usermail`,`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`usermail`, `itemid`, `no_of_items`) VALUES
('aaa@aa.aaa', '49', 1),
('hasinisama99@gmail.com', '01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `item_id` varchar(10) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `category` varchar(20) NOT NULL,
  `brand` varchar(20) NOT NULL,
  `item_price` int(7) NOT NULL,
  `img_name1` varchar(100) NOT NULL,
  `img_name2` varchar(100) DEFAULT NULL,
  `img_name3` varchar(100) DEFAULT NULL,
  `img_name4` varchar(100) DEFAULT NULL,
  `long_description` varchar(4000) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `category`, `brand`, `item_price`, `img_name1`, `img_name2`, `img_name3`, `img_name4`, `long_description`) VALUES
('01', 'Samsung Galaxy Note20 5G Gold', 'smartphone', 'samsung', 174990, 'images/products/1.0.webp', 'images/products/1.1.webp', 'images/products/1.2.jpeg', 'images/products/1.3.webp', 'It\'s the ultimate gaming experience that goes where you go. It\'s a director-grade 8K video camera. It\'s a multitasking computer suite. It\'s anything but your average smartphone. Introducing the Power phone that forever changes how you work and play.'),
('02', 'Samsung Galaxy Z Fold Black', 'smartphone', 'samsung', 399990, 'images/products/2.0.jpg', 'images/products/2.1.jpg', 'images/products/2.2.jpg', 'images/products/2.3.jpg', 'This is everything you\'d want in a premium, durable, 5G smartphone. Then we made it unfold - revealing a massive screen so you can watch, work and play like never before.'),
('03', 'Huawei Watch GT 2 Pro', 'smartwatch', 'huawei', 52199, 'images/products/3.0.jpg', 'images/products/3.1.jpg', 'images/products/3.2.jpg', 'images/products/3.3.jpg', 'The wear-resistant sapphire watch dial pairs seamlessly with the titanium frame for a lightweight and solid design. The glossy and skin-friendly ceramic back ensures a comfortable wearing. With sophisticated craftsmanship, HUAWEI WATCH GT 2 Pro reveals a refined taste with perfect balance of art and technology.'),
('04', 'Sony Mark 4 White', 'audio', 'sony', 74999, 'images/products/4.0.jpg', 'images/products/4.1.jpg', 'images/products/4.2.jpg', 'images/products/4.3.jpg', 'No matter where you go, the Sony WH-1000XM4 Wireless Noise-Canceling Over-Ear Headphones deliver pristine sound quality while automatically adjusting ambient sound according to your activity and registered locations, leaving your hands and mind free from the hassle of changing settings just to hear what you want to hear. '),
('05', 'MacBook Air M1 8GB 256GB SpaceGray', 'laptop', 'apple', 255000, 'images/products/5.0.webp', 'images/products/5.1.webp', 'images/products/5.2.webp', 'images/products/5.3.webp', 'Thinnest, lightest notebook, completely transformed by the Apple M1 chip. CPU speeds up to 3.5x faster. GPU speeds up to 5x faster. Our most advanced Neural Engine for up to 9x faster machine learning. The longest battery life ever in a MacBook Air. And a silent, fan less design. This much power has never been this ready to go.'),
('06', 'Apple ipad Pro 11 256GB SpaceGray', 'tablet', 'apple', 275999, 'images/products/6.0.jpg', 'images/products/6.1.jpg', 'images/products/6.2.jpg', 'images/products/6.3.jpg', 'The ultimate iPad experience. Now with breakthrough M1 performance, a breathtaking XDR display, and blazing‑fast 5G wireless.'),
('07', 'Samsung Travel Adapter 45W', 'accessories', 'samsung', 7190, 'images/products/7.0.jpg', 'images/products/7.1.jpg', 'images/products/7.2.jpg', 'images/products/7.3.jpg', 'Plug your Galaxy Note10+ into the 45W Travel Adapter to fully charge with incredible speed. More powerful than previous travel adapters, it harnesses the power of Super Fast Charging 2.0 makes sure you\'re not down for long.'),
('08', 'Samsung Galaxy Watch Active 2', 'smartwatch', 'samsung', 66290, 'images/products/8.0.jpg', 'images/products/8.1.jpg', 'images/products/8.2.jpg', 'images/products/8.3.jpg', 'Stay connected with a lifestyle and health partner on your wrist that gives you advice in the moment. Get more precise information on your health on a bigger screen with a watch that has your wellness in mind. Galaxy Watch Active2 tells you what you need to know when you need it.'),
('09', 'OnePlus 8T', 'smartphone', 'oneplus', 129900, 'images/products/9.0.png', 'images/products/9.1.png', 'images/products/9.2.png', 'images/products/9.3.png', 'The OnePlus 8T is shaping up as an excellent premium mid-ranger with a slew of flagship features - a 120Hz Fluid AMOLED, the latest Snapdragon 865 chip, a promising quad-camera with improved low-light performance, stereo speakers, and probably OnePlus best achievement yet - a larger battery with blazing-fast Warp Charge at 65W.'),
('10', 'OnePlus Nord N100', 'smartphone', 'oneplus', 42900, 'images/products/10.0.png', 'images/products/10.1.png', 'images/products/10.2.png', 'images/products/10.3.png', 'OnePlus Nord N100 is powered by an octa-core Qualcomm Snapdragon 460 processor. It comes with 4GB of RAM. The OnePlus Nord N100 runs Android 10 and is powered by a 5000mAh battery. The OnePlus Nord N100 supports proprietary fast charging.'),
('11', 'OnePlus Buds Pro Glossy White', 'audio', 'oneplus', 33969, 'images/products/11.0.png', 'images/products/11.1.png', 'images/products/11.2.png', 'images/products/10.3.png', 'Hear the Unheard. Smart Adaptive Noise Cancellation. 10 minutes for 10 hours.'),
('12', 'OnePlus Bullets Wireless Z', 'audio', 'oneplus', 11990, 'images/products/12.0.jpeg', 'images/products/12.1.jpeg', NULL, NULL, 'A 10 minute charge for 10 hours of musicYour Bullets Wireless Z is ready before you are. A single 10 minute charge gives you 10 hours of music and movies. A full charge provides up to 20 hours of battery life, so you can keep the music going.'),
('13', 'OnePlus Warp Charge 50 Wireless Charger White', 'accessories', 'oneplus', 13999, 'images/products/13.0.png', 'images/products/13.1.png', 'images/products/13.2.png', 'images/products/13.3.png', 'Dual-coil charging system allows to charge your phone when placed either vertically or horizontally. Fully charges your OnePlus 9 Pro from 1% to 100% in just 43 minutes.'),
('14', 'OnePlus Warp Charge Type-C Cable 100 cm', 'accessories', 'oneplus', 4999, 'images/products/14.0.png', 'images/products/14.1.png', NULL, NULL, 'At first glance, the OnePlus Warp Charge Type-C Cable might not look all that different from the OnePlus charging cables you’ve come to know and love. It’s still instantly recognizable and tangle-free thanks to our trademark flat, rollable design - all in quintessential OnePlus red and white. But, the similarities end there. Underneath the premium silicone coating, broad internal cabling made of copper and nickel ensures that power reaches your OnePlus 7 Pro, OnePlus 7, OnePlus 6T, OnePlus 6, OnePlus 5T, OnePlus 5, OnePlus 3T or OnePlus 3 faster and cooler than ever before.'),
('15', 'OnePlus Nord N200 5G', 'smartphone', 'oneplus', 43200, 'images/products/15.0.png', 'images/products/15.1.png', 'images/products/15.2.png', 'images/products/15.3.png', '5G Enabled (5G service only available on T-Mobile and Google Fi) – Powered by the latest Qualcomm 5G chipset, the OnePlus Nord N200 5G allows you to download or stream your favorite TV shows, connect with your social media, and play online multiplayer at blazing fast speeds.'),
('16', 'OnePlus 8', 'smartphone', 'oneplus', 128000, 'images/products/16.0.png', 'images/products/16.1.png', 'images/products/16.2.png', 'images/products/16.3.png', 'The all new OnePlus 8 Powered by Qualcomm Snapdragon 865. Supports 5G Technology and comes equipped with 90hz Fliud display, a Rear Triple camera Setup with a capability to shoot 4K video @ 30/60 FPS.'),
('17', 'OnePlus Watch Midnight Black', 'smartwatch', 'oneplus', 35762, 'images/products/17.0.png', 'images/products/17.1.png', 'images/products/17.2.png', NULL, 'The all new OnePlus Watch Midnight Black: 46mm dial, Warp Charge, 110+ Workout Modes, Smartphone Music,SPO2 Health Monitoring & 5ATM + IP68 Water Resistance (Currently Android only)'),
('18', 'Huawei Matebook X Pro – Core i7 10th Gen 16GB RAM 1TB SSD', 'laptop', 'huawei', 359900, 'images/products/18.0.jpeg', 'images/products/18.1.jpeg', 'images/products/18.2.jpeg', 'images/products/18.3.jpeg', 'With an industry-leading processor and 3K FullView Display, HUAWEI MateBook X Pro takes your experience beyond the extraordinary.'),
('19', 'Huawei Matebook 16', 'laptop', 'huawei', 71500, 'images/products/19.0.png', 'images/products/19.1.png', 'images/products/19.2.png', NULL, 'The powerful Windows 10 operating system makes it easy to check E-mail and manage digital files. Powered by AMD Ryzen 7 5800H and Ryzen 5 5600H processor, designed with HDMI output, featuring powerful graphics, all of this give users a full suite for using dominance and offer users a truly seamless using experience.'),
('20', 'HUAWEI MatePad Pro 11', 'tablet', 'huawei', 149900, 'images/products/20.0.jpeg', 'images/products/20.1.jpeg', NULL, NULL, 'Bring your vision to a borderless world. Capture your inspiration with a masterstroke. Amp up your productivity by upgraded experience. HUAWEI MatePad Pro, expand your creativity.'),
('21', 'HUAWEI Tab T8', 'tablet', 'huawei', 28999, 'images/products/21.0.jpeg', 'images/products/21.1.jpeg', NULL, NULL, 'Featuring ultra-slim 4.9 mm side bezels and 80% screen-to-body ratio, the HUAWEI MatePad T 8 gives you ample on-screen room for immersive entertainment.'),
('22', 'Huawei MatePad T 10s', 'tablet', 'huawei', 52999, 'images/products/22.0.jpeg', 'images/products/22.1.jpeg', NULL, NULL, 'You know we have the best tablets for you to have fun. One of the best models you will find is the new Huawei Matepad T10s, a spectacular 10.1 inch tablet. One of the most interesting tablets in its range because it has everything you need to enjoy what you like best.'),
('23', 'Huawei Y7A', 'smartphone', 'huawei', 37900, 'images/products/23.0.jpeg', 'images/products/23.1.jpeg', 'images/products/23.2.jpeg', 'images/products/23.3.jpeg', 'HUAWEI Y7a 4GB+128GBThe 4 GB RAM effectively allows you to run multiple Apps simultaneously and switch between them fluently, while the 128 GB ROM brings you a large storage for all your favourite videos, photos and games.'),
('24', 'Galaxy S20 Ultra 5G', 'smartphone', 'samsung', 148990, 'images/products/24.0.jpg', 'images/products/24.1.jpg', 'images/products/24.2.jpg', NULL, 'The ultimate 5G powerhouse with an unparalleled new camera and unprecedented 100x Space Zoom. Bring a pro-level studio wherever you go with  super-speed processing and complete pro kit of camera features – including the groundbreaking 100x Space Zoom and cutting-edge AI – in an immersive 6. 9” Infinity-O display. Do more of what you love with the device that gives you more.'),
('25', 'Galaxy Z Flip3 5G', 'smartphone', 'samsung', 180000, 'images/products/25.0.webp', 'images/products/25.1.webp', 'images/products/25.2.webp', 'images/products/25.3.webp', 'Samsung Galaxy Z Flip 3 5G comes with Android 11, 6.7 inches Foldable Dynamic AMOLED Display, Qualcomm Snapdragon 888 5G Chipset, Octa core CPU, 8GB RAM and 128GB ROM / 256GB ROM, Non-removable Li-Po 3300 mAh battery.'),
('26', 'Galaxy Tab S7 FE', 'tablet', 'samsung', 126000, 'images/products/26.0.webp', 'images/products/26.1.webp', 'images/products/26.2.webp', 'images/products/26.3.webp', 'Strike a perfect balance between study time and play time with Samsung Galaxy Tab S7 FE, the tablet designed to bring your projects to life.'),
('27', 'Galaxy Buds2', 'audio', 'samsung', 35400, 'images/products/27.0.webp', 'images/products/27.1.webp', 'images/products/27.2.webp', 'images/products/27.3.webp', 'With audio quality this good, you’ll feel the thump of every baseline and strum of every guitar right in your core. With Active Noise Cancellation and Ambient Sound, enjoy peace and quiet while you work from home or take calls without missing what’s happening around you.'),
('28', 'Galaxy Chromebook 2, Fiesta Red', 'laptop', 'samsung', 199800, 'images/products/28.0.webp', 'images/products/28.1.webp', 'images/products/28.2.webp', 'images/products/28.3.webp', 'Work-life balance has never been better, thanks to the world’s first QLED Chromebook. Dive into your favorite pastimes or present your next big idea with a larger-than-life,  vibrant color display.'),
('29', 'Galaxy Watch4 Silver', 'smartwatch', 'samsung', 89800, 'images/products/29.0.webp', 'images/products/29.1.webp', NULL, NULL, 'The new Galaxy Watch4, the watch that knows you best. Upgrade, trade in or switch to the latest Galaxy Watch with exclusive offers on Microtech'),
('30', 'Redmi 9A , SeaBlue', 'smartphone', 'xiaomi', 19900, 'images/products/30.0.jpeg', 'images/products/30.1.jpeg', 'images/products/30.2.jpeg', 'images/products/30.3.jpeg', 'Redmi 9A brings absolute delight for those who like all things entertainment! Delivering an immersive viewing experience, the Redmi 9A comes with everything you need in a smartphone'),
('31', 'Apple Watch SE (2020) White', 'smartwatch', 'apple', 102541, 'images/products/31.0.jpg', NULL, NULL, NULL, 'Features the same larger display size as Series 6, fall detection, a compass, and an always-on altimeter'),
('32', 'Apple Watch 6 (2020)', 'smartwatch', 'apple', 121999, 'images/products/32.0.png', NULL, NULL, NULL, 'The most advanced Apple Watch yet, with a blood oxygen sensor and app, the ECG app, and the Always-On Retina display.'),
('33', 'Apple Mac Book Pro M1 (2020) SPACE GREY', 'laptop', 'apple', 377582, 'images/products/33.0.jpg', NULL, NULL, NULL, 'The Apple M1 chip gives the 13‑inch MacBook Pro speed and power beyond belief. With up to 2.8x CPU performance. Up to 5x the graphics speed. Our most advanced Neural Engine for up to 11x faster machine learning. And up to 20 hours of battery life — the longest of any Mac ever. It’s our most popular pro notebook, taken to a whole new level.'),
('34', 'Apple Pencil (2nd Generation)', 'accessories', 'apple', 31999, 'images/products/34.0.jpeg', NULL, NULL, NULL, 'Intuitive, precise and magical, the latest Apple Pencil makes note-taking, writing and drawing even better. Apple Pencil magnetically attaches to iPad Pro and charges wirelessly, so it s always ready when you need it. And it s easy to switch between the tools you need with a simple double-tap. Go ahead, make your mark.'),
('35', 'iPhone 12 - Black 256GB', 'smartphone', 'apple', 212999, 'images/products/35.0.jpeg', NULL, NULL, NULL, 'A superpowerful chip. 5G speed. An advanced dual-camera system. A Ceramic Shield front that\'s tougher than any smartphone glass. And a bright, beautiful OLED display. iPhone 12 has it all — in two great sizes.'),
('36', 'Asus Zenbook Pro Duo 15 OLED', 'laptop', 'asus', 590000, 'images/products/36.0.jpg', NULL, NULL, NULL, 'Take your creativity and productivity to the next level with the groundbreaking ASUS ZenBook Pro Duo! Designed to give you the ultimate edge in workflow efficiency, this powerful RTX Studio Laptop features a full-width 4K ASUS ScreenPad™ Plus that works seamlessly with the main 4K UHD OLED display. It’s never been this easy to harness your full creative power.\r\n'),
('37', 'ASUS X512DA VivoBook 2021', 'laptop', 'asus', 158999, 'images/products/37.0.jpg', NULL, NULL, NULL, 'Thin and Light Laptop 15.6 FHD AMD 4-Core RYZEN 5 3500U 8GB DDR4 512GB NVMe SSD AMD Radeon Vega 8 Graphics USB-C WiFi Webcam HDMI Windows 10 Home w/ RE 32GB USB 3.0 Drive'),
('38', 'Mi Watch Lite', 'smartwatch', 'xiaomi', 12499, 'images/products/38.0.jpeg', NULL, NULL, NULL, 'Mi Watch Lite is not just a smart watch, it has its own unique personality.\r\nThree color options for the watch case, five color options for the strap. Over 100 themed watch faces and watch face function\r\ncustomization* to satisfy your ever-changing style.'),
('39', 'Xiaomi Redmi 10A', 'smartphone', 'xiaomi', 22900, 'images/products/39.0.jpeg', NULL, NULL, NULL, 'The large display allows you to fully immerse yourself in the virtual world. With blue light protection certification, your eyes will be\r\nat ease even after spending long hours on your phone. With 34 days of standby-battery time, this battery provides power that lasts.'),
('40', 'Xiaomi Pad 5', 'tablet', 'xiaomi', 54000, 'images/products/40.0.jpeg', NULL, NULL, NULL, 'The large 11\" screen, stylish design and top-of-the-line configuration is guaranteed to meet your needs across a wide range of scenarios. The Qualcomm® Snapdragon™ 860 and 120Hz high refresh rate provides you with a super smooth experience. The extra-large 8720mAh(typ) battery provides you with the power that you want.'),
('41', 'SAMSUNG GALAXY TAB A 10.1 (LTE)', 'tablet', 'samsung', 57490, 'images/products/41.0.jpg', NULL, NULL, NULL, 'A 25.54cm (10.1\") screen with narrow bezels for the ultimate viewing experience while comfortably holding in your hands. Dual stereo speakers with Dolby 3D Atmos surround sound to provide a truly cinematic experience. The massive 6,150 mAh battery means more fun and less breaks. For entertainment goes on and on. Kids can enjoy fun apps and interactive games in Kids Mode, Parental Control lets you protect them from potentially harmful content, and limit their screen time as per your choosing'),
('42', 'Samsung GALAXY TAB S7', 'tablet', 'samsung', 160990, 'images/products/42.0.jpeg', NULL, NULL, NULL, 'Meet Galaxy Tab S7 and S7+. Work and play on the ultra-smooth 120Hz display, powered by our most powerful chipset. Get a PC-like experience with the snap of a keyboard, or use the ultra-low latency S Pen to write like never before. An immersive tablet experience changing the way you work and play.'),
('43', 'SONY XG500 X-Series Portable Wireless Speaker', 'audio', 'sony', 43999, 'images/products/43.0.jpeg', NULL, NULL, NULL, 'Life should be lived at full volume. That means getting your friends together, turning up the music to full volume and dancing all night to a clear, rich sound. With our new X-Series range of speakers, you can make the most of every single moment, power parties you’ll remember forever, and always live your life out loud.'),
('44', 'SAMSUNG Galaxy S21 Ultra 5G S-Pen', 'accessories', 'samsung', 9900, 'images/products/44.0.jpeg', NULL, NULL, NULL, 'Scribble, sketch and jot down ideas with ease, like you would when writing in a notebook. S Pen\'s 4096 pressure levels and 0.7mm tip deliver that familiar writing experience, without the ink.'),
('45', 'Apple USB-C Digital AV Multiport Adapter', 'accessories', 'apple', 16799, 'images/products/45.0.jpeg', NULL, NULL, NULL, 'The USB-C Digital AV Multiport Adapter lets you connect your USB-C-enabled Mac or iPad to an HDMI display, while also connecting a standard USB device and a USB-C charging cable. This adapter allows you to mirror your Mac or iPad display to your HDMI-enabled TV or display.'),
('46', 'Xiaomi MI Portable Speaker', 'audio', 'xiaomi', 4990, 'images/products/46.0.jpeg', NULL, NULL, NULL, 'Bluetooth 5.0, stable connection and fast transmission. Two speakers can be interconnected to form a wireless stereo speaker. A key to answer / end a call. 2000mAh large-capacity battery, long battery life.'),
('47', 'Sony WF-XB700 True Wireless Earbuds', 'audio', 'sony', 30568, 'images/products/47.0.jpeg', NULL, NULL, NULL, 'Sony WF-XB700 EXTRA BASS True Wireless EarbudsBoost your vibesThe WF-XB700 headphones combine truly wireless freedom with a bold, distinctive look. Ergonomic design ensures hour after hour of listening comfort.Long battery life and quick chargingEnjoy up to 18 hours of listening thanks to the handy charging case. And if you’re in a hurry, 10 minutes’ quick charging gives you up to 60 minutes of music playbackA secure fit with Ergonomic Tri-hold structureA Bluetooth chip that transmits sound to left and right ears simultaneously, coupled with optimized antenna design, ensures a stable connection and outstanding listening. Low audio latency makes for enjoyable video viewing too.Water resistant for everyday useWith an IPX4 water-resistance rating, splashes and sweat won’t stop these headphones?so you can keep on moving to the music.Stable, reliable Bluetooth connectivityA Bluetooth chip, which transmits sound to left and right ears simultaneously, coupled with optimized antenna design ensures a stable connection and outstanding listening. Low audio latency makes for enjoyable viewing too.Choose the right size for youWith four sizes of hybrid silicone rubber earbuds included you can find the perfect fit for your ears to maximize sound quality and minimize outside noise.'),
('48', 'Apple AirPods Max 2020 Sky Blue', 'audio', 'apple', 129999, 'images/products/48.0.jpeg', NULL, NULL, NULL, 'introducing AirPods Max — a perfect balance of exhilarating high-fidelity audio and the effortless magic of AirPods. The ultimate personal listening experience is here.'),
('49', 'Apple Mac Book Pro 16” - Space Gray', 'laptop', 'apple', 432999, 'images/products/49.0.png', NULL, NULL, NULL, 'Designed for those who defy limits and change the world, the 16-inch MacBook Pro is by far the most powerful notebook we have ever made. With an immersive Retina display, superfast processors, advanced graphics, the largest battery capacity ever in a MacBook Pro, Magic Keyboard, and massive storage, it\'s the ultimate pro notebook for the ultimate user.'),
('50', 'KDH Beats pro max', 'audio', 'beats', 84499, 'images/products/50.0.jpg', 'images/products/50.1.jpg', NULL, NULL, 'High-Fidelity Audio The KDH-designed driver delivers high-fidelity playback with ultra-low distortion across the entire audible range. Noise Control Active Noise Cancellation for immersive sound. Transparency mode to hear the world around you.');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
CREATE TABLE IF NOT EXISTS `orderdetails` (
  `order_id` varchar(10) NOT NULL,
  `item_id` varchar(10) NOT NULL,
  `no_of_items` int(4) NOT NULL,
  PRIMARY KEY (`order_id`,`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`order_id`, `item_id`, `no_of_items`) VALUES
('1', '01', 1),
('2', '03', 1),
('3', '04', 1),
('4', '07', 2),
('5', '06', 1),
('6', '05', 1),
('7', '01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` varchar(10) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `price` int(7) NOT NULL,
  `order_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_email`, `price`, `order_time`) VALUES
('1', 'hasinisama99@gmail.com', 174990, '2021-09-29 16:01:49'),
('2', 'hasinisama99@gmail.com', 52199, '2021-09-29 16:01:57'),
('3', 'hasinisama99@gmail.com', 74999, '2021-09-29 16:02:03'),
('4', 'hasinisama99@gmail.com', 14380, '2021-09-29 16:02:18'),
('5', 'hasinisama99@gmail.com', 275999, '2021-09-29 16:02:31'),
('6', 'hasinisama99@gmail.com', 255000, '2021-09-29 16:02:36'),
('7', 'hasinisama99@gmail.com', 174990, '2021-09-29 16:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE IF NOT EXISTS `stock` (
  `item_id` varchar(10) NOT NULL,
  `no_of_items` int(3) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`item_id`, `no_of_items`) VALUES
('001', 10),
('002', 10),
('003', 10),
('004', 10),
('005', 10),
('006', 0),
('007', 0),
('008', 0),
('009', 0),
('010', 0),
('011', 0),
('012', 0),
('013', 0),
('014', 0),
('015', 0),
('016', 0),
('017', 0),
('018', 0),
('019', 0),
('020', 0),
('021', 0),
('022', 0),
('023', 0),
('024', 0),
('025', 0),
('026', 0),
('027', 0),
('028', 0),
('029', 0),
('030', 0),
('031', 0),
('032', 0),
('033', 0),
('034', 0),
('035', 0),
('036', 0),
('037', 0),
('038', 0),
('039', 0),
('040', 0),
('041', 0),
('042', 0),
('043', 0),
('044', 0),
('045', 0),
('046', 0),
('047', 10),
('048', 10),
('049', 8),
('050', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `email` varchar(50) NOT NULL,
  `f_name` varchar(30) NOT NULL,
  `l_name` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email_verification_link` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `f_name`, `l_name`, `password`, `email_verification_link`, `email_verified_at`, `status`) VALUES
('aaa@aa.aaa', 'aaaaaa', 'aaaaa', '0cc175b9c0f1b6a831c399e269772661', '21c22f8328db83a4ff0d9ce983498d6c7118', NULL, 1),
('hasinisama99@gmail.com', 'Hasini', 'Samarathunga', '81dc9bdb52d04dc20036dbd8313ed055', '6008ad9b551eba21f097ba66b63f3bc53631', '2021-09-26 16:58:28', 1);
--
-- Database: `online_shop`
--
CREATE DATABASE IF NOT EXISTS `online_shop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `online_shop`;

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
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

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
(52, 15, 'ffhggh', 'ghfghfg', '', 'fghfg', 'ghfghgf', 'ghfghfg', 'fghfg', '1616262623');

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
(13, 1, 'yellow', 1, NULL),
(18, 7, 'cgcjcgg', 1, 55),
(17, 1, 'green', 1, 2500),
(15, 3, 'safasf', 561, 308550);

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`item_id`, `name`, `description`, `price`, `options`, `qty`, `category`) VALUES
(1, 'sample toy car', 'remote control toy car for children and adults. brand-new toy car. rechargeable battery up to 5 hours works', 2500, 'red, blue, green, yellow, black, white, gray, random', 44, NULL),
(0, 'Sorry, invalid Item.', 'Unavailable item', 0, 'default ', 0, NULL),
(3, 'rtgrgr', 'fasfsa', 550, 'safasf', 560, 'dsfgsdg'),
(4, 'rtgrgr', 'fasfsa', 555, 'safasf', 563, 'dsfgsdg'),
(5, 'rtgrgr', 'fasfsa', 555, 'safasf', 563, 'dsfgsdg'),
(7, 'gugugu', 'dtdkdtk', 55, 'cgcjcgg, vgylify', 133, 'fyfgggjyygvm'),
(8, 'gugugu', 'dtdkdtk', 55, 'cgcjcgg,vgylify', 133, 'fyfgggjyygvm');

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
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

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
(65, 15, 50, 55, '2023-01-16 08:11:52', 1, NULL),
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
(55, 15, 37, 10000, '2023-01-12 12:45:53', 1, NULL),
(56, 15, 38, NULL, NULL, NULL, NULL),
(57, 15, NULL, NULL, NULL, NULL, NULL),
(58, 15, 39, 0, '2023-01-13 07:49:50', 1, NULL),
(59, 15, 40, NULL, NULL, NULL, NULL),
(60, 15, 41, 2500, '2023-01-13 10:24:30', 1, NULL),
(62, 15, 45, NULL, NULL, NULL, NULL);

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
(19, 1, 1, 'blue', 2500),
(20, 1, 4, 'red', 10000),
(21, 1, 4, 'red', 10000),
(22, 1, 1, 'red', 2500),
(23, 1, 1, 'red', 2500),
(25, 1, 50, 'black', 125000),
(26, 1, 50, 'black', 125000),
(27, 1, 50, 'black', 125000),
(63, 8, 7, 'cgcjcgg,vgylify', 385),
(29, 1, 3, 'gray', 7500),
(30, 1, 3, 'gray', 7500),
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
(56, 1, 8, 'red', 20000),
(57, 1, 3, 'red', 7500),
(59, 1, 1, 'blue', 2500),
(59, 1, 3, 'blue', 7500),
(60, 1, 1, 'blue', 2500),
(63, 1, 1, 'red', 2500),
(62, 1, 1, 'red', 2500),
(64, 1, 1, 'red', 2500),
(65, 8, 1, 'cgcjcgg,vgylify', 55),
(66, 1, 1, 'red', 2500),
(67, 1, 1, 'red', 2500),
(68, 1, 2, 'black', 5000),
(69, 1, 2, 'black', 5000),
(69, 1, 1, 'yellow', 2500);

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
  `otp` int(8) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp_users`
--

INSERT INTO `temp_users` (`email`, `password`, `otp`) VALUES
('zxvcnv@dgss.vs', '123456', 123),
('sdfds@ff.sd', 'aaaaaaa', 123),
('sdf1121ds@ff.sd', 'AAAaaa123', 670794);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `reg_date` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

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
(18, 'sehixej929@themesw.com', '2ceb5fcac1c6d780d4c26cfeb06c0df2', NULL, '2023-01-16');
--
-- Database: `orders`
--
CREATE DATABASE IF NOT EXISTS `orders` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `orders`;

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

DROP TABLE IF EXISTS `agents`;
CREATE TABLE IF NOT EXISTS `agents` (
  `AGENT_CODE` char(6) NOT NULL,
  `AGENT_NAME` char(40) DEFAULT NULL,
  `WORKING_AREA` char(35) DEFAULT NULL,
  `COMMISSION` decimal(3,2) DEFAULT NULL,
  `PHONE_NO` char(15) DEFAULT NULL,
  `COUNTRY` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`AGENT_CODE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agents`
--

INSERT INTO `agents` (`AGENT_CODE`, `AGENT_NAME`, `WORKING_AREA`, `COMMISSION`, `PHONE_NO`, `COUNTRY`) VALUES
('A007', 'Ramasundar', 'Bangalore', '0.15', '077-25814763', 'India'),
('A003', 'Alex', 'London', '0.13', '075-12458969', 'UK'),
('A008', 'Alford', 'New York', '0.12', '044-25874365', 'USA'),
('A011', 'Ravi Kumar', 'Bangalore', '0.15', '077-45625874', 'India'),
('A010', 'Santakumar', 'Chennai', '0.14', '007-22388644', 'India'),
('A012', 'Lucida', 'San Jose', '0.12', '044-52981425', 'USA'),
('A005', 'Anderson', 'Brisban', '0.13', '045-21447739', 'Australia'),
('A001', 'Subbarao', 'Bangalore', '0.14', '077-12346674', 'India'),
('A002', 'Mukesh', 'Mumbai', '0.11', '029-12358964', 'India'),
('A006', 'McDen', 'London', '0.15', '078-22255588', 'UK'),
('A004', 'Ivan', 'Torento', '0.16', '008-22544166', 'Canada'),
('A009', 'Benjamin', 'Hampshair', '0.11', '008-22536178', 'UK'),
('A0013', 'Peter', 'Bristol', '0.12', '078-28877461', 'UK');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `CUST_CODE` varchar(6) NOT NULL,
  `CUST_NAME` varchar(40) NOT NULL,
  `WORKING_AREA` varchar(35) NOT NULL,
  `CUST_COUNTRY` varchar(20) NOT NULL,
  `GRADE` int(11) DEFAULT NULL,
  `PHONE_NO` varchar(17) NOT NULL,
  `AGENT_CODE` char(6) NOT NULL,
  PRIMARY KEY (`CUST_CODE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CUST_CODE`, `CUST_NAME`, `WORKING_AREA`, `CUST_COUNTRY`, `GRADE`, `PHONE_NO`, `AGENT_CODE`) VALUES
('C00013', 'Holmes', 'London', 'UK', 2, '022-23654897', 'A003'),
('C00001', 'Micheal', 'New York', 'USA', 2, '067-12398765', 'A008'),
('C00020', 'Albert', 'New York', 'USA', 3, '067-44998726', 'A008'),
('C00025', 'Ravindran', 'Bangalore', 'India', 2, '147-48923647', 'A011'),
('C00024', 'Cook', 'London', 'UK', 2, '022-22049735', 'A006'),
('C00015', 'Stuart', 'London', 'UK', 1, '022-79534682', 'A003'),
('C00002', 'Bolt', 'New York', 'USA', 3, '067-33497762', 'A008'),
('C00018', 'Fleming', 'Brisban', 'Australia', 2, '032-33798846', 'A005'),
('C00021', 'Jacks', 'Brisban', 'Australia', 1, '032-99468725', 'A005'),
('C00019', 'Yearannaidu', 'Chennai', 'India', 1, '147-22597719', 'A010'),
('C00005', 'Sasikant', 'Mumbai', 'India', 1, '147-25896312', 'A002'),
('C00007', 'Ramanathan', 'Chennai', 'India', 1, '147-35982364', 'A010'),
('C00022', 'Avinash', 'Mumbai', 'India', 2, '147-12345678', 'A002'),
('C00004', 'Winston', 'Brisban', 'Australia', 1, '032-24798662', 'A005'),
('C00023', 'Karl', 'London', 'UK', 0, '022-15634097', 'A006'),
('C00006', 'Shilton', 'Torento', 'Canada', 1, '181-79648324', 'A004'),
('C00010', 'Charles', 'Hampshair', 'UK', 3, '022-64987300', 'A009'),
('C00017', 'Srinivas', 'Bangalore', 'India', 2, '147-57922677', 'A007'),
('C00012', 'Steven', 'San Jose', 'USA', 1, '067-19876334', 'A012'),
('C00008', 'Karolina', 'Torento', 'Canada', 1, '181-56975534', 'A004'),
('C00003', 'Martin', 'Torento', 'Canada', 2, '181-29876431', 'A004'),
('C00009', 'Ramesh', 'Mumbai', 'India', 3, '147-88713665', 'A002'),
('C00014', 'Rangarappa', 'Bangalore', 'India', 2, '147-187746352', 'A001'),
('C00016', 'Venkatpati', 'Bangalore', 'India', 2, '147-14753982', 'A007'),
('C00011', 'Sundariya', 'Chennai', 'India', 3, '147-74168823', 'A010');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `ORD_NUM` int(11) NOT NULL,
  `ORD_AMOUNT` decimal(7,2) NOT NULL,
  `ORD_DATE` date NOT NULL,
  `CUST_CODE` varchar(6) NOT NULL,
  `AGENT_CODE` char(6) NOT NULL,
  `ORD_DESCRIPTION` varchar(15) NOT NULL,
  PRIMARY KEY (`ORD_NUM`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ORD_NUM`, `ORD_AMOUNT`, `ORD_DATE`, `CUST_CODE`, `AGENT_CODE`, `ORD_DESCRIPTION`) VALUES
(200100, '1000.00', '2019-05-03', 'C00013', 'A003', 'SOD'),
(200110, '3000.00', '2019-07-28', 'C00019', 'A010', 'SOD'),
(200107, '4500.00', '2019-05-02', 'C00007', 'A010', 'SOD'),
(200112, '2000.00', '2019-08-01', 'C00016', 'A007', 'SOD'),
(200113, '4000.00', '2019-01-20', 'C00022', 'A002', 'SOD'),
(200102, '2000.00', '2019-07-15', 'C00012', 'A012', 'SOD'),
(200114, '3500.00', '2019-11-05', 'C00002', 'A008', 'SOD'),
(200122, '2500.00', '2019-08-28', 'C00003', 'A004', 'SOD'),
(200118, '500.00', '2019-03-05', 'C00023', 'A006', 'SOD'),
(200119, '4000.00', '2019-12-01', 'C00007', 'A010', 'SOD'),
(200121, '1500.00', '2019-06-06', 'C00008', 'A004', 'SOD'),
(200130, '2500.00', '2019-07-02', 'C00025', 'A011', 'SOD'),
(200134, '4200.00', '2019-08-22', 'C00004', 'A005', 'SOD'),
(200108, '4000.00', '2019-09-01', 'C00008', 'A004', 'SOD'),
(200103, '1500.00', '2019-10-05', 'C00021', 'A005', 'SOD'),
(200105, '2500.00', '2019-09-27', 'C00025', 'A011', 'SOD'),
(200109, '3500.00', '2019-01-20', 'C00011', 'A010', 'SOD'),
(200101, '3000.00', '2019-11-03', 'C00001', 'A008', 'SOD'),
(200104, '1500.00', '2019-08-03', 'C00006', 'A004', 'SOD'),
(200106, '2500.00', '2019-11-20', 'C00005', 'A002', 'SOD'),
(200125, '2000.00', '2019-12-05', 'C00018', 'A005', 'SOD'),
(200117, '800.00', '2019-03-03', 'C00014', 'A001', 'SOD'),
(200123, '500.00', '2019-04-10', 'C00022', 'A002', 'SOD'),
(200120, '500.00', '2019-04-01', 'C00009', 'A002', 'SOD'),
(200116, '500.00', '2019-07-20', 'C00010', 'A009', 'SOD'),
(200124, '500.00', '2019-09-22', 'C00017', 'A007', 'SOD'),
(200126, '500.00', '2019-08-30', 'C00022', 'A002', 'SOD'),
(200129, '3500.00', '2019-02-27', 'C00024', 'A006', 'SOD'),
(200127, '2500.00', '2019-09-02', 'C00015', 'A003', 'SOD'),
(200128, '3500.00', '2019-05-06', 'C00009', 'A002', 'SOD'),
(200135, '2000.00', '2019-02-04', 'C00007', 'A010', 'SOD'),
(200131, '900.00', '2019-11-11', 'C00012', 'A012', 'SOD'),
(200133, '1200.00', '2019-10-23', 'C00009', 'A002', 'SOD');
--
-- Database: `proj`
--
CREATE DATABASE IF NOT EXISTS `proj` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `proj`;

-- --------------------------------------------------------

--
-- Table structure for table `user3`
--

DROP TABLE IF EXISTS `user3`;
CREATE TABLE IF NOT EXISTS `user3` (
  `fname` varchar(15) NOT NULL,
  `lname` varchar(15) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`phone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user3`
--

INSERT INTO `user3` (`fname`, `lname`, `phone`, `password`) VALUES
('aaa', 'bbb', '123456', '1'),
('yyy', 'kk', '077123', '123'),
('aaaaa', 'ueurwfwfw', '123456789', '1010'),
('hello ', 'nnnnn', '111', 'a');
--
-- Database: `se1`
--
CREATE DATABASE IF NOT EXISTS `se1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `se1`;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
CREATE TABLE IF NOT EXISTS `result` (
  `id` int(11) NOT NULL DEFAULT '0',
  `subject1` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `subject1_grade` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `subject2` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `subject2_grade` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `subject3` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `subject3_grade` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `subject1`, `subject1_grade`, `subject2`, `subject2_grade`, `subject3`, `subject3_grade`) VALUES
(1, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'A', 'ECONOMICS', 'A', 'ACCOUNTING', 'A'),
(2, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'A', 'ECONOMICS', 'A', 'ACCOUNTING', 'A'),
(3, 'Drama and Theater', 'A', 'Economics', 'B', 'Engineering Technology', 'C'),
(4, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'ECONOMICS', 'A', 'ACCOUNTING', 'A'),
(5, 'COMMUNICATION & MEDIA STUDIES', 'S', 'DANCING(INDIGENOUS)', 'C', 'SINHALA', 'A'),
(6, 'HISTORY OF SRI LANKA & INDIA', 'B', 'COMMUNICATION & MEDIA STUDIES', 'B', 'SINHALA', 'A'),
(7, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'GEOGRAPHY', 'A', 'LOGIC & SCIENTIFIC METHOD', 'B'),
(8, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'A'),
(9, 'HISTORY OF SRI LANKA & INDIA', 'C', 'BUDDHIST CIVILIZATION', 'B', 'SINHALA', 'B'),
(10, 'HISTORY OF SRI LANKA & INDIA', 'C', 'BUDDHIST CIVILIZATION', 'B', 'SINHALA', 'B'),
(11, 'GEOGRAPHY', 'A', 'POLITICAL SCIENCE', 'C', 'COMMUNICATION & MEDIA STUDIES', 'B'),
(12, 'HISTORY OF SRI LANKA & INDIA', 'A', 'BUDDHISM', 'A', 'SINHALA', 'A'),
(13, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'B'),
(14, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'GREEK & ROMAN CIVILIZATION', 'A', 'ENGLISH', 'C'),
(15, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'GEOGRAPHY', 'B', 'POLITICAL SCIENCE', 'B'),
(16, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(17, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(18, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'A'),
(19, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'BIOLOGY', 'S'),
(20, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'BIOLOGY', 'S'),
(21, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(22, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(23, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'ECONOMICS', 'A', 'POLITICAL SCIENCE', 'A'),
(24, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'COMMUNICATION & MEDIA STUDIES', 'B', 'ART', 'C'),
(25, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(26, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'COMBINED MATHEMATICS', 'C'),
(27, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'B'),
(28, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(29, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'ECONOMICS', 'A', 'ACCOUNTING', 'A'),
(30, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'ECONOMICS', 'A', 'ACCOUNTING', 'A'),
(31, 'ECONOMICS', 'S', 'BUSINESS STUDIES', 'S', 'ACCOUNTING', 'S'),
(32, 'GEOGRAPHY', 'C', 'ORIENTAL MUSIC', 'A', 'DRAMA AND THEATRE (SINHALA)', 'B'),
(33, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'ENGINEERING TECHNOLOGY', 'B', 'SCIENCE FOR TECHNOLOGY', 'B'),
(34, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(35, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(36, 'PHYSICS', 'S', 'COMBINED MATHEMATICS', 'S', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C'),
(37, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B'),
(38, 'PHYSICS', 'B', 'CHEMISTRY', 'A', 'COMBINED MATHEMATICS', 'C'),
(39, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(40, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(41, 'COMMUNICATION & MEDIA STUDIES', 'S', 'DANCING(INDIGENOUS)', 'C', 'SINHALA', 'A'),
(42, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(43, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'B'),
(44, 'HOME ECONOMICS', 'C', 'ENGINEERING TECHNOLOGY', 'S', 'SCIENCE FOR TECHNOLOGY', 'S'),
(45, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(46, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'S'),
(47, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'A'),
(48, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'BIOLOGY', 'S'),
(49, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'BIOLOGY', 'S'),
(50, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'BIOLOGY', 'S'),
(51, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(52, 'HOME ECONOMICS', 'C', 'ENGINEERING TECHNOLOGY', 'S', 'SCIENCE FOR TECHNOLOGY', 'S'),
(53, 'HOME ECONOMICS', 'C', 'ENGINEERING TECHNOLOGY', 'S', 'SCIENCE FOR TECHNOLOGY', 'S'),
(54, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'BIOLOGY', 'S'),
(55, 'COMMUNICATION & MEDIA STUDIES', 'S', 'BUDDHIST CIVILIZATION', 'B', 'SINHALA', 'A'),
(56, 'COMMUNICATION & MEDIA STUDIES', 'S', 'BUDDHIST CIVILIZATION', 'B', 'SINHALA', 'A'),
(57, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(58, 'PHYSICS', 'A', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(59, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'B'),
(60, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(61, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(62, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'C'),
(63, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'C'),
(64, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(65, 'GEOGRAPHY', 'C', 'ART', 'A', 'SINHALA', 'A'),
(66, 'GEOGRAPHY', 'C', 'ART', 'A', 'SINHALA', 'A'),
(67, 'ECONOMICS', 'S', 'BUSINESS STUDIES', 'S', 'ACCOUNTING', 'A'),
(68, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(69, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(70, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'SINHALA', 'A', 'ENGLISH', 'C'),
(71, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'SINHALA', 'A', 'ENGLISH', 'C'),
(72, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(73, 'GEOGRAPHY', 'B', 'BUDDHIST CIVILIZATION', 'A', 'SINHALA', 'B'),
(74, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(75, 'HISTORY OF SRI LANKA & EUROPE', 'C', 'ENGLISH', 'C', 'GERMAN', 'B'),
(76, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(77, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'B'),
(78, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(79, 'ECONOMICS', 'S', 'BUSINESS STUDIES', 'S', 'ACCOUNTING', 'S'),
(80, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(81, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'A'),
(82, 'PHYSICS', 'A', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(83, 'PHYSICS', 'A', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(84, 'GEOGRAPHY', 'B', 'BUDDHIST CIVILIZATION', 'A', 'SINHALA', 'A'),
(85, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'C'),
(86, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(87, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'S', 'COMMUNICATION & MEDIA STUDIES', 'S', 'ISLAM', 'S'),
(88, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(89, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(90, 'COMMUNICATION & MEDIA STUDIES', 'B', 'BUDDHIST CIVILIZATION', 'A', 'SINHALA', 'A'),
(91, 'GEOGRAPHY', 'A', 'ISLAMIC CIVILIZATION', 'A', 'TAMIL', 'A'),
(92, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(93, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(94, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'S'),
(95, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'S'),
(96, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'B'),
(97, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'A'),
(98, 'PHYSICS', 'B', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(99, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(100, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'C'),
(101, 'LOGIC & SCIENTIFIC METHOD', 'C', 'HISTORY OF SRI LANKA & INDIA', 'A', 'FRENCH', 'C'),
(102, 'LOGIC & SCIENTIFIC METHOD', 'C', 'HISTORY OF SRI LANKA & INDIA', 'A', 'FRENCH', 'C'),
(103, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(104, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'BIOLOGY', 'S'),
(105, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'B'),
(106, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'S', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'S'),
(107, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(108, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C'),
(109, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(110, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(111, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'GEOGRAPHY', 'C', 'COMMUNICATION & MEDIA STUDIES', 'C'),
(112, 'PHYSICS', 'C', 'CHEMISTRY', 'S', 'COMBINED MATHEMATICS', 'C'),
(113, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B'),
(114, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(115, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'A'),
(116, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'BIOLOGY', 'S'),
(117, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'ECONOMICS', 'S', 'ACCOUNTING', 'C'),
(118, 'ECONOMICS', 'S', 'BUSINESS STUDIES', 'S', 'ACCOUNTING', 'S'),
(119, 'ECONOMICS', 'S', 'BUSINESS STUDIES', 'S', 'ACCOUNTING', 'S'),
(120, 'ECONOMICS', 'S', 'BUSINESS STUDIES', 'S', 'ACCOUNTING', 'S'),
(121, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'ECONOMICS', 'S', 'ACCOUNTING', 'S'),
(122, 'GEOGRAPHY', 'A', 'LOGIC & SCIENTIFIC METHOD', 'B', 'FRENCH', 'C'),
(123, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(124, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'B', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B'),
(125, 'ECONOMICS', 'A', 'GERMAN', 'A', 'HINDI', 'A'),
(126, 'POLITICAL SCIENCE', 'A', 'HISTORY OF SRI LANKA & INDIA', 'C', 'SINHALA', 'A'),
(127, 'POLITICAL SCIENCE', 'A', 'HISTORY OF SRI LANKA & INDIA', 'C', 'SINHALA', 'A'),
(128, 'ECONOMICS', 'A', 'GERMAN', 'A', 'HINDI', 'A'),
(129, 'PHYSICS', 'B', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'B'),
(130, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'B'),
(131, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'S'),
(132, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'BIOLOGY', 'S'),
(133, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'S', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C'),
(134, 'GEOGRAPHY', 'B', 'POLITICAL SCIENCE', 'B', 'SINHALA', 'A'),
(135, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(136, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'BIOLOGY', 'S'),
(137, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'LOGIC & SCIENTIFIC METHOD', 'C', 'ENGLISH', 'S'),
(138, 'PHYSICS', 'B', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'A'),
(139, 'PHYSICS', 'A', 'CHEMISTRY', 'B', 'BIOLOGY', 'S'),
(140, 'PHYSICS', 'S', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(141, 'PHYSICS', 'B', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(142, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'A'),
(143, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(144, 'PHYSICS', 'B', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'B'),
(145, 'LOGIC & SCIENTIFIC METHOD', 'B', 'COMMUNICATION & MEDIA STUDIES', 'A', 'SINHALA', 'A'),
(146, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(147, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(148, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'ECONOMICS', 'C', 'LOGIC & SCIENTIFIC METHOD', 'C'),
(149, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(150, 'ECONOMICS', 'A', 'BUSINESS STATISTICS', 'B', 'ACCOUNTING', 'A'),
(151, 'PHYSICS', 'S', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B'),
(152, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'GEOGRAPHY', 'A', 'LOGIC & SCIENTIFIC METHOD', 'A'),
(153, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'GEOGRAPHY', 'A', 'LOGIC & SCIENTIFIC METHOD', 'A'),
(154, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'A', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B'),
(155, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'COMMUNICATION & MEDIA STUDIES', 'B', 'ENGLISH', 'S'),
(156, 'PHYSICS', 'S', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(157, 'COMMUNICATION & MEDIA STUDIES', 'A', 'DANCING(INDIGENOUS)', 'A', 'SINHALA', 'A'),
(158, 'GEOGRAPHY', 'A', 'BUDDHIST CIVILIZATION', 'A', 'SINHALA', 'A'),
(159, 'POLITICAL SCIENCE', 'B', 'SINHALA', 'A', 'GERMAN', 'S'),
(160, 'POLITICAL SCIENCE', 'B', 'SINHALA', 'A', 'GERMAN', 'S'),
(161, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(162, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(163, 'PHYSICS', 'B', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'A'),
(164, 'LOGIC & SCIENTIFIC METHOD', 'B', 'COMMUNICATION & MEDIA STUDIES', 'A', 'BUDDHIST CIVILIZATION', 'A'),
(165, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'BIOLOGY', 'S'),
(166, 'GEOGRAPHY', 'B', 'COMMUNICATION & MEDIA STUDIES', 'A', 'DANCING(INDIGENOUS)', 'A'),
(167, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(168, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(169, 'BUSINESS STATISTICS', 'S', 'SINHALA', 'A', 'ENGLISH', 'S'),
(170, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'BIOLOGY', 'S'),
(171, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'A'),
(172, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'A'),
(173, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(174, 'PHYSICS', 'B', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'B'),
(175, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B'),
(176, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(177, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(178, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(179, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'ENGINEERING TECHNOLOGY', 'C', 'SCIENCE FOR TECHNOLOGY', 'B'),
(180, 'PHYSICS', 'C', 'CHEMISTRY', 'A', 'BIOLOGY', 'B'),
(181, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(182, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B'),
(183, 'HISTORY OF SRI LANKA & EUROPE', 'C', 'ENGLISH', 'C', 'GERMAN', 'B'),
(184, 'POLITICAL SCIENCE', 'B', 'COMMUNICATION & MEDIA STUDIES', 'A', 'DRAMA AND THEATRE (SINHALA)', 'B'),
(185, 'POLITICAL SCIENCE', 'B', 'COMMUNICATION & MEDIA STUDIES', 'A', 'DRAMA AND THEATRE (SINHALA)', 'B'),
(186, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(187, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(188, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'S', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B'),
(189, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(190, 'PHYSICS', 'B', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C'),
(191, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(192, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'A'),
(193, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(194, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'B'),
(195, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(196, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(197, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(198, 'PHYSICS', 'S', 'COMBINED MATHEMATICS', 'B', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B'),
(199, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'B'),
(200, 'AGRICULTURAL SCIENCE', 'S', 'BIO SYSTEMS TECHNOLOGY', 'C', 'SCIENCE FOR TECHNOLOGY', 'C'),
(201, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(202, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(203, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(204, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(205, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'B'),
(206, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(207, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(208, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(209, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'POLITICAL SCIENCE', 'S', 'COMMUNICATION & MEDIA STUDIES', 'B'),
(210, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'POLITICAL SCIENCE', 'S', 'COMMUNICATION & MEDIA STUDIES', 'B'),
(211, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'POLITICAL SCIENCE', 'S', 'COMMUNICATION & MEDIA STUDIES', 'B'),
(212, 'GEOGRAPHY', 'S', 'HOME ECONOMICS', 'A', 'DANCING(INDIGENOUS)', 'A'),
(213, 'PHYSICS', 'C', 'CHEMISTRY', 'S', 'BIOLOGY', 'C'),
(214, 'PHYSICS', 'C', 'CHEMISTRY', 'S', 'BIOLOGY', 'C'),
(215, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B'),
(216, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(217, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(218, 'PHYSICS', 'S', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C'),
(219, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(220, 'GEOGRAPHY', 'B', 'POLITICAL SCIENCE', 'B', 'SINHALA', 'A'),
(221, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(222, 'COMMUNICATION & MEDIA STUDIES', 'A', 'BUDDHIST CIVILIZATION', 'C', 'SINHALA', 'A'),
(223, 'GEOGRAPHY', 'B', 'POLITICAL SCIENCE', 'B', 'SINHALA', 'A'),
(224, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(225, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'B'),
(226, 'AGRICULTURAL SCIENCE', 'C', 'BIO SYSTEMS TECHNOLOGY', 'C', 'SCIENCE FOR TECHNOLOGY', 'C'),
(227, 'PHYSICS', 'B', 'CHEMISTRY', 'C', 'BIOLOGY', 'B'),
(228, 'PHYSICS', 'B', 'CHEMISTRY', 'C', 'BIOLOGY', 'B'),
(229, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'ECONOMICS', 'B', 'ENGLISH', 'S'),
(230, 'PHYSICS', 'A', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(231, 'HOME ECONOMICS', 'B', 'COMMUNICATION & MEDIA STUDIES', 'B', 'ORIENTAL MUSIC', 'B'),
(232, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(233, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(234, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'ECONOMICS', 'B', 'ACCOUNTING', 'B'),
(235, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(236, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'B'),
(237, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'C'),
(238, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'C'),
(239, 'PHYSICS', 'A', 'COMBINED MATHEMATICS', 'B', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C'),
(240, 'GEOGRAPHY', 'B', 'POLITICAL SCIENCE', 'C', 'TAMIL', 'C'),
(241, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(242, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'S', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C'),
(243, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'B'),
(244, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(245, 'PHYSICS', 'S', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C'),
(246, 'PHYSICS', 'B', 'COMBINED MATHEMATICS', 'B', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B'),
(247, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(248, 'HISTORY OF SRI LANKA & INDIA', 'C', 'BUDDHIST CIVILIZATION', 'A', 'SINHALA', 'A'),
(249, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(250, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(251, 'PHYSICS', 'B', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'B'),
(252, 'PHYSICS', 'B', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'B'),
(253, 'PHYSICS', 'B', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(254, 'GEOGRAPHY', 'C', 'ORIENTAL MUSIC', 'A', 'JAPANESE', 'C'),
(255, 'COMMUNICATION & MEDIA STUDIES', 'A', 'BUDDHIST CIVILIZATION', 'A', 'SINHALA', 'A'),
(256, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'B'),
(257, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'HISTORY OF SRI LANKA & INDIA', 'A', 'FRENCH', 'C'),
(258, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'B'),
(259, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'C'),
(260, 'COMMUNICATION & MEDIA STUDIES', 'A', 'BUDDHIST CIVILIZATION', 'A', 'SINHALA', 'A'),
(261, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'C'),
(262, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(263, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'C'),
(264, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'C'),
(265, 'COMMUNICATION & MEDIA STUDIES', 'A', 'BUDDHIST CIVILIZATION', 'A', 'SINHALA', 'A'),
(266, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'ENGLISH', 'S', 'FRENCH', 'C'),
(267, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(268, 'ECONOMICS', 'S', 'BUSINESS STUDIES', 'S', 'ACCOUNTING', 'C'),
(269, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'B'),
(270, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'B'),
(271, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(272, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'ECONOMICS', 'B', 'LOGIC & SCIENTIFIC METHOD', 'C'),
(273, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'ECONOMICS', 'B', 'LOGIC & SCIENTIFIC METHOD', 'C'),
(274, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'ECONOMICS', 'B', 'LOGIC & SCIENTIFIC METHOD', 'C'),
(275, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(276, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(277, 'GEOGRAPHY', 'S', 'LOGIC & SCIENTIFIC METHOD', 'C', 'SINHALA', 'A'),
(278, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(279, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'B'),
(280, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'COMBINED MATHEMATICS', 'C'),
(281, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(282, 'LOGIC & SCIENTIFIC METHOD', 'S', 'COMMUNICATION & MEDIA STUDIES', 'C', 'FRENCH', 'C'),
(283, 'LOGIC & SCIENTIFIC METHOD', 'S', 'COMMUNICATION & MEDIA STUDIES', 'C', 'FRENCH', 'C'),
(284, 'GEOGRAPHY', 'C', 'COMMUNICATION & MEDIA STUDIES', 'B', 'SINHALA', 'C'),
(285, 'PHYSICS', 'B', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(286, 'PHYSICS', 'B', 'CHEMISTRY', 'C', 'BIOLOGY', 'B'),
(287, 'ECONOMICS', 'C', 'LOGIC & SCIENTIFIC METHOD', 'B', 'BUDDHIST CIVILIZATION', 'A'),
(288, 'ECONOMICS', 'C', 'LOGIC & SCIENTIFIC METHOD', 'B', 'BUDDHIST CIVILIZATION', 'A'),
(289, 'POLITICAL SCIENCE', 'A', 'COMMUNICATION & MEDIA STUDIES', 'C', 'SINHALA', 'B'),
(290, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(291, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'GEOGRAPHY', 'B', 'DANCING(INDIGENOUS)', 'A'),
(292, 'GEOGRAPHY', 'C', 'LOGIC & SCIENTIFIC METHOD', 'A', 'SINHALA', 'B'),
(293, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'C'),
(294, 'POLITICAL SCIENCE', 'C', 'HISTORY OF SRI LANKA & INDIA', 'C', 'COMMUNICATION & MEDIA STUDIES', 'C'),
(295, 'POLITICAL SCIENCE', 'C', 'HISTORY OF SRI LANKA & INDIA', 'C', 'COMMUNICATION & MEDIA STUDIES', 'C'),
(296, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'BIO SYSTEMS TECHNOLOGY', 'B', 'SCIENCE FOR TECHNOLOGY', 'C'),
(297, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'C'),
(298, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'B'),
(299, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'A'),
(300, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'B'),
(301, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'B'),
(302, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'B'),
(303, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'ECONOMICS', 'A', 'ACCOUNTING', 'A'),
(304, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(305, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'S'),
(306, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(307, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'B'),
(308, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'BIOLOGY', 'S'),
(309, 'HISTORY OF SRI LANKA & INDIA', 'S', 'COMMUNICATION & MEDIA STUDIES', 'S', 'SINHALA', 'C'),
(310, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'S'),
(311, 'GEOGRAPHY', 'C', 'HISTORY OF SRI LANKA & INDIA', 'C', 'BUDDHIST CIVILIZATION', 'C'),
(312, 'GEOGRAPHY', 'C', 'COMMUNICATION & MEDIA STUDIES', 'B', 'SINHALA', 'C'),
(313, 'GEOGRAPHY', 'C', 'HISTORY OF SRI LANKA & INDIA', 'C', 'DANCING(INDIGENOUS)', 'B'),
(314, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'B'),
(315, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'GEOGRAPHY', 'A', 'LOGIC & SCIENTIFIC METHOD', 'B'),
(316, 'ECONOMICS', 'S', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'C'),
(317, 'ECONOMICS', 'S', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'C'),
(318, 'PHYSICS', 'B', 'CHEMISTRY', 'A', 'COMBINED MATHEMATICS', 'B'),
(319, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'B'),
(320, 'ECONOMICS', 'A', 'BUSINESS STATISTICS', 'C', 'ACCOUNTING', 'A'),
(321, 'GEOGRAPHY', 'B', 'POLITICAL SCIENCE', 'B', 'SINHALA', 'A'),
(322, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(323, 'ECONOMICS', 'C', 'COMMUNICATION & MEDIA STUDIES', 'B', 'ORIENTAL MUSIC', 'C'),
(324, 'GEOGRAPHY', 'B', 'LOGIC & SCIENTIFIC METHOD', 'C', 'SINHALA', 'A'),
(325, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'LOGIC & SCIENTIFIC METHOD', 'B', 'FRENCH', 'C'),
(326, 'GEOGRAPHY', 'B', 'ART', 'B', 'SINHALA', 'C'),
(327, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'S'),
(328, 'GEOGRAPHY', 'B', 'ART', 'B', 'SINHALA', 'C'),
(329, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'S'),
(330, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(331, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'B'),
(332, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'S', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'C'),
(333, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'B'),
(334, 'PHYSICS', 'B', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'A'),
(335, 'PHYSICS', 'B', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'A'),
(336, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(337, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'C'),
(338, 'HISTORY OF SRI LANKA & EUROPE', 'B', 'ISLAM', 'B', 'TAMIL', 'B'),
(339, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'B'),
(340, 'POLITICAL SCIENCE', 'B', 'COMMUNICATION & MEDIA STUDIES', 'C', 'SINHALA', 'B'),
(341, 'PHYSICS', 'S', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C'),
(342, 'POLITICAL SCIENCE', 'B', 'BUDDHIST CIVILIZATION', 'A', 'SINHALA', 'B'),
(343, 'PHYSICS', 'C', 'CHEMISTRY', 'S', 'COMBINED MATHEMATICS', 'B'),
(344, 'POLITICAL SCIENCE', 'B', 'BUDDHIST CIVILIZATION', 'A', 'SINHALA', 'B'),
(345, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(346, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'A'),
(347, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'BIOLOGY', 'S'),
(348, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(349, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(350, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(351, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'GEOGRAPHY', 'A', 'CHINESE', 'B'),
(352, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'ECONOMICS', 'B', 'ACCOUNTING', 'B'),
(353, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'ECONOMICS', 'B', 'ACCOUNTING', 'B'),
(354, 'POLITICAL SCIENCE', 'S', 'COMMUNICATION & MEDIA STUDIES', 'C', 'DRAMA AND THEATRE (SINHALA)', 'A'),
(355, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'B'),
(356, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'B'),
(357, 'ECONOMICS', 'A', 'BUSINESS STATISTICS', 'A', 'ACCOUNTING', 'A'),
(358, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(359, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'COMBINED MATHEMATICS', 'C'),
(360, 'COMMUNICATION & MEDIA STUDIES', 'A', 'CHRISTIANITY', 'A', 'ORIENTAL MUSIC', 'A'),
(361, 'PHYSICS', 'B', 'COMBINED MATHEMATICS', 'S', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B'),
(362, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'B'),
(363, 'GEOGRAPHY', 'B', 'COMMUNICATION & MEDIA STUDIES', 'B', 'SINHALA', 'B'),
(364, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(365, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'ECONOMICS', 'A', 'ACCOUNTING', 'A'),
(366, 'ECONOMICS', 'B', 'LOGIC & SCIENTIFIC METHOD', 'B', 'SINHALA', 'A'),
(367, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(368, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'GEOGRAPHY', 'A', 'HISTORY OF SRI LANKA & EUROPE', 'B'),
(369, 'ECONOMICS', 'A', 'BUSINESS STATISTICS', 'C', 'ACCOUNTING', 'A'),
(370, 'ECONOMICS', 'A', 'BUSINESS STATISTICS', 'C', 'ACCOUNTING', 'A'),
(371, 'ECONOMICS', 'A', 'BUSINESS STATISTICS', 'C', 'ACCOUNTING', 'A'),
(372, 'ECONOMICS', 'A', 'BUSINESS STATISTICS', 'C', 'ACCOUNTING', 'A'),
(373, 'ECONOMICS', 'A', 'BUSINESS STATISTICS', 'C', 'ACCOUNTING', 'A'),
(374, 'ECONOMICS', 'A', 'BUSINESS STATISTICS', 'C', 'ACCOUNTING', 'A'),
(375, 'ECONOMICS', 'B', 'GEOGRAPHY', 'A', 'FRENCH', 'A'),
(376, 'ECONOMICS', 'C', 'GEOGRAPHY', 'B', 'HISTORY OF SRI LANKA & EUROPE', 'B'),
(377, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'BIOLOGY', 'S'),
(378, 'ECONOMICS', 'C', 'GEOGRAPHY', 'B', 'HISTORY OF SRI LANKA & EUROPE', 'B'),
(379, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(380, 'ECONOMICS', 'C', 'GEOGRAPHY', 'B', 'HISTORY OF SRI LANKA & EUROPE', 'B'),
(381, 'ECONOMICS', 'A', 'BUSINESS STATISTICS', 'C', 'ACCOUNTING', 'A'),
(382, 'AGRICULTURAL SCIENCE', 'S', 'BIO SYSTEMS TECHNOLOGY', 'B', 'SCIENCE FOR TECHNOLOGY', 'C'),
(383, 'COMMUNICATION & MEDIA STUDIES', 'A', 'SINHALA', 'A', 'FRENCH', 'S'),
(384, 'AGRICULTURAL SCIENCE', 'S', 'BIO SYSTEMS TECHNOLOGY', 'B', 'SCIENCE FOR TECHNOLOGY', 'C'),
(385, 'COMMUNICATION & MEDIA STUDIES', 'A', 'SINHALA', 'A', 'FRENCH', 'S'),
(386, 'GEOGRAPHY', 'A', 'HOME ECONOMICS', 'A', 'ISLAM', 'A'),
(387, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'B'),
(388, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(389, 'HISTORY OF SRI LANKA & EUROPE', 'C', 'COMMUNICATION & MEDIA STUDIES', 'C', 'SINHALA', 'B'),
(390, 'AGRICULTURAL SCIENCE', 'C', 'BIO SYSTEMS TECHNOLOGY', 'C', 'SCIENCE FOR TECHNOLOGY', 'C'),
(391, 'AGRICULTURAL SCIENCE', 'C', 'BIO SYSTEMS TECHNOLOGY', 'C', 'SCIENCE FOR TECHNOLOGY', 'C'),
(392, 'PHYSICS', 'S', 'COMBINED MATHEMATICS', 'S', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C'),
(393, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(394, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(395, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(396, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(397, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(398, 'ECONOMICS', 'B', 'SINHALA', 'B', 'JAPANESE', 'B'),
(399, 'ECONOMICS', 'B', 'SINHALA', 'B', 'JAPANESE', 'B'),
(400, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(401, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(402, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'B'),
(403, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'B'),
(404, 'PHYSICS', 'A', 'CHEMISTRY', 'A', 'COMBINED MATHEMATICS', 'B'),
(405, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(406, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(407, 'POLITICAL SCIENCE', 'B', 'BUDDHIST CIVILIZATION', 'A', 'SINHALA', 'A'),
(408, 'POLITICAL SCIENCE', 'B', 'BUDDHIST CIVILIZATION', 'A', 'SINHALA', 'A'),
(409, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'B'),
(410, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(411, 'ECONOMICS', 'S', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'S'),
(412, 'GEOGRAPHY', 'A', 'ISLAMIC CIVILIZATION', 'A', 'ARABIC', 'C'),
(413, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(414, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(415, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'ECONOMICS', 'B', 'ACCOUNTING', 'A'),
(416, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'ENGLISH', 'S', 'CHINESE', 'C'),
(417, 'HISTORY OF SRI LANKA & INDIA', 'B', 'BUDDHIST CIVILIZATION', 'B', 'SINHALA', 'B'),
(418, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'A'),
(419, 'HISTORY OF SRI LANKA & INDIA', 'B', 'BUDDHIST CIVILIZATION', 'B', 'SINHALA', 'B'),
(420, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(421, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'A'),
(422, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'A'),
(423, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'A'),
(424, 'PHYSICS', 'B', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(425, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(426, 'PHYSICS', 'B', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(427, 'GEOGRAPHY', 'C', 'BUDDHISM', 'C', 'PALI', 'C'),
(428, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'A'),
(429, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'A'),
(430, 'PHYSICS', 'S', 'COMBINED MATHEMATICS', 'S', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B'),
(431, 'LOGIC & SCIENTIFIC METHOD', 'A', 'ART', 'A', 'GERMAN', 'B'),
(432, 'PHYSICS', 'S', 'COMBINED MATHEMATICS', 'S', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B'),
(433, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'BIOLOGY', 'S'),
(434, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'COMBINED MATHEMATICS', 'S'),
(435, 'GEOGRAPHY', 'C', 'BUDDHISM', 'C', 'PALI', 'C'),
(436, 'GEOGRAPHY', 'C', 'BUDDHISM', 'C', 'PALI', 'C'),
(437, 'ECONOMICS', 'B', 'LOGIC & SCIENTIFIC METHOD', 'C', 'COMMUNICATION & MEDIA STUDIES', 'A'),
(438, 'GEOGRAPHY', 'S', 'BUDDHISM', 'C', 'PALI', 'S'),
(439, 'POLITICAL SCIENCE', 'A', 'BUDDHIST CIVILIZATION', 'A', 'SINHALA', 'A'),
(440, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(441, 'GEOGRAPHY', 'S', 'BUDDHISM', 'C', 'PALI', 'S'),
(442, 'POLITICAL SCIENCE', 'A', 'BUDDHIST CIVILIZATION', 'A', 'SINHALA', 'A'),
(443, 'GEOGRAPHY', 'S', 'BUDDHISM', 'C', 'PALI', 'S'),
(444, 'LOGIC & SCIENTIFIC METHOD', 'C', 'COMMUNICATION & MEDIA STUDIES', 'C', 'SINHALA', 'A'),
(445, 'ECONOMICS', 'C', 'GEOGRAPHY', 'B', 'LOGIC & SCIENTIFIC METHOD', 'C'),
(446, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(447, 'PHYSICS', 'C', 'CHEMISTRY', 'S', 'COMBINED MATHEMATICS', 'S'),
(448, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'C'),
(449, 'ECONOMICS', 'C', 'GEOGRAPHY', 'B', 'LOGIC & SCIENTIFIC METHOD', 'C'),
(450, 'GEOGRAPHY', 'B', 'COMMUNICATION & MEDIA STUDIES', 'C', 'SINHALA', 'B'),
(451, 'GEOGRAPHY', 'Absent', 'HOME ECONOMICS', 'Absent', 'SINHALA', 'Absent'),
(452, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'B'),
(453, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(454, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(455, 'LOGIC & SCIENTIFIC METHOD', 'A', 'HISTORY OF SRI LANKA & EUROPE', 'C', 'COMMUNICATION & MEDIA STUDIES', 'B'),
(456, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'ECONOMICS', 'B', 'ACCOUNTING', 'B'),
(457, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'A'),
(458, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'ECONOMICS', 'B', 'ACCOUNTING', 'B'),
(459, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(460, 'PHYSICS', 'S', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'A'),
(461, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'A'),
(462, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'B'),
(463, 'GEOGRAPHY', 'B', 'LOGIC & SCIENTIFIC METHOD', 'A', 'COMMUNICATION & MEDIA STUDIES', 'A'),
(464, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'A'),
(465, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'C'),
(466, 'PHYSICS', 'C', 'CHEMISTRY', 'S', 'BIOLOGY', 'S'),
(467, 'AGRICULTURAL SCIENCE', 'B', 'ENGLISH', 'C', 'JAPANESE', 'S'),
(468, 'AGRICULTURAL SCIENCE', 'C', 'BIO SYSTEMS TECHNOLOGY', 'B', 'SCIENCE FOR TECHNOLOGY', 'C'),
(469, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(470, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(471, 'ECONOMICS', 'A', 'LOGIC & SCIENTIFIC METHOD', 'A', 'SINHALA', 'A'),
(472, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(473, 'PHYSICS', 'B', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(474, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'B'),
(475, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'S', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'S'),
(476, 'HISTORY OF SRI LANKA & EUROPE', 'B', 'COMMUNICATION & MEDIA STUDIES', 'A', 'SINHALA', 'B'),
(477, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'GEOGRAPHY', 'B', 'LOGIC & SCIENTIFIC METHOD', 'A'),
(478, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(479, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(480, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'COMBINED MATHEMATICS', 'S'),
(481, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'COMBINED MATHEMATICS', 'S'),
(482, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(483, 'COMMUNICATION & MEDIA STUDIES', 'C', 'ENGINEERING TECHNOLOGY', 'S', 'SCIENCE FOR TECHNOLOGY', 'S'),
(484, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(485, 'GEOGRAPHY', 'B', 'ORIENTAL MUSIC', 'B', 'DRAMA AND THEATRE (SINHALA)', 'B'),
(486, 'POLITICAL SCIENCE', 'C', 'HISTORY OF SRI LANKA & EUROPE', 'C', 'BUDDHIST CIVILIZATION', 'B'),
(487, 'POLITICAL SCIENCE', 'C', 'HISTORY OF SRI LANKA & EUROPE', 'C', 'BUDDHIST CIVILIZATION', 'B'),
(488, 'COMMUNICATION & MEDIA STUDIES', 'C', 'ENGINEERING TECHNOLOGY', 'S', 'SCIENCE FOR TECHNOLOGY', 'S'),
(489, 'GEOGRAPHY', 'A', 'POLITICAL SCIENCE', 'B', 'HISTORY OF SRI LANKA & INDIA', 'A'),
(490, 'ECONOMICS', 'B', 'GEOGRAPHY', 'B', 'SINHALA', 'A'),
(491, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'B'),
(492, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'POLITICAL SCIENCE', 'C', 'JAPANESE', 'B'),
(493, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(494, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'A'),
(495, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'C'),
(496, 'HISTORY OF SRI LANKA & INDIA', 'B', 'COMMUNICATION & MEDIA STUDIES', 'B', 'SINHALA', 'B'),
(497, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(498, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'A'),
(499, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'A'),
(500, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'B'),
(501, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(502, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'A'),
(503, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(504, 'AGRICULTURAL SCIENCE', 'B', 'GEOGRAPHY', 'A', 'COMMUNICATION & MEDIA STUDIES', 'A'),
(505, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(506, 'AGRICULTURAL SCIENCE', 'C', 'BIO SYSTEMS TECHNOLOGY', 'C', 'SCIENCE FOR TECHNOLOGY', 'S'),
(507, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(508, 'AGRICULTURAL SCIENCE', 'C', 'BIO SYSTEMS TECHNOLOGY', 'C', 'SCIENCE FOR TECHNOLOGY', 'S'),
(509, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(510, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(511, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'S', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'C'),
(512, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'S', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'C'),
(513, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(514, 'ECONOMICS', 'S', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'A'),
(515, 'PHYSICS', 'C', 'CHEMISTRY', 'S', 'COMBINED MATHEMATICS', 'C'),
(516, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'S'),
(517, 'PHYSICS', 'S', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(518, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(519, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'COMMUNICATION & MEDIA STUDIES', 'B', 'ART', 'B'),
(520, 'COMMUNICATION & MEDIA STUDIES', 'B', 'WESTERN MUSIC', 'B', 'FRENCH', 'C'),
(521, 'COMMUNICATION & MEDIA STUDIES', 'B', 'WESTERN MUSIC', 'B', 'FRENCH', 'C'),
(522, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'ECONOMICS', 'A', 'ACCOUNTING', 'B'),
(523, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'BIOLOGY', 'S'),
(524, 'ECONOMICS', 'A', 'BUSINESS STATISTICS', 'B', 'ACCOUNTING', 'A'),
(525, 'GEOGRAPHY', 'C', 'COMMUNICATION & MEDIA STUDIES', 'C', 'SINHALA', 'B'),
(526, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'BIOLOGY', 'S'),
(527, 'PHYSICS', 'S', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(528, 'GEOGRAPHY', 'C', 'COMMUNICATION & MEDIA STUDIES', 'B', 'SINHALA', 'A'),
(529, 'HISTORY OF SRI LANKA & INDIA', 'A', 'COMMUNICATION & MEDIA STUDIES', 'C', 'SINHALA', 'A'),
(530, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(531, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(532, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'BIOLOGY', 'S'),
(533, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(534, 'COMMUNICATION & MEDIA STUDIES', 'C', 'ENGINEERING TECHNOLOGY', 'C', 'SCIENCE FOR TECHNOLOGY', 'C'),
(535, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(536, 'HISTORY OF SRI LANKA & INDIA', 'A', 'COMMUNICATION & MEDIA STUDIES', 'C', 'SINHALA', 'A'),
(537, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(538, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'S'),
(539, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'ENGLISH', 'S', 'FRENCH', 'C'),
(540, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(541, 'ECONOMICS', 'A', 'POLITICAL SCIENCE', 'A', 'LOGIC & SCIENTIFIC METHOD', 'B'),
(542, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'ECONOMICS', 'A', 'ACCOUNTING', 'C'),
(543, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'ENGLISH', 'S', 'FRENCH', 'C'),
(544, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(545, 'ECONOMICS', 'B', 'BUSINESS STATISTICS', 'B', 'ACCOUNTING', 'A'),
(546, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'B'),
(547, 'COMMUNICATION & MEDIA STUDIES', 'B', 'ORIENTAL MUSIC', 'B', 'SINHALA', 'A'),
(548, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(549, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(550, 'COMMUNICATION & MEDIA STUDIES', 'B', 'ORIENTAL MUSIC', 'B', 'SINHALA', 'A'),
(551, 'GEOGRAPHY', 'A', 'POLITICAL SCIENCE', 'A', 'BUDDHIST CIVILIZATION', 'A'),
(552, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(553, 'AGRICULTURAL SCIENCE', 'C', 'POLITICAL SCIENCE', 'C', 'HISTORY OF SRI LANKA & EUROPE', 'C'),
(554, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(555, 'PHYSICS', 'B', 'CHEMISTRY', 'A', 'BIOLOGY', 'C'),
(556, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C'),
(557, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C'),
(558, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(559, 'ECONOMICS', 'C', 'GEOGRAPHY', 'C', 'LOGIC & SCIENTIFIC METHOD', 'S'),
(560, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(561, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(562, 'HOME ECONOMICS', 'A', 'DANCING(INDIGENOUS)', 'A', 'SINHALA', 'C'),
(563, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(564, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'GEOGRAPHY', 'C', 'HOME ECONOMICS', 'B'),
(565, 'ECONOMICS', 'C', 'GEOGRAPHY', 'C', 'LOGIC & SCIENTIFIC METHOD', 'S'),
(566, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'GEOGRAPHY', 'C', 'HOME ECONOMICS', 'A'),
(567, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(568, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(569, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'GEOGRAPHY', 'C', 'SINHALA', 'A'),
(570, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(571, 'PHYSICS', 'A', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'A'),
(572, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'ART', 'A', 'SINHALA', 'A'),
(573, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(574, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'ART', 'A', 'SINHALA', 'A'),
(575, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'BIOLOGY', 'B'),
(576, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(577, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'POLITICAL SCIENCE', 'B', 'LOGIC & SCIENTIFIC METHOD', 'B'),
(578, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(579, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(580, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'C'),
(581, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'C'),
(582, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'B'),
(583, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'BIOLOGY', 'S'),
(584, 'GEOGRAPHY', 'C', 'HOME ECONOMICS', 'B', 'SINHALA', 'B'),
(585, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'BIOLOGY', 'S'),
(586, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'A'),
(587, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'S', 'GEOGRAPHY', 'C', 'HISTORY OF SRI LANKA & INDIA', 'B'),
(588, 'PHYSICS', 'C', 'CHEMISTRY', 'A', 'BIOLOGY', 'B'),
(589, 'PHYSICS', 'C', 'CHEMISTRY', 'A', 'BIOLOGY', 'B'),
(590, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'ENGINEERING TECHNOLOGY', 'C', 'SCIENCE FOR TECHNOLOGY', 'C'),
(591, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'BIOLOGY', 'B'),
(592, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C'),
(593, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C'),
(594, 'POLITICAL SCIENCE', 'B', 'COMMUNICATION & MEDIA STUDIES', 'B', 'SINHALA', 'C'),
(595, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(596, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'B'),
(597, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'S', 'GEOGRAPHY', 'B', 'ISLAM', 'B'),
(598, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'BIOLOGY', 'B'),
(599, 'POLITICAL SCIENCE', 'A', 'HISTORY OF SRI LANKA & INDIA', 'C', 'SINHALA', 'A'),
(600, 'POLITICAL SCIENCE', 'A', 'HISTORY OF SRI LANKA & INDIA', 'C', 'SINHALA', 'A'),
(601, 'PHYSICS', 'C', 'CHEMISTRY', 'S', 'COMBINED MATHEMATICS', 'C'),
(602, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(603, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'BIOLOGY', 'B'),
(604, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'A'),
(605, 'PHYSICS', 'S', 'COMBINED MATHEMATICS', 'S', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B'),
(606, 'GEOGRAPHY', 'B', 'POLITICAL SCIENCE', 'B', 'HISTORY OF SRI LANKA & EUROPE', 'A'),
(607, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(608, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'BIOLOGY', 'S'),
(609, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'B'),
(610, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'ENGINEERING TECHNOLOGY', 'S', 'SCIENCE FOR TECHNOLOGY', 'C'),
(611, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'ENGINEERING TECHNOLOGY', 'S', 'SCIENCE FOR TECHNOLOGY', 'C'),
(612, 'PHYSICS', 'S', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B'),
(613, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'A'),
(614, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'C'),
(615, 'GEOGRAPHY', 'B', 'HISTORY OF SRI LANKA & INDIA', 'B', 'SINHALA', 'B'),
(616, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(617, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'B'),
(618, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'B'),
(619, 'POLITICAL SCIENCE', 'C', 'BUDDHIST CIVILIZATION', 'B', 'SINHALA', 'B'),
(620, 'POLITICAL SCIENCE', 'C', 'BUDDHIST CIVILIZATION', 'B', 'SINHALA', 'B'),
(621, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(622, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'ECONOMICS', 'B', 'ACCOUNTING', 'A'),
(623, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'GEOGRAPHY', 'A', 'SINHALA', 'A'),
(624, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'B'),
(625, 'ECONOMICS', 'C', 'GEOGRAPHY', 'A', 'LOGIC & SCIENTIFIC METHOD', 'B'),
(626, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'GEOGRAPHY', 'A', 'SINHALA', 'A'),
(627, 'HISTORY OF SRI LANKA & EUROPE', 'C', 'COMMUNICATION & MEDIA STUDIES', 'B', 'SINHALA', 'A'),
(628, 'GEOGRAPHY', 'C', 'POLITICAL SCIENCE', 'A', 'SINHALA', 'A'),
(629, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'S', 'LOGIC & SCIENTIFIC METHOD', 'S', 'COMMUNICATION & MEDIA STUDIES', 'C'),
(630, 'POLITICAL SCIENCE', 'C', 'COMMUNICATION & MEDIA STUDIES', 'C', 'SINHALA', 'B'),
(631, 'POLITICAL SCIENCE', 'C', 'COMMUNICATION & MEDIA STUDIES', 'C', 'SINHALA', 'B'),
(632, 'GEOGRAPHY', 'B', 'COMMUNICATION & MEDIA STUDIES', 'A', 'SINHALA', 'A'),
(633, 'GEOGRAPHY', 'B', 'LOGIC & SCIENTIFIC METHOD', 'C', 'FRENCH', 'C'),
(634, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B'),
(635, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(636, 'GEOGRAPHY', 'C', 'ENGINEERING TECHNOLOGY', 'B', 'SCIENCE FOR TECHNOLOGY', 'S'),
(637, 'POLITICAL SCIENCE', 'A', 'COMMUNICATION & MEDIA STUDIES', 'A', 'SINHALA', 'A'),
(638, 'POLITICAL SCIENCE', 'A', 'COMMUNICATION & MEDIA STUDIES', 'A', 'SINHALA', 'A'),
(639, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'C'),
(640, 'GEOGRAPHY', 'S', 'COMMUNICATION & MEDIA STUDIES', 'S', 'DRAMA AND THEATRE (SINHALA)', 'C'),
(641, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'B', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B'),
(642, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'BIOLOGY', 'C'),
(643, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'BIOLOGY', 'C'),
(644, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(645, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(646, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(647, 'POLITICAL SCIENCE', 'A', 'COMMUNICATION & MEDIA STUDIES', 'A', 'SINHALA', 'A'),
(648, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'ENGLISH', 'S', 'FRENCH', 'C'),
(649, 'ECONOMICS', 'B', 'GEOGRAPHY', 'A', 'SINHALA', 'A'),
(650, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'A'),
(651, 'GEOGRAPHY', 'B', 'COMMUNICATION & MEDIA STUDIES', 'C', 'DANCING(INDIGENOUS)', 'A'),
(652, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(653, 'GEOGRAPHY', 'B', 'COMMUNICATION & MEDIA STUDIES', 'C', 'DANCING(INDIGENOUS)', 'A'),
(654, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'BUSINESS STUDIES', 'S', 'ACCOUNTING', 'S'),
(655, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'S'),
(656, 'GEOGRAPHY', 'B', 'COMMUNICATION & MEDIA STUDIES', 'C', 'DANCING(INDIGENOUS)', 'A'),
(657, 'HISTORY OF SRI LANKA & EUROPE', 'A', 'SINHALA', 'B', 'GERMAN', 'C'),
(658, 'GEOGRAPHY', 'C', 'DANCING(INDIGENOUS)', 'C', 'HINDI', 'A'),
(659, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'S'),
(660, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'S'),
(661, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'BIOLOGY', 'B'),
(662, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'C'),
(663, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(664, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(665, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(666, 'POLITICAL SCIENCE', 'A', 'LOGIC & SCIENTIFIC METHOD', 'C', 'SINHALA', 'B'),
(667, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'C'),
(668, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'GEOGRAPHY', 'A', 'JAPANESE', 'C'),
(669, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'C'),
(670, 'POLITICAL SCIENCE', 'A', 'LOGIC & SCIENTIFIC METHOD', 'C', 'SINHALA', 'B'),
(671, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'GEOGRAPHY', 'A', 'JAPANESE', 'C'),
(672, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(673, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(674, 'PHYSICS', 'S', 'COMBINED MATHEMATICS', 'S', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'A');
INSERT INTO `result` (`id`, `subject1`, `subject1_grade`, `subject2`, `subject2_grade`, `subject3`, `subject3_grade`) VALUES
(675, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B'),
(676, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B'),
(677, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(678, 'PHYSICS', 'S', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(679, 'POLITICAL SCIENCE', 'C', 'LOGIC & SCIENTIFIC METHOD', 'C', 'COMMUNICATION & MEDIA STUDIES', 'B'),
(680, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(681, 'POLITICAL SCIENCE', 'C', 'LOGIC & SCIENTIFIC METHOD', 'C', 'COMMUNICATION & MEDIA STUDIES', 'B'),
(682, 'ECONOMICS', 'S', 'BUSINESS STUDIES', 'S', 'ACCOUNTING', 'C'),
(683, 'GEOGRAPHY', 'B', 'HISTORY OF SRI LANKA & INDIA', 'A', 'CHINESE', 'B'),
(684, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'C'),
(685, 'GEOGRAPHY', 'B', 'HISTORY OF SRI LANKA & INDIA', 'A', 'CHINESE', 'B'),
(686, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'POLITICAL SCIENCE', 'C', 'SINHALA', 'A'),
(687, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'POLITICAL SCIENCE', 'C', 'SINHALA', 'A'),
(688, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'S', 'ENGINEERING TECHNOLOGY', 'S', 'SCIENCE FOR TECHNOLOGY', 'S'),
(689, 'PHYSICS', 'B', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(690, 'PHYSICS', 'C', 'CHEMISTRY', 'A', 'BIOLOGY', 'C'),
(691, 'GEOGRAPHY', 'A', 'BUDDHIST CIVILIZATION', 'A', 'SINHALA', 'B'),
(692, 'GEOGRAPHY', 'B', 'DANCING(INDIGENOUS)', 'A', 'SINHALA', 'A'),
(693, 'GEOGRAPHY', 'B', 'DANCING(INDIGENOUS)', 'A', 'SINHALA', 'A'),
(694, 'PHYSICS', 'B', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(695, 'LOGIC & SCIENTIFIC METHOD', 'C', 'HISTORY OF SRI LANKA & INDIA', 'C', 'COMMUNICATION & MEDIA STUDIES', 'B'),
(696, 'COMMUNICATION & MEDIA STUDIES', 'A', 'BUDDHIST CIVILIZATION', 'B', 'SINHALA', 'A'),
(697, 'COMMUNICATION & MEDIA STUDIES', 'A', 'BUDDHIST CIVILIZATION', 'B', 'SINHALA', 'A'),
(698, 'HISTORY OF SRI LANKA & INDIA', 'B', 'DANCING(INDIGENOUS)', 'B', 'SINHALA', 'A'),
(699, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'C'),
(700, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'C'),
(701, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'BIOLOGY', 'S'),
(702, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'BIOLOGY', 'S'),
(703, 'ORIENTAL MUSIC', 'A', 'SINHALA', 'A', 'HINDI', 'B'),
(704, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(705, 'GEOGRAPHY', 'C', 'HISTORY OF SRI LANKA & INDIA', 'C', 'DANCING(INDIGENOUS)', 'C'),
(706, 'GEOGRAPHY', 'C', 'HISTORY OF SRI LANKA & INDIA', 'C', 'DANCING(INDIGENOUS)', 'C'),
(707, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B'),
(708, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'C'),
(709, 'PHYSICS', 'C', 'CHEMISTRY', 'A', 'BIOLOGY', 'B'),
(710, 'ORIENTAL MUSIC', 'A', 'SINHALA', 'A', 'HINDI', 'B'),
(711, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'A'),
(712, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(713, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'ENGINEERING TECHNOLOGY', 'C', 'SCIENCE FOR TECHNOLOGY', 'S'),
(714, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(715, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(716, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'B'),
(717, 'MATHEMATICS', 'B', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'LOGIC & SCIENTIFIC METHOD', 'A'),
(718, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(719, 'MATHEMATICS', 'B', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'LOGIC & SCIENTIFIC METHOD', 'A'),
(720, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'B'),
(721, 'HISTORY OF SRI LANKA & EUROPE', 'C', 'CHRISTIAN CIVILIZATION', 'A', 'ART', 'A'),
(722, 'GEOGRAPHY', 'A', 'WESTERN MUSIC', 'A', 'FRENCH', 'B'),
(723, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'A'),
(724, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(725, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(726, 'GREEK & ROMAN CIVILIZATION', 'C', 'ENGLISH', 'S', 'FRENCH', 'S'),
(727, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(728, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'B', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'A'),
(729, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(730, 'ECONOMICS', 'C', 'LOGIC & SCIENTIFIC METHOD', 'B', 'ENGLISH', 'C'),
(731, 'GEOGRAPHY', 'A', 'HOME ECONOMICS', 'A', 'FRENCH', 'B'),
(732, 'PHYSICS', 'A', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'B'),
(733, 'ECONOMICS', 'C', 'LOGIC & SCIENTIFIC METHOD', 'B', 'ENGLISH', 'C'),
(734, 'POLITICAL SCIENCE', 'A', 'LOGIC & SCIENTIFIC METHOD', 'B', 'BUSINESS STATISTICS', 'C'),
(735, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'C'),
(736, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'B'),
(737, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(738, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(739, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(740, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'S', 'GEOGRAPHY', 'C', 'SINHALA', 'B'),
(741, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'COMBINED MATHEMATICS', 'C'),
(742, 'ECONOMICS', 'C', 'COMMUNICATION & MEDIA STUDIES', 'C', 'HINDI', 'A'),
(743, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'B'),
(744, 'ECONOMICS', 'C', 'COMMUNICATION & MEDIA STUDIES', 'C', 'HINDI', 'A'),
(745, 'ECONOMICS', 'C', 'COMMUNICATION & MEDIA STUDIES', 'C', 'HINDI', 'A'),
(746, 'ECONOMICS', 'C', 'COMMUNICATION & MEDIA STUDIES', 'C', 'HINDI', 'A'),
(747, 'ECONOMICS', 'C', 'COMMUNICATION & MEDIA STUDIES', 'C', 'HINDI', 'A'),
(748, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'A'),
(749, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'A'),
(750, 'ECONOMICS', 'C', 'COMMUNICATION & MEDIA STUDIES', 'C', 'HINDI', 'A'),
(751, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'B'),
(752, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(753, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'B'),
(754, 'POLITICAL SCIENCE', 'B', 'HISTORY OF SRI LANKA & INDIA', 'B', 'BUDDHIST CIVILIZATION', 'B'),
(755, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'BIOLOGY', 'S'),
(756, 'PHYSICS', 'B', 'CHEMISTRY', 'S', 'BIOLOGY', 'C'),
(757, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'A'),
(758, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'BIO SYSTEMS TECHNOLOGY', 'C', 'SCIENCE FOR TECHNOLOGY', 'B'),
(759, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'BIO SYSTEMS TECHNOLOGY', 'C', 'SCIENCE FOR TECHNOLOGY', 'B'),
(760, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(761, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'B'),
(762, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'ENGINEERING TECHNOLOGY', 'C', 'SCIENCE FOR TECHNOLOGY', 'S'),
(763, 'PHYSICS', 'B', 'COMBINED MATHEMATICS', 'B', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B'),
(764, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'A'),
(765, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(766, 'AGRICULTURAL SCIENCE', 'B', 'ECONOMICS', 'B', 'GEOGRAPHY', 'B'),
(767, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(768, 'GEOGRAPHY', 'A', 'HOME ECONOMICS', 'A', 'SINHALA', 'A'),
(769, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'S', 'BIO SYSTEMS TECHNOLOGY', 'B', 'SCIENCE FOR TECHNOLOGY', 'S'),
(770, 'COMMUNICATION & MEDIA STUDIES', 'B', 'DRAMA AND THEATRE (SINHALA)', 'C', 'SINHALA', 'B'),
(771, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'S', 'BIO SYSTEMS TECHNOLOGY', 'B', 'SCIENCE FOR TECHNOLOGY', 'S'),
(772, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(773, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B'),
(774, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(775, 'COMMUNICATION & MEDIA STUDIES', 'B', 'BUDDHIST CIVILIZATION', 'B', 'SINHALA', 'B'),
(776, 'COMMUNICATION & MEDIA STUDIES', 'B', 'BUDDHIST CIVILIZATION', 'B', 'SINHALA', 'B'),
(777, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'C'),
(778, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(779, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(780, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(781, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(782, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(783, 'PHYSICS', 'B', 'CHEMISTRY', 'A', 'COMBINED MATHEMATICS', 'A'),
(784, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'BIOLOGY', 'S'),
(785, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'BIOLOGY', 'S'),
(786, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'C'),
(787, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(788, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'A'),
(789, 'PHYSICS', 'B', 'CHEMISTRY', 'A', 'COMBINED MATHEMATICS', 'C'),
(790, 'PHYSICS', 'S', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(791, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'S', 'HISTORY OF SRI LANKA & INDIA', 'C', 'COMMUNICATION & MEDIA STUDIES', 'C'),
(792, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(793, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(794, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(795, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(796, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(797, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(798, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(799, 'PHYSICS', 'S', 'COMBINED MATHEMATICS', 'S', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C'),
(800, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'S', 'COMMUNICATION & MEDIA STUDIES', 'C', 'ORIENTAL MUSIC', 'B'),
(801, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(802, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'ECONOMICS', 'A', 'ACCOUNTING', 'A'),
(803, 'PHYSICS', 'S', 'CHEMISTRY', 'B', 'BIOLOGY', 'S'),
(804, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'COMBINED MATHEMATICS', 'C'),
(805, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'B'),
(806, 'PHYSICS', 'S', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B'),
(807, 'ECONOMICS', 'C', 'LOGIC & SCIENTIFIC METHOD', 'B', 'ENGLISH', 'C'),
(808, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'C'),
(809, 'POLITICAL SCIENCE', 'C', 'COMMUNICATION & MEDIA STUDIES', 'C', 'SINHALA', 'A'),
(810, 'PHYSICS', 'B', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'B'),
(811, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'GEOGRAPHY', 'C', 'JAPANESE', 'A'),
(812, 'GEOGRAPHY', 'B', 'HISTORY OF SRI LANKA & INDIA', 'A', 'FRENCH', 'C'),
(813, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'A'),
(814, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(815, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(816, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(817, 'PHYSICS', 'B', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'B'),
(818, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(819, 'GEOGRAPHY', 'S', 'COMMUNICATION & MEDIA STUDIES', 'B', 'SINHALA', 'A'),
(820, 'POLITICAL SCIENCE', 'A', 'COMMUNICATION & MEDIA STUDIES', 'C', 'FRENCH', 'C'),
(821, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(822, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'C'),
(823, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'B'),
(824, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B', 'LOGIC & SCIENTIFIC METHOD', 'A', 'FRENCH', 'B'),
(825, 'ECONOMICS', 'B', 'POLITICAL SCIENCE', 'C', 'LOGIC & SCIENTIFIC METHOD', 'B'),
(826, 'PHYSICS', 'C', 'CHEMISTRY', 'A', 'COMBINED MATHEMATICS', 'A'),
(827, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(828, 'ECONOMICS', 'B', 'POLITICAL SCIENCE', 'C', 'LOGIC & SCIENTIFIC METHOD', 'C'),
(829, 'ECONOMICS', 'B', 'POLITICAL SCIENCE', 'C', 'LOGIC & SCIENTIFIC METHOD', 'C'),
(830, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'B'),
(831, 'GEOGRAPHY', 'A', 'POLITICAL SCIENCE', 'A', 'ORIENTAL MUSIC', 'B'),
(832, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'B'),
(833, 'GEOGRAPHY', 'B', 'COMMUNICATION & MEDIA STUDIES', 'A', 'SINHALA', 'A'),
(834, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'B'),
(835, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'A'),
(836, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'BIOLOGY', 'C'),
(837, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'A'),
(838, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(839, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(840, 'POLITICAL SCIENCE', 'C', 'COMMUNICATION & MEDIA STUDIES', 'B', 'SINHALA', 'A'),
(841, 'ECONOMICS', 'B', 'GEOGRAPHY', 'A', 'SINHALA', 'A'),
(842, 'ECONOMICS', 'B', 'GEOGRAPHY', 'A', 'SINHALA', 'A'),
(843, 'GEOGRAPHY', 'A', 'SINHALA', 'A', 'ENGLISH', 'C'),
(844, 'COMMUNICATION & MEDIA STUDIES', 'B', 'SINHALA', 'A', 'GERMAN', 'C'),
(845, 'GEOGRAPHY', 'C', 'POLITICAL SCIENCE', 'A', 'SINHALA', 'A'),
(846, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B'),
(847, 'HISTORY OF SRI LANKA & INDIA', 'C', 'DRAMA AND THEATRE (SINHALA)', 'A', 'SINHALA', 'A'),
(848, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'BIOLOGY', 'B'),
(849, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'B'),
(850, 'GEOGRAPHY', 'S', 'COMMUNICATION & MEDIA STUDIES', 'C', 'CHINESE', 'S'),
(851, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'B'),
(852, 'ECONOMICS', 'C', 'GEOGRAPHY', 'A', 'SINHALA', 'C'),
(853, 'ECONOMICS', 'C', 'GEOGRAPHY', 'A', 'SINHALA', 'C'),
(854, 'POLITICAL SCIENCE', 'B', 'COMMUNICATION & MEDIA STUDIES', 'A', 'DRAMA AND THEATRE (SINHALA)', 'B'),
(855, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'C'),
(856, 'ECONOMICS', 'C', 'GEOGRAPHY', 'A', 'SINHALA', 'C'),
(857, 'GEOGRAPHY', 'A', 'HISTORY OF SRI LANKA & EUROPE', 'A', 'BUSINESS STATISTICS', 'C'),
(858, 'GEOGRAPHY', 'A', 'HISTORY OF SRI LANKA & EUROPE', 'A', 'BUSINESS STATISTICS', 'C'),
(859, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'S', 'BIO SYSTEMS TECHNOLOGY', 'S', 'SCIENCE FOR TECHNOLOGY', 'S'),
(860, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(861, 'POLITICAL SCIENCE', 'B', 'COMMUNICATION & MEDIA STUDIES', 'A', 'DANCING(INDIGENOUS)', 'B'),
(862, 'POLITICAL SCIENCE', 'B', 'COMMUNICATION & MEDIA STUDIES', 'A', 'DANCING(INDIGENOUS)', 'B'),
(863, 'GEOGRAPHY', 'C', 'HOME ECONOMICS', 'A', 'SINHALA', 'B'),
(864, 'GEOGRAPHY', 'B', 'COMMUNICATION & MEDIA STUDIES', 'A', 'SINHALA', 'A'),
(865, 'GEOGRAPHY', 'C', 'HOME ECONOMICS', 'A', 'SINHALA', 'B'),
(866, 'GEOGRAPHY', 'C', 'HOME ECONOMICS', 'A', 'SINHALA', 'B'),
(867, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(868, 'ECONOMICS', 'B', 'ENGLISH', 'S', 'JAPANESE', 'B'),
(869, 'GEOGRAPHY', 'A', 'DANCING(INDIGENOUS)', 'A', 'SINHALA', 'A'),
(870, 'GEOGRAPHY', 'C', 'HOME ECONOMICS', 'A', 'SINHALA', 'B'),
(871, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'S'),
(872, 'GEOGRAPHY', 'C', 'DANCING(INDIGENOUS)', 'A', 'SINHALA', 'B'),
(873, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(874, 'AGRICULTURAL SCIENCE', 'C', 'ENGINEERING TECHNOLOGY', 'C', 'SCIENCE FOR TECHNOLOGY', 'C'),
(875, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(876, 'GEOGRAPHY', 'B', 'ART', 'A', 'SINHALA', 'B'),
(877, 'POLITICAL SCIENCE', 'C', 'LOGIC & SCIENTIFIC METHOD', 'C', 'SINHALA', 'A'),
(878, NULL, NULL, NULL, NULL, NULL, NULL),
(879, 'GEOGRAPHY', 'S', 'COMMUNICATION & MEDIA STUDIES', 'S', 'DANCING(INDIGENOUS)', 'S'),
(880, 'AGRICULTURAL SCIENCE', 'S', 'BIO SYSTEMS TECHNOLOGY', 'S', 'SCIENCE FOR TECHNOLOGY', 'S'),
(881, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'ECONOMICS', 'A', 'GEOGRAPHY', 'C'),
(882, 'GEOGRAPHY', 'B', 'ISLAMIC CIVILIZATION', 'B', 'TAMIL', 'C'),
(883, 'CHRISTIANITY', 'A', 'ART', 'S', 'FRENCH', 'S'),
(884, 'GEOGRAPHY', 'B', 'ISLAMIC CIVILIZATION', 'B', 'TAMIL', 'C'),
(885, 'GEOGRAPHY', 'B', 'ISLAMIC CIVILIZATION', 'B', 'TAMIL', 'C'),
(886, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(887, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'BIOLOGY', 'S'),
(888, NULL, NULL, NULL, NULL, NULL, NULL),
(889, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(890, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'C'),
(891, 'POLITICAL SCIENCE', 'A', 'LOGIC & SCIENTIFIC METHOD', 'C', 'COMMUNICATION & MEDIA STUDIES', 'B'),
(892, 'AGRICULTURAL SCIENCE', 'C', 'GEOGRAPHY', 'B', 'POLITICAL SCIENCE', 'C'),
(893, 'GEOGRAPHY', 'B', 'COMMUNICATION & MEDIA STUDIES', 'B', 'DANCING(INDIGENOUS)', 'A'),
(894, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(895, 'POLITICAL SCIENCE', 'A', 'HISTORY OF SRI LANKA & INDIA', 'B', 'BUDDHIST CIVILIZATION', 'A'),
(896, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(897, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(898, 'HISTORY OF SRI LANKA & EUROPE', 'B', 'BUDDHIST CIVILIZATION', 'B', 'SINHALA', 'B'),
(899, 'POLITICAL SCIENCE', 'C', 'COMMUNICATION & MEDIA STUDIES', 'S', 'SINHALA', 'C'),
(900, 'AGRICULTURAL SCIENCE', 'C', 'GEOGRAPHY', 'B', 'POLITICAL SCIENCE', 'C'),
(901, 'AGRICULTURAL SCIENCE', 'C', 'GEOGRAPHY', 'B', 'POLITICAL SCIENCE', 'C'),
(902, 'MATHEMATICS', 'C', 'GEOGRAPHY', 'A', 'LOGIC & SCIENTIFIC METHOD', 'A'),
(903, 'MATHEMATICS', 'C', 'GEOGRAPHY', 'A', 'LOGIC & SCIENTIFIC METHOD', 'A'),
(904, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(905, 'AGRICULTURAL SCIENCE', 'C', 'GEOGRAPHY', 'B', 'POLITICAL SCIENCE', 'C'),
(906, 'MATHEMATICS', 'C', 'GEOGRAPHY', 'A', 'LOGIC & SCIENTIFIC METHOD', 'A'),
(907, 'PHYSICS', 'S', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'A'),
(908, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(909, 'MATHEMATICS', 'C', 'GEOGRAPHY', 'A', 'LOGIC & SCIENTIFIC METHOD', 'A'),
(910, 'AGRICULTURAL SCIENCE', 'C', 'GEOGRAPHY', 'B', 'POLITICAL SCIENCE', 'C'),
(911, 'COMMUNICATION & MEDIA STUDIES', 'C', 'DRAMA AND THEATRE (SINHALA)', 'C', 'SINHALA', 'C'),
(912, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'A'),
(913, 'PHYSICS', 'S', 'COMBINED MATHEMATICS', 'S', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C'),
(914, 'PHYSICS', 'S', 'COMBINED MATHEMATICS', 'S', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C'),
(915, 'PHYSICS', 'S', 'COMBINED MATHEMATICS', 'S', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C'),
(916, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'B'),
(917, 'AGRICULTURAL SCIENCE', 'S', 'BIO SYSTEMS TECHNOLOGY', 'C', 'SCIENCE FOR TECHNOLOGY', 'S'),
(918, 'PHYSICS', 'S', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C'),
(919, 'PHYSICS', 'B', 'CHEMISTRY', 'A', 'BIOLOGY', 'C'),
(920, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'A'),
(921, 'AGRICULTURAL SCIENCE', 'S', 'GEOGRAPHY', 'A', 'SINHALA', 'C'),
(922, 'AGRICULTURAL SCIENCE', 'S', 'GEOGRAPHY', 'A', 'SINHALA', 'C'),
(923, 'GEOGRAPHY', 'B', 'LOGIC & SCIENTIFIC METHOD', 'C', 'COMMUNICATION & MEDIA STUDIES', 'C'),
(924, 'GEOGRAPHY', 'A', 'COMMUNICATION & MEDIA STUDIES', 'B', 'SINHALA', 'B'),
(925, 'GEOGRAPHY', 'B', 'POLITICAL SCIENCE', 'B', 'SINHALA', 'B'),
(926, 'GEOGRAPHY', 'C', 'HISTORY OF SRI LANKA & INDIA', 'B', 'COMMUNICATION & MEDIA STUDIES', 'B'),
(927, 'GEOGRAPHY', 'B', 'LOGIC & SCIENTIFIC METHOD', 'C', 'COMMUNICATION & MEDIA STUDIES', 'C'),
(928, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(929, 'LOGIC & SCIENTIFIC METHOD', 'S', 'DANCING(INDIGENOUS)', 'A', 'SINHALA', 'A'),
(930, 'COMMUNICATION & MEDIA STUDIES', 'S', 'ORIENTAL MUSIC', 'A', 'SINHALA', 'C'),
(931, 'POLITICAL SCIENCE', 'B', 'COMMUNICATION & MEDIA STUDIES', 'B', 'DRAMA AND THEATRE (SINHALA)', 'A'),
(932, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'A'),
(933, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'B'),
(934, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(935, 'COMMUNICATION & MEDIA STUDIES', 'B', 'DRAMA AND THEATRE (SINHALA)', 'B', 'SINHALA', 'C'),
(936, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'B'),
(937, 'LOGIC & SCIENTIFIC METHOD', 'C', 'DRAMA AND THEATRE (TAMIL)', 'C', 'TAMIL', 'C'),
(938, 'ECONOMICS', 'C', 'BUDDHIST CIVILIZATION', 'A', 'SINHALA', 'A'),
(939, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(940, 'ECONOMICS', 'C', 'GEOGRAPHY', 'C', 'COMMUNICATION & MEDIA STUDIES', 'B'),
(941, 'ECONOMICS', 'C', 'BUDDHIST CIVILIZATION', 'A', 'SINHALA', 'A'),
(942, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'B'),
(943, 'COMMUNICATION & MEDIA STUDIES', 'B', 'DANCING(INDIGENOUS)', 'S', 'SINHALA', 'A'),
(944, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'C', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'B'),
(945, 'PHYSICS', 'B', 'CHEMISTRY', 'A', 'COMBINED MATHEMATICS', 'C'),
(946, 'ECONOMICS', 'C', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'B'),
(947, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'B'),
(948, 'GEOGRAPHY', 'C', 'HISTORY OF SRI LANKA & INDIA', 'C', 'BUDDHIST CIVILIZATION', 'C'),
(949, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'COMMUNICATION & MEDIA STUDIES', 'B', 'BUDDHIST CIVILIZATION', 'B'),
(950, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'COMMUNICATION & MEDIA STUDIES', 'B', 'BUDDHIST CIVILIZATION', 'B'),
(951, 'PHYSICS', 'C', 'CHEMISTRY', 'A', 'BIOLOGY', 'C'),
(952, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'ECONOMICS', 'B', 'ACCOUNTING', 'B'),
(953, 'COMMUNICATION & MEDIA STUDIES', 'C', 'ORIENTAL MUSIC', 'A', 'SINHALA', 'B'),
(954, 'HOME ECONOMICS', 'A', 'COMMUNICATION & MEDIA STUDIES', 'C', 'SINHALA', 'B'),
(955, 'POLITICAL SCIENCE', 'C', 'DRAMA AND THEATRE (SINHALA)', 'B', 'SINHALA', 'B'),
(956, 'POLITICAL SCIENCE', 'C', 'DRAMA AND THEATRE (SINHALA)', 'B', 'SINHALA', 'B'),
(957, 'POLITICAL SCIENCE', 'C', 'DRAMA AND THEATRE (SINHALA)', 'B', 'SINHALA', 'B'),
(958, 'ECONOMICS', 'B', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'A'),
(959, 'ECONOMICS', 'S', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'S'),
(960, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'LOGIC & SCIENTIFIC METHOD', 'B', 'FRENCH', 'C'),
(961, 'PHYSICS', 'S', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(962, 'PHYSICS', 'B', 'CHEMISTRY', 'A', 'BIOLOGY', 'C'),
(963, 'ECONOMICS', 'S', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'S'),
(964, 'ECONOMICS', 'S', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'S'),
(965, 'CHEMISTRY', 'S', 'AGRICULTURAL SCIENCE', 'C', 'BIOLOGY', 'S'),
(966, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(967, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'BIOLOGY', 'C'),
(968, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B'),
(969, 'PHYSICS', 'B', 'CHEMISTRY', 'B', 'BIOLOGY', 'C'),
(970, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'A', 'ACCOUNTING', 'A'),
(971, 'PHYSICS', 'C', 'COMBINED MATHEMATICS', 'B', 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C'),
(972, 'PHYSICS', 'B', 'CHEMISTRY', 'A', 'BIOLOGY', 'C'),
(973, 'PHYSICS', 'B', 'CHEMISTRY', 'A', 'BIOLOGY', 'C'),
(974, 'GEOGRAPHY', 'C', 'POLITICAL SCIENCE', 'B', 'ISLAM', 'A'),
(975, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'COMBINED MATHEMATICS', 'S'),
(976, 'INFORMATION & COMMUNICATION TECHNOLOGY', 'C', 'ENGINEERING TECHNOLOGY', 'S', 'SCIENCE FOR TECHNOLOGY', 'C'),
(977, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'B', 'ACCOUNTING', 'A'),
(978, 'GEOGRAPHY', 'C', 'POLITICAL SCIENCE', 'B', 'ISLAM', 'A'),
(979, 'LOGIC & SCIENTIFIC METHOD', 'B', 'ENGLISH', 'C', 'FRENCH', 'B'),
(980, 'GEOGRAPHY', 'C', 'ART', 'B', 'SINHALA', 'B'),
(981, 'GEOGRAPHY', 'C', 'POLITICAL SCIENCE', 'B', 'ISLAM', 'A'),
(982, 'GEOGRAPHY', 'C', 'POLITICAL SCIENCE', 'B', 'ISLAM', 'A'),
(983, 'PHYSICS', 'B', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(984, 'GEOGRAPHY', 'C', 'POLITICAL SCIENCE', 'B', 'ISLAM', 'A'),
(985, 'PHYSICS', 'S', 'CHEMISTRY', 'S', 'COMBINED MATHEMATICS', 'S'),
(986, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'B'),
(987, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'BIOLOGY', 'B'),
(988, 'PHYSICS', 'C', 'CHEMISTRY', 'C', 'COMBINED MATHEMATICS', 'C'),
(989, 'ECONOMICS', 'A', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'A'),
(990, 'POLITICAL SCIENCE', 'A', 'LOGIC & SCIENTIFIC METHOD', 'B', 'SINHALA', 'A'),
(991, 'ECONOMICS', 'C', 'GEOGRAPHY', 'C', 'HOME ECONOMICS', 'A'),
(992, 'ECONOMICS', 'C', 'GEOGRAPHY', 'C', 'HOME ECONOMICS', 'A'),
(993, 'ECONOMICS', 'S', 'BUSINESS STUDIES', 'C', 'ACCOUNTING', 'S'),
(994, 'COMMUNICATION & MEDIA STUDIES', 'C', 'BUDDHIST CIVILIZATION', 'C', 'SINHALA', 'B'),
(995, 'POLITICAL SCIENCE', 'C', 'LOGIC & SCIENTIFIC METHOD', 'B', 'SINHALA', 'A'),
(996, 'POLITICAL SCIENCE', 'C', 'LOGIC & SCIENTIFIC METHOD', 'B', 'SINHALA', 'A'),
(997, 'GEOGRAPHY', 'B', 'BUDDHIST CIVILIZATION', 'A', 'SINHALA', 'A'),
(998, 'PHYSICS', 'S', 'CHEMISTRY', 'C', 'BIOLOGY', 'S'),
(999, 'PHYSICS', 'C', 'CHEMISTRY', 'B', 'COMBINED MATHEMATICS', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `StuNo` varchar(15) NOT NULL,
  `StuName` varchar(30) DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `Age` int(3) DEFAULT NULL,
  `Hometown` varchar(30) DEFAULT NULL,
  `UniCode` varchar(15) DEFAULT NULL,
  `CourseID` varchar(15) DEFAULT NULL,
  `GPA` double DEFAULT NULL,
  PRIMARY KEY (`StuNo`),
  KEY `UniCode` (`UniCode`),
  KEY `CourseID` (`CourseID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`StuNo`, `StuName`, `Gender`, `Age`, `Hometown`, `UniCode`, `CourseID`, `GPA`) VALUES
('MED/2011/067', 'Avishka', 'Male', 25, 'Gampaha', 'UN0001', 'MED001', 3.42),
('BIO/2011/261', 'Srimaali', 'Female', 23, 'Galle', 'UN0004', 'BIO001', 3.71),
('BIO/2011/034', 'Wiraj', 'Male', 24, 'Mathara', 'UN0004', 'BIO001', 3.28),
('MNG/2010/114', 'Udaari', 'Female', 26, 'Homagama', 'UN0002', 'MNG001', 3.67),
('SE/2015/023', 'Raveena', 'Female', 25, 'Jaffna', 'UN0003', 'SE001', 3.53),
('SE/2015/035', 'Farhaan', 'Male', 27, 'Gampaha', 'UN0003', 'SE001', 4),
('DEN/2008/078', 'Samadhi', 'Female', 28, 'Kurunegala', 'UN0004', 'DEN001', 3.48),
('unknown', 'Ann', NULL, 25, NULL, 'UN0003', 'BIO001', 3.5);

-- --------------------------------------------------------

--
-- Table structure for table `t1`
--

DROP TABLE IF EXISTS `t1`;
CREATE TABLE IF NOT EXISTS `t1` (
  `ID` varchar(5) NOT NULL,
  `NAME` varchar(5) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `t1`
--

INSERT INTO `t1` (`ID`, `NAME`) VALUES
('1', 'adad'),
('3', 'dsas');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(12, 'user1', 's'),
(11, 'user', '1234'),
(10, 'dfd', 'd'),
(9, 'sadas', 'd'),
(18, 'test9', '9'),
(7, 'aaa', 'a'),
(13, 'user2', 'qq'),
(14, 'as', 'a'),
(19, 'test91', '9'),
(16, 'dsfd', 'd'),
(17, 'yy', '1'),
(20, 'test911', '1'),
(21, 'test9111', '1'),
(23, 'aaa1', '1'),
(111, '644646', 'bvybyb'),
(114, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(120, 'asd', '0cc175b9c0f1b6a831c399e269772661'),
(121, 'aaaaa', '47bce5c74f589f4867dbd57e9ca9f808'),
(122, 'gfdd', 'fdbfdbd'),
(123, 'checkdb', 'fdbfdbd'),
(124, 'checkdb', 'fdbfdbd'),
(125, 'testname', 'fdbfdbd'),
(126, 'testname1', 'fdbfdbd'),
(127, 'testname1', 'fdbfdbd'),
(128, 'testname1', 'fdbfdbd'),
(129, 'testname1', 'fdbfdbd'),
(130, 'testname1', 'fdbfdbd'),
(131, 'testname1', 'fdbfdbd'),
(132, 'testname1', 'fdbfdbd'),
(133, 'testname1', 'fdbfdbd'),
(134, 'testname1', 'fdbfdbd'),
(135, 'testname1', 'fdbfdbd'),
(136, 'testname1', 'fdbfdbd'),
(137, 'testname1', 'fdbfdbd'),
(138, 'testname1', 'fdbfdbd'),
(139, 'testname1', 'fdbfdbd'),
(140, 'testname1', 'fdbfdbd'),
(141, 'testname1', 'fdbfdbd'),
(142, 'testname1', 'fdbfdbd'),
(143, 'testname1', 'fdbfdbd');
--
-- Database: `se2`
--
CREATE DATABASE IF NOT EXISTS `se2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `se2`;

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

DROP TABLE IF EXISTS `district`;
CREATE TABLE IF NOT EXISTS `district` (
  `DistrictCode` varchar(3) NOT NULL,
  `District` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`DistrictCode`, `District`) VALUES
('1-1', 'Colombo'),
('1-2', 'Gampaha'),
('1-3', 'Kalutara'),
('2-1', 'Kandy'),
('2-2', 'Matale'),
('2-3', 'Nuwara Eliya'),
('3-1', 'Galle'),
('3-2', 'Matara'),
('3-3', 'Hambantota'),
('4-1', 'Jaffna'),
('4-2', 'Mannar'),
('4-3', 'Vavuniya'),
('4-4', 'Mullaitivu'),
('4-5', 'Kilinochchi'),
('5-1', 'Batticaloa'),
('5-2', 'Ampara'),
('5-3', 'Trincomalee'),
('6-1', 'Kurunegala'),
('6-2', 'Puttalam'),
('7-1', 'Anuradhapura'),
('7-2', 'Polonnaruwa'),
('8-1', 'Badulla'),
('8-2', 'Moneragala'),
('9-1', 'Ratnapura'),
('9-2', 'Kegalle');

-- --------------------------------------------------------

--
-- Table structure for table `divsec`
--

DROP TABLE IF EXISTS `divsec`;
CREATE TABLE IF NOT EXISTS `divsec` (
  `DivSecCode` varchar(6) NOT NULL,
  `DivSec` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `divsec`
--

INSERT INTO `divsec` (`DivSecCode`, `DivSec`) VALUES
('1-1-03', 'Colombo'),
('1-1-06', 'Kolonnawa'),
('1-1-09', 'Kaduwela'),
('1-1-12', 'Homagama'),
('1-1-15', 'Hanwella'),
('1-1-18', 'Padukka'),
('1-1-21', 'Maharagama'),
('1-1-24', 'Sri Jayawardanapura Kotte'),
('1-1-27', 'Thimbirigasyaya'),
('1-1-30', 'Dehiwala-Mount Lavinia'),
('1-1-39', 'Ratmalana'),
('1-1-33', 'Moratuwa'),
('1-1-36', 'Kesbewa'),
('1-2-03', 'Negombo'),
('1-2-06', 'Katana'),
('1-2-09', 'Divulapitiya'),
('1-2-12', 'Mirigama'),
('1-2-15', 'Minuwangoda'),
('1-2-18', 'Wattala'),
('1-2-21', 'Ja-Ela'),
('1-2-24', 'Gampaha'),
('1-2-27', 'Attanagalla'),
('1-2-30', 'Dompe'),
('1-2-33', 'Mahara'),
('1-2-36', 'Kelaniya'),
('1-2-39', 'Biyagama'),
('1-3-03', 'Panadura'),
('1-3-06', 'Bandaragama'),
('1-3-09', 'Horana'),
('1-3-10', 'Ingiriya'),
('1-3-12', 'Bulathsinhala'),
('1-3-15', ' Madurawela'),
('1-3-18', 'Millaniya'),
('1-3-21', 'Kalutara'),
('1-3-24', 'Beruwala'),
('1-3-27', 'Dodangoda'),
('1-3-30', 'Mathugama'),
('1-3-33', 'Agalawatta'),
('1-3-36', 'Palindanuwara'),
('1-3-39', 'Walallavita'),
('2-1-03', 'Thumpane'),
('2-1-06', 'Poojapitiya'),
('2-1-09', 'Akurana'),
('2-1-12', 'Pathdumbara'),
('2-1-15', 'Panvila'),
('2-1-18', 'Udadumbara'),
('2-1-21', 'Minipe'),
('2-1-24', 'Medadumbara'),
('2-1-27', 'Kundasale'),
('2-1-30', 'Kandy Four Gravets & Gangawata Korale'),
('2-1-33', 'Harispattuwa'),
('2-1-34', 'Hatharaliyadda'),
('2-1-36', 'Yatinuwara'),
('2-1-39', 'Udunuwara'),
('2-1-42', 'Doluwa'),
('2-1-45', 'Pathahewaheta'),
('2-1-48', 'Delthota'),
('2-1-51', 'Udapalatha'),
('2-1-54', 'Ganga Ihala Korale'),
('2-1-57', 'Pasbage Korale'),
('2-2-03', 'Galewela'),
('2-2-06', 'Dambulla'),
('2-2-09', 'Naula'),
('2-2-12', 'Pallepola'),
('2-2-15', 'Yatawatta'),
('2-2-18', 'Matale'),
('2-2-21', 'Ambanganga Korale'),
('2-2-24', 'Laggala-Pallegama'),
('2-2-27', 'Wilgamuwa'),
('2-2-30', 'Rattota'),
('2-2-33', 'Ukuwela'),
('2-3-03', 'Kothmale'),
('2-3-06', 'Hanguranketha'),
('2-3-09', 'Walpane'),
('2-3-12', 'Nuwara Eliya'),
('2-3-15', 'Ambagamuwa'),
('3-1-03', 'Benthota'),
('3-1-06', 'Balapitiya'),
('3-1-09', 'Karandeniya'),
('3-1-12', 'Elpitiya'),
('3-1-15', 'Niyagama'),
('3-1-18', 'Thawalama'),
('3-1-21', 'Neluwa'),
('3-1-24', 'Nagoda'),
('3-1-27', 'Baddegama'),
('3-1-30', 'Welivitiya-Divithura'),
('3-1-33', 'Ambalangoda'),
('3-1-36', 'Hikkaduwa'),
('3-1-39', 'Galle Four Gravets'),
('3-1-42', 'Bope-Poddala'),
('3-1-45', 'Akmeemana'),
('3-1-48', 'Yakkalamulla'),
('3-1-51', 'Imaduwa'),
('3-1-54', 'Habaraduwa'),
('3-1-57', 'Gonapinuwala'),
('3-2-03', 'Pitabeddara'),
('3-2-06', 'Kotapola'),
('3-2-09', 'Pasgoda'),
('3-2-12', 'Mulatiyana'),
('3-2-15', 'Athuraliya'),
('3-2-18', 'Akuressa'),
('3-2-21', 'Welipitiya'),
('3-2-24', 'Malimbada'),
('3-2-27', 'Kamburupitiya'),
('3-2-30', 'Hakmana'),
('3-2-33', 'Kirinda Puhulwella'),
('3-2-36', 'Thihagoda'),
('3-2-39', 'Weligama'),
('3-2-42', 'Four Gravets'),
('3-2-45', 'Devinuwara'),
('3-2-48', 'Dickwella'),
('3-3-03', 'Sooriyawewa'),
('3-3-06', 'Lunugamvehera'),
('3-3-09', 'Tissamaharama'),
('3-3-12', 'Hambantota'),
('3-3-15', 'Ambalantota'),
('3-3-18', 'Angunakolapelessa'),
('3-3-21', 'Weeraketiya'),
('3-3-24', 'Katuwana'),
('3-3-27', 'Okewela'),
('3-3-30', 'Beliatta'),
('3-3-33', 'Tangalle'),
('3-3-36', 'Walasmulla'),
('4-1-03', 'Kayts'),
('4-1-06', 'Valikamam West (Chankanai)'),
('4-1-09', 'Valikamam South-West (Sandilipay)'),
('4-1-12', 'Valikamam North (Tellipallai)'),
('4-1-15', 'Valikamam South (Uduvil)'),
('4-1-18', 'Valikamam South (Uduvil)'),
('4-1-21', '\"Vadamaradchy South-West, Karaveddy\"'),
('4-1-24', 'Vadamaradchi East (Maruthnkerny)'),
('4-1-27', 'Vadamaradchi North (Point Pedro)'),
('4-1-30', 'Thenmaradchi (Chavakachcheri)'),
('4-1-33', 'Nallur'),
('4-1-36', 'Jaffna'),
('4-1-39', '\"Island South ,Velanai\"'),
('4-1-42', 'Delft'),
('4-1-45', 'Karainagar'),
('4-2-03', 'Mannar Town'),
('4-2-06', 'Manthai West'),
('4-2-09', 'Madhu'),
('4-2-12', 'Nanaddan'),
('4-2-15', 'Musalai'),
('4-3-03', 'Vavuniya North'),
('4-3-06', 'Vavuniya South'),
('4-3-09', 'Vavuniya'),
('4-3-12', 'Vengalacheddikulam'),
('4-4-03', 'Thunukkai'),
('4-4-06', 'Manthai East'),
('4-4-09', 'Puthukudiyiruppu'),
('4-4-12', 'Oddusuddan'),
('4-4-15', 'Maritimepattu'),
('4-4-18', 'Welioya'),
('4-5-03', 'Pachchilaipalli'),
('4-5-06', 'Kandavalai'),
('4-5-09', 'Karachchi'),
('4-5-12', 'Poonakary'),
('5-1-03', 'Koralai Pattu North'),
('5-1-06', 'Koralai Pattu West (Oddamavadi)'),
('5-1-09', 'Koralai Pattu (Valachchenai)'),
('5-1-12', 'Eravur Pattu'),
('5-1-15', 'Eravur Town'),
('5-1-18', 'Manmunai North'),
('5-1-21', 'Manmunai West'),
('5-1-24', 'Kattankudy'),
('5-1-27', 'Manmunai Pattu (Arayampathy)'),
('5-1-30', 'Manmunai South-West'),
('5-1-33', 'Porativu Pattu'),
('5-1-36', 'Manmunai South & Eruvil Pattu'),
('5-1-39', 'Koralai Pattu South (Kiran)'),
('5-1-42', 'Koralai Pattu Central'),
('5-2-03', 'Dehiattakandiya'),
('5-2-06', 'Padiyathalawa'),
('5-2-09', 'Mahaoya'),
('5-2-12', 'Uhana'),
('5-2-15', 'Ampara'),
('5-2-16', 'Navithanvelly'),
('5-2-18', 'Samanthurai'),
('5-2-21', 'Kalmunai North'),
('5-2-24', 'Kalmunai'),
('5-2-25', 'Sainthamarathu'),
('5-2-27', 'Karaitivu'),
('5-2-30', 'Ninthavur'),
('5-2-33', 'Addalaichenai'),
('5-2-34', 'Irakkamam'),
('5-2-36', 'Akkaraipattu'),
('5-2-39', 'Alayadiwembu'),
('5-2-42', 'Damana'),
('5-2-45', 'Thirukkovil'),
('5-2-48', 'Pothuvil'),
('5-2-51', 'Lahugala'),
('5-3-03', 'Padavi Sri Pura'),
('5-3-06', 'Kuchchaveli'),
('5-3-09', 'Gomarankadawala'),
('5-3-12', 'Morawewa'),
('5-3-15', 'Trincomalee Town and Gravets'),
('5-3-18', 'Thambalagamuwa'),
('5-3-21', 'Kantalai'),
('5-3-24', 'Kinniya'),
('5-3-27', 'Muthur'),
('5-3-30', 'Seruwila'),
('5-3-33', 'Verugal'),
('6-1-03', 'Giribawa'),
('6-1-06', 'Galmaguwa'),
('6-1-09', 'Ehetuwewa'),
('6-1-12', 'Ambanpola'),
('6-1-15', 'Kotavehera'),
('6-1-18', 'Rasnayakapura'),
('6-1-21', 'Nikaweratiya'),
('6-1-24', 'Mahawa'),
('6-1-27', 'Polpithigama'),
('6-1-30', ' Ibbagamuwa'),
('6-1-33', 'Ganewatta'),
('6-1-36', 'Wariyapola'),
('6-1-39', 'Kobeigane'),
('6-1-42', 'Bingiriya'),
('6-1-45', 'Panduwasnuwara'),
('6-1-48', 'Paduwasnuwara East'),
('6-1-49', 'Bamunakotuwa'),
('6-1-51', 'Maspotha'),
('6-1-54', 'Kurunegala'),
('6-1-57', 'Mallawapitiya'),
('6-1-60', 'Mawathagama'),
('6-1-63', 'Rideegama'),
('6-1-66', 'Weerambugedara'),
('6-1-69', 'Kuliyapitiya East'),
('6-1-72', 'Kuliyapitiya West'),
('6-1-75', 'Udubaddawa'),
('6-1-78', 'Pannala'),
('6-1-81', 'Narammala'),
('6-1-84', 'Alawwa'),
('6-1-87', 'Polgahawela'),
('6-2-03', 'Kalpitiya'),
('6-2-06', 'Vanathavilluwa'),
('6-2-09', 'Karuwalagaswewa'),
('6-2-12', 'Nawagattegama'),
('6-2-15', 'Puttalam'),
('6-2-18', 'Mundalama'),
('6-2-21', 'Mahakumbukkadawala'),
('6-2-24', 'Anamaduwa'),
('6-2-27', 'Pallama'),
('6-2-30', 'Arachchikattuwa'),
('6-2-33', 'Chilaw'),
('6-2-36', 'Madampe'),
('6-2-39', 'Mahawewa'),
('6-2-42', 'Nattandiya'),
('6-2-45', 'Wennappuwa'),
('6-2-48', 'Dankotuwa'),
('7-1-03', 'Padaviya'),
('7-1-06', 'Kebithigollewa'),
('7-1-09', 'Medawachchiya'),
('7-1-12', 'Mahavilachchiya'),
('7-1-15', 'Nuwaragam Palatha Central'),
('7-1-18', 'Rambewa'),
('7-1-21', 'Kahatagasdigiliya'),
('7-1-24', 'Horowpothana'),
('7-1-27', 'Galenbindunuwewa'),
('7-1-30', 'Mihinthale'),
('7-1-33', 'Nuwaragam Palatha East'),
('7-1-36', 'Nachchadoowa'),
('7-1-39', 'Nochchiyagama'),
('7-1-42', 'Rajanganaya'),
('7-1-45', 'Thambuttegama'),
('7-1-48', 'Thalawa'),
('7-1-51', 'Thirappane'),
('7-1-54', 'Kekirawa'),
('7-1-57', 'Palugaswewa'),
('7-1-60', 'Ipalogama'),
('7-1-63', 'Galnewa'),
('7-1-66', 'Palagala'),
('7-2-03', 'Hingurakgoda'),
('7-2-06', 'Medirigiriya'),
('7-2-09', 'Lankapura'),
('7-2-10', 'Welikanda'),
('7-2-12', 'Dimbulagala'),
('7-2-15', 'Thamankaduwa'),
('7-2-18', 'Elahera'),
('8-1-03', 'Mahiyanganaya'),
('8-1-06', 'Rideemaliyadda'),
('8-1-09', 'Meegahakivula'),
('8-1-12', 'Kandaketiya'),
('8-1-15', 'Soranathota'),
('8-1-18', 'Passara'),
('8-1-19', 'Lunugala'),
('8-1-21', 'Badulla'),
('8-1-24', 'Hali-Ela'),
('8-1-27', 'Uva-Paranagama'),
('8-1-30', 'Welimada'),
('8-1-33', 'Bandarawela'),
('8-1-36', 'Ella'),
('8-1-39', 'Haputale'),
('8-1-42', 'Haldummulla'),
('8-2-03', 'Bibile'),
('8-2-06', 'Madulla'),
('8-2-09', 'Medagama'),
('8-2-12', 'Siyambalanduwa'),
('8-2-15', 'Moneragala'),
('8-2-18', 'Badalkumbura'),
('8-2-21', 'Wellawaya'),
('8-2-24', 'Buttala'),
('8-2-27', 'Katharagama'),
('8-2-30', 'Thanamalvila'),
('8-2-33', 'Sevanagala'),
('9-1-03', 'Eheliyagoda'),
('9-1-06', 'Kuruvita'),
('9-1-09', 'Kiriella'),
('9-1-12', 'Ratnapura'),
('9-1-15', ' Imbulpe'),
('9-1-18', 'Balangoda'),
('9-1-21', 'Opanayaka'),
('9-1-24', 'Pelmadulla'),
('9-1-27', 'Elapatha'),
('9-1-30', 'Ayagama'),
('9-1-33', 'Kalawana'),
('9-1-36', 'Nivithigala'),
('9-1-39', 'Kahawatta'),
('9-1-42', 'Godakawela'),
('9-1-45', 'Weligepola'),
('9-1-48', 'Embilipitiya'),
('9-1-51', 'Kolonna'),
('9-2-03', 'Rambukkana'),
('9-2-06', 'Mawanella'),
('9-2-09', 'Aranayaka'),
('9-2-12', 'Kegalle'),
('9-2-15', 'Galigamuwa'),
('9-2-18', 'Warakapola'),
('9-2-21', 'Ruwanwella'),
('9-2-24', 'Bulathkohupitiya'),
('9-2-27', 'Yatiyanthota'),
('9-2-30', 'Dehiovita'),
('9-2-33', 'Deraniyagala');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_bin NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `role` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `olympic`
--

DROP TABLE IF EXISTS `olympic`;
CREATE TABLE IF NOT EXISTS `olympic` (
  `name` varchar(32) DEFAULT NULL,
  `age` varchar(14) DEFAULT NULL,
  `country` varchar(21) DEFAULT NULL,
  `COL 4` varchar(20) DEFAULT NULL,
  `COL 5` varchar(25) DEFAULT NULL,
  `COL 6` varchar(4) DEFAULT NULL,
  `COL 7` varchar(6) DEFAULT NULL,
  `COL 8` varchar(6) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `olympic`
--

INSERT INTO `olympic` (`name`, `age`, `country`, `COL 4`, `COL 5`, `COL 6`, `COL 7`, `COL 8`) VALUES
('Athlete', 'Age', 'Country', 'Year', 'Sport', 'Gold', 'Silver', 'Bronze'),
('Michael Phelps', '23', 'United States', '2008', 'Swimming', '8', '0', '0'),
('Michael Phelps', '19', 'United States', '2004', 'Swimming', '6', '0', '2'),
('Michael Phelps', '27', 'United States', '2012', 'Swimming', '4', '2', '0'),
('Natalie Coughlin', '25', 'United States', '2008', 'Swimming', '1', '2', '3'),
('Aleksey Nemov', '24', 'Russia', '2000', 'Gymnastics', '2', '1', '3'),
('Alicia Coutts', '24', 'Australia', '2012', 'Swimming', '1', '3', '1'),
('Missy Franklin', '17', 'United States', '2012', 'Swimming', '4', '0', '1'),
('Ryan Lochte', '27', 'United States', '2012', 'Swimming', '2', '2', '1'),
('Allison Schmitt', '22', 'United States', '2012', 'Swimming', '3', '1', '1'),
('Natalie Coughlin', '21', 'United States', '2004', 'Swimming', '2', '2', '1'),
('Ian Thorpe', '17', 'Australia', '2000', 'Swimming', '3', '2', '0'),
('Dara Torres', '33', 'United States', '2000', 'Swimming', '2', '0', '3'),
('Cindy Klassen', '26', 'Canada', '2006', 'Speed Skating', '1', '2', '2'),
('Nastia Liukin', '18', 'United States', '2008', 'Gymnastics', '1', '3', '1');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
CREATE TABLE IF NOT EXISTS `province` (
  `ProvinceCode` varchar(2) NOT NULL,
  `Province` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`ProvinceCode`, `Province`) VALUES
('1', 'Western'),
('2', 'Central'),
('3', 'Southern'),
('4', 'Northern'),
('5', 'Eastern'),
('6', 'North-Western'),
('7', 'North-Central'),
('8', 'Uva'),
('9', 'Sabaragamuwa');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` varchar(10) COLLATE utf8_bin NOT NULL,
  `name` varchar(50) COLLATE utf8_bin NOT NULL,
  `age` int(11) NOT NULL,
  `city` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `age`, `city`) VALUES
('S001', 'NImal Kumara', 22, 'Matara'),
('S002', 'Kamal Palitha', 23, 'Kelaniya');
--
-- Database: `stateuniversity`
--
CREATE DATABASE IF NOT EXISTS `stateuniversity` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `stateuniversity`;

-- --------------------------------------------------------

--
-- Table structure for table `degrees`
--

DROP TABLE IF EXISTS `degrees`;
CREATE TABLE IF NOT EXISTS `degrees` (
  `CourseID` char(15) CHARACTER SET utf8 NOT NULL,
  `CourseName` varchar(25) DEFAULT NULL,
  `UniCode` char(15) CHARACTER SET utf8 DEFAULT NULL,
  `DurationYears` int(1) NOT NULL,
  PRIMARY KEY (`CourseID`),
  KEY `UniCode` (`UniCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `degrees`
--

INSERT INTO `degrees` (`CourseID`, `CourseName`, `UniCode`, `DurationYears`) VALUES
('MED001', 'Medicine', 'UN0001', 5),
('DEN001', 'Dentistry', 'UN0004', 5),
('ENG001', 'Engineering', 'UN0002', 4),
('SE001', 'Software Engineering', 'UN0003', 4),
('BIO001', 'Bio Science', 'UN0004', 3),
('PHY001', 'Physical Science', 'UN0005', 3);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `StuNo` varchar(15) NOT NULL,
  `StuName` varchar(30) DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `Age` int(3) DEFAULT NULL,
  `Hometown` varchar(30) DEFAULT NULL,
  `UniCode` varchar(15) DEFAULT NULL,
  `CourseID` varchar(15) DEFAULT NULL,
  `GPA` double DEFAULT NULL,
  PRIMARY KEY (`StuNo`),
  KEY `UniCode` (`UniCode`),
  KEY `CourseID` (`CourseID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`StuNo`, `StuName`, `Gender`, `Age`, `Hometown`, `UniCode`, `CourseID`, `GPA`) VALUES
('MED/2011/067', 'Avishka', 'Male', 25, 'Gampaha', 'UN0001', 'MED001', 3.42),
('BIO/2011/261', 'Srimaali', 'Female', 23, 'Galle', 'UN0004', 'BIO001', 3.71),
('BIO/2011/034', 'Wiraj', 'Male', 24, 'Mathara', 'UN0004', 'BIO001', 3.28),
('MNG/2010/114', 'Udaari', 'Female', 26, 'Homagama', 'UN0002', 'MNG001', 3.67),
('SE/2015/023', 'Raveena', 'Female', 25, 'Jaffna', 'UN0003', 'SE001', 3.53),
('SE/2015/035', 'Farhaan', 'Male', 27, 'Gampaha', 'UN0003', 'SE001', 4),
('DEN/2008/078', 'Samadhi', 'Female', 28, 'Kurunegala', 'UN0004', 'DEN001', 3.48),
('unknown', 'Ann', NULL, 25, NULL, 'UN0003', 'BIO001', 3.5);

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

DROP TABLE IF EXISTS `university`;
CREATE TABLE IF NOT EXISTS `university` (
  `UniCode` char(15) CHARACTER SET utf8 NOT NULL,
  `UniName` varchar(30) DEFAULT NULL,
  `IslandRank` int(11) DEFAULT NULL,
  `Province` varchar(25) NOT NULL,
  PRIMARY KEY (`UniCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`UniCode`, `UniName`, `IslandRank`, `Province`) VALUES
('UN0001', 'Colombo', 7843, 'Western'),
('UN0002', 'Sri Jayawardenapura', 7852, 'Western'),
('UN0003', 'Kelaniya', 7857, 'Western'),
('UN0004', 'Peradeniya', 7859, 'Central'),
('UN0005', 'Jaffna', 7863, 'Northern');
--
-- Database: `stateuniversity_first`
--
CREATE DATABASE IF NOT EXISTS `stateuniversity_first` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `stateuniversity_first`;

-- --------------------------------------------------------

--
-- Table structure for table `degrees`
--

DROP TABLE IF EXISTS `degrees`;
CREATE TABLE IF NOT EXISTS `degrees` (
  `CourseID` char(15) NOT NULL,
  `CourseName` varchar(25) DEFAULT NULL,
  `UniCode` char(15) DEFAULT NULL,
  `DurationYears` int(1) NOT NULL,
  PRIMARY KEY (`CourseID`),
  KEY `UniCode` (`UniCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `degrees`
--

INSERT INTO `degrees` (`CourseID`, `CourseName`, `UniCode`, `DurationYears`) VALUES
('BIO001', 'Bio Science', 'UN0004', 3),
('DEN001', 'Dentistry', 'UN0004', 5),
('ENG001', 'Engineering', 'UN0002', 4),
('MED001', 'Medicine', 'UN0001', 5),
('MNG001', 'Management', 'UN0002', 4),
('PHY001', 'Physical Science', 'UN0005', 3),
('SE001', 'Software Engineering', 'UN0003', 4);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `StuNo` varchar(15) NOT NULL,
  `StuName` varchar(30) DEFAULT NULL,
  `Gender` varchar(6) DEFAULT NULL,
  `Age` int(3) DEFAULT NULL,
  `Hometown` varchar(30) DEFAULT NULL,
  `UniCode` varchar(15) DEFAULT NULL,
  `CourseID` varchar(15) DEFAULT NULL,
  `GPA` double DEFAULT NULL,
  PRIMARY KEY (`StuNo`),
  KEY `UniCode` (`UniCode`),
  KEY `CourseID` (`CourseID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`StuNo`, `StuName`, `Gender`, `Age`, `Hometown`, `UniCode`, `CourseID`, `GPA`) VALUES
('MED/2011/067', 'Avishka', 'Male', 25, 'Gampaha', 'UN0001', 'MED001', 3.42),
('BIO/2011/261', 'Srimaali', 'Female', 23, 'Galle', 'UN0004', 'BIO001', 3.71),
('BIO/2011/034', 'Wiraj', 'Male', 24, 'Mathara', 'UN0004', 'BIO001', 3.28),
('MNG/2010/114', 'Udaari', 'Female', 26, 'Homagama', 'UN0002', 'MNG001', 3.67),
('SE/2015/023', 'Raveena', 'Female', 25, 'Jaffna', 'UN0003', 'SE001', 3.53),
('SE/2015/035', 'Farhaan', 'Male', 27, 'Gampaha', 'UN0003', 'SE001', 4),
('DEN/2008/078', 'Samadhi', 'Female', 28, 'Kurunegala', 'UN0004', 'DEN001', 3.48),
('unknown', 'Ann', NULL, 25, NULL, 'UN0003', 'BIO001', 3.5);

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

DROP TABLE IF EXISTS `university`;
CREATE TABLE IF NOT EXISTS `university` (
  `UniCode` char(15) CHARACTER SET utf8 NOT NULL,
  `UniName` varchar(30) DEFAULT NULL,
  `IslandRank` int(11) DEFAULT NULL,
  `Province` varchar(25) NOT NULL,
  PRIMARY KEY (`UniCode`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`UniCode`, `UniName`, `IslandRank`, `Province`) VALUES
('UN0001', 'Colombo', 7843, 'Western'),
('UN0002', 'Sri Jayawardenapura', 7852, 'Western'),
('UN0003', 'Kelaniya', 7857, 'Western'),
('UN0004', 'Peradeniya', 7859, 'Central'),
('UN0005', 'Jaffna', 7863, 'Northern');
--
-- Database: `student`
--
CREATE DATABASE IF NOT EXISTS `student` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `student`;

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
CREATE TABLE IF NOT EXISTS `data` (
  `Year` int(5) NOT NULL,
  `course` varchar(10) NOT NULL,
  `Grade` varchar(5) NOT NULL,
  `credits` int(2) NOT NULL,
  `gpv` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`Year`, `course`, `Grade`, `credits`, `gpv`) VALUES
(1, 'aaaa', 'A', 2, 2),
(1, '2', 's', 2, -1),
(1, 'asfas', 'A', 2, 4),
(1, 'aaa', 'A', 3, 4),
(1, 'bbb', 'E', 2, 0),
(2, 'ccc', 'B+', 1, 3.3),
(2, 'ddd', 'C-', 2, 1.7),
(1, '2', 'a', 2, -1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `name` varchar(30) NOT NULL,
  `course_dura` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `course_dura`) VALUES
('uu', 2);
--
-- Database: `studentse`
--
CREATE DATABASE IF NOT EXISTS `studentse` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `studentse`;
--
-- Database: `t3`
--
CREATE DATABASE IF NOT EXISTS `t3` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `t3`;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `CustomerID` varchar(10) NOT NULL,
  `FirstName` varchar(20) DEFAULT NULL,
  `LastName` varchar(20) DEFAULT NULL,
  `Address` varchar(30) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Province` varchar(25) DEFAULT NULL,
  `PostCode` int(6) DEFAULT NULL,
  `Telephone` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `FirstName`, `LastName`, `Address`, `City`, `Province`, `PostCode`, `Telephone`) VALUES
('C0001', 'KASUN', 'SILVA', '55/5,A', 'KELANIYA', 'WESTERN', 10001, '0771234567'),
('C0002', 'DASUN', 'SILVA', '15/5,C', 'KELANIYA', 'WESTERN', 10001, '0771234568'),
('C0003', 'SUPUN', 'E.F.', '52/5,A', 'GALLE', 'SOUTHERN', 10001, '0771234569'),
('C0004', 'KASUN', 'A.B.', '55/5,B', 'GALLE', 'SOUTHERN', 10001, '0771234560'),
('C0005', 'KASUN', 'C.D', '55/4,E', 'KELANIYA', 'WESTERN', 10001, '0771234501'),
('C0006', 'KASUN', 'Perera', '55/4,E', 'Colombo', 'WESTERN', 50001, '0772234501');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
CREATE TABLE IF NOT EXISTS `item` (
  `ItemNo` varchar(10) NOT NULL,
  `ItemName` varchar(15) DEFAULT NULL,
  `Descrip` varchar(30) DEFAULT NULL,
  `OnHand` int(5) DEFAULT NULL,
  `Cost` int(6) DEFAULT NULL,
  PRIMARY KEY (`ItemNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ItemNo`, `ItemName`, `Descrip`, `OnHand`, `Cost`) VALUES
('I001', 'SOAP_1', '100Gg', 5, 100),
('I002', 'SOAP_2', '100Gg', 50, 105),
('I003', 'SOAP_3', '50Gg BOLT', 10, 60),
('I004', 'SOAP_9', 'BOLT 100Gg', 500, 100),
('I005', 'SOAP_10', '100Gg', 50, 100),
('I006', 'Rice', 'white', 0, 150);

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE IF NOT EXISTS `orderitem` (
  `OrderID` varchar(10) NOT NULL,
  `ItemNo` varchar(10) NOT NULL,
  `Quantity` int(5) DEFAULT NULL,
  PRIMARY KEY (`OrderID`,`ItemNo`),
  KEY `ItemNo` (`ItemNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderitem`
--

INSERT INTO `orderitem` (`OrderID`, `ItemNo`, `Quantity`) VALUES
('O0001', 'I001', 5),
('O0001', 'I002', 5),
('O0002', 'I001', 3),
('O0003', 'I005', 10),
('O0004', 'I004', 5),
('O0005', 'I002', 7),
('O0006', 'I001', 5),
('O0007', 'I003', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `OrderID` varchar(10) NOT NULL,
  `OrderDate` date DEFAULT NULL,
  `CustomerID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `CustomerID` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `OrderDate`, `CustomerID`) VALUES
('O0001', '2020-03-10', 'C0002'),
('O0002', '2020-03-20', 'C0001'),
('O0003', '2020-04-10', 'C0003'),
('O0004', '2020-04-16', 'C0005'),
('O0005', '2020-04-18', 'C0004'),
('O0006', '2020-05-23', 'C0002'),
('O0007', '2020-06-10', 'C0001'),
('O0008', '2020-06-11', 'C0001'),
('O0009', '2020-07-15', 'C0003'),
('O0010', '2020-07-16', 'C0005');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD CONSTRAINT `orderitem_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  ADD CONSTRAINT `orderitem_ibfk_2` FOREIGN KEY (`ItemNo`) REFERENCES `item` (`ItemNo`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
