-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2017 at 12:39 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `otr`
--

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE IF NOT EXISTS `balance` (
`balance_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`balance_id`, `id`, `balance`) VALUES
(1, 25, 760),
(3, 41, 0);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
`book_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `route_name` varchar(20) NOT NULL,
  `starts` varchar(128) NOT NULL,
  `stops` varchar(20) NOT NULL,
  `seat_num` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `fare` int(11) NOT NULL,
  `booking_date` date NOT NULL,
  `booking_time` time NOT NULL,
  `starting_p` int(11) NOT NULL,
  `stopping_p` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`book_id`, `id`, `vehicle_id`, `route_name`, `starts`, `stops`, `seat_num`, `date`, `time`, `fare`, `booking_date`, `booking_time`, `starting_p`, `stopping_p`) VALUES
(1, 25, 3, 'pabna-dhaka', 'pabna', 'dhaka', '20', '2017-07-24', '09:00:00', 400, '2017-07-17', '14:20:00', 0, 4),
(3, 35, 3, 'pabna-tangail', 'pabna', 'tangail', '21', '2017-07-24', '09:00:00', 800, '2017-07-18', '01:06:00', 0, 2),
(4, 25, 2, 'pabna-dhaka', 'pabna', 'tangail', '10', '2017-07-22', '12:00:00', 260, '2017-07-22', '00:54:02', 0, 2),
(5, 25, 2, 'pabna-dhaka', 'pabna', 'gazipur', '39', '2017-07-23', '12:00:00', 320, '2017-07-22', '01:00:33', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `news_offer`
--

CREATE TABLE IF NOT EXISTS `news_offer` (
`news_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `title` varchar(50) NOT NULL,
  `details` varchar(1000) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

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
-- Table structure for table `pabna-dhaka`
--

CREATE TABLE IF NOT EXISTS `pabna-dhaka` (
  `precedence` int(11) NOT NULL,
  `stopage` varchar(20) NOT NULL,
  `time_to_travel` time NOT NULL,
  `fare` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pabna-dhaka`
--

INSERT INTO `pabna-dhaka` (`precedence`, `stopage`, `time_to_travel`, `fare`) VALUES
(0, 'pabna', '00:00:00', 0),
(1, 'siraj', '01:00:00', 80),
(2, 'tangail', '03:00:00', 260),
(3, 'gazipur', '04:10:00', 320),
(4, 'dhaka', '05:30:00', 400);

-- --------------------------------------------------------

--
-- Table structure for table `recharge`
--

CREATE TABLE IF NOT EXISTS `recharge` (
`recharge_id` int(11) NOT NULL,
  `code` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `recharge`
--

INSERT INTO `recharge` (`recharge_id`, `code`, `amount`) VALUES
(1, '4579213054', 500),
(2, '7845111002', 500),
(3, '4573333054', 500),
(4, '7100111102', 500);

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE IF NOT EXISTS `route` (
`route_id` int(11) NOT NULL,
  `route_name` varchar(20) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `departure_time` time NOT NULL,
  `starting_p` int(20) NOT NULL,
  `stoping_p` int(20) NOT NULL,
  `num_stopages` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`route_id`, `route_name`, `vehicle_id`, `departure_time`, `starting_p`, `stoping_p`, `num_stopages`) VALUES
(2, 'pabna-dhaka', 3, '09:00:00', 0, 0, 5),
(14, 'pabna-dhaka', 2, '12:00:00', 0, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `seat_plan_for_v`
--

CREATE TABLE IF NOT EXISTS `seat_plan_for_v` (
`seat_plan_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `num_rows` int(11) NOT NULL,
  `seat_per_row` int(11) NOT NULL,
  `gap_after` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `seat_plan_for_v`
--

INSERT INTO `seat_plan_for_v` (`seat_plan_id`, `vehicle_id`, `num_rows`, `seat_per_row`, `gap_after`) VALUES
(1, 3, 12, 3, 1),
(2, 2, 10, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `first_name` varchar(128) NOT NULL,
  `last_name` varchar(128) NOT NULL,
  `username` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `contact_num` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

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
(37, 'Asif', 'Ishtiaq', 'adminishtiaqasif', 'adminishtiaqasif@gmail.com', '8812345678', '$2y$10$X4BI9huaza1jMlZ2fHa0S.1EZrq8d.rYNMcS1vpJs1a9DX091dEcO', 'admin'),
(41, 'sss', 'sss', 'sss', 'sss@ss.com', '88444', '$2y$10$l6XnIFG91PPyvJP2F8W21eTn7WWp2R/aJubX/V0Vxbj/KhgaXHxny', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE IF NOT EXISTS `vehicle` (
`vehicle_id` int(11) NOT NULL,
  `vehicle_name` varchar(20) NOT NULL,
  `vehicle_type` varchar(20) NOT NULL,
  `total_seat` int(11) NOT NULL,
  `fare_handler` float NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `vehicle_name`, `vehicle_type`, `total_seat`, `fare_handler`) VALUES
(2, 'b2', 'normal', 45, 1),
(3, 'b3', 'AC', 36, 1.8);

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
-- Indexes for table `pabna-dhaka`
--
ALTER TABLE `pabna-dhaka`
 ADD PRIMARY KEY (`precedence`);

--
-- Indexes for table `recharge`
--
ALTER TABLE `recharge`
 ADD PRIMARY KEY (`recharge_id`);

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
MODIFY `balance_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `news_offer`
--
ALTER TABLE `news_offer`
MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `recharge`
--
ALTER TABLE `recharge`
MODIFY `recharge_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `route`
--
ALTER TABLE `route`
MODIFY `route_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `seat_plan_for_v`
--
ALTER TABLE `seat_plan_for_v`
MODIFY `seat_plan_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
