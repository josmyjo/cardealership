-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2021 at 08:34 AM
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
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `BookingID` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `amount` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `referenceNumber` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`BookingID`, `variant_id`, `order_date`, `amount`, `user_id`, `referenceNumber`) VALUES
(7, 9, '2021-05-17 12:44:43', 2000, 12, '1621268083'),
(8, 10, '2021-05-17 12:46:33', 2000, 12, '1621268193'),
(9, 9, '2021-05-17 12:48:23', 2000, 12, '1621268303'),
(10, 9, '2021-05-17 12:48:33', 2000, 12, '1621268313'),
(11, 9, '2021-05-17 12:48:36', 2000, 12, '1621268316'),
(12, 9, '2021-05-17 12:48:38', 2000, 12, '1621268318'),
(13, 9, '2021-05-17 12:48:39', 2000, 14, '1621268319');

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
(14, 'pala', 'josmy', 'josmyj19@gmail.com', '202cb962ac59075b964b07152d234b70', '9447211726'),
(16, 'kanjirapally', 'joseph', 'joseph@gmail.com', 'd9b1d7db4cd6e70935368a1efb10e377', '9087654321');

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
(10, '165', '41.2', '36deg', '20.2', '700', 9, 9),
(12, '160 mm', '41.2', '40deg', '40.6', '750', 13, 13),
(13, '180mm', '51', '60', '55', '665', 14, 14),
(14, '160 mm', '23.3', '40deg', '40.6', '665', 15, 14),
(15, '160 mm', '41.2', '40deg', '20.2', '700', 16, 15),
(16, '160 mm', '51', '60', '40.6', '750', 17, 16),
(17, '160 mm', '21 seconds', '40deg', '40.6', '700', 18, 17),
(18, '210', '37', '49', '28', '665', 19, 18),
(19, '180mm', '23.3', '36deg', '20.2', '567', 20, 19);

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
(9, 'maruti wagon-r', 'Manual', 2021, 'Wagon-R-front-a.jpg', 10),
(10, 'Maruti Suzuki Ertiga', 'Automatic', 2021, 'Ertiga-vxi-Cng.jpg', 14),
(13, 'Maruti Alto 800', 'Manual', 2020, 'alto800-Vxi.jpg', 10),
(14, 'Maruti S-Presso', 'Automatic', 2021, 's-presso-VXI+.jpg', 10),
(15, ' Suzuki Vitara Brezza', 'Manual', 2020, 'vitara-brezza.jpg', 10),
(16, 'Maruti Suzuki Swift', 'Manual', 2020, 'ZXI-AGS.jpg', 10),
(17, 'Maruti Suzuki Dzire ', 'Manual', 2020, 'dzire-1502361962-prod-var.png', 10),
(18, 'Maruti Jimny', 'Manual', 2021, 'jim5.jpg', 10),
(19, 'Maruti Suzuki Baleno', 'Manual', 2019, 'new-baleno-right.jpg', 10);

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
(9, '1619749942.jpg', 9, 9),
(10, '1620223895.jpg', 9, 9),
(11, '1620223910.jpg', 9, 9),
(12, '1620223982.jpg', 9, 9),
(13, '1620223996.jpg', 9, 9),
(14, '1620224022.jpg', 9, 9),
(15, '1621701806.jpg', 13, 13),
(16, '1621701820.png', 13, 13),
(17, '1621701836.jpg', 13, 13),
(18, '1621701850.jpg', 13, 13),
(19, '1621701895.jpg', 13, 13),
(20, '1621703844.jpg', 14, 14),
(21, '1621703858.jpg', 14, 14),
(22, '1621703876.jpg', 14, 14),
(23, '1621703890.png', 14, 14),
(24, '1621703903.jpg', 14, 14),
(25, '1621703915.jpg', 14, 14),
(26, '1621742254.jpg', 15, 14),
(27, '1621742303.jpg', 15, 14),
(28, '1621742948.jpg', 15, 14),
(29, '1621742963.jpeg', 15, 14),
(30, '1621743958.jpg', 16, 15),
(31, '1621744042.jpg', 16, 15),
(32, '1621744076.jpg', 16, 15),
(33, '1621744098.jpg', 16, 15),
(34, '1621744114.jpg', 16, 15),
(35, '1621744129.jpg', 16, 15),
(36, '1621746008.jpg', 17, 16),
(37, '1621746028.JPG', 17, 16),
(38, '1621746040.jpg', 17, 16),
(39, '1621746052.JPG', 17, 16),
(40, '1621746736.jpg', 18, 17),
(41, '1621746747.jpg', 18, 17),
(42, '1621746757.jpg', 18, 17),
(43, '1621746769.jpeg', 18, 17),
(44, '1621746786.jpg', 18, 17),
(45, '1621749780.jpg', 19, 18),
(46, '1621749793.jpeg', 19, 18),
(47, '1621749805.jpg', 19, 18),
(48, '1621749820.jpg', 19, 18),
(49, '1621749835.jpg', 19, 18),
(50, '1621749851.jpg', 19, 18),
(51, '1621751247.jpg', 20, 19),
(52, '1621751260.jpg', 20, 19),
(53, '1621751275.jpg', 20, 19),
(54, '1621751287.jpg', 20, 19),
(55, '1621751303.jpg', 20, 19);

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
(5, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 9, 9),
(6, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'no', 'no', 'yes', 13, 0),
(7, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 14, 14),
(8, 'yes', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'no', 'no', 'yes', 14, 15),
(9, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 15, 16),
(10, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 16, 17),
(11, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 17, 18),
(12, 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 18, 19),
(13, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 19, 20);

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
  `varient_id` int(11) NOT NULL,
  `weight` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dimensions`
--

INSERT INTO `dimensions` (`dimension_id`, `length`, `width`, `height`, `wheelbase`, `fronttrack`, `reartrack`, `seatingcapacity`, `model_id`, `varient_id`, `weight`) VALUES
(9, '3987', '1820', '3000', '2300', '3412', '1400', '5', 9, 9, '875-905 Kg'),
(11, '3445', '1515', '1475', '2360mm', '1520', '1456', '4', 13, 13, '720kg'),
(12, ' 3565 mm', ' 1520 mm', '1564 mm', ' 2380 mm', '3412', '1456', '5', 14, 14, '764kg'),
(13, '3565', '1520', '1549', '2380', '1520', '1456', '5', 14, 15, '1170'),
(14, ' 3,995 mm', '1,790 mm', '1,640 mm', '328', '1520', '1390', '5', 15, 16, '1240'),
(15, ' 3850 mm', '1515mm', '2345', '2360mm', '2980', '1234', '5', 16, 17, '1170kg'),
(16, ' 3565 mm', ' 1520 mm', '1564 mm', '2360mm', '3412', '1456', '5', 17, 18, '1170'),
(17, '3645', '1645', '1725', '2250', '1395', '1405', '5', 18, 19, '1170kg'),
(18, ' 3565 mm', '1820', '3000', '2300', '1520', '1400', '5', 19, 20, '1170kg');

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

--
-- Dumping data for table `entertainment`
--

INSERT INTO `entertainment` (`entid`, `dvd_player`, `radio_player`, `speaker`, `usb_auxilaryin`, `blutooth`, `touchscreen`, `model_id`, `varient_id`) VALUES
(3, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 9, 9),
(4, 'yes', 'no', 'yes', 'yes', 'yes', 'no', 13, 13),
(5, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 14, 14),
(6, 'yes', 'yes', 'yes', 'yes', 'no', 'no', 14, 15),
(7, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 15, 16),
(8, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 16, 17),
(9, 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 17, 18),
(10, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 18, 19),
(11, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 19, 20);

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
  `varient_id` int(11) NOT NULL,
  `rain` varchar(10) DEFAULT NULL,
  `wheel` varchar(10) DEFAULT NULL,
  `sun` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exterior`
--

INSERT INTO `exterior` (`exterior_id`, `foglightfont`, `electric_adjustableseat`, `foglightnear`, `powerantenna`, `model_id`, `varient_id`, `rain`, `wheel`, `sun`) VALUES
(3, 'yes', 'yes', 'yes', 'yes', 9, 9, 'yes', 'yes', 'yes'),
(4, 'yes', 'yes', 'yes', 'yes', 13, 13, 'yes', 'no', 'no'),
(5, 'no', 'yes', 'yes', 'yes', 14, 14, 'yes', 'yes', 'yes'),
(6, 'yes', 'yes', 'no', 'yes', 14, 15, 'yes', 'yes', 'yes'),
(7, 'yes', 'yes', 'yes', 'yes', 15, 16, 'yes', 'yes', 'yes'),
(8, 'yes', 'yes', 'yes', 'yes', 16, 17, 'yes', 'no', 'yes'),
(9, 'no', 'yes', 'yes', 'yes', 17, 18, 'yes', 'yes', 'yes'),
(10, 'yes', 'yes', 'yes', 'yes', 18, 19, 'yes', 'yes', 'yes'),
(11, 'yes', 'yes', 'no', 'yes', 19, 20, 'yes', 'yes', 'yes');

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
(4, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 9, 9),
(5, 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 13, 13),
(6, 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 14, 14),
(7, 'yes', 'no', 'no', 'yes', 'no', 'yes', 'no', 'yes', 14, 15),
(8, 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 15, 16),
(9, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 16, 17),
(10, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 17, 18),
(11, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 18, 19),
(12, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 19, 20);

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
(6, 2276);

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

--
-- Dumping data for table `safety`
--

INSERT INTO `safety` (`safeid`, `antilock_breakingstm`, `brakeassist`, `centrellockstm`, `airbags`, `daynight_rearviewmirror`, `passengersidemirror`, `xenonheadlamp`, `halogenheadlamp`, `rearseatbelt`, `seatbeltwarning`, `doorajarwarning`, `sideimpactbeams`, `adjustableseat`, `vehiclecntrl`, `engineimmobilizer`, `crashsensor`, `electronicbreakdis`, `rearcamera`, `blindspot`, `hillassist`, `variant_id`, `model_id`) VALUES
(2, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 9, 9),
(3, 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 13, 13),
(4, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 14, 14),
(5, 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'yes', 14, 15),
(6, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 15, 16),
(7, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 16, 17),
(8, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 17, 18),
(9, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 18, 19),
(10, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 19, 20);

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
(5, '20', '21', '23', '20', 'MAnuel', '32', 'Auto', 'Auto', '120', 9, 9),
(6, 'independent Double whish bone front suspesion', 'multilink solid rear axil', 'vaccum assisted', 'Disc', 'Drum', 'terraian', 'Manual', 'Rack & Pinion', '21 seconds', 13, 13),
(7, 'independent Double whish bone front suspesion', 'multilink solid rear axil', 'vaccum assisted', 'Disc', 'Drum', 'terraian', 'Manual', 'Rack & Pinion', '41.2', 14, 14),
(8, 'independent Double whish bone front suspesion', 'multilink solid rear axil', 'vaccum assisted', 'Disc', 'Drum', 'terraian', 'Power', 'Rack & Pinion', '41.2', 14, 15),
(9, 'independent Double whish bone front suspesion', 'multilink solid rear axil', 'vaccum assisted', 'Disc', 'Drum', 'terraian', 'Power', 'Rack & Pinion', '23.3', 15, 16),
(10, 'independent Double whish bone front suspesion', 'multilink solid rear axil', 'vaccum assisted', 'Disc', 'Drum', 'terraian', 'Power', 'Rack & Pinion', '21 seconds', 16, 17),
(11, 'independent Double whish bone front suspesion', 'multilink solid rear axil', 'vaccum assisted', 'Disc', 'Drum', 'terraian', 'Power', 'Rack & Pinion', '41.2', 17, 18),
(12, '3-LINK RIGID AXLE WITH COIL SPRING', '3-LINK RIGID AXLE WITH COIL SPRING', 'LEADING AND TRAILING', 'SOLID DISC', 'DRUM', '15\" ALLOY', 'Power', 'ELECTRONIC POWER STEERING', '51', 18, 19),
(13, 'independent Double whish bone front suspesion', 'multilink solid rear axil', 'vaccum assisted', 'Disc', 'Drum', 'terraian', 'Power', 'Rack & Pinion', '23.3', 19, 20);

-- --------------------------------------------------------

--
-- Table structure for table `testdrive`
--

CREATE TABLE `testdrive` (
  `testID` int(11) NOT NULL,
  `testDate` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `variant_id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `referenceNumber` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testdrive`
--

INSERT INTO `testdrive` (`testID`, `testDate`, `user_id`, `variant_id`, `status`, `referenceNumber`) VALUES
(3, '2021-05-17 12:35:00', 12, 9, 'pending', '124234234'),
(4, '2021-05-17 23:39:00', 12, 9, 'pending', '1234234234');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `aadhar_number` varchar(20) NOT NULL,
  `pin_code` int(11) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `passwordz` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`user_id`, `first_name`, `last_name`, `dob`, `aadhar_number`, `pin_code`, `phone_number`, `email`, `passwordz`) VALUES
(12, 'Ajith', 'Gopi', '1997-08-16', '2147483647', 685584, '2147483647', 'rinocic908@iludir.com', '202cb962ac59075b964b07152d234b70'),
(16, 'josmy', 'joseph', '1996-06-04', '2147483647', 671235, '2147483647', 'josmyj19@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(17, 'jesna', 'joseph', '1998-06-12', '787634312355', 686587, '9876134577', 'josmyjoseph2021@mca.ajce.in', 'c9fb939325f2c97b4fe65aa3d07c4b3f'),
(18, 'arun', 'k', '1990-08-12', '908765432136', 675423, '9087654321', 'josmyj19@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `variant`
--

CREATE TABLE `variant` (
  `variant_id` int(11) NOT NULL,
  `variant_name` varchar(30) NOT NULL,
  `price` varchar(20) NOT NULL,
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
  `color` varchar(20) NOT NULL,
  `mileage` varchar(20) DEFAULT NULL,
  `fueltype` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `variant`
--

INSERT INTO `variant` (`variant_id`, `variant_name`, `price`, `engine_number`, `engtype`, `displacement`, `max_power`, `max_torque`, `no_cylinder`, `geartype`, `gearbox`, `drivetype`, `model_id`, `pic`, `color`, `mileage`, `fueltype`) VALUES
(9, 'wagon-R VXI blue', '4', 5332, 'petrol', '796 cc', '67.04bhp', '90Nm@3500rpm', 3, 'Manual', '5 speed', 'FWD', 9, '1619749643.jpg', 'blue', '26 Km', 'Petrol'),
(10, 'wagon-R LXI White', '6', 2864, 'petrol', '995cc', ' 67 bhp @ 5500 rpm', ' 90 Nm @ 3500 rpm', 4, 'Manual', '5speed', 'FWD', 9, '1619755642.png', 'white', '30 Km', 'Diesel'),
(11, 'Maruti Suzuki Ertiga-ZXI blue', '9', 1617, 'Petrol', '4,395 mm ', ' 103 bhp @ 6000 rpm', ' 138 Nm @ 4400 rpm', 4, 'Automatic', '4 speed Automatic', 'FWD', 10, '1619757513.jpg', 'blue', NULL, NULL),
(12, 'Ertiga Lxi black', '3.4lakhs', 6687, 'Petrol ', '998cc', '47.3bhp', '69Nm@3500rpm', 3, 'Manual', '5speed', 'FWD', 10, '1619844158.jpg', 'black', NULL, NULL),
(13, 'Alto 800 LXI Black', '2.70 Lakh', 3205, 'Petrol ', '796CC', '47.3 BHP', '69Nm@3500rpm ', 3, 'Manual', '5speed', 'FWD', 13, '1621701734.jpg', 'black', NULL, NULL),
(14, ' Suzuki S-Presso VXI+ ', '4.98 lakh', 9433, 'Petrol ', '998cc', '68hp at 5500rpm', '90Nm at 3500rpm', 5, 'Automatic', '5 speed', 'FWD', 14, '1621703814.jpg', 'Orange', NULL, NULL),
(15, 'S-Presso LXI Red', '4.18 Lakh', 2880, 'Petrol ', '998cc', '67bhp@5500rpm ', ' 90nm@3500rpm ', 4, 'Manual', '5speed', 'FWD', 14, '1621741978.jpg', 'Red', NULL, NULL),
(16, 'Vitara Brezza ZXI+ AT', '11.3 lakhs', 6685, 'Petrol ', '1462 cc', '103.26bhp@6000rpm', '138nm@4400rpm', 4, 'Manual', '5 speed', 'FWD', 15, '1621743832.jpg', 'Yellow', NULL, NULL),
(17, 'Swift ZXI Plus Black', '5.85 Lakh', 3375, 'Petrol ', '1197cc', ' 85 bhp @ 6000 rpm', ' 114 Nm @ 4000 rpm', 4, 'Manual', '5 speed', 'FWD', 16, '1621745981.jpg', 'black', NULL, NULL),
(18, ' Suzuki Dzire Lxi Blue', '7.5 Lakhs', 3630, 'Petrol ', '1462 cc', '47.3bhp@6000rpm', '69Nm@3500rpm', 4, 'Manual', '5 speed', 'FWD', 17, '1621746721.png', 'blue', NULL, NULL),
(19, 'jimny diesel Green', '10.00 Lakh', 3668, 'Diesel', '1462 cc', '101bhp@6000rpm', '130Nm@4000rpm', 4, 'Manual', '4-speed', 'FWD', 18, '1621749754.jpg', 'Green', NULL, NULL),
(20, 'Baleno Zxi white', ' 5.97 Lakh ', 4572, 'Petrol ', '1197 cc', '83 bhp @ 6000 RPM', '115 Nm @ 4000 RPM', 4, 'Automatic', '5 speed', 'FWD', 19, '1621751224.jpg', 'white', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`BookingID`);

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
-- Indexes for table `testdrive`
--
ALTER TABLE `testdrive`
  ADD PRIMARY KEY (`testID`);

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
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `BookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branchID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `capability`
--
ALTER TABLE `capability`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `carmodel`
--
ALTER TABLE `carmodel`
  MODIFY `modelid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `car_pics`
--
ALTER TABLE `car_pics`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `convenience`
--
ALTER TABLE `convenience`
  MODIFY `conid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `dimensions`
--
ALTER TABLE `dimensions`
  MODIFY `dimension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `engine`
--
ALTER TABLE `engine`
  MODIFY `engine_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `entertainment`
--
ALTER TABLE `entertainment`
  MODIFY `entid` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `exterior`
--
ALTER TABLE `exterior`
  MODIFY `exterior_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `interior`
--
ALTER TABLE `interior`
  MODIFY `intid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `otp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `safety`
--
ALTER TABLE `safety`
  MODIFY `safeid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `suspension`
--
ALTER TABLE `suspension`
  MODIFY `suid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `testdrive`
--
ALTER TABLE `testdrive`
  MODIFY `testID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `variant`
--
ALTER TABLE `variant`
  MODIFY `variant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
