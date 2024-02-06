-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2022 at 08:05 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tour`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_subject` varchar(255) NOT NULL,
  `comment_description` text NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'draft'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_subject`, `comment_description`, `user_image`, `user_name`, `status`) VALUES
(1, 'Best Trip of 2022..!', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto ipsa quos nobis quae, voluptatum, id labore non ut rem itaque eum alias neque doloribus quibusdam, cupiditate corrupti perferendis saepe ipsam', 'user-1.jpg', 'ted Brown', 'draft'),
(2, 'Affordable', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto ipsa quos nobis quae, voluptatum, id labore non ut rem itaque eum alias neque doloribus quibusdam, cupiditate corrupti perferendis saepe ipsam', 'katy.jpg', 'Katy Perry', 'draft'),
(3, 'Good', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Architecto ipsa quos nobis quae, voluptatum, id labore non ut rem itaque eum alias neque doloribus quibusdam, cupiditate corrupti perferendis saepe ipsam', 'cassie.jpg', 'Cassie Poppins', 'draft');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`) VALUES
(7, 'Rushabh Pawar', 'Rush123@gmail.com', 'WEBSITE'),
(6, 'Rith', 'rith123@gmail.com', 'Awesome website...!'),
(8, 'Pritesh Kotian', 'pritesh123@gmail.com', 'Excellent!');

-- --------------------------------------------------------

--
-- Table structure for table `flights`
--

CREATE TABLE `flights` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `departure_city` varchar(255) NOT NULL,
  `arrive_city` varchar(255) NOT NULL,
  `departure_date` datetime DEFAULT NULL,
  `arrival_date` datetime DEFAULT NULL,
  `price` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flights`
--

INSERT INTO `flights` (`id`, `name`, `image`, `departure_city`, `arrive_city`, `departure_date`, `arrival_date`, `price`) VALUES
(3, 'Mumbai-Manali', 'flight1.jpg', 'Mumbai', 'Manali', '2019-02-12 10:16:00', '2019-02-12 14:30:00', 9487),
(5, 'Mumbai-Bangalore', 'flight1.jpg', 'Mumbai', 'Bangalore', '2019-03-05 10:50:00', '2019-03-05 12:50:00', 10000),
(6, 'Mumbai-Nagpur', 'flight1.jpg', 'Mumbai', 'Nagpur', '2019-03-15 14:50:00', '2019-03-15 16:15:00', 8812),
(7, 'Mumbai-Mangalore', 'flight1.jpg', 'Mumbai', 'Mangalore', '2019-03-15 19:50:00', '2019-03-15 22:30:00', 9500),
(8, 'Mumbai-Nagpur', 'flight1.jpg', 'Mumbai', 'Nagpur', '2019-03-15 14:50:00', '2019-03-15 16:15:00', 8812),
(9, 'Mumbai-Mangalore', 'flight1.jpg', 'Mumbai', 'Mangalore', '2019-03-15 19:50:00', '2019-03-15 22:30:00', 9500),
(10, 'Mumbai-Bhuj', 'flight1.jpg', 'Mumbai', 'Bhuj', '2019-04-21 22:50:00', '2019-04-21 23:15:00', 4689),
(11, 'Mumbai-Jamnagar', 'flight1.jpg', 'Mumbai', 'Jamnagar', '2019-04-07 10:15:00', '2019-04-07 12:50:00', 9500),
(12, 'Mumbai-Vadodara', 'flight1.jpg', 'Mumbai', 'Vadodara', '2019-05-06 14:50:00', '2019-05-06 16:30:00', 7854),
(13, 'Mumbai-Indore', 'flight1.jpg', 'Mumbai', 'Indore', '2019-05-14 16:30:00', '2019-05-14 18:15:00', 6975),
(14, 'Mumbai-Ahmedabad', 'flight1.jpg', 'Mumbai', 'Ahmedabad', '2019-06-20 17:15:00', '2019-06-20 19:05:00', 4257),
(126, 'Mumbai-Chennai', 'flight1.jpg', 'Mumbai', 'Chennai', '2019-01-12 07:15:00', '2019-01-12 12:50:00', 15000),
(18, 'Mumbai-Goa', 'flight1.jpg', 'Mumbai', 'Goa', '2019-03-13 07:15:00', '2019-03-13 09:15:00', 5680),
(19, 'Mumbai-Goa', 'flight1.jpg', 'Mumbai', 'Goa', '2019-04-21 08:05:00', '2019-04-21 10:05:00', 5680),
(20, 'Mumbai-Goa', 'flight1.jpg', 'Mumbai', 'Goa', '2019-05-09 06:30:00', '2019-05-09 08:30:00', 5680),
(21, 'Mumbai-Goa', 'flight1.jpg', 'Mumbai', 'Goa', '2019-06-06 14:05:00', '2019-06-06 16:05:00', 5680),
(22, 'Mumbai-Goa', 'flight1.jpg', 'Mumbai', 'Goa', '2019-07-18 16:50:00', '2019-07-18 18:50:00', 5680),
(23, 'Mumbai-Goa', 'flight1.jpg', 'Mumbai', 'Goa', '2019-08-13 18:30:00', '2019-08-13 20:30:00', 5680),
(25, 'Mumbai-Goa', 'flight1.jpg', 'Mumbai', 'Goa', '2019-10-02 10:15:00', '2019-10-02 12:15:00', 5680),
(26, 'Mumbai-Chennai', 'flight1.jpg', 'Mumbai', 'Chennai', '2019-02-05 10:50:00', '2019-02-05 12:50:00', 8795),
(27, 'Mumbai-Chennai', 'flight1.jpg', 'Mumbai', 'Chennai', '2019-03-13 07:15:00', '2019-03-13 09:15:00', 8795),
(28, 'Mumbai-Chennai', 'flight1.jpg', 'Mumbai', 'Chennai', '2019-04-21 08:05:00', '2019-04-21 10:05:00', 8795),
(29, 'Mumbai-Chennai', 'flight1.jpg', 'Mumbai', 'Chennai', '2019-05-09 06:30:00', '2019-05-09 08:30:00', 8795),
(30, 'Mumbai-Chennai', 'flight1.jpg', 'Mumbai', 'Chennai', '2019-06-06 14:05:00', '2019-06-06 16:05:00', 8795),
(31, 'Mumbai-Chennai', 'flight1.jpg', 'Mumbai', 'Chennai', '2019-07-18 16:50:00', '2019-07-18 18:50:00', 8795),
(32, 'Mumbai-Chennai', 'flight1.jpg', 'Mumbai', 'Chennai', '2019-08-13 18:30:00', '2019-08-13 20:30:00', 8795),
(127, 'Mumbai-Chennai', 'flight1.jpg', 'Mumbai', 'Chennai', '2019-01-12 07:15:00', '2019-01-12 12:50:00', 15000),
(35, 'Mumbai-Manali', 'flight1.jpg', 'Mumbai', 'Manali', '2019-02-05 10:50:00', '2019-02-05 12:50:00', 9487),
(37, 'Mumbai-Manali', 'flight1.jpg', 'Mumbai', 'Manali', '2019-04-21 08:05:00', '2019-04-21 10:05:00', 9487),
(38, 'Mumbai-Manali', 'flight1.jpg', 'Mumbai', 'Manali', '2019-05-09 06:30:00', '2019-05-09 08:30:00', 9487),
(39, 'Mumbai-Manali', 'flight1.jpg', 'Mumbai', 'Manali', '2019-06-06 14:05:00', '2019-06-06 16:05:00', 9487),
(40, 'Mumbai-Manali', 'flight1.jpg', 'Mumbai', 'Manali', '2019-07-18 16:50:00', '2019-07-18 18:50:00', 9487),
(41, 'Mumbai-Manali', 'flight1.jpg', 'Mumbai', 'Manali', '2019-08-13 18:30:00', '2019-08-13 20:30:00', 9487),
(42, 'Mumbai-Manali', 'flight1.jpg', 'Mumbai', 'Manali', '2019-09-05 20:15:00', '2019-09-05 22:15:00', 9487),
(43, 'Mumbai-Manali', 'flight1.jpg', 'Mumbai', 'Manali', '2019-10-02 10:15:00', '2019-10-02 12:15:00', 9487),
(44, 'Mumbai-Hyderabad', 'flight1.jpg', 'Mumbai', 'Hyderabad', '2019-02-05 10:50:00', '2019-02-05 12:50:00', 8794),
(45, 'Mumbai-Hyderabad', 'flight1.jpg', 'Mumbai', 'Hyderabad', '2019-03-13 07:15:00', '2019-03-13 09:15:00', 8794),
(47, 'Mumbai-Hyderabad', 'flight1.jpg', 'Mumbai', 'Hyderabad', '2019-05-09 06:30:00', '2019-05-09 08:30:00', 8794),
(48, 'Mumbai-Hyderabad', 'flight1.jpg', 'Mumbai', 'Hyderabad', '2019-06-06 14:05:00', '2019-06-06 16:05:00', 8794),
(50, 'Mumbai-Hyderabad', 'flight1.jpg', 'Mumbai', 'Hyderabad', '2019-08-13 18:30:00', '2019-08-13 20:30:00', 8794),
(51, 'Mumbai-Hyderabad', 'flight1.jpg', 'Mumbai', 'Hyderabad', '2019-09-05 20:15:00', '2019-09-05 22:15:00', 8794),
(52, 'Mumbai-Hyderabad', 'flight1.jpg', 'Mumbai', 'Hyderabad', '2019-10-02 10:15:00', '2019-10-02 12:15:00', 8794),
(53, 'Mumbai-Bangalore', 'flight1.jpg', 'Mumbai', 'Bangalore', '2019-02-05 10:50:00', '2019-02-05 12:50:00', 10000),
(54, 'Mumbai-Bangalore', 'flight1.jpg', 'Mumbai', 'Bangalore', '2019-03-13 07:15:00', '2019-03-13 09:15:00', 10000),
(55, 'Mumbai-Bangalore', 'flight1.jpg', 'Mumbai', 'Bangalore', '2019-04-21 08:05:00', '2019-04-21 10:05:00', 10000),
(57, 'Mumbai-Bangalore', 'flight1.jpg', 'Mumbai', 'Bangalore', '2019-06-06 14:05:00', '2019-06-06 16:05:00', 10000),
(59, 'Mumbai-Bangalore', 'flight1.jpg', 'Mumbai', 'Bangalore', '2019-08-13 18:30:00', '2019-08-13 20:30:00', 10000),
(60, 'Mumbai-Bangalore', 'flight1.jpg', 'Mumbai', 'Bangalore', '2019-09-05 20:15:00', '2019-09-05 22:15:00', 10000),
(61, 'Mumbai-Bangalore', 'flight1.jpg', 'Mumbai', 'Bangalore', '2019-10-02 10:15:00', '2019-10-02 12:15:00', 10000),
(62, 'Mumbai-Nagpur', 'flight1.jpg', 'Mumbai', 'Nagpur', '2019-02-05 10:50:00', '2019-02-05 12:50:00', 8812),
(63, 'Mumbai-Nagpur', 'flight1.jpg', 'Mumbai', 'Nagpur', '2019-03-13 07:15:00', '2019-03-13 09:15:00', 8812),
(64, 'Mumbai-Nagpur', 'flight1.jpg', 'Mumbai', 'Nagpur', '2019-04-21 08:05:00', '2019-04-21 10:05:00', 8812),
(65, 'Mumbai-Nagpur', 'flight1.jpg', 'Mumbai', 'Nagpur', '2019-05-09 06:30:00', '2019-05-09 08:30:00', 8812),
(66, 'Mumbai-Nagpur', 'flight1.jpg', 'Mumbai', 'Nagpur', '2019-06-06 14:05:00', '2019-06-06 16:05:00', 8812),
(67, 'Mumbai-Nagpur', 'flight1.jpg', 'Mumbai', 'Nagpur', '2019-07-18 16:50:00', '2019-07-18 18:50:00', 8812),
(68, 'Mumbai-Nagpur', 'flight1.jpg', 'Mumbai', 'Nagpur', '2019-08-13 18:30:00', '2019-08-13 20:30:00', 8812),
(69, 'Mumbai-Nagpur', 'flight1.jpg', 'Mumbai', 'Nagpur', '2019-09-05 20:15:00', '2019-09-05 22:15:00', 8812),
(70, 'Mumbai-Nagpur', 'flight1.jpg', 'Mumbai', 'Nagpur', '2019-10-02 10:15:00', '2019-10-02 12:15:00', 8812),
(71, 'Mumbai-Mangalore', 'flight1.jpg', 'Mumbai', 'Mangalore', '2019-02-05 10:50:00', '2019-02-05 12:50:00', 9500),
(72, 'Mumbai-Mangalore', 'flight1.jpg', 'Mumbai', 'Mangalore', '2019-03-13 07:15:00', '2019-03-13 09:15:00', 9500),
(74, 'Mumbai-Mangalore', 'flight1.jpg', 'Mumbai', 'Mangalore', '2019-05-09 06:30:00', '2019-05-09 08:30:00', 9500),
(75, 'Mumbai-Mangalore', 'flight1.jpg', 'Mumbai', 'Mangalore', '2019-06-06 14:05:00', '2019-06-06 16:05:00', 9500),
(76, 'Mumbai-Mangalore', 'flight1.jpg', 'Mumbai', 'Mangalore', '2019-07-18 16:50:00', '2019-07-18 18:50:00', 9500),
(77, 'Mumbai-Mangalore', 'flight1.jpg', 'Mumbai', 'Mangalore', '2019-08-13 18:30:00', '2019-08-13 20:30:00', 9500),
(78, 'Mumbai-Mangalore', 'flight1.jpg', 'Mumbai', 'Mangalore', '2019-09-05 20:15:00', '2019-09-05 22:15:00', 9500),
(79, 'Mumbai-Mangalore', 'flight1.jpg', 'Mumbai', 'Mangalore', '2019-10-02 10:15:00', '2019-10-02 12:15:00', 9500),
(80, 'Mumbai-Bhuj', 'flight1.jpg', 'Mumbai', 'Bhuj', '2019-02-05 10:50:00', '2019-02-05 12:50:00', 4689),
(81, 'Mumbai-Bhuj', 'flight1.jpg', 'Mumbai', 'Bhuj', '2019-03-13 07:15:00', '2019-03-13 09:15:00', 4689),
(82, 'Mumbai-Bhuj', 'flight1.jpg', 'Mumbai', 'Bhuj', '2019-04-21 08:05:00', '2019-04-21 10:05:00', 4689),
(83, 'Mumbai-Bhuj', 'flight1.jpg', 'Mumbai', 'Bhuj', '2019-05-09 06:30:00', '2019-05-09 08:30:00', 4689),
(84, 'Mumbai-Bhuj', 'flight1.jpg', 'Mumbai', 'Bhuj', '2019-06-06 14:05:00', '2019-06-06 16:05:00', 4689),
(85, 'Mumbai-Bhuj', 'flight1.jpg', 'Mumbai', 'Bhuj', '2019-07-18 16:50:00', '2019-07-18 18:50:00', 4689),
(86, 'Mumbai-Bhuj', 'flight1.jpg', 'Mumbai', 'Bhuj', '2019-08-13 18:30:00', '2019-08-13 20:30:00', 4689),
(87, 'Mumbai-Bhuj', 'flight1.jpg', 'Mumbai', 'Bhuj', '2019-09-05 20:15:00', '2019-09-05 22:15:00', 4689),
(88, 'Mumbai-Bhuj', 'flight1.jpg', 'Mumbai', 'Bhuj', '2019-10-02 10:15:00', '2019-10-02 12:15:00', 4689),
(89, 'Mumbai-Jamnagar', 'flight1.jpg', 'Mumbai', 'Jamnagar', '2019-02-05 10:50:00', '2019-02-05 12:50:00', 9500),
(90, 'Mumbai-Jamnagar', 'flight1.jpg', 'Mumbai', 'Jamnagar', '2019-03-13 07:15:00', '2019-03-13 09:15:00', 9500),
(91, 'Mumbai-Jamnagar', 'flight1.jpg', 'Mumbai', 'Jamnagar', '2019-04-21 08:05:00', '2019-04-21 10:05:00', 9500),
(92, 'Mumbai-Jamnagar', 'flight1.jpg', 'Mumbai', 'Jamnagar', '2019-05-09 06:30:00', '2019-05-09 08:30:00', 9500),
(93, 'Mumbai-Jamnagar', 'flight1.jpg', 'Mumbai', 'Jamnagar', '2019-06-06 14:05:00', '2019-06-06 16:05:00', 9500),
(94, 'Mumbai-Jamnagar', 'flight1.jpg', 'Mumbai', 'Jamnagar', '2019-07-18 16:50:00', '2019-07-18 18:50:00', 9500),
(95, 'Mumbai-Jamnagar', 'flight1.jpg', 'Mumbai', 'Jamnagar', '2019-08-13 18:30:00', '2019-08-13 20:30:00', 9500),
(96, 'Mumbai-Jamnagar', 'flight1.jpg', 'Mumbai', 'Jamnagar', '2019-09-05 20:15:00', '2019-09-05 22:15:00', 9500),
(97, 'Mumbai-Jamnagar', 'flight1.jpg', 'Mumbai', 'Jamnagar', '2019-10-02 10:15:00', '2019-10-02 12:15:00', 9500),
(98, 'Mumbai-Vadodara', 'flight1.jpg', 'Mumbai', 'Vadodara', '2019-02-05 10:50:00', '2019-02-05 12:50:00', 7854),
(99, 'Mumbai-Vadodara', 'flight1.jpg', 'Mumbai', 'Vadodara', '2019-03-13 07:15:00', '2019-03-13 09:15:00', 7854),
(100, 'Mumbai-Vadodara', 'flight1.jpg', 'Mumbai', 'Vadodara', '2019-04-21 08:05:00', '2019-04-21 10:05:00', 7854),
(101, 'Mumbai-Vadodara', 'flight1.jpg', 'Mumbai', 'Vadodara', '2019-05-09 06:30:00', '2019-05-09 08:30:00', 7854),
(102, 'Mumbai-Vadodara', 'flight1.jpg', 'Mumbai', 'Vadodara', '2019-06-06 14:05:00', '2019-06-06 16:05:00', 7854),
(103, 'Mumbai-Vadodara', 'flight1.jpg', 'Mumbai', 'Vadodara', '2019-07-18 16:50:00', '2019-07-18 18:50:00', 7854),
(104, 'Mumbai-Vadodara', 'flight1.jpg', 'Mumbai', 'Vadodara', '2019-08-13 18:30:00', '2019-08-13 20:30:00', 7854),
(105, 'Mumbai-Vadodara', 'flight1.jpg', 'Mumbai', 'Vadodara', '2019-09-05 20:15:00', '2019-09-05 22:15:00', 7854),
(106, 'Mumbai-Vadodara', 'flight1.jpg', 'Mumbai', 'Vadodara', '2019-10-02 10:15:00', '2019-10-02 12:15:00', 7854),
(107, 'Mumbai-Indore', 'flight1.jpg', 'Mumbai', 'Indore', '2019-02-05 10:50:00', '2019-02-05 12:50:00', 6975),
(108, 'Mumbai-Indore', 'flight1.jpg', 'Mumbai', 'Indore', '2019-03-13 07:15:00', '2019-03-13 09:15:00', 6975),
(109, 'Mumbai-Indore', 'flight1.jpg', 'Mumbai', 'Indore', '2019-04-21 08:05:00', '2019-04-21 10:05:00', 6975),
(110, 'Mumbai-Indore', 'flight1.jpg', 'Mumbai', 'Indore', '2019-05-09 06:30:00', '2019-05-09 08:30:00', 6975),
(111, 'Mumbai-Indore', 'flight1.jpg', 'Mumbai', 'Indore', '2019-06-06 14:05:00', '2019-06-06 16:05:00', 6975),
(112, 'Mumbai-Indore', 'flight1.jpg', 'Mumbai', 'Indore', '2019-07-18 16:50:00', '2019-07-18 18:50:00', 6975),
(113, 'Mumbai-Indore', 'flight1.jpg', 'Mumbai', 'Indore', '2019-08-13 18:30:00', '2019-08-13 20:30:00', 6975),
(114, 'Mumbai-Indore', 'flight1.jpg', 'Mumbai', 'Indore', '2019-09-05 20:15:00', '2019-09-05 22:15:00', 6975),
(115, 'Mumbai-Indore', 'flight1.jpg', 'Mumbai', 'Indore', '2019-10-02 10:15:00', '2019-10-02 12:15:00', 6975),
(116, 'Mumbai-Ahmedabad', 'flight1.jpg', 'Mumbai', 'Ahmedabad', '2019-02-05 10:50:00', '2019-02-05 12:50:00', 4257),
(117, 'Mumbai-Ahmedabad', 'flight1.jpg', 'Mumbai', 'Ahmedabad', '2019-03-13 07:15:00', '2019-03-13 09:15:00', 4257),
(118, 'Mumbai-Ahmedabad', 'flight1.jpg', 'Mumbai', 'Ahmedabad', '2019-04-21 08:05:00', '2019-04-21 10:05:00', 4257),
(119, 'Mumbai-Ahmedabad', 'flight1.jpg', 'Mumbai', 'Ahmedabad', '2019-05-09 06:30:00', '2019-05-09 08:30:00', 4257),
(120, 'Mumbai-Ahmedabad', 'flight1.jpg', 'Mumbai', 'Ahmedabad', '2019-06-06 14:05:00', '2019-06-06 16:05:00', 4257),
(121, 'Mumbai-Ahmedabad', 'flight1.jpg', 'Mumbai', 'Ahmedabad', '2019-07-18 16:50:00', '2019-07-18 18:50:00', 4257),
(122, 'Mumbai-Ahmedabad', 'flight1.jpg', 'Mumbai', 'Ahmedabad', '2019-08-13 18:30:00', '2019-08-13 20:30:00', 4257),
(123, 'Mumbai-Ahmedabad', 'flight1.jpg', 'Mumbai', 'Ahmedabad', '2019-09-05 20:15:00', '2019-09-05 22:15:00', 4257),
(124, 'Mumbai-Ahmedabad', 'flight1.jpg', 'Mumbai', 'Ahmedabad', '2019-10-02 10:15:00', '2019-10-02 12:15:00', 4257);

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(11) NOT NULL,
  `hotel_name` varchar(255) NOT NULL,
  `wifi` tinyint(1) NOT NULL DEFAULT 0,
  `pool` tinyint(1) NOT NULL DEFAULT 0,
  `breakfast` tinyint(1) NOT NULL DEFAULT 0,
  `parking` tinyint(1) NOT NULL DEFAULT 0,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `image4` varchar(255) NOT NULL,
  `image5` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `review` text DEFAULT NULL,
  `checkin_time` time NOT NULL,
  `checkout_time` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `hotel_name`, `wifi`, `pool`, `breakfast`, `parking`, `image1`, `image2`, `image3`, `image4`, `image5`, `category`, `city`, `rating`, `price`, `review`, `checkin_time`, `checkout_time`) VALUES
(1, 'Gokul anand', 1, 1, 1, 0, 'hotel.jpg', 'hotel1.jpg', 'hotel2.jpg', 'hotel3.jpg', 'hotel4.jpg', 'Family', 'Goa', '4.5 / 5', 15000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit ducimus accusamus, id voluptates. Dicta commodi vero, quibusdam et est repellendus nulla animi fugiat. Reiciendis, vitae dignissimos amet, excepturi aut eius.', '13:00:00', '11:00:00'),
(2, 'The Leela Palace Chennai', 1, 1, 1, 1, 'hotel6.jpg', 'hotel5.jpg', 'hotel7.jpg', 'hotel8.jpg', 'hotel9.jpg', 'Couple', 'Chennai', '4.8 / 5', 20000, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit ducimus accusamus, id voluptates. Dicta commodi vero, quibusdam et est repellendus nulla animi fugiat. Reiciendis, vitae dignissimos amet, excepturi aut eius.', '13:00:00', '11:00:00'),
(3, 'Raviraj Hotel', 1, 1, 1, 1, 'raviraj_main.jpg', 'raviraj1.jpg', 'raviraj2.jpg', 'raviraj3.jpg', 'raviraj4.jpg', 'Weekends', 'Pune', '4 / 5', 18456, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit ducimus accusamus, id voluptates. Dicta commodi vero, quibusdam et est repellendus nulla animi fugiat. Reiciendis, vitae dignissimos amet, excepturi aut eius.', '13:00:00', '11:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `reviewer_id` int(11) NOT NULL,
  `review_time` datetime DEFAULT NULL,
  `user_name` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `review_text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `reviewer_id`, `review_time`, `user_name`, `subject`, `review_text`) VALUES
(28, 2, '2022-07-12 21:28:49', 'Rush', 'ABBCC', 'ASDFGHJKL'),
(20, 2, '2019-02-14 16:19:52', 'jayu', 'sds', 'sdsd'),
(21, 2, '2019-02-14 16:31:14', 'jayu', 'assa', 'asasas'),
(22, 2, '2019-02-14 23:34:03', 'jayu', 'ass', 'asa'),
(23, 2, '2019-02-14 22:05:03', 'jayu', 'asasasas', 'asasassas'),
(24, 2, '2019-02-14 22:05:10', 'jayu', 'Setting Timezone', 'Set to India Kolkatta\r\n'),
(25, 3, '2019-02-20 07:12:56', 'jayu', 'Testing', 'Just Test Review'),
(26, 3, '2019-02-20 12:48:10', 'jayu', 'Timezone', 'Set TimeZone'),
(27, 3, '2019-02-20 12:57:47', 'viju', 'Another Account', 'Testing For Another Account Login');

-- --------------------------------------------------------

--
-- Table structure for table `tours`
--

CREATE TABLE `tours` (
  `id` int(11) NOT NULL,
  `tour_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `date` datetime NOT NULL,
  `days` int(255) NOT NULL,
  `nights` int(255) NOT NULL,
  `theme` varchar(255) NOT NULL,
  `hotel` tinyint(1) NOT NULL DEFAULT 0,
  `flight` tinyint(1) NOT NULL DEFAULT 0,
  `meal` tinyint(1) DEFAULT 0,
  `transport` tinyint(1) NOT NULL DEFAULT 0,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `rating` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tours`
--

INSERT INTO `tours` (`id`, `tour_name`, `description`, `price`, `date`, `days`, `nights`, `theme`, `hotel`, `flight`, `meal`, `transport`, `image1`, `image2`, `image3`, `rating`) VALUES
(5, 'Goa', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consectetur similique illum at? Quidem fugit beatae non vero vel mollitia consectetur, aliquid quis sunt, aperiam accusantium ipsa sit quisquam blanditiis laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Distinctio laboriosam corporis magnam impedit asperiores iste numquam, maiores dolor odio, commodi error fugit odit eligendi sed adipisci debitis veniam! Corporis, debitis!\r\n', 25000, '2019-02-21 00:00:00', 6, 5, 'seaexplorer', 1, 1, 0, 0, 'goa1.jpg', 'goa2.jpg', 'goa3.jpg', '3.5 / 5'),
(3, 'agra', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Doloribus ad officiis ex deserunt aspernatur eius dolor, tempore quasi, culpa sequi natus repudiandae quod ab voluptate praesentium numquam incidunt distinctio consequatur.\n                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime eaque, deserunt quis fugit. Molestiae saepe laboriosam, deserunt dolores ad, alias impedit quaerat. Illum quo illo reiciendis fugiat, voluptates laboriosam ratione.\n                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam tempora omnis optio doloribus libero! In numquam dolor necessitatibus illo consequatur itaque molestiae repellendus alias inventore, cum earum esse, neque officiis.', 26000, '2019-02-28 00:00:00', 10, 9, 'family', 1, 1, 1, 1, 'agra1.jpg', 'agra2.jpg', 'agra3.jpg', '4.8 / 5'),
(4, 'Kerala', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi necessitatibus unde omnis saepe iusto amet ratione dolor mollitia! Suscipit, odio nam excepturi in doloremque et iste odit dolores itaque consequuntur? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi necessitatibus unde omnis saepe iusto amet ratione dolor mollitia! Suscipit, odio nam excepturi in doloremque et iste odit dolores itaque consequuntur?', 20000, '2019-01-25 00:00:00', 4, 5, 'foresthiker', 1, 1, 1, 1, 'kerla.jpg', 'kerla1.jpg', 'kerla2.jpg', '3.6 / 5');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `phone`, `role`) VALUES
(1, 'test', '$2y$06$UgzdKvaDSNEBg232a1Pl1./nMjTzI0JLr8AP5mg7LP3BN7teRQCVW', 'test@456', 123, 'user'),
(2, 'Rushabh', '$2y$06$xlxSw3fKIusylh1Y6RzV9.OrbC2tNKEBt.EBJsfDK.gRCv./ggqyu', 'rushabh@gmail.com', 2147483647, 'user'),
(3, 'Pawar', '$2y$06$7.dF30puRtvuKwEr.QImIuc2u89TzlqBUAk8xFDYyFGugGkq6v/ma', 'rushabh123@gmail.com', 2147483647, 'admin'),
(4, 'Rush', '$2y$06$yhqGw0RoF2CH55WJ.ALLseZN2RZaFY8wWqJ6v0HbaJVaDGDwq6/R.', 'rush@gmail.com', 1234567890, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flights`
--
ALTER TABLE `flights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `tours`
--
ALTER TABLE `tours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `flights`
--
ALTER TABLE `flights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tours`
--
ALTER TABLE `tours`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
