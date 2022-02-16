-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2022 at 06:13 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bot`
--

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `id` int(11) NOT NULL,
  `queries` varchar(300) NOT NULL,
  `replies` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chatbot`
--

INSERT INTO `chatbot` (`id`, `queries`, `replies`) VALUES
(0, 'hi|hello|hy|hey', 'Hello there! How can I help you? :)'),
(1, 'hi|hello|hey|hy', 'hello there! How can I help you? :)'),
(0, 'what is the today land price|today land price|price trends|land market value', 'http://localhost/pricetrends.php'),
(3, 'what is the today land price|today land price|price trends|land market value', 'http://localhost/pricetrends.php'),
(2, 'purpose of website|what is this website for?|use of this website', 'This website portrays the functions and recent projects done by Bon moderne Builders  '),
(4, 'Login port for employees|login portal|employee login', 'http://localhost:8080/Construction_Website/login.jsp'),
(5, 'where can I apply quotation|quotation form link|contact form|apply for quotation', 'http://localhost:8080/Construction_Website/quotation.php'),
(6, 'thank you|bye|thanks', 'Bye :)');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
