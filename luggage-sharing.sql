-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2024 at 01:42 PM
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
-- Database: `luggage-sharing`
--

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `flight_id` int(11) NOT NULL,
  `flight_number` varchar(20) NOT NULL,
  `departure_airport` varchar(100) NOT NULL,
  `arrival_airport` varchar(100) NOT NULL,
  `departure_date_time` datetime NOT NULL,
  `arrival_date_time` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`flight_id`, `flight_number`, `departure_airport`, `arrival_airport`, `departure_date_time`, `arrival_date_time`, `created_at`, `updated_at`) VALUES
(1, 'AB123', 'JFK', 'LAX', '2024-07-05 08:00:00', '2024-07-05 11:30:00', '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(2, 'CD456', 'LHR', 'SFO', '2024-07-06 14:00:00', '2024-07-06 18:30:00', '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(3, 'EF789', 'ORD', 'DFW', '2024-07-07 10:30:00', '2024-07-07 12:00:00', '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(4, 'GH012', 'ATL', 'MIA', '2024-07-08 12:45:00', '2024-07-08 14:15:00', '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(5, 'IJ345', 'PEK', 'HND', '2024-07-09 09:15:00', '2024-07-09 13:00:00', '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(6, 'KL678', 'SYD', 'MEL', '2024-07-10 16:00:00', '2024-07-10 17:30:00', '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(7, 'MN901', 'CDG', 'FRA', '2024-07-11 11:30:00', '2024-07-11 13:00:00', '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(8, 'OP234', 'BCN', 'MAD', '2024-07-12 08:45:00', '2024-07-12 10:15:00', '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(9, 'QR567', 'AMS', 'BRU', '2024-07-13 13:00:00', '2024-07-13 14:30:00', '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(10, 'ST890', 'FCO', 'ATH', '2024-07-14 07:30:00', '2024-07-14 09:00:00', '2024-07-04 11:40:04', '2024-07-04 11:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `luggage`
--

CREATE TABLE `luggage` (
  `luggage_id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `weight` decimal(10,2) NOT NULL,
  `size` varchar(50) NOT NULL,
  `is_fragile` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `luggage`
--

INSERT INTO `luggage` (`luggage_id`, `passenger_id`, `flight_id`, `description`, `weight`, `size`, `is_fragile`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Small suitcase', 15.50, '20x14x8 inches', 0, '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(2, 2, 2, 'Large duffel bag', 22.00, '30x18x12 inches', 0, '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(3, 3, 3, 'Backpack', 8.20, '18x12x6 inches', 0, '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(4, 4, 4, 'Briefcase', 5.00, '16x12x4 inches', 0, '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(5, 5, 5, 'Golf bag', 35.00, '48x14x10 inches', 0, '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(6, 6, 6, 'Rolling carry-on', 12.80, '22x14x9 inches', 1, '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(7, 7, 7, 'Large suitcase', 28.50, '30x20x12 inches', 0, '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(8, 8, 8, 'Gym bag', 10.00, '24x12x10 inches', 0, '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(9, 9, 9, 'Laptop bag', 3.50, '18x12x4 inches', 0, '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(10, 10, 10, 'Ski bag', 40.00, '72x14x10 inches', 0, '2024-07-04 11:40:04', '2024-07-04 11:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `luggage_sharing_preferences`
--

CREATE TABLE `luggage_sharing_preferences` (
  `preference_id` int(11) NOT NULL,
  `passenger_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `allowed_weight_range` varchar(50) NOT NULL,
  `allowed_size_range` varchar(50) NOT NULL,
  `allow_fragments` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `luggage_sharing_preferences`
--

INSERT INTO `luggage_sharing_preferences` (`preference_id`, `passenger_id`, `flight_id`, `from_date`, `to_date`, `allowed_weight_range`, `allowed_size_range`, `allow_fragments`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2024-07-05', '2024-07-08', '10-25 kg', '15x10x8 - 30x20x15 inches', 0, '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(2, 2, 3, '2024-07-06', '2024-07-09', '15-30 kg', '20x15x10 - 35x25x20 inches', 1, '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(3, 3, 4, '2024-07-07', '2024-07-10', '5-15 kg', '10x8x5 - 25x15x12 inches', 0, '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(4, 4, 5, '2024-07-08', '2024-07-11', '8-20 kg', '18x12x6 - 30x18x10 inches', 0, '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(5, 5, 6, '2024-07-09', '2024-07-12', '20-40 kg', '25x15x12 - 40x24x18 inches', 1, '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(6, 6, 7, '2024-07-10', '2024-07-13', '15-35 kg', '20x12x10 - 35x20x15 inches', 0, '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(7, 7, 8, '2024-07-11', '2024-07-14', '10-25 kg', '18x10x8 - 30x18x12 inches', 0, '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(8, 8, 9, '2024-07-12', '2024-07-15', '5-10 kg', '15x8x6 - 25x15x10 inches', 0, '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(9, 9, 10, '2024-07-13', '2024-07-16', '12-30 kg', '22x14x10 - 35x22x18 inches', 1, '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(10, 10, 1, '2024-07-14', '2024-07-17', '25-50 kg', '30x18x12 - 50x30x20 inches', 0, '2024-07-04 11:40:04', '2024-07-04 11:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `passengers`
--

CREATE TABLE `passengers` (
  `passenger_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `passengers`
--

INSERT INTO `passengers` (`passenger_id`, `name`, `email`, `phone_number`, `address`, `date_of_birth`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'john.doe@example.com', '123-456-7890', '123 Main St, Anytown, USA', '1990-05-15', '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(2, 'Jane Smith', 'jane.smith@example.com', '987-654-3210', '456 Elm St, Othertown, USA', '1985-08-20', '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(3, 'Michael Johnson', 'michael.johnson@example.com', '555-123-4567', '789 Oak Ave, Anothercity, USA', '1982-12-10', '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(4, 'Emily Davis', 'emily.davis@example.com', '111-222-3333', '321 Pine Rd, Yetanothercity, USA', '1995-03-25', '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(5, 'Robert Wilson', 'robert.wilson@example.com', '999-888-7777', '654 Birch Ln, Somewhere, USA', '1978-09-05', '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(6, 'Sarah Brown', 'sarah.brown@example.com', '444-555-6666', '876 Cedar Blvd, Anywhere, USA', '1993-07-12', '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(7, 'David Lee', 'david.lee@example.com', '777-666-5555', '432 Maple Dr, Nowhere, USA', '1987-04-30', '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(8, 'Jessica Taylor', 'jessica.taylor@example.com', '333-444-5555', '987 Willow Ave, Everytown, USA', '1991-11-15', '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(9, 'Matthew Clark', 'matthew.clark@example.com', '222-333-4444', '741 Pineapple St, Hereville, USA', '1980-06-20', '2024-07-04 11:40:04', '2024-07-04 11:40:04'),
(10, 'Amanda White', 'amanda.white@example.com', '666-777-8888', '852 Cherry Ln, Thereville, USA', '1989-02-28', '2024-07-04 11:40:04', '2024-07-04 11:40:04');

-- --------------------------------------------------------

--
-- Table structure for table `shared_luggage`
--

CREATE TABLE `shared_luggage` (
  `share_id` int(11) NOT NULL,
  `luggage_id` int(11) NOT NULL,
  `shared_with_passenger_id` int(11) NOT NULL,
  `share_date` date NOT NULL,
  `return_date` date NOT NULL,
  `is_accepted` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shared_luggage`
--

INSERT INTO `shared_luggage` (`share_id`, `luggage_id`, `shared_with_passenger_id`, `share_date`, `return_date`, `is_accepted`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2024-07-05', '2024-07-07', 1, '2024-07-04 11:40:17', '2024-07-04 11:40:17'),
(2, 3, 4, '2024-07-06', '2024-07-09', 1, '2024-07-04 11:40:17', '2024-07-04 11:40:17'),
(3, 5, 6, '2024-07-07', '2024-07-10', 0, '2024-07-04 11:40:17', '2024-07-04 11:40:17'),
(4, 7, 8, '2024-07-08', '2024-07-11', 1, '2024-07-04 11:40:17', '2024-07-04 11:40:17'),
(5, 9, 10, '2024-07-09', '2024-07-12', 0, '2024-07-04 11:40:17', '2024-07-04 11:40:17'),
(6, 2, 3, '2024-07-10', '2024-07-13', 1, '2024-07-04 11:40:17', '2024-07-04 11:40:17'),
(7, 4, 5, '2024-07-11', '2024-07-14', 0, '2024-07-04 11:40:17', '2024-07-04 11:40:17'),
(8, 6, 7, '2024-07-12', '2024-07-15', 1, '2024-07-04 11:40:17', '2024-07-04 11:40:17'),
(9, 8, 9, '2024-07-13', '2024-07-16', 1, '2024-07-04 11:40:17', '2024-07-04 11:40:17'),
(10, 10, 1, '2024-07-14', '2024-07-17', 0, '2024-07-04 11:40:17', '2024-07-04 11:40:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`flight_id`);

--
-- Indexes for table `luggage`
--
ALTER TABLE `luggage`
  ADD PRIMARY KEY (`luggage_id`),
  ADD KEY `passenger_id` (`passenger_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `luggage_sharing_preferences`
--
ALTER TABLE `luggage_sharing_preferences`
  ADD PRIMARY KEY (`preference_id`),
  ADD KEY `passenger_id` (`passenger_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `passengers`
--
ALTER TABLE `passengers`
  ADD PRIMARY KEY (`passenger_id`);

--
-- Indexes for table `shared_luggage`
--
ALTER TABLE `shared_luggage`
  ADD PRIMARY KEY (`share_id`),
  ADD KEY `luggage_id` (`luggage_id`),
  ADD KEY `shared_with_passenger_id` (`shared_with_passenger_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `luggage`
--
ALTER TABLE `luggage`
  MODIFY `luggage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `luggage_sharing_preferences`
--
ALTER TABLE `luggage_sharing_preferences`
  MODIFY `preference_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `passengers`
--
ALTER TABLE `passengers`
  MODIFY `passenger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shared_luggage`
--
ALTER TABLE `shared_luggage`
  MODIFY `share_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `luggage`
--
ALTER TABLE `luggage`
  ADD CONSTRAINT `luggage_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`passenger_id`),
  ADD CONSTRAINT `luggage_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`flight_id`);

--
-- Constraints for table `luggage_sharing_preferences`
--
ALTER TABLE `luggage_sharing_preferences`
  ADD CONSTRAINT `luggage_sharing_preferences_ibfk_1` FOREIGN KEY (`passenger_id`) REFERENCES `passengers` (`passenger_id`),
  ADD CONSTRAINT `luggage_sharing_preferences_ibfk_2` FOREIGN KEY (`flight_id`) REFERENCES `flights` (`flight_id`);

--
-- Constraints for table `shared_luggage`
--
ALTER TABLE `shared_luggage`
  ADD CONSTRAINT `shared_luggage_ibfk_1` FOREIGN KEY (`luggage_id`) REFERENCES `luggage` (`luggage_id`),
  ADD CONSTRAINT `shared_luggage_ibfk_2` FOREIGN KEY (`shared_with_passenger_id`) REFERENCES `passengers` (`passenger_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
