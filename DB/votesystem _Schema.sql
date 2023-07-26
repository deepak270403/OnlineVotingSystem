-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2023 at 11:25 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `votesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `firstname`, `lastname`, `photo`, `created_on`) VALUES
(1, 'DeepakSuhas', '$2y$10$xETmYHauCp0HC69ClBr5U.qms4M9GMeY3ILMQGxbYfC.xUGgTEUnK', 'D', 'S', 'BingDaily_3dad91888c286d9617a76fb3f53dbfb1.jpg', '2018-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `platform` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`id`, `position_id`, `firstname`, `lastname`, `photo`, `platform`) VALUES
(19, 8, 'SANKHADEEP ', 'GHOSH', 'president.jpg', ''),
(20, 8, 'SHIVA KRISHNA', 'RATHOD', 'president-2.jpg', ''),
(21, 9, 'SATYAM SHORYA ', 'JHA', 'vc-1.jpg', ''),
(22, 9, 'MANISH ', 'KUMAR', 'vc-2.jpg', ''),
(23, 10, 'ADNAN HUSSAIN', 'Md', 'gs-1.jpg', ''),
(24, 10, 'PRAMOD BHUPATI', 'YOGAMUNI ', 'gs-2.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `max_vote` int(11) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `description`, `max_vote`, `priority`) VALUES
(8, 'Pesident ', 1, 1),
(9, 'Vice President ', 1, 2),
(10, 'General Secretary  ', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `id` int(11) NOT NULL,
  `voters_id` varchar(15) NOT NULL,
  `password` varchar(60) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `email` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`id`, `voters_id`, `password`, `firstname`, `lastname`, `photo`, `email`) VALUES
(2, '46LhmE8cRKCOMxT', '$2y$10$0oMmeq22M.fA6OxfXiKCw.hlhJ4W6vysgrraxnJyzy.Y8Pm3HsUaS', 'sai deepak', 'varalasetty', 'deepak varalasetty.jpg', NULL),
(3, 'DTSx1sfGPjrI67M', '$2y$10$XlVv097CXKUeFXBGtHkL0Oj7kdb/PD0x/0ADOGW7iS2YlnL4BRD.O', 'Suhas', 'Mucharla', 'passport size photo suhas.jpg', NULL),
(4, 'snL4igjEVQAXfkh', '$2y$10$quijmXZHK04.OiGrcYamhe5WQ3m9iaIs45Jddjj4LGoFiympy6Rde', 'Venugopal', 'Beeravalli', 'Screenshot 2023-04-08 150344.png', NULL),
(5, 'kXNLhFoxuROTPZs', '$2y$10$pSF7KqKNT/XRq7BL.hy8JeN7uh.DFSFv7A0TOlRMqyrrYg62/KZo.', 'Sushma Swaraj', 'Ollala', 'Screenshot 2023-04-08 150854.png', NULL),
(6, 'JKCzcpEUvLbWsPl', '$2y$10$7Y7vJoyiqzNas9/pSoW/Fu3KIsUg3woPg7FN7852BpGFloBad7wEC', 'Harsha', 'Jammigumpula', 'Screenshot 2023-04-10 225750.png', NULL),
(7, 'g3AN9jXW6BfPCkJ', '$2y$10$McpzIrVBQKeRCqmBl3/AoOcnvjcri4fR43t9TEKOkb4bRZzFSD1Qu', 'Raghava', 'Murugudu', 'Screenshot 2023-04-12 223758.png', NULL),
(9, 'msMVzBAhODlutEg', '$2y$10$8wuk2/JLAf73LJ5hNLWm9OZcjq62VWQL045lTtE5mXQ4IKiKeX6wG', 'Hari Krishna', 'Uppalapati', 'WhatsApp Image 2023-04-13 at 01.48.51.jpg', NULL),
(39, '5sV4DybXGNRJhvK', '$2y$10$92RX5Ae5b0CFAf8G9C8aduKfYctWMsM7z2Tcvonpw8UA.5Wevtsm.', 'test', 'user', 'paint.jpg', 'deesat.varalasetty@gmail.com'),
(41, 'Dod48GAMICkpS5Q', '$2y$10$vZHFhPeXxox7CQdztkiZt.wmjQ0R0dIybvRg7ZPadeHpHXz2VxzZK', 'Varenya', 'Mudumbu', 'p.jpg', 'jaisriram0110@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `id` int(11) NOT NULL,
  `voters_id` int(11) NOT NULL,
  `candidate_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `votes`
--

INSERT INTO `votes` (`id`, `voters_id`, `candidate_id`, `position_id`) VALUES
(81, 2, 20, 8),
(82, 2, 21, 9),
(83, 2, 24, 10),
(84, 4, 19, 8),
(85, 4, 22, 9),
(86, 4, 24, 10),
(87, 5, 19, 8),
(88, 5, 22, 9),
(89, 5, 24, 10),
(90, 6, 19, 8),
(91, 6, 21, 9),
(92, 6, 23, 10),
(93, 7, 19, 8),
(94, 7, 22, 9),
(95, 7, 24, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidates`
--
ALTER TABLE `candidates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_can_pos_id` (`position_id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_voters_id` (`voters_id`),
  ADD KEY `fk_candidate_id` (`candidate_id`),
  ADD KEY `fk_can_pos_id` (`position_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `candidates`
--
ALTER TABLE `candidates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `voters`
--
ALTER TABLE `voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `candidates`
--
ALTER TABLE `candidates`
  ADD CONSTRAINT `fk_can_pos_id` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`);

--
-- Constraints for table `votes`
--
ALTER TABLE `votes`
  ADD CONSTRAINT `fk_candidate_id` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`),
  ADD CONSTRAINT `fk_position_id` FOREIGN KEY (`position_id`) REFERENCES `positions` (`id`),
  ADD CONSTRAINT `fk_voters_id` FOREIGN KEY (`voters_id`) REFERENCES `voters` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
