-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2022 at 09:31 PM
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
  `short_description` text NOT NULL,
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
(10, 2147483647, 'The First 90 Days', 'Education', 'Book', 'Description is the fiction-writing mode for transmitting a mental image of the particulars of a story. Together with dialogue, narration, exposition, and summarization, description is one of the most widely recognized of the fiction-writing modes.', '6238dc68038e9.png', 'Michael ', 'D. Watkins', 'Harvard Business Review Press', 'Massachusetts US', '2021-01-02', 'Available'),
(18, 78961232, 'Master Your Next Move', 'Education', 'Book', 'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm ', '6238bbe35f264.png', 'Napoleon', 'Hill', 'Harvard Business Review Press', 'Boston', '2014-01-05', 'Available'),
(19, 124587, 'Think and Grow Rich', 'Business', 'Book', '.Think and Grow Rich condenses them, providing the reader with 14 principles in the form of a ', '6238bc4672b05.png', 'Sarah', 'J. Maas', 'CreateSpace Independent Publis', 'Scots Valley  Califfornia US', '2001-12-05', 'Reserved'),
(20, 554412, 'The Cruel Prince', 'Romance', 'Audio Book CD', 'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm ', '6238c6b238394.png', 'Holly', 'Black', 'Little, Brown Books for Young ', 'New York City US', '1998-11-14', 'Available'),
(21, 66589, 'Throne of Glass', 'Fantasy', 'Audio Book Tape', 'Describe your book in simple, straightforward, and consumer-friendly terms. Your description should be at least 150-200 words long. Give readers enough information to understand', '6238c7d466d5b.png', 'Ashley ', 'Blake', 'CreateSpace Independent Publis', 'London UK', '2012-10-16', 'Available'),
(22, 125463, 'The Wicked King', 'Education', 'Audio Book Tape', 'Description is the fiction-writing mode for transmitting a mental image of the particulars of a story. Together with dialogue, narration, exposition, and summarization, description is one of the most widely recognized of the fiction-writing modes.', '6238c80748b18.png', 'Holly', 'Brown', 'Little, Brown Books for Young ', 'New York City US', '1987-02-01', 'Reserved'),
(23, 5, 'Hoover', 'Education', 'Book DVD', 'Whose truth is the lie? Stay up all night reading the sensational psychological thriller that has readers obsessed, from the #1 New York Times bestselling author of It Ends With Us.', '6238c8341a74e.png', 'Colleen', 'Hoover', 'New York Times Bestseller', 'USA Today Bestseller', '2022-01-01', 'Reserved'),
(24, 8, 'End with Us', 'Adventure', 'Audio Book CD', 'Lily hasn’t always had it easy, but that’s never stopped her from working hard for the life she wants. She’s come a long way from the small town where she grew up—she graduated from college, moved to Boston, and started her own business. ', '6238c85ca22b6.png', 'Jessica', 'Sorrensen', 'Bloomsbury London UK', 'Massachusetts US', '2018-04-06', 'Available'),
(25, 12, 'Disaster', 'Education', 'Audio Book DVD', 'Describe your book in simple, straightforward, and consumer-friendly terms. Your description should be at least 150-200 words long. Give readers enough information to understand what your book is, what ', '6238c88389b14.png', 'Sylvian ', 'Reenald', 'New York Times Bestseller', 'nds with Us is ', '2015-02-03', 'Available'),
(26, 1945, 'Book', 'Education', 'Audio Book Tape', 'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm ', '6238c8a454e41.png', 'Lora', 'Hill', 'Little, Brown Books for Young ', 'somber plotline', '2017-01-20', 'Available'),
(27, 5456, 'Great Times', 'Romance', 'Audio Book Tape', 'Whose truth is the lie? Stay up all night reading the sensational psychological thriller that has readers obsessed, from the #1 New York Times bestselling author of It Ends With Us', '6238c8bc829f8.png', 'Jack', 'Muss', 'Bloomsbury London UK', 'Andreas str', '2014-01-05', 'Available'),
(28, 18, 'Shuggie Bain', 'Romance', 'Book', 'Set in a poverty-stricken Glasgow in the early 1980s, Douglas Stuart’s blistering, Booker Prize-winning debut is a heartbreaking story which lays bare the ruthlessness ', '6238d3a72e6a6.png', 'Douglas', 'Stuart', 'Harvard Business Review Press', 'Massachusetts US', '2022-03-01', 'Reserved'),
(30, 254, 'Luster', 'Adventure', 'Audio Book CD', 'Description is the fiction-writing mode for transmitting a mental image of the particulars of a story. Together with dialogue, narration, exposition, and summarization, description is one of the most widely recognized of the fiction-writing modes.', '6238d615aa527.png', 'Raven', 'Leilani', 'CreateSpace Independent Publis', 'Scots Valley  Califfornia US', '2056-08-07', 'Available'),
(31, 256, 'Room', 'Education', 'Audio Book Tape', 'Description is the fiction-writing mode for transmitting a mental image of the particulars of a story. Together with dialogue, narration, exposition, and summarization, description is one of the most widely recognized of the fiction-writing modes.', '6238d68344c57.png', 'Emma', 'Donoghue', 'Little, Brown Books for Young', 'New York City US', '2006-05-09', 'Available'),
(32, 257, 'Burial Rites', 'Romance', 'Audio Book DVD', 'Description is the fiction-writing mode for transmitting a mental image of the particulars of a story. Together with dialogue, narration, exposition, and summarization, description is one of the most widely recognized of the fiction-writing modes.', '6238d70c7d671.png', 'Hannah', 'Kent', 'New York Times Bestseller', 'nds with Us is ', '1212-12-12', 'Reserved'),
(33, 258, 'American Psycho', 'Beauty', 'Book', 'Description is the fiction-writing mode for transmitting a mental image of the particulars of a story. Together with dialogue, narration, exposition, and summarization, description is one of the most widely recognized of the fiction-writing modes.', '6238d78dc7580.png', 'Bret', 'Easton', 'Bloomsbury London UK', 'Andreas str', '1232-11-12', 'Available'),
(34, 259, 'The Lovely Bones', 'Love', 'Audio Book CD', 'Description is the fiction-writing mode for transmitting a mental image of the particulars of a story. Together with dialogue, narration, exposition, and summarization, description is one of the most widely recognized of the fiction-writing modes.', '6238d7fd9a073.png', 'Alice', 'Sebold', 'Harvard Business Review Press', 'Massachusetts US', '1211-11-02', 'Reserved'),
(35, 261, 'A Little Life', 'History', 'Audio Book Tape', 'Description is the fiction-writing mode for transmitting a mental image of the particulars of a story. Together with dialogue, narration, exposition, and summarization, description is one of the most widely recognized of the fiction-writing modes.', '6238d8850336f.png', 'Hanya', 'Yanagihara', 'Bloomsbury London UK', 'Andreas str', '2010-05-04', 'Available'),
(36, 262, 'Pride and Prejudice', 'Love', 'Audio Book DVD', 'Description is the fiction-writing mode for transmitting a mental image of the particulars of a story. Together with dialogue, narration, exposition, and summarization, description is one of the most widely recognized of the fiction-writing modes.', '6238d8e35de47.png', 'Jane', 'Austen', 'Little, Brown Books for Young', 'somber plotline', '2015-11-21', 'Available'),
(37, 263, 'A House for Noone', 'Comedy', 'Book', 'Description is the fiction-writing mode for transmitting a mental image of the particulars of a story. Together with dialogue, narration, exposition, and summarization, description is one of the most widely recognized of the fiction-writing modes.', '6238d98a873a0.png', 'Jack', 'Mursh', 'New York Times Bestseller', 'nds with Us is ', '2002-02-02', 'Reserved'),
(38, 264, 'Jane', 'Eyre', 'Audio Book CD', 'Description is the fiction-writing mode for transmitting a mental image of the particulars of a story. Together with dialogue, narration, exposition, and summarization, description is one of the most widely recognized of the fiction-writing modes.', '6238d9eb70887.png', 'Charlote', 'Bronte', 'Bloomsbury London UK', 'Andreas str', '1235-02-01', 'Available'),
(39, 265, 'Guide to the Galaxy', 'Education', 'Audio Book Tape', 'Description is the fiction-writing mode for transmitting a mental image of the particulars of a story. Together with dialogue, narration, exposition, and summarization, description is one of the most widely recognized of the fiction-writing modes.', '6238da66544d3.png', 'Douglas', 'Adams', 'New York Times Bestseller', 'nds with Us is ', '1541-12-23', 'Reserved'),
(40, 266, 'Passing', 'Adventure', 'Audio Book DVD', 'Description is the fiction-writing mode for transmitting a mental image of the particulars of a story. Together with dialogue, narration, exposition, and summarization, description is one of the most widely recognized of the fiction-writing modes.', '6238dabae7a98.png', 'Nella', 'Larsen', 'Little, Brown Books for Young', 'New York City US', '2005-03-05', 'Available'),
(41, 267, 'Wolf Hall', 'Adventure', 'Book', 'Description is the fiction-writing mode for transmitting a mental image of the particulars of a story. Together with dialogue, narration, exposition, and summarization, description is one of the most widely recognized of the fiction-writing modes.', '6238db3037233.png', 'Hilary', 'Mannel', 'CreateSpace Independent Publis', 'London UK', '2015-12-05', 'Available'),
(42, 268, 'The Burning Chambers', 'Romance', 'Audio Book Tape', 'Description is the fiction-writing mode for transmitting a mental image of the particulars of a story. Together with dialogue, narration, exposition, and summarization, description is one of the most widely recognized of the fiction-writing modes.', '6238db8b95c14.png', 'Kate', 'Mosse', 'Harvard Business Review Press', 'Scots Valley  Califfornia US', '2012-03-01', 'Reserved'),
(43, 271, 'Dissolution', 'Romance', 'Audio Book CD', 'Description is the fiction-writing mode for transmitting a mental image of the particulars of a story. Together with dialogue, narration, exposition, and summarization, description is one of the most widely recognized of the fiction-writing modes.', '6238dbf17ddd4.png', 'Ken', 'Follet', 'Harvard Business Review Press', 'Boston', '2012-06-04', 'Available'),
(44, 272, 'The Pillars', 'Adventure', 'Audio Book DVD', 'Description is the fiction-writing mode for transmitting a mental image of the particulars of a story. Together with dialogue, narration, exposition, and summarization, description is one of the most widely recognized of the fiction-writing modes.', '6239f030d84c1.png', 'Sebastian', 'Faulks', 'Little, Brown Books for Young', 'New York City US', '2012-02-05', 'Available'),
(45, 281, 'The Wanders', 'Adventure', 'Book', 'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm ', '623a20c604736.png', 'Lily', 'Novak', 'Bloomsbury London UK', 'Andreas str', '2012-02-09', 'Available'),
(46, 282, 'Open MInd', 'Education', 'Audio Book CD', 'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm ', '623a21237a8e3.png', 'Ronny', 'Wolf', 'Harvard Business Review Press', 'Massachusetts US', '2014-04-08', 'Available'),
(47, 283, 'New Force', 'Adventure', 'Audio Book Tape', 'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm ', '623a218d37c49.png', 'Jason', 'Milner', 'New York Times Bestseller', 'nds with Us is ', '2015-11-05', 'Reserved'),
(48, 284, 'The Board', 'Education', 'Audio Book DVD', 'A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm ', '623a21ec4006a.png', 'Litle', 'Nick', 'CreateSpace Independent Publis', 'Scots Valley  Califfornia US', '2008-10-14', 'Available');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
