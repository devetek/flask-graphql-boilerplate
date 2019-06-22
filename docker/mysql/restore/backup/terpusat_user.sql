-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jun 10, 2019 at 02:44 PM
-- Server version: 8.0.16
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `terpusat_user`
--

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `groups_id` bigint(20) UNSIGNED NOT NULL,
  `groups_name` varchar(255) NOT NULL,
  `groups_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`groups_id`, `groups_name`, `groups_status`) VALUES
(1, 'Administrator', 1),
(2, 'Editor', 1),
(3, 'Author', 1),
(4, 'Kontributor', 1),
(5, 'Tamu', 1);

-- --------------------------------------------------------

--
-- Table structure for table `groups_permissions`
--

CREATE TABLE `groups_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `groups_id` bigint(20) NOT NULL,
  `permissions_id` bigint(20) NOT NULL,
  `is_granted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups_permissions`
--

INSERT INTO `groups_permissions` (`id`, `groups_id`, `permissions_id`, `is_granted`) VALUES
(1, 1, 5, 1),
(2, 1, 9, 1),
(3, 1, 7, 1),
(4, 1, 11, 1),
(5, 1, 10, 1),
(6, 1, 4, 1),
(7, 1, 3, 1),
(8, 1, 6, 1),
(9, 1, 8, 1),
(10, 1, 1, 1),
(11, 1, 2, 1),
(12, 2, 5, 1),
(13, 2, 9, 1),
(14, 2, 11, 1),
(15, 2, 4, 1),
(16, 2, 3, 1),
(17, 2, 8, 1),
(18, 2, 1, 1),
(19, 2, 2, 1),
(20, 3, 9, 1),
(21, 3, 11, 1),
(22, 4, 9, 1),
(23, 4, 11, 1),
(24, 5, 9, 1),
(25, 1, 14, 1),
(26, 2, 14, 1),
(27, 3, 14, 1),
(28, 4, 14, 1),
(29, 1, 15, 1),
(30, 2, 15, 1),
(31, 3, 15, 1),
(32, 4, 15, 1),
(33, 1, 16, 1),
(34, 2, 16, 1),
(35, 3, 16, 1),
(36, 4, 16, 1),
(37, 1, 17, 1),
(38, 2, 17, 1),
(39, 3, 17, 1),
(40, 4, 17, 1),
(41, 1, 18, 1),
(42, 2, 18, 1),
(43, 3, 18, 1),
(44, 4, 18, 1),
(45, 1, 19, 1),
(46, 2, 19, 1),
(47, 3, 19, 1),
(48, 4, 19, 1),
(49, 1, 20, 1),
(50, 2, 20, 1),
(51, 3, 20, 1),
(52, 4, 20, 1),
(53, 1, 21, 1),
(54, 2, 21, 1),
(55, 3, 21, 1),
(56, 4, 21, 1),
(57, 1, 22, 1),
(58, 2, 22, 1),
(59, 3, 22, 1),
(60, 4, 22, 1),
(61, 1, 23, 1),
(62, 2, 23, 1),
(63, 3, 23, 1),
(64, 4, 23, 1),
(65, 1, 24, 1),
(66, 2, 24, 1),
(67, 3, 24, 1),
(68, 4, 24, 1),
(69, 1, 25, 1),
(70, 2, 25, 1),
(71, 3, 25, 1),
(72, 4, 25, 1),
(73, 1, 26, 1),
(74, 2, 26, 1),
(75, 3, 26, 1),
(76, 4, 26, 1),
(77, 1, 27, 1),
(78, 2, 27, 1),
(79, 3, 27, 1),
(80, 4, 27, 1),
(81, 1, 28, 1),
(82, 2, 28, 1),
(83, 3, 28, 1),
(84, 4, 28, 1),
(85, 1, 29, 1),
(86, 2, 29, 1),
(87, 3, 29, 1),
(88, 4, 29, 1),
(89, 1, 30, 1),
(90, 2, 30, 1),
(91, 3, 30, 1),
(92, 4, 30, 1),
(93, 1, 31, 1),
(94, 2, 31, 1),
(95, 3, 31, 1),
(96, 4, 31, 1),
(97, 1, 32, 1),
(98, 2, 32, 1),
(99, 3, 32, 1),
(100, 4, 32, 1),
(101, 1, 33, 1),
(102, 2, 33, 1),
(103, 3, 33, 1),
(104, 4, 33, 1),
(105, 1, 34, 1),
(106, 2, 34, 1),
(107, 3, 34, 1),
(108, 4, 34, 1),
(109, 1, 35, 1),
(110, 2, 35, 1),
(111, 3, 35, 1),
(112, 4, 35, 1),
(113, 1, 36, 1),
(114, 2, 36, 1),
(115, 3, 36, 1),
(116, 4, 36, 1),
(117, 1, 37, 1),
(118, 2, 37, 1),
(119, 3, 37, 1),
(120, 4, 37, 1),
(121, 1, 38, 1),
(122, 2, 38, 1),
(123, 3, 38, 1),
(124, 4, 38, 1),
(125, 1, 39, 1),
(126, 2, 39, 1),
(127, 3, 39, 1),
(128, 4, 39, 1),
(129, 1, 40, 1),
(130, 2, 40, 1),
(131, 3, 40, 1),
(132, 4, 40, 1),
(133, 1, 41, 1),
(134, 2, 41, 1),
(135, 3, 41, 1),
(136, 4, 41, 1),
(137, 1, 42, 1),
(138, 2, 42, 1),
(139, 3, 42, 1),
(140, 4, 42, 1),
(141, 1, 43, 1),
(142, 2, 43, 1),
(143, 3, 43, 1),
(144, 4, 43, 1),
(145, 1, 44, 1),
(146, 2, 44, 1),
(147, 3, 44, 1),
(148, 4, 44, 1),
(149, 1, 45, 1),
(150, 2, 45, 1),
(151, 3, 45, 1),
(152, 4, 45, 1),
(153, 1, 46, 1),
(154, 2, 46, 1),
(155, 3, 46, 1),
(156, 4, 46, 1),
(157, 1, 47, 1),
(158, 2, 47, 1),
(159, 3, 47, 1),
(160, 4, 47, 1),
(161, 1, 48, 1),
(162, 2, 48, 1),
(163, 3, 48, 1),
(164, 4, 48, 1),
(165, 1, 49, 1),
(166, 2, 49, 1),
(167, 3, 49, 1),
(168, 4, 49, 1),
(169, 1, 50, 1),
(170, 2, 50, 1),
(171, 3, 50, 1),
(172, 4, 50, 1),
(173, 1, 51, 1),
(174, 1, 52, 1),
(175, 2, 52, 1),
(176, 3, 52, 1),
(177, 4, 52, 1),
(178, 1, 53, 1),
(179, 2, 53, 1),
(180, 3, 53, 1),
(181, 4, 53, 1),
(182, 1, 54, 1),
(183, 2, 54, 1),
(184, 3, 54, 1),
(185, 4, 54, 1),
(186, 1, 55, 1),
(187, 2, 55, 1),
(188, 3, 55, 1),
(189, 4, 55, 1),
(190, 1, 56, 1),
(191, 1, 57, 1),
(192, 2, 57, 1),
(193, 3, 57, 1),
(194, 4, 57, 1),
(195, 1, 58, 1),
(196, 2, 58, 1),
(197, 3, 58, 1),
(198, 4, 58, 1),
(199, 1, 59, 1),
(200, 2, 59, 1),
(201, 3, 59, 1),
(202, 4, 59, 1),
(203, 1, 60, 1),
(204, 2, 60, 1),
(205, 3, 60, 1),
(206, 4, 60, 1),
(207, 1, 61, 1),
(208, 2, 61, 1),
(209, 3, 61, 1),
(210, 4, 61, 1),
(211, 1, 62, 1),
(212, 2, 62, 1),
(213, 3, 62, 1),
(214, 4, 62, 1),
(215, 1, 63, 1),
(216, 2, 63, 1),
(217, 3, 63, 1),
(218, 4, 63, 1),
(219, 1, 64, 1),
(220, 2, 64, 1),
(221, 3, 64, 1),
(222, 4, 64, 1),
(223, 1, 65, 1),
(224, 2, 65, 1),
(225, 3, 65, 1),
(226, 4, 65, 1),
(227, 1, 66, 1),
(228, 2, 66, 1),
(229, 3, 66, 1),
(230, 4, 66, 1),
(231, 1, 67, 1),
(232, 1, 68, 1),
(233, 2, 68, 1),
(234, 3, 68, 1),
(235, 4, 68, 1),
(236, 1, 69, 1),
(237, 2, 69, 1),
(238, 3, 69, 1),
(239, 4, 69, 1),
(240, 1, 70, 1),
(241, 2, 70, 1),
(242, 3, 70, 1),
(243, 4, 70, 1),
(244, 1, 71, 1),
(245, 2, 71, 1),
(246, 3, 71, 1),
(247, 4, 71, 1),
(248, 1, 72, 1),
(249, 2, 72, 1),
(250, 3, 72, 1),
(251, 4, 72, 1),
(252, 1, 73, 1),
(253, 2, 73, 1),
(254, 3, 73, 1),
(255, 4, 73, 1),
(256, 1, 74, 1),
(257, 2, 74, 1),
(258, 3, 74, 1),
(259, 4, 74, 1),
(260, 1, 75, 1),
(261, 2, 75, 1),
(262, 3, 75, 1),
(263, 4, 75, 1),
(264, 1, 76, 1),
(265, 2, 76, 1),
(266, 3, 76, 1),
(267, 4, 76, 1),
(268, 1, 77, 1),
(269, 2, 77, 1),
(270, 3, 77, 1),
(271, 4, 77, 1),
(272, 1, 78, 1),
(273, 2, 78, 1),
(274, 3, 78, 1),
(275, 4, 78, 1),
(276, 1, 79, 1),
(277, 2, 79, 1),
(278, 3, 79, 1),
(279, 4, 79, 1),
(280, 1, 81, 1),
(281, 2, 81, 1),
(282, 3, 81, 1),
(283, 4, 81, 1),
(284, 1, 82, 1),
(285, 2, 82, 1),
(286, 3, 82, 1),
(287, 4, 82, 1),
(288, 1, 83, 1),
(289, 2, 83, 1),
(290, 3, 83, 1),
(291, 4, 83, 1),
(292, 1, 84, 1),
(293, 2, 84, 1),
(294, 3, 84, 1),
(295, 4, 84, 1),
(296, 1, 85, 1),
(297, 2, 85, 1),
(298, 3, 85, 1),
(299, 4, 85, 1),
(300, 1, 86, 1),
(301, 2, 86, 1),
(302, 3, 86, 1),
(303, 4, 86, 1),
(304, 1, 87, 1),
(305, 2, 87, 1),
(306, 3, 87, 1),
(307, 4, 87, 1),
(308, 1, 88, 1),
(309, 2, 88, 1),
(310, 3, 88, 1),
(311, 4, 88, 1),
(312, 1, 89, 1),
(313, 2, 89, 1),
(314, 3, 89, 1),
(315, 4, 89, 1),
(316, 1, 90, 1),
(317, 2, 90, 1),
(318, 3, 90, 1),
(319, 4, 90, 1),
(320, 1, 91, 1),
(321, 2, 91, 1),
(322, 3, 91, 1),
(323, 4, 91, 1),
(324, 1, 92, 1),
(325, 2, 92, 1),
(326, 3, 92, 1),
(327, 4, 92, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `permissions_id` bigint(20) NOT NULL,
  `permissions_tag` text NOT NULL,
  `permissions_name` text NOT NULL,
  `permissions_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`permissions_id`, `permissions_tag`, `permissions_name`, `permissions_status`) VALUES
(1, 'Akses Aplikasi Terpusat', 'content_apps_1_access', 2),
(2, 'Akses Aplikasi Toko Mainanku', 'content_apps_2_access', 2),
(3, 'Akses Menu System', 'menu_system_access', 1),
(4, 'Akses Menu Sites', 'menu_sites_access', 1),
(5, 'Akses Menu Chanel', 'menu_chanel_access', 1),
(6, 'Akses Menu Type', 'menu_type_access', 1),
(7, 'Akses Menu Group', 'menu_group_access', 1),
(8, 'Akses Menu User', 'menu_user_access', 1),
(9, 'Akses Menu Dashboard', 'menu__access', 1),
(10, 'Akses Menu Permissions', 'menu_permissions_access', 1),
(11, 'Akses Menu Konten', 'menu_content_access', 1),
(12, 'Akses Menu Setting', 'menu_setting_access', 1),
(13, 'Akses Menu Tags', 'menu_tag_access', 1),
(14, 'Akses Chanel Halaman', 'content_chanel_1_access', 3),
(15, 'Akses Chanel test', 'content_chanel_2_access', 3),
(16, 'Akses Chanel test', 'content_chanel_3_access', 3),
(17, 'Akses Chanel test 1', 'content_chanel_4_access', 3),
(18, 'Akses Chanel mainan', 'content_chanel_5_access', 3),
(19, 'Akses Chanel Halaman', 'content_chanel_6_access', 3),
(20, 'Akses Chanel Artikel', 'content_chanel_7_access', 3),
(21, 'Akses Chanel Remote Control Mobil', 'content_chanel_8_access', 3),
(22, 'Akses Chanel Big Foot Crawler - Hummer', 'content_chanel_9_access', 3),
(23, 'Akses Chanel Mobil Model - Sport', 'content_chanel_10_access', 3),
(24, 'Akses Chanel Mobil Drifting', 'content_chanel_11_access', 3),
(25, 'Akses Chanel Mobil Formula One', 'content_chanel_12_access', 3),
(26, 'Akses Chanel Mobil Wall Climber', 'content_chanel_13_access', 3),
(27, 'Akses Chanel Remote Control Heli/Drone', 'content_chanel_14_access', 3),
(28, 'Akses Chanel Helicopter 2 Channel', 'content_chanel_15_access', 3),
(29, 'Akses Chanel Helicopter 3 - 3.5 Channel', 'content_chanel_16_access', 3),
(30, 'Akses Chanel Helicopter 4 Channel', 'content_chanel_17_access', 3),
(31, 'Akses Chanel Drone', 'content_chanel_18_access', 3),
(32, 'Akses Chanel Mobil Tank', 'content_chanel_19_access', 3),
(33, 'Akses Chanel Mobil Besar/Alat Berat', 'content_chanel_20_access', 3),
(34, 'Akses Chanel Remote Control Perahu Boat', 'content_chanel_21_access', 3),
(35, 'Akses Chanel Remote Control Robot-Robotan', 'content_chanel_22_access', 3),
(36, 'Akses Chanel Aneka Diecast', 'content_chanel_23_access', 3),
(37, 'Akses Chanel Hotwheels', 'content_chanel_24_access', 3),
(38, 'Akses Chanel Kinsmart', 'content_chanel_25_access', 3),
(39, 'Akses Chanel Vespa', 'content_chanel_26_access', 3),
(40, 'Akses Chanel Pesawat', 'content_chanel_27_access', 3),
(41, 'Akses Chanel Mainan Uno', 'content_chanel_28_access', 3),
(42, 'Akses Chanel Mainan Uno', 'content_chanel_29_access', 3),
(43, 'Akses Chanel Karpet Evamat', 'content_chanel_30_access', 3),
(44, 'Akses Chanel Scrabbel Board Game', 'content_chanel_31_access', 3),
(45, 'Akses Chanel Mainan Talking TomCat', 'content_chanel_32_access', 3),
(46, 'Akses Chanel Mainan Tenda Anak', 'content_chanel_33_access', 3),
(47, 'Akses Chanel Mainan Olahraga', 'content_chanel_34_access', 3),
(48, 'Akses Chanel Mainan Anak Perempuan', 'content_chanel_35_access', 3),
(49, 'Akses Chanel Brick / Block / Lego', 'content_chanel_36_access', 3),
(50, 'Akses Chanel Mainan Track Racing', 'content_chanel_37_access', 3),
(51, 'Akses Aplikasi Development Tekkom', 'content_apps_3_access', 2),
(52, 'Akses Chanel Mobil Electric', 'content_chanel_38_access', 3),
(53, 'Akses Chanel Mobil Engine', 'content_chanel_39_access', 3),
(54, 'Akses Chanel Demo', 'content_chanel_40_access', 3),
(55, 'Akses Chanel Demo 1', 'content_chanel_41_access', 3),
(56, 'Akses Aplikasi Ok Car Lombok Transport', 'content_apps_4_access', 2),
(57, 'Akses Chanel Halaman', 'content_chanel_42_access', 3),
(58, 'Akses Chanel Sewa Motor', 'content_chanel_43_access', 3),
(59, 'Akses Chanel Galleries', 'content_chanel_44_access', 3),
(60, 'Akses Chanel Sharing Shuttle', 'content_chanel_45_access', 3),
(61, 'Akses Chanel Private Shuttle', 'content_chanel_46_access', 3),
(62, 'Akses Chanel Sewa Mobil', 'content_chanel_47_access', 3),
(63, 'Akses Chanel Sewa Motor', 'content_chanel_48_access', 3),
(64, 'Akses Chanel Paket Tour', 'content_chanel_49_access', 3),
(65, 'Akses Chanel Inspirasi', 'content_chanel_50_access', 3),
(66, 'Akses Chanel Artikel Inspirasi', 'content_chanel_51_access', 3),
(67, 'Akses Aplikasi Om Kumis', 'content_apps_5_access', 2),
(68, 'Akses Chanel Inspirasi', 'content_chanel_52_access', 3),
(69, 'Akses Chanel Humor', 'content_chanel_53_access', 3),
(70, 'Akses Chanel Tekno', 'content_chanel_54_access', 3),
(71, 'Akses Chanel Komunitas', 'content_chanel_55_access', 3),
(72, 'Akses Chanel Brand Highlights', 'content_chanel_56_access', 3),
(73, 'Akses Chanel Events Update', 'content_chanel_57_access', 3),
(74, 'Akses Chanel Page', 'content_chanel_58_access', 3),
(75, 'Akses Chanel Olahraga', 'content_chanel_59_access', 3),
(76, 'Akses Chanel Berita', 'content_chanel_60_access', 3),
(77, 'Akses Chanel Gaya Hidup', 'content_chanel_61_access', 3),
(78, 'Akses Chanel Hiburan', 'content_chanel_62_access', 3),
(79, 'Akses Chanel Artikel Inspirasi', 'content_chanel_63_access', 3),
(80, 'Akses Menu Media', 'menu_media_access', 1),
(81, 'Akses Chanel Produk Jasa', 'content_chanel_64_access', 3),
(82, 'Akses Chanel Paket Wisata', 'content_chanel_65_access', 3),
(83, 'Akses Chanel Artikel Tekno', 'content_chanel_66_access', 3),
(84, 'Akses Chanel Kikuk Kikuk', 'content_chanel_67_access', 3),
(85, 'Akses Chanel Badala Kekok', 'content_chanel_68_access', 3),
(86, 'Akses Chanel as asd', 'content_chanel_69_access', 3),
(87, 'Akses Chanel ka eqwie', 'content_chanel_70_access', 3),
(88, 'Akses Chanel Kd aas asi', 'content_chanel_71_access', 3),
(89, 'Akses Chanel JK asd aso', 'content_chanel_72_access', 3),
(90, 'Akses Chanel Kas daskd', 'content_chanel_73_access', 3),
(91, 'Akses Chanel Travel', 'content_chanel_74_access', 3),
(92, 'Akses Chanel Blog', 'content_chanel_75_access', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) NOT NULL,
  `place_of_birth` text,
  `birthday` date NOT NULL,
  `address` text NOT NULL,
  `postal` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `religi` varchar(10) NOT NULL,
  `aboutme` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `joindate` datetime NOT NULL,
  `status` int(1) NOT NULL COMMENT '3=active | 2=rejected | 1=pending | 0=delete'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `fullname`, `place_of_birth`, `birthday`, `address`, `postal`, `district_id`, `province_id`, `country_id`, `telp`, `phone`, `email`, `gender`, `religi`, `aboutme`, `password`, `joindate`, `status`) VALUES
(1, 'prakasa1904', 'Nedya Amrih Prakasa', 'Wonogiri', '1992-04-19', 'Mlangse Lor RT 01/05, Tubokarto, Pracimantoro', 57664, 219, 14, 102, '085722560657', '085722560657', 'prakasa@devetek.com', 'M', 'islam', 'Simple Person', '21232f297a57a5a743894a0e4a801fc3', '2017-05-17 07:24:28', 3),
(2, 'tmainanku', 'Admin Toko Mainan', 'Jakarta', '1992-09-23', 'Bekasi', 74332, 185, 13, 102, '0983213', '0856772399120', 'tmainanku@gmail.com', 'M', 'islam', 'Toko Mainan Ku', '21232f297a57a5a743894a0e4a801fc3', '2017-05-20 23:52:53', 3),
(3, 'yusrizal', 'Yusrizal', 'Kudus', '1990-01-01', 'sdasd', 4324, 207, 14, 102, '', '086558', 'yusrizalihya@gmail.com', 'M', 'islam', 'sad', '21232f297a57a5a743894a0e4a801fc3', '2017-06-10 23:41:02', 3),
(4, 'aziz', 'aziz', 'Batang', '1997-12-20', 'jalan yos sudarso Rt 06/01 kelurahan Kasepuhan,Desa kasepuhan', 51214, 0, 0, 102, '082322384087', '082322384087', 'azizpkl111 @gmail.com', 'M', '', 'Informasi tambahan', 'd4a7c225cd2dd7dababba8790c7de33f', '0000-00-00 00:00:00', 1),
(5, 'syam192', 'syam', 'Bekasi', '2016-08-31', 'Taman Wsima Asri', 17121, 185, 13, 102, '08567103450', '', 'syam192@yahoo.com', 'M', '', 'Informasi tambahan', '88ec176a6177f5ab77f380ea7e270565', '0000-00-00 00:00:00', 2),
(6, 'syam', 'syam 192', 'Bekasi', '2017-03-14', 'Taman Wsima Asri', 17121, 0, 0, 102, '08567103450', '', 'tmainanku@yahoo.com', '', '', 'Informasi tambahan', '88ec176a6177f5ab77f380ea7e270565', '0000-00-00 00:00:00', 1),
(7, 'testIT1', 'Test User From Unregistered Domain', NULL, '0000-00-00', '', 0, 0, 0, 0, '', '', 'myalan@gmail.com', '', '', '', '5f4dcc3b5aa765d61d8327deb882cf99', '0000-00-00 00:00:00', 9),
(8, 'klowkk', 'wtf', NULL, '0000-00-00', '', 0, 0, 0, 0, '', '', 'mamen@kam.co', '', '', '', 'c4ca4238a0b923820dcc509a6f75849b', '0000-00-00 00:00:00', 9),
(9, 'sodwp', 'asd', NULL, '0000-00-00', '', 0, 0, 0, 0, '', '', 'asd@ks.co', '', '', '', '0cc175b9c0f1b6a831c399e269772661', '0000-00-00 00:00:00', 9),
(10, 'kasdiw', 'kqje aidjas', NULL, '0000-00-00', '', 0, 0, 0, 0, '', '', 'jadu@kasd.co', '', '', '', '47bce5c74f589f4867dbd57e9ca9f808', '0000-00-00 00:00:00', 9),
(11, 'ajsd', 'kdasd', NULL, '0000-00-00', '', 0, 0, 0, 0, '', '', 'kadj@ksado.co', '', '', '', 'b2ca678b4c936f905fb82f2733f5297f', '0000-00-00 00:00:00', 9),
(12, 'adpw', 'owqw', NULL, '0000-00-00', '', 0, 0, 0, 0, '', '', 'aldjw@kas.wo', '', '', '', '47bce5c74f589f4867dbd57e9ca9f808', '0000-00-00 00:00:00', 9),
(13, 'imu', 'imu', 'Bekasi', '2017-03-27', 'Jalan Hibrida I Blok CC 28 No 2 RT 003 RW 028', 17121, 0, 0, 102, '08567103450', '', 'muchtisyam@gmail.com', 'M', '', 'Informasi tambahan', '88ec176a6177f5ab77f380ea7e270565', '0000-00-00 00:00:00', 0),
(14, 'guest', 'Guest', 'Jakarta', '1990-01-01', 'Jakarta Pusat', 43332, 162, 12, 102, '232343', '0998990', 'na.amrih@gmail.com', 'M', 'islam', 'Nothing Guest', '084e0343a0486ff05530df6c705c8bb4', '2017-08-20 21:18:00', 3),
(15, 'Verona', 'Verona', 'TZ', '0000-00-00', '', 29601, 0, 0, 102, '864-319-1037', '864-319-1037', 'veronamixon@gmail.com', '', '', 'http://carxxinsurancexx.org/ - cheap car insurance\r\ncar insurance quotes\r\ncheap car insurance quotes', '33b8d767c1f7c7984d900797e2bb7727', '0000-00-00 00:00:00', 3),
(16, 'Arnette', 'Arnette', 'CI', '0000-00-00', '', 0, 0, 0, 102, '077 8690 5863', '077 8690 5863', 'arnetteedward@yahoo.com', '', '', 'https://getinsurancenowfast.org/ - cheap auto insurance\r\ncheap car insurance\r\ncar insurance quotes', '6848ae6f8e786062f1b23476c9ecd258', '0000-00-00 00:00:00', 3),
(17, 'Kayleigh', 'Kayleigh', 'DK', '0000-00-00', '', 0, 0, 0, 102, '078 0202 9019', '078 0202 9019', 'kayleighkemble@gmail.com', '', '', 'https://getinsurancenowfast.org/ - cheap car insurance\r\nprogressive car insurance\r\ncheap car insurance', 'b95c3d50fa47443166f7d356eaed8006', '0000-00-00 00:00:00', 3),
(18, 'LaufhraIcoto', 'LaufhraIcoto', '', '0000-00-00', '<a href=\"https://getinsurancenowfast.org/\"> cheapest auto insurance</a>', 0, 0, 0, 102, '83686319517', '88761256755', 'kafhnytg@gmail.com', '1', '', 'cheap car insurance quotes \r\n<a >cheap insurance for cars</a> \r\ncheap auto insurance quotes \r\n<a href=\"https://getinsurancenowfast.org/\"> cheapest car insurance</a>', '65dc51d249a4f079771d2bc47b0f6c4a', '0000-00-00 00:00:00', 3),
(19, 'Roland', 'Roland', 'KW', '0000-00-00', '', 24010, 0, 0, 102, '0387 5792291', '0387 5792291', 'rolandbrumbaugh@aol.com', '', '', 'https://getinsurancenowfast.org/ - car insurance quotes\r\nprogressive car insurance\r\nauto insurance quotes', '96d4cdff8ed57e93e3b3d843cffe3af7', '0000-00-00 00:00:00', 3),
(20, 'Major', 'Major', 'FB', '0000-00-00', '', 5132, 0, 0, 102, 'FW', '', 'majororozco@inbox.com', '', '', 'https://getinsurancenowfast.org/ - cheap auto insurance\r\ncar insurance quotes\r\nprogressive car insurance', '35b5282113b88c2fe23dcbec9f0258c1', '0000-00-00 00:00:00', 3),
(21, 'Angelo', 'Angelo', 'ZL', '0000-00-00', '', 95817, 0, 0, 102, '916-494-8622', '916-494-8622', 'angelofallis@snail-mail.net', '', '', 'http://slotsmegacasino.com/ - casinos online\r\nonline casino\r\ncasinos online', 'a7a4ccc5e1a068d87f4965e014329201', '0000-00-00 00:00:00', 3),
(22, 'Dedra', 'Dedra', 'KN', '0000-00-00', '', 4724, 0, 0, 102, '(07) 4931 9350', '(07) 4931 9350', 'dedrastokes@aol.com', '', '', 'http://slotsmegacasino.com/ - casino online\r\ncasino online\r\ncasino online', 'a0137b712fd26c429ccd6a13541b538d', '0000-00-00 00:00:00', 3),
(23, 'Fransdfsweent', 'Fransdfsweent', '', '0000-00-00', '<a href=\"http://slotsmegacasino.com/\"> casino games</a>', 0, 0, 0, 102, '82214725284', '87182612944', 'alicdgjrn@gmail.com', '1', '', 'online casino \r\n<a >casino online</a> \r\ncasino online usa \r\n<a href=\"http://slotsmegacasino.com/\"> casino online</a>', '7effd22778631eb92ade4cb38586890c', '0000-00-00 00:00:00', 3),
(24, 'Bradly', 'Bradly', 'VP', '0000-00-00', '', 9781, 0, 0, 102, '06-11824940', '06-11824940', 'bradlymoon@zoho.com', '', '', 'http://gettodayinsurance.org/ - auto insurance quotes\r\nprogressive car insurance\r\nprogressive car insurance', '83f56f37a245ccaf8c885814074777f6', '0000-00-00 00:00:00', 3),
(25, 'Adela', 'Adela', 'YF', '0000-00-00', '', 11086, 0, 0, 102, '(11) 7517-4599', '(11) 7517-4599', 'adela_abarca@yahoo.de', '', '', 'http://gettodayinsurance.org/ - car insurance quotes\r\ncheap auto insurance\r\ncheap auto insurance', '920d0c66f3d2ad926a6d590a5d244bd9', '0000-00-00 00:00:00', 3),
(26, 'Adriana', 'Adriana', 'VH', '0000-00-00', '', 9560, 0, 0, 102, '0699 721 84 09', '0699 721 84 09', 'adrianaeichmann@zoho.com', '', '', 'http://lookinsuranceusa.com/ - cheap car insurance\r\ncar insurance quotes\r\ncheap car insurance', '227dc251e1411f6b6fffcd1c30486f4d', '0000-00-00 00:00:00', 3),
(27, 'adeherysh', 'Ade Hery S', 'Jakarta', '1990-01-17', 'Nothing Address', 5456, 161, 12, 0, '234324', '08589902224', 'adeheryshopyan@gmail.com', 'M', 'islam', '', '21232f297a57a5a743894a0e4a801fc3', '2017-09-10 18:30:29', 3),
(28, 'JimmiNu', 'JimmiNu', 'New York', '0000-00-00', 'bqoLUhXobuhZ', 30477, 0, 0, 102, '59694254029', '93890048370', 'ec12342vtv@hotmail.com', 'M', '', 'DhRswk http://www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com', '2877b3f71e6aa4cfb9441561782428d1', '0000-00-00 00:00:00', 3),
(29, 'Evie', 'Evie', 'QQ', '0000-00-00', '', 18064, 0, 0, 102, '610-614-1624', '610-614-1624', 'evieparkinson@yahoo.com', '', '', 'http://getloansusapersonal.com/ - online loan\r\nonline payday loans\r\nonline loans', 'bbf8619a9375454117b431af3f0afc8a', '0000-00-00 00:00:00', 3),
(30, 'Milford', 'Milford', 'VD', '0000-00-00', '', 91350, 0, 0, 102, '01.71.38.83.53', '01.71.38.83.53', 'milfordgarica@inbox.com', '', '', 'http://getloansusapersonal.com/ - online loan\r\npayday loans online\r\nloan online', '38f99abbc1d339c277c0669e7bc373c0', '0000-00-00 00:00:00', 3),
(31, 'Will', 'Will', 'MM', '0000-00-00', '', 72305, 0, 0, 102, '(61) 9279-7072', '(61) 9279-7072', 'will_pettis@gawab.com', '', '', 'http://cashlucrative.org/ - cash advance\r\npayday loans\r\npayday loans online', '188a635abba74342875004e508e99b40', '0000-00-00 00:00:00', 3),
(32, 'Salvador', 'Salvador', 'AE', '0000-00-00', '', 345, 0, 0, 102, '424 7065', '424 7065', 'salvadorcallender@web.de', '', '', 'http://getloansusapersonal.com/ - payday loans online\r\npayday loan\r\nonline loans', 'e0aa021e21dddbd6d8cecec71e9cf564', '0000-00-00 00:00:00', 3),
(33, 'Lisa', 'Lisa', 'KD', '0000-00-00', '', 53579, 0, 0, 102, '02644 31 03 52', '02644 31 03 52', 'lisacoldham@gmail.com', '', '', 'http://getloansusapersonal.com/ - loans online\r\npayday loans\r\nloans online', '8a6b178d3af0a5a9b2744ca31921d5e2', '0000-00-00 00:00:00', 3),
(34, 'Aileen', 'Aileen', 'PN', '0000-00-00', '', 0, 0, 0, 102, '078 8331 0584', '078 8331 0584', 'aileencornejo@gmail.com', '', '', 'http://getloansusapersonal.com/ - loans online\r\nonline loan\r\nonline loan', '21080924b5d026e4a6011eb987ae1ec8', '0000-00-00 00:00:00', 3),
(35, 'Hendy', 'Hendy Raditya', 'Jakarta', '2011-04-14', 'Kedoya', 11520, 161, 12, 102, '085774538272', '082129459717', 'Hendyraditya15@gmail.com', 'M', '', 'Informasi tambahanh', '9a44748c1255c955e8038e5fe9194d04', '0000-00-00 00:00:00', 3),
(36, 'albani', 'irsyam', 'Bekasi', '2017-09-12', 'Jalan Hibrida I Blok CC 28 No 2 RT 003 RW 028', 17121, 0, 0, 102, '08567103450', '', 'hobimainanku@gmail.com', '', '', 'Informasi tambahan', 'e10adc3949ba59abbe56e057f20f883e', '0000-00-00 00:00:00', 3),
(37, 'imu123', 'muchti albani', 'bekasi', '2015-06-02', 'Taman Wisma Asri, Blok CC 28 No. 2 RT 003 RW 028', 17121, 185, 13, 102, '08567103450', '08567103450', 'syammuchti@gmail.com', 'M', '', 'Informasi tambahan', 'e10adc3949ba59abbe56e057f20f883e', '0000-00-00 00:00:00', 3),
(38, 'riaudy', 'riaudy', 'jakarta', '2016-06-01', 'jl.karya bakti no.1 cibubur', 13720, 164, 12, 102, '089662403390', '', 'vincencius.riaudy@gmail.com', 'M', '', 'Informasi tambahan', '4e949049318be1a52ae98006c83c1de1', '0000-00-00 00:00:00', 3),
(39, 'idwan092', 'idwan', NULL, '0000-00-00', '', 0, 0, 0, 0, '', '', 'idwan@yahoo.com', '', '', '', 'ed4feda581dae38767289c848a37241c', '0000-00-00 00:00:00', 1),
(40, 'Eula', 'Eula', 'AN', '0000-00-00', '', 89030, 0, 0, 102, '0322 9165792', '0322 9165792', 'eulamckeddie@web.de', '', '', 'online casino canada\r\ncasino games\r\nfree casino games\r\ncasino slots', 'e892e780304dc3ef15e69b9f3fed3669', '0000-00-00 00:00:00', 3),
(41, 'Shana', 'Shana', 'BW', '0000-00-00', '', 0, 0, 0, 102, '077 7586 3165', '077 7586 3165', 'shana.pell@arcor.de', '', '', 'casino online\r\nslot machines\r\nmobile casino\r\ncasino online usa', '3b16c9d4c4c856ce7fff405e3b6c43ab', '0000-00-00 00:00:00', 3),
(42, 'Latosha', 'Latosha', 'PE', '0000-00-00', '', 8810, 0, 0, 102, '0495 45 47 00', '0495 45 47 00', 'latosha.faulkner@arcor.de', '', '', 'easy payday loans\r\ncash advance\r\neasy payday loans\r\nbad credit payday loans', 'f5b15f58cabad73d1bf2de7bcb89db6c', '0000-00-00 00:00:00', 3),
(43, 'Virgil', 'Virgil', 'QQ', '0000-00-00', '', 6147, 0, 0, 102, '(08) 9342 8259', '(08) 9342 8259', 'virgilwhitlow@gmail.com', '', '', 'loans\r\ncash loans no credit check\r\npayday loan direct lender\r\neasy payday loans', 'e02bbe4f39f5396dd5d572be55ccf6b6', '0000-00-00 00:00:00', 3),
(44, 'Tanisha', 'Tanisha', 'TN', '0000-00-00', '', 4875, 0, 0, 102, '(07) 4013 3185', '(07) 4013 3185', 'tanishavarghese@gmail.com', '', '', 'online casino usa\r\nblackjack online\r\nblackjack online\r\nonline casino games', '1249ab51832d31d2c1a0ac36b9ffaa2d', '0000-00-00 00:00:00', 3),
(45, 'Katja', 'Katja', 'FX', '0000-00-00', '', 57050, 0, 0, 102, '03.69.93.47.98', '03.69.93.47.98', 'katjacady@bigstring.com', '', '', 'payday loan no credit check\r\nno credit check payday loans\r\nquick cash loans\r\ncash advance loans', 'e2f757a2cdc6fa6312ea71ce43a211b8', '0000-00-00 00:00:00', 3),
(46, 'Kenton', 'Kenton', 'HK', '0000-00-00', '', 75, 0, 0, 102, '69 121 92 35', '69 121 92 35', 'kentonsummy@inbox.com', '', '', 'cafe casino\r\ncafe casino slots\r\ncool cat video\r\nbovada no deposit bonus 2017', 'f003c44deab679aa2edfaff864c77402', '0000-00-00 00:00:00', 3),
(47, 'Jesus', 'Jesus', 'KW', '0000-00-00', '', 95300, 0, 0, 102, '03.09.06.42.20', '03.09.06.42.20', 'jesusabrahams@gmail.com', '', '', 'coolcat casino\r\nwild vegas casino\r\ncafe casino bonus codes\r\ncafe casino no deposit codes', 'd4e8bee50f2093fbced5daaf3c41980d', '0000-00-00 00:00:00', 3),
(48, 'Kurt', 'Kurt', 'EM', '0000-00-00', '', 60100, 0, 0, 102, '03.54.57.09.94', '03.54.57.09.94', 'kurtadey@yahoo.de', '', '', 'club player casino\r\ncool cat website\r\ndreams casino instant play\r\nlucky red casino', '9ee9d85a86f0118c40ba2385bb314fd7', '0000-00-00 00:00:00', 3),
(49, 'kayangmanu', 'Kayang Manunggal', 'Jakarta', '2014-10-15', 'Jalan Hayam Wuruk, Blitar', 76682, 234, 16, 102, '08776289947', '08776289947', 'kayangmanu100@yahoo.com', 'M', '', 'Please dont add this one', 'ff5a4525aa60d61ae91f30827166bb5e', '0000-00-00 00:00:00', 3),
(50, 'Alexandria', 'Alexandria', 'DL', '0000-00-00', '', 57635, 0, 0, 102, '02686 16 06 73', '02686 16 06 73', 'alexandriadearborn@gmail.com', '', '', 'miami club casino\r\nruby slots casino instant play\r\nmiami club casino\r\ncool cat website', 'dfad8a6d7669d486fd543e950d12a78f', '0000-00-00 00:00:00', 3),
(51, 'Felicitas', 'Felicitas', 'VU', '0000-00-00', '', 0, 0, 0, 102, '070 2831 8183', '070 2831 8183', 'felicitaspalombo@inbox.com', '', '', 'casino games\r\ncasino slots\r\nmobile casino\r\ncasino online', '6848ae6f8e786062f1b23476c9ecd258', '0000-00-00 00:00:00', 3),
(52, 'lwnbdllh', 'alwan m ubaidillah', NULL, '0000-00-00', '', 0, 0, 0, 0, '', '', 'alwanmuh@gmail.com', '', '', '', '32eca0a361c7d4e0e71dfd4acac9c090', '0000-00-00 00:00:00', 1),
(53, 'Catheyvob', 'Catheyvob', '', '0000-00-00', 'http://mpaydayvloans.com/', 0, 0, 0, 102, '84171419829', '81983195394', 'catheywot@gmail.com', '1', '', 'payday advance \r\n<a >no credit check payday loans</a> \r\n<a href=\"http://mpaydayvloans.com/\">fast payday loans</a> \r\nloan online \r\n<a >payday loans online no credit check</a> \r\n<a href=\"http://mpaydayvloans.com/\">quick cash loans</a> \r\npayday loans no credit check', '18c783aa56aa99de91eddf30722a2056', '0000-00-00 00:00:00', 3),
(54, 'hangan', 'Hang Jung Ann', 'Kualanamu', '2013-06-12', 'Malang Kula, Saraku Baliko', 324234, 169, 13, 102, '09937438', '873423424', 'hangan@hanguna.kore', 'M', '', 'Dont adding anything here', '21232f297a57a5a743894a0e4a801fc3', '0000-00-00 00:00:00', 3),
(55, 'yajurii', 'Jurii Yaa', 'Jakarta', '2017-11-13', 'Mlangse Lor RT Ajah', 7348, 0, 14, 102, '982472342', '98234234', 'juriiy@gmail.com', 'F', '', 'Suka Suka Lu dah', '21232f297a57a5a743894a0e4a801fc3', '2017-11-06 22:16:11', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_attribute`
--

CREATE TABLE `user_attribute` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_attribute_key` text NOT NULL,
  `user_attribute_val` text NOT NULL,
  `user_attribute_status` int(11) NOT NULL,
  `user_attribute_position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_attribute`
--

INSERT INTO `user_attribute` (`id`, `user_id`, `user_attribute_key`, `user_attribute_val`, `user_attribute_status`, `user_attribute_position`) VALUES
(1, 2, 'facebook_url', 'fb', 1, 0),
(2, 2, 'twitter_url', 'tw', 1, 0),
(3, 2, 'instagram_url', 'ig', 1, 0),
(4, 2, 'website_url', 'http://www.toko-mainanku.com/', 1, 0),
(5, 3, 'facebook_url', 'sad', 1, 0),
(6, 3, 'twitter_url', 'sad', 1, 0),
(7, 3, 'instagram_url', 'asd', 1, 0),
(8, 3, 'website_url', 'sad', 1, 0),
(9, 4, 'register_at', '2', 1, 0),
(10, 5, 'register_at', '2', 1, 0),
(11, 6, 'register_at', '2', 1, 0),
(12, 13, 'register_at', '2', 1, 0),
(13, 1, 'facebook_url', 'https://www.facebook.com/nedya.prakasa', 1, 0),
(14, 1, 'twitter_url', '', 1, 0),
(15, 1, 'instagram_url', '', 1, 0),
(16, 1, 'website_url', '', 1, 0),
(17, 14, 'facebook_url', '', 1, 0),
(18, 14, 'twitter_url', '', 1, 0),
(19, 14, 'instagram_url', '', 1, 0),
(20, 14, 'website_url', '', 1, 0),
(21, 14, 'facebook_url', '', 1, 0),
(22, 14, 'twitter_url', '', 1, 0),
(23, 14, 'instagram_url', '', 1, 0),
(24, 14, 'website_url', '', 1, 0),
(25, 14, 'facebook_url', '', 1, 0),
(26, 14, 'twitter_url', '', 1, 0),
(27, 14, 'instagram_url', '', 1, 0),
(28, 14, 'website_url', '', 1, 0),
(29, 14, 'facebook_url', '', 1, 0),
(30, 14, 'twitter_url', '', 1, 0),
(31, 14, 'instagram_url', '', 1, 0),
(32, 14, 'website_url', '', 1, 0),
(33, 14, 'facebook_url', '', 1, 0),
(34, 14, 'twitter_url', '', 1, 0),
(35, 14, 'instagram_url', '', 1, 0),
(36, 14, 'website_url', '', 1, 0),
(38, 14, 'facebook_url', '', 1, 5),
(39, 14, 'twitter_url', '', 1, 5),
(40, 14, 'instagram_url', '', 1, 5),
(41, 14, 'website_url', '', 1, 5),
(42, 15, 'register_at', '2', 1, 0),
(43, 16, 'register_at', '2', 1, 0),
(44, 17, 'register_at', '2', 1, 0),
(45, 18, 'register_at', '2', 1, 0),
(46, 19, 'register_at', '2', 1, 0),
(47, 20, 'register_at', '2', 1, 0),
(48, 21, 'register_at', '2', 1, 0),
(49, 22, 'register_at', '2', 1, 0),
(50, 23, 'register_at', '2', 1, 0),
(51, 24, 'register_at', '2', 1, 0),
(52, 25, 'register_at', '2', 1, 0),
(53, 26, 'register_at', '2', 1, 0),
(54, 27, 'facebook_url', '', 1, 0),
(55, 27, 'twitter_url', '', 1, 0),
(56, 27, 'instagram_url', '', 1, 0),
(57, 27, 'website_url', '', 1, 0),
(58, 28, 'register_at', '2', 1, 0),
(59, 29, 'register_at', '2', 1, 0),
(60, 30, 'register_at', '2', 1, 0),
(61, 31, 'register_at', '2', 1, 0),
(62, 32, 'register_at', '2', 1, 0),
(63, 33, 'register_at', '2', 1, 0),
(64, 34, 'register_at', '2', 1, 0),
(65, 1, 'cart', '{\"item\":[{\"i\":45,\"p\":250000,\"d\":0,\"t\":1,\"w\":5}],\"total\":1,\"user\":1,\"create\":\"2017-09-23 18:23:35\",\"courir\":{\"service\":\"jne\",\"pack\":\"OKE\",\"price\":90000},\"invoice\":\"2017-09-23-1-TM\",\"status\":\"unpaid\"}', 1, 0),
(66, 35, 'register_at', '2', 1, 0),
(67, 36, 'register_at', '2', 1, 0),
(68, 1, 'cart', '{\"item\":[{\"i\":42,\"p\":215000,\"d\":0,\"t\":1,\"w\":2}],\"total\":1,\"user\":1,\"create\":\"2017-09-26 05:45:45\",\"courir\":{\"service\":\"jne\",\"pack\":\"REG\",\"price\":42000},\"invoice\":\"2017-09-26-1-TM\",\"status\":\"unpaid\"}', 1, 0),
(69, 37, 'register_at', '2', 1, 0),
(71, 38, 'register_at', '2', 1, 0),
(73, 37, 'cart', '{\"item\":[{\"i\":44,\"p\":115000,\"d\":0,\"t\":1,\"w\":1}],\"total\":1,\"user\":37,\"create\":\"2017-09-27 14:31:42\",\"courir\":{\"service\":\"jne\",\"pack\":\"CTC\",\"price\":9000},\"invoice\":\"2017-09-27-1-TM\",\"status\":\"unpaid\"}', 1, 0),
(74, 37, 'cart', '{\"item\":[{\"i\":46,\"p\":200000,\"d\":0,\"t\":1,\"w\":2}],\"total\":1,\"user\":37,\"create\":\"2017-09-30 19:7:55\",\"courir\":{\"service\":\"jne\",\"pack\":\"CTC\",\"price\":18000},\"invoice\":\"2017-09-30-1-TM\",\"status\":\"unpaid\"}', 1, 0),
(75, 37, 'cart', '{\"item\":[{\"i\":46,\"p\":200000,\"d\":0,\"t\":1,\"w\":2}],\"total\":1,\"user\":37,\"create\":\"2017-10-03 23:58:48\",\"courir\":{\"service\":\"jne\",\"pack\":\"CTC\",\"price\":18000},\"invoice\":\"2017-10-03-1-TM\",\"status\":\"unpaid\"}', 1, 0),
(76, 37, 'cart', '{\"item\":[{\"i\":38,\"p\":275000,\"d\":0,\"t\":1,\"w\":3}],\"total\":1,\"user\":37,\"create\":\"2017-10-05 09:58:35\",\"courir\":{\"service\":\"jne\",\"pack\":\"CTC\",\"price\":27000},\"invoice\":\"2017-10-05-1-TM\",\"status\":\"unpaid\"}', 1, 0),
(77, 1, 'cart', '{\"item\":[{\"i\":44,\"p\":115000,\"d\":0,\"t\":1,\"w\":1}],\"total\":1,\"user\":1,\"create\":\"2017-10-06 22:34:27\",\"courir\":{\"service\":\"jne\",\"pack\":\"REG\",\"price\":21000},\"invoice\":\"2017-10-06-1-TM\",\"status\":\"unpaid\"}', 1, 0),
(78, 1, 'cart', '{\"item\":[{\"i\":45,\"p\":250000,\"d\":0,\"t\":1,\"w\":5}],\"total\":1,\"user\":1,\"create\":\"2017-10-07 06:58:50\",\"courir\":{\"service\":\"jne\",\"pack\":\"REG\",\"price\":105000},\"invoice\":\"2017-10-07-1-TM\",\"status\":\"unpaid\"}', 1, 0),
(79, 40, 'register_at', '2', 1, 0),
(80, 41, 'register_at', '2', 1, 0),
(81, 42, 'register_at', '2', 1, 0),
(82, 43, 'register_at', '2', 1, 0),
(83, 44, 'register_at', '2', 1, 0),
(84, 45, 'register_at', '2', 1, 0),
(85, 46, 'register_at', '2', 1, 0),
(86, 47, 'register_at', '2', 1, 0),
(87, 48, 'register_at', '2', 1, 0),
(88, 49, 'register_at', '2', 1, 0),
(89, 50, 'register_at', '2', 1, 0),
(90, 51, 'register_at', '2', 1, 0),
(91, 53, 'register_at', '2', 1, 0),
(92, 54, 'register_at', '2', 1, 0),
(93, 55, 'register_at', '2', 1, 0),
(94, 54, 'cart', '{\"item\":[{\"i\":98,\"p\":10000,\"d\":30,\"t\":3,\"w\":6},{\"i\":46,\"p\":200000,\"d\":0,\"t\":2,\"w\":4}],\"total\":2,\"user\":54,\"create\":\"2018-02-10 09:16:22\",\"courir\":{\"service\":\"jne\",\"pack\":\"REG\",\"price\":90000},\"invoice\":\"2018-02-10-1-TM\",\"status\":\"pending\",\"manual\":{\"date\":\"2018-02-11 12:54:49\",\"client\":\"127.0.0.1\",\"attachment\":\"120\",\"notes\":\"Bayar broo\",\"payment_type\":\"bank transfer\"}}', 1, 0),
(95, 54, 'cart', '{\"item\":[{\"i\":98,\"p\":10000,\"d\":30,\"t\":1,\"w\":2},{\"i\":46,\"p\":200000,\"d\":0,\"t\":2,\"w\":4}],\"total\":2,\"user\":54,\"create\":\"2018-02-10 09:45:46\",\"courir\":{\"service\":\"jne\",\"pack\":\"YES\",\"price\":108000},\"invoice\":\"2018-02-10-2-TM\",\"status\":\"pending\",\"payment\":{\"transaction_id\":\"0935a2a8-3cf1-4f58-8484-727ef61a552f\",\"gross_amount\":\"515000.00\",\"payment_type\":\"bank_transfer\",\"transaction_time\":\"2018-02-10 09:48:22\",\"va_numbers\":[{\"bank\":\"bca\",\"va_number\":\"08748332037\"}],\"fraud_status\":\"accept\",\"bca_va_number\":\"08748332037\",\"approval_code\":null,\"pdf_url\":\"https:\\/\\/app.sandbox.veritrans.co.id\\/snap\\/v1\\/transactions\\/c593cca8-5f00-4a08-9309-e5d8eaa82797\\/pdf\"},\"manual\":{\"date\":\"2018-02-11 13:03:18\",\"client\":\"127.0.0.1\",\"attachment\":\"117\",\"notes\":\"mesin cuci gw beli\",\"payment_type\":\"bank transfer\"}}', 1, 0),
(96, 54, 'cart', '{\"item\":[{\"i\":98,\"p\":10000,\"d\":30,\"t\":2,\"w\":4}],\"total\":1,\"user\":54,\"create\":\"2018-02-10 14:26:57\",\"courir\":{\"service\":\"jne\",\"pack\":\"YES\",\"price\":72000},\"invoice\":\"2018-02-10-3-TM\",\"status\":\"pending\",\"payment\":{\"transaction_id\":\"636ad8fd-a449-46ae-95c9-f02fda5bd8eb\",\"gross_amount\":\"86000.00\",\"payment_type\":\"bank_transfer\",\"transaction_time\":\"2018-02-10 14:27:18\",\"va_numbers\":[{\"bank\":\"bca\",\"va_number\":\"08748662987\"}],\"fraud_status\":\"accept\",\"bca_va_number\":\"08748662987\",\"approval_code\":null,\"pdf_url\":\"https:\\/\\/app.sandbox.veritrans.co.id\\/snap\\/v1\\/transactions\\/d304c671-0bc0-452f-860f-0a117e71ef2e\\/pdf\"}}', 1, 0),
(97, 54, 'cart', '{\"item\":[{\"i\":45,\"p\":250000,\"d\":0,\"t\":2,\"w\":10}],\"total\":1,\"user\":54,\"create\":\"2018-02-10 14:34:30\",\"courir\":{\"service\":\"jne\",\"pack\":\"YES\",\"price\":180000},\"invoice\":\"2018-02-10-4-TM\",\"status\":\"reject\",\"payment\":{\"transaction_id\":\"b11dc80c-0cf7-44cc-9996-84591bf4f5fb\",\"gross_amount\":\"680000.00\",\"payment_type\":\"bca_klikbca\",\"transaction_time\":\"2018-02-10 14:43:12\",\"va_numbers\":null,\"fraud_status\":null,\"bca_va_number\":null,\"approval_code\":\"b11dc80c0cf744cc99\",\"pdf_url\":null},\"manual\":{\"date\":\"2018-02-11 11:59:55\",\"client\":\"127.0.0.1\",\"attachment\":\"119\",\"notes\":\"Ini adalah pembayaran asliad asda\",\"payment_type\":\"bank transfer\",\"accepted_date\":\"2018-02-11 17:59:11\",\"accepted_in\":\"127.0.0.1\",\"accepted_by\":\"1\"}}', 1, 0),
(98, 54, 'cart', '{\"item\":[{\"i\":46,\"p\":200000,\"d\":0,\"t\":1,\"w\":2},{\"i\":45,\"p\":250000,\"d\":0,\"t\":1,\"w\":5}],\"total\":2,\"user\":54,\"create\":\"2018-02-11 11:45:10\",\"invoice\":\"2018-02-11-1-TM\",\"status\":\"unpaid\"}', 1, 0),
(99, 54, 'cart', '{\"item\":[{\"i\":46,\"p\":200000,\"d\":0,\"t\":1,\"w\":2}],\"total\":1,\"user\":54,\"create\":\"2018-02-11 12:5:23\",\"courir\":{\"service\":\"jne\",\"pack\":\"REG\",\"price\":18000},\"invoice\":\"2018-02-11-4-TM\",\"status\":\"paid\",\"manual\":{\"date\":\"2018-02-11 13:06:44\",\"client\":\"127.0.0.1\",\"attachment\":\"118\",\"notes\":\"gw beli bola\",\"payment_type\":\"bank transfer\",\"accepted_date\":\"2018-02-11 17:55:30\",\"accepted_in\":\"127.0.0.1\",\"accepted_by\":\"1\"}}', 1, 0),
(101, 54, 'cart', '{\"item\":[{\"i\":45,\"p\":250000,\"d\":0,\"t\":1,\"w\":5}],\"total\":1,\"user\":54,\"create\":\"2018-02-11 12:37:00\",\"courir\":{\"service\":\"jne\",\"pack\":\"YES\",\"price\":90000},\"invoice\":\"2018-02-11-5-TM\",\"status\":\"unpaid\",\"manual\":{\"date\":\"2018-02-11 12:37:07\",\"client\":\"\",\"attachment\":\"\",\"notes\":\"\",\"payment_type\":\"bank transfer\"}}', 1, 0),
(102, 54, 'cart', '{\"item\":[{\"i\":98,\"p\":10000,\"d\":30,\"t\":2,\"w\":4},{\"i\":45,\"p\":250000,\"d\":0,\"t\":1,\"w\":5},{\"i\":44,\"p\":115000,\"d\":0,\"t\":1,\"w\":1},{\"i\":43,\"p\":200000,\"d\":0,\"t\":1,\"w\":1}],\"total\":4,\"user\":54,\"create\":\"2018-02-11 12:37:18\",\"courir\":{\"service\":\"jne\",\"pack\":\"YES\",\"price\":198000},\"invoice\":\"2018-02-11-6-TM\",\"status\":\"paid\",\"manual\":{\"date\":\"2018-02-11 12:38:41\",\"client\":\"127.0.0.1\",\"attachment\":\"120\",\"notes\":\"adasdasdsa asdasd\",\"payment_type\":\"bank transfer\",\"accepted_date\":\"2018-02-11 17:55:46\",\"accepted_in\":\"127.0.0.1\",\"accepted_by\":\"1\"}}', 1, 0),
(103, 54, 'cart', '{\"item\":[{\"i\":46,\"p\":200000,\"d\":0,\"t\":1,\"w\":2},{\"i\":45,\"p\":250000,\"d\":0,\"t\":1,\"w\":5},{\"i\":98,\"p\":10000,\"d\":30,\"t\":1,\"w\":2}],\"total\":3,\"user\":54,\"create\":\"2018-02-11 12:55:25\",\"courir\":{\"service\":\"jne\",\"pack\":\"REG\",\"price\":81000},\"invoice\":\"2018-02-11-8-TM\",\"status\":\"paid\",\"manual\":{\"date\":\"2018-02-11 13:01:28\",\"client\":\"127.0.0.1\",\"attachment\":\"120\",\"notes\":\"bayar gan\",\"payment_type\":\"bank transfer\",\"accepted_date\":\"2018-02-11 17:59:04\",\"accepted_in\":\"127.0.0.1\",\"accepted_by\":\"1\"}}', 1, 0),
(104, 54, 'cart', '{\"item\":[{\"i\":46,\"p\":200000,\"d\":0,\"t\":1,\"w\":2},{\"i\":45,\"p\":250000,\"d\":0,\"t\":3,\"w\":15}],\"total\":2,\"user\":54,\"create\":\"2018-02-11 13:6:52\",\"courir\":{\"service\":\"jne\",\"pack\":\"YES\",\"price\":306000},\"invoice\":\"2018-02-11-9-TM\",\"status\":\"paid\",\"manual\":null}', 1, 0),
(105, 54, 'cart', '{\"item\":[{\"i\":98,\"p\":10000,\"d\":30,\"t\":1,\"w\":2},{\"i\":46,\"p\":200000,\"d\":0,\"t\":1,\"w\":2}],\"total\":2,\"user\":54,\"create\":\"2018-02-11 13:29:06\",\"courir\":{\"service\":\"jne\",\"pack\":\"YES\",\"price\":72000},\"invoice\":\"2018-02-11-10-TM\",\"status\":\"paid\",\"manual\":{\"date\":\"2018-02-11 13:30:21\",\"client\":\"127.0.0.1\",\"attachment\":\"117\",\"notes\":\"bayar pajak\",\"payment_type\":\"bank transfer\",\"accepted_date\":\"2018-02-11 17:51:34\",\"accepted_in\":\"127.0.0.1\",\"accepted_by\":null}}', 1, 0),
(106, 54, 'cart', '{\"item\":[{\"i\":45,\"p\":250000,\"d\":0,\"t\":2,\"w\":10}],\"total\":1,\"user\":54,\"create\":\"2018-02-11 13:56:01\",\"courir\":{\"service\":\"jne\",\"pack\":\"YES\",\"price\":180000},\"invoice\":\"2018-02-11-11-TM\",\"status\":\"unpaid\",\"manual\":{\"date\":\"2018-02-11 13:56:09\",\"client\":\"\",\"attachment\":\"\",\"notes\":\"\",\"payment_type\":\"bank transfer\"}}', 1, 0),
(107, 54, 'cart', '{\"item\":[{\"i\":45,\"p\":250000,\"d\":0,\"t\":3,\"w\":15}],\"total\":1,\"user\":54,\"create\":\"2018-02-11 17:18:50\",\"courir\":{\"service\":\"jne\",\"pack\":\"REG\",\"price\":135000},\"invoice\":\"2018-02-11-12-TM\",\"status\":\"unpaid\",\"manual\":{\"date\":\"2018-02-11 17:18:59\",\"client\":\"\",\"attachment\":\"\",\"notes\":\"\",\"payment_type\":\"bank transfer\"}}', 1, 0),
(108, 54, 'cart', '{\"item\":[{\"i\":46,\"p\":200000,\"d\":0,\"t\":1,\"w\":2},{\"i\":98,\"p\":10000,\"d\":30,\"t\":1,\"w\":2}],\"total\":2,\"user\":54,\"create\":\"2018-02-11 17:20:10\",\"courir\":{\"service\":\"jne\",\"pack\":\"YES\",\"price\":72000},\"invoice\":\"2018-02-11-14-TM\",\"status\":\"unpaid\",\"manual\":{\"date\":\"2018-02-11 17:22:40\",\"client\":\"\",\"attachment\":\"\",\"notes\":\"\",\"payment_type\":\"bank transfer\"}}', 1, 0),
(109, 54, 'cart', '{\"item\":[{\"i\":98,\"p\":10000,\"d\":30,\"t\":1,\"w\":2}],\"total\":1,\"user\":54,\"create\":\"2018-02-11 18:8:45\",\"courir\":{\"service\":\"jne\",\"pack\":\"YES\",\"price\":36000},\"invoice\":\"2018-02-11-14-TM\",\"status\":\"unpaid\",\"manual\":{\"date\":\"2018-02-11 18:08:52\",\"client\":\"\",\"attachment\":\"\",\"notes\":\"\",\"payment_type\":\"bank transfer\"}}', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `groups_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `user_id`, `groups_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 1),
(4, 4, 5),
(5, 5, 5),
(6, 6, 5),
(7, 7, 5),
(8, 8, 5),
(9, 9, 5),
(10, 10, 5),
(11, 11, 5),
(12, 12, 5),
(13, 13, 5),
(14, 14, 2),
(15, 15, 5),
(16, 16, 5),
(17, 17, 5),
(18, 18, 5),
(19, 19, 5),
(20, 20, 5),
(21, 21, 5),
(22, 22, 5),
(23, 23, 5),
(24, 24, 5),
(25, 25, 5),
(26, 26, 5),
(27, 27, 1),
(28, 28, 5),
(29, 29, 5),
(30, 30, 5),
(31, 31, 5),
(32, 32, 5),
(33, 33, 5),
(34, 34, 5),
(35, 35, 5),
(36, 36, 5),
(37, 37, 5),
(38, 38, 5),
(39, 39, 5),
(40, 40, 5),
(41, 41, 5),
(42, 42, 5),
(43, 43, 5),
(44, 44, 5),
(45, 45, 5),
(46, 46, 5),
(47, 47, 5),
(48, 48, 5),
(49, 49, 5),
(50, 50, 5),
(51, 51, 5),
(52, 52, 5),
(53, 53, 5),
(54, 54, 5),
(55, 55, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user_permissions`
--

CREATE TABLE `user_permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permissions_id` bigint(20) NOT NULL,
  `is_granted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_permissions`
--

INSERT INTO `user_permissions` (`id`, `user_id`, `permissions_id`, `is_granted`) VALUES
(1, 2, 2, 1),
(2, 2, 5, 1),
(3, 2, 3, 1),
(4, 2, 8, 1),
(5, 2, 4, 1),
(6, 2, 12, 1),
(7, 2, 13, 1),
(8, 14, 11, 0),
(9, 14, 2, 0),
(10, 14, 18, 0),
(11, 14, 34, 0),
(12, 14, 56, 0),
(13, 14, 5, 0),
(14, 14, 12, 0),
(15, 14, 4, 0),
(16, 14, 3, 0),
(17, 14, 13, 0),
(18, 14, 8, 0),
(19, 2, 9, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`groups_id`);

--
-- Indexes for table `groups_permissions`
--
ALTER TABLE `groups_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`groups_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`permissions_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `member_id` (`user_id`),
  ADD KEY `district_id` (`district_id`),
  ADD KEY `province_id` (`province_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `user_attribute`
--
ALTER TABLE `user_attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`groups_id`),
  ADD KEY `group_id` (`groups_id`);

--
-- Indexes for table `user_permissions`
--
ALTER TABLE `user_permissions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `groups_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `groups_permissions`
--
ALTER TABLE `groups_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=328;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `permissions_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `user_attribute`
--
ALTER TABLE `user_attribute`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `user_permissions`
--
ALTER TABLE `user_permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
