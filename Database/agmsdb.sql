-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2024 at 02:17 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 987654331, 'tester1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2022-12-29 06:21:53'),
(2, 'Admin1', 'admina', 123, 'aaa@gm.c', '$2y$10$cRycIXpsv0oDAA0IRqXx4eCZXPXpwNHh0W2xbpH628D8fmBbymE2q', '2023-11-27 18:24:22'),
(3, 'Numesh', 'numma', 123456, 'numma@gmail.com', '$2y$10$.UXcRRsbF40PABUBbaeJaufBCaaBtYIa9Sfcf9nUJYLvLlkwSyQpm', '2023-11-27 18:25:14'),
(9, 'Rukshani Chamalka', 'Chamalka', 77123456123, 'chamalka@gmail.com', '$2y$10$GorH3MKsZ69Z3y6Ggpyaoecwkqsd2AR59s2nFqbdBs8GbiYZf4KQ6', '2023-11-30 07:53:18'),
(10, 'Rukshani Chamalka', 'Chamalka1', 123456, 'chamalka1@gmil.com', '$2y$10$Wyprr1O4zV5jkjfwUSOWq.xen5uS2UhwlDo1FBUyqOHaxYMQ49pgS', '2023-11-30 07:54:40'),
(11, 'Mihiranga', 'mihiranga', 705708244, 'mihiranga@gmail.com', '$2y$10$n.yJhbRS7qP4vRNh7q38I.Q/XKhBoiQhEP6GdkcSwvGb3lpmH1F.y', '2024-01-25 16:56:02');

-- --------------------------------------------------------

--
-- Table structure for table `tblartist`
--

CREATE TABLE `tblartist` (
  `ID` int(10) NOT NULL,
  `Name` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `Education` mediumtext DEFAULT NULL,
  `Award` mediumtext DEFAULT NULL,
  `Profilepic` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblartist`
--

INSERT INTO `tblartist` (`ID`, `Name`, `MobileNumber`, `Email`, `Education`, `Award`, `Profilepic`, `CreationDate`) VALUES
(1, 'Isabella Reyes', 123456789, 'Isabella@malcomlismore.com', 'Completed his fine arts from kg fine arts college.\r\nSpecialized in drawing and ceramic.', 'Winner of Hugo Boss Prize in 2019, MacArthur Fellowship\r\n', '06940303f580ef89805d5242166fb867.jpg', '2022-12-21 13:31:25'),
(2, 'Olive Matthews', 234567890, 'Olive@malcolmlismore.com', 'Completed his fine arts from kg fine arts college.\r\nSpecialized in painting and ceramic.', 'Winner of Hugo Boss Prize in 2019, MacArthur Fellowship\r\n', 'ddc01577479ff46e6d42027edc5fba5c.jpg', '2022-12-21 13:31:25'),
(3, 'Sophia Carter', 345678901, 'Sophia@malcolmlismore.com', 'Completed his fine arts from kg fine arts college.\r\nSpecialized in painting and ceramic.', 'Winner of Hugo Boss Prize in 2019, MacArthur Fellowship\r\n', '94f512a17a11048b4d473f272918efbb.jpg', '2022-12-21 13:31:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblartmedium`
--

CREATE TABLE `tblartmedium` (
  `ID` int(5) NOT NULL,
  `ArtMedium` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblartmedium`
--

INSERT INTO `tblartmedium` (`ID`, `ArtMedium`, `CreationDate`) VALUES
(1, 'Image', '2022-12-22 04:57:04'),
(2, 'Video', '2022-12-22 04:57:34');

-- --------------------------------------------------------

--
-- Table structure for table `tblartproduct`
--

CREATE TABLE `tblartproduct` (
  `ID` int(5) NOT NULL,
  `Title` varchar(250) DEFAULT NULL,
  `Dimension` varchar(250) DEFAULT NULL,
  `Orientation` varchar(100) DEFAULT NULL,
  `Size` varchar(100) DEFAULT NULL,
  `Artist` int(5) DEFAULT NULL,
  `ArtType` int(5) DEFAULT NULL,
  `ArtMedium` int(5) DEFAULT NULL,
  `SellingPricing` decimal(10,0) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `Image` varchar(250) DEFAULT NULL,
  `Image1` varchar(250) DEFAULT NULL,
  `Image2` varchar(250) DEFAULT NULL,
  `Image3` varchar(250) DEFAULT NULL,
  `Image4` varchar(250) DEFAULT NULL,
  `RefNum` int(10) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblartproduct`
--

INSERT INTO `tblartproduct` (`ID`, `Title`, `Dimension`, `Orientation`, `Size`, `Artist`, `ArtType`, `ArtMedium`, `SellingPricing`, `Description`, `Image`, `Image1`, `Image2`, `Image3`, `Image4`, `RefNum`, `CreationDate`) VALUES
(6, '', '', '', '', 0, 0, 0, 0, '', 'f338c9173208b81b05398f36e9e217c01700986205.jpg', 'abc-3.jpg', 'about-1.jpg', '', '', 737943068, '2023-11-26 08:10:05'),
(7, 'AAA', 'DD', 'Landscape', 'Small', 1, 10, 1, 1111, 'AAAAA', '43860164bbbb2e1e57e7799779f6eec81700986348.jpg', 'about-5.jpg', 'hero-4.jpg', '', '', 664349713, '2023-11-26 08:12:28'),
(8, 'A', 'Dimension123', 'Potrait', 'Small', 1, 11, 1, 500, 'AAAAAADASDA SD AASD ASD A', 'ccb61ce390f13bd20a6f9c0b994ead191700991641.jpg', 'abc-3.jpg', '', '', '', 542805342, '2023-11-26 09:40:41'),
(9, 'ASDASD', 'ASd', 'Potrait', 'Medium', 2, 11, 1, 60, '65', 'ccf761fde3e9fca9f07aebb55978073b1700995932.jpg', 'a.jpg', '', '', '', 888965134, '2023-11-26 10:52:12'),
(10, 'Travel', 'Nature Lights', 'Potrait', 'Medium', 2, 13, 1, 0, 'Taken at the Amezon Forest', '72139d53fc7f44db0f5c1fa2cb727ba81701070030.jpg', 'abc-4.jpg', '', '', '', 132311091, '2023-11-27 07:27:10'),
(11, 'Beauty', 'Green Angle', 'Potrait', 'Large', 3, 13, 1, 0, 'Indian Women ', '8d39706a2845ea06e88b2ffd65085c281701070125.jpg', '', '', '', '', 437771759, '2023-11-27 07:28:45'),
(12, 'Fitness', 'Fitness', 'Landscape', 'Small', 2, 14, 1, 0, 'Fitness ', 'c9083a5312891ea859cd6a5535e684821701070201.jpg', '', '', '', '', 159664552, '2023-11-27 07:30:01'),
(13, 'Women', 'Lady', 'Potrait', 'Small', 1, 14, 1, 0, 'Lady', '9a65a9fa734bc24a99089dfa76f4cc001701070268.jpg', '', '', '', '', 167560283, '2023-11-27 07:31:08'),
(14, 'Event', 'Photo', 'Potrait', 'Medium', 2, 12, 1, 0, 'A', '385b0af3b7b3b1584ef6a79cf8eb7a051701072961.jpg', '', '', '', '', 494148098, '2023-11-27 08:16:01'),
(15, 'Nature 1', 'Nat', 'Landscape', 'Large', 2, 15, 1, 0, 'Taken at USA', '3888c7c726d3c5a4d46f8fac178496411701105513.jpg', '', '', '', '', 495161831, '2023-11-27 17:18:33'),
(16, 'Pic', 'AAA', 'Potrait', 'Medium', 1, 12, 1, 0, 'AAA', '850929e3b2aa1ddc624e0dbabc8ee80e1701329077.jpg', '', '', '', '', 978960803, '2023-11-30 07:24:37'),
(17, 'SSS', 'aa', 'Potrait', 'Small', 1, 11, 1, 500, 'aa', 'c76bb167b227b46d2cb4a22809ddfd5c1701416128.jpg', '', '', '', '', 433245190, '2023-12-01 07:35:28'),
(18, 'Wild', 'AAA', 'Potrait', 'Small', 1, 16, 1, 0, 'ASDSAD', '43d8be33dc00a33132c82adb9d0d3a541702620652.jpg', '', '', '', '', 697670394, '2023-12-15 06:10:52'),
(19, 'AAA', 'A', 'Potrait', 'Medium', 1, 13, 1, 0, 'asd', '60e536b6221c7a8a0a001a680e532b391704187088.jpg', '', '', '', '', 990372663, '2024-01-02 09:18:08');

-- --------------------------------------------------------

--
-- Table structure for table `tblarttype`
--

CREATE TABLE `tblarttype` (
  `ID` int(5) NOT NULL,
  `ArtType` varchar(250) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblarttype`
--

INSERT INTO `tblarttype` (`ID`, `ArtType`, `CreationDate`) VALUES
(11, 'Wedding photography', '2023-11-26 09:12:37'),
(12, 'Event photography', '2023-11-26 09:13:00'),
(13, 'Documentary photography', '2023-11-26 09:13:13'),
(14, 'Architectural photography', '2023-11-26 09:13:23'),
(15, 'Nature Photography', '2023-11-27 17:16:11'),
(16, 'Wild Photography', '2023-12-15 06:09:29');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `ID` int(10) NOT NULL,
  `EnquiryNumber` varchar(10) NOT NULL,
  `Artpdid` int(9) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `Email` varchar(250) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Message` varchar(250) DEFAULT NULL,
  `EnquiryDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` varchar(10) DEFAULT NULL,
  `AdminRemark` varchar(200) NOT NULL,
  `AdminRemarkdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`ID`, `EnquiryNumber`, `Artpdid`, `FullName`, `Email`, `MobileNumber`, `Message`, `EnquiryDate`, `Status`, `AdminRemark`, `AdminRemarkdate`) VALUES
(1, '230873611', 4, 'Anuj kumar', 'ak@test.com', 1234567890, 'This is for testing Purpose.', '2023-01-02 18:16:47', 'Answer', 'test purpose', '2023-01-01 18:30:00'),
(2, '227883179', 5, 'Amit Kumar', 'amitk55@test.com', 1234434321, 'I want this painting', '2023-01-02 18:42:42', 'Answer', 'testing purpose', '2023-01-02 18:43:16'),
(3, '424267395', 9, 'AAA', 'Aakya@gmail.com', 771234567, 'AAA', '2023-11-27 03:14:40', 'Answer', 'asd', '2023-11-27 03:15:21'),
(4, '445662315', 8, 'Farhan', 'Farhan@gmail.com', 123123212, 'I want to buy this', '2023-11-27 17:13:02', 'Answer', 'Block this image', '2023-11-27 17:14:29'),
(5, '300625850', 8, 'Numesh Jayamanne', 'numeshjay@gmail.com', 771234567, 'I want to buy this picture', '2023-11-30 05:40:11', 'Answer', 'We have received the printed product. Our finance representative will proceed the same.', '2023-11-30 05:57:20'),
(6, '241110453', 14, 'Numesh Jayamanne', 'numeshjayamanne@gmail.com', 771234567, 'gjhgjgjhghgj', '2023-12-01 16:01:55', NULL, '', NULL),
(7, '171660541', 8, 'Innam', 'innam@gmail.com', 123123, 'asdasd', '2023-12-15 06:05:18', 'Answer', 'Print this', '2023-12-15 06:07:58'),
(8, '654369881', 8, 'Ifada', 'numeshjayamanne@gmail.com', 11111, 'asdasd', '2024-01-08 11:07:06', NULL, '', NULL),
(9, '278876056', 16, 'Mihiranga', 'nuununasd@gmail.com', 123, 'I want to buy this', '2024-01-25 16:51:33', 'Answer', 'Block this', '2024-01-25 16:53:53');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'Shop Our Products', '<font color=\"#202124\" face=\"arial, sans-serif\"><span style=\"font-size: 16px;\">\"Our gallery is a vibrant space where art is showcased and offered for sale. We collaborate with a diverse group of talented artists, representing, promoting, and distributing their exceptional creations\"</span></font><br>', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '890,Sector 62, Gyan Sarovar, GAIL Noida(Delhi/NCR)', 'info@malcolmnlismore.com', 772258966, NULL, '10:30 am to 7:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `user_form`
--

CREATE TABLE `user_form` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_form`
--

INSERT INTO `user_form` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'Numesh', 'numeshjayamanne@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(2, 'num', 'numeshjay@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin'),
(3, 'Chamalka', 'lbrchami@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin'),
(4, 'Neisa', 'Neisa@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin'),
(5, 'AAkya', 'Aakya@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(6, 'AAA', 'aaa@gm.c', '0cc175b9c0f1b6a831c399e269772661', 'user'),
(7, 'AAA', 'AAA@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(8, 'Numma', 'numma@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblartist`
--
ALTER TABLE `tblartist`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblartmedium`
--
ALTER TABLE `tblartmedium`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblartproduct`
--
ALTER TABLE `tblartproduct`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblarttype`
--
ALTER TABLE `tblarttype`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CardId` (`Artpdid`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblartist`
--
ALTER TABLE `tblartist`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblartmedium`
--
ALTER TABLE `tblartmedium`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblartproduct`
--
ALTER TABLE `tblartproduct`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblarttype`
--
ALTER TABLE `tblarttype`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_form`
--
ALTER TABLE `user_form`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
