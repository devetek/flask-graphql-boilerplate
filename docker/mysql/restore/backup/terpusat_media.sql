-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jun 10, 2019 at 02:41 PM
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
-- Database: `terpusat_media`
--

-- --------------------------------------------------------

--
-- Table structure for table `media_client`
--

CREATE TABLE `media_client` (
  `client_id` bigint(11) NOT NULL,
  `client_name` varchar(225) NOT NULL,
  `client_public_key` varchar(100) NOT NULL,
  `client_secret_key` text NOT NULL,
  `client_datecreate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `media_client`
--

INSERT INTO `media_client` (`client_id`, `client_name`, `client_public_key`, `client_secret_key`, `client_datecreate`) VALUES
(1, 'chanel_1', 'eLhqZjypo1', '0d66ce24b7b5779e2fd9eeba1d8342aef03c14b43b2d5cc8bb0d14e2a59a3e7f0d66ce24b7b5779e2fd9eeba1d8342aef03c14b43b2d5cc8bb0d14e2a59a3e7feLhqZjypo1', '2017-05-23 12:39:21'),
(2, 'chanel_6', 'AMWXQisKMU', 'bcc32d7462dfd4f4f03dbf6f608b85e1f3a49ac983409b1020a067462fa18af7bcc32d7462dfd4f4f03dbf6f608b85e1f3a49ac983409b1020a067462fa18af7AMWXQisKMU', '2017-06-10 11:35:38'),
(3, 'sites_1', 'gJjdKrB2Fa', 'fe7a7b32be51b49949a28acf1cd66a778909d763682e49516bd2ee7506abedc8fe7a7b32be51b49949a28acf1cd66a778909d763682e49516bd2ee7506abedc8gJjdKrB2Fa', '2017-06-11 03:15:29'),
(4, 'sites_2', 'W9fomT0p0l', '255effb4f745bcd38df933e78762c60c9a83e122c4156077c1c0790e0d40f763255effb4f745bcd38df933e78762c60c9a83e122c4156077c1c0790e0d40f763W9fomT0p0l', '2017-07-20 08:45:47'),
(5, 'sites_4', 'XzRLgtvnsm', '3d9c51f6ab567f3903547b9995e9f633cd020d64fcc5262a980b90b79bb1c7443d9c51f6ab567f3903547b9995e9f633cd020d64fcc5262a980b90b79bb1c744XzRLgtvnsm', '2017-08-24 09:40:46'),
(6, 'chanel_44', '0hKmbOqt2V', 'db0f0ffbff5ece3d4fcd26d823011b4bc2003fa75ac3c8e268ec723af8320108db0f0ffbff5ece3d4fcd26d823011b4bc2003fa75ac3c8e268ec723af83201080hKmbOqt2V', '2017-09-09 05:46:38'),
(7, 'chanel_42', 'D48YdyDJc5', '9ba0aed936fbdb9b50af4af1288be503ccec07c87fccde2dcc4c85833f74f42d9ba0aed936fbdb9b50af4af1288be503ccec07c87fccde2dcc4c85833f74f42dD48YdyDJc5', '2017-09-10 07:56:38'),
(8, 'chanel_21', 'XgzqFFNnXZ', '36768a15e6e6558864898bb071cd05d806d8667784bf4fb6a773aa0623fb1ecf36768a15e6e6558864898bb071cd05d806d8667784bf4fb6a773aa0623fb1ecfXgzqFFNnXZ', '2018-01-06 02:00:05'),
(9, 'chanel_51', 'lln2MZfzJU', 'c6a30203ee4f939cbd17593d69e5c89dbcf402b360d903bde4f0008ddd38694ec6a30203ee4f939cbd17593d69e5c89dbcf402b360d903bde4f0008ddd38694elln2MZfzJU', '2018-01-06 02:07:57'),
(10, 'chanel_35', 'Em9exyigLv', '4a4112db8c9e8fed05384dc97c00a785d78b1c8891b32c58150628add0c46f154a4112db8c9e8fed05384dc97c00a785d78b1c8891b32c58150628add0c46f15Em9exyigLv', '2018-01-06 02:08:24'),
(11, 'chanel_25', 'cp7dCMHLNl', 'b60f2241defa15c7ba7cbaa6a6a5396920a0f804243720c358473ef1845ac740b60f2241defa15c7ba7cbaa6a6a5396920a0f804243720c358473ef1845ac740cp7dCMHLNl', '2018-01-06 02:11:07'),
(12, 'chanel_33', '4JK9zC2vj0', 'fea4a3953d933233c10cc9a15b0106208f9204201a05088a2c7bc3c50a6d2b97fea4a3953d933233c10cc9a15b0106208f9204201a05088a2c7bc3c50a6d2b974JK9zC2vj0', '2018-01-06 02:11:49'),
(13, 'sites_5', 'lyER9dKfdE', '0d880cc7b87e752396e15c32d0bca444ba9eaa040af3267d0da452fb4bd8934a0d880cc7b87e752396e15c32d0bca444ba9eaa040af3267d0da452fb4bd8934alyER9dKfdE', '2018-01-07 06:09:56'),
(14, 'chanel_54', 'ieTyicHtZm', 'c7137c8407f375a4dad80263e061c10e165270a844a6590b8df87e9c93c03f2bc7137c8407f375a4dad80263e061c10e165270a844a6590b8df87e9c93c03f2bieTyicHtZm', '2018-01-07 09:49:15'),
(15, 'chanel_56', 'coo7BreTUX', '358788fab332d444ad08738d5c1fa06ac84edb392ec98aa172e40c822771e43a358788fab332d444ad08738d5c1fa06ac84edb392ec98aa172e40c822771e43acoo7BreTUX', '2018-01-07 09:53:44'),
(16, 'chanel_61', 'mAntKDPxvN', '7423252e4f93895436ed686cac6c17c33cafa629bfe7e263b88da3884be84ee67423252e4f93895436ed686cac6c17c33cafa629bfe7e263b88da3884be84ee6mAntKDPxvN', '2018-01-07 10:02:19'),
(17, 'chanel_58', 'WlcN8TN056', 'a34d7f549510a3e5e26b92079d09a99c64a5296053c1a5c4acf9fd43ceb2b2bca34d7f549510a3e5e26b92079d09a99c64a5296053c1a5c4acf9fd43ceb2b2bcWlcN8TN056', '2018-01-07 10:05:53'),
(18, 'chanel_53', 'w1wOrCoT7k', 'f4adee8ecb527f5b744459825361e221147f88de2fe530908fe137cf7b100e27f4adee8ecb527f5b744459825361e221147f88de2fe530908fe137cf7b100e27w1wOrCoT7k', '2018-01-07 10:06:19'),
(19, 'chanel_62', 'F7U6kS5dMl', '3d75c44d16f98201bcdb1c1a69a1d4cbc39b20e678e3625a353e084e4727a0b33d75c44d16f98201bcdb1c1a69a1d4cbc39b20e678e3625a353e084e4727a0b3F7U6kS5dMl', '2018-01-07 10:23:47'),
(20, 'chanel_55', 'Zx4C89JJ0s', 'fe70cd04b75cfaa0a383bdcb3236643784be88b46d3ab5959a5e31f6be7986d6fe70cd04b75cfaa0a383bdcb3236643784be88b46d3ab5959a5e31f6be7986d6Zx4C89JJ0s', '2018-01-22 09:20:06'),
(21, 'chanel_67', 'Du0j7r1FsV', '3217920ad6a07fe559605db902a33e3ffe962b0fb05cea484d3521d5bd8f14323217920ad6a07fe559605db902a33e3ffe962b0fb05cea484d3521d5bd8f1432Du0j7r1FsV', '2018-01-27 04:46:03'),
(22, 'chanel_57', 'XQt7UgnDy8', '5530991e983cceb432fe77a19358f2e31d33ed3d2023081a3ccaf03b42823db55530991e983cceb432fe77a19358f2e31d33ed3d2023081a3ccaf03b42823db5XQt7UgnDy8', '2018-01-28 07:42:49'),
(23, 'member_54', 'FrWxa2rrv3', '9d51ba0ea5dcced8e0b07a0ff7e8cc1effbf779d1071dea36ea1fd1ccd8d35b49d51ba0ea5dcced8e0b07a0ff7e8cc1effbf779d1071dea36ea1fd1ccd8d35b4FrWxa2rrv3', '2018-02-11 09:02:58'),
(24, 'chanel_74', 'XGNXIGOquy', '6da45aa078cc6bc26d722d6a5364b400f6b09a6524567bb58afa63f84038718e6da45aa078cc6bc26d722d6a5364b400f6b09a6524567bb58afa63f84038718eXGNXIGOquy', '2018-03-02 07:33:53');

-- --------------------------------------------------------

--
-- Table structure for table `media_information`
--

CREATE TABLE `media_information` (
  `information_id` bigint(20) NOT NULL,
  `information_name` text NOT NULL,
  `information_title` varchar(225) NOT NULL,
  `information_desc` text,
  `information_createdate` datetime NOT NULL,
  `information_modify` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `information_extention` varchar(10) NOT NULL,
  `information_type` varchar(10) NOT NULL,
  `information_size` bigint(20) NOT NULL,
  `information_path` text NOT NULL,
  `information_member` bigint(20) NOT NULL,
  `information_status` int(2) NOT NULL COMMENT '0 = Hide | 1 = SHow',
  `information_client` bigint(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `media_information`
--

INSERT INTO `media_information` (`information_id`, `information_name`, `information_title`, `information_desc`, `information_createdate`, `information_extention`, `information_type`, `information_size`, `information_path`, `information_member`, `information_status`, `information_client`) VALUES
(1, 'about-us', 'About Us', 'About Us', '2017-05-23 12:39:21', '.jpg', 'image/jpeg', 159, '/data/statics/media/2017/05/23/', 1, 1, 1),
(2, 'headline-cover', 'Headline Cover', 'Headline Cover', '2017-06-10 11:35:38', '.jpg', 'image/jpeg', 116, '/data/statics/media/2017/06/10/', 1, 1, 2),
(3, 'stuktur-biro-umum-setjen', 'Stuktur Biro Umum Setjen', '', '2017-06-11 03:15:29', '.jpg', 'image/jpeg', 137, '/data/statics/media/2017/06/11/', 3, 1, 3),
(4, 'rc-slayer-muscle-hijau', 'rc-slayer-muscle-hijau', 'rc-slayer-muscle-hijau mainan remote control mobil berbentuk rock crawer yang dapat berjalan diberbagai medan ', '2017-07-20 08:45:47', '.jpg', 'image/jpeg', 78, '/data/statics/media/2017/07/20/', 2, 1, 4),
(5, 'rc-slayer-muscle-hijau1jpg', 'rc-slayer-muscle-hijau1.jpg', 'rc-slayer-muscle-hijau1 salah satu mainan reote conrol mobil ana berbentuk crawler yang dapat berjalan diberbagai medan', '2017-07-20 08:46:53', '.jpg', 'image/jpeg', 52, '/data/statics/media/2017/07/20/', 2, 1, 4),
(6, 'rc-slayer-muscle-merah', 'rc-slayer-muscle-merah', 'rc-slayer-muscle-merah salah satu mainan remote control yang dapat berjalan diberbagai medan', '2017-07-20 08:52:54', '.jpg', 'image/jpeg', 44, '/data/statics/media/2017/07/20/', 2, 1, 4),
(7, 'rc-slayer-muscle-merah1', 'rc-slayer-muscle-merah1', 'rc-slayer-muscle-merah salah satu mainan remote control mobil yang dapat berjalan diberbgai medan jalan', '2017-07-20 08:59:16', '.jpg', 'image/jpeg', 36, '/data/statics/media/2017/07/20/', 2, 1, 4),
(8, 'rc-slayer-beast-biru', 'rc-slayer-beast-biru', 'rc-slayer-beast-biru salah satu mainan remote yang dapat berjalan diberbagai medan', '2017-07-20 09:06:13', '.jpg', 'image/jpeg', 34, '/data/statics/media/2017/07/20/', 2, 1, 4),
(9, 'rc-slayer-beast-biru', 'rc-slayer-beast-biru', 'rc-slayer-beast-biru salah satu jenis mainan remote mobil yang dapat berjalan diberbagai medan', '2017-07-20 09:06:44', '.jpg', 'image/jpeg', 47, '/data/statics/media/2017/07/20/', 2, 1, 4),
(10, 'rc-slayer-beast-biru', 'rc-slayer-beast-biru', 'rc-slayer-beast-biru salah satu jenis mainan yang dapat berjalan diberbagai medan', '2017-07-20 09:07:14', '.jpg', 'image/jpeg', 47, '/data/statics/media/2017/07/20/', 2, 1, 4),
(11, 'rc-slayer-beast-biru1', 'rc-slayer-beast-biru1', 'rc-slayer-beast-biru1 salah satu jenis mainan remote yang dapat berjalan diberbagai medan', '2017-07-20 09:07:45', '.jpg', 'image/jpeg', 47, '/data/statics/media/2017/07/20/', 2, 1, 4),
(12, 'rc-slayer-beast-merah', 'rc-slayer-beast-merah', 'rc-slayer-beast-merah salah satu jenis mainan remote yang dapat berjalan diberbagai medan', '2017-07-20 09:12:03', '.jpg', 'image/jpeg', 34, '/data/statics/media/2017/07/20/', 2, 1, 4),
(13, 'rc-slayer-beast-merah1', 'rc-slayer-beast-merah1', 'rc-slayer-beast-merah salah satu jenis mainan remote mobil yang dapat berjalann diberbagai medan', '2017-07-20 09:12:40', '.jpg', 'image/jpeg', 54, '/data/statics/media/2017/07/20/', 2, 1, 4),
(14, 'rc-rock-crawler-merah', 'rc-rock-crawler-merah', 'rc-rock-crawler-merah salah satu jenis yang dapat berjalan diberbagai medan', '2017-07-20 09:20:25', '.jpg', 'image/jpeg', 89, '/data/statics/media/2017/07/20/', 2, 1, 4),
(15, 'rc-rock-crawler-hijau', 'rc-rock-crawler-hijau', 'rc-rock-crawler-hijau salah satu bentuk mobil remote yang dapat berjalan diberbagai medan', '2017-07-20 09:28:42', '.jpg', 'image/jpeg', 208, '/data/statics/media/2017/07/20/', 2, 1, 4),
(16, 'rc-king-muscle-extreme-merah', 'rc-king-muscle-extreme-merah', 'rc-king-muscle-extreme-merah salah satu jenis mainan remote yang dapat berjalan diberbagai medan', '2017-07-20 09:37:48', '.jpg', 'image/jpeg', 365, '/data/statics/media/2017/07/20/', 2, 1, 4),
(17, 'rc-king-muscle-extreme-merah1', 'rc-king-muscle-extreme-merah1', 'rc-king-muscle-extreme-merah salah salah satu jenis mainan remote yang dapat berjalan diberbagai medan', '2017-07-20 09:48:38', '.jpg', 'image/jpeg', 1129, '/data/statics/media/2017/07/20/', 2, 1, 4),
(18, 'rc-king-muscle-extreme-merah2', 'rc-king-muscle-extreme-merah2', 'rc-king-muscle-extreme-merah2', '2017-07-20 09:56:07', '.png', 'image/png', 575, '/data/statics/media/2017/07/20/', 2, 1, 4),
(19, 'rc-king-muscle-extreme-biru', 'rc-king-muscle-extreme-biru', 'rc-king-muscle-extreme-biru salah satu jenis mainan remote yang dapat berjalan diberbagai medan', '2017-07-20 09:57:47', '.jpg', 'image/jpeg', 56, '/data/statics/media/2017/07/20/', 2, 1, 4),
(20, 'rc-land-buster-biru', 'rc-land-buster-biru', 'rc-land-buster-biru salah satu jenis mainan remote yang dapat berjalab diberbagai medan jalan', '2017-07-20 10:09:01', '.jpg', 'image/jpeg', 39, '/data/statics/media/2017/07/20/', 2, 1, 4),
(21, 'rc-slayer-beast-biru1', 'rc-slayer-beast-biru1', 'rc-slayer-beast-biru salah satu jenis mainan remote mobil yang dapat berjalan di berbagai medan', '2017-07-20 10:09:37', '.jpg', 'image/jpeg', 45, '/data/statics/media/2017/07/20/', 2, 1, 4),
(22, 'rc-slayer-beast-biru1', 'rc-slayer-beast-biru1', 'rc-slayer-beast-biru1', '2017-07-20 10:09:58', '.jpg', 'image/jpeg', 45, '/data/statics/media/2017/07/20/', 2, 1, 4),
(23, 'rc-land-buster-biruu', 'rc-land-buster-biruu', 'rc-land-buster-biruu', '2017-07-20 10:10:21', '.jpg', 'image/jpeg', 45, '/data/statics/media/2017/07/20/', 2, 1, 4),
(24, 'buggy-hijau', 'buggy-hijau', 'buggy-hijau', '2017-07-20 10:58:28', '.jpg', 'image/jpeg', 85, '/data/statics/media/2017/07/20/', 2, 1, 4),
(25, 'buggy-merah', 'buggy-merah', 'buggy-merah', '2017-07-20 10:59:39', '.jpeg', 'image/jpeg', 72, '/data/statics/media/2017/07/20/', 2, 1, 4),
(26, 'uno-stacko', 'uno-stacko', 'uno-stacko', '2017-07-20 11:05:05', '.jpg', 'image/jpeg', 32, '/data/statics/media/2017/07/20/', 2, 1, 4),
(27, 'uno-stacko-kartu', 'uno-stacko-kartu', 'uno-stacko-kartu', '2017-07-20 11:08:52', '.jpg', 'image/jpeg', 277, '/data/statics/media/2017/07/20/', 2, 1, 4),
(28, 'uno-dadu-kartu', 'uno-dadu-kartu', 'uno-dadu-kartu', '2017-07-20 11:12:31', '.jpg', 'image/jpeg', 289, '/data/statics/media/2017/07/20/', 2, 1, 4),
(29, 'buggy', 'buggy', 'buggy', '2017-07-20 11:23:46', '.jpeg', 'image/jpeg', 73, '/data/statics/media/2017/07/20/', 2, 1, 4),
(30, 'rc-heli-hx-703', 'rc-heli-hx-703', 'rc-heli-hx-703', '2017-07-20 01:50:42', '.jpg', 'image/jpeg', 17, '/data/statics/media/2017/07/20/', 2, 1, 4),
(31, 'rc-heli-hx-703-k', 'rc-heli-hx-703-k', 'rc-heli-hx-703-k', '2017-07-20 02:01:17', '.jpg', 'image/jpeg', 54, '/data/statics/media/2017/07/20/', 2, 1, 4),
(32, 'merah', 'merah', 'merah', '2017-07-20 02:07:00', '.jpg', 'image/jpeg', 65, '/data/statics/media/2017/07/20/', 2, 1, 4),
(33, '703', '703', '703', '2017-07-20 02:07:16', '.jpeg', 'image/jpeg', 22, '/data/statics/media/2017/07/20/', 2, 1, 4),
(34, 'ch058-merah', 'ch058-merah', 'ch058-merah', '2017-07-20 02:22:07', '.jpeg', 'image/jpeg', 28, '/data/statics/media/2017/07/20/', 2, 1, 4),
(35, 'ch058-campur', 'ch058-campur', 'ch058-campur', '2017-07-20 02:22:31', '.jpeg', 'image/jpeg', 26, '/data/statics/media/2017/07/20/', 2, 1, 4),
(36, 'biru', 'biru', 'biru', '2017-07-20 02:27:27', '.jpeg', 'image/jpeg', 30, '/data/statics/media/2017/07/20/', 2, 1, 4),
(37, 'one', 'one', 'one', '2017-07-20 02:41:09', '.jpg', 'image/jpeg', 175, '/data/statics/media/2017/07/20/', 2, 1, 4),
(38, 'tomcat', 'tomcat', 'tomcat\r\n', '2017-07-20 03:01:10', '.jpg', 'image/jpeg', 129, '/data/statics/media/2017/07/20/', 2, 1, 4),
(39, 'dump', 'dump', 'dump', '2017-07-20 08:15:37', '.jpg', 'image/jpeg', 201, '/data/statics/media/2017/07/20/', 2, 1, 4),
(40, 'dump-truck', 'dump-truck', 'dump-truck', '2017-07-20 08:15:58', '.jpg', 'image/jpeg', 164, '/data/statics/media/2017/07/20/', 2, 1, 4),
(41, 'beko', 'beko', 'beko', '2017-07-20 08:50:59', '.jpg', 'image/jpeg', 178, '/data/statics/media/2017/07/20/', 2, 1, 4),
(42, 'super', 'super', 'super', '2017-07-20 08:51:44', '.jpg', 'image/jpeg', 256, '/data/statics/media/2017/07/20/', 2, 1, 4),
(43, 'tokopedia-toko-mainanku', 'Tokopedia Toko Mainanku', 'Tokopedia Toko Mainanku', '2017-08-17 10:59:53', '.png', 'image/png', 81, '/data/statics/media/2017/08/17/', 1, 1, 4),
(44, 'bukalapak-toko-mainanku', 'Bukalapak Toko Mainanku', 'Bukalapak Toko Mainanku', '2017-08-17 11:02:35', '.png', 'image/png', 29, '/data/statics/media/2017/08/17/', 1, 1, 4),
(45, 'shopee-toko-mainanku', 'Shopee Toko Mainanku', 'Shopee Toko Mainanku', '2017-08-17 11:05:29', '.png', 'image/png', 2, '/data/statics/media/2017/08/17/', 1, 1, 4),
(46, 'lombok-demo', 'Lombok Demo', 'Lombok Demo', '2017-08-24 09:40:46', '.png', 'image/png', 5, '/data/statics/media/2017/08/24/', 1, 0, 5),
(47, 'toko-mainan-ku', 'Toko Mainan Ku', 'Toko Mainan Ku', '2017-08-30 04:08:43', '.jpeg', 'image/jpeg', 96, '/data/statics/media/2017/08/30/', 1, 1, 4),
(48, 'sewa-mobil-gili-trawangan-1', 'Sewa Mobil Gili Trawangan 1', 'Oktourlombok Sewa Mobil Gili Trawangan 1', '2017-09-09 05:46:38', '.jpg', 'image/jpeg', 93, '/data/statics/media/2017/09/09/', 1, 1, 6),
(49, 'sewa-mobil-gili-trawangan-2', 'Sewa Mobil Gili Trawangan 2', 'Ok tour lombok - Sewa Mobil Gili Trawangan 2', '2017-09-09 05:47:07', '.jpg', 'image/jpeg', 69, '/data/statics/media/2017/09/09/', 1, 1, 6),
(50, 'sewa-mobil-gili-trawangan-3', 'Sewa Mobil Gili Trawangan 3', 'Ok tour lombok - Sewa Mobil Gili Trawangan 3', '2017-09-09 05:47:29', '.jpg', 'image/jpeg', 76, '/data/statics/media/2017/09/09/', 1, 1, 6),
(51, 'sewa-mobil-gili-trawangan-4', 'Sewa Mobil Gili Trawangan 4', 'Ok tour lombok - Sewa Mobil Gili Trawangan 4', '2017-09-09 05:47:50', '.jpg', 'image/jpeg', 68, '/data/statics/media/2017/09/09/', 1, 1, 6),
(52, 'sewa-mobil-gili-trawangan-5', 'Sewa Mobil Gili Trawangan 5', 'Ok tour lombok - Sewa Mobil Gili Trawangan 5', '2017-09-09 05:48:04', '.jpg', 'image/jpeg', 147, '/data/statics/media/2017/09/09/', 1, 1, 6),
(53, 'test-page-img', 'Test Page Img', 'Test Page Img', '2017-09-10 07:56:38', '.jpg', 'image/jpeg', 124, '/data/statics/media/2017/09/10/', 27, 1, 7),
(54, 'test-page-img', 'Test Page Img', 'Test Page Img', '2017-09-10 07:58:56', '.jpg', 'image/jpeg', 228, '/data/statics/media/2017/09/10/', 27, 0, 5),
(55, 'www-image-raka', 'www Image Raka', 'www Image Raka', '2017-09-10 07:59:25', '.jpg', 'image/jpeg', 228, '/data/statics/media/2017/09/10/', 27, 0, 5),
(56, '', '', '', '2018-01-06 12:41:43', '.jpg', 'image/jpeg', 337, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(57, 'adsad', 'adsad', 'asdsa', '2018-01-06 12:42:29', '.png', 'image/png', 647, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(58, 'ssdafsa-asukdhas', 'ssdafsa asukdhas', 'akdjas', '2018-01-06 12:49:21', '.png', 'image/png', 33, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(59, 'kikuk', 'kikuk', '', '2018-01-06 12:50:13', '.png', 'image/png', 101, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(60, 'adasd', 'adasd', '', '2018-01-06 12:51:52', '.jpg', 'image/jpeg', 337, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(61, 'adjashd-asdjas', 'adjashd asdjas', 'kjahdas ', '2018-01-06 12:52:47', '.png', 'image/png', 647, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(62, 'akdasdsa-asjdhas', 'akdasdsa asjdhas', 'k ashdkasdhasd', '2018-01-06 12:53:42', '.jpg', 'image/jpeg', 337, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(63, 'asdasd', 'asdasd', '', '2018-01-06 12:57:23', '.png', 'image/png', 33, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(64, 'adasd', 'adasd', 'asdasd', '2018-01-06 01:08:53', '.png', 'image/png', 647, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(65, 'akdjasd-sadas', 'akdjasd sadas', '', '2018-01-06 01:10:16', '.png', 'image/png', 101, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(66, 'juahdas-ajdhasdasdasd', 'juahdas ajdhasdasdasd', '', '2018-01-06 01:13:04', '.png', 'image/png', 101, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(67, 'prakasa', 'Prakasa', '', '2018-01-06 01:14:06', '.jpg', 'image/jpeg', 337, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(68, 'nedya-prakasa', 'Nedya Prakasa', '', '2018-01-06 01:14:58', '.png', 'image/png', 647, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(69, 'nedya-prakasa', 'Nedya Prakasa', '', '2018-01-06 01:15:54', '.png', 'image/png', 676, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(70, 'kikuk-kikuk', 'kikuk kikuk', 'ajdhas asda', '2018-01-06 01:19:13', '.png', 'image/png', 647, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(71, '1515219603-prakasa-lord', 'Prakasa Lord', '', '2018-01-06 01:20:03', '.png', 'image/png', 647, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(72, '1515219796-kiklahsad-aasda', 'Kiklahsad aasda', 'adas', '2018-01-06 01:23:16', '.png', 'image/png', 647, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(73, '1515220298-kiklahsad-aasda', 'Kiklahsad aasda', 'adas', '2018-01-06 01:31:39', '.png', 'image/png', 647, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(74, '1515220452-akdahsd-hjsdouqwe', 'akdahsd hjsdouqwe', 'jkahdasd', '2018-01-06 01:34:12', '.png', 'image/png', 33, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(75, '1515220774-akdajhsd', 'akdajhsd', 'kjasdas', '2018-01-06 01:39:34', '.png', 'image/png', 101, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(76, '1515220830-akda', 'akda', 'kajsdas', '2018-01-06 01:40:30', '.png', 'image/png', 33, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(77, '1515220866-akjhdasd', 'akjhdasd', 'kahsdasda', '2018-01-06 01:41:06', '.png', 'image/png', 33, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(78, '1515220908-akjdas-dasjdahsdas', 'akjdas dasjdahsdas', 'akdawqe', '2018-01-06 01:41:48', '.jpg', 'image/jpeg', 337, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(79, '1515220995-akjdas-dasjdahsdas', 'akjdas dasjdahsdas', 'akdawqe', '2018-01-06 01:43:15', '.jpg', 'image/jpeg', 337, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(80, '1515221060-oiauekajw', 'oiauekajw', 'akjdasdas', '2018-01-06 01:44:20', '.png', 'image/png', 676, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(81, '1515221167-akdjas', 'akdjas', 'kjasdas', '2018-01-06 01:46:07', '.png', 'image/png', 33, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(82, '1515221278-kdjaskda-aiudaqe-qweuqywgeqw-ehasdasd', 'kdjaskda aiudaqe qweuqywgeqw ehasdasd', 'akdasdasd', '2018-01-06 01:47:58', '.png', 'image/png', 676, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(83, '1515221489-adasdqwe', 'adasdqwe', 'adas', '2018-01-06 01:51:29', '.jpg', 'image/jpeg', 337, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(84, '1515221588-kjadhad-ajdhasd', 'kjadhad ajdhasd', 'kahdas', '2018-01-06 01:53:08', '.png', 'image/png', 33, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(85, '1515221682-uhdauqwyeqw-ejqebqw', 'uhdauqwyeqw ejqebqw', 'kadas dajdbasdas', '2018-01-06 01:54:42', '.jpg', 'image/jpeg', 337, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(86, '1515221724-ukeqwe-ejqwheqw', 'ukeqwe ejqwheqw', 'kahe easdas', '2018-01-06 01:55:24', '.png', 'image/png', 33, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(87, '1515221776-oiuewqe-qwjehqwewqe', 'oiuewqe qwjehqwewqe', 'aijdasdasdwqe', '2018-01-06 01:56:16', '.png', 'image/png', 676, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(88, '1515221864-ini-asli', 'Ini Asli', 'ajdhasdsa asdas', '2018-01-06 01:57:44', '.png', 'image/png', 676, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 1),
(89, '1515222005-kuhe-ajdas-qlsdh-nadqiu', 'kuhe ajdas qlsdh nadqiu', 'jad jhqeqwm adasd', '2018-01-06 02:00:05', '.png', 'image/png', 647, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 8),
(90, '1515222056-iqeuq-weqjweqwe', 'iqeuq weqjweqwe', 'khjewqe qkejhqwe', '2018-01-06 02:00:56', '.jpg', 'image/jpeg', 337, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 8),
(91, '1515222477-kadhqw-ewqehqwe', 'kadhqw ewqehqwe', 'kjahd amzxiqweqwe', '2018-01-06 02:07:57', '.jpg', 'image/jpeg', 337, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 9),
(92, '1515222504-35-bro', '35 bro', 'bro', '2018-01-06 02:08:24', '.jpg', 'image/jpeg', 337, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 10),
(93, '1515222667-25-bree', '25 Bree', 'jkjasda dajdas', '2018-01-06 02:11:07', '.jpg', 'image/jpeg', 337, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 11),
(94, '1515222709-kkdha-dasjkdha', 'kkdha dasjkdha', 'ka eqwiuhq weqwasda', '2018-01-06 02:11:49', '.png', 'image/png', 647, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 12),
(95, '1515222747-qjeqw-qpweqweqw', 'qjeqw qpweqweqw', 'kjwe mqnweqwiurhqweqw', '2018-01-06 02:12:27', '.png', 'image/png', 676, '/Users/prakasa/Projects/www/statics/media/2018/01/06/', 1, 1, 12),
(96, '1515323396-om-kumis', 'Om Kumis', 'isi om kumis logo aja pokoknya', '2018-01-07 06:09:56', '.jpg', 'image/jpeg', 102, '/Users/prakasa/Projects/www/statics/media/2018/01/07/', 1, 1, 13),
(97, '1515336288-lagi-lagi-bisa-gila', 'Lagi Lagi Bisa Gila', 'hahaha bener bener gila ngerjain media', '2018-01-07 09:44:49', '.jpg', 'image/jpeg', 337, '/Users/prakasa/Projects/www/statics/media/2018/01/07/', 1, 0, 13),
(98, '1515336555-kdhasd-asdadk-asdasd', 'kdhasd asdadk asdasd', 'kjahdas dakdjhasd asdsad', '2018-01-07 09:49:15', '.png', 'image/png', 676, '/Users/prakasa/Projects/www/statics/media/2018/01/07/', 1, 0, 14),
(99, '1515336824-jsa-dasdq-adasd', 'jsa dasdq adasd ', 'kasdha sdaskjqwadas', '2018-01-07 09:53:44', '.png', 'image/png', 101, '/Users/prakasa/Projects/www/statics/media/2018/01/07/', 1, 1, 15),
(100, '1515337339-adasd', 'adasd', 'sdsad', '2018-01-07 10:02:19', '.png', 'image/png', 33, '/Users/prakasa/Projects/www/statics/media/2018/01/07/', 1, 1, 16),
(101, '1515337553-kasd-kadas-dadjasd', 'kasd kadas dadjasd', 'jsha qwieuhaakasd', '2018-01-07 10:05:53', '.png', 'image/png', 33, '/Users/prakasa/Projects/www/statics/media/2018/01/07/', 1, 1, 17),
(102, '1515337579-ajdas-dasd-adkashda', 'ajdas dasd adkashda', 'kashdiqwueqwas', '2018-01-07 10:06:19', '.png', 'image/png', 101, '/Users/prakasa/Projects/www/statics/media/2018/01/07/', 1, 1, 18),
(103, '1515337779-jad-asdasjkdhasd', 'jad asdasjkdhasd', 'akjsdhasdqweqw', '2018-01-07 10:09:40', '.png', 'image/png', 647, '/Users/prakasa/Projects/www/statics/media/2018/01/07/', 1, 1, 18),
(104, '1515337847-uhwqewqe-wqjehqwewq', 'uhwqewqe wqjehqwewq', 'akdhasd ajdhasjdqwe', '2018-01-07 10:10:48', '.jpg', 'image/jpeg', 337, '/Users/prakasa/Projects/www/statics/media/2018/01/07/', 1, 1, 18),
(105, '1515337908-suskes-kahh', 'Suskes Kahh', 'jaduiqw qwjehqwewq', '2018-01-07 10:11:48', '.jpg', 'image/jpeg', 337, '/Users/prakasa/Projects/www/statics/media/2018/01/07/', 1, 1, 18),
(106, '1515338627-judul-tapi-ga-ada-image', 'Judul Tapi Ga Ada Image', 'Ga ada image', '2018-01-07 10:23:47', '.png', 'image/png', 33, '/Users/prakasa/Projects/www/statics/media/2018/01/07/', 1, 1, 19),
(107, '1515821746-demo-ko-ga-kebuka', 'Demo Ko Ga Kebuka', 'jhad adjasdasd sadas', '2018-01-13 12:35:46', '.png', 'image/png', 31, '/Users/prakasa/Projects/www/statics/media/2018/01/13/', 1, 1, 13),
(108, '1516587606-adja-asdas', 'adja asdas', 'kasd aksdhqwe', '2018-01-22 09:20:06', '.png', 'image/png', 101, '/Users/prakasa/Projects/www/statics/media/2018/01/22/', 1, 1, 20),
(109, '1517046363-banner-300-x-250', 'Banner 300 x 250', 'Banner 300 x 250', '2018-01-27 04:46:03', '.jpg', 'image/jpeg', 37, '/Users/prakasa/Projects/www/statics/media/2018/01/27/', 1, 1, 21),
(110, '1517046782-banner-300-x-600', 'Banner 300 x 600', 'Banner 300 x 600', '2018-01-27 04:53:02', '.png', 'image/png', 192, '/Users/prakasa/Projects/www/statics/media/2018/01/27/', 1, 1, 21),
(111, '1517056056-ada', 'ada', 'asdasd', '2018-01-27 07:27:36', '.png', 'image/png', 192, '/Users/prakasa/Projects/www/statics/media/2018/01/27/', 1, 1, 13),
(112, '1517056072-aljdas-asd', 'aljdas asd', 'oiqwesadasd sdas', '2018-01-27 07:27:52', '.jpg', 'image/jpeg', 37, '/Users/prakasa/Projects/www/statics/media/2018/01/27/', 1, 1, 13),
(113, '1517113230-test-edit', 'Test Edit Ganti Images Deui', 'Test Edit banget Broh', '2018-01-28 11:20:30', '.png', 'image/png', 12, '/Users/prakasa/Projects/www/statics/media/2018/01/28/', 1, 1, 17),
(114, '1517143369-sansekerta', 'Sansekerta', 'Sansekerta', '2018-01-28 07:42:49', '.jpg', 'image/jpeg', 1712, '/Users/prakasa/Projects/www/statics/media/2018/01/28/', 1, 1, 22),
(115, 'www', 'www', 'adad', '2018-02-11 09:02:58', '.png', 'image/png', 12, '/Users/prakasa/Projects/www/statics/media/2018/02/11/', 54, 1, 23),
(116, 'ad', 'ad', 'ad', '2018-02-11 09:03:51', '.jpeg', 'image/jpeg', 9, '/Users/prakasa/Projects/www/statics/media/2018/02/11/', 54, 1, 23),
(117, 'aasd', 'aasd', 'ada', '2018-02-11 09:05:25', '.jpg', 'image/jpeg', 37, '/Users/prakasa/Projects/www/statics/media/2018/02/11/', 54, 1, 23),
(118, 'adsa', 'adsa', 'adsa', '2018-02-11 09:10:33', '.jpg', 'image/jpeg', 157, '/Users/prakasa/Projects/www/statics/media/2018/02/11/', 54, 1, 23),
(119, 'adas', 'adas', 'adasd', '2018-02-11 09:15:49', '.jpg', 'image/jpeg', 231, '/Users/prakasa/Projects/www/statics/media/2018/02/11/', 54, 1, 23),
(120, 'adkjas', 'adkjas', 'asdasd', '2018-02-11 10:58:36', '.png', 'image/png', 192, '/Users/prakasa/Projects/www/statics/media/2018/02/11/', 54, 1, 23),
(121, '1519950833-nusa-lembongan', 'Nusa Lembongan', 'Nusa Lembongan', '2018-03-02 07:33:53', '.png', 'image/png', 34, '/Users/prakasa/Projects/www/statics/media/2018/03/02/', 1, 1, 24),
(122, '1519956260-mirai', 'Mirai', 'Mirai', '2018-03-02 09:04:20', '.png', 'image/png', 703, '/Users/prakasa/Projects/www/statics/media/2018/03/02/', 1, 1, 24),
(123, '1546533822-www', 'www', 'ww', '2019-01-03 11:43:43', '.png', 'image/png', 155, '/Users/prakasa/Projects/www/statics/media/2019/01/03/', 1, 1, 5),
(124, '1546533878-a', 'a', 'qwe', '2019-01-03 11:44:38', '.png', 'image/png', 33, '/Users/prakasa/Projects/www/statics/media/2019/01/03/', 1, 1, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `media_client`
--
ALTER TABLE `media_client`
  ADD PRIMARY KEY (`client_id`);

--
-- Indexes for table `media_information`
--
ALTER TABLE `media_information`
  ADD PRIMARY KEY (`information_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `media_client`
--
ALTER TABLE `media_client`
  MODIFY `client_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `media_information`
--
ALTER TABLE `media_information`
  MODIFY `information_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
