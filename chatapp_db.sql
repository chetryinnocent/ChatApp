-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2025 at 01:15 PM
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
-- Database: `chatapp_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(1, 1545434240, 1679329249, 'Hi'),
(2, 1545434240, 1679329249, 'What\'s up bro'),
(3, 1679329249, 1545434240, 'ញាំបាយនៅ'),
(4, 1679329249, 1610368280, 'Hi'),
(5, 1610368280, 1545434240, 'Hello bro'),
(6, 1545434240, 1610368280, 'doing bro');

-- --------------------------------------------------------

--
-- Table structure for table `user_form`
--

CREATE TABLE `user_form` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_form`
--

INSERT INTO `user_form` (`user_id`, `name`, `email`, `password`, `img`, `status`) VALUES
(1047343836, 'Heng', 'heng@gmail.com', 'caf1a3dfb505ffed0d024130f58c5cfa', 'default-avatar.pngtesting.jpg', 'Active Now'),
(1209700108, 'Som Nang', 'nang@gmail.com', 'caf1a3dfb505ffed0d024130f58c5cfa', '1212.jpg', 'Offline Now'),
(1419733768, 'Odom', 'dom@gmail.com', 'caf1a3dfb505ffed0d024130f58c5cfa', 'default-avatar.pngtesting.jpg', 'Offline Now'),
(1545434240, 'chet', 'chetryinnocent@gmail.com', '202cb962ac59075b964b07152d234b70', 'default-avatar.pngphoto_2025-01-05_07-28-25.jpg', 'Active Now'),
(1610368280, 'Kim Heng', 'hengkim@gmail.com', '202cb962ac59075b964b07152d234b70', '434.jpg', 'Active Now'),
(1679329249, 'Roth', 'roth@gmail.com', 'caf1a3dfb505ffed0d024130f58c5cfa', 'default-avatar.pnghacker.jpg', 'Offline Now'),
(1730077866, 'Si Thol', 'thol@gmail.com', 'caf1a3dfb505ffed0d024130f58c5cfa', 'default-avatar.png321.jpg', 'Offline Now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_form`
--
ALTER TABLE `user_form`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1730077867;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
