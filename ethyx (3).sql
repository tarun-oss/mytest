-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 07, 2018 at 12:02 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ethyx`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `sr` int(11) NOT NULL,
  `admemail` varchar(200) NOT NULL,
  `admpwd` varchar(200) NOT NULL,
  `otp` bigint(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`sr`, `admemail`, `admpwd`, `otp`) VALUES
(1, 'kapil.kumar@omsoftsolution.co.in', '1234', 0),
(2, 'ethyxsolutions@yahoo.com', 'eth123', 0),
(3, 'tarun.garg@omsoftsolution.co.in', '54321', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `c_email` text NOT NULL,
  `p_id` int(20) NOT NULL,
  `sid` int(11) NOT NULL,
  `qty` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `c_email`, `p_id`, `sid`, `qty`) VALUES
(8, 'kapil.g.study@gmail.com', 16, 0, 10),
(17, 'tarun.garg@omsoftsolution.co.in', 29, 14, 21),
(18, 'tarun.garg@omsoftsolution.co.in', 29, 13, 12),
(19, 'tarun.garg@omsoftsolution.co.in', 29, 12, 12);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `c_name` text NOT NULL,
  `c_phone` bigint(20) NOT NULL,
  `c_email` text NOT NULL,
  `c_pwd` text NOT NULL,
  `c_address` text NOT NULL,
  `c_product` text NOT NULL,
  `c_date` text NOT NULL,
  `otp` bigint(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `c_name`, `c_phone`, `c_email`, `c_pwd`, `c_address`, `c_product`, `c_date`, `otp`) VALUES
(9, 'krishna', 7894561230, 'krishna@gmail.com', '111', 'address', 'Paper Punch,EKO Security Pouch,Gun Tacker,', '', 0),
(10, 'kapil', 8010334416, 'kapil.g.study@gmail.com', '111', 'fbhftjh', 'Paper Punch,EKO Security Pouch,Gun Tacker,', '', 0),
(20, 'rahul', 8512854666, 'rahul@gmail.com', '111', 'address', 'Paper Punch,EKO Security Pouch,Gun Tacker,', '', 0),
(21, 'manisha', 7845787457, 'manisha@gmail.com', '111', 'abc', 'Paper Punch,', '', 0),
(22, 'test', 5252525252, 'test@gmail.com', '12345', 'test addr', 'EKO Security Pouch,Gun Tacker,', '', 0),
(23, 'test', 5252525252, 'test1@gmail.com', '12345', 'test addr', '', '', 0),
(24, 'test', 5252525252, 'test@gmail.cm', '12345', 'test', 'Paper Punch,EKO Security Pouch,Gun Tacker,', '', 0),
(25, 'test', 5252525252, 'test@gmail.com2', '12345', 'dfdf', 'Gun Tacker,', '', 0),
(26, 'test', 5252525252, 'test2@gmail.com', '12345', 'test addr', 'Paper Punch,', '', 0),
(27, 'test client', 5252525252, 'tarun.garg@omsoftsolution.co.in', '54321', 'test addr', 'EKO Security Pouch,Printed Registers.,Printed Registers.,Printed Registers.,Delivery Bags.,', '', 0),
(28, 'test client', 6565656565, 'test30@gmail.com', '12345', 'test addr', 'test prod1 name,test prod nme,', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_num` bigint(200) NOT NULL,
  `c_email` text NOT NULL,
  `p_id` int(20) NOT NULL,
  `sid` int(11) NOT NULL,
  `qty` int(20) NOT NULL,
  `date` text NOT NULL,
  `time` text NOT NULL,
  `location` varchar(50) NOT NULL,
  `ponumber` varchar(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_num`, `c_email`, `p_id`, `sid`, `qty`, `date`, `time`, `location`, `ponumber`, `status`) VALUES
(73, 20180505073951, 'tarun.garg@omsoftsolution.co.in', 29, 14, 4, '05/05/2018', '', 'Delhi', '96325', 'Pending'),
(74, 20180505105124, 'tarun.garg@omsoftsolution.co.in', 29, 14, 2, '05/05/2018', '', 'Delhi', '54221', 'Pending'),
(75, 20180505120151, 'tarun.garg@omsoftsolution.co.in', 29, 14, 4, '05/05/2018', '', 'Delhi', '52852', 'Pending'),
(76, 20180505120151, 'tarun.garg@omsoftsolution.co.in', 27, 10, 2, '05/05/2018', '', 'Delhi', '52852', 'Pending'),
(77, 20180505120318, 'tarun.garg@omsoftsolution.co.in', 29, 14, 2, '05/05/2018', '', 'Delhi', '1235', 'Pending'),
(78, 20180505120318, 'tarun.garg@omsoftsolution.co.in', 29, 13, 1, '05/05/2018', '', 'Delhi', '1235', 'Pending'),
(79, 20180505120649, 'tarun.garg@omsoftsolution.co.in', 29, 14, 2, '05/05/2018', '', 'Delhi', '', 'Pending'),
(80, 20180505120912, 'tarun.garg@omsoftsolution.co.in', 29, 14, 2, '05/05/2018', '', 'Delhi', '54123', 'Pending'),
(81, 20180505120912, 'tarun.garg@omsoftsolution.co.in', 29, 13, 2, '05/05/2018', '', 'Delhi', '54123', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `sku` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `img` text NOT NULL,
  `date` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `sku`, `name`, `description`, `img`, `date`) VALUES
(16, 'GunTacker', 'Gun Tacker', 'Easy drop-in loading with reload indicator\r\nAll metal construction with plastic grip for comfortable working\r\nSuitable For : Fencing, Netting, Leather, Plastic protection, Upholstery, Canvas, Textile, Decorative, Work Frames, Beading', 'product_guntacker.png', ''),
(17, 'EKOSecurityPouch', 'EKO Security Pouch', '40-micron security Pouches\r\n\r\nSingle sealing security pouches\r\n\r\nSecurity pouches with permanent tape\r\n\r\nLower priced high quality pouches', 'product_ekosecuritypouch.png', ''),
(18, 'PaperPunch', 'Paper Punch', '\r\n    Heavy duty all steel robust construction. \r\n    Ideal for industrial & Professional use.\r\n    Handle lock for easy storage', 'product_paperpunch.png', ''),
(19, 'hdpe', 'Mother  Bags (HDPE bags)', '', 'product_hdpe.png', ''),
(20, 'Delivery Bags.', 'Delivery Bags.', 'Delivery Bags.\r\n', 'product_5.jpg', ''),
(22, 'waist Pouch.', 'waist Pouch.', 'waist Pouch.', 'product_6.jpg', ''),
(23, 'Bopp Tapes', 'Bopp Tapes', 'Bopp Tapes', 'product_7.jpg', ''),
(24, 'Printer Catridge.', 'Printer Catridge.', 'Printer Catridge.', 'product_8.jpg', ''),
(25, 'Printed Registers.', 'Printed Registers.', 'Printed Registers.', 'product_9.jpg', ''),
(27, 'test', 'Printed Registers.', 'Printed Registers.', 'product_9.jpg', ''),
(28, 'test2', 'Printed Registers.', 'Printed Registers.', 'product_9.jpg', ''),
(29, 'test3', 'EKO Security Pouch', '40-micron security Pouches\r\n\r\nSingle sealing security pouches\r\n\r\nSecurity pouches with permanent tape\r\n\r\nLower priced high quality pouches', 'product_ekosecuritypouch.png', ''),
(30, 'test sku', 'test prod nme', 'test desc', 'product_4.png', ''),
(31, 'test1 sku', 'test prod1 name', 'test1 desc', 'product_watch.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `sid` int(11) NOT NULL,
  `item` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `pcs` int(11) NOT NULL,
  `price` float NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`sid`, `item`, `size`, `description`, `pcs`, `price`, `id`) VALUES
(1, 'item', 'product name', 'item desc', 500, 500, 0),
(9, 'test 1', 'test 1', 'test 1', 5, 2000, 27),
(10, 'test 2', 'test 1', 'test 1', 10, 5000, 27),
(11, 'test 3', 'test 3', 'test 3', 15, 4000, 27),
(12, 'eko1', 'eko1', 'eko1', 50, 500, 29),
(13, 'eko2', 'eko2', 'eko2', 50, 500, 29),
(14, 'eko3', 'eko3', 'eko3', 5, 500, 29),
(15, 'code', '50', 'description new', 5, 100, 31),
(16, 'code2', 'prod name', 'description', 60, 600, 31),
(17, 'code3', 'prod 3', 'desc3', 60, 600, 30),
(18, 'code 4', 'prod 4', 'desc4', 40, 400, 30);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`sr`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `sr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
