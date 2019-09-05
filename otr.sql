-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2017 at 07:42 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booklist`
--
CREATE DATABASE IF NOT EXISTS `booklist` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `booklist`;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) NOT NULL,
  `Name` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Author` varchar(65) CHARACTER SET latin1 NOT NULL,
  `Edition` varchar(8) NOT NULL,
  `Price` int(14) NOT NULL,
  `Picture` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `Name`, `Author`, `Edition`, `Price`, `Picture`) VALUES
(1, 'Database System Concepts', 'Abraham,Henry & Sudarshan', '6th', 210, 'DBSC.jpg'),
(2, 'Assembly Language Programming', 'Ytha Yu & Charls Marut', '1st', 160, 'ALP.jpg'),
(3, 'Data Communacations and Networking', 'Behrouza Forouzan', '4th', 260, 'data.jpeg'),
(4, 'Compilers  Principles and Tools', 'Alfred V.Aho, Sethi & Ullman', '1st', 180, 'compiler.jpg'),
(5, 'Computer Architecture and Organizations', 'John P. Hayes', '3rd', 150, 'CAO.jpg'),
(6, 'The Theory of Everything', 'Stephen Hawking', '1st', 30, 'ttoe.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `username`, `password`) VALUES
(2, 'TuShAr', '130109');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;--
-- Database: `ccse`
--
CREATE DATABASE IF NOT EXISTS `ccse` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ccse`;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` int(100) NOT NULL,
  `fname` char(100) NOT NULL,
  `mname` char(100) NOT NULL,
  `lname` char(100) NOT NULL,
  `bday` varchar(100) NOT NULL,
  `age` int(100) NOT NULL,
  `gender` char(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `status` char(100) NOT NULL,
  `contact` int(100) NOT NULL,
  `posid` varchar(100) NOT NULL,
  `date_added` date NOT NULL,
  `added_by` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `fname`, `mname`, `lname`, `bday`, `age`, `gender`, `address`, `status`, `contact`, `posid`, `date_added`, `added_by`) VALUES
(0, 'fgbnfg', 'gfbgf', 'gfbgfb', 'March 3,1962', 676, 'Female', 'fghngg', ' Married', 4565654, 'DR-2', '2013-06-15', 'Lester'),
(3433, 'grggerg', 'egergreg', 'rrgreger', 'March 3,1962', 23, 'Male', 'werww', ' Married', 2147483647, 'FC-3', '2013-06-15', 'Lester'),
(4545, 'sdfsd', 'sdgsdg', 'sgs', 'Febuary 3,1962', 5, 'Male', 'dfgfg', ' Married', 546456456, 'DR-2', '2013-06-15', 'Lester'),
(897562, 'masangala', 'johanna', 'masangala', 'Febuary 17,1968', 60, 'Male', '50 mumias', ' Married', 701115689, 'PR-4', '2013-06-16', 'shiundu'),
(2400123, 'Princi', 'Hardcore', 'Nocasa', 'January 2,1985', 22, 'Male', 'Lingsat', ' Single', 2147483647, 'DR-2', '2008-11-15', 'Princi'),
(2600847, 'Rod Emmanuel', 'Perez', 'Abulencia', 'October 24,1989', 19, 'Male', 'Brgy 4 SFC', ' Single', 915123456, 'PE-5', '2008-12-13', 'Princi'),
(2600874, 'Lester', 'Quiza', 'Lubiano', 'April 7,1989', 19, 'Male', 'Dalumpinas', ' Single', 2147483647, 'AD-1', '2008-11-15', 'Princi'),
(2604256, 'Ronel Joy', 'Velarmino', 'Fernandez', 'August 15,1989', 19, 'Male', 'Bauang', ' Single', 920123456, 'PR-4', '2008-12-13', 'Princi'),
(7895623, 'judy', 'shirika', 'mammy', 'April 6,1990', 22, 'Female', '50 mmust', ' Married', 707536811, 'PE-5', '2013-06-16', 'shiundu'),
(27272478, 'shiundu', 'omondi', 'jonathan', 'October 10,1989', 23, 'Male', '3240 Eldoret', ' Single', 717002320, 'AD-1', '2013-06-17', 'shiundu'),
(27272479, 'ran', 'sirika', 'jona', 'Febuary 4,1989', 20, 'Male', '3240 eld', ' Single', 717002320, 'PR-4', '2013-06-16', 'shiundu'),
(27274589, 'ROSE', 'LILIAN', 'MASANGALA', 'June 6,1968', 50, 'Female', '50 mumias', ' Married', 720100064, 'PR-4', '2013-06-16', 'shiundu'),
(456855621, 'mark', 'john', 'domo', 'Febuary 11,1989', 89, 'Male', '123 eldy', ' Married', 722285720, 'PE-5', '2013-06-16', 'shiundu');

-- --------------------------------------------------------

--
-- Table structure for table `ldays`
--

CREATE TABLE `ldays` (
  `id` mediumint(10) NOT NULL,
  `posid` varchar(10) NOT NULL,
  `adays` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ldays`
--

INSERT INTO `ldays` (`id`, `posid`, `adays`) VALUES
(1, 'PR-4', 7),
(2, 'PE-5', 15);

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `leaveid` int(100) NOT NULL,
  `eid` int(100) DEFAULT NULL,
  `fdate` date DEFAULT NULL,
  `leavetype` char(100) DEFAULT NULL,
  `edate` date DEFAULT NULL,
  `endate` date DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  `recommending` char(100) DEFAULT 'pending',
  `deanstatus` char(100) NOT NULL DEFAULT 'pending',
  `directorstatus` char(100) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`leaveid`, `eid`, `fdate`, `leavetype`, `edate`, `endate`, `reason`, `recommending`, `deanstatus`, `directorstatus`) VALUES
(1, 2604256, '2009-02-11', 'day/s vacation leave with pay', '2009-02-10', '2009-02-17', 'sorry i will have my leave', 'Approved', 'Approval', 'Approved'),
(2, 2600847, '2013-06-15', 'day/s sick without pay', '2009-02-14', '2009-02-14', 'revenue', 'pending', 'Approval', 'pending'),
(3, 27274589, '2013-06-17', 'birthday leave with pay', '2013-06-17', '0000-00-00', 'pliz i humbly ask for leave from \r\nthe specified', 'pending', 'Approval', 'pending'),
(4, 27274589, '2013-06-17', 'birthday leave with pay', '2013-06-17', '0000-00-00', 'pliz i humbly ask for leave from \r\nthe specified', 'pending', 'Approval', 'pending'),
(5, 456855621, '2013-06-17', 'day/s emergency leave with pay', '2013-02-17', '2013-03-07', 'please i need leave', 'pending', 'Approval', 'pending'),
(6, 27272479, '2013-06-17', 'day/s emergency leave with pay', '2013-03-19', '2013-06-30', 'i have to attend for my nephew burrial', 'Approved', 'Approval', 'Approved'),
(7, 897562, '2013-06-17', 'day/s vacation leave without pay', '2013-06-17', '2013-07-19', 'vacation', 'Approved', 'Approval', 'Approved'),
(8, 2600847, '2013-07-26', 'day/s sick leave with pay', '2013-07-26', '2013-07-30', 'sick leave', 'Approved', 'Disapproval', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `posid` varchar(100) NOT NULL,
  `position` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`posid`, `position`) VALUES
('AD-1', 'Administrator'),
('DR-2', 'Director'),
('PE-5', 'Permanent'),
('PR-4', 'Provisionary');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(3) NOT NULL,
  `eid` int(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` char(40) NOT NULL,
  `posid` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `eid`, `fname`, `lname`, `username`, `password`, `posid`) VALUES
(1, 2600874, 'shiundu', 'jonathan', 'admin', '1234', 'AD-1'),
(8, 2600123, 'Nyongesa', 'John', 'director', '235acfdf1375f5efd80203aca782a2f5e0f135ab', 'DR-2'),
(7, 2600847, 'Purity', 'Joan', 'manager', '5cee1c23e1604e9ae4f2c0e93bbb4c6eb72b5f2c', 'PE-5'),
(0, 27272479, 'man', 'yhj', 'nmbg', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'FC-3'),
(0, 27272478, 'head of section', 'jonathan', 'shiundu', '360d20736eefda7d81e77f019b24dd474d12ea78', 'DR-2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `ldays`
--
ALTER TABLE `ldays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posid` (`posid`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`leaveid`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`posid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ldays`
--
ALTER TABLE `ldays`
  MODIFY `id` mediumint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `leaveid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;--
-- Database: `otr`
--
CREATE DATABASE IF NOT EXISTS `otr` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `otr`;

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `balance_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`balance_id`, `id`, `balance`) VALUES
(1, 25, 1100);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `book_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `starts` varchar(128) NOT NULL,
  `stops` varchar(20) NOT NULL,
  `seat_num` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `fare` int(11) NOT NULL,
  `booking_date` date NOT NULL,
  `booking_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`book_id`, `id`, `vehicle_id`, `starts`, `stops`, `seat_num`, `date`, `time`, `fare`, `booking_date`, `booking_time`) VALUES
(1, 25, 3, 'pabna', 'dhaka', '20', '2017-07-20', '09:00:00', 400, '2017-07-17', '14:20:00'),
(2, 25, 3, 'pabna', 'dhaka', '21', '2017-07-21', '12:00:00', 800, '2017-07-18', '01:06:00'),
(3, 35, 3, 'pabna', 'dhaka', '21', '2017-07-21', '12:00:00', 800, '2017-07-18', '01:06:00');

-- --------------------------------------------------------

--
-- Table structure for table `news_offer`
--

CREATE TABLE `news_offer` (
  `news_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `title` varchar(50) NOT NULL,
  `details` varchar(1000) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_offer`
--

INSERT INTO `news_offer` (`news_id`, `date`, `title`, `details`, `type`) VALUES
(2, '2017-07-14', 'Whats this', 'Won''t I???SELECT statement is used to select data from one or more tables While using this site, you agree to have read and accepted I???SELECT statement is used to select data from one or more tables While using this site, you agree to have read and accep our terms of use', 'news'),
(3, '2017-07-06', 'Check it', 'A news ticker is a primarily horizontal, text-based display either in the form of a graphic that ... News networks commonly use a setup in which news headlines are scrolled across the bottom half ... The ticker can be set to reappear, stay on screen, or be put into a retractable mode (where a small tab is left visible on-screen)', 'news'),
(4, '2017-07-10', '10 Beautiful Website', 'Everyone has favorite colors they tend to gravitate towards when it comes to their work or otherwise, but the skilled designer understands the importance of evaluating a color scheme based on the meanings of the color in relation to the product/service being promoted.', 'news'),
(5, '2017-07-17', 'New news!!!', 'Firefox can’t find the server at stackoverflow.com.      Check the address for typing errors such as ww.example.com instead of www.example.com     If you are unable to load any pages, check your computer’s network connection.     If your computer or network is protected by a firewall or proxy, make sure that Firefox is permitted to access the Web.', 'non-promot');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `route_id` int(11) NOT NULL,
  `route_name` varchar(20) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `departure_time` time NOT NULL,
  `starts` varchar(20) NOT NULL,
  `stops` varchar(20) NOT NULL,
  `fare` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`route_id`, `route_name`, `vehicle_id`, `departure_time`, `starts`, `stops`, `fare`) VALUES
(1, 'pabna-chapai', 1, '09:00:00', 'pabna', 'chapai', 250),
(2, 'pabna-dhaka', 3, '12:00:00', 'pabna', 'dhaka', 800),
(3, 'pabna-kustia', 2, '07:00:00', 'pabna', 'kustia', 80),
(4, 'pabna-raj', 1, '09:00:00', 'pabna', 'raj', 120),
(5, 'pabna-satkhira', 2, '08:30:00', 'pabna', 'satkhira', 350),
(6, 'raj-chapai', 1, '12:00:00', 'raj', 'chapai', 130),
(7, 'pabna-dhaka', 4, '09:00:00', 'pabna', 'dhaka', 400),
(8, 'pabna-dhaka', 5, '15:00:00', 'pabna', 'dhaka', 380),
(9, 'pabna-dhaka', 6, '18:00:00', 'pabna', 'dhaka', 400),
(10, 'pabna-raj', 7, '12:10:00', 'pabna', 'raj', 250),
(11, 'pabna-khulna', 8, '03:00:00', 'pabna', 'khulna', 360),
(12, 'kustia-pabna', 10, '16:00:00', 'kustia', 'pabna', 80),
(13, 'pabna-dhaka', 9, '23:00:00', 'pabna', 'dhaka', 850);

-- --------------------------------------------------------

--
-- Table structure for table `seat_plan_for_v`
--

CREATE TABLE `seat_plan_for_v` (
  `seat_plan_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `num_rows` int(11) NOT NULL,
  `seat_per_row` int(11) NOT NULL,
  `gap_after` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seat_plan_for_v`
--

INSERT INTO `seat_plan_for_v` (`seat_plan_id`, `vehicle_id`, `num_rows`, `seat_per_row`, `gap_after`) VALUES
(1, 3, 12, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `contact_num` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `username`, `email`, `contact_num`, `password`, `user_type`) VALUES
(14, 'i', 'am', 'tushar', 'iamtushar@gmail.com', '333', '$2y$10$8rRW4ogiZTJBGpnT5.BqteMus3Iqx8gy/BbbXS4kpCz34gtxMTAEG', 'user'),
(25, 'Asif', 'Ishtiaq', 'ishtiaqasif', 'ishtiaqasif03@gmail.com', '8801711380458', '$2y$10$3vt8x8QrSFY7JZg7Sx3pkewjd0YNxtwvFgDyTuVNlSU4qBbZkIK4e', 'user'),
(26, 'Rashadul', 'Islam', 'rashad', 'rashadpust@gmail.com', '8801714999951', '$2y$10$Q0mJDnxstjdIktab6iChkOux8ga6vWFyX39NJ/hkFOszeu.fKl5s2', 'user'),
(27, 'Arifur', 'Rahaman', 'arif', 'arif130615@gmail.com', '8801735091470', '$2y$10$GxpWWuz3WJ34yyM05/QDd.ccTJEzbZZeoa4216IoD0/2U7gRrLdMu', 'user'),
(30, 'new', 'user', 'newuser', 'newuser@d.com', '88123', '$2y$10$Y37mh2iY/lglkcW7a2kMnuIN1iYoMNlCnN4IOjX617jGBY.EE5gXS', 'user'),
(31, 'new', 'useragain', 'newuser2', 'newuser2@d.com', '88789', '$2y$10$k0DL6dsoj70XNLE8YYNXYuedCY1v61wnc65vg/YW2xk7hiqHKOyKa', 'user'),
(32, 'new', 'useragain', 'newuser3', 'newuser3@d.com', '88147', '$2y$10$q8Knz2LX1Zdtq24OYEoB.OrAWBIo93RV/5slopkMegg3dbZu5hztu', 'user'),
(33, 'new', 'useragainagain', 'newuser4', 'newuser4@d.com', '88555', '$2y$10$RE.QOiKT7TRTCLfVQ.PNH.mDd0ync/P6qAaLpeX.xSs6o8IPF7dHm', 'user'),
(34, 'new', 'Ishtiaq', 'newis', 'newishr@d.com', '88556', '$2y$10$vg0UGzbaMWgmwGKMFGWZc.2OMlSgYk.vdpzjsfJmtUQW8LXsZzYla', 'user'),
(35, 'here', 'i', 'am', 'hereiam@h.com', '881122', '$2y$10$h62oKLDF64scDK4aDQUPceLdJS3zW9g.E2xVW.d.Mhe8.kx32bDQq', 'user'),
(37, 'Asif', 'Ishtiaq', 'adminishtiaqasif', 'adminishtiaqasif@gmail.com', '8812345678', '$2y$10$X4BI9huaza1jMlZ2fHa0S.1EZrq8d.rYNMcS1vpJs1a9DX091dEcO', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicle_id` int(11) NOT NULL,
  `vehicle_name` varchar(20) NOT NULL,
  `vehicle_type` varchar(20) NOT NULL,
  `total_seat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `vehicle_name`, `vehicle_type`, `total_seat`) VALUES
(1, 'b1', 'normal', 46),
(2, 'b2', 'normal', 45),
(3, 'b3', 'AC', 36);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`balance_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `news_offer`
--
ALTER TABLE `news_offer`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `route`
--
ALTER TABLE `route`
  ADD PRIMARY KEY (`route_id`);

--
-- Indexes for table `seat_plan_for_v`
--
ALTER TABLE `seat_plan_for_v`
  ADD PRIMARY KEY (`seat_plan_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `balance`
--
ALTER TABLE `balance`
  MODIFY `balance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `news_offer`
--
ALTER TABLE `news_offer`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
  MODIFY `route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `seat_plan_for_v`
--
ALTER TABLE `seat_plan_for_v`
  MODIFY `seat_plan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"otr","table":"seat_plan_for_v"},{"db":"otr","table":"booking"},{"db":"otr","table":"vehicle"},{"db":"otr","table":"user"},{"db":"otr","table":"Seat_plan_for_v"},{"db":"otr","table":"balance"},{"db":"otr","table":"route"},{"db":"otr","table":"admins"},{"db":"otr","table":"news_offer"},{"db":"ccse","table":"users"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

--
-- Dumping data for table `pma__relation`
--

INSERT INTO `pma__relation` (`master_db`, `master_table`, `master_field`, `foreign_db`, `foreign_table`, `foreign_field`) VALUES
('otr', 'Seat_plan_for_v', 'vehicle_id', 'otr', 'vehicle', 'vehicle_id'),
('otr', 'balance', 'id', 'otr', 'user', 'id'),
('otr', 'booking', 'id', 'otr', 'user', 'id'),
('otr', 'booking', 'vehicle_id', 'otr', 'vehicle', 'vehicle_id'),
('otr', 'route', 'vehicle_id', 'otr', 'vehicle', 'vehicle_id'),
('otr', 'seat_plan_for_v', 'vehicle_id', 'otr', 'vehicle', 'vehicle_id');

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'otr', 'route', '[]', '2017-07-15 15:31:43');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-07-18 12:03:26', '{"collation_connection":"utf8mb4_unicode_ci","ThemeDefault":"pmahomme","fontsize":"72%"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
