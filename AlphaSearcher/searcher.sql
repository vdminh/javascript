-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2016 at 03:36 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `searcher`
--

-- --------------------------------------------------------

--
-- Table structure for table `pascal`
--

CREATE TABLE IF NOT EXISTS `pascal` (
  `id` int(11) NOT NULL,
  `mabai` text COLLATE utf8_unicode_ci NOT NULL,
  `debai` text COLLATE utf8_unicode_ci NOT NULL,
  `samplecode` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pascal`
--

INSERT INTO `pascal` (`id`, `mabai`, `debai`, `samplecode`) VALUES
(1, 'abc', 'abc', 'abc'),
(2, 'xyz', 'xyz.pdf', 'xyz'),
(3, 'bai1', 'xyz.pdf', 'peach.pas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pascal`
--
ALTER TABLE `pascal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pascal`
--
ALTER TABLE `pascal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
