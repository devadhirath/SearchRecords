-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2021 at 06:23 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `heyhub`
--

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `kId` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `ids` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keywords`
--

INSERT INTO `keywords` (`kId`, `keyword`, `ids`) VALUES
(1, 'Hello,', '609a5641f2abcb4aa3107500'),
(2, 'how', '609a5641f2abcb4aa3107500'),
(3, 'are', '609a5641f2abcb4aa3107500,609a5641721fc389ded79ac4'),
(4, 'you', '609a5641f2abcb4aa3107500,609a5641ed5471d3dbab12d4,609a56417f21832cbee4f375,609a5641301d68fee5b642d9,609a5641b3f89dac9196f233'),
(5, 'Hey', '609a564118bd7af229307ab7,609a5641c8d47abf68202597'),
(6, 'I', '609a564118bd7af229307ab7,609a56413f663f8fc8ef2f11,609a5641da6e8d1324c9bfb5,609a56416775dfd9d8e85968,609a564112c9c1632ae2583d,609a5641c24e3cd678c9c8f2,609a5641b02ff01c8777b110,609a564173836dfb3d9d91ff,609a5641fdcfe3b78b093d97,609a56417320134d9364db69'),
(7, 'am', '609a564118bd7af229307ab7,609a5641da6e8d1324c9bfb5,609a56416775dfd9d8e85968,609a564112c9c1632ae2583d,609a5641b02ff01c8777b110,609a564173836dfb3d9d91ff'),
(8, 'fine', '609a564118bd7af229307ab7'),
(9, 'Thank', '609a5641ed5471d3dbab12d4'),
(10, 'from', '609a56417f21832cbee4f375'),
(11, 'Mumbai?', '609a56417f21832cbee4f375'),
(12, 'Yes', '609a5641a33e49d40ce860f4'),
(13, 'great', '609a5641721fc389ded79ac4,609a564119c0b73ae79e2c12'),
(14, 'May', '609a56413f663f8fc8ef2f11'),
(15, 'ask', '609a56413f663f8fc8ef2f11'),
(16, 'your', '609a56413f663f8fc8ef2f11,609a5641b7e323d39c10d3f1'),
(17, 'name', '609a56413f663f8fc8ef2f11'),
(18, 'please', '609a56413f663f8fc8ef2f11'),
(19, 'Murli', '609a5641da6e8d1324c9bfb5'),
(20, 'let''s', '609a5641c8d47abf68202597,609a56416775dfd9d8e85968,609a56417320134d9364db69'),
(21, 'hangout', '609a5641c8d47abf68202597'),
(22, 'someday', '609a5641c8d47abf68202597'),
(23, 'Yeah', '609a5641f4831abbbdbea78a,609a5641fdcfe3b78b093d97,609a56410a6ccfe7e53c6e01'),
(24, 'Sure', '609a5641f4831abbbdbea78a'),
(25, 'hungry,', '609a56416775dfd9d8e85968'),
(26, 'eat', '609a56416775dfd9d8e85968'),
(27, 'something', '609a56416775dfd9d8e85968'),
(28, 'hungry', '609a564112c9c1632ae2583d'),
(29, 'too', '609a564112c9c1632ae2583d,609a5641c24e3cd678c9c8f2,609a564173836dfb3d9d91ff'),
(30, 'What', '609a5641b7e323d39c10d3f1'),
(31, 'is', '609a5641b7e323d39c10d3f1,609a5641527ca484b6a3e940'),
(32, 'hobby?', '609a5641b7e323d39c10d3f1'),
(33, 'Listening', '609a5641121e9020ef9bcab7'),
(34, 'music,', '609a5641121e9020ef9bcab7'),
(35, 'playing', '609a5641121e9020ef9bcab7'),
(36, 'cricket,', '609a5641121e9020ef9bcab7'),
(37, 'dancing,', '609a5641121e9020ef9bcab7'),
(38, 'gaming', '609a5641121e9020ef9bcab7,609a5641c24e3cd678c9c8f2'),
(39, 'love', '609a5641c24e3cd678c9c8f2'),
(40, 'Ohh', '609a564119c0b73ae79e2c12,609a564173836dfb3d9d91ff'),
(41, 'that''s', '609a564119c0b73ae79e2c12'),
(42, 'So', '609a5641301d68fee5b642d9,609a5641b3f89dac9196f233'),
(43, 'do?', '609a5641301d68fee5b642d9'),
(44, 'a', '609a5641b02ff01c8777b110,609a56417320134d9364db69'),
(45, 'Software', '609a5641b02ff01c8777b110'),
(46, 'Engineer', '609a5641b02ff01c8777b110'),
(47, 'think', '609a5641b3f89dac9196f233,609a5641fdcfe3b78b093d97'),
(48, 'about', '609a5641b3f89dac9196f233,609a5641fdcfe3b78b093d97'),
(49, 'Elon', '609a5641b3f89dac9196f233'),
(50, 'Musk?', '609a5641b3f89dac9196f233'),
(51, 'He', '609a5641527ca484b6a3e940'),
(52, 'the', '609a5641527ca484b6a3e940,609a5641527ca484b6a3e940'),
(53, 'most', '609a5641527ca484b6a3e940'),
(54, 'optimistic', '609a5641527ca484b6a3e940'),
(55, 'man', '609a5641527ca484b6a3e940'),
(56, 'in', '609a5641527ca484b6a3e940,609a56417320134d9364db69'),
(57, 'world', '609a5641527ca484b6a3e940'),
(58, 'haha', '609a5641527ca484b6a3e940,609a5641fdcfe3b78b093d97'),
(59, 'also', '609a5641fdcfe3b78b093d97'),
(60, 'same', '609a5641fdcfe3b78b093d97'),
(61, 'him', '609a5641fdcfe3b78b093d97'),
(62, 'have', '609a56417320134d9364db69'),
(63, 'meeting', '609a56417320134d9364db69,609a56410a6ccfe7e53c6e01'),
(64, 'two', '609a56417320134d9364db69'),
(65, 'minutes,', '609a56417320134d9364db69'),
(66, 'meet', '609a56417320134d9364db69'),
(67, 'tomorrow', '609a56417320134d9364db69'),
(68, 'again', '609a56417320134d9364db69'),
(69, 'sure,', '609a56410a6ccfe7e53c6e01'),
(70, 'it', '609a56410a6ccfe7e53c6e01'),
(71, 'was', '609a56410a6ccfe7e53c6e01'),
(72, 'nice', '609a56410a6ccfe7e53c6e01'),
(73, 'to', '609a56410a6ccfe7e53c6e01'),
(74, 'you,', '609a56410a6ccfe7e53c6e01'),
(75, 'bye', '609a56410a6ccfe7e53c6e01,609a5641fa696d78f95c839e'),
(76, 'here,', '609a5641fa696d78f95c839e');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `mId` varchar(128) NOT NULL,
  `message` varchar(255) NOT NULL,
  `mTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `mId`, `message`, `mTime`) VALUES
(1, '609a5641f2abcb4aa3107500', 'Hello, how are you', '2021-06-29 03:14:33'),
(2, '609a564118bd7af229307ab7', 'Hey I am fine', '2021-06-29 03:14:33'),
(3, '609a5641ed5471d3dbab12d4', 'Thank you', '2021-06-29 03:14:33'),
(4, '609a56417f21832cbee4f375', 'Are you from Mumbai?', '2021-06-29 03:14:33'),
(5, '609a5641a33e49d40ce860f4', 'Yes', '2021-06-29 03:14:33'),
(6, '609a5641721fc389ded79ac4', 'You are great', '2021-06-29 03:14:33'),
(7, '609a56413f663f8fc8ef2f11', 'May I ask your name please', '2021-06-29 03:14:33'),
(8, '609a5641da6e8d1324c9bfb5', 'I am Murli', '2021-06-29 03:14:33'),
(9, '609a5641f4831abbbdbea78a', 'Yeah Sure', '2021-06-29 03:14:33'),
(10, '609a564112c9c1632ae2583d', 'I am hungry too', '2021-06-29 03:14:34'),
(11, '609a5641b7e323d39c10d3f1', 'What is your hobby?', '2021-06-29 03:14:34'),
(12, '609a5641121e9020ef9bcab7', 'Listening music, playing cricket, dancing, gaming', '2021-06-29 03:14:34'),
(13, '609a5641c24e3cd678c9c8f2', 'I love gaming too', '2021-06-29 03:14:34'),
(14, '609a5641301d68fee5b642d9', 'So what you do?', '2021-06-29 03:14:34'),
(15, '609a5641b02ff01c8777b110', 'I am a Software Engineer', '2021-06-29 03:14:34'),
(16, '609a564173836dfb3d9d91ff', 'Ohh I am too', '2021-06-29 03:14:34'),
(17, '609a5641b3f89dac9196f233', 'So what you think about Elon Musk?', '2021-06-29 03:14:34'),
(18, '609a5641527ca484b6a3e940', 'He is the most optimistic man in the world haha', '2021-06-29 03:14:34'),
(19, '609a5641fdcfe3b78b093d97', 'Yeah I also think same about him haha', '2021-06-29 03:14:34'),
(20, '609a56410a6ccfe7e53c6e01', 'Yeah sure, it was nice meeting to you, bye', '2021-06-29 03:14:34'),
(21, '609a5641fa696d78f95c839e', 'Same here, bye', '2021-06-29 03:14:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`kId`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `kId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
