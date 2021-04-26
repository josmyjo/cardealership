-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2021 at 06:10 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carshow`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branchID` int(11) NOT NULL,
  `branchName` varchar(30) NOT NULL,
  `managerName` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `passwordz` varchar(100) NOT NULL,
  `phno` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branchID`, `branchName`, `managerName`, `email`, `passwordz`, `phno`) VALUES
(10, 'Thodupuzha', 'Sujith', 'sujith@gmail.com', '202cb962ac59075b964b07152d234b70', '8848999786'),
(14, 'pala', 'josmy', 'josmyj19@gmail.com', '202cb962ac59075b964b07152d234b70', '9447211726');

-- --------------------------------------------------------

--
-- Table structure for table `carmodel`
--

CREATE TABLE `carmodel` (
  `modelid` int(20) NOT NULL,
  `modelname` varchar(25) NOT NULL,
  `cartype` varchar(25) NOT NULL,
  `mfyear` int(20) NOT NULL,
  `img` varchar(50) NOT NULL,
  `branchID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `carmodel`
--

INSERT INTO `carmodel` (`modelid`, `modelname`, `cartype`, `mfyear`, `img`, `branchID`) VALUES
(1, 'BMW', 'AUTO', 2017, 'download.jpg', 10),
(2, 'SWIFT', 'AUTO', 2012, 's5.jpg', 12),
(3, 'TOYOTA', 'MANUEL', 2012, 's6.jpg', 10),
(5, 'Wagner', 'AUTO', 2012, 's4.jpg', 10),
(8, 'mahindra', 'manual', 2021, '1618777115.jpg', 10);

-- --------------------------------------------------------

--
-- Table structure for table `car_pics`
--

CREATE TABLE `car_pics` (
  `car_id` int(11) NOT NULL,
  `pics` varchar(50) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car_pics`
--

INSERT INTO `car_pics` (`car_id`, `pics`, `variant_id`, `model_id`) VALUES
(1, '1618777115.jpg', 1, 1),
(2, '1618777222.jpg', 1, 1),
(3, '1618777232.jpg', 1, 1),
(4, '1618777249.jpg', 1, 1),
(5, '1618777259.jpg', 1, 1),
(6, '1618777270.jpg', 7, 2),
(7, '1619180989.jpg', 6, 3),
(8, '1619354628.jpg', 8, 5);

-- --------------------------------------------------------

--
-- Table structure for table `engine`
--

CREATE TABLE `engine` (
  `engine_id` int(10) NOT NULL,
  `engtype` varchar(20) NOT NULL,
  `displacement` varchar(25) NOT NULL,
  `max_power` varchar(20) NOT NULL,
  `max_torque` varchar(20) NOT NULL,
  `no_cylinder` varchar(20) NOT NULL,
  `geartype` varchar(25) NOT NULL,
  `gearbox` varchar(25) NOT NULL,
  `drivetype` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `entertainment`
--

CREATE TABLE `entertainment` (
  `entid` int(20) NOT NULL,
  `dvd_player` varchar(25) NOT NULL,
  `radio_player` varchar(35) NOT NULL,
  `speaker` varchar(35) NOT NULL,
  `usb_auxilaryin` varchar(15) NOT NULL,
  `blutooth` varchar(20) NOT NULL,
  `touchscreen` varchar(15) NOT NULL,
  `model_id` int(11) NOT NULL,
  `varient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `exterior`
--

CREATE TABLE `exterior` (
  `exterior_id` int(10) NOT NULL,
  `foglightfont` varchar(20) NOT NULL,
  `electric_adjustableseat` varchar(20) NOT NULL,
  `foglightnear` varchar(20) NOT NULL,
  `powerantenna` varchar(20) NOT NULL,
  `model_id` int(11) NOT NULL,
  `varient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(30) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `pass`) VALUES
('admin@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `otp_id` int(11) NOT NULL,
  `otp_value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `otp`
--

INSERT INTO `otp` (`otp_id`, `otp_value`) VALUES
(1, 9721),
(2, 1749),
(3, 4797),
(4, 8127),
(5, 6728),
(6, 8840),
(7, 8550),
(8, 2168),
(9, 3025),
(10, 1221),
(11, 1996),
(12, 1502),
(13, 8380),
(14, 3797),
(15, 6706);

-- --------------------------------------------------------

--
-- Table structure for table `safety`
--

CREATE TABLE `safety` (
  `safeid` int(15) NOT NULL,
  `antilock_breakingstm` varchar(20) NOT NULL,
  `brakeassist` varchar(10) NOT NULL,
  `centrellockstm` varchar(10) NOT NULL,
  `airbags` varchar(10) NOT NULL,
  `daynight_rearviewmirror` varchar(10) NOT NULL,
  `passengersidemirror` varchar(10) NOT NULL,
  `xenonheadlamp` varchar(10) NOT NULL,
  `halogenheadlamp` varchar(10) NOT NULL,
  `rearseatbelt` varchar(10) NOT NULL,
  `seatbeltwarning` varchar(10) NOT NULL,
  `doorajarwarning` varchar(10) NOT NULL,
  `sideimpactbeams` varchar(10) NOT NULL,
  `adjustableseat` varchar(10) NOT NULL,
  `vehiclecntrl` varchar(10) NOT NULL,
  `engineimmobilizer` varchar(10) NOT NULL,
  `crashsensor` varchar(10) NOT NULL,
  `electronicbreakdis` varchar(10) NOT NULL,
  `rearcamera` varchar(10) NOT NULL,
  `blindspot` varchar(10) NOT NULL,
  `hillassist` varchar(10) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `aadhar_number` int(11) NOT NULL,
  `pin_code` int(11) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `passwordz` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`user_id`, `first_name`, `last_name`, `dob`, `aadhar_number`, `pin_code`, `phone_number`, `email`, `passwordz`) VALUES
(11, 'Sujith', 'Sabu', '1998-07-09', 2147483647, 685584, 2147483647, 'hisaha1857@asfalio.com', '0e7517141fb53f21ee439b355b5a1d0a'),
(12, 'Ajith', 'Gopi', '1997-08-16', 2147483647, 685584, 2147483647, 'rinocic908@iludir.com', '0e7517141fb53f21ee439b355b5a1d0a'),
(13, 'Sujith', 'Sabu', '2000-01-24', 2147483647, 685584, 2147483647, 'sujithzeye@gmail.com', '0e7517141fb53f21ee439b355b5a1d0a'),
(16, 'josmy', 'joseph', '1996-06-04', 2147483647, 671235, 2147483647, 'josmyj19@gmail.com', '79609550fa292a961b90743116bee675');

-- --------------------------------------------------------

--
-- Table structure for table `variant`
--

CREATE TABLE `variant` (
  `variant_id` int(11) NOT NULL,
  `variant_name` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `engine_number` int(11) NOT NULL,
  `engtype` varchar(30) NOT NULL,
  `displacement` varchar(20) NOT NULL,
  `max_power` varchar(20) NOT NULL,
  `max_torque` varchar(20) NOT NULL,
  `no_cylinder` int(11) NOT NULL,
  `geartype` varchar(20) NOT NULL,
  `gearbox` varchar(20) NOT NULL,
  `drivetype` varchar(20) NOT NULL,
  `model_id` int(11) NOT NULL,
  `pic` varchar(50) NOT NULL,
  `color` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `variant`
--

INSERT INTO `variant` (`variant_id`, `variant_name`, `price`, `engine_number`, `engtype`, `displacement`, `max_power`, `max_torque`, `no_cylinder`, `geartype`, `gearbox`, `drivetype`, `model_id`, `pic`, `color`) VALUES
(1, 'BS5', 20000000, 5784, 'AUTO', 'YES', '15BH', '20T', 4, 'AUTO', 'AUTO', 'AUTO', 1, '1618772558.jpg', 'Black'),
(2, 'BS6', 20000000, 4706, '9503', '3423', '15BH', '20T', 4, 'AUTO', 'AUTO', 'AUTO', 1, '1618773006.jpg', 'Red'),
(3, 'BS7', 20000000, 1301, 'AUTO', 'YES', '15BH', '20T', 4, 'AUTO', 'AUTO', 'AUTO', 1, '1618774130.jpg', 'White'),
(4, 'BS8', 20000000, 7927, 'AUTO', 'YES', '15BH', '20T', 4, 'AUTO', 'AUTO', 'AUTO', 1, '1618774200.jpg', 'Blue'),
(5, 'SD', 20000000, 1504, 'AUTO', 'YES', '15BH', '20T', 4, 'AUTO', 'AUTO', 'AUTO', 1, '1619179522.jpg', 'Black'),
(6, 's5', 20000000, 9852, 'AUTO', 'YES', '15BH', '20T', 4, 'AUTO', 'AUTO', 'AUTO', 3, '1619180886.jpg', 'Black'),
(7, 'asd', 20000000, 4582, 'AUTO', 'YES', '15BH', '20T', 4, 'AUTO', 'AUTO', 'AUTO', 2, '1619182624.jpg', 'Black'),
(8, 'Alto 800 black', 780000, 4275, '7593', 'F8D Petrol ', '47.3bhp', '69Nm', 4, 'manual', 'manuel', 'FWD', 5, '1619354461.jpg', 'black');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branchID`);

--
-- Indexes for table `carmodel`
--
ALTER TABLE `carmodel`
  ADD PRIMARY KEY (`modelid`);

--
-- Indexes for table `car_pics`
--
ALTER TABLE `car_pics`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `engine`
--
ALTER TABLE `engine`
  ADD PRIMARY KEY (`engine_id`);

--
-- Indexes for table `entertainment`
--
ALTER TABLE `entertainment`
  ADD PRIMARY KEY (`entid`);

--
-- Indexes for table `exterior`
--
ALTER TABLE `exterior`
  ADD PRIMARY KEY (`exterior_id`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`otp_id`);

--
-- Indexes for table `safety`
--
ALTER TABLE `safety`
  ADD PRIMARY KEY (`safeid`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `variant`
--
ALTER TABLE `variant`
  ADD PRIMARY KEY (`variant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branchID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `carmodel`
--
ALTER TABLE `carmodel`
  MODIFY `modelid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `car_pics`
--
ALTER TABLE `car_pics`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `engine`
--
ALTER TABLE `engine`
  MODIFY `engine_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entertainment`
--
ALTER TABLE `entertainment`
  MODIFY `entid` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exterior`
--
ALTER TABLE `exterior`
  MODIFY `exterior_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `otp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `safety`
--
ALTER TABLE `safety`
  MODIFY `safeid` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `variant`
--
ALTER TABLE `variant`
  MODIFY `variant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
