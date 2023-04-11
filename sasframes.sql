-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2023 at 12:13 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sasframes`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amt` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `user_id`, `amt`, `qty`) VALUES
(7, 5, 2, 1200, 1),
(8, 6, 2, 1990, 1),
(9, 1, 2, 2970, 2),
(10, 3, 2, 3880, 1),
(12, 7, 2, 990, 1),
(13, 34, 3, 1999, 1),
(14, 35, 3, 1890, 1),
(15, 3, 3, 5820, 3),
(16, 41, 3, 999, 1),
(17, 2, 3, 4760, 4),
(18, 1, 3, 1980, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `descr` text NOT NULL,
  `amt` int(11) NOT NULL,
  `category` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `descr`, `amt`, `category`) VALUES
(1, 'Nerdlane for kids', 'Glossy Black Full Frame Rectangle Glass', 990, 'EyeGlass'),
(3, 'Mirar', 'GunMetal Full Frame Aviator Glasses', 1190, 'EyeGlass'),
(4, 'Vistazo', 'Pink Full Frame Glasses', 1940, 'EyeGlass'),
(5, 'NerdLane', 'Black Full Frame Eye Glass', 1120, 'EyeGlass'),
(6, 'Vistazo', 'Transparent Full Frame Butterfly Glass', 1200, 'EyeGlass'),
(7, 'Mirzaro', 'Grey Full Frame Rectangle Glass', 1990, 'EyeGlass'),
(8, 'Fastrack', 'Fastrack Black Tinted Round Sunglasses', 2290, 'SunGlass'),
(9, 'Siognee', 'Pink Tinted Hexagon Sun Glass', 990, 'SunGlass'),
(10, 'Soignee', 'Green Tinted Round Sun Glass', 900, 'SunGlass'),
(11, 'Soignee', 'Gray tined Square Glass', 990, 'SunGlass'),
(12, 'Titan', 'Titan Brown Tinted Aviator Sunglasses', 4590, 'SunGlass'),
(13, 'Soignee', 'Blue Tinted Round Sunglasses', 990, 'SunGlass'),
(14, 'Soignee', 'Multicolor Mirror Wayfarer Eyemyeye Play Sunglass', 2800, 'SunGlass'),
(15, 'Soignee', 'Black Tinted Wayfarer Eyemyeye Play Sunglass', 3990, 'SunGlass'),
(16, 'Freshlook(Turquoise)', 'Usage 1 Month, 2 Lenses', 749, 'ContactLenses'),
(17, 'Freshlook(Sterling Grey)', 'Usage 1 Month, 2 Lenses', 749, 'ContactLenses'),
(18, 'reshlook(Honey)', 'Usage 1 Month, 2 Lenses', 749, 'ContactLenses'),
(19, 'Freshlook(Green)', 'Usage 1 Month, 2 Lenses', 749, 'ContactLenses'),
(20, 'Freshlook(Gray)', 'Usage 1 Month, 2 Lenses', 749, 'ContactLenses'),
(21, 'Freshlook(Ahethyst)', 'Usage 1 Month, 2 Lenses', 749, 'ContactLenses'),
(22, 'Freshlook(Blue)', 'Usage 1 Month, 2 Lenses', 749, 'ContactLenses'),
(23, 'Freshlook(Brilliant Blue)', 'Usage 1 Month, 2 Lenses', 749, 'ContactLenses'),
(24, 'Nerdlane For Kids', 'Black Full Frame Computer Rectangle Glass', 1690, 'ComputerGlass'),
(25, 'Izbuko', 'GLossy Brown Full Frame Rectangle Glass', 1670, 'ComputerGlass'),
(26, 'Izbuko', 'Glossy Brown Cateye Computer Glass', 1690, 'ComputerGlass'),
(27, 'Izbuko', 'Brown Full Frame Oval Computer Glass', 1690, 'ComputerGlass'),
(28, 'Izibuko', 'Glossy Wine Full Frame Rectangle Glasses', 1690, 'ComputerGlass'),
(29, 'Izibuko', 'Glossy Purple Full Frame Rectangle Glasses', 1500, 'ComputerGlass'),
(30, 'Nerdlane', 'Brown Full Frame Cateye Glasses', 1690, 'ComputerGlass'),
(31, 'Nerdlane', 'Red Full Frame Cateye Glasses', 1400, 'ComputerGlass'),
(32, 'Alf', 'Gold Tinted Cateye Prescription Sunglasses', 1999, 'PowerSunGlass'),
(42, 'Alf', 'Gold Tinted Cateye Prescription Sunglass', 1999, 'PowerSunGlass'),
(43, 'Alf', 'Tortoise Tinted Wayfarer Prescription Sunglasses', 1999, 'PowerSunGlass'),
(44, 'Alf', 'Brown Tinted Wayfarer Prescription Sunglasses', 1890, 'PowerSunGlass'),
(45, 'Alf', 'Gold Tinted Butterfly Prescription Sunglasses', 1120, 'PowerSunGlass'),
(46, 'Alf', 'Brown Tinted Butterfly Prescription Sunglasses', 1999, 'PowerSunGlass'),
(47, 'Alf', 'Gold Tinted Butterfly Prescription Sunglasses', 1990, 'PowerSunGlass'),
(48, 'Alf', 'Brown Tinted Cateye Prescription Sunglasses', 1990, 'PowerSunGlass'),
(49, 'NerdLane', 'Floral Full Frame Cateye Glasses', 990, 'EyeGlasses'),
(50, 'Nerdlane', 'Orange Full Frame Rectangle Reading Glasses', 990, 'ReadingGlass'),
(51, 'Nerdlane', 'Tortoise Full Frame Rectangle Reading Glasses', 999, 'ReadingGlass'),
(52, 'Nerdlane', 'Black Full Frame Wayfarer Reading Glasses', 999, 'ReadingGlass'),
(53, 'Nerdlane', 'Brown Full Frame Rectangle Reading Glasses', 990, 'ReadingGlass'),
(54, 'Nerdlane', 'Brown Full Frame Wayfarer Reading Glasses', 999, 'ReadingGlass'),
(55, 'Nerdlane', 'Black Full Frame Wayfarer Reading Glasses', 999, 'ReadingGlass'),
(56, 'Nerdlane', 'Black Full Frame Rectangle Reading Glasses', 999, 'ReadingGlass'),
(57, 'Alf', 'Black Tinted Prescription Readinglasses', 999, 'ReadingGlass');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `cnum` int(10) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `addr` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uname`, `cnum`, `pass`, `addr`) VALUES
(1, 'ajai', 76398402, 'aa', 'dfgjd'),
(2, 'anila', 908765442, 'anila', 'askd'),
(3, 'Sneha', 944104869, 'sneha', 'Sananthnagar,Hyderabad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
