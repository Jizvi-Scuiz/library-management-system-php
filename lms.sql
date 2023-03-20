-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2023 at 04:08 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `login_id` varchar(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `phone` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `city` varchar(20) NOT NULL,
  `active_status` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`login_id`, `password`, `name`, `phone`, `email`, `city`, `active_status`) VALUES
('101', '101', 'Xyzabc', '26555662', 'xyz@abcd.com', 'Ranchi', '1'),
('102', '102', 'root', '1234567897', 'abc@xyz.com', 'Howrah', '1');

-- --------------------------------------------------------

--
-- Table structure for table `booklist`
--

CREATE TABLE `booklist` (
  `book_id` int(5) NOT NULL,
  `ISBN` bigint(13) NOT NULL,
  `sem` int(1) NOT NULL,
  `subject` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `pages` int(4) NOT NULL,
  `description` varchar(50) NOT NULL,
  `pub_year` int(4) NOT NULL,
  `price` int(5) NOT NULL,
  `publisher` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booklist`
--

INSERT INTO `booklist` (`book_id`, `ISBN`, `sem`, `subject`, `name`, `author`, `pages`, `description`, `pub_year`, `price`, `publisher`) VALUES
(2, 252541, 2, 'com', 'DS Algo ', 'Baluja ', 526, 'Bolo Hori', 1987, 456, 'Medium publishers '),
(5, 363636, 3, 'math', 'Calculus', 'Goel', 785, 'From Derivative To Integration', 2014, 784, 'Kothin Publishers'),
(7, 525252, 3, 'math', 'Numerical Analysis', 'Rajib Mall', 500, 'Onko Koro', 2014, 325, 'Sohoj Publishers'),
(8, 784512, 2, 'com', 'let Us C', 'Kaneet Kar', 876, 'Programming Begins', 1987, 456, 'Ray Publishers'),
(9, 1234567891244, 4, 'com', 'Data Science ', 'Sharma   ', 587, 'Learn to get insights form Huge data sets  ', 2014, 857, 'Pearson '),
(11, 1233465, 4, 'com', 'DBMS ', 'Santosh ', 587, 'Data Base Management System ', 2019, 587, 'Sohoj Publishers '),
(12, 23423532, 4, 'com', 'My SQL', 'RK Das', 698, 'No Query With Queries ', 2020, 471, 'Medium Publishers'),
(13, 9191223, 4, 'com', 'Software Engineering', 'Rajib Kaku', 658, 'Bohot hard bohot hard', 2018, 457, 'Kothin Publishers'),
(14, 126787, 4, 'com', 'OOP', 'Andrea Chiarelli', 957, 'Object Oriented Programming', 2016, 654, 'Medium Publishers'),
(15, 252541, 2, 'com', 'DS Algo ', 'Baluja ', 526, 'Bolo Hori ', 1987, 456, 'Medium publishers '),
(16, 432543765, 4, 'com', 'Architecture', 'Mano', 457, 'Circuit Design', 2016, 325, 'Pearson'),
(17, 12121445, 4, 'com', 'Operating Systems', 'G. Nutt', 658, 'A Modern Perspective', 2014, 254, 'Pearson'),
(25, 1234567891244, 3, 'math', 'vector Analysis', 'Ami ', 250, '2 and 3 dimensional vector', 2014, 102, 'Medium Publishers'),
(28, 222222, 3, 'com', 'Compiler Design', 'Mr. Rathore', 456, 'Automata and Compiler Design', 2014, 214, 'Sohoj Publishers'),
(29, 2345678987, 2, 'phy', 'abcdd ', 'abcde ', 123, 'abcd  ', 2014, 123, 'Sohoj Productions '),
(30, 1212121, 5, 'com', 'a', 'a', 3, 'q', 2014, 456, 'Gk Publisher'),
(31, 1212121, 5, 'com', 'e', 'e', 3, 'a', 2014, 123, 'e');

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `student_id` int(5) NOT NULL,
  `phone_no` int(11) NOT NULL,
  `book_isbn` bigint(13) NOT NULL,
  `book_id` int(5) NOT NULL,
  `iDate` date NOT NULL COMMENT 'Issue Date'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`student_id`, `phone_no`, `book_isbn`, `book_id`, `iDate`) VALUES
(23422, 225447855, 363636, 5, '2023-03-15'),
(23422, 225447855, 525252, 7, '2023-03-07'),
(23422, 225447855, 1234567891244, 9, '2023-02-27'),
(1234, 69874521, 1233465, 11, '2022-11-12'),
(1234, 69874521, 23423532, 12, '2022-11-11'),
(4455, 45781236, 432543765, 16, '2022-11-11');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `req_id` int(11) NOT NULL,
  `ISBN` bigint(13) NOT NULL,
  `book_id` int(5) NOT NULL,
  `student_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(5) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `semester` int(1) NOT NULL,
  `subject` varchar(10) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `password`, `name`, `gender`, `semester`, `subject`, `phone`, `email`, `city`) VALUES
(1234, '1234', 'Rohan', 'Male', 4, 'com', 69874521, 'roh@xa.com', 'Howrah'),
(1414, '1414', 'Rohit Sharma', 'Male', 3, 'math', 1234567897, 'xyz@gmail.com', 'Kolkata'),
(4455, '4455', 'Argha', 'Male', 4, 'com', 45781236, 'argha@gmail.com', 'Domjur'),
(4466, '4466', 'xyz', 'Male', 2, 'com', 5656565, 'irutir@xyz.com', 'Kolkata'),
(4554, '4455', 'Virat kohli', 'male', 2, 'com', 1234337897, 'abcd@yoyo.com', 'Bengaluru'),
(23422, '23422', 'Rajesh', 'Male', 3, 'math', 225447855, 'cde@abc.com', 'Kerela');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `booklist`
--
ALTER TABLE `booklist`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`req_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booklist`
--
ALTER TABLE `booklist`
  MODIFY `book_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `req_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
