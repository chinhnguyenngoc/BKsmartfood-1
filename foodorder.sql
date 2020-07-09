-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2020 at 04:09 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `foodorder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('BIRJU KUMAR', 'ckj40856@gmail.com', '8903079750', 'asd', 'asdasdasd'),
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'asd', 'hfgdsfsx');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('abcd', 'Nguyen Van Trung', 'abcd@gmail.com', '42353535', 'Quáº£ng NgÃ£i', 'abcd'),
('birju', 'BIRJU KUMAR', 'bkm123r@gmail.com', '8903079750', 'Pondicherry University, SRK HOSTEL ROOM NUMBER-59,', 'Birju123@'),
('chinh', 'Chinh Nguyen', 'chinh123mmm@gmail.com', '0898125109', 'Binh Duong', 'chinh'),
('ckumar', 'CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'Pondicherry University, SRK HOSTEL ROOM NUMBER-59,', 'Ckumar123@'),
('thang', 'Thang', 'chinh.nguyenngoc@hcmut.edu.vn', '3322444244242', 'ThÃ´n An Háº£i ÄÃ´ng', 'thang');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE IF NOT EXISTS `food` (
`F_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(200) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(58, 'Com Tam', 20000, '', 1, 'images/comtam.jpg', 'ENABLE'),
(59, 'Pho', 25000, '', 2, 'images/Pho.jpg', 'ENABLE'),
(60, 'Hambuger', 20000, '', 3, 'images/burger.jpg', 'ENABLE'),
(61, 'Bun Dau Mam Tom', 50000, '', 1, 'images/bundau.jpg', 'ENABLE'),
(62, 'Banh Mi', 10000, '', 2, 'images/banhMi.jpg', 'ENABLE'),
(63, 'Salat', 30000, '', 3, 'images/salat.jpg', 'ENABLE'),
(65, 'Coffee', 12000, '', 2, 'images/coffee.jpg', 'DISABLE'),
(66, 'Tea', 10000, '', 4, 'images/tea.jpg', 'DISABLE'),
(68, 'Paneer', 85, 'it', 6, 'images/paneer pakora.jpg', 'DISABLE'),
(69, 'Coffee', 12000, '', 2, 'images/coffee.jpg', 'ENABLE'),
(70, 'Tea', 10000, '', 2, 'images/tea.jpg', 'ENABLE'),
(71, 'Coca', 10000, '', 2, 'images/coca.jpg', 'ENABLE'),
(72, '7up', 10000, '', 2, 'images/7up.jpg', 'ENABLE'),
(73, 'Cam Mirinda', 10000, '', 2, 'images/cam.jpg', 'ENABLE'),
(74, 'Pizza', 200, 'Good and Tasty ', 2, 'Pizza.jpg', 'DISABLE'),
(75, 'French Fries', 60, 'Pure Veg and Tasty.', 2, 'frenchfries.jpg', 'DISABLE'),
(76, 'Pakora', 35, 'Pure Vegetable and Tasty.', 2, 'images/Pakora.jpg', 'DISABLE'),
(77, 'NutiFood', 15000, '', 2, 'images/nuti.jpg', 'ENABLE'),
(78, 'Grand', 45000, '316346643', 7, 'images/coca.jpg', 'DISABLE');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE IF NOT EXISTS `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('', '', '', '', '', ''),
('aditi068', 'Aditi Naik', 'aditi@gmail.com', '8654751259', 'Goa', 'aditi'),
('admin', 'Nhan', 'chauhuynh.160400@gmail.com', '0961346553', 'Quáº£ng TÃ­n', 'admin'),
('aminnikhil073', 'Nikhil Amin', 'aminnikhil073@gmail.com', '9632587412', 'Karnataka', 'nikhil'),
('chungnguyen123', 'nguyen van chung', 'nvchung00@gmail.com', '0961346555', 'thanhhoa', 'a8726357'),
('chungtran', 'Chung Tran', 'agger08mmm@gmail.com', '32942424242442', 'NÃºi ThÃ nh', 'chungtran'),
('ckumar', 'Chandan Kumar', 'ckj40856@gmail.com', '9487810674', 'Pondicherry University, SRK HOSTEL ROOM NUMBER-59,', 'Ckumar123'),
('dhiraj', 'DHIRAJ kUMAR', 'dk123@gmail.com', '8903079750', 'Pondicherry. Le cafe', 'Dhiraj'),
('hoang', 'Tran Van Hoang', 'hung232005@gmail.com', '08462355335', 'Thu Duc, TPHCM', 'hoang'),
('roshanraj07', 'Roshan Raj', 'roshan@gmail.com', '9541258761', 'Bihar', 'roshan');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(1, 59, 'Meurig Fish', 60, 1, '2020-07-07', 'abcd', 2),
(2, 63, 'Baahubali Thali', 75, 1, '2020-07-07', 'abcd', 3),
(3, 63, 'Baahubali Thali', 75, 1, '2020-07-07', 'abcd', 3),
(4, 63, 'Baahubali Thali', 75, 1, '2020-07-07', 'abcd', 3),
(5, 63, 'Baahubali Thali', 75, 1, '2020-07-07', 'abcd', 3),
(6, 61, 'Happy Happy Choco Chip Shake', 80, 1, '2020-07-07', 'abcd', 1),
(7, 69, 'Coffee', 25, 1, '2020-07-07', 'abcd', 2),
(8, 69, 'Coffee', 25, 1, '2020-07-07', 'abcd', 2),
(9, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-07-07', 'abcd', 3),
(10, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-07-07', 'abcd', 3),
(11, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-07-07', 'abcd', 3),
(12, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-07-07', 'abcd', 3),
(13, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-07-07', 'abcd', 3),
(14, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-07-07', 'abcd', 3),
(15, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-07-07', 'abcd', 3),
(16, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-07-07', 'abcd', 3),
(17, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-07-07', 'abcd', 3),
(18, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-07-07', 'abcd', 3),
(19, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2020-07-07', 'abcd', 3),
(20, 60, 'Hambuger', 20000, 1, '2020-07-07', 'abcd', 3),
(21, 60, 'Hambuger', 20000, 1, '2020-07-07', 'abcd', 3),
(22, 69, 'Coffee', 12000, 1, '2020-07-07', 'abcd', 2),
(23, 69, 'Coffee', 12000, 1, '2020-07-07', 'abcd', 2),
(24, 58, 'Com Tam', 20000, 1, '2020-07-07', 'abcd', 1),
(25, 59, 'Pho', 25000, 1, '2020-07-07', 'abcd', 2),
(26, 59, 'Pho', 25000, 1, '2020-07-07', 'abcd', 2),
(27, 62, 'Banh Mi', 10000, 1, '2020-07-07', 'abcd', 2),
(28, 61, 'Bun Dau Mam Tom', 50000, 1, '2020-07-09', 'abcd', 1),
(29, 59, 'Pho', 25000, 1, '2020-07-09', 'abcd', 2),
(30, 59, 'Pho', 25000, 1, '2020-07-09', 'abcd', 2),
(31, 59, 'Pho', 25000, 1, '2020-07-09', 'abcd', 2),
(32, 59, 'Pho', 25000, 1, '2020-07-09', 'abcd', 2),
(33, 59, 'Pho', 25000, 1, '2020-07-09', 'abcd', 2);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE IF NOT EXISTS `restaurants` (
`R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(1, 'Nikhil''s Restaurant', 'nikhil@restaurant.com', '7998562145', 'Karnataka', 'aminnikhil073'),
(2, 'Roshan''s Restaurant', 'roshan@restaurant.com', '9887546821', 'Bihar', 'roshanraj07'),
(3, 'Aditi''s Restaurant', 'aditi@restaurant.com', '7778564231', 'Goa', 'aditi068'),
(4, 'Food Exploria', 'ckj40856@gmail.com', '09487810674', 'C:\\xampp\\htdocs\\FoodExploria-master\\images/coffee.', 'ckumar'),
(6, 'Le Cafe', 'lecafepondi234@gmail.com', '9443369040', 'Pondicherry,rock beach Near,Le cafe', 'dhiraj'),
(7, 'Grand', 'chauhuynh.160400@gmail.com', '0961346553', 'Distric 1, Saigon', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
 ADD PRIMARY KEY (`F_ID`,`R_ID`), ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
 ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`order_ID`), ADD KEY `F_ID` (`F_ID`), ADD KEY `username` (`username`), ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
 ADD PRIMARY KEY (`R_ID`), ADD UNIQUE KEY `M_ID_2` (`M_ID`), ADD KEY `M_ID` (`M_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
