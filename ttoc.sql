-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2019 at 03:38 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ttoc`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(255) NOT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `product_id` int(255) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_info`
--

CREATE TABLE `order_info` (
  `order_id` int(255) NOT NULL,
  `ordered_by` varchar(255) NOT NULL,
  `ordered_items` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_category` varchar(255) NOT NULL,
  `product_price` longtext NOT NULL,
  `product_details` longtext NOT NULL,
  `product_image` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_category`, `product_price`, `product_details`, `product_image`) VALUES
(12, 'Pizza', 'Fast Food', '80', 'Taste it!', '../images/product_images/pizza.jpg'),
(13, 'Chaw mein', 'Fast Food', '200', 'Taste it!', '../images/product_images/chaw mein.jpg'),
(14, 'Burger', 'Fast Food', '120', 'Taste it!', '../images/product_images/burger.jpg'),
(15, 'Chicken Biryani', 'Biryani', '140', 'Taste it!', '../images/product_images/d815e816-4664-472e-990b-d880be41499f-chicken-biryani-recipe.jpg'),
(16, 'Mutton Biryani', 'Biryani', '180', 'Taste it!', '../images/product_images/lucknowi-mutton-biryani-recipe.jpg'),
(18, 'Faluda', 'Desert', '100', 'Taste it!', '../images/product_images/Falooda-Social-Media-3329.jpg'),
(20, 'Porota', 'Breakfast Items', '8', 'Taste it!', '../images/product_images/kerala-parotta.jpg'),
(21, 'Poached Egg', 'Breakfast Items', '18', 'Taste it!', '../images/product_images/wine_poached_eggs_3.jpg'),
(22, 'Dal Vaji', 'Breakfast Items', '20', 'Taste it!', '../images/product_images/tuvar-moong-dal-sabzi-recipe.jpg'),
(23, 'Mug Daal Bhuna', 'Breakfast Items', '20', 'Taste it!', '../images/product_images/maxresdefault.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `userid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `user_dp` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`userid`, `name`, `password`, `email`, `phone`, `user_dp`) VALUES
(20, 'Nilottom Ghosh', '3b712de48137572f3849aabd5666a4e3', 'nilottom@gmail.com', '01779040805', '../images/user_dp/70063285_944633182557281_3876030623965511680_o.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `order_info`
--
ALTER TABLE `order_info`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_info`
--
ALTER TABLE `order_info`
  MODIFY `order_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
