-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql:3306
-- Generation Time: Jul 15, 2019 at 07:21 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` char(10) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `birth` date DEFAULT NULL,
  `class` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `code`, `fname`, `lname`, `birth`, `class`) VALUES
(1, '61550129', 'AAA', 'BBBSSS', '1990-07-08', 1),
(3, '61550130', '33newName', 'AAA22', '1990-07-08', 2),
(5, '61550132', 'name4', 'gggg', '1990-07-08', 2),
(6, '61550133', 'name5', 'retwyt', '1990-07-08', 3),
(7, '6550130', 'namead', 'adsf', '1990-07-07', 2),
(9, '65501234', 'namead', 'adsf', '1990-07-07', 2),
(10, '6550123444', 'ZZZZZ', 'adsf', '1990-07-07', 2),
(11, '65503444', 'anasdfi', '555adsf', '1990-07-07', 2),
(13, '65503443', 'anasdfi', '555adsf', '1990-07-07', 2),
(14, '655034433', 'anasdfi', '555adsf', '1990-07-07', 2),
(15, '1234324132', 'Damrong', 'OK1556', '2018-12-03', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
