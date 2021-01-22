-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2021 at 10:59 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mesayfinance`
--

-- --------------------------------------------------------

--
-- Table structure for table `academicyear`
--

CREATE TABLE `academicyear` (
  `Acad_ID` int(5) NOT NULL,
  `Acad_Name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Term` int(5) NOT NULL,
  `Active` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `academicyear`
--

INSERT INTO `academicyear` (`Acad_ID`, `Acad_Name`, `Term`, `Active`) VALUES
(1, '2019-2020', 1, 'no'),
(2, '2020-2021', 1, 'no'),
(3, '2020-2021', 2, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `Bill_ID` int(11) NOT NULL,
  `Bill_Date` date DEFAULT NULL,
  `Reg_ID` int(5) NOT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Pay_Status` int(1) NOT NULL,
  `Staff_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `born_district`
--

CREATE TABLE `born_district` (
  `bdist_ID` int(11) NOT NULL,
  `CODE` int(11) DEFAULT NULL,
  `DISTRICNAME` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `DISTRICTNAME_E` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `BPRO_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

--
-- Dumping data for table `born_district`
--

INSERT INTO `born_district` (`bdist_ID`, `CODE`, `DISTRICNAME`, `DISTRICTNAME_E`, `BPRO_ID`) VALUES
(1, 1, 'ຈັນ​ທະ​ບູ​ລີ', '', 1),
(2, 2, 'ສີ​ໂຄດ​ຕະ​ບອງ', '', 1),
(3, 3, 'ໄຊ​ເສດ​ຖາ', '', 1),
(4, 4, 'ສີ​ສັດ​ຕະ​ນາກ', '', 1),
(5, 5, 'ນາ​ຊາຍ​ທອງ', '', 1),
(6, 6, 'ໄຊ​ທາ​ນີ', '', 1),
(7, 7, 'ຫາດ​ຊາຍ​ຟອງ', '', 1),
(8, 8, 'ສັງ​ທອງ', '', 1),
(9, 9, 'ປາກ​ງື່ມ', '', 1),
(10, 1, 'ເມືອງ​ຜົ້ົ້ງ​ສາ​ລີ', '', 2),
(11, 2, 'ເມືອງ​ໄໝ່', '', 2),
(12, 3, 'ເມືອງ​ຂວາ', '', 2),
(13, 4, 'ເມືອງ​ສຳ​ພັນ', '', 2),
(14, 5, 'ເມືອງ​ບູນ​ເໜືອ', '', 2),
(15, 6, 'ເມືອງຍອດ​ອູ', '', 2),
(16, 7, 'ເມືອງ​ບູນ​ໃຕ້', '', 2),
(17, 1, 'ເມືອງ​ນ້ຳ​ທາ', '', 3),
(18, 2, 'ເມືອງ​ສິງ', '', 3),
(19, 3, 'ເມືອງ​ລອງ', '', 3),
(20, 4, 'ເມືອງວຽງ​ພູ​ຄາ', '', 3),
(21, 5, 'ເມືອງ​ນາ​ແລ', '', 3),
(22, 1, 'ເມືອງ​ໄຊ', '', 4),
(23, 2, 'ເມືອງ​ຫຼາ', '', 4),
(24, 3, 'ເມືອງນາ​ໝໍ້', '', 4),
(25, 4, 'ເມືອງ​ງາ', '', 4),
(26, 5, 'ເມືອງ​ແບ່ງ', '', 4),
(27, 6, 'ເມືອງ​ຮຸນ', '', 4),
(28, 7, 'ເມືອງ​ປາກ​ແບ່ງ', '', 4),
(29, 1, 'ເມືອງ​ຫວ້ຍ​ຊາຍ', '', 5),
(30, 2, 'ເມືອງ​ຕົ້ົ້ນ​ເຜິ້ງ', '', 5),
(31, 3, 'ເມືອງ​ເມິງ', '', 5),
(32, 4, 'ເມືອງ​ຜາ​ອຸ​ດົມ', '', 5),
(33, 5, 'ເມືອງ​ປາກ​ທາ', '', 5),
(34, 1, 'ເມືອງ​ຫຼວງ​ພະ​ບາງ', '', 6),
(35, 2, 'ເມືອງຊຽງ​ເງິນ', '', 6),
(36, 3, 'ເມືອງ​ນານ', '', 6),
(37, 4, 'ເມືອງ​ປາກ​ອູ', '', 6),
(38, 5, 'ເມືອງ​ນ້ຳ​ບາກ', '', 6),
(39, 6, 'ເມືອງງອຍ', '', 6),
(40, 7, 'ເມືອງ​ປາກ​ແຊງ', '', 6),
(41, 8, 'ເມືອງ​ໂພນ​ໄຊ', '', 6),
(42, 9, 'ເມືອງ​ຈອມ​ເພັດ', '', 6),
(43, 10, 'ເມືອງວຽງ​ຄຳ', '', 6),
(44, 11, 'ເມືອງ​ພູ​ຄູນ', '', 6),
(45, 1, 'ເມືອງ​ຊຳ​ເໜືອ', '', 7),
(46, 2, 'ເມືອງ​ຊຽງ​ຄໍ້', '', 7),
(47, 3, 'ເມືອງວຽງ​ທອງ', '', 7),
(48, 4, 'ເມືອງວຽງ​ໄຊ', '', 7),
(49, 5, 'ເມືອງ​ຫົວ​ເມືອງ', '', 7),
(50, 6, 'ເມືອງ​ຊຳ​ໃຕ້', '', 7),
(51, 1, 'ເມືອງ​ໄຊ​ຍະ​ບູ​ລີ', '', 8),
(52, 2, 'ເມືອງ​ຄອບ', '', 8),
(53, 3, 'ເມືອງ​ຫົງ​ສາ', '', 8),
(54, 4, 'ເມືອງ​ເງິນ', '', 8),
(55, 5, 'ເມືອງ​ຊຽງ​ຫ​ອ່ນ', '', 8),
(56, 6, 'ເມືອງ​ພຽງ', '', 8),
(57, 7, 'ເມືອງ​ປາກ​ລາຍ', '', 8),
(58, 8, 'ເມືອງ​ແກ່ນ​ທ້າວ', '', 8),
(59, 9, 'ເມືອງ​ບໍ່​ແຕນ', '', 8),
(60, 10, 'ເມືອງ​ທົ່ງ​ມີ​ໄຊ', '', 8),
(61, 1, 'ເມືອງ​ແປກ', '', 9),
(62, 2, 'ເມືອງ​ຄຳ', '', 9),
(63, 3, 'ເມືອງ​ໜອງ​ແຮດ', '', 9),
(64, 4, 'ເມືອງ​ຄູນ', '', 9),
(65, 5, 'ເມືອງ​ໝອກ​ໄໝ່', '', 9),
(66, 6, 'ເມືອງ​ພູ​ກູດ', '', 9),
(67, 7, 'ເມືອງ​ຜາ​ໄຊ', '', 9),
(68, 1, 'ໂພນ​ໂຮງ', '', 10),
(69, 2, 'ທູ​ລະ​ຄົມ', '', 10),
(70, 3, '​ແກ້ວ​ອຸ​ດົມ', '', 10),
(71, 4, '​ກາ​ສີ', '', 10),
(72, 5, 'ວັງ​ວຽງ', '', 10),
(73, 6, 'ເຟືອງ', '', 10),
(74, 7, '​ຊະ​ນາ​ຄາມ', '', 10),
(75, 8, '​ແມດ', '', 10),
(76, 9, '​ຫີນ​ເຫີບ', '', 10),
(77, 10, 'ວຽງ​ຄຳ', '', 10),
(78, 1, 'ເມືອງ​ປາກ​ຊັນ', '', 11),
(79, 2, 'ເມືອງ​ທ່າ​ພະ​ບາດ', '', 11),
(80, 3, 'ເມືອງ​ປາກ​ກະ​ດິງ', '', 11),
(81, 4, 'ເມືອງ​ບໍ​ລິ​ຄັນ', '', 11),
(82, 5, 'ເມືອງ​ຄຳ​ເກີດ', '', 11),
(83, 6, 'ເມືອງວຽງ​ທອງ', '', 11),
(84, 1, 'ເມືອງ​ທ່າ​ແຂກ', '', 12),
(85, 2, 'ເມືອງ​ມະ​ຫາ​ໄຊ', '', 12),
(86, 3, 'ເມືອງ​ໜອງ​ບົກ', '', 12),
(87, 4, 'ເມືອງ​ຫີນ​ບູນ', '', 12),
(88, 5, 'ເມືອງ​ຍົມ​ມະ​ລາດ', '', 12),
(89, 6, 'ເມືອງ​ບົວ​ລະ​ພາ', '', 12),
(90, 7, 'ເມືອງ​ນາ​ກາຍ', '', 12),
(91, 8, 'ເມືອງ​ເຊ​ບັ້ງ​ໄຟ', '', 12),
(92, 9, 'ເມືອງ​ໄຊ​ບົວ​ທອງ', '', 12),
(93, 1, 'ໄກສອນພົມວິຫານ', '', 13),
(94, 2, 'ອຸ​ທຸມ​ພອນ', '', 13),
(95, 3, 'ອາດ​ສະ​ພັງ​ທອງ', '', 13),
(96, 4, '​ພິນ', '', 13),
(97, 5, 'ເຊ​ໂປນ', '', 13),
(98, 6, 'ນອງ', '', 13),
(99, 7, 'ທ່າ​ປາງ​ທອງ', '', 13),
(100, 8, 'ສອງ​ຄອນ', '', 13),
(101, 9, 'ຈຳ​ພອນ', '', 13),
(102, 10, 'ຊົນ​ບຸ​ລີ', '', 13),
(103, 11, 'ໄຊ​ບຸ​ລີ', '', 13),
(104, 1, 'ສາ​ລະ​ວັນ', '', 14),
(105, 2, 'ຕະ​ໂອຍ', '', 14),
(106, 3, 'ຕຸ້ມ​ລານ', '', 14),
(107, 4, 'ລະ​ຄອນ​ເພັງ', '', 14),
(108, 5, 'ວາ​ປີ', '', 14),
(109, 6, 'ຄົງ​ເຊ​ໂດນ', '', 14),
(110, 7, 'ເລົ່າ​ງາມ', '', 14),
(111, 8, 'ສະ​ມ່ວຍ', '', 14),
(112, 1, 'ລະ​ມາມ', '', 15),
(113, 2, 'ກະ​ລຶມ', '', 15),
(114, 3, 'ດັກ​ຈຶງ', '', 15),
(115, 1, 'ປາກ​ເຊ', '', 16),
(116, 2, 'ຊະ​ນະ​ສົມ​ບູນ', '', 16),
(117, 3, 'ບາ​ຈຽງ​ຈະ​ເລີນ​ສຸກ', '', 16),
(118, 4, 'ປາກ​ຊ່ອງ', '', 16),
(119, 5, 'ປະ​ທຸມ​ພອນ', '', 16),
(120, 6, 'ໂພນ​ທອງ', '', 16),
(121, 7, 'ຈຳ​ປາ​ສັກ', '', 16),
(122, 8, 'ສຸ​ຂຸມ​ມາ', '', 16),
(123, 9, 'ມູນ​ລະ​ປະ​ໂມກ', '', 16),
(124, 10, 'ໂຂງ', '', 16),
(125, 1, 'ໄຊ​ເສດ​ຖາ', '', 17),
(126, 2, 'ສາ​ມັກ​ຄີ​ໄຊ', '', 17),
(127, 3, 'ສະ​ໜາມ​ໄຊ', '', 17),
(128, 4, 'ສານ​ໄຊ', '', 17),
(129, 5, 'ພູ​ວົງ', '', 17),
(130, 1, 'ໄຊ​ສົມ​ບູນ', '', 18),
(131, 2, 'ທ່າ​ໂທມ', '', 18),
(132, 3, 'ຮົ່ມ', '', 18),
(133, 4, 'ລ້ອງ​ຊານ', '', 18),
(134, 5, 'ພູນ', '', 18),
(135, 7, 'ສົບເບົ້າ', '', 7),
(136, 8, 'ແອດ', '', 7),
(137, 12, 'ວິລະບູລີ', '', 13),
(138, 13, 'ອາດສະພອນ', '', 13),
(139, 14, 'ໄຊພູທອງ', '', 13),
(140, 15, 'ທ່າພະລານໄຊ', '', 13),
(141, 4, 'ທ່າແຕງ', '', 15),
(142, 11, 'ລອງຊານ', '', 10),
(143, 12, 'ຮົ່ມ', '', 10),
(144, 13, 'ໄຊສົມບູນ', '', 10),
(145, 14, 'ໜື່ນ', '', 10),
(146, 8, 'ທ່າໂທມ', '', 9),
(147, 7, 'ເມືອງໄຊຈຳພອນ', '', 11),
(148, 12, 'ເມືອງ​ໂພນທອງ', '', 6),
(149, 10, 'ເມືອງຄູນຄຳ', '', 12);

-- --------------------------------------------------------

--
-- Table structure for table `born_province`
--

CREATE TABLE `born_province` (
  `BPRO_ID` int(11) NOT NULL,
  `PROVINCENAME` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `PROVINCENAME_E` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

--
-- Dumping data for table `born_province`
--

INSERT INTO `born_province` (`BPRO_ID`, `PROVINCENAME`, `PROVINCENAME_E`) VALUES
(1, 'ນະຄອນຫຼວງວຽງຈັນ', ''),
(2, 'ຜົ້ງສາລີ', ''),
(3, 'ຫຼວງນ້ຳທາ', ''),
(4, 'ອຸດົມໄຊ', ''),
(5, 'ບໍ່ແກ້ວ', ''),
(6, 'ຫຼວງພະບາງ', ''),
(7, 'ຫົວພັນ', ''),
(8, 'ໄຊຍະບູລີ', ''),
(9, 'ຊຽງຂວາງ', ''),
(10, 'ແຂວງວຽງຈັນ', ''),
(11, 'ບໍລິຄຳໄຊ', ''),
(12, 'ຄຳມ່ວນ', ''),
(13, 'ສະຫວັນນະເຂດ', ''),
(14, 'ສາລະວັນ', ''),
(15, 'ເຊກອງ', ''),
(16, 'ຈຳປາສັກ', ''),
(17, 'ອັດຕະປື', ''),
(18, 'ໄຊສົມບູນ', '');

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `Buil_ID` varchar(10) NOT NULL,
  `Buil_Name` varchar(50) DEFAULT NULL,
  `Buil_Location` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `Class_ID` int(5) NOT NULL,
  `Class_Name` varchar(80) NOT NULL,
  `Year_ID` int(5) NOT NULL,
  `Marjor_ID` int(5) NOT NULL,
  `Sect_ID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`Class_ID`, `Class_Name`, `Year_ID`, `Marjor_ID`, `Sect_ID`) VALUES
(1, '1FNA1', 1, 1, 1),
(2, '1FNA2', 1, 1, 1),
(3, '2FNA1', 2, 1, 0),
(4, '2FNA2', 2, 1, 0),
(5, '3FNA1', 3, 1, 0),
(6, '3FNA2', 3, 1, 0),
(7, '1ENG1', 1, 2, 0),
(8, '1ENG2', 1, 2, 0),
(9, '2ENG1', 2, 2, 0),
(10, '2ENG2', 2, 2, 0),
(11, '3ENG1', 3, 2, 0),
(12, '3ENG2', 3, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `curriculum`
--

CREATE TABLE `curriculum` (
  `Curi_ID` varchar(8) NOT NULL,
  `Cur_Name_E` varchar(100) DEFAULT NULL,
  `Cur_Name_L` varchar(100) NOT NULL,
  `Dept_ID` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `curriculum`
--

INSERT INTO `curriculum` (`Curi_ID`, `Cur_Name_E`, `Cur_Name_L`, `Dept_ID`) VALUES
('1', NULL, 'ຊັ້ນສູງ', 0),
('2', NULL, 'ປະລິນຍາຕີ', 0),
('3', NULL, 'ຝຶກອົບຮົມໄລຍະສັ້ນ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `curriculumdetail`
--

CREATE TABLE `curriculumdetail` (
  `Curi_ID` int(8) NOT NULL,
  `Sub_ID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Term_ID` int(8) NOT NULL,
  `Year_ID` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cur_district`
--

CREATE TABLE `cur_district` (
  `curdist_ID` int(11) NOT NULL,
  `CODE` int(11) DEFAULT NULL,
  `DISTRICNAME` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `DISTRICTNAME_E` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `CPRO_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

--
-- Dumping data for table `cur_district`
--

INSERT INTO `cur_district` (`curdist_ID`, `CODE`, `DISTRICNAME`, `DISTRICTNAME_E`, `CPRO_ID`) VALUES
(1, 1, 'ຈັນ​ທະ​ບູ​ລີ', '', 1),
(2, 2, 'ສີ​ໂຄດ​ຕະ​ບອງ', '', 1),
(3, 3, 'ໄຊ​ເສດ​ຖາ', '', 1),
(4, 4, 'ສີ​ສັດ​ຕະ​ນາກ', '', 1),
(5, 5, 'ນາ​ຊາຍ​ທອງ', '', 1),
(6, 6, 'ໄຊ​ທາ​ນີ', '', 1),
(7, 7, 'ຫາດ​ຊາຍ​ຟອງ', '', 1),
(8, 8, 'ສັງ​ທອງ', '', 1),
(9, 9, 'ປາກ​ງື່ມ', '', 1),
(10, 1, 'ເມືອງ​ຜົ້ົ້ງ​ສາ​ລີ', '', 2),
(11, 2, 'ເມືອງ​ໄໝ່', '', 2),
(12, 3, 'ເມືອງ​ຂວາ', '', 2),
(13, 4, 'ເມືອງ​ສຳ​ພັນ', '', 2),
(14, 5, 'ເມືອງ​ບູນ​ເໜືອ', '', 2),
(15, 6, 'ເມືອງຍອດ​ອູ', '', 2),
(16, 7, 'ເມືອງ​ບູນ​ໃຕ້', '', 2),
(17, 1, 'ເມືອງ​ນ້ຳ​ທາ', '', 3),
(18, 2, 'ເມືອງ​ສິງ', '', 3),
(19, 3, 'ເມືອງ​ລອງ', '', 3),
(20, 4, 'ເມືອງວຽງ​ພູ​ຄາ', '', 3),
(21, 5, 'ເມືອງ​ນາ​ແລ', '', 3),
(22, 1, 'ເມືອງ​ໄຊ', '', 4),
(23, 2, 'ເມືອງ​ຫຼາ', '', 4),
(24, 3, 'ເມືອງນາ​ໝໍ້', '', 4),
(25, 4, 'ເມືອງ​ງາ', '', 4),
(26, 5, 'ເມືອງ​ແບ່ງ', '', 4),
(27, 6, 'ເມືອງ​ຮຸນ', '', 4),
(28, 7, 'ເມືອງ​ປາກ​ແບ່ງ', '', 4),
(29, 1, 'ເມືອງ​ຫວ້ຍ​ຊາຍ', '', 5),
(30, 2, 'ເມືອງ​ຕົ້ົ້ນ​ເຜິ້ງ', '', 5),
(31, 3, 'ເມືອງ​ເມິງ', '', 5),
(32, 4, 'ເມືອງ​ຜາ​ອຸ​ດົມ', '', 5),
(33, 5, 'ເມືອງ​ປາກ​ທາ', '', 5),
(34, 1, 'ເມືອງ​ຫຼວງ​ພະ​ບາງ', '', 6),
(35, 2, 'ເມືອງຊຽງ​ເງິນ', '', 6),
(36, 3, 'ເມືອງ​ນານ', '', 6),
(37, 4, 'ເມືອງ​ປາກ​ອູ', '', 6),
(38, 5, 'ເມືອງ​ນ້ຳ​ບາກ', '', 6),
(39, 6, 'ເມືອງງອຍ', '', 6),
(40, 7, 'ເມືອງ​ປາກ​ແຊງ', '', 6),
(41, 8, 'ເມືອງ​ໂພນ​ໄຊ', '', 6),
(42, 9, 'ເມືອງ​ຈອມ​ເພັດ', '', 6),
(43, 10, 'ເມືອງວຽງ​ຄຳ', '', 6),
(44, 11, 'ເມືອງ​ພູ​ຄູນ', '', 6),
(45, 1, 'ເມືອງ​ຊຳ​ເໜືອ', '', 7),
(46, 2, 'ເມືອງ​ຊຽງ​ຄໍ້', '', 7),
(47, 3, 'ເມືອງວຽງ​ທອງ', '', 7),
(48, 4, 'ເມືອງວຽງ​ໄຊ', '', 7),
(49, 5, 'ເມືອງ​ຫົວ​ເມືອງ', '', 7),
(50, 6, 'ເມືອງ​ຊຳ​ໃຕ້', '', 7),
(51, 1, 'ເມືອງ​ໄຊ​ຍະ​ບູ​ລີ', '', 8),
(52, 2, 'ເມືອງ​ຄອບ', '', 8),
(53, 3, 'ເມືອງ​ຫົງ​ສາ', '', 8),
(54, 4, 'ເມືອງ​ເງິນ', '', 8),
(55, 5, 'ເມືອງ​ຊຽງ​ຫ​ອ່ນ', '', 8),
(56, 6, 'ເມືອງ​ພຽງ', '', 8),
(57, 7, 'ເມືອງ​ປາກ​ລາຍ', '', 8),
(58, 8, 'ເມືອງ​ແກ່ນ​ທ້າວ', '', 8),
(59, 9, 'ເມືອງ​ບໍ່​ແຕນ', '', 8),
(60, 10, 'ເມືອງ​ທົ່ງ​ມີ​ໄຊ', '', 8),
(61, 1, 'ເມືອງ​ແປກ', '', 9),
(62, 2, 'ເມືອງ​ຄຳ', '', 9),
(63, 3, 'ເມືອງ​ໜອງ​ແຮດ', '', 9),
(64, 4, 'ເມືອງ​ຄູນ', '', 9),
(65, 5, 'ເມືອງ​ໝອກ​ໄໝ່', '', 9),
(66, 6, 'ເມືອງ​ພູ​ກູດ', '', 9),
(67, 7, 'ເມືອງ​ຜາ​ໄຊ', '', 9),
(68, 1, 'ໂພນ​ໂຮງ', '', 10),
(69, 2, 'ທູ​ລະ​ຄົມ', '', 10),
(70, 3, '​ແກ້ວ​ອຸ​ດົມ', '', 10),
(71, 4, '​ກາ​ສີ', '', 10),
(72, 5, 'ວັງ​ວຽງ', '', 10),
(73, 6, 'ເຟືອງ', '', 10),
(74, 7, '​ຊະ​ນາ​ຄາມ', '', 10),
(75, 8, '​ແມດ', '', 10),
(76, 9, '​ຫີນ​ເຫີບ', '', 10),
(77, 10, 'ວຽງ​ຄຳ', '', 10),
(78, 1, 'ເມືອງ​ປາກ​ຊັນ', '', 11),
(79, 2, 'ເມືອງ​ທ່າ​ພະ​ບາດ', '', 11),
(80, 3, 'ເມືອງ​ປາກ​ກະ​ດິງ', '', 11),
(81, 4, 'ເມືອງ​ບໍ​ລິ​ຄັນ', '', 11),
(82, 5, 'ເມືອງ​ຄຳ​ເກີດ', '', 11),
(83, 6, 'ເມືອງວຽງ​ທອງ', '', 11),
(84, 1, 'ເມືອງ​ທ່າ​ແຂກ', '', 12),
(85, 2, 'ເມືອງ​ມະ​ຫາ​ໄຊ', '', 12),
(86, 3, 'ເມືອງ​ໜອງ​ບົກ', '', 12),
(87, 4, 'ເມືອງ​ຫີນ​ບູນ', '', 12),
(88, 5, 'ເມືອງ​ຍົມ​ມະ​ລາດ', '', 12),
(89, 6, 'ເມືອງ​ບົວ​ລະ​ພາ', '', 12),
(90, 7, 'ເມືອງ​ນາ​ກາຍ', '', 12),
(91, 8, 'ເມືອງ​ເຊ​ບັ້ງ​ໄຟ', '', 12),
(92, 9, 'ເມືອງ​ໄຊ​ບົວ​ທອງ', '', 12),
(93, 1, 'ໄກສອນພົມວິຫານ', '', 13),
(94, 2, 'ອຸ​ທຸມ​ພອນ', '', 13),
(95, 3, 'ອາດ​ສະ​ພັງ​ທອງ', '', 13),
(96, 4, '​ພິນ', '', 13),
(97, 5, 'ເຊ​ໂປນ', '', 13),
(98, 6, 'ນອງ', '', 13),
(99, 7, 'ທ່າ​ປາງ​ທອງ', '', 13),
(100, 8, 'ສອງ​ຄອນ', '', 13),
(101, 9, 'ຈຳ​ພອນ', '', 13),
(102, 10, 'ຊົນ​ບຸ​ລີ', '', 13),
(103, 11, 'ໄຊ​ບຸ​ລີ', '', 13),
(104, 1, 'ສາ​ລະ​ວັນ', '', 14),
(105, 2, 'ຕະ​ໂອຍ', '', 14),
(106, 3, 'ຕຸ້ມ​ລານ', '', 14),
(107, 4, 'ລະ​ຄອນ​ເພັງ', '', 14),
(108, 5, 'ວາ​ປີ', '', 14),
(109, 6, 'ຄົງ​ເຊ​ໂດນ', '', 14),
(110, 7, 'ເລົ່າ​ງາມ', '', 14),
(111, 8, 'ສະ​ມ່ວຍ', '', 14),
(112, 1, 'ລະ​ມາມ', '', 15),
(113, 2, 'ກະ​ລຶມ', '', 15),
(114, 3, 'ດັກ​ຈຶງ', '', 15),
(115, 1, 'ປາກ​ເຊ', '', 16),
(116, 2, 'ຊະ​ນະ​ສົມ​ບູນ', '', 16),
(117, 3, 'ບາ​ຈຽງ​ຈະ​ເລີນ​ສຸກ', '', 16),
(118, 4, 'ປາກ​ຊ່ອງ', '', 16),
(119, 5, 'ປະ​ທຸມ​ພອນ', '', 16),
(120, 6, 'ໂພນ​ທອງ', '', 16),
(121, 7, 'ຈຳ​ປາ​ສັກ', '', 16),
(122, 8, 'ສຸ​ຂຸມ​ມາ', '', 16),
(123, 9, 'ມູນ​ລະ​ປະ​ໂມກ', '', 16),
(124, 10, 'ໂຂງ', '', 16),
(125, 1, 'ໄຊ​ເສດ​ຖາ', '', 17),
(126, 2, 'ສາ​ມັກ​ຄີ​ໄຊ', '', 17),
(127, 3, 'ສະ​ໜາມ​ໄຊ', '', 17),
(128, 4, 'ສານ​ໄຊ', '', 17),
(129, 5, 'ພູ​ວົງ', '', 17),
(130, 1, 'ໄຊ​ສົມ​ບູນ', '', 18),
(131, 2, 'ທ່າ​ໂທມ', '', 18),
(132, 3, 'ຮົ່ມ', '', 18),
(133, 4, 'ລ້ອງ​ຊານ', '', 18),
(134, 5, 'ພູນ', '', 18),
(135, 7, 'ສົບເບົ້າ', '', 7),
(136, 8, 'ແອດ', '', 7),
(137, 12, 'ວິລະບູລີ', '', 13),
(138, 13, 'ອາດສະພອນ', '', 13),
(139, 14, 'ໄຊພູທອງ', '', 13),
(140, 15, 'ທ່າພະລານໄຊ', '', 13),
(141, 4, 'ທ່າແຕງ', '', 15),
(142, 11, 'ລອງຊານ', '', 10),
(143, 12, 'ຮົ່ມ', '', 10),
(144, 13, 'ໄຊສົມບູນ', '', 10),
(145, 14, 'ໜື່ນ', '', 10),
(146, 8, 'ທ່າໂທມ', '', 9),
(147, 7, 'ເມືອງໄຊຈຳພອນ', '', 11),
(148, 12, 'ເມືອງ​ໂພນທອງ', '', 6),
(149, 10, 'ເມືອງຄູນຄຳ', '', 12);

-- --------------------------------------------------------

--
-- Table structure for table `cur_province`
--

CREATE TABLE `cur_province` (
  `CPRO_ID` int(11) NOT NULL,
  `PROVINCENAME` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `PROVINCENAME_E` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2;

--
-- Dumping data for table `cur_province`
--

INSERT INTO `cur_province` (`CPRO_ID`, `PROVINCENAME`, `PROVINCENAME_E`) VALUES
(1, 'ນະຄອນຫຼວງວຽງຈັນ', ''),
(2, 'ຜົ້ງສາລີ', ''),
(3, 'ຫຼວງນ້ຳທາ', ''),
(4, 'ອຸດົມໄຊ', ''),
(5, 'ບໍ່ແກ້ວ', ''),
(6, 'ຫຼວງພະບາງ', ''),
(7, 'ຫົວພັນ', ''),
(8, 'ໄຊຍະບູລີ', ''),
(9, 'ຊຽງຂວາງ', ''),
(10, 'ແຂວງວຽງຈັນ', ''),
(11, 'ບໍລິຄຳໄຊ', ''),
(12, 'ຄຳມ່ວນ', ''),
(13, 'ສະຫວັນນະເຂດ', ''),
(14, 'ສາລະວັນ', ''),
(15, 'ເຊກອງ', ''),
(16, 'ຈຳປາສັກ', ''),
(17, 'ອັດຕະປື', ''),
(18, 'ໄຊສົມບູນ', '');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `DISTRICT_ID` int(11) NOT NULL,
  `CODE` int(11) DEFAULT NULL,
  `DISTRICNAME` varchar(45) DEFAULT NULL,
  `DISTRICTNAME_E` varchar(100) NOT NULL,
  `PROVINCE_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`DISTRICT_ID`, `CODE`, `DISTRICNAME`, `DISTRICTNAME_E`, `PROVINCE_ID`) VALUES
(1, 1, 'ຈັນ​ທະ​ບູ​ລີ', '', 1),
(2, 2, 'ສີ​ໂຄດ​ຕະ​ບອງ', '', 1),
(3, 3, 'ໄຊ​ເສດ​ຖາ', '', 1),
(4, 4, 'ສີ​ສັດ​ຕະ​ນາກ', '', 1),
(5, 5, 'ນາ​ຊາຍ​ທອງ', '', 1),
(6, 6, 'ໄຊ​ທາ​ນີ', '', 1),
(7, 7, 'ຫາດ​ຊາຍ​ຟອງ', '', 1),
(8, 8, 'ສັງ​ທອງ', '', 1),
(9, 9, 'ປາກ​ງື່ມ', '', 1),
(10, 1, 'ເມືອງ​ຜົ້ົ້ງ​ສາ​ລີ', '', 2),
(11, 2, 'ເມືອງ​ໄໝ່', '', 2),
(12, 3, 'ເມືອງ​ຂວາ', '', 2),
(13, 4, 'ເມືອງ​ສຳ​ພັນ', '', 2),
(14, 5, 'ເມືອງ​ບູນ​ເໜືອ', '', 2),
(15, 6, 'ເມືອງຍອດ​ອູ', '', 2),
(16, 7, 'ເມືອງ​ບູນ​ໃຕ້', '', 2),
(17, 1, 'ເມືອງ​ນ້ຳ​ທາ', '', 3),
(18, 2, 'ເມືອງ​ສິງ', '', 3),
(19, 3, 'ເມືອງ​ລອງ', '', 3),
(20, 4, 'ເມືອງວຽງ​ພູ​ຄາ', '', 3),
(21, 5, 'ເມືອງ​ນາ​ແລ', '', 3),
(22, 1, 'ເມືອງ​ໄຊ', '', 4),
(23, 2, 'ເມືອງ​ຫຼາ', '', 4),
(24, 3, 'ເມືອງນາ​ໝໍ້', '', 4),
(25, 4, 'ເມືອງ​ງາ', '', 4),
(26, 5, 'ເມືອງ​ແບ່ງ', '', 4),
(27, 6, 'ເມືອງ​ຮຸນ', '', 4),
(28, 7, 'ເມືອງ​ປາກ​ແບ່ງ', '', 4),
(29, 1, 'ເມືອງ​ຫວ້ຍ​ຊາຍ', '', 5),
(30, 2, 'ເມືອງ​ຕົ້ົ້ນ​ເຜິ້ງ', '', 5),
(31, 3, 'ເມືອງ​ເມິງ', '', 5),
(32, 4, 'ເມືອງ​ຜາ​ອຸ​ດົມ', '', 5),
(33, 5, 'ເມືອງ​ປາກ​ທາ', '', 5),
(34, 1, 'ເມືອງ​ຫຼວງ​ພະ​ບາງ', '', 6),
(35, 2, 'ເມືອງຊຽງ​ເງິນ', '', 6),
(36, 3, 'ເມືອງ​ນານ', '', 6),
(37, 4, 'ເມືອງ​ປາກ​ອູ', '', 6),
(38, 5, 'ເມືອງ​ນ້ຳ​ບາກ', '', 6),
(39, 6, 'ເມືອງງອຍ', '', 6),
(40, 7, 'ເມືອງ​ປາກ​ແຊງ', '', 6),
(41, 8, 'ເມືອງ​ໂພນ​ໄຊ', '', 6),
(42, 9, 'ເມືອງ​ຈອມ​ເພັດ', '', 6),
(43, 10, 'ເມືອງວຽງ​ຄຳ', '', 6),
(44, 11, 'ເມືອງ​ພູ​ຄູນ', '', 6),
(45, 1, 'ເມືອງ​ຊຳ​ເໜືອ', '', 7),
(46, 2, 'ເມືອງ​ຊຽງ​ຄໍ້', '', 7),
(47, 3, 'ເມືອງວຽງ​ທອງ', '', 7),
(48, 4, 'ເມືອງວຽງ​ໄຊ', '', 7),
(49, 5, 'ເມືອງ​ຫົວ​ເມືອງ', '', 7),
(50, 6, 'ເມືອງ​ຊຳ​ໃຕ້', '', 7),
(51, 1, 'ເມືອງ​ໄຊ​ຍະ​ບູ​ລີ', '', 8),
(52, 2, 'ເມືອງ​ຄອບ', '', 8),
(53, 3, 'ເມືອງ​ຫົງ​ສາ', '', 8),
(54, 4, 'ເມືອງ​ເງິນ', '', 8),
(55, 5, 'ເມືອງ​ຊຽງ​ຫ​ອ່ນ', '', 8),
(56, 6, 'ເມືອງ​ພຽງ', '', 8),
(57, 7, 'ເມືອງ​ປາກ​ລາຍ', '', 8),
(58, 8, 'ເມືອງ​ແກ່ນ​ທ້າວ', '', 8),
(59, 9, 'ເມືອງ​ບໍ່​ແຕນ', '', 8),
(60, 10, 'ເມືອງ​ທົ່ງ​ມີ​ໄຊ', '', 8),
(61, 1, 'ເມືອງ​ແປກ', '', 9),
(62, 2, 'ເມືອງ​ຄຳ', '', 9),
(63, 3, 'ເມືອງ​ໜອງ​ແຮດ', '', 9),
(64, 4, 'ເມືອງ​ຄູນ', '', 9),
(65, 5, 'ເມືອງ​ໝອກ​ໄໝ່', '', 9),
(66, 6, 'ເມືອງ​ພູ​ກູດ', '', 9),
(67, 7, 'ເມືອງ​ຜາ​ໄຊ', '', 9),
(68, 1, 'ໂພນ​ໂຮງ', '', 10),
(69, 2, 'ທູ​ລະ​ຄົມ', '', 10),
(70, 3, '​ແກ້ວ​ອຸ​ດົມ', '', 10),
(71, 4, '​ກາ​ສີ', '', 10),
(72, 5, 'ວັງ​ວຽງ', '', 10),
(73, 6, 'ເຟືອງ', '', 10),
(74, 7, '​ຊະ​ນາ​ຄາມ', '', 10),
(75, 8, '​ແມດ', '', 10),
(76, 9, '​ຫີນ​ເຫີບ', '', 10),
(77, 10, 'ວຽງ​ຄຳ', '', 10),
(78, 1, 'ເມືອງ​ປາກ​ຊັນ', '', 11),
(79, 2, 'ເມືອງ​ທ່າ​ພະ​ບາດ', '', 11),
(80, 3, 'ເມືອງ​ປາກ​ກະ​ດິງ', '', 11),
(81, 4, 'ເມືອງ​ບໍ​ລິ​ຄັນ', '', 11),
(82, 5, 'ເມືອງ​ຄຳ​ເກີດ', '', 11),
(83, 6, 'ເມືອງວຽງ​ທອງ', '', 11),
(84, 1, 'ເມືອງ​ທ່າ​ແຂກ', '', 12),
(85, 2, 'ເມືອງ​ມະ​ຫາ​ໄຊ', '', 12),
(86, 3, 'ເມືອງ​ໜອງ​ບົກ', '', 12),
(87, 4, 'ເມືອງ​ຫີນ​ບູນ', '', 12),
(88, 5, 'ເມືອງ​ຍົມ​ມະ​ລາດ', '', 12),
(89, 6, 'ເມືອງ​ບົວ​ລະ​ພາ', '', 12),
(90, 7, 'ເມືອງ​ນາ​ກາຍ', '', 12),
(91, 8, 'ເມືອງ​ເຊ​ບັ້ງ​ໄຟ', '', 12),
(92, 9, 'ເມືອງ​ໄຊ​ບົວ​ທອງ', '', 12),
(93, 1, 'ໄກສອນພົມວິຫານ', '', 13),
(94, 2, 'ອຸ​ທຸມ​ພອນ', '', 13),
(95, 3, 'ອາດ​ສະ​ພັງ​ທອງ', '', 13),
(96, 4, '​ພິນ', '', 13),
(97, 5, 'ເຊ​ໂປນ', '', 13),
(98, 6, 'ນອງ', '', 13),
(99, 7, 'ທ່າ​ປາງ​ທອງ', '', 13),
(100, 8, 'ສອງ​ຄອນ', '', 13),
(101, 9, 'ຈຳ​ພອນ', '', 13),
(102, 10, 'ຊົນ​ບຸ​ລີ', '', 13),
(103, 11, 'ໄຊ​ບຸ​ລີ', '', 13),
(104, 1, 'ສາ​ລະ​ວັນ', '', 14),
(105, 2, 'ຕະ​ໂອຍ', '', 14),
(106, 3, 'ຕຸ້ມ​ລານ', '', 14),
(107, 4, 'ລະ​ຄອນ​ເພັງ', '', 14),
(108, 5, 'ວາ​ປີ', '', 14),
(109, 6, 'ຄົງ​ເຊ​ໂດນ', '', 14),
(110, 7, 'ເລົ່າ​ງາມ', '', 14),
(111, 8, 'ສະ​ມ່ວຍ', '', 14),
(112, 1, 'ລະ​ມາມ', '', 15),
(113, 2, 'ກະ​ລຶມ', '', 15),
(114, 3, 'ດັກ​ຈຶງ', '', 15),
(115, 1, 'ປາກ​ເຊ', '', 16),
(116, 2, 'ຊະ​ນະ​ສົມ​ບູນ', '', 16),
(117, 3, 'ບາ​ຈຽງ​ຈະ​ເລີນ​ສຸກ', '', 16),
(118, 4, 'ປາກ​ຊ່ອງ', '', 16),
(119, 5, 'ປະ​ທຸມ​ພອນ', '', 16),
(120, 6, 'ໂພນ​ທອງ', '', 16),
(121, 7, 'ຈຳ​ປາ​ສັກ', '', 16),
(122, 8, 'ສຸ​ຂຸມ​ມາ', '', 16),
(123, 9, 'ມູນ​ລະ​ປະ​ໂມກ', '', 16),
(124, 10, 'ໂຂງ', '', 16),
(125, 1, 'ໄຊ​ເສດ​ຖາ', '', 17),
(126, 2, 'ສາ​ມັກ​ຄີ​ໄຊ', '', 17),
(127, 3, 'ສະ​ໜາມ​ໄຊ', '', 17),
(128, 4, 'ສານ​ໄຊ', '', 17),
(129, 5, 'ພູ​ວົງ', '', 17),
(130, 1, 'ໄຊ​ສົມ​ບູນ', '', 18),
(131, 2, 'ທ່າ​ໂທມ', '', 18),
(132, 3, 'ຮົ່ມ', '', 18),
(133, 4, 'ລ້ອງ​ຊານ', '', 18),
(134, 5, 'ພູນ', '', 18),
(135, 7, 'ສົບເບົ້າ', '', 7),
(136, 8, 'ແອດ', '', 7),
(137, 12, 'ວິລະບູລີ', '', 13),
(138, 13, 'ອາດສະພອນ', '', 13),
(139, 14, 'ໄຊພູທອງ', '', 13),
(140, 15, 'ທ່າພະລານໄຊ', '', 13),
(141, 4, 'ທ່າແຕງ', '', 15),
(142, 11, 'ລອງຊານ', '', 10),
(143, 12, 'ຮົ່ມ', '', 10),
(144, 13, 'ໄຊສົມບູນ', '', 10),
(145, 14, 'ໜື່ນ', '', 10),
(146, 8, 'ທ່າໂທມ', '', 9),
(147, 7, 'ເມືອງໄຊຈຳພອນ', '', 11),
(148, 12, 'ເມືອງ​ໂພນທອງ', '', 6),
(149, 10, 'ເມືອງຄູນຄຳ', '', 12);

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `Major_ID` int(5) NOT NULL,
  `Major_Name_E` varchar(100) DEFAULT NULL,
  `Major_Name_L` varchar(100) NOT NULL,
  `Curi_ID` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `major`
--

INSERT INTO `major` (`Major_ID`, `Major_Name_E`, `Major_Name_L`, `Curi_ID`) VALUES
(1, NULL, 'ການເງິນການບັນຊີ', 1),
(2, NULL, 'ພາສາອັງກິດທຸລະກິດ', 1),
(3, NULL, 'ຄອມພີວເຕີພື້ນຖານ', 3);

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `PROVINCE_ID` int(11) NOT NULL,
  `PROVINCENAME` varchar(45) DEFAULT NULL,
  `PROVINCENAME_E` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`PROVINCE_ID`, `PROVINCENAME`, `PROVINCENAME_E`) VALUES
(1, 'ນະຄອນຫຼວງວຽງຈັນ', ''),
(2, 'ຜົ້ງສາລີ', ''),
(3, 'ຫຼວງນ້ຳທາ', ''),
(4, 'ອຸດົມໄຊ', ''),
(5, 'ບໍ່ແກ້ວ', ''),
(6, 'ຫຼວງພະບາງ', ''),
(7, 'ຫົວພັນ', ''),
(8, 'ໄຊຍະບູລີ', ''),
(9, 'ຊຽງຂວາງ', ''),
(10, 'ແຂວງວຽງຈັນ', ''),
(11, 'ບໍລິຄຳໄຊ', ''),
(12, 'ຄຳມ່ວນ', ''),
(13, 'ສະຫວັນນະເຂດ', ''),
(14, 'ສາລະວັນ', ''),
(15, 'ເຊກອງ', ''),
(16, 'ຈຳປາສັກ', ''),
(17, 'ອັດຕະປື', ''),
(18, 'ໄຊສົມບູນ', '');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `Reg_ID` int(11) NOT NULL,
  `Acad_ID` int(1) NOT NULL,
  `Std_ID` varchar(50) NOT NULL,
  `Major_ID` varchar(10) NOT NULL,
  `Class_ID` varchar(50) DEFAULT NULL,
  `Term_ID` varchar(50) NOT NULL,
  `Year_ID` varchar(50) NOT NULL,
  `Sect_ID` varchar(50) DEFAULT NULL,
  `Staff_ID` varchar(50) DEFAULT NULL,
  `Reg_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `Room_ID` varchar(50) NOT NULL,
  `Room_Name` varchar(50) DEFAULT NULL,
  `Room_Type` varchar(50) DEFAULT NULL,
  `Num_Student` int(8) DEFAULT NULL,
  `Buil_ID` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `Sect_ID` int(5) NOT NULL,
  `Sect_Name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Sect_Name_E` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`Sect_ID`, `Sect_Name`, `Sect_Name_E`) VALUES
(1, 'ພາກເຊົ້າ', ''),
(2, 'ພາກບ່າຍ', ''),
(3, 'ພາກຄໍ່າ', ''),
(4, 'ເສົາ-ອາທິດ', '');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `Staff_ID` varchar(10) NOT NULL,
  `Staff_Name` varchar(50) NOT NULL,
  `Staff_Surname` varchar(50) NOT NULL,
  `Staff_Gender` varchar(10) NOT NULL,
  `Staff_Dob` date DEFAULT NULL,
  `Staff_Education` varchar(50) DEFAULT NULL,
  `Section_ID` int(11) DEFAULT NULL,
  `Position_ID` varchar(10) DEFAULT NULL,
  `Tel` varchar(15) NOT NULL,
  `Emergency_Call` varchar(12) NOT NULL,
  `Email` varchar(15) NOT NULL,
  `Prov_Cur` int(5) NOT NULL,
  `Dist_Cur` int(5) NOT NULL,
  `Village_Cur` varchar(100) NOT NULL,
  `Pictpath` varchar(15) NOT NULL,
  `Picture` varchar(15) NOT NULL,
  `Staff_Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Std_ID` varchar(20) NOT NULL,
  `Std_Title_E` varchar(50) DEFAULT NULL,
  `Std_Title_L` varchar(50) DEFAULT NULL,
  `Std_Name_E` varchar(50) DEFAULT NULL,
  `Std_Name_L` varchar(50) DEFAULT NULL,
  `Std_Surname_E` varchar(50) DEFAULT NULL,
  `Std_Surname_L` varchar(50) DEFAULT NULL,
  `Std_Gender` varchar(10) DEFAULT NULL,
  `Std_Dob` date NOT NULL,
  `curdist_ID` int(5) NOT NULL,
  `Village_Dob` varchar(100) DEFAULT NULL,
  `Std_Email` varchar(50) DEFAULT NULL,
  `Std_Mobile` varchar(50) DEFAULT NULL,
  `bdist_ID` int(11) DEFAULT NULL,
  `Village_Cur` varchar(100) DEFAULT NULL,
  `Std_Pictpath` varchar(150) DEFAULT NULL,
  `Std_Picture` longblob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `Sub_ID` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `Sub_Name_L` varchar(100) CHARACTER SET utf8 NOT NULL,
  `Sub_Name_E` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Sub_Credit` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `Tch_ID` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Tch_title_E` varchar(50) DEFAULT NULL,
  `Tch_title_L` varchar(50) NOT NULL,
  `Tch_Name_E` varchar(50) DEFAULT NULL,
  `Tch_Name_L` varchar(50) NOT NULL,
  `Tch_Surname_E` varchar(40) DEFAULT NULL,
  `Tch_Surname_L` varchar(40) NOT NULL,
  `Tch_DOB` date NOT NULL,
  `Tch_Workplace` date NOT NULL,
  `Pro_Work` int(5) NOT NULL,
  `Dist_Work` int(5) NOT NULL,
  `Village_Work` varchar(100) NOT NULL,
  `Tch_Email` varchar(50) DEFAULT NULL,
  `Tch_Mobile` varchar(15) DEFAULT NULL,
  `Tch_Emercall` varchar(12) NOT NULL,
  `Prov_Cur` int(5) NOT NULL,
  `Dist_Cur` int(5) NOT NULL,
  `Village_Cur` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `teaching`
--

CREATE TABLE `teaching` (
  `Tch_ID` int(5) NOT NULL,
  `Major_ID` int(5) NOT NULL,
  `Acad_ID` int(5) NOT NULL,
  `Year_ID` int(5) NOT NULL,
  `Sub_ID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE `term` (
  `Term_ID` int(5) NOT NULL,
  `Term_Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `term`
--

INSERT INTO `term` (`Term_ID`, `Term_Name`) VALUES
(1, 'ພາກຮຽນ I'),
(2, 'ພາກຮຽນ II');

-- --------------------------------------------------------

--
-- Table structure for table `termsetting`
--

CREATE TABLE `termsetting` (
  `Tset_ID` int(5) NOT NULL,
  `Major_ID` int(5) DEFAULT NULL,
  `Year_ID` int(5) DEFAULT NULL,
  `Term_ID` int(5) DEFAULT NULL,
  `Cost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `yearlevel`
--

CREATE TABLE `yearlevel` (
  `Year_ID` int(5) NOT NULL,
  `Year_Name` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `yearlevel`
--

INSERT INTO `yearlevel` (`Year_ID`, `Year_Name`) VALUES
(1, 'ປີ 1'),
(2, 'ປີ 2'),
(3, 'ປີ 3'),
(4, 'ປີ 4');

-- --------------------------------------------------------

--
-- Table structure for table `yearsetting`
--

CREATE TABLE `yearsetting` (
  `Yset_ID` int(5) NOT NULL,
  `Major_ID` int(10) DEFAULT NULL,
  `Year_ID` int(5) DEFAULT NULL,
  `Cost` int(11) DEFAULT NULL,
  `Distcount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academicyear`
--
ALTER TABLE `academicyear`
  ADD PRIMARY KEY (`Acad_ID`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`Bill_ID`,`Reg_ID`);

--
-- Indexes for table `born_district`
--
ALTER TABLE `born_district`
  ADD PRIMARY KEY (`bdist_ID`),
  ADD KEY `born_district_ibfk_1` (`BPRO_ID`);

--
-- Indexes for table `born_province`
--
ALTER TABLE `born_province`
  ADD PRIMARY KEY (`BPRO_ID`);

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`Buil_ID`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`Class_ID`);

--
-- Indexes for table `curriculum`
--
ALTER TABLE `curriculum`
  ADD PRIMARY KEY (`Curi_ID`);

--
-- Indexes for table `curriculumdetail`
--
ALTER TABLE `curriculumdetail`
  ADD PRIMARY KEY (`Curi_ID`,`Sub_ID`),
  ADD KEY `Sub_ID` (`Sub_ID`);

--
-- Indexes for table `cur_district`
--
ALTER TABLE `cur_district`
  ADD PRIMARY KEY (`curdist_ID`),
  ADD KEY `cur_district_ibfk_1` (`CPRO_ID`);

--
-- Indexes for table `cur_province`
--
ALTER TABLE `cur_province`
  ADD PRIMARY KEY (`CPRO_ID`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`DISTRICT_ID`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD PRIMARY KEY (`Major_ID`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`PROVINCE_ID`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`Reg_ID`,`Std_ID`,`Major_ID`,`Term_ID`,`Year_ID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`Room_ID`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`Sect_ID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`Staff_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Std_ID`),
  ADD KEY `curdist_ID` (`curdist_ID`),
  ADD KEY `bdist_ID` (`bdist_ID`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`Sub_ID`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`Tch_ID`);

--
-- Indexes for table `teaching`
--
ALTER TABLE `teaching`
  ADD PRIMARY KEY (`Tch_ID`,`Major_ID`,`Acad_ID`,`Year_ID`,`Sub_ID`);

--
-- Indexes for table `term`
--
ALTER TABLE `term`
  ADD PRIMARY KEY (`Term_ID`);

--
-- Indexes for table `termsetting`
--
ALTER TABLE `termsetting`
  ADD PRIMARY KEY (`Tset_ID`);

--
-- Indexes for table `yearlevel`
--
ALTER TABLE `yearlevel`
  ADD PRIMARY KEY (`Year_ID`);

--
-- Indexes for table `yearsetting`
--
ALTER TABLE `yearsetting`
  ADD PRIMARY KEY (`Yset_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academicyear`
--
ALTER TABLE `academicyear`
  MODIFY `Acad_ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `Reg_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `born_district`
--
ALTER TABLE `born_district`
  ADD CONSTRAINT `born_district_ibfk_1` FOREIGN KEY (`BPRO_ID`) REFERENCES `born_province` (`BPRO_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cur_district`
--
ALTER TABLE `cur_district`
  ADD CONSTRAINT `cur_district_ibfk_1` FOREIGN KEY (`CPRO_ID`) REFERENCES `cur_province` (`CPRO_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`curdist_ID`) REFERENCES `cur_district` (`curdist_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`bdist_ID`) REFERENCES `born_district` (`bdist_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
