-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2025 at 07:55 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'الاستاذة / اسراء', 'اسراء', 1270927322, 'mwaheb.is.1@gmail.com', '696c79a790c018a5a0c564d973f9aee3', '2019-10-11 04:36:52'),
(2, 'mawaheb', 'mawaheb', 8979555558, 'mwaheb.is.1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2019-10-11 04:36:52'),
(3, 'mawaheb 1', 'mawaheb1', 1270927322, 'mwaheb.is.1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-10-11 04:36:52'),
(4, 'mawaheb 2', 'mawaheb2', 1270927322, 'mwaheb.is.1@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '2019-10-11 04:36:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblclass`
--

CREATE TABLE `tblclass` (
  `ID` int(5) NOT NULL,
  `ClassName` varchar(50) DEFAULT NULL,
  `Section` varchar(20) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblclass`
--

INSERT INTO `tblclass` (`ID`, `ClassName`, `Section`, `CreationDate`) VALUES
(12, 'Middle 1', 'A', '2025-04-30 22:07:48'),
(13, 'Middle 2', 'A', '2025-05-06 10:44:06'),
(14, 'Jounior class', 'A', '2025-05-25 10:29:46'),
(15, 'K.G', 'A', '2025-05-25 21:48:17'),
(16, 'Summer camp', 'A', '2025-05-25 21:48:53'),
(17, 'Pre K.G', 'A', '2025-05-25 21:49:15');

-- --------------------------------------------------------

--
-- Table structure for table `tblnotice`
--

CREATE TABLE `tblnotice` (
  `ID` int(5) NOT NULL,
  `NoticeTitle` longtext DEFAULT NULL,
  `ClassId` int(10) DEFAULT NULL,
  `NoticeMsg` longtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` longtext DEFAULT NULL,
  `PageDescription` longtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'نبذة عنا', 'مواهب اكاديمي \r\n\r\nالريادة في مجال تنمية براعم الاسماعيلية علي المعرفة وصقل طفل علميا واخلاقيا ليكون رائد في مختلف مجالات الحياة\r\n\r\nأ - اسراء حسن', NULL, NULL, NULL),
(2, 'contactus', 'Contact Us', 'شارع شبين الكوم - بجوار مستشفي الخير والبركة - الاسماعيلية ', 'mawaheb.is@gmail.com', 1013109020, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpublicnotice`
--

CREATE TABLE `tblpublicnotice` (
  `ID` int(5) NOT NULL,
  `NoticeTitle` varchar(200) DEFAULT NULL,
  `NoticeMessage` longtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblpublicnotice`
--

INSERT INTO `tblpublicnotice` (`ID`, `NoticeTitle`, `NoticeMessage`, `CreationDate`) VALUES
(3, 'مرحبا طلاب مواهب اكاديمي', 'يمكنكم الان طلب اسم المستخدم والرقم السري من معلمة فصلك لمشاركتنا متعة التعليم الرقمي وحجز مكانكم في سباق التطور التكنولوجي', '2025-05-04 16:29:46');

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `ID` int(10) NOT NULL,
  `StudentName` varchar(200) DEFAULT NULL,
  `StudentEmail` varchar(200) DEFAULT NULL,
  `StudentClass` varchar(100) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `StuID` varchar(200) DEFAULT NULL,
  `FatherName` longtext DEFAULT NULL,
  `MotherName` longtext DEFAULT NULL,
  `ContactNumber` bigint(10) DEFAULT NULL,
  `AltenateNumber` bigint(10) DEFAULT NULL,
  `Address` longtext DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `DateofAdmission` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tblstudent`
--

INSERT INTO `tblstudent` (`ID`, `StudentName`, `StudentEmail`, `StudentClass`, `Gender`, `DOB`, `StuID`, `FatherName`, `MotherName`, `ContactNumber`, `AltenateNumber`, `Address`, `UserName`, `Password`, `Image`, `DateofAdmission`) VALUES
(9, 'محمد عربي', 'mohamed@gmail.com', 'Middle 2A', 'Male', '2021-07-26', '0010', 'عربي', 'هبه محمد', 1007334994, 1007334994, 'شارع رضا مدرسه الصنايع', 'اسراء', 'f40ecb445ffd1f6c2f37874ae0c8ef59', 'f015777eebefced3e397fefe3014a8391746051184.jpg', '2025-04-30 22:13:04'),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ZIZO', '827ccb0eea8a706c4c34a16891f84e7b', '84e273253c19ae5ae1e84bfbb657e5201746701563jpeg', '2025-05-08 10:52:43'),
(35, 'سليم احمد صلاح الدين', 'aya abdelaziz', 'فصل نيموA', 'Male', '2021-07-03', '0010', 'احمد صلاح الدين', 'ايه عبدالعزيز', 1280932222, 1280932222, 'ش المدارس بجوار مكتبه الشباب', 'اسراء', 'f40ecb445ffd1f6c2f37874ae0c8ef59', 'f015777eebefced3e397fefe3014a8391746051184.jpg', '2025-04-30 22:13:04'),
(38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'اسراء', 'f40ecb445ffd1f6c2f37874ae0c8ef59', 'f015777eebefced3e397fefe3014a8391746051184.jpg', '2025-04-30 22:13:04'),
(39, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'اسراء', 'f40ecb445ffd1f6c2f37874ae0c8ef59', 'f015777eebefced3e397fefe3014a8391746051184.jpg', '2025-04-30 22:13:04'),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'اسراء', 'f40ecb445ffd1f6c2f37874ae0c8ef59', 'f015777eebefced3e397fefe3014a8391746051184.jpg', '2025-04-30 22:13:04'),
(41, ' منى مهدي يوسف', '01276165048', 'Junior classA', 'Female', '2022-06-12', '0010', 'مهدي يوسف', 'اميره محمد', 1221934570, 1276165048, 'شارع رضا امام مدرسه الصنايع', 'اسراء', 'f40ecb445ffd1f6c2f37874ae0c8ef59', 'f015777eebefced3e397fefe3014a8391746051184.jpg', '2025-04-30 22:13:04'),
(42, 'سليم حسن رشاد', '01285686914', 'Junior classA', 'Male', '2022-06-21', '0010', 'حسن رشاد', 'داليا عبدالعال', 1285686914, 1285686914, 'بجوار مدرسه الصنايع', 'اسراء', 'f40ecb445ffd1f6c2f37874ae0c8ef59', 'f015777eebefced3e397fefe3014a8391746051184.jpg', '2025-04-30 22:13:04'),
(49, 'Leen Ahmed abdelmonem', '0106087266', '14', 'Female', '2023-05-21', '000001', 'Ahmed', 'Yasmeen', 106087266, 106087266, 'Ibrahim salama', 'Leen', '81dc9bdb52d04dc20036dbd8313ed055', 'c32f2363e2e72bc151fb918464b3c5e21748271934jpeg', '2025-05-26 15:05:34'),
(50, 'Ganna Mohamed salah', 'esraaeldawody004@gmail.com', '12', 'Female', '2023-04-28', '00011', 'Mohamed salah', 'Esraa mohamed', 1276505714, 1276505714, 'ارض الجمعيات بلوك ٦٥', 'Ganna', '81dc9bdb52d04dc20036dbd8313ed055', 'c32f2363e2e72bc151fb918464b3c5e21748272884jpeg', '2025-05-26 15:21:24'),
(51, 'Anas Mahmoud', 'omniamohamedanas@gmail.com', '16', 'Male', '2023-06-20', '0011', 'Mohmoud', 'Omnia', 1008580978, 1008580978, '23 tanta street', 'Anas', '81dc9bdb52d04dc20036dbd8313ed055', 'c32f2363e2e72bc151fb918464b3c5e21748274038jpeg', '2025-05-26 15:40:38'),
(52, 'Mohamed islam', 'fatmahany573@gmail.com', '15', 'Male', '2025-05-25', '000011', 'islam', 'Fatma', 1006363451, 1099857010, 'المحمصه القديمه', 'Mohamed', '81dc9bdb52d04dc20036dbd8313ed055', 'c32f2363e2e72bc151fb918464b3c5e21748274471jpeg', '2025-05-26 15:47:51'),
(53, 'Karma amr', '0120669032', '12', 'Female', '2021-07-18', '0001', 'Amr', 'Gehad', 120669032, 120669032, 'دوران رضا عند الشريف للادوات المنزليه', 'Karma', '81dc9bdb52d04dc20036dbd8313ed055', 'c32f2363e2e72bc151fb918464b3c5e21748274728jpeg', '2025-05-26 15:52:08'),
(54, 'Layal mohamed essam', 'ayag0657@gmail.com', '14', 'Female', '2022-11-24', '00001', 'Mohamed', 'Aya', 120429596, 127907688, 'العشريني والمنصوره', 'Layal', '81dc9bdb52d04dc20036dbd8313ed055', 'c32f2363e2e72bc151fb918464b3c5e21748274914jpeg', '2025-05-26 15:55:14'),
(55, 'Moaz Ahmed', 'ayatohamy37@gmail.com', '13', 'Male', '2021-08-30', '0000001', 'Ahmed', 'Aya', 109233736, 109233736, 'شارع الدخيله امام مسجد مخلوف', 'Moaz', '81dc9bdb52d04dc20036dbd8313ed055', 'c32f2363e2e72bc151fb918464b3c5e21748275338jpeg', '2025-05-26 16:02:18'),
(56, 'Nadia Mahmoud', 'drbasha841.mh@gmail.com', '15', 'Male', '2020-09-13', '00000001', 'Mahmoud', 'Manar', 1009507411, 1009507411, 'Ismilia reda street', 'Nadia', '81dc9bdb52d04dc20036dbd8313ed055', 'c32f2363e2e72bc151fb918464b3c5e21748275755jpeg', '2025-05-26 16:09:15'),
(57, 'Dema hamdy', '0106468125', '14', 'Female', '2021-12-27', '000000001', 'Hamdy', 'Mariam', 106468125, 101681333, 'الدقهليه من البحري شارع الشهيد محمد متولي', 'Dema ', '81dc9bdb52d04dc20036dbd8313ed055', '270ee5151a93287c55059ba5f554589e1748279748jpeg', '2025-05-26 17:15:48'),
(58, 'Nelly eslam mohamed', 'yyoka270@gmail.com', 'Summer campA', 'Female', '2021-01-12', '0000000001', 'Eslam', 'Yara', 1224658603, 1224658603, 'شارع شبين', 'Nelly', '81dc9bdb52d04dc20036dbd8313ed055', 'd1d0b435df21df22e832b4a059d92b5c1748279935jpeg', '2025-05-26 17:18:55'),
(59, 'Taim mohamed refaai', '1033676711', '15', 'Male', '2021-05-26', '100000', 'Mohamed', 'Nedal', 1033676711, 1033676711, '98reda st in front of elsenawy secondary school ', 'Taim', '81dc9bdb52d04dc20036dbd8313ed055', '0c30bc787a48e92e3f6c1f241b9aa9941748280331jpeg', '2025-05-26 17:25:31'),
(60, 'Sadan sayed', 'henarehab7@gmail.com', '15', 'Female', '2023-03-03', '1100000', 'Sayed', 'Henar', 106275870, 106275870, 'Ismailia', 'Sadan', '81dc9bdb52d04dc20036dbd8313ed055', '99673610a26aac80e5b4b97f037c3cae1748281161jpeg', '2025-05-26 17:39:21'),
(61, 'Sadra sayed', 'henarehab7@gmail.com', '16', 'Female', '2019-12-06', '11100', 'Sayed', 'Henar', 106275870, 106275870, 'Ismailia', 'Sadra', '81dc9bdb52d04dc20036dbd8313ed055', '5a5438d489787dc36ea3ae2a9edb72df1748281368jpeg', '2025-05-26 17:42:48'),
(62, 'Anas esmat', 'saraesam2024@gmail.com', '16', 'Male', '2019-12-24', '11110', 'Esmat', 'Sara', 1055377890, 1091080223, 'Ibrahim salama', 'Anass', '827ccb0eea8a706c4c34a16891f84e7b', '24a583920c08b1ffdfe15658cb0b93a61748282193jpeg', '2025-05-26 17:56:33'),
(63, 'Amar esmat', 'saraesam2024@gmail.com', '17', 'Male', '2021-12-02', '1120', 'Esmat', 'Sara', 1055377890, 1091080223, 'Ibrahim salama', 'Amar', '81dc9bdb52d04dc20036dbd8313ed055', 'be2bd6a75e858590b9912e8e5f8438d21748282442jpeg', '2025-05-26 18:00:42'),
(64, 'Hamza youssef', '1061869095', '14', 'Male', '2022-01-20', '1122', 'Youssef', 'Reham', 1061869095, 1062390180, 'شارع احمد صقر حي السلام', 'Hamza', '81dc9bdb52d04dc20036dbd8313ed055', '926b9799f113396fea8c1d24dd4718981748282658jpeg', '2025-05-26 18:04:18'),
(65, 'Ahmed mohamed abdelfatah', 'velsamoh@amazon.com', '15', 'Male', '2020-09-22', '11221', 'Mohamed', 'Taymaa', 1067187101, 1067187101, 'Ismailia block42 8th district elshekh zayed', 'Ahmed', '81dc9bdb52d04dc20036dbd8313ed055', 'd36c3a2ea50eab6ce99227929396a8971748283469jpeg', '2025-05-26 18:17:49'),
(66, 'Tia hussien', 'maiabuzaid13@gmail.com', '13', 'Female', '2020-06-27', '11200', 'Hussein', 'Tia', 643159080, 643159080, 'شارع شبين امام مسجد الصالحين ', 'Tia', '81dc9bdb52d04dc20036dbd8313ed055', '4d47c269641032582e8eaeec79d080571748284870jpeg', '2025-05-26 18:41:10'),
(67, 'Dahab mohamed ali', 'bassant1963@yahoo.com', '16', 'Female', '2019-10-01', '111110', 'Mohamed', 'Bassant', 106919736, 106139313, 'الاسماعيليه جاردن سيتي', 'Dahab', '81dc9bdb52d04dc20036dbd8313ed055', '4a5b924e224e69716ceac76319aa256a1748285113jpeg', '2025-05-26 18:45:13'),
(68, 'Mazen Hussein ', 'abomazen05225@gmail.com', '15', 'Male', '2020-12-26', '1230', 'Hussein', 'Sherouk', 1033011544, 1286471824, 'مساكن هيئه قناه السويس بالشهداء', 'Mazen', '81dc9bdb52d04dc20036dbd8313ed055', '84e3d59867b20d996cd222c2807cf0e11748285356jpeg', '2025-05-26 18:49:16'),
(69, 'Ali Mohamed abdelfattah', 'bosy.mama2008@gmail.com', '15', 'Male', '2020-10-22', '12300', 'Mohamed', 'Basma', 1002667383, 1099994948, '2kafrelshekh st garage ford', 'Ali', '81dc9bdb52d04dc20036dbd8313ed055', '1ca4866799ea2abb4b6b7944445eadeb1748287130jpeg', '2025-05-26 19:18:50'),
(70, 'Younis Mohamed', 'yarasamy@gmail.com', '13', 'Male', '2021-04-05', '12330', 'Mohamed', 'Yara', 1200710702, 1200710702, 'حي زمزم عند نادي الفروسيه', 'Youniss', '81dc9bdb52d04dc20036dbd8313ed055', '5d3196aaa98f19194d06b9d340a3a2bd1748287437jpeg', '2025-05-26 19:23:57'),
(71, 'Wagdy abdelrahman', 'nada01205347023@gmail.com', '15', 'Male', '2020-11-16', '12333', 'Abdelrahman', 'Nada', 120534702, 120534702, 'دوران رضا شارع سيف الاسلام', 'Wagdy', '81dc9bdb52d04dc20036dbd8313ed055', 'ac7934e5432a5c14b76f0077911f9c7b1748287642jpeg', '2025-05-26 19:27:22'),
(72, 'Seif Mohamed', 'nourkamel162@gmail.com', '16', 'Male', '2018-09-04', '1223', 'Mohamed', 'Nourhan', 122142689, 122142689, 'الشيخ زايد', 'Seif', '81dc9bdb52d04dc20036dbd8313ed055', '3389960071d6646055aeda478430f13e1748287920jpeg', '2025-05-26 19:32:00'),
(73, 'مسك محمد', 'MohamedKhaledaya@gmail.com', '17', 'Female', '2021-02-11', '1234', 'محمد ', 'ايه', 1208819602, 1115666688, 'الإسماعيلية حي الاسره  ', 'Mesk', '81dc9bdb52d04dc20036dbd8313ed055', 'c3868c7dbd530e93fd214db20e3c3b651748288174jpeg', '2025-05-26 19:36:14'),
(74, 'Cela Mahdi', 'meramohamed0097@gmail.com', '14', 'Female', '2022-01-13', '12340', 'Mahdi', 'Amira', 1276165048, 1221934570, 'Reda st', 'Cela', '81dc9bdb52d04dc20036dbd8313ed055', 'faf2720cb6beaa435fe2d8a0d6f385201748288587jpeg', '2025-05-26 19:43:07'),
(76, 'Laila Ahmed', 'nellyabdelrahman75@gmail.com', '12', 'Female', '2021-10-26', '12345', 'Ahmed ', 'Nelly', 109144693, 1021412498, 'Mosque elmatafy', 'Laila', '81dc9bdb52d04dc20036dbd8313ed055', 'c32f2363e2e72bc151fb918464b3c5e21748289564jpeg', '2025-05-26 19:59:24'),
(77, 'Mohamed Abdallah', 'hagarabdallahh18@gmail.com', '12', 'Male', '2022-11-12', '123450', 'Abdallah ', 'Mona', 128844541, 122698672, 'شارع المسرح الروماني', 'Mohamed Abdallah', '81dc9bdb52d04dc20036dbd8313ed055', 'c32f2363e2e72bc151fb918464b3c5e21748289853jpeg', '2025-05-26 20:04:13'),
(78, 'Malek Mohamed Sadek', 'Tomy.salah@gmail.com', '14', 'Male', '2022-06-06', '12344', 'Mohamed', 'Fatma', 1030304040, 1009260461, 'الجامعه القديمه شارع ٤ بجوار عالفحم', 'Malek Mohamed', '81dc9bdb52d04dc20036dbd8313ed055', '400afa9c70b7041fc8570ef7a02530d21748360079jpeg', '2025-05-27 15:34:39'),
(79, 'Selim Hassan rashad', '01285686914', '14', 'Male', '2022-06-21', '551', 'Hassan', 'Dalia', 1285686914, 1285686914, 'بجوار مدرسه الصنايع', 'Selim', '81dc9bdb52d04dc20036dbd8313ed055', '90462e994ad2fe60edf495a985dbcf811748360277jpeg', '2025-05-27 15:37:59'),
(80, 'Fawzy Abdallah Fawzy', '01143785452', '14', 'Male', '2022-04-09', '515', 'Abdallah', 'Asmaa', 1143785452, 1143785452, 'شارع شبين امام منطقه الكهرباء', 'Fawzy', '81dc9bdb52d04dc20036dbd8313ed055', 'f30685e82867774e970c8e31d44e794b1748360420jpeg', '2025-05-27 15:40:22'),
(81, 'Omar Mahmoud Mohamed', '1205393744', '14', 'Male', '2021-10-21', '525', 'Mahmoud', 'Abeer', 1205393744, 1030639038, 'شارع الشيخه اعتدال حي السلام', 'Omar Mahmoud', '81dc9bdb52d04dc20036dbd8313ed055', 'c32f2363e2e72bc151fb918464b3c5e21748360584jpeg', '2025-05-27 15:43:04'),
(82, 'Naden Abdallah fathy', 'hendtharwat166@gmail.com', '12', 'Female', '2021-09-23', '535', 'Abdallah fathy', 'Hend', 1008394646, 1091024363, 'شارع شبين بجوار فودافون', 'Naden', '81dc9bdb52d04dc20036dbd8313ed055', '95a627cb3693b1a198c51f24a54a89a81748361440jpeg', '2025-05-27 15:57:20'),
(83, 'Rancy Ayman ibrahim', '01270787299', '12', 'Female', '2022-04-22', '545', 'Ayman', 'Ayman', 1068137506, 1099254321, 'عرايشيه مصر', 'Rancy', '81dc9bdb52d04dc20036dbd8313ed055', 'c32f2363e2e72bc151fb918464b3c5e21748361677jpeg', '2025-05-27 16:01:17'),
(84, 'Omran Yahia Elsayed', '01277073521', '12', 'Male', '2021-11-30', '555', 'Yahia', 'Asmaa', 1273535887, 1273535887, 'بجوار مدرسه الصنايع', 'Omran', '81dc9bdb52d04dc20036dbd8313ed055', 'c32f2363e2e72bc151fb918464b3c5e21748362163jpeg', '2025-05-27 16:09:23'),
(85, 'Nelly Mostafa Hussien', '1273399266', '12', 'Male', '2022-01-15', '565', 'Mostafa', 'Basma', 1019280324, 1019280324, 'بجوار الشهر العقاري', 'Nelly Mostafa', '81dc9bdb52d04dc20036dbd8313ed055', '9fa71cfa8d1a4b60fb7f65d6182c80fa1748362364jpeg', '2025-05-27 16:12:44'),
(86, 'Mariam Tarek Abdelazem', 'Rody hano', '12', 'Female', '2021-08-30', '575', 'Tarek', 'Radwa', 122252506, 1225888577, 'الدائري', 'Mariam Tarek', '81dc9bdb52d04dc20036dbd8313ed055', 'c32f2363e2e72bc151fb918464b3c5e21748362558jpeg', '2025-05-27 16:15:58'),
(87, 'Ahmed Osama Ibrahim ', '01066608678', '12', 'Male', '2021-10-22', '585', 'Osama', 'Gehan', 1098483522, 1098483522, 'شارع رضا حي السلام', 'Ahmed Osama', '81dc9bdb52d04dc20036dbd8313ed055', 'd42b21f6c31b3755e28806948873d1a11748362759jpeg', '2025-05-27 16:19:19'),
(88, 'Hamza Mohamed Mahmoud', '01222915807', '13', 'Male', '2021-09-23', '595', 'Mohamed', 'Mena', 1222915807, 1001362570, 'شارع رضا', ' Hamza mohamed', '81dc9bdb52d04dc20036dbd8313ed055', 'c32f2363e2e72bc151fb918464b3c5e21748363359jpeg', '2025-05-27 16:29:19'),
(89, 'عدي محمد حسين رشدي', 'Nothing ', '14', 'Male', '2021-11-06', '510', 'محمد', 'سلسبيل', 100000000, 100000000, '٦٧ ش الطحاوي من ش المستشفى ', 'Ody', '81dc9bdb52d04dc20036dbd8313ed055', '0fd9872c9745bc4ac52ebc69f67ac5651748363588jpeg', '2025-05-27 16:33:08'),
(90, 'ريان خالد محمد ', 'Nothing ', '14', 'Male', '2021-11-14', '616', 'خالد', 'ريهام', 1120798180, 1282028046, 'ش رضا عند مدرسه الصنايع', 'Ryan', '81dc9bdb52d04dc20036dbd8313ed055', '0a1eaea7603c71e2ab5ac6255c7360781748363748jpeg', '2025-05-27 16:35:48'),
(91, 'Rose Emad', 'rehamdaoud87@gmail.com', '16', 'Female', '2019-01-19', '636', 'Emad ', 'Reham', 1005105696, 1005105696, 'شبين شارع ابراهيم سلامه', 'Rose', '81dc9bdb52d04dc20036dbd8313ed055', '557a8f6e1dee176a5bb7bda54281f9e31748364814jpeg', '2025-05-27 16:53:34'),
(92, 'Mohamed Arafat Hassan', '01004550147', '13', 'Male', '2021-08-16', '646', 'Arafat', 'Shimaa', 1004550147, 1010654417, 'مساكن هيئه قناه السويس عرايشيه مصر شارع المحله', 'Mohamed Arafat', '81dc9bdb52d04dc20036dbd8313ed055', 'da77d9a13e5884e15f3f4fe20bc80ec91748382297jpeg', '2025-05-27 21:44:57'),
(93, 'Nabaa belal samir', 'belalsamer928@gmail.com', '13', 'Female', '2021-09-09', '666', 'Belal', 'Salma', 1226915307, 1225853233, 'دوران رضا بجانب مدرسه الصنائع بنات', 'Nabaa', '81dc9bdb52d04dc20036dbd8313ed055', 'ad4814c7681f8fc09108035e25d5cff71748382550jpeg', '2025-05-27 21:49:10'),
(94, 'Farida Ibrahim hassan', 'Marwa mwer', '13', 'Female', '2021-03-16', '676', 'Ibrahim ', 'Nawal', 1211132850, 1211132850, 'ش طنطا امام مسجد خلفاء الراشدين ', 'Farida', '81dc9bdb52d04dc20036dbd8313ed055', '0d5b1c4c7f720f698946c7f6ab08f6871748382719.jpg', '2025-05-27 21:51:59'),
(95, 'آيلا حسن رأفت', 'Nothing ', '13', 'Female', '2022-01-08', '686', 'حسن', 'ندى', 122837476, 1092443755, 'امام مدرسه الصنايع', 'ايلا', '81dc9bdb52d04dc20036dbd8313ed055', '9387183677533cca40b12e69d70fcce51748382900jpeg', '2025-05-27 21:55:00'),
(96, 'Mohamed Elaraby', 'Nothing ', '13', 'Male', '2021-07-26', '696', 'Elaraby', 'Heba', 1007334994, 1007334994, 'ش رضا عند مدرسه الصنايع', 'Mohamed Elaraby', '81dc9bdb52d04dc20036dbd8313ed055', '404028c46d5e10ad0fab67ec68802b651748383306jpeg', '2025-05-27 22:01:46'),
(97, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Macca', '81dc9bdb52d04dc20036dbd8313ed055', 'a0bc129f2b24953bf15b1566599fb5b61748383899jpeg', '2025-05-27 22:11:39'),
(98, 'Mahmoud Ibrahim Mahmoud ', 'Nothing ', '13', 'Male', '2020-10-28', '700', 'Ibrahim ', 'Amany', 1226282727, 1208509003, 'دوران رضا', 'محمود ابراهيم', '81dc9bdb52d04dc20036dbd8313ed055', 'c32f2363e2e72bc151fb918464b3c5e21748384198jpeg', '2025-05-27 22:16:38'),
(99, 'Ryan Mohamed', 'ayaeltabakh115@gmail.com', '15', 'Male', '2021-05-28', '703', 'Mohamed', 'Aya', 1273281778, 1277771431, 'التمليك الجاهز المرحله الرابعه عماره ١٨', 'Ryan Mohamed', '81dc9bdb52d04dc20036dbd8313ed055', 'c32f2363e2e72bc151fb918464b3c5e21748386093jpeg', '2025-05-27 22:48:13'),
(100, 'Talia Ahmed Mohamed Youssef', 'Nothing ', '15', 'Female', '2021-01-21', '704', 'Ahmed', 'Ola', 0, 0, 'شارع بلال بن رباح من شارع رضا حس السلام', 'Talia', '81dc9bdb52d04dc20036dbd8313ed055', 'd72c98288359c70b500fe06b1af866b71748386269jpeg', '2025-05-27 22:51:09'),
(101, 'Malika Mahmoud', 'Hager sapry', '15', 'Female', '2020-06-01', '705', 'Mahmoud', 'Hager', 1063233400, 1099498610, 'شارع رضا', 'Malika', '81dc9bdb52d04dc20036dbd8313ed055', 'a9ed043d1431b5ee56503642be1442071748386405jpeg', '2025-05-27 22:53:25'),
(102, 'Younis Abdelrahman', 'abdoadeladeladel@gmail.com', '15', 'Male', '2020-07-08', '706', 'Abdelrahman', 'Asmaa', 1229120073, 1212636668, 'الخامسه شارع عباس العقاد بجوار مدرسه التكنولوجيا ', 'Younis Abdelrahman', '81dc9bdb52d04dc20036dbd8313ed055', 'c021f2253709efe4f7db9922832353da1748386703jpeg', '2025-05-27 22:58:23'),
(103, 'Zeyad Maged Anan', 'Nothing ', '15', 'Male', '2022-02-15', '707', 'Maged', 'Asmaa', 1005779392, 1118101001, 'جمعيه العاشر', 'Maged', '81dc9bdb52d04dc20036dbd8313ed055', 'e0b6d33de58b89f20022da663f404f391748388581jpeg', '2025-05-27 23:29:41'),
(104, 'Macca Mohamed Mohamed', 'Nothing ', '13', 'Female', '2021-11-30', '709', 'Mohamed', 'Eman', 1271166070, 1020490844, 'الدقهليه', 'مكه ', '81dc9bdb52d04dc20036dbd8313ed055', 'c32f2363e2e72bc151fb918464b3c5e21748388889jpeg', '2025-05-27 23:34:49'),
(105, 'Roaa Eslam Atef', 'Nothing ', '17', 'Female', '2021-03-23', '710', 'Eslam', 'Heba', 1289616284, 1289345100, 'ابو صوير ', 'Roaa', '81dc9bdb52d04dc20036dbd8313ed055', 'f472690d87f41a337bc2b813b31e28881748389177jpeg', '2025-05-27 23:39:37'),
(106, 'Taim Mohamed Abdelradi', 'Nothing ', '17', 'Male', '2021-01-27', '800', 'Mohamed', 'Aya', 1277771431, 1273281778, 'التمليك الجاهز المرحله الرابعه عماره ١٨', 'Taimm', '81dc9bdb52d04dc20036dbd8313ed055', 'c32f2363e2e72bc151fb918464b3c5e21748389434jpeg', '2025-05-27 23:43:54'),
(107, 'ليان عبدالرحمن فتحي', 'Nothing ', '17', 'Female', '2021-05-10', '801', 'عبدالرحمن', 'داليا', 1032667769, 1014624029, 'Nothing ', 'ليان ', '81dc9bdb52d04dc20036dbd8313ed055', '01ec40a78d1f540cf2ce9d40807fe5bc1748389634jpeg', '2025-05-27 23:47:14'),
(108, 'Tarek Mahmoud gamal', 'Nothing ', '17', 'Male', '2020-06-28', '82', 'Mahmoud ', 'Amany', 1280412947, 1279505779, 'ش الدقهلية والبحري', 'Tarek', '81dc9bdb52d04dc20036dbd8313ed055', 'c32f2363e2e72bc151fb918464b3c5e21748415762jpeg', '2025-05-28 07:02:42'),
(109, 'Hassan Mostafa Hussein', 'Nothing ', '16', 'Male', '2020-01-01', '848', 'Mostafa', 'Basma', 1019280324, 1019280324, 'بجوار الشهر العقاري', 'Hassan', '81dc9bdb52d04dc20036dbd8313ed055', 'c434e60b746758c5a5594d1e67ed56bb1748416063jpeg', '2025-05-28 07:07:43'),
(110, 'Nelly eslam mohamed', 'Nothing ', '16', 'Female', '2021-12-01', '858', 'Eslam', 'Yara', 1224658603, 1061233631, 'شارع شبين عند نادي المعلمين', 'Nelly eslam', '81dc9bdb52d04dc20036dbd8313ed055', '80a53eff9f68a823d627017c4d77723e1748416369jpeg', '2025-05-28 07:12:49'),
(111, 'Amar tarek mohamed', 'Nothing ', '15', 'Male', '2021-02-13', '868', 'Tarek', 'Doaa', 1024894637, 1024894637, 'التجاري', 'Amar tarek', '81dc9bdb52d04dc20036dbd8313ed055', 'be2bd6a75e858590b9912e8e5f8438d21748416550jpeg', '2025-05-28 07:15:50'),
(112, 'Youssef mohamed essam', 'monasamy1312@yahoo.com', '17', 'Male', '2021-12-10', '878', 'Mohamed', 'Mona', 1224701677, 1274686485, 'مساكن الهيئة عبد الحكيم عماره 580 شقه 11 ', 'Youssef', '81dc9bdb52d04dc20036dbd8313ed055', '8be135dc8f126854639574b71e1328ae1748417001jpeg', '2025-05-28 07:23:21'),
(113, 'Belal mohamed elgamal', 'nohaelhaloous@gmail.con', '17', 'Male', '2021-02-08', '888', 'Mohamed ', 'Noha', 1229141887, 1273671711, '٨ شارع احمد سالم متفرع من شارع رضا', 'Belal', '81dc9bdb52d04dc20036dbd8313ed055', 'f27dd6f69f89ae08120242f94718b0eb1748417279jpeg', '2025-05-28 07:27:59'),
(114, 'Ahmed saleh', 'Nothing ', '16', 'Male', '2020-06-29', '898', 'Saleh', 'Maha', 1205464193, 1220063375, 'ش البحري بجوار مسجد الهدى', 'Ahmed saleh', '81dc9bdb52d04dc20036dbd8313ed055', 'c32f2363e2e72bc151fb918464b3c5e21748417547jpeg', '2025-05-28 07:32:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblclass`
--
ALTER TABLE `tblclass`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblnotice`
--
ALTER TABLE `tblnotice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpublicnotice`
--
ALTER TABLE `tblpublicnotice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblclass`
--
ALTER TABLE `tblclass`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblnotice`
--
ALTER TABLE `tblnotice`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpublicnotice`
--
ALTER TABLE `tblpublicnotice`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
COMMIT;
-- جدول الحضور والغياب
CREATE TABLE `attendance` (
  `AttendanceID` int(10) NOT NULL AUTO_INCREMENT,
  `StudentID` int(10) NOT NULL,
  `AttendanceDate` date NOT NULL,
  `Status` enum('Present','Absent') NOT NULL,
  `Notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`AttendanceID`),
  KEY `idx_student_attendance` (`StudentID`),
  CONSTRAINT `fk_attendance_student` FOREIGN KEY (`StudentID`) REFERENCES `tblstudent`(`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- جدول المصروفات
CREATE TABLE `fees` (
  `FeeID` int(10) NOT NULL AUTO_INCREMENT,
  `StudentID` int(10) NOT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `PaymentDate` date NOT NULL,
  `FeeType` varchar(100) DEFAULT NULL,
  `Notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FeeID`),
  KEY `idx_student_fees` (`StudentID`),
  CONSTRAINT `fk_fees_student` FOREIGN KEY (`StudentID`) REFERENCES `tblstudent`(`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
