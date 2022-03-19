-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2022 at 05:23 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `be15_cr10_ivanmaksimov_biglibrary`
--
CREATE DATABASE IF NOT EXISTS `be15_cr10_ivanmaksimov_biglibrary` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `be15_cr10_ivanmaksimov_biglibrary`;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `ISBN` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `genre` varchar(30) NOT NULL,
  `m_type` varchar(30) NOT NULL,
  `short_description` varchar(900) NOT NULL,
  `picture` varchar(90) NOT NULL,
  `author_first_name` varchar(30) NOT NULL,
  `author_last_name` varchar(30) NOT NULL,
  `publisher_name` varchar(30) NOT NULL,
  `publisher_address` varchar(50) NOT NULL,
  `publish_date` date NOT NULL,
  `m_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `ISBN`, `title`, `genre`, `m_type`, `short_description`, `picture`, `author_first_name`, `author_last_name`, `publisher_name`, `publisher_address`, `publish_date`, `m_status`) VALUES
(10, 2147483647, 'The First 90 Days', 'Education', 'Book', 'You enter  bk, which is one oto own your own ISBN. A good book description is detailed, descriptive copy that is good for public display, used for your book marketing, book discovery, and for sales purposes.', '6235ef01e85a7.jpg', 'Michael ', 'D. Watkins', ' Harvard Business Review Press', 'Massachusetts US', '2021-01-02', 'Available'),
(18, 78961232, 'Master Your Next Move', 'Education', 'Book', 'While the tany14 principles in the form of a \"Philosophy of Achievement\".[2]', '6235f0913cb11.jpg', 'Napoleon', 'Hill', 'Harvard Business Review Press', 'Boston', '2014-01-05', 'Available'),
(19, 124587, 'Think and Grow Rich', 'Business', 'Book', '.Think and Grow Rich condenses them, providing the reader with 14 principles in the form of a \"Philosophy of Achievement\".[2]', '6235f14d0820d.jpg', 'Sarah', 'J. Maas', 'CreateSpace Independent Publis', 'Scots Valley  Califfornia US', '2001-12-05', 'Reserved'),
(20, 554412, 'The Cruel Prince', 'Romance', 'Audio Book CD', 'While the tany14 principles in the form of a \"Philosophy of Achievement\".[2]', '6235f231d70c1.jpg', 'Holly', 'Black', 'Little, Brown Books for Young ', 'New York City US', '1998-11-14', 'Available'),
(21, 66589, 'Throne of Glass', 'Fantasy', 'Audio Book CD', 'The Law of Success, and is the result of more than twenty years of study of many individuals who had amassed personal fortunes.[2]  Hill studied their habits and drew some 16 \"laws\" to be applied to achieve success. Think and Grow Rich condenses them, providing the reader with 14 principles in the form of a \"Philosophy of Achievement\".[2]', '6235f2ccbdd4c.jpg', 'Ashley ', 'Blake', 'Bloomsbury London UK', 'London UK', '2015-06-15', 'Available'),
(22, 125463, 'The Wicked King', 'Education', 'Audio Book CD', 'The Law of Success, and is the result of more than twenty years of study of many individuals who had amassed personal fortunes.[2]  Hill studied their habits and drew some 16 \"laws\" to be applied to achieve success. Think and Grow Rich condenses them, providing the reader with 14 principles in the form of a \"Philosophy of Achievement\".[2]', '6235f34c1f5c7.jpg', 'Holly', 'Brown', 'Little, Brown Books for Young ', 'New York City US', '1987-02-01', 'Reserved'),
(23, 5, 'Hoover', 'Education', 'Book', 'Whose truth is the lie? Stay up all night reading the sensational psychological thriller that has readers obsessed, from the #1 New York Times bestselling author of It Ends With Us.', 'product.png', 'Colleen', 'Hoover', 'New York Times Bestseller', 'USA Today Bestseller', '2022-01-01', 'Reserved'),
(24, 8, 'End with Us', 'Adventure', 'Book', 'Lily hasn’t always had it easy, but that’s never stopped her from working hard for the life she wants. She’s come a long way from the small town where she grew up—she graduated from college, moved to Boston, and started her own business. ', '6235f7f17beb6.jpg', 'Jessica', 'Sorrensen', 'New York Times', 'Massachusetts US', '2021-05-09', 'Available'),
(25, 12, 'Disaster', 'Education', 'Audio Book CD', 'wty years of study of many individuals who had amassed personal fortunes.[2]  Hill studied their habits and drew some 16 \"laws\" to be applied to achieve success. Think and Grow Rich condenses them, providing the reader with 14 principles in the form of a \"Philosophy of Achievement\".[2]', '6235f8e03e864.jpg', 'Sylvian ', 'Reenald', 'But Ryle’s', 'nds with Us is ', '2014-05-06', 'Available'),
(26, 1945, 'Book', 'Education', 'Book', ' conflicted characters and intense romances will gleefully', '6235fa5d3e72b.jpg', 'Lora', 'Hill', 'her new novel', 'somber plotline', '0000-00-00', 'Available'),
(27, 5456, 'Great Times', 'Romance', 'Audio Book CD', '\"Philosophy of Achievement\".', '6235fad9e5aaa.jpg', 'Jack', 'Muss', 'New Publish', 'Andreas str', '2012-05-04', 'Available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ISBN` (`ISBN`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
