-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:4306:4306
-- Generation Time: Oct 04, 2024 at 03:48 PM
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
-- Database: `cafe5`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `itemCode` int(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`itemCode`, `itemName`, `price`, `quantity`) VALUES
(1, ' Roasted Butternut Squash Soup', '4000', '50'),
(2, ' New England Clam Chowder', '3000', '50'),
(3, ' Classic Margherita Pizza', '3000', '40'),
(4, 'Grilled Lemon Herb Chicken', '2500', '50'),
(5, 'Spaghetti Carbonara', '2800', '50'),
(6, 'Cajun Shrimp Alfredo', '1800', '50'),
(7, 'Thai Green Curry with Jasmine Rice', '2600', '50'),
(8, 'Beef Tenderloin Steak', '3200', '50'),
(9, 'Teriyaki Salmon Bowl', '1500', '50'),
(10, 'Mediterranean Falafel Wrap', '2600', '50'),
(11, 'Chicken Caesar Salad', '1250', '50'),
(12, 'Szechuan Kung Pao Chicken', '2400', '50'),
(13, 'Truffle Mushroom Risotto', '3500', '50'),
(14, 'BBQ Pulled Pork Sandwich', '2650', '50'),
(15, 'Crispy Fish Tacos', '3100', '50'),
(16, 'Paneer Tikka Masala', '1950', '50'),
(17, 'Garlic Butter Lobster Tail', '2300', '50'),
(18, 'Moroccan Lamb Tagine', '3200', '50'),
(19, 'Spinach and Ricotta Ravioli', '3450', '50');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `oid` varchar(255) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`oid`, `itemName`, `quantity`, `price`) VALUES
('4', ' Roasted Butternut Squash Soup', '1', '2000'),
('4', ' New England Clam Chowder', '1', '3000'),
('4', ' Roasted Butternut Squash Soup', '1', '2000'),
('4', ' New England Clam Chowder', '3', '9000'),
('4', ' Roasted Butternut Squash Soup', '2', '4000'),
('4', ' New England Clam Chowder', '2', '6000'),
('4', ' Classic Margherita Pizza', '1', '3000'),
('4', 'Spaghetti Carbonara', '3', '8400'),
('4', ' Roasted Butternut Squash Soup', '1', '2000'),
('4', ' New England Clam Chowder', '3', '9000'),
('4', ' Classic Margherita Pizza', '3', '9000'),
('4', ' Roasted Butternut Squash Soup', '3', '9000'),
('4', ' New England Clam Chowder', '2', '6000'),
('4', 'Grilled Lemon Herb Chicken', '1', '2500'),
('4', 'Spaghetti Carbonara', '1', '2800'),
('4', ' Roasted Butternut Squash Soup', '2', '6000'),
('4', ' Classic Margherita Pizza', '2', '6000'),
('4', 'Thai Green Curry with Jasmine Rice', '1', '2600'),
('4', 'Teriyaki Salmon Bowl', '2', '3000');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `reservationId` int(255) NOT NULL,
  `custName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `guestsNo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`reservationId`, `custName`, `email`, `date`, `time`, `guestsNo`) VALUES
(1, 'Dimalsha Sachinthani', 'dimalsha0506@gmail.com', '2024-09-12', '10:15:00.000000', '5');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staffId` varchar(255) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staffId`, `fullName`, `userName`, `password`) VALUES
('1', 'Sachintha Udayanga', 'sachintha', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `usersId` int(255) NOT NULL,
  `usersName` varchar(255) NOT NULL,
  `usersEmail` varchar(255) NOT NULL,
  `usersUid` varchar(255) NOT NULL,
  `usersPwd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`usersId`, `usersName`, `usersEmail`, `usersUid`, `usersPwd`) VALUES
(1, 'dimalsha', 'dimalsha0506@gmail.com', 'dimalsha', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`itemCode`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`reservationId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`usersId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `reservationId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `usersId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
