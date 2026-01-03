-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2026 at 11:36 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assessment`
--

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `campaign_id` int(11) NOT NULL,
  `campaign_name` varchar(100) NOT NULL,
  `launch_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`campaign_id`, `campaign_name`, `launch_date`) VALUES
(1, 'New Year Sale', '2025-01-01'),
(2, 'Winter Clearance', '2025-01-10'),
(3, 'Valentine Special', '2025-02-01');

-- --------------------------------------------------------

--
-- Table structure for table `conversions`
--

CREATE TABLE `conversions` (
  `user_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `conversion_time` datetime NOT NULL,
  `revenue` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `conversions`
--

INSERT INTO `conversions` (`user_id`, `campaign_id`, `conversion_time`, `revenue`) VALUES
(101, 1, '2025-01-01 12:00:00', 500.00),
(102, 1, '2025-01-01 13:30:00', 300.00),
(104, 2, '2025-01-10 11:00:00', 700.00),
(106, 3, '2025-02-01 19:00:00', 400.00),
(108, 3, '2025-02-01 21:00:00', 250.00);

-- --------------------------------------------------------

--
-- Table structure for table `email_opens`
--

CREATE TABLE `email_opens` (
  `user_id` int(11) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `open_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `email_opens`
--

INSERT INTO `email_opens` (`user_id`, `campaign_id`, `open_time`) VALUES
(101, 1, '2025-01-01 09:15:00'),
(101, 2, '2025-01-10 08:45:00'),
(102, 1, '2025-01-01 10:00:00'),
(103, 1, '2025-01-01 11:30:00'),
(104, 2, '2025-01-10 09:20:00'),
(105, 2, '2025-01-10 14:10:00'),
(106, 3, '2025-02-01 18:00:00'),
(107, 3, '2025-02-01 20:15:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`campaign_id`);

--
-- Indexes for table `conversions`
--
ALTER TABLE `conversions`
  ADD PRIMARY KEY (`user_id`,`campaign_id`,`conversion_time`),
  ADD KEY `campaign_id` (`campaign_id`);

--
-- Indexes for table `email_opens`
--
ALTER TABLE `email_opens`
  ADD PRIMARY KEY (`user_id`,`campaign_id`,`open_time`),
  ADD KEY `campaign_id` (`campaign_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `conversions`
--
ALTER TABLE `conversions`
  ADD CONSTRAINT `conversions_ibfk_1` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`campaign_id`);

--
-- Constraints for table `email_opens`
--
ALTER TABLE `email_opens`
  ADD CONSTRAINT `email_opens_ibfk_1` FOREIGN KEY (`campaign_id`) REFERENCES `campaigns` (`campaign_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
