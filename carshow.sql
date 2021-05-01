-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2021 at 04:30 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

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
-- Table structure for table `capability`
--

CREATE TABLE `capability` (
  `cid` int(11) NOT NULL,
  `groundcl` varchar(20) NOT NULL,
  `approach` varchar(20) NOT NULL,
  `depature` varchar(20) NOT NULL,
  `rampover` varchar(20) NOT NULL,
  `water` varchar(20) NOT NULL,
  `varient_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `capability`
--

INSERT INTO `capability` (`cid`, `groundcl`, `approach`, `depature`, `rampover`, `water`, `varient_id`, `model_id`) VALUES
(5, '234', '23.3', '40deg', '40.6', '567', 2, 1),
(6, 's', 's', 's', 's', 's', 3, 1),
(7, 'n', 'n', 'n', 'n', 'n', 4, 1),
(8, 'sss', 's', 's', 's', 's', 1, 1),
(9, 's', 's', 's', 's', 's', 1, 1);

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
-- Table structure for table `convenience`
--

CREATE TABLE `convenience` (
  `conid` int(11) NOT NULL,
  `powerst` varchar(10) NOT NULL,
  `pwf` varchar(10) NOT NULL,
  `aircondition` varchar(10) NOT NULL,
  `heater` varchar(10) NOT NULL,
  `adjustablesteer` varchar(10) NOT NULL,
  `airquality` varchar(10) NOT NULL,
  `remoteclimate` varchar(10) NOT NULL,
  `lowfuel` varchar(10) NOT NULL,
  `trunk` varchar(10) NOT NULL,
  `remote` varchar(10) NOT NULL,
  `vanity` varchar(10) NOT NULL,
  `cruise` varchar(10) NOT NULL,
  `seatlumber` varchar(10) NOT NULL,
  `pwr` varchar(10) DEFAULT NULL,
  `model_id` int(11) NOT NULL,
  `varient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `convenience`
--

INSERT INTO `convenience` (`conid`, `powerst`, `pwf`, `aircondition`, `heater`, `adjustablesteer`, `airquality`, `remoteclimate`, `lowfuel`, `trunk`, `remote`, `vanity`, `cruise`, `seatlumber`, `pwr`, `model_id`, `varient_id`) VALUES
(1, 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'yes', 'no', 0, 0),
(2, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 0, 0),
(3, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dimensions`
--

CREATE TABLE `dimensions` (
  `dimension_id` int(11) NOT NULL,
  `length` varchar(20) NOT NULL,
  `width` varchar(20) NOT NULL,
  `height` varchar(20) NOT NULL,
  `wheelbase` varchar(20) NOT NULL,
  `fronttrack` varchar(20) NOT NULL,
  `reartrack` varchar(20) NOT NULL,
  `seatingcapacity` varchar(20) NOT NULL,
  `model_id` int(11) NOT NULL,
  `varient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dimensions`
--

INSERT INTO `dimensions` (`dimension_id`, `length`, `width`, `height`, `wheelbase`, `fronttrack`, `reartrack`, `seatingcapacity`, `model_id`, `varient_id`) VALUES
(5, '3987', '1820', '2345', '2300', '1520', '1400', '5', 0, 0),
(6, '3987', '1820', '3000', '2300', '3412', '1390', '5', 0, 0),
(7, 's', 's', 's', 's', 's', 's', 's', 0, 0),
(8, 's', 's', 's', 's', 's', 's', 's', 1, 1);

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
-- Table structure for table `interior`
--

CREATE TABLE `interior` (
  `intid` int(11) NOT NULL,
  `tachometer` varchar(10) NOT NULL,
  `electronic` varchar(10) NOT NULL,
  `leather` varchar(10) NOT NULL,
  `digitalclock` varchar(10) NOT NULL,
  `digitalodometer` varchar(10) NOT NULL,
  `digitallighter` varchar(10) NOT NULL,
  `heightadjustable` varchar(10) NOT NULL,
  `ventilated` varchar(10) NOT NULL,
  `model_id` int(11) NOT NULL,
  `varient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `interior`
--

INSERT INTO `interior` (`intid`, `tachometer`, `electronic`, `leather`, `digitalclock`, `digitalodometer`, `digitallighter`, `heightadjustable`, `ventilated`, `model_id`, `varient_id`) VALUES
(1, 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 0, 0),
(2, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 0, 0),
(3, 'no', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 0, 0);

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
-- Table structure for table `suspension`
--

CREATE TABLE `suspension` (
  `suid` int(11) NOT NULL,
  `front` varchar(80) NOT NULL,
  `rear` varchar(80) NOT NULL,
  `brake` varchar(80) NOT NULL,
  `frontb` varchar(30) NOT NULL,
  `rearb` varchar(30) NOT NULL,
  `tyres` varchar(60) NOT NULL,
  `steert` varchar(25) NOT NULL,
  `steerg` varchar(25) NOT NULL,
  `acceleration` varchar(20) NOT NULL,
  `model_id` int(11) NOT NULL,
  `varient_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suspension`
--

INSERT INTO `suspension` (`suid`, `front`, `rear`, `brake`, `frontb`, `rearb`, `tyres`, `steert`, `steerg`, `acceleration`, `model_id`, `varient_id`) VALUES
(1, 'jgjh', 'hjgjk', 'uguigu', '303disc', 'disc', 'terraian', 'disc', 'disc', '', 0, 0),
(2, 'jgjh', 'hjgjk', 'uguigu', '303disc', 'disc', 'terraian', 'disc', 'disc', '23.3', 0, 0),
(3, 'ss', 's', 's', 's', 's', 's', 's', 's', 's', 0, 0),
(4, 'ss', 's', 's', 's', 's', 's', 's', 's', 's', 1, 1);

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
(11, 'Sujith', 'Sabu', '1998-07-09', 2147483647, 685584, 2147483647, 'rinocic908@iludir.com', '202cb962ac59075b964b07152d234b70'),
(12, 'Ajith', 'Gopi', '1997-08-16', 2147483647, 685584, 2147483647, 'rinocic908@iludir.com', '202cb962ac59075b964b07152d234b70'),
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
-- Indexes for table `capability`
--
ALTER TABLE `capability`
  ADD PRIMARY KEY (`cid`);

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
-- Indexes for table `convenience`
--
ALTER TABLE `convenience`
  ADD PRIMARY KEY (`conid`);

--
-- Indexes for table `dimensions`
--
ALTER TABLE `dimensions`
  ADD PRIMARY KEY (`dimension_id`);

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
-- Indexes for table `interior`
--
ALTER TABLE `interior`
  ADD PRIMARY KEY (`intid`);

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
-- Indexes for table `suspension`
--
ALTER TABLE `suspension`
  ADD PRIMARY KEY (`suid`);

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
-- AUTO_INCREMENT for table `capability`
--
ALTER TABLE `capability`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
-- AUTO_INCREMENT for table `convenience`
--
ALTER TABLE `convenience`
  MODIFY `conid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dimensions`
--
ALTER TABLE `dimensions`
  MODIFY `dimension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- AUTO_INCREMENT for table `interior`
--
ALTER TABLE `interior`
  MODIFY `intid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `otp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `safety`
--
ALTER TABLE `safety`
  MODIFY `safeid` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suspension`
--
ALTER TABLE `suspension`
  MODIFY `suid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
