-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2019 at 04:06 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `odqa`
--

-- --------------------------------------------------------

--
-- Table structure for table `sampleanswer`
--

CREATE TABLE `sampleanswer` (
  `aId` int(11) NOT NULL,
  `answer` varchar(5000) NOT NULL,
  `qId` int(11) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sampleanswer`
--

INSERT INTO `sampleanswer` (`aId`, `answer`, `qId`, `datetime`) VALUES
(1, 'aarna', 1, '0000-00-00 00:00:00'),
(2, 'Answer to this question from python script', 3, '0000-00-00 00:00:00'),
(4, '45646546564Answer to this question from python script', 4, '0000-00-00 00:00:00'),
(5, 'Ans to this question from python script', 5, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `samplequestion`
--

CREATE TABLE `samplequestion` (
  `qId` int(11) NOT NULL,
  `question` varchar(5000) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `samplequestion`
--

INSERT INTO `samplequestion` (`qId`, `question`, `datetime`) VALUES
(1, 'What is your name?', '2019-02-26 19:58:55'),
(3, 'In???', '2019-02-26 20:25:29'),
(4, 'hjghjghj???', '2019-02-26 20:28:27'),
(5, 'Who is prime minister of India?', '2019-02-26 20:31:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sampleanswer`
--
ALTER TABLE `sampleanswer`
  ADD PRIMARY KEY (`aId`);

--
-- Indexes for table `samplequestion`
--
ALTER TABLE `samplequestion`
  ADD PRIMARY KEY (`qId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sampleanswer`
--
ALTER TABLE `sampleanswer`
  MODIFY `aId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `samplequestion`
--
ALTER TABLE `samplequestion`
  MODIFY `qId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
