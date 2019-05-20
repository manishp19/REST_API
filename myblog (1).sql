-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2019 at 07:35 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Religion', '2019-04-13 16:04:37'),
(2, 'Romance', '2019-04-13 16:04:37'),
(3, 'Sport', '2019-04-13 16:04:37'),
(4, 'Poetry & Drama', '2019-04-13 16:04:37'),
(5, 'Mystery', '2019-04-13 16:04:37');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `body`, `author`, `created_at`) VALUES
(1, 1, 'Counterfeit Gods', 'When the Empty Promises of Love, Money and Power Let You Down', 'Timothy Keller', '2019-04-13 16:05:09'),
(2, 2, 'Call Me By Your Name', 'Now a Major Motion Picture from Director Luca Guadagnino, Starring Armie Hammer and Timothee Chalamet, and Written by James Ivory', 'Andre Aciman', '2019-04-13 16:05:09'),
(3, 1, 'Encounters With Jesus', 'Unexpected Answers to Life\'s Biggest Questions', 'Timothy Keller', '2019-04-13 16:05:09'),
(4, 4, 'The Nectar of Pain', 'The eagerly anticipated new poetry collection from Najwa Zebian, author of Mind Platter. ', ' Najwa Zebian', '2019-04-13 16:05:09'),
(5, 4, 'Man\'s Search For Meaning', 'The classic tribute to hope from the Holocaust', ' Viktor E. Frankl', '2019-04-13 16:05:09'),
(6, 1, 'Buddha\'s Brain ', 'The Practical Neuroscience of Happiness, Love, and Wisdom', ' Rick Hanson', '2019-04-13 16:05:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
