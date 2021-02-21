-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 21, 2021 at 01:53 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id16212333_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(3) NOT NULL,
  `name` varchar(24) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `balance` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `balance`) VALUES
(1, 'Anurag Kumar', 'anurag123@gmail.com', 9856321477, 2501043),
(2, 'Anil Yadav', 'anilkumar12@gmail.com', 9853825041, 958671),
(3, 'Avantika', 'avantika@gmail.com', 8234567120, 230019),
(4, 'Virender Sehwag', 'virendersehwag@gmail.com', 7875485893, 1023656),
(5, 'Swaraj Nayak', 'gaintpanda@gmail.com', 8430123459, 1232130),
(6, 'Kiran ', 'kiran0987@gmail.com', 8234567132, 23234),
(7, 'Virat', 'chiku18@gmail.com', 7875485832, 432312),
(8, 'Gautam', 'gambhir@outlook.com', 9856323232, 230040),
(9, 'Zaheer', 'zahirhey@hotmail.com', 9853825051, 1234210),
(10, 'Gaaurav', 'gaaaauraav@myorg.in', 8234567321, 102939);

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `amount` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`sno`, `sender`, `receiver`, `amount`, `datetime`) VALUES
(1, 'Anurag Kumar', 'Virender Sehwag', 200, '2021-02-21 14:24:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
