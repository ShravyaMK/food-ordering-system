-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2026 at 07:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_ordering_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `Name`, `Phone`, `Email`, `Address`, `Password`) VALUES
(1, 'Shravya M K', '7338443428', 'shravyaclg@gmail.com', 'Puttur', '12345'),
(2, 'Shreshtashree N', '7483619173', 'shreshta@gmail.com', 'Mangaluru', '23456'),
(3, 'Shravyashree', '8050522695', 'shravyashree123@gmail.com', 'Panolibail', '34567'),
(4, 'Spoorthi K S', '7676953238', 'spoorthiks@gmail.com', 'Hassan', '45678'),
(5, 'Jaswin', '9449205934', 'jaswin@gmail.com', 'Mangaluru', '205934'),
(6, 'shreya', '9449205934', 'shravyamkshravyamk@gmail.com', 'Mangaluru', '123456'),
(7, 'Jaswin J M', '9449205934', 'jaswin@gmail.com', 'Alankar', '12345'),
(8, 'sam', '9686726593', 'abc@gmail.com', 'kottigera', 'sam2006'),
(9, 'yajnesh', '8050522695', 'abcd@gmail.com', 'nagri', 'shravyajnaik'),
(10, 'poorvi', '9686726593', 'abc@gmail.com', 'Mangaluru', '123456'),
(11, 'Pratheek', '', '', '', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `Food_ID` int(11) NOT NULL,
  `Food_Name` varchar(50) NOT NULL,
  `Price` int(10) NOT NULL,
  `Quantity` int(5) NOT NULL,
  `Restaurant_ID` int(11) NOT NULL,
  `Category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`Food_ID`, `Food_Name`, `Price`, `Quantity`, `Restaurant_ID`, `Category`) VALUES
(1, 'Chicken Biryani', 250, 10, 1, 'Non-Veg'),
(2, 'Butter Chicken', 200, 10, 1, 'Non-Veg'),
(3, 'Chicken Shawarma', 90, 10, 1, 'Non-Veg'),
(4, 'Panner Tikka', 150, 10, 1, 'Veg'),
(5, 'Veg Biryani', 150, 10, 1, 'Veg'),
(6, 'Chicken Biryani', 290, 10, 2, 'Non-Veg'),
(7, 'Veg Biryani', 200, 10, 2, 'Veg'),
(8, 'Butter Chicken', 210, 10, 2, 'Non-Veg'),
(9, 'Chicken Shawarma', 100, 10, 2, 'Non-Veg'),
(10, 'Panner Tikka', 130, 10, 2, 'Veg'),
(11, 'Chicken Biryani', 140, 10, 3, 'Non-Veg'),
(12, 'Veg Biryani', 120, 10, 3, 'Veg'),
(13, 'Butter Chicken', 180, 10, 3, 'Non-Veg'),
(14, 'Chicken Shawarma', 100, 10, 3, 'Non-Veg'),
(15, 'Panner Tikka', 100, 10, 3, 'Veg'),
(16, 'Chicken Biryani', 350, 10, 4, 'Non-Veg'),
(17, 'Veg Biryani', 300, 10, 4, 'Veg'),
(18, 'Butter Chicken', 250, 10, 4, 'Non-Veg'),
(19, 'Chicken Shawarma', 150, 10, 4, 'Non-Veg'),
(20, 'Panner Tikka', 250, 10, 4, 'Veg'),
(21, 'Veg Biryani', 500, 10, 5, 'Veg'),
(22, 'Panner Tikka', 300, 10, 5, 'Veg'),
(23, 'Veg Roll', 150, 10, 5, 'Veg'),
(24, 'Veg Shawarma', 200, 10, 5, 'Veg'),
(25, 'Veg Taali', 800, 10, 5, 'Veg'),
(26, 'Sandwitch', 80, 10, 6, 'Veg'),
(27, 'Veg Biryani', 400, 10, 6, 'Veg'),
(28, 'Panner Tikka', 250, 10, 6, 'Veg'),
(29, 'Mushroom Chilly', 300, 10, 6, 'Veg'),
(31, 'Pizza', 250, 10, 4, 'Veg'),
(33, 'Gudbud', 180, 10, 7, 'Veg'),
(34, 'Tiramisu', 200, 10, 7, 'Veg'),
(35, 'Brownie', 90, 10, 7, 'Veg'),
(36, 'Samosa', 40, 10, 7, 'Veg'),
(37, 'Masala Dosa', 150, 10, 7, 'Veg'),
(38, 'Mysore Masala Dosa', 200, 10, 7, 'Veg'),
(39, 'Chocolate Milkshake', 100, 10, 7, 'Veg'),
(40, 'Lime Soda', 30, 10, 7, 'Veg'),
(41, 'Margerita Pizza', 250, 10, 7, 'Veg'),
(42, 'Cheese Pizza', 200, 10, 7, 'Veg'),
(43, 'Veg Loaded Pizza', 150, 10, 7, 'Veg'),
(44, 'Kitkat Milkshake', 100, 10, 7, 'Veg'),
(45, 'Oreo Milkshake', 120, 10, 7, 'Veg'),
(46, 'Burger', 200, 10, 7, 'Veg'),
(47, 'Spicy Soup', 50, 10, 3, 'Veg'),
(48, 'Coffee', 50, 10, 5, 'Veg'),
(49, 'Pasta', 100, 10, 1, 'Veg'),
(50, 'Fries', 70, 10, 5, 'Veg'),
(51, 'Cake', 300, 10, 6, 'Non-Veg'),
(52, 'Chocolate Cake', 450, 10, 6, 'Non-Veg'),
(53, 'Hot Chocolate', 150, 10, 7, 'Veg'),
(54, 'Mocktail', 90, 10, 5, 'Veg'),
(55, 'Momos', 100, 10, 6, 'Veg'),
(56, 'Maggie', 100, 10, 3, 'Veg'),
(57, 'Sandwich', 150, 10, 6, 'Veg'),
(58, 'Salad', 80, 10, 1, 'Veg'),
(59, 'BBQ', 250, 10, 5, 'Non-Veg'),
(60, 'Soft Drinks', 20, 10, 6, 'Veg'),
(61, 'Smoothie', 200, 10, 7, 'Veg'),
(62, 'Fruit Bowl', 500, 10, 7, 'Veg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `Order_ID` int(11) NOT NULL,
  `Customer_ID` int(11) NOT NULL,
  `Food_ID` int(11) NOT NULL,
  `Quantity` int(5) NOT NULL,
  `Total_Amount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`Order_ID`, `Customer_ID`, `Food_ID`, `Quantity`, `Total_Amount`) VALUES
(1, 1, 1, 2, 500),
(2, 2, 4, 2, 300),
(3, 3, 5, 1, 150),
(4, 4, 3, 1, 90),
(5, 1, 1, 1, 500),
(6, 1, 1, 1, 500),
(7, 1, 1, 2, 500),
(8, 1, 1, 2, 500),
(9, 1, 1, 1, 500),
(10, 1, 1, 1, 500),
(11, 1, 1, 4, 500),
(13, 1, 1, 1, 500),
(14, 1, 1, 10, 500),
(15, 1, 1, 0, 500),
(16, 1, 1, 2, 500),
(17, 1, 1, 2, 500),
(18, 1, 1, 2, 500),
(19, 1, 3, 5, 450),
(20, 1, 3, 5, 450),
(21, 1, 2, 1, 200),
(22, 1, 2, 1, 200),
(23, 1, 14, 3, 300),
(24, 1, 3, 2, 180),
(25, 1, 15, 5, 500),
(26, 1, 1, 1, 250),
(27, 1, 28, 2, 500),
(28, 1, 25, 1, 800),
(29, 1, 25, 2, 1600),
(30, 1, 13, 8, 1440),
(31, 1, 31, 4, 1000),
(32, 1, 14, 2, 200),
(33, 1, 1, 5, 1250);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `Detail_ID` int(11) NOT NULL,
  `Order_ID` int(11) NOT NULL,
  `Food_ID` int(11) NOT NULL,
  `Quantity` int(5) NOT NULL,
  `Total_Price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`Detail_ID`, `Order_ID`, `Food_ID`, `Quantity`, `Total_Price`) VALUES
(1, 1, 1, 2, 500),
(2, 2, 4, 2, 300);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_ID` int(11) NOT NULL,
  `Order_ID` int(11) NOT NULL,
  `Payment_Method` varchar(30) NOT NULL,
  `Amount` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Payment_ID`, `Order_ID`, `Payment_Method`, `Amount`) VALUES
(1, 1, 'UPI', 500),
(2, 2, 'UPI', 300);

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `Restaurant_ID` int(11) NOT NULL,
  `Restaurant_Name` varchar(50) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Rating` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`Restaurant_ID`, `Restaurant_Name`, `Location`, `Rating`) VALUES
(1, 'Empire', 'Mangaluru', 5),
(2, 'Kudla Restaurant', 'Mangaluru', 4),
(3, 'Sapthagiri Family Restaurant', 'Kavoor', 5),
(4, 'Village Restaurant', 'Mangaluru', 3),
(5, 'Sai Palace', 'Mangaluru', 4),
(6, 'Hotel Taj Mahal', 'Kavoor', 4),
(7, 'Pabbas', 'Mangaluru', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`Food_ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Order_ID`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`Detail_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_ID`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`Restaurant_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `Food_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `Order_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `Detail_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Payment_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `Restaurant_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
