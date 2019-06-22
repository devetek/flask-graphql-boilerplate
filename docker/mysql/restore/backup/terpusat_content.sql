-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jun 09, 2019 at 03:24 PM
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
-- Database: `terpusat_content`
--

-- --------------------------------------------------------

--
-- Table structure for table `chanel`
--

CREATE TABLE `chanel` (
  `chanel_id` bigint(100) UNSIGNED NOT NULL,
  `chanel_name` varchar(255) NOT NULL,
  `chanel_desc` text NOT NULL,
  `chanel_created` datetime NOT NULL,
  `chanel_parent` bigint(20) NOT NULL,
  `chanel_status` int(2) NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `sites_id` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chanel`
--

INSERT INTO `chanel` (`chanel_id`, `chanel_name`, `chanel_desc`, `chanel_created`, `chanel_parent`, `chanel_status`, `type_id`, `sites_id`) VALUES
(1, 'Halaman', 'Index Halaman Toko Mainan Ku', '2017-05-21 11:36:52', 0, 3, 6, 2),
(2, 'tester', '', '2017-05-24 08:24:15', 5, 0, 2, 2),
(3, 'test', '', '2017-05-24 08:26:28', 5, 0, 2, 2),
(4, 'test 1', '', '2017-05-24 08:37:25', 3, 0, 2, 2),
(5, 'Mainan', '', '2017-05-24 08:38:08', 0, 3, 2, 2),
(6, 'Halaman', 'Indeks Halaman', '2017-06-10 23:34:27', 0, 3, 6, 1),
(7, 'Berita', 'Indeks Halaman Berita Sekertariat Jendral Biro Kemenhan', '2017-06-10 23:52:40', 0, 3, 1, 1),
(8, 'Remote Control Mobil', 'Jual Mainan Remote Control Mobil Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 12:48:38', 5, 3, 2, 2),
(9, 'Big Foot CrawlerHummer', 'Jual Mainan Remote Control Big Foot Crawler - Hummer Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 12:50:38', 8, 3, 2, 2),
(10, 'Mobil ModelSport', 'Jual Mainan Remote Control Mobil Model - Sport Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 12:51:26', 8, 3, 2, 2),
(11, 'Mobil Drifting', 'Jual Mainan Remote Control Mobil Drifting Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 12:51:56', 8, 3, 2, 2),
(12, 'Mobil Formula One', 'Jual Mainan Remote Control Mobil Formula One Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 12:52:45', 8, 3, 2, 2),
(13, 'Mobil Wall Climber', 'Jual Mainan Remote Control Mobil Wall Climber Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 12:53:12', 8, 3, 2, 2),
(14, 'Remote Control HeliDrone', '', '2017-07-08 12:53:46', 5, 3, 2, 2),
(15, 'Helicopter 2 Channel', 'Jual Mainan Remote Control Helicopter 2 Channel Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 12:54:21', 14, 3, 2, 2),
(16, 'Helicopter 335 Channel', 'Jual Mainan Remote Control Helicopter Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 12:55:22', 14, 3, 2, 2),
(17, 'Helicopter 4 Channel', 'Jual Mainan Remote Control Helicopter 4 Channel Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 12:55:54', 14, 3, 2, 2),
(18, 'Drone', 'Jual Mainan Remote Control Drone Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 12:56:27', 14, 3, 2, 2),
(19, 'Mobil Tank', 'Jual Mainan Remote Control Tank Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 12:57:15', 8, 3, 2, 2),
(20, 'Mobil BesarAlat Berat', 'Jual Mainan Remote Control Mobil Besar/Alat Berat Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 12:57:39', 8, 3, 2, 2),
(21, 'Remote Control Perahu Boat', 'Jual Mainan Remote Control Perahu Boat Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 12:58:36', 5, 3, 2, 2),
(22, 'Remote Control Robot Robotan', 'Jual Mainan Remote Control Robot-Robotan Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 12:59:07', 5, 3, 2, 2),
(23, 'Aneka Diecast', 'Jual Mainan Aneka Diecast Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 12:59:41', 5, 3, 2, 2),
(24, 'Hotwheels', 'Jual Mainan Diecast Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 13:01:08', 23, 3, 2, 2),
(25, 'Kinsmart', 'Jual Mainan Diecast Kinsmart Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 13:03:08', 23, 3, 2, 2),
(26, 'Vespa', 'Jual Mainan Diecast Vespa Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 13:03:36', 23, 3, 2, 2),
(27, 'Pesawat', 'Jual Mainan Diecast Pesawat Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 13:03:57', 23, 3, 2, 2),
(28, 'Aneka Mainan Edukasi', 'Jual Mainan Edukasi Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 13:04:22', 5, 3, 2, 2),
(29, 'Mainan Uno', 'Jual Mainan Aneka Permainan Uno Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 13:12:39', 28, 3, 2, 2),
(30, 'Karpet Evamat', 'Jual Mainan Aneka Jenis Karpet Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 13:13:50', 28, 3, 2, 2),
(31, 'Scrabbel Board Game', 'Jual Mainan Scrabbel Board GameAnak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 13:14:44', 28, 3, 2, 2),
(32, 'Mainan Talking TomCat', 'Jual Mainan Aneka Figure Talking TomCat Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 13:16:02', 5, 3, 2, 2),
(33, 'Mainan Tenda Anak', 'Jual Mainan Aneka Jenis Tenda Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 13:16:57', 5, 3, 2, 2),
(34, 'Mainan Olahraga', 'Jual Mainan Aneka Permainan Olaharaga Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 13:17:44', 5, 3, 2, 2),
(35, 'Mainan Anak Perempuan', 'Jual Mainan Anak Perempuan Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 13:18:16', 5, 3, 2, 2),
(36, 'BricklockLego', 'Jual Mainan Brick / Block / Lego Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 13:19:14', 28, 3, 2, 2),
(37, 'Mainan Track Racing', 'Jual Mainan Track Racing Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-08 13:21:11', 5, 3, 2, 2),
(38, 'Mobil Electric', 'Jual Mainan Remote Control Mobil Electric Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-20 15:23:13', 8, 3, 2, 2),
(39, 'Mobil Engine', 'Jual Mainan Remote Control Mobil Engine Anak harga murah, kualitas bintang 5 dan siap dikirim kenusantara', '2017-07-20 15:23:52', 8, 3, 2, 2),
(40, 'Demo', 'Demo', '2017-08-21 21:53:37', 0, 3, 1, 3),
(41, 'Demo 1', 'Demo 1', '2017-08-21 21:53:51', 40, 3, 1, 3),
(42, 'Halaman', 'Indeks Halaman', '2017-08-24 22:17:02', 0, 3, 6, 4),
(43, 'Sewa', 'Tarif Sewa', '2017-09-06 00:32:33', 0, 3, 2, 4),
(44, 'Galleries', 'Index Galleries', '2017-09-09 17:34:46', 0, 3, 4, 4),
(45, 'Sharing Shuttle', 'Tarif Sharing Shuttle', '2017-09-10 09:42:18', 43, 3, 2, 4),
(46, 'Private Shuttle', 'Tarif Private Shuttle', '2017-09-10 17:37:50', 43, 3, 2, 4),
(47, 'Sewa Mobil', 'Sewa Mobil', '2017-09-10 17:38:22', 43, 3, 2, 4),
(48, 'Sewa Motor', 'Sewa Motor', '2017-09-10 17:38:44', 43, 3, 2, 4),
(49, 'Paket Tour', 'Paket Tour', '2017-09-10 19:34:19', 0, 3, 7, 4),
(50, 'Inspirasi', 'Inspirasi', '2017-11-12 12:46:08', 0, 3, 1, 2),
(51, 'Artikel Inspirasi', 'Ckd asdasidj', '2017-11-12 13:11:49', 50, 3, 1, 2),
(52, 'Inspirasi', 'Inspirasi ajah', '2018-01-07 18:26:24', 0, 3, 1, 5),
(53, 'Humor', 'Humor tak seharusnya hanya membuat kita tertawa, humor om kumis dikemas untuk menginformasi dan menginspirasi anda', '2018-01-07 18:27:04', 0, 3, 1, 5),
(54, 'Tekno', 'Berita teknologi, review gadget, tekno stuff Om Kumis kemas dalam nuansa yang lebih menarik', '2018-01-07 18:27:44', 0, 3, 1, 5),
(55, 'Komunitas', 'Forum diskusi, berbagi, dan kreasi serta rumah bagi seluruh komunitas di Indonesia.', '2018-01-07 18:28:05', 0, 3, 3, 5),
(56, 'Brand Highlights', 'Deskripsi Brand  Highlights', '2018-01-07 18:28:38', 0, 3, 8, 5),
(57, 'Events Update', 'Deskripsi Event Update', '2018-01-07 18:30:49', 0, 3, 9, 5),
(58, 'Page', 'Page', '2018-01-07 20:26:07', 0, 3, 6, 5),
(59, 'Olahraga', 'Olahraga', '2018-01-07 20:26:20', 0, 3, 1, 5),
(60, 'Berita', 'Berita', '2018-01-07 20:26:34', 0, 3, 1, 5),
(61, 'Gaya Hidup', 'gaya Hidup', '2018-01-07 20:26:47', 0, 3, 1, 5),
(62, 'Hiburan', 'Hiburan', '2018-01-07 20:27:01', 0, 3, 1, 5),
(63, 'Artikel Inspirasi', 'Artikel Inspirasi', '2018-01-07 20:27:38', 52, 3, 1, 5),
(64, 'Produk Jasa', 'Produk Jasa', '2018-01-22 12:37:43', 0, 3, 2, 5),
(65, 'Paket Wisata', 'Paket Wisata', '2018-01-22 12:38:25', 0, 3, 7, 5),
(66, 'Artikel Tekno', 'adkjasd', '2018-01-27 11:51:44', 54, 3, 1, 5),
(67, 'Kikuk Kikuk', 'asdjhasd asdaseqeqw', '2018-01-27 12:53:43', 56, 3, 8, 5),
(68, 'Badala Kekok', 'jakhd asjkdhqwe asdasd', '2018-01-27 12:54:01', 56, 3, 8, 5),
(69, 'as asd', 'asdsad', '2018-01-27 13:00:49', 56, 3, 8, 5),
(70, 'ka eqwie', 'oa das asiwqe', '2018-01-27 13:00:57', 56, 3, 8, 5),
(71, 'Kd aas asi', 'ka dasuwqeqwe', '2018-01-27 13:01:08', 56, 3, 8, 5),
(72, 'JK asd aso', 'ja dasoiqw eqwasda', '2018-01-27 13:01:22', 56, 3, 8, 5),
(73, 'Kas daskd', 'kahjsd qweqwe', '2018-01-27 13:01:38', 56, 3, 8, 5),
(74, 'Travel', 'Travel', '2018-03-02 07:16:07', 0, 3, 1, 2),
(75, 'Blog', 'Demo', '2019-01-03 21:49:05', 0, 3, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `chanel_attribute`
--

CREATE TABLE `chanel_attribute` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `chanel_id` bigint(100) NOT NULL,
  `chanel_attribute_key` text NOT NULL,
  `chanel_attribute_val` longtext NOT NULL,
  `chanel_attribute_status` int(11) NOT NULL,
  `chanel_attribute_position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chanel_attribute`
--

INSERT INTO `chanel_attribute` (`id`, `chanel_id`, `chanel_attribute_key`, `chanel_attribute_val`, `chanel_attribute_status`, `chanel_attribute_position`) VALUES
(1, 56, 'cover', '0', 1, 0),
(2, 56, 'banner-725-x-90', '<div class=\'banner\'><a href=\'#\'><img src=\'http://media.omkumis.com/view/image/2439/brand-auto-2000\' alt=\'\'></a></div>', 1, 0),
(3, 67, 'cover', '97', 1, 0),
(4, 67, 'banner-130-x-30', '<div class=\'col-l\'>\r\n	<div class=\'jdl\'>Partner <br> With:</div>\r\n		<a href=\'\'><img src=\'http://media.omkumis.com/view/image/67\' class=\'logo\' alt=\'\'></a>\r\n</div>', 1, 0),
(5, 67, 'banner-825-x-120', '<div class=\'banner-brand\'><img src=\'http://media.omkumis.com/view/image/2439/brand-auto-2000\' alt=\'\'></div>', 1, 0),
(6, 67, 'banner-300-x-250', '<div class=\"banner\"><a href=\"\"><img src=\"http://media.terpusat/view/image/109/1517046363-banner-300-x-250\" alt=\"\"></a></div>', 1, 0),
(7, 67, 'banner-300-x-600', '<div class=\"banner\"><a href=\"\"><img src=\"http://media.terpusat/view/image/110/1517046782-banner-300-x-600\" alt=\"\"></a></div>', 1, 0),
(8, 67, 'banner-300-x-250', '<div class=\"banner\"><a href=\"\"><img src=\"http://media.terpusat/view/image/109/1517046363-banner-300-x-250\" alt=\"\"></a></div>', 1, 1),
(9, 72, 'cover', '107', 1, 0),
(10, 52, 'banner-725-x-90', '<div class=\'banner hidden-xs leaderboard\'>\r\n	<div class=\"bb_show\">\r\n		<script>\r\n		  googletag.cmd.push(function() {\r\n		    googletag.defineSlot(\'/21619672748/desktop_omkumis_inspirasi/leaderboard\', [728, 90], \'div-gpt-ad-1503150106675-0\').addService(googletag.pubads());\r\n		    googletag.pubads().enableSingleRequest();\r\n		    googletag.enableServices();\r\n		  });\r\n		</script>\r\n		<!-- /21619672748/desktop_omkumis_inspirasi/leaderboard -->\r\n		<div id=\'div-gpt-ad-1503150106675-0\' style=\'text-align: center;\'>\r\n			<script>googletag.cmd.push(function() { googletag.display(\'div-gpt-ad-1503150106675-0\'); });</script>\r\n		</div>\r\n	</div>\r\n</div>\r\n\r\n<!-- Place this code where this unit should show in the page body -->\r\n<!-- Zone Tag : OmKumis Universal Tag -->\r\n<script type=\"text/javascript\">\r\nnew innity_adZone(\"14da92f2bdaec7f2218042a5b6124570\", \"62026\", {\"channel\": \"YOUTH,TECH_NEWS,ENTERTAINMENT\"});\r\n</script>', 1, 0),
(11, 52, 'banner-300-x-250', '<div class=\"banner rec1\">\r\n	<script>\r\n	  googletag.cmd.push(function() {\r\n	    googletag.defineSlot(\'/21619672748/desktop_omkumis_inspirasi/mr1\', [300, 250], \'div-gpt-ad-1503150134108-0\').addService(googletag.pubads());\r\n	    googletag.pubads().enableSingleRequest();\r\n	    googletag.enableServices();\r\n	  });\r\n	</script>\r\n	<!-- /21619672748/desktop_omkumis_inspirasi/mr1 -->\r\n	<div id=\'div-gpt-ad-1503150134108-0\' style=\'text-align: center;\'>\r\n	<script>\r\n	googletag.cmd.push(function() { googletag.display(\'div-gpt-ad-1503150134108-0\'); });\r\n	</script>\r\n	</div>\r\n</div>', 1, 0),
(12, 52, 'banner-300-x-250', '<div class=\"banner rec2\">\r\n	<script>\r\n	  googletag.cmd.push(function() {\r\n	    googletag.defineSlot(\'/21619672748/desktop_omkumis_inspirasi/mr2\', [300, 250], \'div-gpt-ad-1503150156866-0\').addService(googletag.pubads());\r\n	    googletag.pubads().enableSingleRequest();\r\n	    googletag.enableServices();\r\n	  });\r\n	</script>\r\n    <!-- /21619672748/desktop_omkumis_inspirasi/mr2 -->\r\n	<div id=\'div-gpt-ad-1503150156866-0\' style=\'text-align: center;\'>\r\n		<script>googletag.cmd.push(function() { googletag.display(\'div-gpt-ad-1503150156866-0\'); });</script>\r\n	</div>\r\n</div>', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` bigint(255) UNSIGNED NOT NULL,
  `content_subname` varchar(255) NOT NULL,
  `content_name` text NOT NULL,
  `content_excerpt` text NOT NULL,
  `content_desc` longtext NOT NULL,
  `content_status` int(1) NOT NULL COMMENT '3 = Pub | 0 = Del | 1 = Dra',
  `content_created` datetime NOT NULL,
  `content_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `content_publish` datetime NOT NULL,
  `chanel_id` bigint(100) NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT '0',
  `comment` int(1) NOT NULL COMMENT '1: Enable | 0: Disable'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`content_id`, `content_subname`, `content_name`, `content_excerpt`, `content_desc`, `content_status`, `content_created`, `content_publish`, `chanel_id`, `type_id`, `comment`) VALUES
(1, '', 'Galleries', 'Home', '<table align=\"center\" class=\"pic_artikel_sisip_table\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"pic_artikel_sisip\" align=\"center\"><img src=\"http://media.terpusat.com/view/image/2/headline-cover.img\" /></div>\r\n<div class=\"pic text-center\" align=\"center\"></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br /><br />\r\n<table align=\"center\" class=\"pic_artikel_sisip_table\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"pic_artikel_sisip\" align=\"center\"><img src=\"http://media.terpusat.com/view/image/2/headline-cover.img\" /></div>\r\n<div class=\"pic text-center\" align=\"center\"></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 3, '2017-06-10 23:44:35', '2017-06-10 23:44:35', 6, 6, 1),
(2, '', 'Profil', 'Profil', 'Profil', 3, '2017-06-10 23:45:07', '2017-06-10 23:45:07', 6, 6, 1),
(3, '', 'Organisasi', 'Organisasi', '<table align=\"center\" class=\"pic_artikel_sisip_table\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"pic_artikel_sisip\" align=\"center\"><img src=\"http://media.terpusat.com/view/image/3/stuktur-biro-umum-setjen.img\" /></div>\r\n<div class=\"pic text-center\" align=\"center\"></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 3, '2017-06-10 23:45:27', '2017-06-10 23:45:27', 6, 6, 1),
(4, '', 'Tugas Pokok & Fungsi', 'Tugas Pokok &amp;amp;amp;amp;amp;amp;amp;amp; Fungsi', '<div><span class=\"s1\"><strong>TUGAS<br /></strong></span></div>\r\n<div><span class=\"s1\"></span></div>\r\n<div><span class=\"s1\">Setjen Kemhan mempunyai tugas melaksanakan koordinasi pelaksanaan tugas, pembinaan dan pemberian dukungan administrasi kepada seluruh unit organisasi di lingkungan Kemhan.&nbsp;</span> <span class=\"s1\"></span></div>\r\n<div><br /><br /><span class=\"s1\"><strong>FUNGSI<br /><br /></strong></span> <span class=\"s1\"></span></div>\r\n<div><span class=\"s1\">Dalam melaksanakan tugas sebagaimana dimaksud,&nbsp;</span> <br /><span class=\"s1\">Setjen Kemhan menyelenggarakan fungsi:</span> <br /><span class=\"s1\">a. koordinasi kegiatan Kemhan</span> <br /><span class=\"s1\">b. koordinasi dan penyusunan rencana dan program Kemhan</span> <br /><span class=\"s1\">c. pembinaan dan pemberian dukungan administrasi yang meliputi ketatausahaan, kepegawaian, keuangan, kerumahtanggaan, arsip dan dokumentasi Kemhan;</span> <br /><span class=\"s1\">d. pembinaan dan penyelenggaraan organisasi dan tata laksana, kerja sama, dan hubungan masyarakat</span> <br /><span class=\"s1\">e. koordinasi dan penyusunan peraturan perundang-undangan dan bantuan hukum</span> <br /><span class=\"s1\">f. penyelenggaraan pengelolaan barang milik/kekayaan negarag. pelaksanaan tugas lain yang diberikan oleh Menhan.</span></div>', 3, '2017-06-10 23:46:27', '2017-06-10 23:46:27', 6, 6, 1),
(5, '', 'Tugas Pokok & Fungsi', 'Tugas Pokok & Fungsi', 'Tugas Pokok &amp; Fungsi', 0, '2017-06-10 23:46:27', '2017-06-10 23:46:27', 6, 6, 1),
(6, '', 'Kontak', 'Kontak', '<span class=\"s1\">Jl. Medan Merdeka Barat No. 13-14 <br />Jakarta Pusat 10110</span> <br /><span class=\"s1\">Kotak Pos 2005 <br />JAKARTA 10020</span> <br /><span class=\"s1\">Telp : (021) 382 050</span>', 3, '2017-06-10 23:47:16', '2017-06-10 23:47:16', 6, 6, 1),
(7, '', 'Gallery', 'Gallery', 'Gallery', 0, '2017-06-10 23:47:33', '2017-06-10 23:47:33', 6, 6, 1),
(8, '', 'Bagian Fasbang', 'Bagian Fasbang', 'Bagian Fasbang', 3, '2017-06-10 23:47:51', '2017-06-10 23:47:51', 6, 6, 1),
(9, '', 'Bagian Pengamanan PAM', 'Bagian Pengamanan PAM', 'Bagian Pengamanan PAM', 3, '2017-06-10 23:50:40', '2017-06-10 23:50:40', 6, 6, 1),
(10, '', 'Bagian Perbekalan Harian', 'Bagian Perbekalan Harian', 'Bagian Perbekalan Harian', 3, '2017-06-10 23:51:04', '2017-06-10 23:51:04', 6, 6, 1),
(11, '', 'Berita', 'Berita', 'Berita', 0, '2017-06-10 23:51:40', '2017-06-10 23:51:40', 6, 6, 1),
(12, '', 'Umum', 'Umum', 'Umum', 3, '2017-06-10 23:51:58', '2017-06-10 23:51:58', 6, 6, 1),
(13, '', 'Menhan Lantik Laksdya TNI Widodo Jabat Sebagai Sekjen Kemhan', 'Menteri Pertahanan Ryamizard Ryacudu menjadi Inspektur Upacara Pelantikan', 'Jakarta, DMC &ndash; Menteri Pertahanan Ryamizard Ryacudu menjadi Inspektur Upacara Pelantikan dan Serah Terima Jabatan (Sertijab) Sekretaris Jenderal Kementerian Pertahanan (Sekjen Kemhan), Kamis (11/2) di kantor Kemhan, Jakarta. Berdasarkan Surat Keputusan Presiden Republik Indonesia Nomor 32/TPA Tahun 2015, jabatan Sekjen Kemhan diserahterimakan dari Letjen TNI Ediwan Prabowo, S.I.P. kepada Laksdya TNI Widodo, S.E., M.Sc.<br /><br />Upacara Pelatikan dan Sertijab Sekjen Kemhan tersebut dihadiri oleh Irjen Kemhan Marsdya TNI Ismono Wijayanto, Rektor Unhan Letjen TNI I Wayan Midhio, Kepala Bakamla Laksdya TNI Dr. Desi Albert Mamahit, M.Sc. serta pejabat Eselon I dan II di lingkungan Kemhan. Hadir pula Penasihat Dharma Wanita Persatuan (DWP) Kemhan Ny. Nora Ryamizard Ryacudu beserta sejumlah Pengurus DWP Kemhan.Terkait Pelantikan dan Sertijab Sekjen Kemhan ini, Menhan dalam amanatnya mengatakan bahwa serah terima jabatan dalam organisasi yang modern dan adaptif adalah hal yang biasa di lingkungan Kemhan. Pergantian jabatan ini juga dimaksudkan sebagai jaminan kesinambungan pelaksanaan tugas dan fungsi pertahanan dalam mewujudkan pertahanan negara yang kokoh, kuat dan mandiri.<br /><br />Dikatakan Menhan, dalam tata kelola Kemhan, Sekjen Kemhan berperan sebagai administrator dan koordinator pelaksanaan tugas dan fungsi Kemhan, yang diselenggarakan oleh para Direktur Jenderal dan Kepala Badan serta seluruh unsur pelaksana di lingkungan Kemhan.Peran tersebut dilakukan dalam rangka membantu Menhan merumuskan dan menetapkan kebijakan penyelenggaraan pertahanan negara berdasarkan Kebijakan Umum Pertahanan Negara yang ditetapkan oleh Presiden. Disamping itu, secara khusus Sekjen Kemhan membantu Menhan menetapkan kebijakan, strategi, manajemen dan dukungan administrasi kepada TNI.Lebih lanjut atas pelantikan Laksdya TNI Widodo, S.E., M.Sc. sebagai pejabat Sekjen Kemhan yang baru, Menhan atas nama pemerintah dan pimpinan Kemhan menyampaikan ucapan selamat dan berharap Sekjen Kemhan yang baru dapat mewujudkan prestasi dan kualitas kinerja Kemhan.Menhan lebih lanjut juga berharap kepada pejabat Sekjen Kemhan yang baru untuk dapat segera menghayati dinamika tugas di Kemhan. &ldquo;Segera menyesuaikan diri dengan tugas, peran dan fungsi sebagai Sekjen Kemhan. Lakukan koordinasi dan sinkronisasi tugas, baik secara internal maupun eksternal. Perhatikan kesinambungan program kerja yang telah dirintis oleh pejabat lama dengan program kerja yang akan dilaksanakan&rdquo;, tambah Menhan.<br /><br />Sementara itu kepada pejabat Sekjen Kemhan yang lama Letjen TNI Ediwan Prabowo, S.I.P., Menhan menyampaikan ucapan terima kasih atas dedikasi, loyalitas dan karya serta pengabdian selama bertugas yang telah ditunjukkan dengan kualitas kepemimpinan dan manajerial yang tinggi serta memiliki integritas membantu pimpinan Kemhan dalam mengelola penyelenggaraan sistem pertahanan negara. (BDI/RAP/SAP)', 3, '2017-06-10 23:53:28', '2017-06-10 23:53:28', 7, 1, 1),
(14, '', 'Ropeg Setjen Kemhan Adakan Bimnis Penjatuhan Hukuman Disiplin PNS Kemhan', 'Dalam rangka menyegarkan kembali pengetahuan dan pemahaman yang lebih mendalam tentang tata cara', '<span>Jakarta,&nbsp; Dalam rangka menyegarkan kembali pengetahuan dan pemahaman yang lebih mendalam tentang tata cara penjatuhan hukuman disiplin bagi PNS Kementerian Pertahanan, Biro Kepegawaian Sekretaris Jenderal Kemhan menyelenggarakan Bimbingan Teknis kepada pejabat personel Satker dan Subsatker di lingkungan Kemhan, Mabes TNI dan Angkatan, Selasa (4/3) di Kemhan, Jakarta. Bimnis dilaksanakan selama dua hari dan menghadirkan nara sumber Inspektur Badan Kepegawaian Negara Drs. Farel Simarmata, M.Si. Kepala Biro Kepegawaian Setjen Kemhan dalam sambutannya tertulisnya yang dibacakan Kabag Induk Setjen Kemhan mengatakan, Bimnis ini diharapkan dapat memberikan pemahaman tentang tata cara penjatuhan hukuman disiplin yang sesuai dengan kewenangannya. Dijelaskan Karopeg Setjen Kemhan bahwa dalam menjatuhkan hukuman disiplin bagi PNS Kemhan,&nbsp; Menhan telah membentuk tim pertimbangan penjatuhan hukuman disiplin bagi PNS Kemhan berdasarkan Peraturan Menhan Nomor 06 Tahun 2012 tanggal 28 Februari 2012 tentang Tata Kerja Tim Pertimbangan Penjatuhan Hukuman Disiplin Bagi PNS Kemhan. &ldquo;Tim pertimbangan tersebut bertugas untuk memberikan pertimbangan kepada Menhan dalam rangka penjatuhan hukuman disiplin kepada PNS Kemhan&rdquo;,tambahnya. Lebih lanjut dijelaskan bahwa jenis hukuman disiplin tidak semuanya menjadi kewenangan Menhan. Ada beberapa hukuman disiplin yang dapat didelegasikan kepada pejabat eselon I, eselon II dan eselon III yaitu untuk jenis hukuman disiplin tingkat ringan dan hukuman disiplin tingkat sedang berupa penundaan kenaikan gaji berkala selama&nbsp; satu tahun dan penundaan kenaikan pangkat selama satu tahun. Oleh karena itu, masing &ndash;masing pejabat harus memahami tata cara penjatuhan hukuman disiplin sesuai dengan kewenangannya.&nbsp; Hal ini dimaksudkan agar tidak terjadi kesalahan prosedur dalam menjatuhkan hukuman disiplin.</span>', 3, '2017-06-10 23:55:26', '2017-06-10 23:55:26', 7, 1, 1),
(15, '', 'Sekjen Kemhan Kunjungan Kerja Ke Lanud Iswahyudi', 'Sekretaris Jenderal Kementerian Pertahanan (Sekjen Kemhan) Letjen TNI Ediwan Prabowo melaksanakan kunjungan kerja ke Lanud', 'Sekretaris Jenderal Kementerian Pertahanan (Sekjen Kemhan) Letjen TNI Ediwan Prabowo melaksanakan kunjungan kerja ke Lanud Iswahjud, Madiun, Jumat (5/2). Dalam kunjungannya ini, Sekjen Kemhan didampingi oleh SesBaranahan Kemhan Marsma TNI Asep Sumarudin dan Kapuskom Publik Kemhan Brigjen TNI Djundan Eko Bintoro.<br /><br />Mengawali kunjungan, Sekjen Kemhan melaksanakan rapat yang dibuka oleh Danlanud Iswahjudi Marsma TNI Fachri Adamy. Dalam rapat tersebut, Sekjen Kemhan menerima paparan tentang kesiapan operasional dan pemeliharaan pesawat F-16 C/D dari Komandan Skadron Udara 3, Letkol. Pnb M. Anjar. dan pesawat T-50 dari Komandan Skadron Udara 15, Letkol Pnb Budi.<br /><br />Kunjungan dilanjutkan dengan inspeksi ke hanggar Skadron Udara 3 dan hanggar Skadron Udara 15. Dalam inspeksi tersebut, Danlanud Iswahyudi memberikan penjelasan tentang kegiatan pemeliharaan tingkat ringan pesawat F-16 C/D dan pesawat T- 50 yang berada di masing&ndash;masing hanggar. Diakhir kunjungan, Sekjen Kemhan menekankan agar membuat prioritas kebutuhan untuk mendukung operasional dan pemeliharaan pesawat yang ada di Lanud Iswahjudi. Hal ini sangat penting, karena pada dasarnya kekuatan udara merupakan salah satu kekuatan pokok untuk menjaga kedaulatan negara.<br /><br />Kemhan akan terus membantu satuan operasional agar dapat melaksanakan tugas pokoknya. Harapan Sekjen Kemhan agar semua kegiatan operasional dan pemeliharan pesawat lebih ditingkatkan lagi untuk mendukung kesiapan pesawat.', 3, '2017-06-10 23:57:14', '2017-06-10 23:57:14', 7, 1, 1),
(16, '', 'Sekjen Kemhan Melepas Peserta Pelatihan Kepemimpinan Pancasila', ' Sekretaris Jenderal Kementerian Pertahanan, Laksdya TNI Widodo,', '<strong>Jakarta, <em>DMC &ndash;</em></strong> Sekretaris Jenderal Kementerian Pertahanan, Laksdya TNI Widodo, Jumat (8/4) melepas peserta yang akan mengikuti Pelatihan Kepemimpinan Pancasila di Lapangan Setjen Kemhan, Jakarta. Pelepasan dilaksanakan melalui upacara penyematan tanda peserta dan pemakaian baju Dokter Pancasila oleh Sekjen Kemhan kepada perwakilan peserta.Pelatihan Kepemimpinan Pancasila ini diselenggarakan hasil kerjasama Kementerian Pertahanan dengan Mahkamah Konstitusi dan Klinik Pancasila. Sekitar 150 peserta yang berasal dari siswa-siswi pengurus OSIS sekolah SMA Negeri se-DKI Jakarta akan mengikuti pelatihan kepemimpinan Pancasila selama tiga hari di Cisarua, Bogor. Selama pelatihan para peserta akan diberikan pelajaran mengenai nilai-nilai bela negara dan kepemimpinan Pancasila.Pada kesempatan pelepasan tersebut Menteri Pertahanan dalam sambutan tertulisnya yang dibacakan Sekjen Kemhan, mengatakan kegiatan ini suatu upaya bersama untuk menumbuhkan semangat bela negara dikalangan generasi bangsa dari waktu ke waktu. Hal ini berguna untuk menjawab tantangan jaman yang sangat dinamis.&ldquo;Kegiatan pelatihan kepemimpinan Pancasila merupakan wahana strategis untuk menumbuh kembangkan kemampuan dan kompetensi anak bangsa untuk merespon tantangan kekinian yang sarat dimensi<em> Proxy War</em> atau ancaman tidak terlihat,&rdquo; ungkap Sekjen.Kegiatan penumbuhan semangat bela negara melalui pelatihan kepemimpinan Pancasila bagi pengurus OSIS SMA Negeri se-DKI Jakarta, adalah langkah maju untuk menyiapkan calon pemimpin bangsa yang berkarakter Pancasilais, rela berkorban, dan memiliki semangat tinggi untuk mengamalkan Pancasila sebagai dasar kehidupan berbangsa. Menhan juga berharap kepada peserta untuk menjadikan pelatihan ini sebagai sarana untuk saling memperkuat kerjasama diantara sesama anak bangsa.', 3, '2017-06-11 00:21:14', '2017-06-11 00:21:14', 7, 1, 1),
(17, '', 'Kemhan Berupaya Wujudkan Tata Kelola Kepegawaian Yang Prima, Bersih dan Profesional', 'Dalam rangka mengevaluasi kinerja penyelenggaraan fungsi pembinaan kepegawaian di lingkungan Kementerian', '<strong>Jakarta,&nbsp;</strong>&nbsp;Dalam rangka mengevaluasi kinerja penyelenggaraan fungsi pembinaan kepegawaian di lingkungan Kementerian Pertahanan (Kemhan), Biro Kepegawaian Setjen Kemhan menyelenggarakan Rapat Koordinasi (Rakor) Kepegawaian Tahun 2014, Rabu (10/12) di kantor Kemhan, Jakarta.Rakor ini diselenggarakan sebagai upaya meningkatkan koordinasi dan komunikasi sehingga tercipta sinergitas dalam mewujudkan tata kelola dan dan pelayanan administrasi kepegawaian yang prima, bersih dan professional. Harapan dan upaya tersebut tertuang dalam tema Rakor yaitu; &ldquo;<strong><em>Melalui Rapat Koordinasi Kepegawaian, Kita Wujudkan Tata Kelola Pelayanan Administrasi Kepegawaian Yang Prima, Bersih dan Profesional</em></strong>&rdquo;.Sekretaris Jenderal Kemhan Letjen TNI Ediwan Prabowo dalam sambutan tertulisnya yang dibacakan Karopeg Setjen Kemhan Brigjen TNI Sumardi mengatakan, tata kelola pelayanan administrasi yang bersih dan professional merupakan salah satu langkah penting untuk membangun aparatur negara yang handal serta lebih berdaya dan berhasil guna dalam mengemban tugas pemerintahan.Menurutnya, penyelenggara pemerintahan saat ini dihadapkan dengan tingginya tuntutan masyarakat terhadap peningkatan kinerja pemerintah, transparasi dan birokrasi yang bersih dan bebas dari KKN. Demikian juga tuntutan untuk mampu menyediakan pelayanan publik secara optimal sangat didambakan masyarakat.Untuk itu,&nbsp; dibutuhkan aparatur pelayanan publik yang berkompeten, memahami dan mengerti tugas serta memiliki wawasan kebangsaan. Tuntutan itu harus mampu dijawab oleh segenap aparatur negara melalui pelayanan yang baik dan penuh dedikasi serta tanggung jawab.Untuk mendapatkan atau membentuk aparatur negara yang memiliki kompetensi dan dedikasi serta tanggung jawab yang tinggi, diperlukan administrasi dan manajemen kepegawaian yang baik. &ldquo;Penataan dan pengelolaan administrasi yang baik merupakan keniscayaan di tengah tuntutan tugas penyelenggaraan pemerintahan yang semakin kompleks&rdquo;, tambah Sekjen Kemhan.', 3, '2017-06-11 00:22:17', '2017-06-11 00:22:17', 7, 1, 1),
(18, '', 'Mayjen TNI Lodewyjk Pusung Jadi Pangdam I/BB', 'Dalam rangka pembinaan organisasi TNI guna mengoptimalkan tugas-tugas TNI', 'JAKARTA (Berita) Dalam rangka pembinaan organisasi TNI guna mengoptimalkan tugas-tugas TNI yang sangat dinamis dan semakin berat ke depan, TNI terus melakukan upaya peningkatan kinerja TNI melalui mutasi dan promosi Jabatan Personel di tingkat Strata Perwira Tinggi (Pati) TNI sehingga kinerja TNI ke depan lebih optimal.Berdasarkan Keputusan Panglima TNI Nomor: Kep/662/VIII/2015 tanggal 18 Agustus 2015, tentang Pemberhentian dari dan pengangkatan dalam jabatan di lingkungan TNI telah ditetapkan mutasi jabatan 52 Perwira TNI.Dalam mutasi tersebut tercatat sebagai berikut : 35 Perwira TNI Angkatan Darat diantaranya : Mayjen TNI Sumedy, S.E., M.M. dari Asrenum Panglima TNI menjadi Staf Khusus Kasad, Mayjen TNI Dedi Kusnadi Thamim dari Pangdam III/Slw menjadi Dankodiklat TNI, Mayjen TNI Hadi Prasojo Dari Staf Khusus Panglima TNI menjadi Pangdam III/Slw, Mayjen TNI Indra Hidayat R. dari Asops Panglima TNI menjadi Pati Mabes TNI AD (dalam rangka pensiun), Mayjen TNI Fransen G. Siahaan dari Pangdam XVII/Cen menjadi Asops Panglima TNI, Mayjen TNI Hinsa Siburian dari Danpussenif Kodiklat TNI AD menjadi Pangdam XVII/Cen, Mayjen TNI Pribadi Agus Irianto dari Staf Khusus Kasad menjadi Danpussenif Kodiklat TNI AD, Mayjen TNI dr. Ponco Agus Prasojo, Sp. Ort.dari Kapuskes TNI menjadi Pati Mabes TNI AD (dalam rangka pensiun), Mayjen TNI Drs. Hasan Saleh, S.I.P. dari Pa Sahli Tk. III Bid Polkamnas Panglima TNI menjadi Pati Mabes TNI AD (dalam rangka pensiun), Mayjen TNI Lodewyjk Pusung dari Pangdivif-1 Kostrad menjadi Pangdam I/BB, Mayjen TNI Bambang Haryanto dari Pangdivif-2 Kostrad menjadi Staf Khusus Kasad, Brigjen TNI Mulyanto dari Danpussenkav Kodiklat TNI AD menjadi Pa Sahli Tk. III Bid. Polkamnas Panglima TNI, Brigjen TNI Sudirman dari Wagub Akmil menjadi Pangdivif-1 Kostrad, Brigjen TNI Ganip Warsito dari Dirlat Kodiklat TNI AD menjadi Pangdivif-2 Kostrad, Brigjen TNI Rahardjo, S.Sos. dari Waaslog Panglima TNI menjadi Staf Khusus Kasad, Brigjen TNI Gadang Pambudi dari Bandep Lingkungan Alam Setjen Wantannas menjadi Waaslog Panglima TNI, Brigjen TNI Ir. Mulyanto dari Dansatkomlek TNI menjadi Staf Khusus Panglima TNI, Brigjen TNI Ir. Edy Sudarmanto dari Kadisinfolahtad menjadi Dansatkomlek TNI, Brigjen TNI Muslimin Akib, S.E., M.M. dari Waasops Kasad menjadi Staf Khusus Kasad, Brigjen TNI Eko Margiyono, M.A. dari Danrem 033/WP (Tanjung Pinang) Kodam I/BB menjadi Waasops Kasad, Brigjen TNI Drs. Pasenga Talilah dari Dirbekangad menjadi Staf Khusus Kasad, Brigjen TNI Sumardi dari Karopeg Setjen Kemhan menjadi Dir SDM Ditjen Kuathan Kemhan, Brigjen TNI Tri Legiono Suko, S.I.P., M.AP. dari Dir SDM Ditjen Kuathan Kemhan menjadi Karopeg Setjen Kemhan, Brigjen TNI Jumadi dari Kapusdatin Kemhan menjadi Kapuspamhar Kawasan Bainstranas Kemhan, Brigjen TNI Arif Susilo dari Kapuspamhar Kawasan Bainstranas Kemhan menjadi Kapudatin Kemhan, Kolonel Ckm dr. Achmad Dewanto, Sp.PD dari Ir Ditkesad menjadi Waka Puskes TNI, Kolonel Kav Anang Dwitono, S.E., dari Dirbindik Seskoad menjadi Danpussenkav Kodiklat TNI AD, Kolonel Inf Dudung Abdurachman S.E, dari Dandenma Mabes TNI menjadi Wagub Akmil, Kolonel Inf Bambang Busono dari Danpuslatpur Kodiklat TNI AD menjadi Dirlat Kodiklat TNI AD, Kolonel Inf Robert R. Lumempouw dari Paban Sahli Bid. Kumtaneg Pok Sahli Bid. Hukum Sahli Kasad menjadi Bandep Lingkungan Alam Setjen Wantanas, Kolonel Arm Sudarto, S.IP dari Kababek TNI menjadi Staf Khusus Kasad, Kolonel Cba Fabian Albert Embran dari Pawasbek Babek TNI menjadi Kababek TNI, Kolonel Inf Madsuni dari Paban II/Sismet Ditbinjemen Sesko TNI menjadi Danrem 033/WP (Tanjung Pinang) Kodam I/BB, Kolonel Cba Taat Agus Budianto dari Sekretaris Ditbekangad menjadi Dirbekangad, Kolonel Inf Afanti s. Uloli, S.E., M.Si. dari Pamen Denma Mabesad menjadi Bandep Pertahanan dan Keamanan Setjen Wantanas.', 3, '2017-06-11 00:23:32', '2017-06-11 00:23:32', 7, 1, 1),
(19, '', 'Peran Pusdatin dan Biro Perencanaan Setjen Kemhan Sangat Penting Untuk Antisipasi Ancaman', 'Peran dan keberadaan Pusat Data dan Informasi (Pusdatin) Kemhan dan Biro Perencanaan', 'Peran dan keberadaan Pusat Data dan Informasi (Pusdatin) Kemhan dan Biro Perencanaan (Roren) Setjen Kemhan sangat penting dalam menghadapi dan mengantisapi perkembangan dimensi ancaman yang semakin multidimensional dan dinamis. Ancaman saat ini tidak lagi konvensional tetapi semakin asimetris dengan berbagai model yang membahayakan.Hal tersebut diungkapkan Sekjen Kemhan Laksdya TNI Widodo, M.Sc saat memimpin Upacara Serah Terima Jabatan (Sertijab) Kapusdatin Kemhan dan Karoren Setjen Kemhan, Jumat (11/3), di kantor Kemhan Jakarta. Jabatan Kapusdatin Kemhan diserahterimakan dari Brigjen TNI Arif Susilo kepada Marsma TNI Johny Kadarma, M.Sc dan jabatan Karoren Setjen Kemhan diserahterimakan dari Brigjen TNI Nanang Heryanto kepada Kolonel Cku Drs. Akhmad Tamim, M.Si.Lebih lanjut Sekjen mengatakan bahwa Pusdatin Kemhan merupakan salah satu institusi pelaksana yang fokus pada pembinaan, pengembangan dan standardisasi teknis di bidang sistem informasi, teknologi informasi, sistem komunikasi data dan persandian pertahanan Negara. Ini mengisyaratkan bahwa sistem informasi pertahanan negara menuntut adanya rancangan dan pengelolaan sistem secara tepat, akurat dan mutakhir.Hal ini dimaksudkan untuk membantu proses pembuatan kebijakan dan pengambilan keputusan pimpinan secara cepat dan tepat terutama di bidang <em>cyber defence</em>. Setiap kementerian dan lembaga harus dapat menjaga ketersediaan, keutuhan dan kerahasiaan informasi di ruang siber. Hal ini untuk mengantisipasi kemungkinan munculnya serangan-serangan di ruang siber.Oleh karenanya, diperlukan kesiapan Pusdatin dalam membangun dan membina kemampuan serta daya tangkal terhadap kemungkinan serangan siber yang dapat merugikan kepentingan pertahanan negara.', 3, '2017-06-11 00:26:31', '2017-06-11 00:26:31', 7, 1, 1),
(20, '', 'Penyuluhan Hukum Tentang UU Perkawinan Upaya Kemhan Bentuk Keharmonisan Keluarga Personel Kemhan', 'Penyuluhan hukum mengenai UU No 1 Tahun 1974 tentang Perkawinan', '<strong>Jakarta, &nbsp;</strong>&nbsp;Penyuluhan hukum mengenai UU No 1 Tahun 1974 tentang Perkawinan dan PP No 10 Tahun 1983 tentang Izin Perkawinan dan Perceraian bagi PNS diharapkan dapat membentuk keharmonisan rumah tangga guna meningkatkan kinerja pegawai di lingkungan Kemhan.Hal ini dijelaskan oleh Kepala Biro Hukum Setjen Kemhan Marsma TNI Bambang Eko S, SH MH yang membacakan sambutan Sekjen Kemhan. <br /><br />Biro Hukum Setjen Kementerian Pertahanan, Rabu (28/1) di Aula Gedung Piere Tendean Kemhan, mengadakan Penyuluhan Hukum Undang-Undang&nbsp; No 1 Tahun 1974 Tentang Perkawinan dan Peraturan Pemerintah No 10 Tahun 1983 tentang Izin Perkawinan dan Perceraian bagi Pegawai Negeri Sipil.Penyuluhan hukum yang diikuti oleh personel Kemhan ini dibuka oleh Kepala Biro Hukum Setjen Kemhan Marsma TNI Bambang Eko S, SH MH yang membacakan sambutan Sekjen Kemhan.Penyuluhan hukum ini menghadirkan Kasubdit Pemberdayaan KUA, Direktorat Urusan Agama Islam dan Pembinaan Syariah Kementerian Agama H Muhammad Adib Machrus dan Kabag Perawatan Pegawai Biro Kepegawaian Setjen Kemhan Kol (Inf) R Cahya Komara.Penyuluhan hukum ini juga dimaksudkan untuk memberikan bekal, pemahaman dan pencerahan bagi pegawai Kemhan tentang aturan hukum yang berkaitan dengan perkawinan. Di tengah kemajuan kehidupan yang modern ini, tantangan dalam hidup berkeluarga sangat besar. Banyak kasus perceraian yang terjadi, menjadi rumit dihadapkan dengan aturan-aturan yang mengatur pegawai negeri termasuk di dalamnya anggota TNI. Penyuluhan hukum yang dimaksudkan memberikan pencerahan mengenai perkawinan dan perceraian untuk personel Kemhan ini juga diharapkan dapat menjaga kinerja Kemhan. Karena diyakini bahwa permasalahan dalam keluarga, sedikit banyak akan mempengaruhi kinerja Kemhan bila tidak ditangani dengan baik.', 3, '2017-06-11 00:27:37', '2017-06-11 00:27:37', 7, 1, 1),
(21, '', 'Bagian Rumah Tangga', 'Bagian Rumah Tangga', 'Bagian Rumah Tangga', 3, '2017-06-12 16:12:05', '2017-06-12 16:12:05', 6, 6, 0),
(22, 'Tentang Kami', 'Tentang Kami', 'Tentang Kami', 'Tentang Kami', 3, '2017-07-08 20:35:20', '2017-07-08 20:35:20', 1, 6, 1),
(23, '', 'RC Offroad Cross Country Slayer Muscle 1:16 2,4 Ghz - Hijau', 'RC Offroad Cross Country Slayer 1:16 2,4 Ghz salah satu jenis mainan remote control mobil yang dapat berjalan diberbagi medan dengan teknologi 2.4 Ghz', '<strong>RC Offroad Cross Country Slayer 1:16 2,4 Ghz</strong> merupakan salah jenis terbaru&nbsp; dengan teknologi dan inovasi frekuensi Spectrum 2,4 Ghz sehingga tidak perlu kuatir crash/bertabrakan bila main secara bersamaan. <br />Dengan teknologi Spektrum 2,4 Ghz jangkauan sudah cukup baik dan tidak ribet pakai dibanding dengan frekuensi mhz yang masih mengandalkan antena untuk memaksimalkan jangkauan. <br />Bisa kendalikan maju, mundur, belok kanan dan belok kiri. Body lentur bahan PVC sejenis mika sehingga tidak mudah pecah dan mudah diganti body/modifikasi dengan cara membuka 4 kancing yang terletak diatas body.<br />Ban berbahan karet sehingga bisa dimainkan desegala medan baik jalan yang halus ataupun jalan yang berkeriikil. Sudah menggunakan baterai rechargeable Ni-CD 6 volt 700mAH. <br /><br /><strong>Spesifikasi Singkat :</strong><br />- Brand/Merk : YOUJIE TOYS<br />- Skala 1:16<br />- Ukuran mobilnya P x L x T = 28 x 19 x 12 cm<br />- 2 Wheel Drive<br />- Kecepatan bisa mencapai 25 km/jam<br />- Jangkauan radio diatas 50 meter<br />- Full Suspensi (2 depan 2 belakang)<br />- Ban karet<br />- Body Metal khusus warna biru &amp; kuning<br />- Kelengkapan : Mobil , remote, battery pack 6 volt dengan kapasitas 700 mAh &amp; charger', 3, '2017-07-20 08:40:19', '2017-07-20 08:40:19', 9, 2, 1),
(24, '', 'RC Offroad Cross Country Slayer Muscle 1:16 2,4 Ghz - Merah', 'RC Offroad Cross Country Slayer 1:16 2,4 Ghz salah satu jenis mainan remote control mobil yang dapat berjalan diberbagi medan dengan teknologi 2.4 Ghz', '<div class=\"span9\"><strong>RC Offroad Cross Country Slayer 1:16 2,4 Ghz</strong> merupakan salah jenis terbaru&nbsp; dengan teknologi dan inovasi frekuensi Spectrum 2,4 Ghz sehingga tidak perlu kuatir crash/bertabrakan bila main secara bersamaan. <br />\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">Dengan teknologi Spektrum 2,4 Ghz jangkauan sudah cukup baik dan tidak ribet pakai dibanding dengan frekuensi mhz yang masih mengandalkan antena untuk memaksimalkan jangkauan. <br />Bisa kendalikan maju, mundur, belok kanan dan belok kiri. Body lentur bahan PVC sejenis mika sehingga tidak mudah pecah dan mudah diganti body/modifikasi dengan cara membuka 4 kancing yang terletak diatas body.<br />Ban berbahan karet sehingga bisa dimainkan desegala medan baik jalan yang halus ataupun jalan yang berkeriikil. Sudah menggunakan baterai rechargeable Ni-CD 6 volt 700mAH. <br /><br /><strong>Spesifikasi Singkat :</strong><br />- Brand/Merk : YOUJIE TOYS<br />- Skala 1:16<br />- Ukuran mobilnya P x L x T = 28 x 19 x 12 cm<br />- 2 Wheel Drive<br />- Kecepatan bisa mencapai 25 km/jam<br />- Jangkauan radio diatas 50 meter<br />- Full Suspensi (2 depan 2 belakang)<br />- Ban karet<br />- Body Metal khusus warna biru &amp; kuning<br />- Kelengkapan : Mobil , remote, battery pack 6 volt dengan kapasitas 700 mAh &amp; charger</div>\r\n</div>\r\n</div>', 3, '2017-07-20 08:52:00', '2017-07-20 08:52:00', 9, 2, 1),
(25, '', 'RC Offroad Cross Country Slayer Beast 1:16 2,4 Ghz - Biru', 'RC Offroad Cross Country Slayer 1:16 2,4 Ghz salah satu jenis mainan remote control mobil yang dapat berjalan diberbagi medan dengan teknologi 2.4 Ghz', '<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">\r\n<div class=\"span9\"><strong>RC Offroad Cross Country Slayer 1:16 2,4 Ghz</strong> merupakan salah jenis terbaru&nbsp; dengan teknologi dan inovasi frekuensi Spectrum 2,4 Ghz sehingga tidak perlu kuatir crash/bertabrakan bila main secara bersamaan. <br />\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">Dengan teknologi Spektrum 2,4 Ghz jangkauan sudah cukup baik dan tidak ribet pakai dibanding dengan frekuensi mhz yang masih mengandalkan antena untuk memaksimalkan jangkauan. <br />Bisa kendalikan maju, mundur, belok kanan dan belok kiri. Body lentur bahan PVC sejenis mika sehingga tidak mudah pecah dan mudah diganti body/modifikasi dengan cara membuka 4 kancing yang terletak diatas body.<br />Ban berbahan karet sehingga bisa dimainkan desegala medan baik jalan yang halus ataupun jalan yang berkeriikil. Sudah menggunakan baterai rechargeable Ni-CD 6 volt 700mAH. <br /><br /><strong>Spesifikasi Singkat :</strong><br />- Brand/Merk : YOUJIE TOYS<br />- Skala 1:16<br />- Ukuran mobilnya P x L x T = 28 x 19 x 12 cm<br />- 2 Wheel Drive<br />- Kecepatan bisa mencapai 25 km/jam<br />- Jangkauan radio diatas 50 meter<br />- Full Suspensi (2 depan 2 belakang)<br />- Ban karet<br />- Body Metal khusus warna biru &amp; kuning<br />- Kelengkapan : Mobil , remote, battery pack 6 volt dengan kapasitas 700 mAh &amp; charger</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 3, '2017-07-20 09:05:11', '2017-07-20 09:05:11', 9, 2, 1),
(26, '', 'RC Offroad Cross Country Slayer Beast 1:16 2,4 Ghz - Merah', 'RC Offroad Cross Country Slayer 1:16 2,4 Ghz salah satu jenis mainan remote control mobil yang dapat berjalan diberbagi medan dengan teknologi 2.4 Ghz', '<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">\r\n<div class=\"span9\"><strong>RC Offroad Cross Country Slayer 1:16 2,4 Ghz</strong> merupakan salah jenis terbaru&nbsp; dengan teknologi dan inovasi frekuensi Spectrum 2,4 Ghz sehingga tidak perlu kuatir crash/bertabrakan bila main secara bersamaan. <br />\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">Dengan teknologi Spektrum 2,4 Ghz jangkauan sudah cukup baik dan tidak ribet pakai dibanding dengan frekuensi mhz yang masih mengandalkan antena untuk memaksimalkan jangkauan. <br />Bisa kendalikan maju, mundur, belok kanan dan belok kiri. Body lentur bahan PVC sejenis mika sehingga tidak mudah pecah dan mudah diganti body/modifikasi dengan cara membuka 4 kancing yang terletak diatas body.<br />Ban berbahan karet sehingga bisa dimainkan desegala medan baik jalan yang halus ataupun jalan yang berkeriikil. Sudah menggunakan baterai rechargeable Ni-CD 6 volt 700mAH. <br /><br /><strong>Spesifikasi Singkat :</strong><br />- Brand/Merk : YOUJIE TOYS<br />- Skala 1:16<br />- Ukuran mobilnya P x L x T = 28 x 19 x 12 cm<br />- 2 Wheel Drive<br />- Kecepatan bisa mencapai 25 km/jam<br />- Jangkauan radio diatas 50 meter<br />- Full Suspensi (2 depan 2 belakang)<br />- Ban karet<br />- Body Metal khusus warna biru &amp; kuning<br />- Kelengkapan : Mobil , remote, battery pack 6 volt dengan kapasitas 700 mAh &amp; charger</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 3, '2017-07-20 09:11:03', '2017-07-20 09:11:03', 9, 2, 1),
(27, '', 'RC Offroad NQD Rock Crawler Truck Pickup 1:12 - Merah', 'RC Offroad NQD Rock Crawler Truck Pickup 1:12 salah satu jenis mainan remote control mobil yang dapat berjalan diberbagi medan', '<div class=\"row\">\r\n<div class=\"span9\">\r\n<div class=\"span9\">\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">\r\n<div class=\"span9\"><strong>RC Offroad NQD Rock Crawler Truck Pickup 1:12</strong>&nbsp;merupakan salah jenis mainan remote control dalam bentuk truck pickup dengan penggerak 4 Roda (4WD) yang bisa kendalikan maju, mundur, belok kanan dan belok kiri. Body lentur bahan PVC sejenis mika sehingga tidak mudah pecah dan mudah diganti body/modifikasi dengan cara membuka 4 kancing yang terletak diatas body.<br />\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">Ban berbahan karet sehingga bisa dimainkan desegala medan baik jalan yang halus ataupun jalan yang berkeriikil. Sudah menggunakan baterai rechargeable Ni-CD 6 volt 700mAH. <br /><br /><strong>Spesifikasi Singkat :</strong><br />- Brand/Merk : NQD<br />- Skala 1:12<br />- Ukuran mobilnya P x L x T = 30 x 21 x 16 cm<br />- 4 Wheel Drive<br />- Kecepatan bisa mencapai 25 km/jam<br />- Jangkauan radio diatas 50 meter<br />- Full Suspensi (2 depan 2 belakang)<br />- Ban karet<br />- Body Metal khusus warna biru &amp; kuning<br />- Kelengkapan : Mobil , remote, battery pack 6 volt dengan kapasitas 700 mAh &amp; charger</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 3, '2017-07-20 09:15:23', '2017-07-20 09:15:23', 9, 2, 1),
(28, '', 'RC Offroad NQD Rock Crawler Truck Pickup 1:12 - Hijau', 'RC Offroad NQD Rock Crawler Truck Pickup 1:12 salah satu jenis mainan remote control mobil yang dapat berjalan diberbagi medan', '<div class=\"row\">\r\n<div class=\"span9\">\r\n<div class=\"span9\">\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">\r\n<div class=\"row\">\r\n<div class=\"span9\">\r\n<div class=\"span9\">\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">\r\n<div class=\"span9\"><strong>RC Offroad NQD Rock Crawler Truck Pickup 1:12</strong>&nbsp;merupakan salah jenis mainan remote control dalam bentuk truck pickup dengan penggerak 4 Roda (4WD) yang bisa kendalikan maju, mundur, belok kanan dan belok kiri. Body lentur bahan PVC sejenis mika sehingga tidak mudah pecah dan mudah diganti body/modifikasi dengan cara membuka 4 kancing yang terletak diatas body.<br />\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">Ban berbahan karet sehingga bisa dimainkan desegala medan baik jalan yang halus ataupun jalan yang berkeriikil. Sudah menggunakan baterai rechargeable Ni-CD 6 volt 700mAH. <br /><br /><strong>Spesifikasi Singkat :</strong><br />- Brand/Merk : NQD<br />- Skala 1:12<br />- Ukuran mobilnya P x L x T = 30 x 21 x 16 cm<br />- 4 Wheel Drive<br />- Kecepatan bisa mencapai 25 km/jam<br />- Jangkauan radio diatas 50 meter<br />- Full Suspensi (2 depan 2 belakang)<br />- Ban karet<br />- Body Metal khusus warna biru &amp; kuning<br />- Kelengkapan : Mobil , remote, battery pack 6 volt dengan kapasitas 700 mAh &amp; charger</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 3, '2017-07-20 09:27:53', '2017-07-20 09:27:53', 9, 2, 1),
(29, '', 'RC Offroad Cheetah King Buggy 1:18 2,4 Ghz - Merah', 'RC Offroad Cheetah King Buggy 1:18 2,4 Ghz salah satu jenis mainan remote control mobil yang dapat berjalan diberbagi medan dengan teknologi 2.4 Ghz', '<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">\r\n<div class=\"span9\"><strong>RC Offroad Cheetah King Buggy 1:18 2,4 Ghz</strong> &nbsp;merupakan salah jenis terbaru&nbsp; dengan teknologi dan inovasi frekuensi Spectrum 2,4 Ghz sehingga tidak perlu kuatir crash/bertabrakan bila main secara bersamaan. <br />\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">Dengan teknologi Spektrum 2,4 Ghz jangkauan sudah cukup baik dan tidak ribet pakai dibanding dengan frekuensi mhz yang masih mengandalkan antena untuk memaksimalkan jangkauan. <br />Bisa kendalikan maju, mundur, belok kanan dan belok kiri. Body lentur bahan PVC sejenis mika sehingga tidak mudah pecah dan mudah diganti body/modifikasi dengan cara membuka 4 kancing yang terletak diatas body.<br />Ban berbahan karet sehingga bisa dimainkan desegala medan baik jalan yang halus ataupun jalan yang berkeriikil. Sudah menggunakan baterai rechargeable Ni-CD 6 volt 700mAH. <br /><br /><strong>Spesifikasi Singkat :</strong><br />- Brand/Merk : YOUJIE TOYS<br />- Skala 1:18<br />- Ukuran mobilnya P x L x T = 22 x 15 x 10cm<br />- 2 Wheel Drive<br />- Kecepatan bisa mencapai 25 km/jam<br />- Jangkauan radio diatas 50 meter<br />- Full Suspensi (2 depan 2 belakang)<br />- Ban karet<br />- Body Metal khusus warna biru &amp; kuning<br />- Kelengkapan : Mobil , remote, battery pack 6 volt dengan kapasitas 700 mAh &amp; charger</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 3, '2017-07-20 09:33:58', '2017-07-20 09:33:58', 9, 2, 1),
(30, '', 'RC Offroad Cheetah King Buggy 1:18 2,4 Ghz - Hijau', 'RC Offroad Cheetah King Buggy 1:18 2,4 Ghz salah satu jenis mainan remote control mobil yang dapat berjalan diberbagi medan dengan teknologi 2.4 Ghz', '<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">\r\n<div class=\"span9\"><strong>RC Offroad Cheetah King Buggy 1:18 2,4 Ghz</strong> &nbsp;merupakan salah jenis terbaru&nbsp; dengan teknologi dan inovasi frekuensi Spectrum 2,4 Ghz sehingga tidak perlu kuatir crash/bertabrakan bila main secara bersamaan. <br />\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">Dengan teknologi Spektrum 2,4 Ghz jangkauan sudah cukup baik dan tidak ribet pakai dibanding dengan frekuensi mhz yang masih mengandalkan antena untuk memaksimalkan jangkauan. <br />Bisa kendalikan maju, mundur, belok kanan dan belok kiri. Body lentur bahan PVC sejenis mika sehingga tidak mudah pecah dan mudah diganti body/modifikasi dengan cara membuka 4 kancing yang terletak diatas body.<br />Ban berbahan karet sehingga bisa dimainkan desegala medan baik jalan yang halus ataupun jalan yang berkeriikil. Sudah menggunakan baterai rechargeable Ni-CD 6 volt 700mAH. <br /><br /><strong>Spesifikasi Singkat :</strong><br />- Brand/Merk : YOUJIE TOYS<br />- Skala 1:18<br />- Ukuran mobilnya P x L x T = 22 x 15 x 10cm<br />- 2 Wheel Drive<br />- Kecepatan bisa mencapai 25 km/jam<br />- Jangkauan radio diatas 50 meter<br />- Full Suspensi (2 depan 2 belakang)<br />- Ban karet<br />- Body Metal khusus warna biru &amp; kuning<br />- Kelengkapan : Mobil , remote, battery pack 6 volt dengan kapasitas 700 mAh &amp; charger</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 3, '2017-07-20 09:56:46', '2017-07-20 09:56:46', 9, 2, 1),
(31, '', 'RC NQD 4WD Land Buster 1:12 - Biru', 'RC NQD 4WD Land Buster 1:12 salah satu jenis mainan remote control mobil yang dapat berjalan diberbagi medan jalan', '<div class=\"row\">\r\n<div class=\"span9\">\r\n<div class=\"span9\">\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">\r\n<div class=\"row\">\r\n<div class=\"span9\">\r\n<div class=\"span9\">\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">\r\n<div class=\"span9\"><strong>RC Offroad NQD Rock Crawler Truck Pickup 1:12</strong>&nbsp;merupakan salah jenis mainan remote control dalam bentuk truck pickup dengan penggerak 4 Roda (4WD) yang bisa kendalikan maju, mundur, belok kanan dan belok kiri. Body lentur bahan PVC sejenis mika sehingga tidak mudah pecah dan mudah diganti body/modifikasi dengan cara membuka 4 kancing yang terletak diatas body.<br />\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">Ban berbahan karet sehingga bisa dimainkan desegala medan baik jalan yang halus ataupun jalan yang berkeriikil. Sudah menggunakan baterai rechargeable Ni-CD 6 volt 700mAH. <br /><br /><strong>Spesifikasi Singkat :</strong><br />- Brand/Merk : NQD<br />- Skala 1:12<br />- Ukuran mobilnya P x L x T = 38 x 25 x 16 cm<br />- 4 Wheel Drive<br />- Kecepatan bisa mencapai 25 km/jam<br />- Jangkauan radio diatas 50 meter<br />- Full Suspensi (2 depan 2 belakang)<br />- Ban karet<br />- Kelengkapan : Mobil , remote, Baterai truggy: NiCd 9.6V 800 mAh+ charger</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 3, '2017-07-20 10:41:39', '2017-07-20 10:41:39', 9, 2, 1),
(32, '', 'UNO Stacko', 'UNO Stacko salah satu mainan produk dari UNO yang betuknya berupa balok dengan bahan plastik padat', 'Mainan keluarga terdiridari 45 balok yang disusun menjadi tower lalu balok-baloknya dilepas satu persatu oleh pemain tanpa menyentuh tower. Pemain yg merubuhkan tower adalah yg kalah<br />Menyenangkan dimainkan rame-rame.<br /><br />Cara bermain :<br />- Siapkan menara UNO .<br />Pemain pertama mengambil sebuah balok dari bagian bawah atau tengah menara dan meletakkannya di bagian atas menara.<br />- Pemain berikutnya harus mengambil balok dengan warna yang sama dengan nomor apa saja atau balok dengan angka yang sama dengan warna apa saja.<br />- Apabila balok dengan tanda \'reverse\' dipindahkan maka arah permainan dibalik.<br />Sedangkan balok tanda \'draw two\' mengharuskan pemain memindahkan 2 balok langsung ke atas menara.<br />- Balok dengan tanda \'skip\' berarti pemain tersebut dilewati oleh pemain berikutnya.<br />Dan ketika balok warna ungu diambil maka pemain tersebut harus menyebutkan warna balok apa yang harus diambil pemain berikutnya.<br />- Permainan berakhir apabila menara roboh dan pemain yang menyebabkan robohnya menaralah yang kalah.<br /><br />Dapat di mainkan 2 - 10 orang. Bermain bersama keluarga jadi semakin seru', 3, '2017-07-20 11:03:46', '2017-07-20 11:03:46', 29, 2, 1),
(33, 'Paketan UNO', 'UNO Stacko + Kartu', 'Mainan Produk dari UNO (dalam bentuk kartu dan balok dengan bahan plastik padat)', 'Mainan keluarga terdiridari 45 balok yang disusun menjadi tower lalu balok-baloknya dilepas satu persatu oleh pemain tanpa menyentuh tower. Pemain yg merubuhkan tower adalah yg kalah. Menyenangkan dimainkan rame-rame.<br />Include :<br />1. Uno Stacko<br />2. Kartu Uno <img src=\"https://mojito.tokopedia.com/recentview/pixel.gif?user_id=479369&amp;product_id=142295022&amp;device=desktop&amp;source=product_info\" />', 3, '2017-07-20 11:08:05', '2017-07-20 11:08:05', 29, 2, 1),
(34, 'Paketan UNO', 'UNO Stacko + Dadu + kartu UNO', 'Mainan Produk dari UNO (dalam bentuk kartu dan balok dengan bahan plastik padat serta dadu untuk memainkan UNO Stacko)', 'Mainan keluarga terdiridari 45 balok yang disusun menjadi tower lalu balok-baloknya dilepas satu persatu oleh pemain tanpa menyentuh tower. Pemain yg merubuhkan tower adalah yg kalah. Menyenangkan dimainkan rame-rame.<br />Include :<br />1. Uno Stacko<br />2. Kartu Uno<br />3. Dadu', 3, '2017-07-20 11:11:36', '2017-07-20 11:11:36', 29, 2, 1),
(35, '', 'RC Offroad Cross Country Slayer Buggy 1:16 2,4 Ghz - Merah', 'RC Offroad Cross Country Slayer 1:16 2,4 Ghz salah satu jenis mainan remote control mobil yang dapat berjalan diberbagi medan dengan teknologi 2.4 Ghz', '<strong>RC Offroad Cross Country Slayer 1:16 2,4 Ghz</strong> merupakan salah jenis terbaru&nbsp; dengan teknologi dan inovasi frekuensi Spectrum 2,4 Ghz sehingga tidak perlu kuatir crash/bertabrakan bila main secara bersamaan. <br />Dengan teknologi Spektrum 2,4 Ghz jangkauan sudah cukup baik dan tidak ribet pakai dibanding dengan frekuensi mhz yang masih mengandalkan antena untuk memaksimalkan jangkauan. <br />Bisa kendalikan maju, mundur, belok kanan dan belok kiri. Body lentur bahan PVC sejenis mika sehingga tidak mudah pecah dan mudah diganti body/modifikasi dengan cara membuka 4 kancing yang terletak diatas body.<br />Ban berbahan karet sehingga bisa dimainkan desegala medan baik jalan yang halus ataupun jalan yang berkeriikil. Sudah menggunakan baterai rechargeable Ni-CD 6 volt 700mAH. <br /><br /><strong>Spesifikasi Singkat :</strong><br />- Brand/Merk : YOUJIE TOYS<br />- Skala 1:16<br />- Ukuran mobilnya P x L x T = 28 x 19 x 12 cm<br />- 2 Wheel Drive<br />- Kecepatan bisa mencapai 25 km/jam<br />- Jangkauan radio diatas 50 meter<br />- Full Suspensi (2 depan 2 belakang)<br />- Ban karet<br />- Body Metal khusus warna biru &amp; kuning<br />- Kelengkapan : Mobil , remote, battery pack 6 volt dengan kapasitas 700 mAh &amp; charger', 3, '2017-07-20 11:21:47', '2017-07-20 11:21:47', 9, 2, 1),
(36, '', 'RC Offroad Cross Country Slayer Buggy 1:16 2,4 Ghz - Hijau', 'RC Offroad Cross Country Slayer 1:16 2,4 Ghz salah satu jenis mainan remote control mobil yang dapat berjalan diberbagi medan dengan teknologi 2.4 Ghz', '<div class=\"span9\">\r\n<ul>\r\n<li><a href=\"http://www.toko-mainanku.com/big-foot-crawler-hummer/9-1500514819-23/rc-offroad-cross-country-slayer-muscle-116-24-ghz-hijau/#home\" data-toggle=\"tab\">Deskripsi</a></li>\r\n</ul>\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\"><strong>RC Offroad Cross Country Slayer 1:16 2,4 Ghz</strong> merupakan salah jenis terbaru&nbsp; dengan teknologi dan inovasi frekuensi Spectrum 2,4 Ghz sehingga tidak perlu kuatir crash/bertabrakan bila main secara bersamaan. <br />Dengan teknologi Spektrum 2,4 Ghz jangkauan sudah cukup baik dan tidak ribet pakai dibanding dengan frekuensi mhz yang masih mengandalkan antena untuk memaksimalkan jangkauan. <br />Bisa kendalikan maju, mundur, belok kanan dan belok kiri. Body lentur bahan PVC sejenis mika sehingga tidak mudah pecah dan mudah diganti body/modifikasi dengan cara membuka 4 kancing yang terletak diatas body.<br />Ban berbahan karet sehingga bisa dimainkan desegala medan baik jalan yang halus ataupun jalan yang berkeriikil. Sudah menggunakan baterai rechargeable Ni-CD 6 volt 700mAH. <br /><br /><strong>Spesifikasi Singkat :</strong><br />- Brand/Merk : YOUJIE TOYS<br />- Skala 1:16<br />- Ukuran mobilnya P x L x T = 28 x 19 x 12 cm<br />- 2 Wheel Drive<br />- Kecepatan bisa mencapai 25 km/jam<br />- Jangkauan radio diatas 50 meter<br />- Full Suspensi (2 depan 2 belakang)<br />- Ban karet<br />- Body Metal khusus warna biru &amp; kuning<br />- Kelengkapan : Mobil , remote, battery pack 6 volt dengan kapasitas 700 mAh &amp; charger</div>\r\n</div>\r\n</div>', 3, '2017-07-20 11:24:20', '2017-07-20 11:24:20', 9, 2, 1),
(37, '', 'RC Offroad Cheetah King Muscle Extreme 1:16 2,4 Ghz - Biru', 'RC Offroad Cheetah King 1:16 2,4 Ghz salah satu jenis mainan remote control mobil yang dapat berjalan diberbagi medan dengan teknologi 2.4 Ghz', '<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">\r\n<div class=\"span9\"><strong>RC Offroad Cheetah King 1:16 2,4 Ghz</strong> merupakan salah jenis terbaru&nbsp; dengan teknologi dan inovasi frekuensi Spectrum 2,4 Ghz sehingga tidak perlu kuatir crash/bertabrakan bila main secara bersamaan. <br />\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">Dengan teknologi Spektrum 2,4 Ghz jangkauan sudah cukup baik dan tidak ribet pakai dibanding dengan frekuensi mhz yang masih mengandalkan antena untuk memaksimalkan jangkauan. <br />Bisa kendalikan maju, mundur, belok kanan dan belok kiri. Body lentur bahan PVC sejenis mika sehingga tidak mudah pecah dan mudah diganti body/modifikasi dengan cara membuka 4 kancing yang terletak diatas body.<br />Ban berbahan karet sehingga bisa dimainkan desegala medan baik jalan yang halus ataupun jalan yang berkeriikil. Sudah menggunakan baterai rechargeable Ni-CD 6 volt 700mAH. <br /><br /><strong>Spesifikasi Singkat :</strong><br />- Brand/Merk : YOUJIE TOYS<br />- Skala 1:16<br />- Ukuran mobilnya P x L x T = 32 x 21 x 14 cm<br />- 2 Wheel Drive<br />- Kecepatan bisa mencapai 25 km/jam<br />- Jangkauan radio diatas 50 meter<br />- Full Suspensi (2 depan 2 belakang)<br />- Ban karet<br />- Body Metal khusus warna biru &amp; kuning<br />- Kelengkapan : Mobil , remote, battery pack 6 volt dengan kapasitas 700 mAh &amp; charger</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 3, '2017-07-20 13:28:37', '2017-07-20 13:28:37', 9, 2, 1),
(38, '', 'RC Offroad Cheetah King Muscle Extreme 1:16 2,4 Ghz - Merah', 'RC Offroad Cheetah King 1:16 2,4 Ghz salah satu jenis mainan remote control mobil yang dapat berjalan diberbagi medan dengan teknologi 2.4 Ghz', '<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">\r\n<div class=\"span9\"><strong>RC Offroad Cheetah King 1:16 2,4 Ghz</strong> merupakan salah jenis terbaru&nbsp; dengan teknologi dan inovasi frekuensi Spectrum 2,4 Ghz sehingga tidak perlu kuatir crash/bertabrakan bila main secara bersamaan. <br />\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">Dengan teknologi Spektrum 2,4 Ghz jangkauan sudah cukup baik dan tidak ribet pakai dibanding dengan frekuensi mhz yang masih mengandalkan antena untuk memaksimalkan jangkauan. <br />Bisa kendalikan maju, mundur, belok kanan dan belok kiri. Body lentur bahan PVC sejenis mika sehingga tidak mudah pecah dan mudah diganti body/modifikasi dengan cara membuka 4 kancing yang terletak diatas body.<br />Ban berbahan karet sehingga bisa dimainkan desegala medan baik jalan yang halus ataupun jalan yang berkeriikil. Sudah menggunakan baterai rechargeable Ni-CD 6 volt 700mAH. <br /><br /><strong>Spesifikasi Singkat :</strong><br />- Brand/Merk : YOUJIE TOYS<br />- Skala 1:16<br />- Ukuran mobilnya P x L x T = 32 x 21 x 14 cm<br />- 2 Wheel Drive<br />- Kecepatan bisa mencapai 25 km/jam<br />- Jangkauan radio diatas 50 meter<br />- Full Suspensi (2 depan 2 belakang)<br />- Ban karet<br />- Body Metal khusus warna biru &amp; kuning<br />- Kelengkapan : Mobil , remote, battery pack 6 volt dengan kapasitas 700 mAh &amp; charger</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 3, '2017-07-20 13:31:56', '2017-07-20 13:31:56', 9, 2, 1);
INSERT INTO `content` (`content_id`, `content_subname`, `content_name`, `content_excerpt`, `content_desc`, `content_status`, `content_created`, `content_publish`, `chanel_id`, `type_id`, `comment`) VALUES
(39, '', 'RC Helicopter V-Max HX703  3,5 Channel - Kuning', 'RC Helicopter V-Max HX703 merupakan salah satu jenis mainan Helicopter dengan teknologi Gyroscope (Stabil dan mudah dimainankan)', '<strong><br />RC Helicopter V-Max HX703</strong> merupakan salah satu jenis mainan Helicopter dengan teknologi Gyroscope (sebuah system yang digunakan pada <strong>helikopter</strong> sungguhan untuk menyeimbangkan posisi diudara). <br />\r\n<div><strong>Mainan Helicopter</strong>&nbsp; ber-gyroscope lebih mudah dikendalikan daripada helicopter tanpa gyroscope, bisa dikendalikan Naik-Turun, Puter Kiri-Kanan, Maju-Mundur. Dan juga Heli ini tersedia lampu depan dan juga samping yang begitu terang dan indah , Dan juga tersedia charger yang dapat di charge saat baterai heli anda sudah lowbat.<strong><br /><br /></strong><strong>Spesifikasi Singkat :</strong><br />- Brand/Merk : V-MAx<br />- Fitur : Remote Control , Flashing<br />- Jenis : Helikopter<br />- Channel : 3.5 -Channel<br />- Gyroscope : Ya, super stabil<br />- Metode Kontrol : Maju dan mundur , atas dan bawah , kiri dan kanan , naik dan turun<br />- RTF : Siap terbang, tinggal cas <br />- Waktu : 8-9 menit<br />- Dimensi : 26x12x18cm<br />- Jarak : 15 meteran<br />- Waktu charge: sekitar 40 menit<br />- Bahan : Aluminium logam<br />- Sumber daya : Listrik<br />- Umur Ranges : 6 - 15 Tahun , Orang dewasa<br />- Baterai untuk Helikopter : Built -in rechargeable Li <br />- po baterai- Baterai untuk Radio Control: 6 x Baterai 1.5V AA ( tidak termasuk )&nbsp; GI4P</div>\r\n<div class=\"tab-content\"></div>', 3, '2017-07-20 13:49:14', '2017-07-20 13:49:14', 16, 2, 1),
(40, '', 'RC Helicopter V-Max HX703 3,5 Channel - Merah', 'RC Helicopter V-Max HX703 merupakan salah satu jenis mainan Helicopter dengan teknologi Gyroscope (Stabil dan mudah dimainankan)', '<div class=\"span9\">\r\n<div class=\"tab-content\"></div>\r\n<strong>RC Helicopter V-Max HX703</strong> merupakan salah satu jenis mainan Helicopter dengan teknologi Gyroscope (sebuah system yang digunakan pada <strong>helikopter</strong> sungguhan untuk menyeimbangkan posisi diudara). <br />\r\n<div><strong>Mainan Helicopter</strong>&nbsp; ber-gyroscope lebih mudah dikendalikan daripada helicopter tanpa gyroscope, bisa dikendalikan Naik-Turun, Puter Kiri-Kanan, Maju-Mundur. Dan juga Heli ini tersedia lampu depan dan juga samping yang begitu terang dan indah , Dan juga tersedia charger yang dapat di charge saat baterai heli anda sudah lowbat.<strong><br /><br /></strong><strong>Spesifikasi Singkat :</strong><br />- Brand/Merk : V-MAx<br />- Fitur : Remote Control , Flashing<br />- Jenis : Helikopter<br />- Channel : 3.5 -Channel<br />- Gyroscope : Ya, super stabil<br />- Metode Kontrol : Maju dan mundur , atas dan bawah , kiri dan kanan , naik dan turun<br />- RTF : Siap terbang, tinggal cas <br />- Waktu : 8-9 menit<br />- Dimensi : 26x12x18cm<br />- Jarak : 15 meteran<br />- Waktu charge: sekitar 40 menit<br />- Bahan : Aluminium logam<br />- Sumber daya : Listrik<br />- Umur Ranges : 6 - 15 Tahun , Orang dewasa<br />- Baterai untuk Helikopter : Built -in rechargeable Li <br />- po baterai- Baterai untuk Radio Control: 6 x Baterai 1.5V AA ( tidak termasuk )&nbsp; G</div>\r\n</div>', 3, '2017-07-20 14:05:11', '2017-07-20 14:05:11', 16, 2, 1),
(41, '', 'RC Helicopter Alloy CH058 3,5 Channel - Merah', 'RC Helicopter Alloy CH058 3,5 Channel merupakan salah satu jenis mainan Helicopter dengan teknologi Gyroscope (Stabil dan mudah dimainankan)', '<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">\r\n<div class=\"span9\"><strong>RC Helicopter Alloy CH058 3,5 Channel</strong> merupakan salah satu jenis mainan Helicopter dengan teknologi Gyroscope (sebuah system yang digunakan pada <strong>helikopter</strong> sungguhan untuk menyeimbangkan posisi diudara). <br />\r\n<div><strong>Mainan Helicopter</strong>&nbsp; ber-gyroscope lebih mudah dikendalikan daripada helicopter tanpa gyroscope, bisa dikendalikan Naik-Turun, Puter Kiri-Kanan, Maju-Mundur. Dan juga Heli ini tersedia ampu LED Putih di bagian depan Helikopter untuk bermain di malam&nbsp; sehingga yang begitu terang dan indah , Dan juga tersedia charger yang dapat di charge saat baterai heli anda sudah lowbat.<br /><strong></strong><strong><br />Spesifikasi Singkat :<br /></strong>- Brand/Merk : ALLOY<br />- Fitur : Remote Control , Flashing<br />- Jenis : Helikopter<br />- Channel : 3.5 -Channel<br />- Gyroscope : Ya, super stabil<br />- Metode Kontrol : Maju dan mundur , atas dan bawah , kiri dan kanan , naik dan turun<br />- RTF : Siap terbang, tinggal cas <br />- Waktu : 8-9 menit<br />- Dimensi : 24x10x14cm<br />- Jarak : 15 meteran<br />- Waktu charge: sekitar 40 menit<br />- Sumber daya : Listrik<br />- Umur Ranges : 6 - 15 Tahun , Orang dewasa<br />- Baterai untuk Helikopter : Built -in rechargeable Li <br />- po baterai- Baterai untuk Radio Control: 6 x Baterai 1.5V AA ( tidak termasuk )</div>\r\n</div>\r\n</div>\r\n</div>', 3, '2017-07-20 14:12:10', '2017-07-20 14:12:10', 16, 2, 1),
(42, '', 'RC Helicopter Alloy CH058 3,5 Channel - Biru', 'RC Helicopter Alloy CH058 3,5 Channel merupakan salah satu jenis mainan Helicopter dengan teknologi Gyroscope (Stabil dan mudah dimainankan)', '<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">\r\n<div class=\"span9\"><strong>RC Helicopter Alloy CH058 3,5 Channel</strong> merupakan salah satu jenis mainan Helicopter dengan teknologi Gyroscope (sebuah system yang digunakan pada <strong>helikopter</strong> sungguhan untuk menyeimbangkan posisi diudara). <br />\r\n<div><strong>Mainan Helicopter</strong>&nbsp; ber-gyroscope lebih mudah dikendalikan daripada helicopter tanpa gyroscope, bisa dikendalikan Naik-Turun, Puter Kiri-Kanan, Maju-Mundur. Dan juga Heli ini tersedia ampu LED Putih di bagian depan Helikopter untuk bermain di malam&nbsp; sehingga yang begitu terang dan indah , Dan juga tersedia charger yang dapat di charge saat baterai heli anda sudah lowbat.<br /><strong></strong><strong><br />Spesifikasi Singkat :<br /></strong>- Brand/Merk : ALLOY<br />- Fitur : Remote Control , Flashing<br />- Jenis : Helikopter<br />- Channel : 3.5 -Channel<br />- Gyroscope : Ya, super stabil<br />- Metode Kontrol : Maju dan mundur , atas dan bawah , kiri dan kanan , naik dan turun<br />- RTF : Siap terbang, tinggal cas <br />- Waktu : 8-9 menit<br />- Dimensi : 24x10x14cm<br />- Jarak : 15 meteran<br />- Waktu charge: sekitar 40 menit<br />- Sumber daya : Listrik<br />- Umur Ranges : 6 - 15 Tahun , Orang dewasa<br />- Baterai untuk Helikopter : Built -in rechargeable Li <br />- po baterai- Baterai untuk Radio Control: 6 x Baterai 1.5V AA ( tidak termasuk )</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 3, '2017-07-20 14:26:52', '2017-07-20 14:26:52', 16, 2, 1),
(43, '', 'RC NQD Formula One 1:12 - Biru ', 'RC NQD Formula One 1:12 merupakan salah satu jenis mainan Mobil Formula One yang cepat dan dikendalikan menggunakn remote.', '<strong>RC NQD Formula One 1:12</strong> merupakan salah satu jenis mainan bentuk mobil seperti mobil asli Formula One.Mainan ini sangat mudah dikendalikan oleh anak-anak pada umumnya, mainan ini Bisa Maju, mundur, belok kiri, belok kanan. Dan juga tersedia charger yang dapat di charge saat baterai heli anda sudah lowbat.<br /><br /><strong>RC Helicopter Alloy CH058 3,5 Channel</strong> merupakan salah satu jenis mainan Helicopter dengan teknologi Gyroscope (sebuah system yang digunakan pada <strong>helikopter</strong> sungguhan untuk menyeimbangkan posisi diudara).<br /><br /><strong>Mainan Helicopter</strong>&nbsp; ber-gyroscope lebih mudah dikendalikan daripada helicopter tanpa gyroscope, bisa dikendalikan Naik-Turun, Puter Kiri-Kanan, Maju-Mundur. Dan juga Heli ini tersedia ampu LED Putih di bagian depan Helikopter untuk bermain di malam&nbsp; sehingga yang begitu terang dan indah , Dan juga tersedia charger yang dapat di charge saat baterai heli anda sudah lowbat.<br /><br /><strong>Spesifikasi Singkat :<br /></strong>Brand/Merk : NQD<br />- Skala 1:12 - Ukuran mobilnya P x L x T = 42 x 15 x 9 cm<br />- 2 Wheel Drive<br />- Kecepatan bisa mencapai 25 km/jam<br />- Jangkauan radio diatas 50 meter<br />- Ban karet<br />- Kelengkapan : Mobil , remote, battery pack 6 volt dengan kapasitas 700 mAh &amp; charger', 3, '2017-07-20 14:40:32', '2017-07-20 14:40:32', 12, 2, 1),
(44, '', 'Kucing Talking Tom Cat Bernyanyi Dan Berdongeng B.Indonesia', 'Kucing Talking Tom Cat Bernyanyi Dan Berdongeng B.Indonesia', '<div class=\"ratakiri\">\r\n<h5>Mainan kucing yg diadaptasi dari game Talking Tom yang lagi trend di smartphone kami namakan Talking TOM CAT DONGENG, dapat menirukan suara kita dengan suaranya yg lucu.Bisa bernyanyi dan berdongeng. terdari 5 dongeng dan 16 lagu yang dapat kita dengar. Lalu bila disentuh perut, kaki, dahinya ia juga akan bersuara. menggunakan baterai AA 3pcs.<br /> Keunikan Talking Tomcat Asli adalah Mainan Edukatif yang mempunyai kemampuan khusus :<br /><br />1. Talking Tomcat Asli ini dapat menirukan apapun suara yang kita ucapkan, bahkan lagu dengan musikpun dapat ditirukan. Suara gitar saja dapat ditirukan dengan kemiripan 90%.<br />2. Talking Tomcat Asli dapat mengaduh kesakitan, hanya dengan disentuh kakinya.<br /><br />3. Talking Tomcat Asli Tertawa terbahak-bahak dengan disentuh perutnya.<br />4. Talking Tomcat Asli dapat Kentut/buang gas, dengan disentuh bagian belakang/pantat atau ekornya.<br /><br />Selain itu, Talking Tomcat Asli mempunyai kemampuan khusus yang tidak dimiliki talking tomcat lainnya :<br /><br />1. Bercerita/mendongeng dengan disentuh kuping/telinga kiri. Pembacaan dongeng cerita rakyat seperti sangkuriang, kisah 2 ekor kambing, anjing yang serakah sangat disukai bukan hanya oleh anak-anak saja dalam menemani tidurnya, bahkan orang dewasapun suka cerita yang selalu diakhiri dengan pesan moral yang mendidik karakter anak sejak dini. Penelitian telah menunjukkan dongeng mampu membangkitkan kreatifitas imajinasi anak sehingga menjadi anak yang cerdas.<br /><br />2. Bernyanyi lagu-lagu tradisional Indonesia yang perlu Anak Anda pelajari, seperti lagu cublek cublek sueng, rasa sayange, burung kakak tua, naik delman, bunga, naik kereta api, burung kakak tua, cicak-cicak dinding, balonku ada lima, kebunku, oh ibu dan ayah, anak gembala, di obok-obok, kasih ibu, potong bebek, pelangi, bintang kecil. Semua lagu dalam Talking Tomcat Asli merupakan lagu-lagu inspiratif yang mempunyai pesan moral yang kuat dan disukai anak-anak Indonesia sepanjang masa.<strong><br /></strong></h5>\r\n</div>', 3, '2017-07-20 15:00:13', '2017-07-20 15:00:13', 32, 2, 1),
(45, '', 'RC Power Dump Truck Under Construction 1:22', 'RC Power Dump Truck Under Construction salah satu jenis mainan kendaraan besar/Alat Berat berbentuk Dump Truck yang fungsi Seperti Alat berat asllinya', '<span><strong>RC Power Dump Truck Under Construction 1:22</strong> merupakan salah jenis mainan remote control kendaraan besar/alat berat yang memiliki fungsi sama dengan kendaraan besar/alat berat aslinya.</span>\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">Mainan ini bisa dikendalikan maju, mundur, belok kanan dan belok kiri serta bak dapat diangkat keatas seolah-olah kendaraan besar asli sedang melakukan suatu pekerjaan.&nbsp;Sudah menggunakan baterai rechargeable Ni-CD 6 volt 700mAH. <br /><br /><strong>Spesifikasi Singkat :</strong><br />- Brand/Merk : RuiCheng<br />- Skala 1:22<br />- Ukuran mobilnya P x L x T = 30 x 15 x 15 cm<br />- 2 Wheel Drive<br />- Kecepatan bisa mencapai 25 km/jam<br />- Jangkauan radio diatas 50 meter<br />- Kelengkapan : Mobil , remote, battery pack 6 volt dengan kapasitas 700 mAh &amp; charger</div>\r\n</div>', 3, '2017-07-20 20:12:54', '2017-07-20 20:12:54', 20, 2, 1),
(46, '', 'RC Truck Excavator Super Power Beko', 'RC Truck Excavator Super Power Beko salah satu jenis mainan kendaraan besar/Alat Berat berbentuk Truck Beko yang fungsi Seperti Alat berat asllinya\r\n', '<span><strong>RC Truck Excavator Super Power Beko</strong> merupakan salah jenis mainan remote control kendaraan besar/alat berat yang memiliki fungsi sama dengan kendaraan besar/alat berat aslinya.</span><span></span>\r\n<div class=\"tab-content\">\r\n<div class=\"tab-pane fade active in\">Mainan ini bisa dikendalikan maju, mundur, belok kanan dan belok kiri serta tangan untuk dapat diangkat keatas seolah-olah kendaraan besar asli sedang melakukan suatu pekerjaan.&nbsp;Sudah menggunakan baterai rechargeable Ni-CD 6 volt 700mAH. <br /><br /><strong>Spesifikasi Singkat :</strong><br />- Brand/Merk : Hengjian<br />- Skala 1:22<br />- Ukuran mobilnya P x L x T = 30 x 25 x 25 cm<br />- 2 Wheel Drive<br />- Kecepatan bisa mencapai 15 km/jam<br />- Jangkauan radio diatas 50 meter<br />- Kelengkapan : Mobil , remote, battery pack 6 volt dengan kapasitas 700 mAh &amp; charger</div>\r\n</div>', 3, '2017-07-20 20:50:03', '2017-07-20 20:50:03', 20, 2, 1),
(47, 'Kontak', 'Kontak', 'Kontak', '<br />\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td><strong>Lokasi Toko</strong></td>\r\n<td><strong></strong></td>\r\n<td><strong></strong></td>\r\n<td><strong></strong></td>\r\n<td><strong></strong></td>\r\n<td><strong></strong></td>\r\n<td><strong></strong></td>\r\n<td></td>\r\n<td><strong>Toko Buka</strong></td>\r\n</tr>\r\n<tr>\r\n<td>Toko Mainan Murah 4 Bintang<br />Perumahan Villa Mutiara Gading 3 (Perumahan Taman Kebalen Indah)<br />Jl. Taman Kebalen Indah<br />Ruko Palazzo Blok C7 No 16, Kebalen, Babelan, Bekasi 17610</td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td>Senin - Minggu&nbsp;<br />08.30-20.00 WIB<br /><br />Jum\'at&nbsp;<br />13.00-20.00 WIB</td>\r\n</tr>\r\n</tbody>\r\n</table>', 3, '2017-07-29 19:12:58', '2017-07-29 19:12:58', 1, 6, 0),
(48, '', 'Penawaran Spesial', 'Penawaran Spesial', 'Penawaran Spesial', 3, '2017-07-29 19:13:27', '2017-07-29 19:13:27', 1, 6, 0),
(49, '', 'Privacy', 'Privacy', 'Privacy', 0, '2017-07-29 19:15:14', '2017-07-29 19:15:14', 1, 6, 0),
(50, '', 'Peraturan Belanja', 'Peraturan Belanja', '<span>CARA BELANJA DAN PERATURAN BELANJA</span><br /><br />\r\n<h4><span>PENTING :</span></h4>\r\n<h4><span>SMART BUYER baca dulu sampai bawah yah.....</span></h4>\r\n<strong><span>Jam Kerja senin - sabtu 08.30 - 15.30&nbsp;<br /></span></strong><span><strong>Khusus Minggu / hari Libur Chat WA/ LINE Mulai Jam 12.00 - 17.00&nbsp;</strong></span><span><strong>(Hanya untuk order)</strong><br /></span><span></span>\r\n<h4><span>Setiap hari batas transfer jam 13.00, kecuali sabtu jam 10.30</span></h4>\r\n<h4><span>(UPDATE RESI JAM 9 MALAM)</span></h4>\r\n<h4><span>BUYER YANG TIDAK KONFIRMASI TRANSFER / ALAMAT AKAN DI KIRIM H+1 <br /></span></h4>\r\n<h4><span>UNTUK PENGIRIMAN PAKAI POS INDONESIA, WAHANA, INDAH CARGO DAN DAKOTA BISA SMS</span><span> KE 0856 710 3450</span></h4>\r\n<h4><span>CARA PESAN SMS HANYA UNTUK PEMBELI ECARAN : </span><br /><span>SMS NAMA # BARANG (JUMLAH) # ALAMAT LENGKAP <br />kirim ke 0856 710 3450 (jangan ditelpon pakai modem)</span><br /><span>Contoh Aulia # ATM Mini Pink (2) # Jl. Perjuangan 124 RT001 RW005 Blok AG 4 No.3 Bekasi Utara</span></h4>\r\n<h4>SMS / WA : <strong>0856 710 3450 (Hanya untuk Eceran)</strong></h4>\r\n<span>jika order via sms kami akan hitungkan harga eceran&nbsp;</span><span>pembeli yang order via sms / wa bisa order mainan sesuai judul mainan tsb agar tidak terjadi salah kiirim barang karena pihak kami tidak tertanggung jawab jika terhadi hal tsb<br /></span>\r\n<h3><strong>Mau Belanja Lebih Murah dari Harga di Web Untuk PARTAI BESAR bisa Email ke <a href=\"mailto:tmainanku@gmail.com\">tmainanku@gmail.com </a></strong></h3>\r\n<h3><strong>Kode: PARTAI BESAR (Non RESELLER KAMI WELCOME)</strong></h3>\r\n<span></span>\r\n<h2><span>SMS Pada Hari Libur Slow Respon<br /></span></h2>\r\n<span></span>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td></td>\r\n<td><span>Kami hanya akan mengirim pesanan anda jika anda sudah transfer dan konfirmasi<br /><br /></span></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n<td><span>Garansi hanya berlaku harga eceran yang menggunakan paket JNE Reguler diluar dari paket tersebut kami tidak menggaransi.(Ongkir kirim pihak pembeli dan Ongkir pengembalian barang kami yang tanggung)<br />Tukar barang hanya berlaku 1x saja.Garansi paling lambat di terima max 5-6 jam.Kami tidak menerima alasan (seperti : baru dibuka karena ulang tahun, baru dibuka karena baru sakit, karena baru balik dari luar kota, lupa, karena sibuk... dan lain lain..)Mainan Made In China Ada lecet, kotor dll di Mainan Tsb Harap Maklum, Bawaan Pabrik.Di Haruskan Pakai Batrai ABC biru, Jangan Pakai Batrai Alkaline, Campuran, Charge dapat merusak. Kami tidak Akan mengganti jika kesalahan pembeli.<strong>Semua pembelian Harga Reseller pakai JNE REG </strong><strong>Langsung Claim ke JNE jika terjadi kerusakan. </strong><strong>Proses Claim ke JNE memerlukan waktu yang cukup lama. </strong><strong>Claim Berdasarkan Peraturan atau </strong><strong>Kebijakan Dari JNE.<br /><br /></strong></span></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n<td><span>Kami menyarankan semua pembelian menggunakan paket pengiriman <strong>JNE REGULER, </strong><strong>DI ASURANSIKAN </strong>untuk melindungi barang anda saat rusak/ barang tidak sampai agar dapat pergantian penuh<br /><br /></span></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n<td><span>Kami menyarankan pengiriman langsung di kirim ke rumah.<br /><br /> </span></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n<td><span>Mainan jumlah pecahan banyak atau mainan masih segel tidak di hitung contoh Lego, Alat Belajar Huruf atau Angka dll (Hanya di cek fisik saja). Untuk Tenda di tes fisik saat di tempat dan melalukan pemasangan tenda terjadi sobek, patah pada tiang, resleting rusak tidak ada garansi. Mohon di perhatikan untuk pembeli untuk membaca keterangan barang yang kami jual. Cara pakai, jenis batrai yang di gunakan dan juga ada barang yang kami jual segel atau tidak di tes (Tidak ada garansi). Untuk RC yang memakai batrai Charge max waktu CAS batrai 1 jam untuk meminimalisir batrai bocor.<br /><br /></span></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n<td><span><span>Kami tidak bertanggung jawab jika terjadi keterlambatan pengiriman karena kami menggunakan jasa pihak ketiga untuk pengirimannya, namun kami berusaha membantu mengecek keberadaan barang/order anda. (Terjadi OverLoad, Momen Idul Fitri, Natal, Tahun Baru dan Hari besar Lain Nya).<br /></span></span>\r\n<ul>\r\n<li><span>JNE YES : 1hari (Garansi Sampai dari pihak JNE)&nbsp;&nbsp;</span></li>\r\n<li><span>JNE REG 2-3 HARI KERJA</span></li>\r\n<li><span>JNE EKO 4-5 HARI KERJA</span></li>\r\n<li><span>WANAHA 4-5 HARI KERJA&nbsp;</span></li>\r\n<li><span>POS 5-7 HARI KERJA</span></li>\r\n<li>Kami menerima pengiriman pakai DAKOTA, INDAH CARGO, POS, WAHANA dan MEX, Bisa Hub SMS CENTER KAMI.</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n<td><span><span>Kami merekam semua pengetesan dan pengepakan untuk bukti yang bisa anda lihat. Rekaman CCTV yang kami simpan adalah rekaman 7 hari yang lalu. Gunanya adalah<br /></span></span>\r\n<ul>\r\n<li><span>Bukti QC sebelum dikirim</span></li>\r\n<li><span>Bukti pengecekan kelengkapan mainan.</span></li>\r\n<li><span>Merekam Cek fisik, cek fungsi sebelum kirim.</span></li>\r\n<li><span>Pada video CCTV terdapat tanggal, tanggal tesebut adalah sama dengan tanggal kami kirim ke JNE, untuk bisa anda cocokan dengan pengetesan dan pengiriman. request potongan video rekaman hanya bisa jika terjadi masalah.</span></li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n<td><span><span>Kami menggunakan modem sebagai sms center via komputer sejak 2012 sehingga History sms anda dapat kami simpan dan nomor sms center tidak bisa ditelpon. sms center yang kami gunakan hanya dinomor 0878 1555 97599. Cara Belanja Clik beli untuk pilihan Pakai Sendiri atau Dropship</span></span></td>\r\n</tr>\r\n</tbody>\r\n</table>', 3, '2017-07-29 19:15:54', '2017-07-29 19:15:54', 1, 6, 0),
(51, '', 'Aneka Pertanyaan', 'Pertanyaan yang sering diajukan', '<h3>Pertanyaan yang sering diajukan</h3>\r\nTanya : Apakah harga sudah termasuk ongkos kirim <br /> Jawab : Belum, semua harga belum termasuk ongkos kirim. <br /> Tanya : Kapan pesanan saya dikirim ? <br /> Jawab : Kami melakukan pengiriman tiap Senin-Sabtu. Jika anda mentransfer dan melakukan konfirmasi hari yang sama sebelum batas transfer, kami akan mengirim hari itu juga. Kami hanya akan mengirimkan pesanan jika sudah transfer/lunas. <br /> Tanya : Apakah bisa COD (Cash On Delivery) / Bayar ditempat ? <br /> Jawab : Maaf belum bisa, semua barang kami kirimkan melalui jasa pengiriman JNE, WAHANA, INDAH INDAH CARGO, POS INDONESIA, MEX Dan DAKOTA. <br /> Tanya : Apakah barang yang sedang kosong bisa dipesan ? <br /> Jawab : Maaf belum bisa, lebih baik anda pesan barang yg sedang ready. karena barang yg kosong belum bisa dipastikan kedatangannya lagi <br /> Tanya : Jika saya beli banyak, bisa dapat diskon ? <br /> Jawab : Tentu, pasti di www.jual-mainan.com banyak diskon <br /> Tanya : Apakah saya bisa membeli langsung di toko dan bagaimana harganya ? <br /> Jawab : Silahkan datang langsung ke toko kami, bisa anda cek d lokasi toko. dan saat ditoko ucapakan pembelian dari web agar mendapat keistimewaan beli 4pcs dapat harga reseller <br /> Tanya: Jasa ekspedisi apa saja yang digunakan dan kapan barang saya bisa dikirim? <br /> Jawab : Untuk pengiriman menggunakan JNE, Wahana, pengiriman dilakukan setiap hari. Batas transfer adalah jam 1 siang dan Untuk Pos Transfer sebelum Jam 9 pagi jika lebih kami akan kirim ke esokan hari-nya. <br /> Jawab : Untuk dakota, Indah Cargo, Pos Indoensia akan di krim setiap hari Max Transfer jam 10 siang jika lebih kami akan kirim ke esokan hari-nya. <br /> Jawab : Untuk Jadwal Pengiriman Mex pengiriman dilakukan sabtu. Batas transfer 2 Hari sebelum keberangkatan dan ada Min order karena jarak kami dengan Mex Lumayan jauh, bisa Hub sms center kami Tuk mengetahuinya <br /> Tanya : Dimana lokasi tokonya, apakah ada cabangnya ? <br /> Jawab : kami mempunyai toko di daerah bekasi dan tidak ada cabang di daerah lain. untuk lebih jelasnya anda bisa lihat di menu \"Lokasi Toko\" atau bisa anda tanyakan ke call center kami <br /> Tanya : Jika saat sampai di tempat saya, mainan rusak tersebut rusak bagaimana ? apa bisa di return/tukar) ? <br /> Jawab : Selengkapnya di Menu Peraturan Belanja Mau Belanja Lebih Murah dari Harga di Web Untuk PARTAI BESAR bisa Email ke tmainanku@gmail.com Kode: PARTAI BESAR (Non RESELLER KAMI WELCOME)', 3, '2017-07-29 19:16:47', '2017-07-29 19:16:47', 1, 6, 0),
(52, '', 'Reseller', 'Reseller', '<strong>Kamu Mau Nambah Penghasilan Modal Cuma HP ?<br />Mau Jualan Online tapi ngga mau ribet soal produk, stok, pengiriman dll ?<br />Mau Usaha sampingan yang lama-lama bisa mengalahkan pendapatan utama ?<br /></strong><span></span><br /><br /><strong>KAMI PUNYA JAWABANNYA !!!</strong><br />baca dulu sampai habis yah, aneka pertanyaan dibenak kamu sudah kami jawab dibawah dan ada bukti nyata reseller yang sudah jualan dapat untung jutaan<br /><br /><span>Kami mempunyai program yang kami namakan Reseller Dropship. </span><br /><br /><strong>Reseller Dropship</strong><span> adalah seorang atau lebih yang sudah mendaftar (form dibawah) untuk bisa belanja di tempat kami langung dapat harga reseller, untuk bisa kamu jual lagi di web/blog/fb/ig/tokopedia/bukalapak/kaskus/shopee/bbm dll.</span><br />untuk harga jual kamu bisa tentukan sendiri, kamu jualan diatas harga reseller yah agar kamu dapat untung..<br /><br /><span>Nah, Jika ada pesanan.. Reseller membeli di tempat kami dengan harga reseller dan kami akan kirim secara dropship. </span><br /><span>pengiriman dropship adalah pengiriman langsung dari kami ke alamat pembeli yang sudah reseller kasih sebelumnya dan tentunya pengirim atas nama reseller yah</span><br /><span>Jadi tugas kamu sebagai reseller dropship tinggal jualan dan urusan test, packing dan pengiriman kami yang urus. Enak kan ! </span><br /><br /><span>Media berjualan online skarang ada banyak lewat contohnya BBM, Instagram, Facebook, Tokopedia, Bukalapak, Elevenia, Shopee, Kaskus, Web, Blog dll. </span><br /><span>Dan masing-masing orang punya lingkaran pertemanan yang berbeda-beda dan rezekinya masing-masing.</span><br /><br /><span>Jadi program ini cocok untuk suami-istri, adik-kakak, mertua-menantu, sahabat-sahabat kuliah, dll. Cukup daftar sekali nanti rame-rame jualannya. ada yang jualan di tokopedia, di bukalapak, di facebook, di kaskus dan macem-macem deh. </span><br /><span>Jadi jualannya makin luas.. </span><br /><br /><strong>Syarat jadi Reseller ?</strong><span> </span><br />[] Paham seluk beluk jualan online <br />tahu apa itu dropship, cara cek resi jne, kiriman kena volume, kiriman kena berat, cara transfer, peraturan belanja, cara berjualan online baik di tokopedia, bukalapak, elevenia, shopee, bbm, line, facebook, instagram, dll<br /><br />[] Punya rekening<br />minimal punya 1 rek bank antara BCA, MANDIRI, BNI Atau BRI.<br /><br />[] Punya email<br />karena pendaftaran perlu isi email<br /><br />[] Santun dan sabar dalam berkomunikasi<br />jika kamu sms ingin pesan, konfirmasi transfer, lacak pengiriman (cek resi) mohon untuk bersabar jika dalam jam-jam sibuk. karena kami melayani banyak reseller. jika reseller butuh cepat kamu bisa langsung ke web, diweb pesan barang, konfirmasi transfer dan lacak pengiriman (cek resi) semua sudah otomatis. jadi bisa hemat biaya sms<br /><br /><strong>Jika sudah mendaftar keanggotaan Reseller Dropship mendapatkan : </strong><span></span><br /><br /><strong># Detail Pengirim Atas Nama Reseller</strong><br /><span>Reseller dapat menambahkan pin BBM, Akun Instagram, Tokopedia, Bukalapak, Twitter, Line, FB, hingga Motto Toko bisa reseller input sendiri.</span><br /><span>Jadi pembeli akan mendapatkan paket dengan pengiriman atas nama reseller sendiri</span><br /><span>Dan pengiriman lagi bukan atas nama kami. </span><br /><br /><strong># Foto Tanpa Watermark</strong><br /><span>Foto tanpa watermark dapat di ambil (save) dengan login terlebih dahulu lalu save ke komputer/smartphone masing-masing </span><br /><br /><strong># History Pesanan</strong><br /><span>Setiap pesanan yang kamu buat diweb(login dulu) akan tercatat semua. kamu bisa buka kembali masing-masing pesanan yang sudah pernah anda pesanan </span><br /><br /><strong># Lacak Kiriman Otomatis</strong><br /><span>Umumnya resi kami input malam hari, jadi pagi bisa kamu lihat resi pesanan-pesanan kamu dan kamu bisa lacak dengan klik resi tsb, jadi ngga perlu ke web JNE </span>', 3, '2017-07-29 19:17:12', '2017-07-29 19:17:12', 1, 6, 0),
(53, 'Laporan Pengiriman Paket', 'Resi Pengiriman', 'Beberapa istilah dalam trakingan pada web JNE', '<h5>Beberapa istilah dalam trakingan pada web JNE</h5>\r\n<h5>manifested : barang sudah ada di terima, menunggu untuk di kirim<br />on transit : barang sedang transit untuk menuju kota tujuan<br />AU : Antar ulang, krn tidak sempat terantar pada hari sebelumnya<br />BA / Bad address : kurang RT/RW, kelurahan, nomer rumah, Gg., etc<br />received on destination : sudah sampai di kota tujuan, belum diantar ke alamat.<br />MR : miss route<br />CC (criscross) : Paket tertukar<br />Redelivery : antar ulang<br />Closed Once Delivery Attempt : kurir telah datang tetapi alamat penerima tutup / Kosong<br />NTH : sama dengan di atas (alamat penerima kosong / penerima tidak di rumah)<br /><br /><a href=\"http://www.toko-mainanku.com/page/isitilah-jne\">Lebih Lengkap Klik ini</a></h5>\r\n<table style=\"width: 900px; border-color: #000000; font-color: #ffffff;\" border=\"#000000\">\r\n<tbody>\r\n<tr>\r\n<td><strong><span style=\"line-height: 16.8px; width: 5px;\">No</span></strong></td>\r\n<td><strong><span style=\"line-height: 16.8px;\">Nama</span></strong></td>\r\n<td><strong><span style=\"line-height: 16.8px;\">Ekpedisi</span></strong></td>\r\n<td><strong><span style=\"line-height: 16.8px;\">Nomor Resi/AWB</span></strong></td>\r\n</tr>\r\n<tr>\r\n<td>1<strong><span style=\"line-height: 16.8px; width: 5px;\"></span></strong></td>\r\n<td>Iyut</td>\r\n<td>Go-Send</td>\r\n<td><span>GK-35202961</span><strong><span style=\"line-height: 16.8px;\"></span></strong></td>\r\n</tr>\r\n<tr>\r\n<td>2</td>\r\n<td>Sigit Kurniawan</td>\r\n<td>Go-Send</td>\r\n<td><span>GK-35223031</span></td>\r\n</tr>\r\n</tbody>\r\n</table>', 3, '2017-08-29 15:50:18', '2017-08-29 15:50:18', 1, 6, 0),
(54, '', 'Isitilah JNE', 'Bingung sama istilah saat tracking paket di JNE?', '<span>Bingung sama istilah saat tracking paket di JNE?. Apa sih AU, MR atau BA di tampilan tracking paket di web JNE. aku share arti status paket kita. mudah2n bermanfaat untuk temen2 OS dan customer yg menggunakan JNE sbg ekspedisi favoritnya..</span><br /><br /><span>SEKEDAR INFO</span><br /><span>ARTI STATUS JNE (DIBACA DAN DI SIMPAN ATAU DI INGAT</span><br /><br /><span>1. Manifested : Barang yang akan dikirim sudah diterima di JNE, sudah siap dan menunggu proses pengiriman.</span><br /><br /><span>2. On Transit : Paket yang dikirim sedang transit di kota lain, dan akan diikutkan dengan jadwal pengiriman menuju kota tujuan.</span><br /><br /><span>3. On Process : Paket sedang dalam proses pengiriman, kalau masih pada tahap ini biasanya agak lama menunggu updatenya.</span><br /><br /><span>4. Received On Destination : Maksudnya barang sudah diterima di JNE kota tujuan pengiriman, tapi masih belum dikirim ke alamat tujuan.</span><br /><br /><span>5. Delivered : Artinya paket sudah diterima di alamat tujuan, bila anda tidak di tempat segera hubungi orang satu rumah anda untuk konfirmasi.</span><br /><br /><span>6. AU (Antar Ulang) : Barang anda sudah dibawa untuk dikirim tapi karena belum sempat diantar pada hari sebelumnya maka akan diulangi kembali hari ini.</span><br /><br /><span>7. BA (Bad Address) : Alamat yang dituju tidak jelas atau salah. Hal ini bisa disebabkan kesalahan pada penulisan alamat, nomor RT/RW, nomor jalan, nomor rumah, kodepos, nomor gang, dan sebagainya.</span><br /><br /><span>8. MR (Misroute) : Pengiriman salah menggunakan jalur atau menggunakan tujuan yang salah. JNE akan segera membetulkan jalur pengiriman paket yang digunakan.</span><br /><br /><span>9. CC (Criss Cross) : Paket yang dikirim tertukar dengan paket lain.</span><br /><br /><span>10. Redelivery : Paket akan dikirimkan kembali, ini bisa disebabkan penerima tidak ada di rumah.</span><br /><br /><span>11. Closed Once Delivery Attempt : Paket telah diantar kurir JNE ke alamat tujuan, tetapi alamat penerima ternyata salah atau kosong. Kalau muncul status ini sebaiknya anda menghubungi kantor cabang JNE di kota anda.</span><br /><br /><span>12. Cnee Unknown (Consignee Unknown) : Nama penerima paket tidak dikenali di tempat tujuan pengiriman, atau nama orang tersebut tidak tinggal di alamat tujuan. Ini bisa jadi disebabkan kesalahan penulisan nama atau alamat saat mengirim paket.</span><br /><br /><span>13. NTH (Not at Home / Not Home) : Saat paket tersebut diantar ke alamat tujuan tidak ada orang yang menerimanya.</span><br /><br /><span>14. Box Delay : Barang ada di JNE tapi tidak dikirimkan karena alamat salah atau tidak lengkap. Disarankan untuk langsung mengambil di kantor pusat JNE kota setempat. (Tambahan dari mas Adnan)</span><br /><br /><span>15. Box Undel (Box Undelivered) : Paket sudah dikirim ke alamat tujuan tapi tidak orang di tempat dan sudah dihubungi berkali - kali melalui nomor telepon yang tercantum tidak ada respon. (Tambahan dari pertanyaan mbak Icha)</span><br /><br /><span>16. Status Kosong di Trackingan : Ini bisa disebabkan kesalahan input data paket di JNE asal pengiriman, masih belum diupdate oleh agen JNE, barang yang dikirim belum masuk tahap Manifest, atau ada error pada database JNE.</span><br /><br /><span>17. Invalid Bag Status : Ini berarti paket anda salah masuk tas (invalid bag) sehingga ikut dikirimkan melalui jalur yang salah. Karena sudah dikenali bahwa barang tersebut tidak seharusnya dimasukkan dalam bag lain maka silahkan tunggu saja sampai ada update status JNE berikutnya. Status JNE yang ini juga baru saya sendiri mengalaminya.</span><br /><br /><span>18. LBA (Luar Batas Antar) : Lokasi tujuan pengantaran paket di luar zona pengiriman JNE, biasa disebabkan alamat yang tertera letaknya di tempat terpencil. Silahkan hubungi kantor cabang JNE setempat untuk mengambil sendiri paketnya.</span><br /><br /><span>19. AU to OPS : Barang yang sebelumnya tidak sampai ke tangan penerima telah diserahkan ke bagian Operasional JNE untuk dikirimkan kembali.</span><br /><br /><span>20. HO / Hold : Paket sedang ditahan oleh pihak JNE, hubungi kantor JNE di kota anda untuk mendapatkan penjelasan lebih lanjut.</span><br /><br /><span>21. Pending Undel : Artinya paket tidak terkirim (Undelivered) dan masih ditunda (Pending) proses berikutnya. Lebih baik anda ambil sendiri di agen JNE kota anda kalau status ini yang muncul.</span><br /><br /><span>22. CL : Maksudnya saat kiriman diantar ke alamat tujuan tapi keadaannya tutup atau kosong.</span><br /><br /><span>23. HVS (High Value Shipment) : Barang yang dikirimkan termasuk kategori benda berharga atau bernilai tinggi.</span><br /><br /><span>24. Hand Over (HO) : Paket tersebut telah diserahkan ke pihak lain untuk diteruskan, biasanya adalah agen JNE lain yang lebih dekat dengan lokasi tujuan pengiriman.</span>', 3, '2017-08-29 16:26:22', '2017-08-29 16:26:22', 1, 6, 0),
(55, 'toko-mainanku', 'toko-mainanku', 'toko-mainanku', '<a href=\"http://www.toko-mainanku.com/\">http://www.toko-mainanku.com/</a>', 0, '2017-08-29 16:36:12', '2017-08-29 16:36:12', 1, 6, 0),
(56, 'Tarif', 'Tarif', 'Tarif', '<a><strong>*CATATAN</strong><br /></a><br />Untuk rute lainnya dan request itinerary silakan dapat langsung menghubungi kami via whatsapp<br />atau hubungi call center kami di 0831-2959-9600.', 3, '2017-09-06 00:25:19', '2017-09-06 00:25:19', 42, 6, 0),
(57, 'Booking', 'Booking', 'Booking', 'Booking', 3, '2017-09-06 00:25:46', '2017-09-06 00:25:46', 42, 6, 0),
(58, 'Sewa Motor', 'Sewa Motor', 'Dengan memilih rental motor sebagai salah satu alternatif transportasi di Lombok, anda akan mendapatkan beberapa kelebihan dan keuntungan', 'KEUNGGULAN SEWA MOTOR OK CAR LOMBOK TRANSPORT<br /><br />Dengan memilih rental motor sebagai salah satu alternatif transportasi di Lombok, anda akan mendapatkan beberapa kelebihan dan keuntungan dibandingkan dengan menggunakan transportasi lainnya. Selain lebih murah dan irit, sewa motor juga membuat anda lebih banyak bergerak untuk mengunjungi beberapa obyek wisata di Pulau Lombok. Selain itu juga, keunggulan menggunakan motor adalah terbebas dengan kondisi macet Kota Lombok saat musim liburan. Sehingga anda punya lebih banyak waktu untuk berkunjung ke tempat wisata di Lombok. Anda tidak perlu khawatir dengan ketersediaan stock armada, karena kami memiliki stock armada motor matic yang cukup banyak, motor matic terbaru dari berbagai jenis kami siapkan untuk anda.<br /><br /><br /><em><strong>*CATATAN</strong></em><br /><br /><em>Untuk jenis kendaraan lainnya silakan dapat langsung menghubungi kami via whatsapp atau hubungi call center kami di 0831-2959-9600.</em>', 3, '2017-09-06 00:26:19', '2017-09-06 00:26:19', 42, 6, 0),
(59, 'Dummy', 'Dummy', 'Dummy', 'Dummy', 0, '2017-09-06 00:26:46', '2017-09-06 00:26:46', 42, 6, 0),
(60, 'Paket Tour', 'Paket Tour', 'Paket Tour', 'Paket Tour', 3, '2017-09-06 00:26:46', '2017-09-06 00:26:46', 42, 6, 0),
(61, 'Contact Us', 'Contact Us', 'Contact Us', 'Jl. Cilinaya Indah No.62, Kekalik Jaya, Kec. Sekarbela, Kota Mataram, Nusa Tenggara Barat, Indonesia. <br /><br /><br />Phone: <a href=\"tel:083129599600\" data-content=\"083129599600\" data-type=\"phone\">0831-2959-9600</a> <br />Email: <a href=\"mailto:okcarlomboktransport@gmail.com\">okcarlomboktransport@gmail.com</a> <br />Follow on: <a href=\"https://www.facebook.com/OkCarlomboktransport\" target=\"_blank\" rel=\"noopener\">Facebook</a>, <a href=\"https://www.instagram.com/okcar.lomboktransport/\" target=\"_blank\" rel=\"noopener\">Instagram</a>', 3, '2017-09-06 00:27:18', '2017-09-06 00:27:18', 42, 6, 0),
(62, '', 'Airport - Kuta', 'Airport - Kuta', 'Airport - Kuta', 3, '2017-09-10 18:17:42', '2017-09-10 18:17:42', 45, 2, 1),
(63, '', 'Avanza / Xenia', 'Sewa mobil Avanza / Xenia Lombok', 'Sewa mobil Avanza / Xenia Lombok', 3, '2017-09-10 18:44:22', '2017-09-10 18:44:22', 47, 2, 1),
(64, '', 'Airport - Mataram', 'Airport - Mataram', '<span>Airport - Mataram</span>', 3, '2017-09-10 18:46:27', '2017-09-10 18:46:27', 45, 2, 1),
(65, '', 'Airport - Pelabuhan Bangsal (to Gili)', 'Airport - Pelabuhan Bangsal (to Gili)', 'Airport - Pelabuhan Bangsal (to Gili)', 3, '2017-09-10 18:48:39', '2017-09-10 18:48:39', 45, 2, 1),
(66, '', 'Airport - Senggigi', 'Airport - Senggigi', '<span>Airport - Senggigi</span>', 3, '2017-09-10 18:54:17', '2017-09-10 18:54:17', 45, 2, 1),
(67, '', 'Bangsal - Kuta', 'Bangsal - Kuta', 'Bangsal - Kuta', 3, '2017-09-10 18:55:25', '2017-09-10 18:55:25', 45, 2, 1),
(68, '', 'Bangsal - Mataram', 'Bangsal - Mataram', '<span>Bangsal - Mataram</span>', 3, '2017-09-10 18:56:46', '2017-09-10 18:56:46', 45, 2, 1),
(69, '', 'Bangsal - Senggigi', 'Bangsal - Senggigi', '<span>Bangsal - Senggigi</span>', 3, '2017-09-10 18:58:13', '2017-09-10 18:58:13', 45, 2, 1),
(70, '', 'Senggigi - Mataram', 'Senggigi - Mataram', 'Senggigi - Mataram', 3, '2017-09-10 18:59:44', '2017-09-10 18:59:44', 45, 2, 1),
(71, '', 'Airport - Kuta', 'Airport - Kuta', 'Airport - Kuta', 3, '2017-09-10 19:01:11', '2017-09-10 19:01:11', 46, 2, 1),
(72, '', 'Airport - Mataram', 'Airport - Mataram', '<span>Airport - Mataram</span>', 3, '2017-09-10 19:03:49', '2017-09-10 19:03:49', 46, 2, 1),
(73, '', 'Airport - Pelabuhan Bangsal (to Gili)', 'Airport - Pelabuhan Bangsal (to Gili)', '<span>Airport - Pelabuhan Bangsal (to Gili)</span>', 3, '2017-09-10 19:04:45', '2017-09-10 19:04:45', 46, 2, 1),
(74, '', 'Airport - Senggigi', 'Airport - Senggigi', '<span>Airport - Senggigi</span>', 3, '2017-09-10 19:05:22', '2017-09-10 19:05:22', 46, 2, 1),
(75, '', 'Bangsal - Kuta', 'Bangsal - Kuta', '<span>Bangsal - Kuta</span>', 3, '2017-09-10 19:06:00', '2017-09-10 19:06:00', 46, 2, 1),
(76, '', 'Bangsal - Mataram', 'Bangsal - Mataram', '<span>Bangsal - Mataram</span>', 3, '2017-09-10 19:06:36', '2017-09-10 19:06:36', 46, 2, 1),
(77, '', 'Bangsal - Senggigi', 'Bangsal - Senggigi', '<span>Bangsal - Senggigi</span>', 3, '2017-09-10 19:07:31', '2017-09-10 19:07:31', 46, 2, 1),
(78, '', 'Senggigi - Mataram', 'Senggigi - Mataram', '<span>Senggigi - Mataram</span>', 3, '2017-09-10 19:08:08', '2017-09-10 19:08:08', 46, 2, 1),
(79, '', 'Innova', 'Sewa mobil Innova di Lombok', 'Sewa mobil Innova di Lombok', 3, '2017-09-10 19:11:07', '2017-09-10 19:11:07', 47, 2, 1),
(80, '', 'Beat', 'Beat', '<span>Beat</span>', 3, '2017-09-10 19:14:29', '2017-09-10 19:14:29', 48, 2, 1),
(81, '', 'Beat Pop', 'Beat Pop', '<span>Beat Pop</span>', 3, '2017-09-10 19:18:00', '2017-09-10 19:18:00', 48, 2, 1),
(82, '', 'Mio GT', 'Mio GT', '<span>Mio GT</span>', 3, '2017-09-10 19:18:31', '2017-09-10 19:18:31', 48, 2, 1),
(83, '', 'Mio J', 'Mio J', '<span>Mio J</span>', 3, '2017-09-10 19:18:59', '2017-09-10 19:18:59', 48, 2, 1),
(84, '', 'Mio M3 125', 'Mio M3 125', '<span>Mio M3 125</span>', 3, '2017-09-10 19:19:41', '2017-09-10 19:19:41', 48, 2, 1),
(85, '', 'Suzuki Next', 'Suzuki Next', '<span>Suzuki Next</span>', 3, '2017-09-10 19:20:15', '2017-09-10 19:20:15', 48, 2, 1),
(86, '', 'Vario 125', 'Vario 125', '<span>Vario 125</span>', 3, '2017-09-10 19:21:09', '2017-09-10 19:21:09', 48, 2, 1),
(87, '', 'Vario 150', 'Vario 150', '<span>Vario 150</span>', 3, '2017-09-10 19:25:38', '2017-09-10 19:25:38', 48, 2, 1),
(88, '', 'Tour Lombok 2 Hari 1 Malam Paket A', 'Tour Lombok 2 Hari 1 Malam Paket A', 'JADWAL KEGIATAN<br /><br />HARI 1 :<br />Peserta tour tiba di Bandara International Lombok, peserta akan sambut oleh team kami untuk memulai tour hari pertama : <br />1. Mengunjungi Desa Sukarara : Desa pengrajin songket dan tenun ikat khas Lombok, disini, peserta tour akan diberikan kesempatan untuk belajar menenun, dan mencoba menggunanakan pakaian khas Lombok.<br />2. Mengunjungi Pantai Kuta Lombok : Pantai yang termasuk dalam KEK Mandalika (Kawasan Ekonomi Khusus Mandalika) ini memiliki pasir pantai yang unik sebesar biji merica.<br />3. Makan Siang di lokal restorant<br />4. Mengunjungi Pantai Tanjung Aan : Pantai indah yang memiliki dua jenis pasir yang berbeda di sisi baratnya dan sisi bagian timurnya.<br />5. Mengunjungi Desa Sade Rambitan : Salah satu desa kunjungan wisata yang dimana desa ini dihuni oleh masyarakat suku \"Sasak\" (Suku Asli Lombok) yang masih menjaga kemurnian ajaran para leluhur Suku Sasak.<br />6. Mengunjungi Pusat Oleh - oleh Khas Lombok<br />7. Cek In Hotel <br />8. Tour Hari Pertama Berakhir. <br /><br />HARI 2 :<br />Setelah seluruh peserta sarapan dan cek out Hotel, akan kami ajak untuk melanjutkan tour di hari kedua :<br />1. Menuju Pelabuhan Bangsal dengan melalui \"Monkey Forest\", dari pelabuhan bangsal peserta tour melanjutkan perjalanan dengan public boat menuju \"Gili Trawangan\"<br />2. Saat tiba di Gili Trawangan anda dapat melakukan berbagai macam kegiatan wisata bahari seperti snorkeling, diving, mengelilingi pulau dengan sepedah atau cidomo (dokar), melihat pemandangan bawah laut dengan menggunakan glass bottom boat dll. (biaya tidak termasuk dalam paket wisata)<br />3. Makan siang di lokal restorant<br />4. Kembali ke pelabuhan bangsal, dilanjutkan dengan menikmati pemandangan di \"Bukit Malaka/ Bukit Malimbu\"<br />5. Peserta akan di atar ke airport untuk kembali ke kota asal.<br />6. Tour 2 hari 1 malam (A) berakhir. <br /><br />HARGA TERMASUK:<br />1. Mobil ber AC + BBM+ Driver<br />2. Hotel Sesuai Pilihan, sekamar berdua / bertiga peserta ganjil<br />3. Makan Pagi di Hotel <br />4. Makan Siang 2x 5. Penjemputan dan Pengantaran ke Airport <br />6. Tiket Public Boat PP ke Gili Trawangan <br />7. Tiket masuk Tempat wisata <br />8. Air Mineral Selama Tour @ 2/ Hari <br /><br />HARGA TIDAK TERMASUK:<br />1. Tiket Pesawat<br />2. Makan Malam<br />3. Tiping Untuk Lokal Guide di Objek Wisata<br />4. Makanan &amp; Minuman yang Tidak Termasuk Dalam Paket<br />5. Biaya Keperluan Pribadi<br />6. Tiping Untuk, Driver, Bellboy Hotel, Porter Airport. <br /><br />INFO TAMBAHAN<br />1. Harga Diatas Merupakan Private Tour (Tidak digabung dengan tamu lainnya)<br />2. Paket Tour Hanya Berlaku Untuk Peserta Domestik<br />3. Anak - Anak Usia 11 + Tahun dikenakan Biaya 1 Pax <br />4. Untuk Peserta Ganjil Kami Berikan Extra Bad <br />5. Untuk bulan high season (bulan Juli, Agustus, Desember - 15 Januari) akan dikenakan tambahan biaya, karena kenaikan kamar hotel. Silakan menghubungi kami kembali untuk mendapatkan harga spesial. <br />6. Kami Juga Melayani Costoum Tour.', 3, '2017-09-10 20:05:17', '2017-09-10 20:05:17', 49, 7, 1),
(89, '', 'Tour Lombok 4 Hari 3 Malam Paket C', 'Tour Lombok 4 Hari 3 Malam Paket C', 'JADWAL KEGIATAN<br /><br />HARI 1 :<br />Peserta tour tiba di Bandara International Lombok, peserta akan sambut oleh team kami dan langsung cek in hotel dan acara bebas<br /><br />HARI 2 :<br />Setelah seluruh peserta sarapan di Hotel, akan kami ajak untuk melanjutkan tour di hari kedua :<br />1. Menuju Pelabuhan Tanjung Luar, untuk melanjutkan tour Pantai Pink dengan boat traisional<br />2. Pada tour pantai pink ini peserta akan diajak mengunjungi Pantai Pink 1, Pink 2, dan Pink 3, Gili Petelu ( Spot Snorkeling dengan beraneka ragam biota laut ), Gili Maringkik, dan Gili Pasir.<br />3. Makan siang terjadwal dengan menu lunch box<br />4. Kembali ke Pelabuhan Tanjung Luar<br />5. Kembali Ke Hotel dan Acara Bebas<br /><br />HARI 3 :<br />Setelah seluruh peserta sarapan di Hotel, akan kami ajak untuk melanjutkan tour di hari kedua :<br />1. Menuju Desa Senaru yang terletak di kaki Gunung Rinjani<br />2. Mengunjungi Air Terjun Sendanggile dan Air Terjun Tiu Kelep<br />3. Makan siang di lokal restorant<br />5. Mengunjungi Pusat Oleh - oleh Khas Lombok<br />6. Kembali Ke Hotel dan Acara Bebas<br /><br />HARI 4 :<br />Setelah seluruh peserta sarapan dan cek out Hotel, akan kami ajak untuk melanjutkan tour di hari ketiga :<br />1. Mengunjungi Desa Sukarara : Desa pengrajin songket dan tenun ikat khas Lombok, disini, peserta tour akan diberikan kesempatan untuk belajar menenun, dan mencoba menggunanakan pakaian khas Lombok.<br />2. Mengunjungi Pantai Kuta Lombok : Pantai yang termasuk dalam KEK Mandalika (Kawasan Ekonomi Khusus Mandalika) ini memiliki pasir pantai yang unik sebesar biji merica.<br />3. Makan Siang di lokal restorant<br />4. Mengunjungi Pantai Tanjung Aan : Pantai indah yang memiliki dua jenis pasir yang berbeda di sisi baratnya dan sisi bagian timurnya.<br />5. Mengunjungi Desa Sade Rambitan : Salah satu desa kunjungan wisata yang dimana desa ini dihuni oleh masyarakat suku \"Sasak\" (Suku Asli Lombok) yang masih menjaga kemurnian ajaran para leluhur Suku Sasak.<br />6. Peserta di Antar menuju Airport untuk kembali ke kota asal<br />7. Tour 4 Hari 3 Malam C<br /><br />HARGA TERMASUK:<br />1. Mobil ber AC + BBM+ Driver<br />2. Hotel Sesuai Pilihan, sekamar berdua / bertiga peserta ganjil<br />3. Makan Pagi di Hotel<br />4. Makan Siang<br />5. Penjemputan dan Pengantaran ke Airport<br />6. Boat Tour Pantai Pink<br />7. Lokal Guid di Air Terjun<br />8. Tiket masuk Tempat wisata<br />9. Air Mineral Selama Tour @ 2/ Hari <br /><br />HARGA TIDAK TERMASUK:<br />1. Tiket Pesawat<br />2. Makan Malam<br />3. Snorkeling Kit<br />4. Makanan &amp; Minuman yang Tidak Termasuk Dalam Paket<br />5. Biaya Keperluan Pribadi<br />6. Lokal Guide di Sade<br />7. Tiping Untuk, Driver, Bellboy Hotel, Porter Airport. <br /><br />INFO TAMBAHAN<br />1. Harga Diatas Merupakan Private Tour (Tidak digabung dengan tamu lainnya)<br />2. Paket Tour Hanya Berlaku Untuk Peserta Domestik<br />3. Anak - Anak Usia 11 + Tahun dikenakan Biaya 1 Pax<br />4. Untuk Peserta Ganjil Kami Berikan Extra Bed<br />5. Untuk bulan high season (bulan Juli, Agustus, Desember - 15 Januari) akan dikenakan tambahan biaya, karena kenaikan kamar hotel. Silakan menghubungi kami kembali untuk mendapatkan harga spesial.<br />6. Kami Juga Melayani Custom Tour.', 3, '2017-09-17 12:10:58', '2017-09-17 12:10:58', 49, 7, 1),
(90, '', 'Tour Lombok 2 Hari 1 Malam Paket B', 'Tour Lombok 2 Hari 1 Malam Paket B', 'JADWAL KEGIATAN<br /><br />HARI 1 :&nbsp;<br />Peserta tour tiba di Bandara International Lombok, peserta akan sambut oleh team kami untuk memulai tour hari pertama :&nbsp;<br />1. Mengunjungi Desa Sukarara : Desa pengrajin songket dan tenun ikat khas Lombok, disini, peserta tour akan diberikan kesempatan untuk belajar menenun, dan mencoba menggunanakan pakaian khas Lombok.<br />2. Mengunjungi Pantai Kuta Lombok : Pantai yang termasuk dalam KEK Mandalika (Kawasan Ekonomi Khusus Mandalika) ini memiliki pasir pantai yang unik sebesar biji merica.&nbsp;<br />3. Makan Siang di lokal restorant&nbsp;<br />4. Mengunjungi Pantai Tanjung Aan &nbsp;: Pantai indah yang memiliki dua jenis pasir yang berbeda di sisi baratnya dan sisi bagian timurnya.<br />5. Mengunjungi Desa Sade Rambitan : Salah satu desa kunjungan wisata yang dimana desa ini dihuni oleh masyarakat suku &ldquo;Sasak&rdquo; (Suku Asli Lombok) yang masih menjaga kemurnian ajaran para leluhur Suku Sasak.<br />6. Mengunjungi Pusat Oleh - oleh Khas Lombok&nbsp;<br />7. Cek In Hotel<br />8. Tour Hari Pertama Berakhir.<br /><br />HARI 2 :&nbsp;<br />Setelah seluruh peserta sarapan dan cek out Hotel, akan kami ajak untuk melanjutkan tour di hari kedua :&nbsp;<br />1. Menuju Pelabuhan Tanjung Luar, untuk melanjutkan tour Pantai Pink dengan boat traisional<br />2. Pada tour pantai pink ini peserta akan diajak mengunjungi Pantai Pink 1, Pink 2, dan Pink 3, Gili Petelu ( Spot Snorkeling dengan beraneka ragam biota laut ), Gili Maringkik, dan Gili Pasir.<br />3. Makan siang terjadwal dengan menu lunch box <br />4. Kembali ke Pelabuhan Tanjung Luar&nbsp;<br />5. Peserta akan di atar ke airport untuk kembali ke kota asal.<br />6. Tour 2 hari 1 malam (B) berakhir.<br /><br />HARGA TERMASUK:<br />1. Mobil ber AC + BBM+ Driver&nbsp;<br />2. Hotel Sesuai Pilihan, sekamar berdua / bertiga peserta ganjil<br />3. Makan Pagi di Hotel<br />4. Makan Siang 2x<br />5. Penjemputan dan Pengantaran ke Airport<br />6. Boat Untuk Tour Pantai Pink<br />7. Tiket masuk Tempat wisata<br />8. Air Mineral Selama Tour @ 2/ Hari<br /><br />HARGA TIDAK TERMASUK:<br />1. Tiket Pesawat&nbsp;<br />2. Makan Malam<br />3. Snorkeling Kit&nbsp;<br />4. Tiping Untuk Lokal Guide di Objek Wisata&nbsp;<br />5. Makanan &amp; Minuman yang Tidak Termasuk Dalam Paket<br />6. Biaya Keperluan Pribadi<br />7. Tiping Untuk, Driver, Bellboy Hotel, Porter Airport. <br /><br />INFO TAMBAHAN<br />1. Harga Diatas Merupakan Private Tour (Tidak digabung dengan tamu lainnya)<br />2. Paket Tour Hanya Berlaku Untuk Peserta Domestik<br />3. Anak - Anak Usia 11 + Tahun dikenakan Biaya 1 Pax<br />4. Untuk Peserta Ganjil Kami Berikan Extra Bed<br />5. Untuk bulan high season (bulan Juli, Agustus, Desember - 15 Januari) akan dikenakan tambahan biaya, karena kenaikan kamar hotel. Silakan menghubungi kami kembali untuk mendapatkan harga spesial.<br />6. Kami Juga Melayani Custom Tour.', 3, '2017-09-17 12:42:20', '2017-09-17 12:42:20', 49, 7, 1);
INSERT INTO `content` (`content_id`, `content_subname`, `content_name`, `content_excerpt`, `content_desc`, `content_status`, `content_created`, `content_publish`, `chanel_id`, `type_id`, `comment`) VALUES
(91, '', 'Tour Lombok 2 Hari 1 Malam Paket C', 'Tour Lombok 2 Hari 1 Malam Paket C', 'JADWAL KEGIATANJADWAL KEGIATAN<br /><br />HARI 1 :&nbsp;<br />Peserta tour tiba di Bandara International Lombok, peserta akan sambut oleh team kami untuk memulai tour hari pertama :&nbsp;<br />1. Mengunjungi Desa Sukarara : Desa pengrajin songket dan tenun ikat khas Lombok, disini, peserta tour akan diberikan kesempatan untuk belajar menenun, dan mencoba menggunanakan pakaian khas Lombok.<br />2. Mengunjungi Pantai Kuta Lombok : Pantai yang termasuk dalam KEK Mandalika (Kawasan Ekonomi Khusus Mandalika) ini memiliki pasir pantai yang unik sebesar biji merica.&nbsp;<br />3. Makan Siang di lokal restorant&nbsp;<br />4. Mengunjungi Pantai Tanjung Aan &nbsp;: Pantai indah yang memiliki dua jenis pasir yang berbeda di sisi baratnya dan sisi bagian timurnya.<br />5. Mengunjungi Desa Sade Rambitan : Salah satu desa kunjungan wisata yang dimana desa ini dihuni oleh masyarakat suku &ldquo;Sasak&rdquo; (Suku Asli Lombok) yang masih menjaga kemurnian ajaran para leluhur Suku Sasak.<br />6. Mengunjungi Pusat Oleh - oleh Khas Lombok&nbsp;<br />7. Cek In Hotel<br />8. Tour Hari Pertama Berakhir.<br /><br />HARI 2 :&nbsp;<br />Setelah seluruh peserta sarapan dan cek out Hotel, akan kami ajak untuk melanjutkan tour di hari kedua :&nbsp;<br />1. Menuju Pelabuhan Tanjung Luar, untuk melanjutkan tour Pantai Pink dengan boat traisional<br />2. Pada tour pantai pink ini peserta akan diajak mengunjungi Pantai Pink 1, Pink 2, dan Pink 3, Gili Petelu ( Spot Snorkeling dengan beraneka ragam biota laut ), Gili Maringkik, dan Gili Pasir.<br />3. Makan siang terjadwal dengan menu lunch box <br />4. Kembali ke Pelabuhan Tanjung Luar&nbsp;<br />5. Peserta akan di atar ke airport untuk kembali ke kota asal.<br />6. Tour 2 hari 1 malam (B) berakhir.<br /><br />HARGA TERMASUK:<br />1. Mobil ber AC + BBM+ Driver&nbsp;<br />2. Hotel Sesuai Pilihan, sekamar berdua / bertiga peserta ganjil<br />3. Makan Pagi di Hotel<br />4. Makan Siang 2x<br />5. Penjemputan dan Pengantaran ke Airport<br />6. Boat Untuk Tour Pantai Pink<br />7. Tiket masuk Tempat wisata8. Air Mineral Selama Tour @ 2/ Hari <br /><br />HARGA TIDAK TERMASUK:<br />1. Tiket Pesawat&nbsp;<br />2. Makan Malam<br />3. Snorkeling Kit&nbsp;<br />4. Tiping Untuk Lokal Guide di Objek Wisata&nbsp;<br />5. Makanan &amp; Minuman yang Tidak Termasuk Dalam Paket<br />6. Biaya Keperluan Pribadi<br />7. Tiping Untuk, Driver, Bellboy Hotel, Porter Airport.<br /><br />INFO TAMBAHAN<br />1. Harga Diatas Merupakan Private Tour (Tidak digabung dengan tamu lainnya)<br />2. Paket Tour Hanya Berlaku Untuk Peserta Domestik<br />3. Anak - Anak Usia 11 + Tahun dikenakan Biaya 1 Pax<br />4. Untuk Peserta Ganjil Kami Berikan Extra Bed<br />5. Untuk bulan high season (bulan Juli, Agustus, Desember - 15 Januari) akan dikenakan tambahan biaya, karena kenaikan kamar hotel. Silakan menghubungi kami kembali untuk mendapatkan harga spesial.<br />6. Kami Juga Melayani Costoum Tour.', 3, '2017-09-17 13:05:18', '2017-09-17 13:05:18', 49, 7, 1),
(92, '', 'Tour Lombok 3 Hari 2 Malam Paket A', 'Tour Lombok 3 Hari 2 Malam Paket A', 'JADWAL KEGIATAN<br /><br />HARI 1 :<br />Peserta tour tiba di Bandara International Lombok, peserta akan sambut oleh team kami dan langsung cek in hotel dan acara bebas<br /><br />HARI 2 &nbsp;:<br />Setelah seluruh peserta sarapan di Hotel, akan kami ajak untuk melanjutkan tour di hari kedua :<br />1. Menuju Pelabuhan Bangsal dengan melalui \"Monkey Forest\", &nbsp;dari pelabuhan bangsal peserta tour melanjutkan perjalanan dengan public boat menuju \"Gili Trawangan\"<br />2. Saat tiba di Gili Trawangan anda dapat melakukan berbagai macam kegiatan wisata bahari seperti snorkeling, diving, mengelilingi pulau dengan sepedah atau cidomo (dokar), melihat pemandangan bawah laut dengan menggunakan glass bottom boat dll. (biaya tidak termasuk dalam paket wisata)<br />3. Makan siang di lokal restorant<br />4. Kembali ke pelabuhan bangsal, dilanjutkan dengan menikmati pemandangan di \"Bukit Malaka/ Bukit Malimbu\"<br />5. Mengunjungi Pusat Oleh - oleh Khas Lombok<br />6. Kembali Ke Hotel dan Acara Bebas<br /><br />HARI 3 :<br />Setelah seluruh peserta sarapan dan cek out Hotel, akan kami ajak untuk melanjutkan tour di hari ketiga :<br />1. Mengunjungi Desa Sukarara : Desa pengrajin songket dan tenun ikat khas Lombok, disini, peserta tour akan diberikan kesempatan untuk belajar menenun, dan mencoba menggunanakan pakaian khas Lombok.<br />2. Mengunjungi Pantai Kuta Lombok : Pantai yang termasuk dalam KEK Mandalika (Kawasan Ekonomi Khusus Mandalika) ini memiliki pasir pantai yang unik sebesar biji merica.<br />3. Makan Siang di lokal restorant<br />4. Mengunjungi Pantai Tanjung Aan &nbsp;: Pantai indah yang memiliki dua jenis pasir yang berbeda di sisi baratnya dan sisi bagian timurnya.<br />5. Mengunjungi Desa Sade Rambitan : Salah satu desa kunjungan wisata yang dimana desa ini dihuni oleh masyarakat suku \"Sasak\" (Suku Asli Lombok) yang masih menjaga kemurnian ajaran para leluhur Suku Sasak.<br />6. Peserta di Antar menuju Airport untuk kembali ke kota asal<br />7. Tour 3 Hari 2 A Malam berakhir<br /><br />HARGA TERMASUK:<br />1. Mobil ber AC + BBM+ Driver<br />2. Hotel Sesuai Pilihan, sekamar berdua / bertiga peserta ganjil<br />3. Makan Pagi di Hotel<br />4. Makan Siang 2x<br />5. Penjemputan dan Pengantaran ke Airport<br />6. Public Boat ke Gili Trawangan<br />7. Tiket masuk Tempat wisata<br />8. Air Mineral Selama Tour @ 2/ Hari <br /><br />HARGA TIDAK TERMASUK:<br />1. Tiket Pesawat<br />2. Makan Malam<br />3. Snorkeling Kit, Glass Buttom Boat, Sepedah dan Cidomo di Gili Trawangan<br />4. Tiping Untuk Lokal Guide di Objek Wisata<br />5. Makanan &amp; Minuman yang Tidak Termasuk Dalam Paket<br />6. Biaya Keperluan Pribadi<br />7. Tiping Untuk, Driver, Bellboy Hotel, Porter Airport. <br /><br />INFO TAMBAHAN<br />1. Harga Diatas Merupakan Private Tour (Tidak digabung dengan tamu lainnya)<br />2. Paket Tour Hanya Berlaku Untuk Peserta Domestik<br />3. Anak - Anak Usia 11 + Tahun dikenakan Biaya 1 Pax<br />4. Untuk Peserta Ganjil Kami Berikan Extra Bed<br />5. Untuk bulan high season (bulan Juli, Agustus, Desember - 15 Januari) akan dikenakan tambahan biaya, karena kenaikan kamar hotel. Silakan menghubungi kami kembali untuk mendapatkan harga spesial.<br />6. Kami Juga Melayani Custom Tour.', 3, '2017-09-17 13:25:50', '2017-09-17 13:25:50', 49, 7, 1),
(93, '', 'Tour Lombok 3 Hari 2 Malam Paket B', 'Tour Lombok 3 Hari 2 Malam Paket B', 'JADWAL KEGIATAN<br /><br />HARI 1 :<br />Peserta tour tiba di Bandara International Lombok, peserta akan sambut oleh team kami dan langsung cek in hotel dan acara bebas<br /><br />HARI 2 &nbsp;:<br />Setelah seluruh peserta sarapan di Hotel, akan kami ajak untuk melanjutkan tour di hari kedua :<br />1. Menuju Pelabuhan Tanjung Luar, untuk melanjutkan tour Pantai Pink dengan boat traisional<br />2. Pada tour pantai pink ini peserta akan diajak mengunjungi Pantai Pink 1, Pink 2, dan Pink 3, Gili Petelu ( Spot Snorkeling dengan beraneka ragam biota laut ), Gili Maringkik, dan Gili Pasir.<br />3. Makan siang terjadwal dengan menu lunch box<br />4. Kembali ke Pelabuhan Tanjung Luar<br />5. Mengunjungi Pusat Oleh - oleh Khas Lombok<br />6. Kembali Ke Hotel dan Acara Bebas<br /><br />HARI 3 :<br />Setelah seluruh peserta sarapan dan cek out Hotel, akan kami ajak untuk melanjutkan tour di hari ketiga :<br />1. Mengunjungi Desa Sukarara : Desa pengrajin songket dan tenun ikat khas Lombok, disini, peserta tour akan diberikan kesempatan untuk belajar menenun, dan mencoba menggunanakan pakaian khas Lombok.<br />2. Mengunjungi Pantai Kuta Lombok : Pantai yang termasuk dalam KEK Mandalika (Kawasan Ekonomi Khusus Mandalika) ini memiliki pasir pantai yang unik sebesar biji merica.<br />3. Makan Siang di lokal restorant<br />4. Mengunjungi Pantai Tanjung Aan &nbsp;: Pantai indah yang memiliki dua jenis pasir yang berbeda di sisi baratnya dan sisi bagian timurnya.<br />5. Mengunjungi Desa Sade Rambitan : Salah satu desa kunjungan wisata yang dimana desa ini dihuni oleh masyarakat suku \"Sasak\" (Suku Asli Lombok) yang masih menjaga kemurnian ajaran para leluhur Suku Sasak.<br />6. Peserta di Antar menuju Airport untuk kembali ke kota asal<br />7. Tour 3 Hari 2 B Malam berakhir.<br /><br />HARGA TERMASUK:<br />1. Mobil ber AC + BBM + Driver<br />2. Hotel Sesuai Pilihan, sekamar berdua / bertiga peserta ganjil<br />3. Makan Pagi di Hotel<br />4. Makan Siang 2x<br />5. Penjemputan dan Pengantaran ke Airport<br />6. Boat Tour Pantai Pink<br />7. Tiket masuk Tempat wisata8. Air Mineral Selama Tour @ 2/ Hari <br /><br />HARGA TIDAK TERMASUK:<br />1. Tiket Pesawat<br />2. Makan Malam<br />3. Snorkeling Kit<br />4. Makanan &amp; Minuman yang Tidak Termasuk Dalam Paket<br />5. Biaya Keperluan Pribadi<br />6. Lokal Guide di destinasi wisata<br />7. Tiping Untuk, Driver, Bellboy Hotel, Porter Airport. <br /><br />INFO TAMBAHAN<br />1. Harga Diatas Merupakan Private Tour (Tidak digabung dengan tamu lainnya)<br />2. Paket Tour Hanya Berlaku Untuk Peserta Domestik<br />3. Anak - Anak Usia 11 + Tahun dikenakan Biaya 1 Pax<br />4. Untuk Peserta Ganjil Kami Berikan Extra Bad<br />5. Untuk bulan high season (bulan Juli, Agustus, Desember - 15 Januari) akan dikenakan tambahan biaya, karena kenaikan kamar hotel. Silakan menghubungi kami kembali untuk mendapatkan harga spesial.<br />6. Kami Juga Melayani Costoum Tour.', 3, '2017-09-17 13:45:12', '2017-09-17 13:45:12', 49, 7, 1),
(94, '', 'Tour Lombok 3 Hari 2 Malam Paket C', 'Tour Lombok 3 Hari 2 Malam Paket C', 'JADWAL KEGIATAN<br /><br />HARI 1 :<br />Peserta tour tiba di Bandara International Lombok, peserta akan sambut oleh team kami dan langsung cek in hotel dan acara bebas<br /><br />HARI 2 :<br />Setelah seluruh peserta sarapan di Hotel, akan kami ajak untuk melanjutkan tour di hari kedua :<br />1. Menuju Pelabuhan Bangsal dengan melalui \"Monkey Forest\", &nbsp;dari pelabuhan bangsal peserta tour melanjutkan perjalanan dengan public boat menuju \"Gili Trawangan\"<br />2. Saat tiba di Gili Trawangan anda dapat melakukan berbagai macam kegiatan wisata bahari seperti snorkeling, diving, mengelilingi pulau dengan sepedah atau cidomo (dokar), melihat pemandangan bawah laut dengan menggunakan glass bottom boat dll. (biaya tidak termasuk dalam paket wisata)<br />3. Makan siang di lokal restorant<br />4. Kembali ke pelabuhan bangsal, dilanjutkan dengan menikmati pemandangan di \"Bukit Malaka/ Bukit Malimbu\"<br />5. Kembali Ke Hotel dan Acara Bebas<br /><br />HARI 3 :<br />Setelah seluruh peserta sarapan dan cek out Hotel, akan kami ajak untuk melanjutkan tour di hari ketiga :<br />1. Mengunjungi Pura Lingsar : Pura yang di bangun pada tahun 1741 oleh Raja Anak Agung Ketut Karang Asam, di dalam komplek Pura terdapat Mesjid Watu Telu dan menjadi simbol nilai nilai keberagaman.<br />2. Mengunjungi Taman Narmada : Taman yang di bangun pada tahun 1727 oleh Raja Anak Agung Ngurah Karang Asam, sebagai replika dari gunung rinjani.<br />3. Makan Siang di lokal restorant<br />4. Mengunjungi Pusat Oleh2 Khas Lombok5. Peserta di Antar menuju Airport untuk kembali ke kota asal6. Tour 3 Hari 2 C Malam berakhir<br /><br />HARGA TERMASUK:<br />1. Mobil ber AC + BBM+ Driver<br />2. Hotel Sesuai Pilihan, sekamar berdua / bertiga peserta ganjil<br />3. Makan Pagi di Hotel<br />4. Makan Siang 2x<br />5. Penjemputan dan Pengantaran ke Airport<br />6. Boat Tour Pantai Pink<br />7. Tiket masuk Tempat wisata<br />8. Air Mineral Selama Tour @ 2/ Hari <br /><br />HARGA TIDAK TERMASUK:<br />1. Tiket Pesawat<br />2. Makan Malam<br />3. Snorkeling Kit, Glass Buttom Boat, Sepedah dan Cidomo di Gili Trawangan<br />4. Makanan &amp; Minuman yang Tidak Termasuk Dalam Paket<br />5. Biaya Keperluan Pribadi6. Lokal Guide di destinasi wisata<br />7. Tiping Untuk, Driver, Bellboy Hotel, Porter Airport. <br /><br />INFO TAMBAHAN<br />1. Harga Diatas Merupakan Private Tour (Tidak digabung dengan tamu lainnya)<br />2. Paket Tour Hanya Berlaku Untuk Peserta Domestik<br />3. Anak - Anak Usia 11 + Tahun dikenakan Biaya 1 Pax<br />4. Untuk Peserta Ganjil Kami Berikan Extra Bad<br />5. Untuk bulan high season (bulan Juli, Agustus, Desember - 15 Januari) akan dikenakan tambahan biaya, karena kenaikan kamar hotel. Silakan menghubungi kami kembali untuk mendapatkan harga spesial.<br />6. Kami Juga Melayani Costoum Tour.', 3, '2017-09-17 14:08:38', '2017-09-17 14:08:38', 49, 7, 1),
(95, '', 'Tour Lombok 4 Hari 3 Malam Paket A', 'Tour Lombok 4 Hari 3 Malam Paket A', 'JADWAL KEGIATAN<br /><br />HARI 1 :<br />Peserta tour tiba di Bandara International Lombok, peserta akan sambut oleh team kami dan langsung cek in hotel dan acara bebas<br /><br />HARI 2 :<br />Setelah seluruh peserta sarapan dan cek out Hotel, akan kami ajak untuk melanjutkan tour:<br />1. Mengunjungi Desa Sukarara : Desa pengrajin songket dan tenun ikat khas Lombok, disini, peserta tour akan diberikan kesempatan untuk belajar menenun, dan mencoba menggunanakan pakaian khas Lombok.<br />2. Mengunjungi Pantai Kuta Lombok : Pantai yang termasuk dalam KEK Mandalika (Kawasan Ekonomi Khusus Mandalika) ini memiliki pasir pantai yang unik sebesar biji merica.<br />3. Makan Siang di lokal restorant<br />4. Mengunjungi Pantai Tanjung Aan &nbsp;: Pantai indah yang memiliki dua jenis pasir yang berbeda di sisi baratnya dan sisi bagian timurnya.<br />5. Mengunjungi Desa Sade Rambitan : Salah satu desa kunjungan wisata yang dimana desa ini dihuni oleh masyarakat suku \"Sasak\" (Suku Asli Lombok) yang masih menjaga kemurnian ajaran para leluhur Suku Sasak.<br />6. Kembali Ke Hotel dan Acara Bebas<br /><br />HARI 3 &nbsp;:<br />Setelah seluruh peserta sarapan di Hotel, akan kami ajak untuk melanjutkan tour di hari kedua :<br />1. Menuju Pelabuhan Bangsal dengan melalui \"Monkey Forest\", &nbsp;dari pelabuhan bangsal peserta tour melanjutkan perjalanan dengan public boat menuju \"Gili Trawangan\"<br />2. Saat tiba di Gili Trawangan anda dapat melakukan berbagai macam kegiatan wisata bahari seperti snorkeling, diving, mengelilingi pulau dengan sepedah atau cidomo (dokar), melihat pemandangan bawah laut dengan menggunakan glass bottom boat dll. (biaya tidak termasuk dalam paket wisata)<br />3. Makan siang di lokal restorant<br />4. Kembali ke pelabuhan bangsal, dilanjutkan dengan menikmati pemandangan di \"Bukit Malaka/ Bukit Malimbu\"<br />5. Mengunjungi Pusat Oleh - oleh Khas Lombok6. Kembali Ke Hotel dan Acara Bebas<br /><br />HARI 4 :<br />Makan Pagi di Hotel dan acara bebas sampai waktunya diantar menuju airport untuk kembali ke kota asal.<br /><br />HARGA TERMASUK:<br />1. Mobil ber AC + BBM+ Driver<br />2. Hotel Sesuai Pilihan, sekamar berdua / bertiga peserta ganjil3. Makan Pagi di Hotel<br />4. Makan Siang<br />5. Penjemputan dan Pengantaran ke Airport<br />6. Public Boat ke Gili Trawangan<br />7. Tiket masuk Tempat wisata8. Air Mineral Selama Tour @ 2/ Hari <br /><br />HARGA TIDAK TERMASUK:<br />1. Tiket Pesawat<br />2. Makan Malam<br />3. Snorkeling Kit, Glass Buttom Boat, Sepedah dan Cidomo di Gili Trawangan<br />4. Tiping Untuk Lokal Guide di Objek Wisata<br />5. Makanan &amp; Minuman yang Tidak Termasuk Dalam Paket<br />6. Biaya Keperluan Pribadi<br />7. Tiping Untuk, Driver, Bellboy Hotel, Porter Airport. <br /><br />INFO TAMBAHAN<br />1. Harga Diatas Merupakan Private Tour (Tidak digabung dengan tamu lainnya)<br />2. Paket Tour Hanya Berlaku Untuk Peserta Domestik<br />3. Anak - Anak Usia 11 + Tahun dikenakan Biaya 1 Pax<br />4. Untuk Peserta Ganjil Kami Berikan Extra Bed<br />5. Untuk bulan high season (bulan Juli, Agustus, Desember - 15 Januari) akan dikenakan tambahan biaya, karena kenaikan kamar hotel. Silakan menghubungi kami kembali untuk mendapatkan harga spesial.<br />6. Kami Juga Melayani Custom Tour.', 3, '2017-09-17 14:18:44', '2017-09-17 14:18:44', 49, 7, 1),
(96, '', 'Tour Lombok 4 Hari 3 Malam Paket B', 'Tour Lombok 4 Hari 3 Malam Paket B', 'JADWAL KEGIATAN<br /><br />HARI 1 :<br />Peserta tour tiba di Bandara International Lombok, peserta akan sambut oleh team kami dan langsung cek in hotel dan acara bebas<br /><br />HARI 2 &nbsp;:<br />Setelah seluruh peserta sarapan di Hotel, akan kami ajak untuk melanjutkan tour di hari kedua :<br />1. Menuju Pelabuhan Tanjung Luar, untuk melanjutkan tour Pantai Pink dengan boat traisional<br />2. Pada tour pantai pink ini peserta akan diajak mengunjungi Pantai Pink 1, Pink 2, dan Pink 3, Gili Petelu ( Spot Snorkeling dengan beraneka ragam biota laut ), Gili Maringkik, dan Gili Pasir.<br />3. Makan siang terjadwal dengan menu lunch box<br />4. Kembali ke Pelabuhan Tanjung Luar<br />5. Kembali Ke Hotel dan Acara Bebas<br /><br />HARI 3 &nbsp;:<br />Setelah seluruh peserta sarapan di Hotel, akan kami ajak untuk melanjutkan tour di hari kedua :<br />1. Menuju Pelabuhan Bangsal dengan melalui \"Monkey Forest\", &nbsp;dari pelabuhan bangsal peserta tour melanjutkan perjalanan dengan public boat menuju \"Gili Trawangan\"<br />2. Saat tiba di Gili Trawangan anda dapat melakukan berbagai macam kegiatan wisata bahari seperti snorkeling, diving, mengelilingi pulau dengan sepedah atau cidomo (dokar), melihat pemandangan bawah laut dengan menggunakan glass bottom boat dll. (biaya tidak termasuk dalam paket wisata)<br />3. Makan siang di lokal restorant<br />4. Kembali ke pelabuhan bangsal, dilanjutkan dengan menikmati pemandangan di \"Bukit Malaka/ Bukit Malimbu\"<br />5. Mengunjungi Pusat Oleh - oleh Khas Lombok<br />6. Kembali Ke Hotel dan Acara Bebas<br /><br />HARI 4 :<br />Setelah seluruh peserta sarapan dan cek out Hotel, akan kami ajak untuk melanjutkan tour di hari ketiga :<br />1. Mengunjungi Desa Sukarara : Desa pengrajin songket dan tenun ikat khas Lombok, disini, peserta tour akan diberikan kesempatan untuk belajar menenun, dan mencoba menggunanakan pakaian khas Lombok.<br />2. Mengunjungi Pantai Kuta Lombok : Pantai yang termasuk dalam KEK Mandalika (Kawasan Ekonomi Khusus Mandalika) ini memiliki pasir pantai yang unik sebesar biji merica.<br />3. Makan Siang di lokal restorant<br />4. Mengunjungi Pantai Tanjung Aan &nbsp;: Pantai indah yang memiliki dua jenis pasir yang berbeda di sisi baratnya dan sisi bagian timurnya.<br />5. Mengunjungi Desa Sade Rambitan : Salah satu desa kunjungan wisata yang dimana desa ini dihuni oleh masyarakat suku \"Sasak\" (Suku Asli Lombok) yang masih menjaga kemurnian ajaran para leluhur Suku Sasak.<br />6. Peserta di Antar menuju Airport untuk kembali ke kota asal<br />7. Tour 4 Hari 3 Malam B<br /><br />HARGA TERMASUK:<br />1. Mobil ber AC + BBM+ Driver<br />2. Hotel Sesuai Pilihan, sekamar berdua / bertiga peserta ganjil<br />3. Makan Pagi di Hotel<br />4. Makan Siang<br />5. Penjemputan dan Pengantaran ke Airport<br />6. Boat Tour Pantai Pink<br />7. Public Boat Gili Trawangan PP<br />8. Tiket masuk Tempat wisata<br />9. Air Mineral Selama Tour @ 2/ Hari <br /><br />HARGA TIDAK TERMASUK:<br />1. Tiket Pesawat<br />2. Makan Malam<br />3. Snorkeling Kit<br />4. Sewa Cidomo, Sewa Sepedah, Glass Buttom Boat<br />5. Makanan &amp; Minuman yang Tidak Termasuk Dalam Paket<br />6. Biaya Keperluan Pribadi<br />7. Lokal Guide di Sade<br />8. Tiping Untuk, Driver, Bellboy Hotel, Porter Airport. <br /><br />INFO TAMBAHAN<br />1. Harga Diatas Merupakan Private Tour (Tidak digabung dengan tamu lainnya)<br />2. Paket Tour Hanya Berlaku Untuk Peserta Domestik<br />3. Anak - Anak Usia 11 + Tahun dikenakan Biaya 1 Pax<br />4. Untuk Peserta Ganjil Kami Berikan Extra Bed<br />5. Untuk bulan high season (bulan Juli, Agustus, Desember - 15 Januari) akan dikenakan tambahan biaya, karena kenaikan kamar hotel. Silakan menghubungi kami kembali untuk mendapatkan harga spesial.<br />6. Kami Juga Melayani Custom Tour.', 3, '2017-09-17 14:33:09', '2017-09-17 14:33:09', 49, 7, 1),
(97, '', 'Speed Boat', 'Sewa speed boat di Lombok', 'Sewa speed boat di Lombok', 3, '2017-09-17 21:29:00', '2017-09-17 21:29:00', 47, 2, 1),
(98, 'coba2', 'wkwkwk', 'amdbas d', 'asdasd asdasd\r\n<table align=\"center\" class=\"pic_artikel_sisip_table\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"pic_artikel_sisip\" align=\"center\"><img src=\"http://media.terpusat/view/image/43/tokopedia-toko-mainanku.img\" /></div>\r\n<div class=\"pic text-center\" align=\"center\"></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 3, '2017-11-06 22:32:03', '2017-11-06 22:32:03', 9, 2, 1),
(99, 'akjdhasd', 'kahdasd asudhasd', 'ajkdhasd asdjashd asdasd', 'akdjas dadhqw dajshdbqw dugasukdhasbd', 3, '2017-11-12 13:12:05', '2017-11-12 13:12:05', 51, 1, 1),
(100, 'wwkjada dsadmasda', 'kjad asdajdhasd', 'jhadas djasdgas dahsdgas djqgw asdasjdhas gdhjasg djashdg asd', 'ajhd asdjashd asjdk ajdhasg djasd askdjas dkasndwqugeh asmdbaskdajs dasdas', 3, '2018-01-07 20:27:57', '2018-01-07 20:27:57', 63, 1, 1),
(101, 'About', 'About', 'hadas dasjdhasd ajdad askdahsda adasd adhasjdk', 'jashdas dajsdgasjdhbas dsahjdgasj dgkjqwh dksahdas kdaskdhasd', 3, '2018-01-07 20:58:28', '2018-01-07 20:58:28', 58, 6, 0),
(102, 'Headline aja', 'Pokoknya harus Headline', 'akjdas askdashd asdjasd asd as', 'jada akjdhasd askdqhw askjd asdkas dsa daskdjashd asdsad', 3, '2018-01-07 21:49:59', '2018-01-07 21:49:59', 63, 1, 1),
(103, 'Akjasd asdjksa', 'kjahsdas askjdhqiwue asdmasd wqehwqe', 'kjad asdjasdh asdkhqw kasd asdjg dasjdas daskdjhkqw easdasd', 'ajd asdjasd asquwh asdjasd askuwhe qwewqeqw', 3, '2018-01-07 21:58:27', '2018-01-07 21:58:27', 60, 1, 1),
(104, 'Demo', 'Test Ajah', 'akjda daskdahsd askdajsd asdkasjda', 'akdas dakdansdaqwv adqweqw', 3, '2018-01-19 22:39:33', '2018-01-19 22:39:33', 54, 1, 1),
(105, 'Kilowan', 'Kalsda Kiqwueqw Hakdw', 'kjhas daskjdhas dasjdqwihas dksajxzc uhei qoeq a,sdoq', 'jahsd asdjashdas asjdhagsd asdqwe asdjhamqiwueq amsdbasdas', 3, '2018-01-19 22:42:06', '2018-01-19 22:42:06', 62, 1, 1),
(106, 'Baju', 'Banana Event', 'jkahd asdkahda', 'kjahdas daskjdhasd qwijas daksdashdas dasd', 3, '2018-01-22 12:36:54', '2018-01-22 12:36:54', 57, 9, 1),
(107, 'lkad', 'iaijsd askjdhada', 'akjdas dsaiudhas diuqw dsa mndas diasudiqweqw', 'kada sdiasuhd qwiuhe asjdkbasiduqwh edioasdasd', 3, '2018-01-27 10:22:43', '2018-01-27 10:22:43', 53, 1, 1),
(108, 'aoidea askdj', 'iasjd qwieuqh admasndasd', 'alkjd aiuwqhnas dasjhdasd jkhasduyqwe asdbas', 'jahsd ashdjbqwiue asdkahsdawqeqwesaasdsa', 3, '2018-01-27 10:24:26', '2018-01-27 10:24:26', 53, 1, 1),
(109, 'lkada sdsakjas', 'kajoiwqe qwjekqwnbek', 'kjad sadiashd qwisand masdsa iduqwhe qweuqbw eiqwuhe', 'jashd 9uwqhe qwkjasndiausehiqweqwewqewq', 3, '2018-01-27 10:25:09', '2018-01-27 10:25:09', 61, 1, 1),
(110, 'iioqwe qwjhqwe', ' oawoiasd asjasdi qweqweqw', 'asdas', '<span>Jakarta, CNN Indonesia -- Sebanyak 463.891 mobil Honda produksi 2014-2017 menjalani kampanye&nbsp;</span><em>product update</em><span>&nbsp;(PUD). Penyebabnya terdapat pada master silinder dan master&nbsp;</span><em>power</em><span>&nbsp;pada sistem pengereman.</span><br /><br /><span>Marketing and After Sales Service Director PT HPM Jonfis Fandy menyarankan para pemilik mobil menghubungi dealer resmi Honda atau&nbsp;</span><em>Honda Customer Care</em><span>&nbsp;di 0-800-11-22-789 untuk diperbaiki bagian yang rusak.</span><br /><br /><span>\"Ya supaya menjamin konsumen mendapatkan kualitas dan keamanan maksimal. Itu memang haknya mereka ketika mereka memiliki mobilnya,\" kata Jonfis kepada CNNIndonesia pada Jumat (26/1).</span><br /><br />\r\n<div><img src=\"https://newrevive.detik.com/delivery/lg.php?bannerid=0&amp;campaignid=0&amp;zoneid=1551&amp;loc=https%3A%2F%2Fwww.cnnindonesia.com%2Fteknologi%2F20180126181214-384-271871%2Fmaster-rem-honda-bermasalah-dipasok-vendor-lokal&amp;referer=https%3A%2F%2Fwww.cnnindonesia.com%2Fteknologi%2F20180121130944-384-270499%2Fkenali-tanda-tanda-busi-mendadak-mati&amp;cb=b62f485bef\" /></div>\r\n<br />\r\n<table class=\"linksisip\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"lihatjg\">\r\n<h5>Lihat juga:</h5>\r\n<span>&nbsp;</span><a data-label=\"List Berita\" data-action=\"Berita Pilihan\" data-category=\"Detil Artikel\" href=\"https://www.cnnindonesia.com/teknologi/20180126162743-384-271830/gara-gara-master-rem-honda-recall-463891-unit/\">Gara-gara Master Rem, Honda \'Recall\' 463.891 Unit</a></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br /><span>Menurut Jonfis, kampanye PUD sudah menjadi kewajiban dari pihak HPM guna menjaga kenyamanan pemilik kendaraan, terlebih komponen yang rusak sangat vital. Sampai saat ini, belum ada laporan kecelakaan akibat kerusakan komponen vital di mobil itu.</span><br /><br /><span>Jonfis menuturkan bagian master silinder dan master&nbsp;</span><em>power</em><span>&nbsp;yang bermasalah diproduksi di Indonesia alias menggunakan vendor lokal.&nbsp; Namun dia tak menyebutkan nama vendor lokal yang dimaksud.</span><br /><br />\r\n<table class=\"linksisip\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"lihatjg\">\r\n<h5>Lihat juga:</h5>\r\n<span>&nbsp;</span><a data-label=\"List Berita\" data-action=\"Berita Pilihan\" data-category=\"Detil Artikel\" href=\"https://www.cnnindonesia.com/teknologi/20180125121119-384-271477/konsumen-bicara-soal-master-rem-honda/\">Konsumen Bicara Soal Master Rem Honda</a></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br /><span>Diketahui, proses pemeriksaan atau penggantian komponen master silinder dan master&nbsp;</span><em>power</em><span>pada sistem pengereman tidak dikenakan biaya. Proses pemeriksaan hingga penggantian komponen ini berlangsung kurang lebih selama 1-2 jam.</span><br /><br /><span>Terkait jumlah nominal yang disiapkan HPM atas&nbsp;</span><em>recall</em><span>&nbsp;ini, pihak HPM tak berkenan untuk memberikan informasi. Perseroan sendiri lebih memfokuskan untuk memperbaiki kerusakan barang yang diambil dari pemasok lokal.</span><br /><br /><span>\"Maaf enggak bisa diberitahu (nama vendornya),\" pungkas Jonfis.</span><br />\r\n<table class=\"linksisip\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"lihatjg\">\r\n<h5>Lihat juga:</h5>\r\n<span>&nbsp;</span><a data-label=\"List Berita\" data-action=\"Berita Pilihan\" data-category=\"Detil Artikel\" href=\"https://www.cnnindonesia.com/teknologi/20180124102513-384-271165/dealer-akui-master-rem-mobil-honda-bocor/\">Dealer Akui Master Rem Mobil Honda Bocor</a></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<span>Honda Indonesia melakukan perbaikan master rem untuk Honda Mobilio tahun produksi 2014 - 2017, Honda Brio tahun produksi 2014 - 2017, Honda Jazz tahun produksi 2014 - 2017, Honda HR-V tahun produksi 2014 - 2017 dan Honda BR-V tahun produksi 2015 - 2017.&nbsp;</span><strong>(asa)</strong>', 3, '2018-01-27 10:26:52', '2018-01-27 10:26:52', 61, 1, 1),
(111, 'kjad asdkjasdsa', 'kjwqie qweqwe zmczxcasda', 'kjasd asiduhqw ewqkj', 'uia ieuqwh eahsd saidhubdiuqw zmncbzc zxawdeaw', 3, '2018-01-27 10:27:26', '2018-01-27 10:27:26', 62, 1, 1),
(112, 'ioaj asdaisd qwiehqw', 'kjahsd asuydyagsh duqwgbe asjkd bsaiduahsd', 'kjad sadhsabdkjasd asjhdbas iduqwh esadb', 'h asiduahsd asjhdb askd asehwqiueh iusad isahdsadsad', 3, '2018-01-27 10:28:44', '2018-01-27 10:28:44', 61, 1, 1),
(113, 'kjae wqiehqwe bzcmnbzx', 'iuawhe sadmnbsad', 'jkasnd aiuyewqhe qwieuhnsiau', 'i uhaisduhasd jhasbd iuqwegsjbncxziu gwiueqweadas', 3, '2018-01-27 10:29:34', '2018-01-27 10:29:20', 54, 1, 1),
(114, 'ajnda sdjhasd iqw', 'nsai dasiudhqwon dasdhsa', 'akjsd qiuehqw sdkj', '&nbsp;ashdbashid uqwiug asudhasbytdvbscb zxucybaiudhasdasd', 3, '2018-01-27 10:30:01', '2018-01-27 10:30:01', 59, 1, 1),
(115, 'kad ada', 'iaj ewqkq sjdasdasd', 'kjanda sdashdq oiqwe qwjansdas dasdj', 'ioajsd q wejq asdasjdkasd oqiwehqweqwe', 3, '2018-01-27 10:58:48', '2018-01-27 10:58:48', 59, 1, 1),
(116, 'ad', 'asdw', 'ada', 'asd', 3, '2018-01-27 11:26:50', '2018-01-27 11:26:50', 61, 1, 1),
(117, 'ewqe', 'asdasd', 'adqw', 'asdasd', 3, '2018-01-27 11:27:05', '2018-01-27 11:27:05', 61, 1, 1),
(118, 'akdas ', 'asqweqwe', 'aklda dkqwe', 'a,nd qwuoehq kjncseqweqfsdf', 3, '2018-01-27 11:27:36', '2018-01-27 11:27:36', 61, 1, 0),
(119, 'qwe qeiqe', 'lijawe kj', 'm,and qkweh qjhbcbksjeh wq', 'sfsak asdas dowqi zkcjnzxkuewqeqwezc', 3, '2018-01-27 11:31:16', '2018-01-27 11:31:16', 61, 1, 1),
(120, 'l', 'lajsd', ',aknd qwueh qzmcnzxi', 'iajse oqwoei qwjxzncoieqweqw', 3, '2018-01-27 11:31:56', '2018-01-27 11:31:56', 61, 1, 1),
(121, 'lkjeq eqwkeh', 'ijwoeqi eqwsbzcqwhe', 'kald asdhqwoei qwemnqw', 'askjdhqw ihsdmnzxbc wiuehqweqwe', 3, '2018-01-27 11:32:35', '2018-01-27 11:32:35', 61, 1, 1),
(122, ';oqwe', 'oiqwe qwhe09&%^ %$87 ^&$#', 'ajkda sdiuhwq eqwejqw', 'kua damsndqwue qwjehqw szdas', 3, '2018-01-27 11:33:12', '2018-01-27 11:33:12', 61, 1, 1),
(123, '*&^ 7^T%^', '9)) 0_&* as$#!!~~` `87 . hzsd', 'kad qwoi qw e,ndoiq e', 'uhae qiwuyeg zmnc qwouas dasd<br /><br />\r\n<table align=\"center\" class=\"pic_artikel_sisip_table\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"pic_artikel_sisip\" align=\"center\"><img src=\"http://media.terpusat/view/image/97/1515336288-lagi-lagi-bisa-gila.img\" /></div>\r\n<div class=\"pic text-center\" align=\"center\"></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', 3, '2018-01-27 11:33:51', '2018-01-27 11:33:51', 61, 1, 1),
(124, 'kljda sdu2 lasjda', 'iask asdjqwiu szmnczxc', 'akd asdkqw qwkjnsd akdhas', '<span>Jakarta, CNN Indonesia -- Sebanyak 463.891 mobil Honda produksi 2014-2017 menjalani kampanye&nbsp;</span><em>product update</em><span>&nbsp;(PUD). Penyebabnya terdapat pada master silinder dan master&nbsp;</span><em>power</em><span>&nbsp;pada sistem pengereman.</span><br /><br /><span>Marketing and After Sales Service Director PT HPM Jonfis Fandy menyarankan para pemilik mobil menghubungi dealer resmi Honda atau&nbsp;</span><em>Honda Customer Care</em><span>&nbsp;di 0-800-11-22-789 untuk diperbaiki bagian yang rusak.</span><br /><br /><span>\"Ya supaya menjamin konsumen mendapatkan kualitas dan keamanan maksimal. Itu memang haknya mereka ketika mereka memiliki mobilnya,\" kata Jonfis kepada CNNIndonesia pada Jumat (26/1).</span><br /><br />\r\n<div><img src=\"https://newrevive.detik.com/delivery/lg.php?bannerid=0&amp;campaignid=0&amp;zoneid=1551&amp;loc=https%3A%2F%2Fwww.cnnindonesia.com%2Fteknologi%2F20180126181214-384-271871%2Fmaster-rem-honda-bermasalah-dipasok-vendor-lokal&amp;referer=https%3A%2F%2Fwww.cnnindonesia.com%2Fteknologi%2F20180121130944-384-270499%2Fkenali-tanda-tanda-busi-mendadak-mati&amp;cb=b62f485bef\" /></div>\r\n<br />\r\n<table class=\"linksisip\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"lihatjg\">\r\n<h5>Lihat juga:</h5>\r\n<span>&nbsp;</span><a data-label=\"List Berita\" data-action=\"Berita Pilihan\" data-category=\"Detil Artikel\" href=\"https://www.cnnindonesia.com/teknologi/20180126162743-384-271830/gara-gara-master-rem-honda-recall-463891-unit/\">Gara-gara Master Rem, Honda \'Recall\' 463.891 Unit</a></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br /><span>Menurut Jonfis, kampanye PUD sudah menjadi kewajiban dari pihak HPM guna menjaga kenyamanan pemilik kendaraan, terlebih komponen yang rusak sangat vital. Sampai saat ini, belum ada laporan kecelakaan akibat kerusakan komponen vital di mobil itu.</span><br /><br /><span>Jonfis menuturkan bagian master silinder dan master&nbsp;</span><em>power</em><span>&nbsp;yang bermasalah diproduksi di Indonesia alias menggunakan vendor lokal.&nbsp; Namun dia tak menyebutkan nama vendor lokal yang dimaksud.</span><br /><br />\r\n<table class=\"linksisip\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"lihatjg\">\r\n<h5>Lihat juga:</h5>\r\n<span>&nbsp;</span><a data-label=\"List Berita\" data-action=\"Berita Pilihan\" data-category=\"Detil Artikel\" href=\"https://www.cnnindonesia.com/teknologi/20180125121119-384-271477/konsumen-bicara-soal-master-rem-honda/\">Konsumen Bicara Soal Master Rem Honda</a></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br /><span>Diketahui, proses pemeriksaan atau penggantian komponen master silinder dan master&nbsp;</span><em>power</em><span>pada sistem pengereman tidak dikenakan biaya. Proses pemeriksaan hingga penggantian komponen ini berlangsung kurang lebih selama 1-2 jam.</span><br /><br /><span>Terkait jumlah nominal yang disiapkan HPM atas&nbsp;</span><em>recall</em><span>&nbsp;ini, pihak HPM tak berkenan untuk memberikan informasi. Perseroan sendiri lebih memfokuskan untuk memperbaiki kerusakan barang yang diambil dari pemasok lokal.</span><br /><br /><span>\"Maaf enggak bisa diberitahu (nama vendornya),\" pungkas Jonfis.</span><br />\r\n<table class=\"linksisip\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"lihatjg\">\r\n<h5>Lihat juga:</h5>\r\n<span>&nbsp;</span><a data-label=\"List Berita\" data-action=\"Berita Pilihan\" data-category=\"Detil Artikel\" href=\"https://www.cnnindonesia.com/teknologi/20180124102513-384-271165/dealer-akui-master-rem-mobil-honda-bocor/\">Dealer Akui Master Rem Mobil Honda Bocor</a></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<span>Honda Indonesia melakukan perbaikan master rem untuk Honda Mobilio tahun produksi 2014 - 2017, Honda Brio tahun produksi 2014 - 2017, Honda Jazz tahun produksi 2014 - 2017, Honda HR-V tahun produksi 2014 - 2017 dan Honda BR-V tahun produksi 2015 - 2017.&nbsp;</span><strong>(asa)</strong>', 3, '2018-01-27 11:36:45', '2018-01-27 11:36:45', 61, 1, 1),
(125, 'akda sdk', 'as doiqw masdnas d', 'kla daskdhq oiwj eqwmen oisd', '&nbsp;kashda sdiuhqw jnsdcoauwyeqw eiqueqweqwe', 3, '2018-01-27 11:47:20', '2018-01-27 11:47:20', 63, 1, 1),
(126, 'SUB TECHNO', 'Teknologi', 'a dasiudasd asduhq wejkha sd', '<span>Jakarta, CNN Indonesia -- Permintaan tim Presiden Amerika Serikat Donald Trump meminjam lukisan Van Gogh untuk menghiasi Gedung Putih ditolak. Presiden bisa meminjam karya seni apa saja selama memerintah, untuk dipajang di kantor mereka.</span><br /><br /><span>Trump ingin memajang karya sang pelukis asal Belanda yang berjudul &lsquo;Landscape with Snow&rsquo; untuk menjadi pemanis di dinding ruangan khusus ibu negara Melania Trump.</span><br /><br /><span>Namun yayasan museum Guggenheim di New York menolak permintaan itu, seperti diberitakan AFP. Pemimpin kurator di museum itu beralasan, lukisan yang diminta sedang dalam larangan untuk bepergian ke mana pun kecuali untuk kondisi darurat.</span><br /><br />\r\n<div><img src=\"https://newrevive.detik.com/delivery/lg.php?bannerid=0&amp;campaignid=0&amp;zoneid=1546&amp;loc=https%3A%2F%2Fwww.cnnindonesia.com%2Fhiburan%2F20180126103854-241-271718%2Fniat-pinjam-lukisan-van-gogh-donald-trump-dapat-toilet-emas&amp;referer=https%3A%2F%2Fwww.cnnindonesia.com%2F&amp;cb=ec2b2a3a43\" /></div>\r\n<br />\r\n<table class=\"linksisip\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"lihatjg\">\r\n<h5>Lihat juga:</h5>\r\n<span>&nbsp;</span><a data-label=\"List Berita\" data-action=\"Berita Pilihan\" data-category=\"Detil Artikel\" href=\"https://www.cnnindonesia.com/hiburan/20180125071850-241-271420/ruang-pameran-seni-islam-di-louvre-ditutup-karena-kebanjiran/\">Ruang Pameran Seni Islam di Louvre Ditutup karena Kebanjiran</a></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br /><span>&ldquo;Mohon maaf kami tidak bisa mengakomodasi permintaan asli Anda,&rdquo; demikian penolakan mereka yang disampaikan melalui surat elektronik dari Nancy Spector. Meski demikian, Guggenheim tidak membiarkan Trump kecewa. Mereka memberikan penawaran yang lain.</span><br /><br /><span>Sebagai gantinya, mereka menawarkan apakah Trump mau menggunakan toilet emas 18 karat.</span><br /><br /><span>Karya itu berjudul &lsquo;America&rsquo; yang merupakan karya seniman Italia, Maurizio Cattelan. Toilet emas itu sudah dipajang di Guggenheim selama hampir setahun. Toilet itu hanya bisa digunakan oleh kalangan tertentu, dengan penjagaan.</span><br /><br /><span>Masa pameran toilet itu hampir berakhir.</span><br /><br />\r\n<table class=\"linksisip\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\"lihatjg\">\r\n<h5>Lihat juga:</h5>\r\n<span>&nbsp;</span><a data-label=\"List Berita\" data-action=\"Berita Pilihan\" data-category=\"Detil Artikel\" href=\"https://www.cnnindonesia.com/hiburan/20180126052333-227-271685/imaji-sepele-hingga-kawin-folk-new-wave-ala-the-upstairs/\">Imaji Sepele hingga Kawin Folk-New Wave ala The Upstairs</a></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br /><span>&ldquo;Sang seniman bersedia menawarkannya ke Gedung Putih untuk peminjaman jangka panjang. Ini, tentu saja, sangat berharga dan sedikit rentan, namun kami akan menyediakan seluruh instruksi untuk pemasangan dan perawatannya,&rdquo; demikian disampaikan Guggenheim.</span><br /><br /><span>Disebut-sebut, ratusan ribu orang mengantre untuk melihat toilet itu saat dipamerkan.</span><br /><br /><span>&ldquo;Meski dibuat dari emas bernilai jutaan dolar, karya ini sama seperti karya lain yang hebat. Seperti yang dikatakan Cattelan, &lsquo;Apa pun yang Anda makan, makan siang seharga US$200 atau hot dog senilai US$2, hasilnya sama di toilet,&rsquo;&rdquo; dinyatakan Guggenheim.</span>', 3, '2018-01-27 11:52:29', '2018-01-27 11:52:29', 66, 1, 1),
(127, 'Kikuk Kikuk', 'Wwwh Jsd amhda', 'uad asd auwq eqwem qwiuhs dasjhdags', 'iuhas dasjhdbqiw wiuehas dasdasd', 3, '2018-01-27 17:09:54', '2018-01-27 17:09:54', 67, 8, 1),
(128, 'Hara Jadah', 'Jadah Haram Hamra', 'kjad iuqe jmasdnas iaushdqwe', 'kja dasidu iquwh dsadnbqwi udoas dmnqw iudsahd asiduoqwe dsadsa', 3, '2018-01-27 17:11:35', '2018-01-27 17:11:35', 67, 8, 1),
(129, 'Koplak', 'Banget Banget', 'b asdiasud qiuh sdasodiuqw doias dasd', 'ka dasdiuhjqw askdhas diuqw dasiudhas doihjqw oidashd aasd', 3, '2018-01-27 17:12:23', '2018-01-27 17:12:23', 67, 8, 1),
(130, 'kajd kjahsd', 'kjhas dkjashds adh asd', 'kjasd asdoias duiasho sd', 'as iodasod asoid asodqwhoie skjd askdsadsad', 3, '2018-01-27 17:27:31', '2018-01-27 17:27:31', 67, 8, 1),
(131, 'kajd asdas', 'iajs qowie asmdnasd oasidj kasjdasd ', 'kad askudh qwiu qwekasdhas', 'jhskad asiduqhw dasjkdasidu qwiudhas djkbask duheqw jdabsdiasu sudhais duagh dijqweqwe', 3, '2018-01-27 17:28:33', '2018-01-27 17:28:33', 67, 8, 1),
(132, 'khas dasdkuhas', 'jhasd kjashdas qwehqw', 'kahsd askdaisduqw diuasd asoi dasiudhqwoe qwiu hasdas', 'a sdiausdhas iduq w9e asjd iuzhc mnzxuawe hqiwuh askdahsdasd', 3, '2018-01-27 17:29:36', '2018-01-27 17:29:36', 67, 8, 1),
(133, 'wiu qwejqw esa', 'kah doqiwije kqwe', 'kjad asiduhq wiuehqwamsd asdhjbasdi asidgbqwu', 'kas daisuh eqwkjb asikdjanbszxnc iuhsdoiqw sadkjasd', 3, '2018-01-27 17:30:49', '2018-01-27 17:30:49', 67, 8, 1),
(134, 'kasd asjk', 'jkas qoiejq kjasndas ajsdmansd', 'hjad asiduhq oiqw emnasbda doias dhibqw dsakjdas odihaodias doasihdas dkjbans', 'kahsd iauhd ashdbqiwue qiwuhe qwhb sambfiaueh qwouh asdasdasd', 3, '2018-01-27 17:31:42', '2018-01-27 17:31:42', 67, 8, 1),
(135, 'akda sdkf', 'sadasd asdas', 'asda', 'asdas', 3, '2018-01-27 17:33:27', '2018-01-27 17:33:27', 67, 8, 1),
(136, 'sdf sdfjds', 'oiwe roweir kjwhnrewr', 'kjad asiduhas diuashd asoiqw ekqwen sn,xzc zuixhvxv', 'ihsad aisuh qwmnebqw auisdhas diasdasdasd', 3, '2018-01-27 17:34:00', '2018-01-27 17:34:00', 67, 8, 1),
(137, 'iuadh oqiwe', 'oiwque iuqhweqw', 'jhabd asiduhq mnbd asiduashdas diasbda sdkjbaskdjasbndkajsdhqwuhe aksdas', 'kjahsd iqwbsamnzbc zxicb qiuwadgs bdjashdasbdiuqwg saiduga sdjhasbdmasd', 3, '2018-01-27 17:34:42', '2018-01-27 17:34:42', 67, 8, 1),
(138, 'lkad asdkjas', 'jksahd asjdkhqw', 'kad asdoiasd qoijeqw samdnasd', 'k asdoasd iqwuh askdjnqwo uasodaqwevsadsad asdasdqwe asdas', 3, '2018-01-27 18:45:20', '2018-01-27 18:45:20', 57, 9, 1),
(139, 'kad as', 'jkashda dkjashd oiwq sdasd', 'kjahd asiuhqw asmdnba sdiuasd as kjdhas diuqwh dasmdnbas asiudhas doiad', 'k asduas djhvqwb suahf smnbcx ivu siourwe hfnbdsfiusf disuf weiuhrw fsdb fiuwe fisu dsfdsf', 3, '2018-01-27 18:45:57', '2018-01-27 18:45:57', 57, 9, 1),
(140, 'kjad askdjash', 'k asodiqw eqhb xzh ao', 'adg asiuqg weuy sadjhasbd', '&nbsp;asdg asudhb qvwidy sbndbsdiuqw eidsbfs djbfsdbfisd fbsdiufbweiu dsiuf bsdfnmbds fsdiuf sfew', 3, '2018-01-27 18:46:48', '2018-01-27 18:46:48', 57, 9, 1),
(141, 'sadkjas asd', 'kasljd asd asdkj', 'kjasd asiudas diuasugd asiudh oqwi dashjbd aksdh', '&nbsp;asjdhbas diuwh eqwiu sadasbd mas dkjashdasd', 3, '2018-01-27 18:47:31', '2018-01-27 18:47:31', 57, 9, 1),
(142, 'Ga Muncul', 'Muncul Tak Muncul', 'akd asdkqwh asjhdbas', 'aksjhdas douqhw dasmndbasdahs dqweasd', 3, '2018-01-27 18:50:29', '2018-01-27 18:50:29', 57, 9, 1),
(143, 'Kau Rindu Aku', 'Rindu Kamu', 'asjdhsa daskhdu qwiuhsa dmnsabda djkahsd qiowued samndb asdas dasod', 'kjashd asiudh qiwub dasdbmnzxb ciuasg dhjasbd iquwge asmbd asjdh iuqwhd sadb asndau9sdh iauwqe', 3, '2018-01-27 19:13:40', '2018-01-27 19:13:40', 57, 9, 1),
(144, 'kiad askdh', 'k asoiqwe qwieu', 'kuad oiqwu snmdbasd ooasdhas dbas diuqwhe iqwug asdkjdhas', 'jhas diugqw dhjavs bnbxzc uha d9qwo dkasbdaisud asuhd iqwyg dasd quw daisd mnxzbc iaygd aisdas', 3, '2018-01-27 19:21:38', '2018-01-27 19:21:38', 57, 9, 1),
(145, 's', 'swe', 'ada sa', 'sdda', 3, '2018-01-27 19:30:18', '2018-01-27 19:30:18', 57, 9, 1),
(146, 'ad kasd', 'kq oiqwe kqwehqwmqw', 'ad askdjhas dasbd oqiwh dsajdhbas', 'k asdiuhas dkjqw dasmnbd aczxmncb iqu hdajsdb asidq owidh&nbsp;', 3, '2018-01-27 19:42:23', '2018-01-27 19:42:23', 57, 9, 1),
(147, 'Jancuk', 'Jan', 'cuk tenan', 'akd asdasd', 3, '2018-02-01 00:53:27', '2018-02-01 00:53:27', 53, 1, 1),
(148, 'ew', 'ada kasd', 'asdas', 'adasd sadj asdiasd', 3, '2018-03-02 07:16:19', '2018-03-02 07:16:19', 74, 1, 1),
(149, 'kahda sda', 'kajsd aksdjasd', 'kjahd askdashjd asodja', 'ka dkasd askdjhasoqwie qiwehqwe', 3, '2018-03-02 09:00:38', '2018-03-02 09:00:38', 74, 1, 1),
(150, 'Again', 'Again Head', 'kajdha sdkasjhdas dkashd', '&nbsp;aksduh qiu eqwjbaksjdhas oidhq wewqe', 3, '2018-03-02 09:04:29', '2018-03-02 09:04:29', 74, 1, 1),
(151, 'HeadlIne', 'Headline 4', 'kjahd askdhas dkasd kasdhas kdhas kdjsha dkjhasd ', 'kad kashd aks daksj dkasd iuqwh diuasdhasd', 3, '2018-03-02 09:09:01', '2018-03-02 09:09:01', 74, 1, 1),
(152, 'Headline Again', 'Again Again Headline', 'kahd asiduhqw idb asiduas idqw diuh', 'jhad asudhbas diqwbd iausbdjasbnd huqwbiuasdasd', 3, '2018-03-02 09:23:05', '2018-03-02 09:23:05', 74, 1, 1),
(153, 'Basingse', 'Basingse City', 'kjad aisdhi uqwh diasbd iasuhd iasudh qbnnmdba sidas diuh', 'khasd aishdbasiudq widuhais udhaisdsad', 3, '2018-03-02 09:24:03', '2018-03-02 09:24:03', 74, 1, 1),
(154, 'Cuk', 'asad aidas', 'aisd aiduasd', 'ad asiduhasdad', 3, '2019-01-03 22:57:38', '2019-01-03 22:57:38', 75, 1, 1),
(155, 'kh wk', 'kajhsd asda', 'kjad asduagdhasjdh', 'iahsd asduiasygdiq weasdasd', 3, '2019-01-03 23:45:04', '2019-01-03 23:45:04', 75, 1, 1),
(156, 'alkdna daksdh', 'iuahd auiuhqgwi ada', 'ad uaydh uigh asdihqwe asdi', 'iashdasd asiduhasdiasd', 3, '2019-01-03 23:51:49', '2019-01-03 23:51:49', 75, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `content_attribute`
--

CREATE TABLE `content_attribute` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `content_id` bigint(100) NOT NULL,
  `content_attribute_key` text NOT NULL,
  `content_attribute_val` longtext NOT NULL,
  `content_attribute_status` int(11) NOT NULL,
  `content_attribute_position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content_attribute`
--

INSERT INTO `content_attribute` (`id`, `content_id`, `content_attribute_key`, `content_attribute_val`, `content_attribute_status`, `content_attribute_position`) VALUES
(1, 1, 'authors', '[{\"author_id\":\"3\",\"author_name\":\"Yusrizal\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(2, 1, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(3, 1, 'cover', '2', 1, 0),
(4, 1, 'story', '2', 1, 0),
(5, 2, 'authors', '[{\"author_id\":\"3\",\"author_name\":\"Yusrizal\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(6, 2, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(7, 2, 'cover', '0', 1, 0),
(8, 2, 'story', '0', 1, 0),
(9, 3, 'authors', '[{\"author_id\":\"3\",\"author_name\":\"Yusrizal\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(10, 3, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(11, 3, 'cover', '0', 1, 0),
(12, 3, 'story', '0', 1, 0),
(13, 4, 'authors', '[{\"author_id\":\"3\",\"author_name\":\"Yusrizal\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(14, 4, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(15, 4, 'cover', '0', 1, 0),
(16, 4, 'story', '0', 1, 0),
(17, 5, 'authors', '[{\"author_id\":\"3\",\"author_name\":\"Yusrizal\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(18, 5, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(19, 5, 'cover', '0', 1, 0),
(20, 5, 'story', '0', 1, 0),
(21, 6, 'authors', '[{\"author_id\":\"3\",\"author_name\":\"Yusrizal\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(22, 6, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(23, 6, 'cover', '0', 1, 0),
(24, 6, 'story', '0', 1, 0),
(25, 7, 'authors', '[{\"author_id\":\"3\",\"author_name\":\"Yusrizal\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(26, 7, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(27, 7, 'cover', '0', 1, 0),
(28, 7, 'story', '0', 1, 0),
(29, 8, 'authors', '[{\"author_id\":\"3\",\"author_name\":\"Yusrizal\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(30, 8, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(31, 8, 'cover', '0', 1, 0),
(32, 8, 'story', '0', 1, 0),
(33, 9, 'authors', '[{\"author_id\":\"3\",\"author_name\":\"Yusrizal\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(34, 9, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(35, 9, 'cover', '0', 1, 0),
(36, 9, 'story', '0', 1, 0),
(37, 10, 'authors', '[{\"author_id\":\"3\",\"author_name\":\"Yusrizal\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(38, 10, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(39, 10, 'cover', '0', 1, 0),
(40, 10, 'story', '0', 1, 0),
(41, 11, 'authors', '[{\"author_id\":\"3\",\"author_name\":\"Yusrizal\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(42, 11, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(43, 11, 'cover', '0', 1, 0),
(44, 11, 'story', '0', 1, 0),
(45, 12, 'authors', '[{\"author_id\":\"3\",\"author_name\":\"Yusrizal\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(46, 12, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(47, 12, 'cover', '0', 1, 0),
(48, 12, 'story', '0', 1, 0),
(49, 13, 'authors', '[{\"author_id\":\"3\",\"author_name\":\"Yusrizal\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(50, 13, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(51, 13, 'cover', '0', 1, 0),
(52, 13, 'story', '0', 1, 0),
(53, 14, 'authors', '[{\"author_id\":\"3\",\"author_name\":\"Yusrizal\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(54, 14, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(55, 14, 'cover', '0', 1, 0),
(56, 14, 'story', '0', 1, 0),
(57, 15, 'authors', '[{\"author_id\":\"3\",\"author_name\":\"Yusrizal\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(58, 15, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(59, 15, 'cover', '0', 1, 0),
(60, 15, 'story', '0', 1, 0),
(61, 16, 'authors', '[{\"author_id\":\"3\",\"author_name\":\"Yusrizal\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(62, 16, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(63, 16, 'cover', '0', 1, 0),
(64, 16, 'story', '0', 1, 0),
(65, 17, 'authors', '[{\"author_id\":\"3\",\"author_name\":\"Yusrizal\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(66, 17, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(67, 17, 'cover', '0', 1, 0),
(68, 17, 'story', '0', 1, 0),
(69, 18, 'authors', '[{\"author_id\":\"3\",\"author_name\":\"Yusrizal\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(70, 18, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(71, 18, 'cover', '0', 1, 0),
(72, 18, 'story', '0', 1, 0),
(73, 19, 'authors', '[{\"author_id\":\"3\",\"author_name\":\"Yusrizal\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(74, 19, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(75, 19, 'cover', '0', 1, 0),
(76, 19, 'story', '0', 1, 0),
(77, 20, 'authors', '[{\"author_id\":\"3\",\"author_name\":\"Yusrizal\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(78, 20, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(79, 20, 'cover', '0', 1, 0),
(80, 20, 'story', '0', 1, 0),
(81, 21, 'authors', '[{\"author_id\":\"3\",\"author_name\":\"Yusrizal\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(82, 21, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(83, 21, 'cover', '0', 1, 0),
(84, 21, 'story', '0', 1, 0),
(85, 22, 'authors', '[{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(86, 22, 'district', '{\"district_id\":\"185\",\"district_name\":\"Kota Bekasi\"}', 1, 0),
(87, 22, 'cover', '28', 1, 0),
(88, 22, 'story', '24', 1, 0),
(89, 23, 'authors', '[{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(90, 23, 'tags', '[{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"2\",\"tag_name\":\"Mainan Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"19\",\"tag_name\":\"Mainan Mobil Rock Crawler\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"14\",\"tag_name\":\"Mainan Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"18\",\"tag_name\":\"Rock Crawler - Hummer Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"15\",\"tag_name\":\"Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"13\",\"tag_name\":\"Aneka Mainan Anak Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(91, 23, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(92, 23, 'cover', '4', 1, 0),
(93, 23, 'story', '5', 1, 0),
(94, 23, 'harga', '265000', 1, 0),
(95, 23, 'diskon', '', 1, 0),
(96, 24, 'authors', '[{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(97, 24, 'tags', '[{\"tag_id\":\"3\",\"tag_name\":\"Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"15\",\"tag_name\":\"Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"14\",\"tag_name\":\"Mainan Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"19\",\"tag_name\":\"Mainan Mobil Rock Crawler\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"21\",\"tag_name\":\"Remote Control Crawler\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"2\",\"tag_name\":\"Mainan Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(98, 24, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(99, 24, 'cover', '6', 1, 0),
(100, 24, 'story', '7', 1, 0),
(101, 24, 'harga', '265000', 1, 0),
(102, 24, 'diskon', '', 1, 0),
(103, 25, 'authors', '[{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(104, 25, 'tags', '[{\"tag_id\":\"3\",\"tag_name\":\"Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"15\",\"tag_name\":\"Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"21\",\"tag_name\":\"Remote Control Crawler\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"19\",\"tag_name\":\"Mainan Mobil Rock Crawler\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"16\",\"tag_name\":\"Remote Control Mobil\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"14\",\"tag_name\":\"Mainan Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"20\",\"tag_name\":\"Rock Crawler - Hummer Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(105, 25, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(106, 25, 'cover', '8', 1, 0),
(107, 25, 'story', '11', 1, 0),
(108, 25, 'harga', '265000', 1, 0),
(109, 25, 'diskon', '', 1, 0),
(110, 26, 'authors', '[{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(111, 26, 'tags', '[{\"tag_id\":\"3\",\"tag_name\":\"Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"2\",\"tag_name\":\"Mainan Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"13\",\"tag_name\":\"Aneka Mainan Anak Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"15\",\"tag_name\":\"Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"17\",\"tag_name\":\"Rock Crawler - Hummer\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"19\",\"tag_name\":\"Mainan Mobil Rock Crawler\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"21\",\"tag_name\":\"Remote Control Crawler\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"14\",\"tag_name\":\"Mainan Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"16\",\"tag_name\":\"Remote Control Mobil\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"18\",\"tag_name\":\"Rock Crawler - Hummer Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"20\",\"tag_name\":\"Rock Crawler - Hummer Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"1\",\"tag_name\":\"Mainan\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(112, 26, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(113, 26, 'cover', '12', 1, 0),
(114, 26, 'story', '13', 1, 0),
(115, 26, 'harga', '265000', 1, 0),
(116, 26, 'diskon', '', 1, 0),
(117, 27, 'authors', '[{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(118, 27, 'tags', '[{\"tag_id\":\"1\",\"tag_name\":\"Mainan\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"3\",\"tag_name\":\"Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"2\",\"tag_name\":\"Mainan Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"13\",\"tag_name\":\"Aneka Mainan Anak Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"15\",\"tag_name\":\"Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"17\",\"tag_name\":\"Rock Crawler - Hummer\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"19\",\"tag_name\":\"Mainan Mobil Rock Crawler\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"21\",\"tag_name\":\"Remote Control Crawler\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"14\",\"tag_name\":\"Mainan Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"16\",\"tag_name\":\"Remote Control Mobil\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"18\",\"tag_name\":\"Rock Crawler - Hummer Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"20\",\"tag_name\":\"Rock Crawler - Hummer Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(119, 27, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(120, 27, 'cover', '14', 1, 0),
(121, 27, 'story', '0', 1, 0),
(122, 27, 'harga', '320000', 1, 0),
(123, 27, 'diskon', '', 1, 0),
(124, 28, 'authors', '[{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(125, 28, 'tags', '[{\"tag_id\":\"1\",\"tag_name\":\"Mainan\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"3\",\"tag_name\":\"Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"2\",\"tag_name\":\"Mainan Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"13\",\"tag_name\":\"Aneka Mainan Anak Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"15\",\"tag_name\":\"Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"17\",\"tag_name\":\"Rock Crawler - Hummer\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"19\",\"tag_name\":\"Mainan Mobil Rock Crawler\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"21\",\"tag_name\":\"Remote Control Crawler\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"14\",\"tag_name\":\"Mainan Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"16\",\"tag_name\":\"Remote Control Mobil\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"18\",\"tag_name\":\"Rock Crawler - Hummer Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"20\",\"tag_name\":\"Rock Crawler - Hummer Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(126, 28, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(127, 28, 'cover', '15', 1, 0),
(128, 28, 'story', '0', 1, 0),
(129, 28, 'harga', '320000', 1, 0),
(130, 28, 'diskon', '', 1, 0),
(131, 29, 'authors', '[{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(132, 29, 'tags', '[{\"tag_id\":\"1\",\"tag_name\":\"Mainan\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"3\",\"tag_name\":\"Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"2\",\"tag_name\":\"Mainan Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"13\",\"tag_name\":\"Aneka Mainan Anak Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"15\",\"tag_name\":\"Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"17\",\"tag_name\":\"Rock Crawler - Hummer\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"19\",\"tag_name\":\"Mainan Mobil Rock Crawler\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"21\",\"tag_name\":\"Remote Control Crawler\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"14\",\"tag_name\":\"Mainan Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"16\",\"tag_name\":\"Remote Control Mobil\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"18\",\"tag_name\":\"Rock Crawler - Hummer Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"22\",\"tag_name\":\"Mainan Drifting\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(133, 29, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(134, 29, 'cover', '25', 1, 0),
(135, 29, 'story', '18', 1, 0),
(136, 29, 'harga', '200000', 1, 0),
(137, 29, 'diskon', '', 1, 0),
(138, 30, 'authors', '[{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(139, 30, 'tags', '[{\"tag_id\":\"1\",\"tag_name\":\"Mainan\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"3\",\"tag_name\":\"Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"2\",\"tag_name\":\"Mainan Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"13\",\"tag_name\":\"Aneka Mainan Anak Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"15\",\"tag_name\":\"Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"17\",\"tag_name\":\"Rock Crawler - Hummer\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"19\",\"tag_name\":\"Mainan Mobil Rock Crawler\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"21\",\"tag_name\":\"Remote Control Crawler\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"14\",\"tag_name\":\"Mainan Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"16\",\"tag_name\":\"Remote Control Mobil\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"18\",\"tag_name\":\"Rock Crawler - Hummer Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"20\",\"tag_name\":\"Rock Crawler - Hummer Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(140, 30, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(141, 30, 'cover', '24', 1, 0),
(142, 30, 'story', '18', 1, 0),
(143, 30, 'harga', '200000', 1, 0),
(144, 30, 'diskon', '', 1, 0),
(145, 31, 'authors', '[{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(146, 31, 'tags', '[{\"tag_id\":\"1\",\"tag_name\":\"Mainan\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"3\",\"tag_name\":\"Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"2\",\"tag_name\":\"Mainan Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"13\",\"tag_name\":\"Aneka Mainan Anak Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"15\",\"tag_name\":\"Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"17\",\"tag_name\":\"Rock Crawler - Hummer\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"19\",\"tag_name\":\"Mainan Mobil Rock Crawler\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"21\",\"tag_name\":\"Remote Control Crawler\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"14\",\"tag_name\":\"Mainan Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"16\",\"tag_name\":\"Remote Control Mobil\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"18\",\"tag_name\":\"Rock Crawler - Hummer Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"20\",\"tag_name\":\"Rock Crawler - Hummer Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(147, 31, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(148, 31, 'cover', '20', 1, 0),
(149, 31, 'story', '23', 1, 0),
(150, 31, 'harga', '405000', 1, 0),
(151, 31, 'diskon', '', 1, 0),
(152, 32, 'authors', '[{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(153, 32, 'tags', '[{\"tag_id\":\"1\",\"tag_name\":\"Mainan\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"3\",\"tag_name\":\"Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"2\",\"tag_name\":\"Mainan Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"13\",\"tag_name\":\"Aneka Mainan Anak Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"46\",\"tag_name\":\"UNO Kartu\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"48\",\"tag_name\":\"UNO Indonesia\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"50\",\"tag_name\":\"UNO Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"47\",\"tag_name\":\"UNO Stacko\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"45\",\"tag_name\":\"Mainan Uno\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"49\",\"tag_name\":\"Permainan UNO\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"51\",\"tag_name\":\"Mainan UNO Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(154, 32, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(155, 32, 'cover', '26', 1, 0),
(156, 32, 'story', '0', 1, 0),
(157, 32, 'harga', '70000', 1, 0),
(158, 32, 'diskon', '', 1, 0),
(159, 33, 'authors', '[{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(160, 33, 'tags', '[{\"tag_id\":\"1\",\"tag_name\":\"Mainan\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"3\",\"tag_name\":\"Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"2\",\"tag_name\":\"Mainan Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"13\",\"tag_name\":\"Aneka Mainan Anak Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"46\",\"tag_name\":\"UNO Kartu\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"48\",\"tag_name\":\"UNO Indonesia\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"50\",\"tag_name\":\"UNO Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"45\",\"tag_name\":\"Mainan Uno\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"47\",\"tag_name\":\"UNO Stacko\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"49\",\"tag_name\":\"Permainan UNO\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"51\",\"tag_name\":\"Mainan UNO Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"54\",\"tag_name\":\"Edukasi UNO\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(161, 33, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(162, 33, 'cover', '27', 1, 0),
(163, 33, 'story', '0', 1, 0),
(164, 33, 'harga', '77500', 1, 0),
(165, 33, 'diskon', '', 1, 0),
(166, 34, 'authors', '[{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(167, 34, 'tags', '[{\"tag_id\":\"1\",\"tag_name\":\"Mainan\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"3\",\"tag_name\":\"Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"2\",\"tag_name\":\"Mainan Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"51\",\"tag_name\":\"Mainan UNO Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"49\",\"tag_name\":\"Permainan UNO\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"47\",\"tag_name\":\"UNO Stacko\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"45\",\"tag_name\":\"Mainan Uno\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"50\",\"tag_name\":\"UNO Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"48\",\"tag_name\":\"UNO Indonesia\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"46\",\"tag_name\":\"UNO Kartu\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"54\",\"tag_name\":\"Edukasi UNO\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(168, 34, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(169, 34, 'cover', '28', 1, 0),
(170, 34, 'story', '0', 1, 0),
(171, 34, 'harga', '82500', 1, 0),
(172, 34, 'diskon', '', 1, 0),
(173, 35, 'authors', '[{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(174, 35, 'tags', '[{\"tag_id\":\"3\",\"tag_name\":\"Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"1\",\"tag_name\":\"Mainan\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"2\",\"tag_name\":\"Mainan Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"13\",\"tag_name\":\"Aneka Mainan Anak Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"15\",\"tag_name\":\"Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"17\",\"tag_name\":\"Rock Crawler - Hummer\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"19\",\"tag_name\":\"Mainan Mobil Rock Crawler\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"21\",\"tag_name\":\"Remote Control Crawler\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"14\",\"tag_name\":\"Mainan Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"16\",\"tag_name\":\"Remote Control Mobil\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"18\",\"tag_name\":\"Rock Crawler - Hummer Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"20\",\"tag_name\":\"Rock Crawler - Hummer Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(175, 35, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(176, 35, 'cover', '25', 1, 0),
(177, 35, 'story', '29', 1, 0),
(178, 35, 'harga', '265000', 1, 0),
(179, 35, 'diskon', '', 1, 0),
(180, 36, 'authors', '[{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(181, 36, 'tags', '[{\"tag_id\":\"1\",\"tag_name\":\"Mainan\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"3\",\"tag_name\":\"Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"2\",\"tag_name\":\"Mainan Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"13\",\"tag_name\":\"Aneka Mainan Anak Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"17\",\"tag_name\":\"Rock Crawler - Hummer\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"19\",\"tag_name\":\"Mainan Mobil Rock Crawler\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"21\",\"tag_name\":\"Remote Control Crawler\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"14\",\"tag_name\":\"Mainan Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"16\",\"tag_name\":\"Remote Control Mobil\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"18\",\"tag_name\":\"Rock Crawler - Hummer Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"20\",\"tag_name\":\"Rock Crawler - Hummer Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(182, 36, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(183, 36, 'cover', '24', 1, 0),
(184, 36, 'story', '29', 1, 0),
(185, 36, 'harga', '265000', 1, 0),
(186, 36, 'diskon', '', 1, 0),
(187, 37, 'authors', '[{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(188, 37, 'tags', '[{\"tag_id\":\"1\",\"tag_name\":\"Mainan\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"3\",\"tag_name\":\"Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"2\",\"tag_name\":\"Mainan Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"13\",\"tag_name\":\"Aneka Mainan Anak Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"15\",\"tag_name\":\"Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"17\",\"tag_name\":\"Rock Crawler - Hummer\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"19\",\"tag_name\":\"Mainan Mobil Rock Crawler\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"21\",\"tag_name\":\"Remote Control Crawler\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"14\",\"tag_name\":\"Mainan Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"16\",\"tag_name\":\"Remote Control Mobil\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"18\",\"tag_name\":\"Rock Crawler - Hummer Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"20\",\"tag_name\":\"Rock Crawler - Hummer Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(189, 37, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(190, 37, 'cover', '19', 1, 0),
(191, 37, 'story', '0', 1, 0),
(192, 37, 'harga', '275000', 1, 0),
(193, 37, 'diskon', '', 1, 0),
(194, 38, 'authors', '[{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(195, 38, 'tags', '[{\"tag_id\":\"1\",\"tag_name\":\"Mainan\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"3\",\"tag_name\":\"Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"2\",\"tag_name\":\"Mainan Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"13\",\"tag_name\":\"Aneka Mainan Anak Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"15\",\"tag_name\":\"Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"17\",\"tag_name\":\"Rock Crawler - Hummer\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"19\",\"tag_name\":\"Mainan Mobil Rock Crawler\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"21\",\"tag_name\":\"Remote Control Crawler\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"14\",\"tag_name\":\"Mainan Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"16\",\"tag_name\":\"Remote Control Mobil\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"18\",\"tag_name\":\"Rock Crawler - Hummer Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"20\",\"tag_name\":\"Rock Crawler - Hummer Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(196, 38, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(197, 38, 'cover', '16', 1, 0),
(198, 38, 'story', '0', 1, 0),
(199, 38, 'harga', '275000', 1, 0),
(200, 38, 'diskon', '', 1, 0),
(201, 39, 'authors', '[{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(202, 39, 'tags', '[{\"tag_id\":\"1\",\"tag_name\":\"Mainan\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"3\",\"tag_name\":\"Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"2\",\"tag_name\":\"Mainan Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"13\",\"tag_name\":\"Aneka Mainan Anak Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"15\",\"tag_name\":\"Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"38\",\"tag_name\":\"Helicopter\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"40\",\"tag_name\":\"Helicopter Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(203, 39, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(204, 39, 'cover', '30', 1, 0),
(205, 39, 'story', '31', 1, 0),
(206, 39, 'harga', '220000', 1, 0),
(207, 39, 'diskon', '', 1, 0),
(208, 40, 'authors', '[{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(209, 40, 'tags', '[{\"tag_id\":\"1\",\"tag_name\":\"Mainan\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"3\",\"tag_name\":\"Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"2\",\"tag_name\":\"Mainan Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"13\",\"tag_name\":\"Aneka Mainan Anak Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"15\",\"tag_name\":\"Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"38\",\"tag_name\":\"Helicopter\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"40\",\"tag_name\":\"Helicopter Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(210, 40, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(211, 40, 'cover', '32', 1, 0),
(212, 40, 'story', '33', 1, 0),
(213, 40, 'harga', '220000', 1, 0),
(214, 40, 'diskon', '', 1, 0),
(215, 41, 'authors', '[{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(216, 41, 'tags', '[{\"tag_id\":\"1\",\"tag_name\":\"Mainan\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"3\",\"tag_name\":\"Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"2\",\"tag_name\":\"Mainan Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"13\",\"tag_name\":\"Aneka Mainan Anak Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"15\",\"tag_name\":\"Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"38\",\"tag_name\":\"Helicopter\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"40\",\"tag_name\":\"Helicopter Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(217, 41, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(218, 41, 'cover', '34', 1, 0),
(219, 41, 'story', '35', 1, 0),
(220, 41, 'harga', '215000', 1, 0),
(221, 41, 'diskon', '', 1, 0),
(222, 42, 'authors', '[{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(223, 42, 'tags', '[{\"tag_id\":\"1\",\"tag_name\":\"Mainan\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"3\",\"tag_name\":\"Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"2\",\"tag_name\":\"Mainan Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"15\",\"tag_name\":\"Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"14\",\"tag_name\":\"Mainan Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"38\",\"tag_name\":\"Helicopter\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"40\",\"tag_name\":\"Helicopter Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(224, 42, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(225, 42, 'cover', '36', 1, 0),
(226, 42, 'story', '35', 1, 0),
(227, 42, 'harga', '215000', 1, 0),
(228, 42, 'diskon', '', 1, 0),
(229, 43, 'authors', '[{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"},{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"2\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(230, 43, 'tags', '[{\"tag_id\":\"1\",\"tag_name\":\"Mainan\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"3\",\"tag_name\":\"Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"2\",\"tag_name\":\"Mainan Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"15\",\"tag_name\":\"Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"14\",\"tag_name\":\"Mainan Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"16\",\"tag_name\":\"Remote Control Mobil\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"31\",\"tag_name\":\"Formula One Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"29\",\"tag_name\":\"Remote Control Formula One\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"32\",\"tag_name\":\"Formula One Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"30\",\"tag_name\":\"Mobil Formula One\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(231, 43, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(232, 43, 'cover', '37', 1, 0),
(233, 43, 'story', '37', 1, 0),
(234, 43, 'harga', '200000', 1, 0),
(235, 43, 'diskon', '', 1, 0),
(236, 44, 'authors', '[{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(237, 44, 'tags', '[{\"tag_id\":\"1\",\"tag_name\":\"Mainan\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"3\",\"tag_name\":\"Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"2\",\"tag_name\":\"Mainan Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"13\",\"tag_name\":\"Aneka Mainan Anak Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"60\",\"tag_name\":\"Talking TomCat Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"58\",\"tag_name\":\"Talking TomCat\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(238, 44, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(239, 44, 'cover', '38', 1, 0),
(240, 44, 'story', '0', 1, 0),
(241, 44, 'harga', '115000', 1, 0),
(242, 44, 'diskon', '', 1, 0),
(243, 45, 'authors', '[{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0);
INSERT INTO `content_attribute` (`id`, `content_id`, `content_attribute_key`, `content_attribute_val`, `content_attribute_status`, `content_attribute_position`) VALUES
(244, 45, 'tags', '[{\"tag_id\":\"1\",\"tag_name\":\"Mainan\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"3\",\"tag_name\":\"Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"2\",\"tag_name\":\"Mainan Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"13\",\"tag_name\":\"Aneka Mainan Anak Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"15\",\"tag_name\":\"Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"16\",\"tag_name\":\"Remote Control Mobil\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(245, 45, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(246, 45, 'cover', '39', 1, 0),
(247, 45, 'story', '40', 1, 0),
(248, 45, 'harga', '250000', 1, 0),
(249, 45, 'diskon', '', 1, 0),
(250, 46, 'authors', '[{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"},{\"author_id\":\"3\",\"author_name\":\"Yusrizal\",\"author_groups\":\"2\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(251, 46, 'tags', '[{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"15\",\"tag_name\":\"Remote Control\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"16\",\"tag_name\":\"Remote Control Mobil\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(252, 46, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(253, 46, 'cover', '41', 1, 0),
(254, 46, 'story', '42', 1, 0),
(255, 46, 'harga', '200000', 1, 0),
(256, 46, 'diskon', '', 1, 0),
(257, 46, 'berat', '2', 1, 0),
(258, 22, 'slug', 'tentang-kami', 1, 0),
(259, 47, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(260, 47, 'cover', '0', 1, 0),
(261, 47, 'story', '0', 1, 0),
(262, 47, 'slug', 'kontak', 1, 0),
(263, 48, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(264, 48, 'cover', '0', 1, 0),
(265, 48, 'story', '0', 1, 0),
(266, 48, 'slug', 'penawaran-spesial', 1, 0),
(267, 49, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(268, 49, 'cover', '0', 1, 0),
(269, 49, 'story', '0', 1, 0),
(270, 49, 'slug', 'privacy', 1, 0),
(271, 50, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(272, 50, 'cover', '0', 1, 0),
(273, 50, 'story', '0', 1, 0),
(274, 50, 'slug', 'peraturan-belanja', 1, 0),
(275, 51, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(276, 51, 'cover', '0', 1, 0),
(277, 51, 'story', '0', 1, 0),
(278, 51, 'slug', 'aneka-pertanyaan', 1, 0),
(279, 52, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(280, 52, 'cover', '0', 1, 0),
(281, 52, 'story', '0', 1, 0),
(282, 52, 'slug', 'reseller', 1, 0),
(283, 45, 'berat', '5', 1, 0),
(284, 42, 'berat', '2', 1, 0),
(285, 41, 'berat', '2', 1, 0),
(286, 40, 'berat', '2', 1, 0),
(287, 39, 'berat', '2', 1, 0),
(288, 44, 'berat', '1', 1, 0),
(289, 38, 'berat', '3', 1, 0),
(290, 37, 'berat', '3', 1, 0),
(291, 36, 'berat', '2.3', 1, 0),
(292, 35, 'berat', '2.3', 1, 0),
(293, 31, 'berat', '5', 1, 0),
(294, 30, 'berat', '2', 1, 0),
(295, 29, 'berat', '2', 1, 0),
(296, 28, 'berat', '6', 1, 0),
(297, 27, 'berat', '6', 1, 0),
(298, 26, 'berat', '2.3', 1, 0),
(299, 25, 'berat', '2.3', 1, 0),
(300, 24, 'berat', '2.3', 1, 0),
(301, 23, 'berat', '2.3', 1, 0),
(302, 43, 'berat', '4', 1, 0),
(303, 34, 'berat', '1', 1, 0),
(304, 33, 'berat', '1', 1, 0),
(305, 32, 'berat', '1', 1, 0),
(306, 53, 'authors', '[{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(307, 53, 'cover', '0', 1, 0),
(308, 53, 'story', '0', 1, 0),
(309, 53, 'slug', 'resi-pengiriman', 1, 0),
(310, 54, 'authors', '[{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(311, 54, 'cover', '0', 1, 0),
(312, 54, 'story', '0', 1, 0),
(313, 54, 'slug', 'isitilah-jne', 1, 0),
(314, 55, 'authors', '[{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(315, 55, 'cover', '0', 1, 0),
(316, 55, 'story', '0', 1, 0),
(317, 55, 'slug', 'toko-mainanku', 1, 0),
(318, 56, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(319, 56, 'cover', '0', 1, 0),
(320, 56, 'story', '0', 1, 0),
(321, 56, 'slug', 'tarif', 1, 0),
(322, 57, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(323, 57, 'cover', '0', 1, 0),
(324, 57, 'story', '0', 1, 0),
(325, 57, 'slug', 'booking', 1, 0),
(326, 58, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(327, 58, 'cover', '0', 1, 0),
(328, 58, 'story', '0', 1, 0),
(329, 58, 'slug', 'sewa-motor', 1, 0),
(330, 59, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(331, 59, 'cover', '0', 1, 0),
(332, 59, 'story', '0', 1, 0),
(333, 59, 'slug', 'dummy', 1, 0),
(334, 60, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(335, 60, 'cover', '0', 1, 0),
(336, 60, 'story', '0', 1, 0),
(337, 60, 'slug', 'paket-tour', 1, 0),
(338, 61, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(339, 61, 'cover', '0', 1, 0),
(340, 61, 'story', '0', 1, 0),
(341, 61, 'slug', 'contact-us', 1, 0),
(342, 56, 'template', 'page-tarif', 1, 0),
(343, 57, 'template', 'page-booking', 1, 0),
(344, 62, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(345, 62, 'district', '{\"district_id\":\"282\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(346, 62, 'cover', '0', 1, 0),
(347, 62, 'story', '0', 1, 0),
(348, 62, 'harga', '125000', 1, 0),
(349, 62, 'diskon', '75000', 1, 0),
(350, 62, 'berat', '', 1, 0),
(351, 58, 'template', 'page-tarif-motor', 1, 0),
(352, 63, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(353, 63, 'district', '{\"district_id\":\"282\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(354, 63, 'cover', '0', 1, 0),
(355, 63, 'story', '0', 1, 0),
(356, 63, 'harga', '450000', 1, 0),
(357, 63, 'diskon', '', 1, 0),
(358, 63, 'berat', '', 1, 0),
(359, 64, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(360, 64, 'district', '{\"district_id\":\"\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(361, 64, 'cover', '0', 1, 0),
(362, 64, 'story', '0', 1, 0),
(363, 64, 'harga', '125000', 1, 0),
(364, 64, 'diskon', '75000', 1, 0),
(365, 64, 'berat', '', 1, 0),
(366, 65, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(367, 65, 'district', '{\"district_id\":\"\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(368, 65, 'cover', '0', 1, 0),
(369, 65, 'story', '0', 1, 0),
(370, 65, 'harga', '225000', 1, 0),
(371, 65, 'diskon', '125000', 1, 0),
(372, 65, 'berat', '', 1, 0),
(373, 66, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(374, 66, 'district', '{\"district_id\":\"\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(375, 66, 'cover', '0', 1, 0),
(376, 66, 'story', '0', 1, 0),
(377, 66, 'harga', '180000', 1, 0),
(378, 66, 'diskon', '100000', 1, 0),
(379, 66, 'berat', '', 1, 0),
(380, 67, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(381, 67, 'district', '{\"district_id\":\"\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(382, 67, 'cover', '0', 1, 0),
(383, 67, 'story', '0', 1, 0),
(384, 67, 'harga', '325000', 1, 0),
(385, 67, 'diskon', '175000', 1, 0),
(386, 67, 'berat', '', 1, 0),
(387, 68, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(388, 68, 'district', '{\"district_id\":\"\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(389, 68, 'cover', '0', 1, 0),
(390, 68, 'story', '0', 1, 0),
(391, 68, 'harga', '180000', 1, 0),
(392, 68, 'diskon', '100000', 1, 0),
(393, 68, 'berat', '', 1, 0),
(394, 69, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(395, 69, 'district', '{\"district_id\":\"\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(396, 69, 'cover', '0', 1, 0),
(397, 69, 'story', '0', 1, 0),
(398, 69, 'harga', '125000', 1, 0),
(399, 69, 'diskon', '75000', 1, 0),
(400, 69, 'berat', '', 1, 0),
(401, 70, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(402, 70, 'district', '{\"district_id\":\"\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(403, 70, 'cover', '0', 1, 0),
(404, 70, 'story', '0', 1, 0),
(405, 70, 'harga', '100000', 1, 0),
(406, 70, 'diskon', '50000', 1, 0),
(407, 70, 'berat', '', 1, 0),
(408, 71, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(409, 71, 'district', '{\"district_id\":\"282\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(410, 71, 'cover', '0', 1, 0),
(411, 71, 'story', '0', 1, 0),
(412, 71, 'harga', '150000', 1, 0),
(413, 71, 'diskon', '200000', 1, 0),
(414, 71, 'berat', '', 1, 0),
(415, 72, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(416, 72, 'district', '{\"district_id\":\"282\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(417, 72, 'cover', '0', 1, 0),
(418, 72, 'story', '0', 1, 0),
(419, 72, 'harga', '150000', 1, 0),
(420, 72, 'diskon', '200000', 1, 0),
(421, 72, 'berat', '', 1, 0),
(422, 73, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(423, 73, 'district', '{\"district_id\":\"282\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(424, 73, 'cover', '0', 1, 0),
(425, 73, 'story', '0', 1, 0),
(426, 73, 'harga', '300000', 1, 0),
(427, 73, 'diskon', '350000', 1, 0),
(428, 73, 'berat', '', 1, 0),
(429, 74, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(430, 74, 'district', '{\"district_id\":\"282\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(431, 74, 'cover', '0', 1, 0),
(432, 74, 'story', '0', 1, 0),
(433, 74, 'harga', '200000', 1, 0),
(434, 74, 'diskon', '250000', 1, 0),
(435, 74, 'berat', '', 1, 0),
(436, 75, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(437, 75, 'district', '{\"district_id\":\"282\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(438, 75, 'cover', '0', 1, 0),
(439, 75, 'story', '0', 1, 0),
(440, 75, 'harga', '350000', 1, 0),
(441, 75, 'diskon', '400000', 1, 0),
(442, 75, 'berat', '', 1, 0),
(443, 76, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(444, 76, 'district', '{\"district_id\":\"282\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(445, 76, 'cover', '0', 1, 0),
(446, 76, 'story', '0', 1, 0),
(447, 76, 'harga', '200000', 1, 0),
(448, 76, 'diskon', '250000', 1, 0),
(449, 76, 'berat', '', 1, 0),
(450, 77, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(451, 77, 'district', '{\"district_id\":\"282\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(452, 77, 'cover', '0', 1, 0),
(453, 77, 'story', '0', 1, 0),
(454, 77, 'harga', '150000', 1, 0),
(455, 77, 'diskon', '200000', 1, 0),
(456, 77, 'berat', '', 1, 0),
(457, 78, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(458, 78, 'district', '{\"district_id\":\"282\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(459, 78, 'cover', '0', 1, 0),
(460, 78, 'story', '0', 1, 0),
(461, 78, 'harga', '100000', 1, 0),
(462, 78, 'diskon', '150000', 1, 0),
(463, 78, 'berat', '', 1, 0),
(464, 79, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(465, 79, 'district', '{\"district_id\":\"282\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(466, 79, 'cover', '0', 1, 0),
(467, 79, 'story', '0', 1, 0),
(468, 79, 'harga', '600000', 1, 0),
(469, 79, 'diskon', '', 1, 0),
(470, 79, 'berat', '', 1, 0),
(471, 80, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(472, 80, 'district', '{\"district_id\":\"282\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(473, 80, 'cover', '0', 1, 0),
(474, 80, 'story', '0', 1, 0),
(475, 80, 'harga', '75000', 1, 0),
(476, 80, 'diskon', '', 1, 0),
(477, 80, 'berat', '', 1, 0),
(478, 81, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(479, 81, 'district', '{\"district_id\":\"282\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(480, 81, 'cover', '0', 1, 0),
(481, 81, 'story', '0', 1, 0),
(482, 81, 'harga', '75000', 1, 0),
(483, 81, 'diskon', '', 1, 0),
(484, 81, 'berat', '', 1, 0),
(485, 82, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(486, 82, 'district', '{\"district_id\":\"282\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(487, 82, 'cover', '0', 1, 0),
(488, 82, 'story', '0', 1, 0),
(489, 82, 'harga', '75000', 1, 0),
(490, 82, 'diskon', '', 1, 0),
(491, 82, 'berat', '', 1, 0),
(492, 83, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(493, 83, 'district', '{\"district_id\":\"282\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(494, 83, 'cover', '0', 1, 0),
(495, 83, 'story', '0', 1, 0),
(496, 83, 'harga', '75000', 1, 0),
(497, 83, 'diskon', '', 1, 0),
(498, 83, 'berat', '', 1, 0),
(499, 84, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(500, 84, 'district', '{\"district_id\":\"282\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(501, 84, 'cover', '0', 1, 0),
(502, 84, 'story', '0', 1, 0),
(503, 84, 'harga', '85000', 1, 0),
(504, 84, 'diskon', '', 1, 0),
(505, 84, 'berat', '', 1, 0),
(506, 85, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(507, 85, 'district', '{\"district_id\":\"282\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(508, 85, 'cover', '0', 1, 0),
(509, 85, 'story', '0', 1, 0),
(510, 85, 'harga', '75000', 1, 0),
(511, 85, 'diskon', '', 1, 0),
(512, 85, 'berat', '', 1, 0),
(513, 86, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(514, 86, 'district', '{\"district_id\":\"282\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(515, 86, 'cover', '0', 1, 0),
(516, 86, 'story', '0', 1, 0),
(517, 86, 'harga', '75000', 1, 0),
(518, 86, 'diskon', '', 1, 0),
(519, 86, 'berat', '', 1, 0),
(520, 87, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(521, 87, 'district', '{\"district_id\":\"282\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(522, 87, 'cover', '0', 1, 0),
(523, 87, 'story', '0', 1, 0),
(524, 87, 'harga', '85000', 1, 0),
(525, 87, 'diskon', '', 1, 0),
(526, 87, 'berat', '', 1, 0),
(527, 88, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(528, 88, 'district', '{\"district_id\":\"282\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(529, 88, 'cover', '0', 1, 0),
(530, 88, 'story', '0', 1, 0),
(531, 88, 'harga', '', 1, 0),
(532, 88, 'diskon', '', 1, 0),
(533, 88, 'berat', '', 1, 0),
(534, 61, 'template', 'page-contact-us', 1, 0),
(535, 88, 'multipleprice', '[{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"4\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"1750000\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"1550000\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"1350000\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"1150000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"4\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"1700000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"1500000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"1300000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"1100000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"3\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"1350000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"1200000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"1050000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"850000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"3\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"1300000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"1150000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"1000000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"800000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"2\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"1100000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"950000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"800000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"700000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"2\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"1100000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"950000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"800000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"700000\"}]', 1, 0),
(536, 89, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(537, 89, 'district', '{\"district_id\":\"\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(538, 89, 'cover', '0', 1, 0),
(539, 89, 'story', '0', 1, 0),
(540, 89, 'multipleprice', '[{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"4\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"3100000\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"2900000\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"2700000\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"2500000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"4\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"3000000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"2800000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"2600000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"2400000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"3\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"2800000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"2650000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"2400000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"2250000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"3\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"2700000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"2550000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"2300000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"2150000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"2\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"1900000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"1750000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"1500000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"1350000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"2\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"1900000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"1750000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"1500000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"1350000\"}]', 1, 0),
(541, 90, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(542, 90, 'district', '{\"district_id\":\"282\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(543, 90, 'cover', '0', 1, 0),
(544, 90, 'story', '0', 1, 0),
(545, 90, 'multipleprice', '[{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"4\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"1650000\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"1500000\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"1350000\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"1150000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"4\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"1550000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"1300000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"1150000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"950000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"3\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"1300000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"1150000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"1000000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"850000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"3\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"1250000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"1100000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"950000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"800000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"2\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"1100000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"950000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"800000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"700000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"2\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"1100000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"950000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"800000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"700000\"}]', 1, 0),
(546, 91, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(547, 91, 'district', '{\"district_id\":\"282\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(548, 91, 'cover', '0', 1, 0),
(549, 91, 'story', '0', 1, 0),
(550, 91, 'multipleprice', '[{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"4\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"1650000\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"1500000\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"1350000\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"1150000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"4\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"1550000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"1300000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"1150000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"950000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"3\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"1300000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"1150000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"1000000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"850000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"3\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"1250000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"1100000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"950000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"800000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"2\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"1100000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"950000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"800000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"700000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"2\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"1100000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"950000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"800000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"700000\"}]', 1, 0),
(551, 92, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(552, 92, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(553, 92, 'cover', '0', 1, 0),
(554, 92, 'story', '0', 1, 0),
(555, 92, 'multipleprice', '[{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"4\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"2300000\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"2100000\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"1900000\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"1700000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"4\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"2200000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"2000000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"1800000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"1600000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"3\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"1700000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"1550000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"1400000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"1250000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"3\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"1600000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"1450000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"1300000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"1200000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"2\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"1150000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"1000000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"850000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"800000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"2\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"1150000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"1000000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"850000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"800000\"}]', 1, 0),
(556, 93, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(557, 93, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(558, 93, 'cover', '0', 1, 0),
(559, 93, 'story', '0', 1, 0),
(560, 93, 'multipleprice', '[{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"4\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"2400000\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"2200000\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"2000000\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"1800000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"4\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"2300000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"2100000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"1900000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"1700000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"3\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"1950000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"1800000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"1650000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"1500000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"3\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"1900000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"1750000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"1600000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"1450000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"2\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"1350000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"1200000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"1050000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"900000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"2\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"1350000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"1200000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"1050000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"900000\"}]', 1, 0),
(561, 94, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(562, 94, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(563, 94, 'cover', '0', 1, 0),
(564, 94, 'story', '0', 1, 0),
(565, 94, 'multipleprice', '[{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"4\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"2300000\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"2100000\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"1900000\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"1700000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"4\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"2200000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"2000000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"1800000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"1600000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"3\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"1700000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"1550000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"1400000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"1250000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"3\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"1600000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"1450000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"1300000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"1200000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"2\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"1150000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"1000000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"850000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"800000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"2\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"1150000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"1000000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"850000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"800000\"}]', 1, 0),
(566, 95, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(567, 95, 'district', '{\"district_id\":\"282\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(568, 95, 'cover', '0', 1, 0),
(569, 95, 'story', '0', 1, 0),
(570, 95, 'multipleprice', '[{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"4\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"2900000\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"2700000\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"2500000\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"2300000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"4\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"2800000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"2600000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"2400000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"2200000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"3\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"2250000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"2100000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"1950000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"1700000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"3\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"2150000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"2000000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"1850000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"1600000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"2\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"1550000\\t\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"1400000\\t\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"1250000\\t\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"1100000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"2\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"1550000\\t\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"1400000\\t\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"1250000\\t\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"1100000\"}]', 1, 0),
(571, 96, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(572, 96, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(573, 96, 'cover', '0', 1, 0),
(574, 96, 'story', '0', 1, 0),
(575, 96, 'multipleprice', '[{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"4\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"3100000\\t\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"2900000\\t\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"2700000\\t\"},{\"price_name\":\"Aruna Senggigi Hotel\",\"price_price\":\"2500000\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"4\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"3000000\\t\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"2800000\\t\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"2600000\\t\"},{\"price_name\":\"Lombok Raya Hotel\",\"price_price\":\"2400000\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"3\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"2800000\\t\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"2650000\\t\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"2400000\\t\"},{\"price_name\":\"Aston Inn Mataram\",\"price_price\":\"2250000\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"3\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"2700000\\t\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"2550000\\t\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"2300000\\t\"},{\"price_name\":\"Puri Indah Hotel & Convention\",\"price_price\":\"2150000\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"2\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"1900000\\t\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"1750000\\t\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"1500000\\t\"},{\"price_name\":\"Hotel Limoes\",\"price_price\":\"1350000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"2\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"1900000\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"1750000\\t\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"1500000\\t\"},{\"price_name\":\"Hotel Puri Senggigi\",\"price_price\":\"1350000\"}]', 1, 0),
(576, 60, 'template', 'page-tour-package', 1, 0),
(577, 97, 'authors', '[{\"author_id\":\"27\",\"author_name\":\"Ade Hery S\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(578, 97, 'district', '{\"district_id\":\"282\",\"district_name\":\"Kabupaten Lombok Tengah\"}', 1, 0),
(579, 97, 'cover', '0', 1, 0),
(580, 97, 'story', '0', 1, 0),
(581, 97, 'harga', '350000', 1, 0),
(582, 97, 'diskon', '', 1, 0),
(583, 97, 'berat', '', 1, 0),
(584, 98, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null},{\"author_id\":\"2\",\"author_name\":\"Admin Toko Mainan\",\"author_groups\":\"2\",\"author_avatar\":null,\"author_join\":null},{\"author_id\":\"50\",\"author_name\":\"Alexandria\",\"author_groups\":\"4\",\"author_avatar\":null,\"author_join\":null},{\"author_id\":\"21\",\"author_name\":\"Angelo\",\"author_groups\":\"5\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(585, 98, 'tags', '[{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(586, 98, 'district', '{\"district_id\":\"2\",\"district_name\":\"Kabupaten Aceh Barat Daya\"}', 1, 0),
(587, 98, 'cover', '45', 1, 0),
(588, 98, 'story', '43', 1, 0),
(589, 98, 'harga', '10000', 1, 0),
(590, 98, 'diskon', '30', 1, 0),
(591, 98, 'berat', '2', 1, 0),
(592, 99, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"},{\"author_id\":\"26\",\"author_name\":\"Adriana\",\"author_groups\":\"2\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(593, 99, 'tags', '[{\"tag_id\":\"3\",\"tag_name\":\"Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"2\",\"tag_name\":\"Mainan Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(594, 99, 'district', '{\"district_id\":\"5\",\"district_name\":\"Kabupaten Aceh Selatan\"}', 1, 0),
(595, 99, 'cover', '121', 1, 0),
(596, 99, 'story', '121', 1, 0),
(597, 100, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(598, 100, 'tags', '[{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(599, 100, 'district', '{\"district_id\":\"9\",\"district_name\":\"Kabupaten Aceh Tenggara\"}', 1, 0),
(600, 100, 'cover', '96', 1, 0),
(601, 100, 'story', '96', 1, 0),
(602, 100, 'hit', '2', 1, 0),
(603, 101, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(604, 101, 'cover', '96', 1, 0),
(605, 101, 'story', '96', 1, 0),
(606, 101, 'slug', 'about', 1, 0),
(607, 101, 'template', 'page-general', 1, 0),
(608, 102, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(609, 102, 'tags', '[{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"51\",\"tag_name\":\"Mainan UNO Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"49\",\"tag_name\":\"Permainan UNO\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"47\",\"tag_name\":\"UNO Stacko\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"45\",\"tag_name\":\"Mainan Uno\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(610, 102, 'district', '{\"district_id\":\"4\",\"district_name\":\"Kabupaten Aceh Jaya\"}', 1, 0),
(611, 102, 'cover', '97', 1, 0),
(612, 102, 'story', '97', 1, 0),
(613, 102, 'hit', '3', 1, 0),
(614, 103, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(615, 103, 'tags', '[{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"39\",\"tag_name\":\"Remote Control Helicopter\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"36\",\"tag_name\":\"Remote Control Sport Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(616, 103, 'district', '{\"district_id\":\"5\",\"district_name\":\"Kabupaten Aceh Selatan\"}', 1, 0),
(617, 103, 'cover', '97', 1, 0),
(618, 103, 'story', '96', 1, 0),
(619, 104, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(620, 104, 'tags', '[{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(621, 104, 'district', '{\"district_id\":\"5\",\"district_name\":\"Kabupaten Aceh Selatan\"}', 1, 0),
(622, 104, 'cover', '96', 1, 0),
(623, 104, 'story', '96', 1, 0),
(624, 105, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(625, 105, 'tags', '[{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"40\",\"tag_name\":\"Helicopter Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"37\",\"tag_name\":\"Mobil Model Sport Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"59\",\"tag_name\":\"Talking TomCat Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(626, 105, 'district', '{\"district_id\":\"5\",\"district_name\":\"Kabupaten Aceh Selatan\"}', 1, 0),
(627, 105, 'cover', '107', 1, 0),
(628, 105, 'story', '107', 1, 0),
(629, 105, 'hit', '1', 1, 1),
(630, 106, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(631, 106, 'tags', '[{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(632, 106, 'district', '{\"district_id\":\"5\",\"district_name\":\"Kabupaten Aceh Selatan\"}', 1, 0),
(633, 106, 'cover', '96', 1, 0),
(634, 106, 'story', '96', 1, 0),
(635, 106, 'hit', '1', 1, 1),
(636, 103, 'hit', '2', 1, 0),
(637, 103, 'reactall', '{\"total\":1,\"senang\":0,\"terhibur\":0,\"sedih\":1,\"marah\":0,\"terinspirasi\":0,\"seram\":0}', 1, 1),
(638, 100, 'reactall', '{\"total\":1,\"senang\":0,\"terhibur\":0,\"sedih\":1,\"marah\":0,\"terinspirasi\":0,\"seram\":0}', 1, 1),
(639, 107, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(640, 107, 'tags', '[{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(641, 107, 'district', '{\"district_id\":\"3\",\"district_name\":\"Kabupaten Aceh Besar\"}', 1, 0),
(642, 107, 'cover', '97', 1, 0),
(643, 107, 'story', '96', 1, 0),
(644, 108, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(645, 108, 'tags', '[{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(646, 108, 'district', '{\"district_id\":\"6\",\"district_name\":\"Kabupaten Aceh Singkil\"}', 1, 0),
(647, 108, 'cover', '107', 1, 0),
(648, 108, 'story', '96', 1, 0),
(649, 109, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(650, 109, 'tags', '[{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(651, 109, 'district', '{\"district_id\":\"37\",\"district_name\":\"Kabupaten Nias Selatan\"}', 1, 0),
(652, 109, 'cover', '97', 1, 0),
(653, 109, 'story', '96', 1, 0),
(654, 110, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(655, 110, 'tags', '[{\"tag_id\":\"1\",\"tag_name\":\"Mainan\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(656, 110, 'district', '{\"district_id\":\"17\",\"district_name\":\"Kabupaten Pidie Jaya\"}', 1, 0),
(657, 110, 'cover', '96', 1, 0),
(658, 110, 'story', '107', 1, 0),
(659, 111, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(660, 111, 'tags', '[{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(661, 111, 'district', '{\"district_id\":\"473\",\"district_name\":\"Kabupaten Biak Numfor\"}', 1, 0),
(662, 111, 'cover', '97', 1, 0),
(663, 111, 'story', '97', 1, 0),
(664, 112, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0);
INSERT INTO `content_attribute` (`id`, `content_id`, `content_attribute_key`, `content_attribute_val`, `content_attribute_status`, `content_attribute_position`) VALUES
(665, 112, 'tags', '[{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(666, 112, 'district', '{\"district_id\":\"458\",\"district_name\":\"Kabupaten Fakfak\"}', 1, 0),
(667, 112, 'cover', '97', 1, 0),
(668, 112, 'story', '96', 1, 0),
(669, 113, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(670, 113, 'district', '{\"district_id\":\"4\",\"district_name\":\"Kabupaten Aceh Jaya\"}', 1, 0),
(671, 113, 'cover', '96', 1, 0),
(672, 113, 'story', '96', 1, 0),
(673, 114, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(674, 114, 'tags', '[{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(675, 114, 'district', '{\"district_id\":\"477\",\"district_name\":\"Kabupaten Boven Digoel\"}', 1, 0),
(676, 114, 'cover', '97', 1, 0),
(677, 114, 'story', '96', 1, 0),
(678, 115, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(679, 115, 'tags', '[{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(680, 115, 'district', '{\"district_id\":\"59\",\"district_name\":\"Kabupaten Kepulauan Mentawai\"}', 1, 0),
(681, 115, 'cover', '107', 1, 0),
(682, 115, 'story', '96', 1, 0),
(683, 115, 'hit', '1', 1, 1),
(684, 113, 'hit', '2', 1, 0),
(685, 107, 'hit', '1', 1, 1),
(686, 116, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(687, 116, 'district', '{\"district_id\":\"\",\"district_name\":\"\"}', 1, 0),
(688, 116, 'cover', '0', 1, 0),
(689, 116, 'story', '0', 1, 0),
(690, 117, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(691, 117, 'tags', '[{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(692, 117, 'district', '{\"district_id\":\"17\",\"district_name\":\"Kabupaten Pidie Jaya\"}', 1, 0),
(693, 117, 'cover', '97', 1, 0),
(694, 117, 'story', '96', 1, 0),
(695, 116, 'hit', '1', 1, 1),
(696, 118, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(697, 118, 'district', '{\"district_id\":\"3\",\"district_name\":\"Kabupaten Aceh Besar\"}', 1, 0),
(698, 118, 'cover', '107', 1, 0),
(699, 118, 'story', '96', 1, 0),
(700, 118, 'hit', '1', 1, 1),
(701, 117, 'hit', '1', 1, 1),
(702, 119, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(703, 119, 'tags', '[{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(704, 119, 'district', '{\"district_id\":\"5\",\"district_name\":\"Kabupaten Aceh Selatan\"}', 1, 0),
(705, 119, 'cover', '107', 1, 0),
(706, 119, 'story', '96', 1, 0),
(707, 120, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(708, 120, 'tags', '[{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(709, 120, 'district', '{\"district_id\":\"18\",\"district_name\":\"Kabupaten Simeulue\"}', 1, 0),
(710, 120, 'cover', '107', 1, 0),
(711, 120, 'story', '96', 1, 0),
(712, 121, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(713, 121, 'tags', '[{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"31\",\"tag_name\":\"Formula One Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"29\",\"tag_name\":\"Remote Control Formula One\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(714, 121, 'district', '{\"district_id\":\"473\",\"district_name\":\"Kabupaten Biak Numfor\"}', 1, 0),
(715, 121, 'cover', '97', 1, 0),
(716, 121, 'story', '107', 1, 0),
(717, 122, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(718, 122, 'tags', '[{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"3\",\"tag_name\":\"Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(719, 122, 'district', '{\"district_id\":\"4\",\"district_name\":\"Kabupaten Aceh Jaya\"}', 1, 0),
(720, 122, 'cover', '97', 1, 0),
(721, 122, 'story', '96', 1, 0),
(722, 123, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(723, 123, 'tags', '[{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(724, 123, 'district', '{\"district_id\":\"17\",\"district_name\":\"Kabupaten Pidie Jaya\"}', 1, 0),
(725, 123, 'cover', '96', 1, 0),
(726, 123, 'story', '107', 1, 0),
(727, 123, 'hit', '2', 1, 0),
(728, 124, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(729, 124, 'tags', '[{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(730, 124, 'district', '{\"district_id\":\"7\",\"district_name\":\"Kabupaten Aceh Tamiang\"}', 1, 0),
(731, 124, 'cover', '96', 1, 0),
(732, 124, 'story', '107', 1, 0),
(733, 110, 'hit', '1', 1, 1),
(734, 112, 'hit', '3', 1, 0),
(735, 125, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(736, 125, 'tags', '[{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"2\",\"tag_name\":\"Mainan Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(737, 125, 'district', '{\"district_id\":\"3\",\"district_name\":\"Kabupaten Aceh Besar\"}', 1, 0),
(738, 125, 'cover', '97', 1, 0),
(739, 125, 'story', '107', 1, 0),
(740, 126, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(741, 126, 'district', '{\"district_id\":\"3\",\"district_name\":\"Kabupaten Aceh Besar\"}', 1, 0),
(742, 126, 'cover', '97', 1, 0),
(743, 126, 'story', '97', 1, 0),
(744, 127, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(745, 127, 'tags', '[{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(746, 127, 'district', '{\"district_id\":\"4\",\"district_name\":\"Kabupaten Aceh Jaya\"}', 1, 0),
(747, 127, 'cover', '97', 1, 0),
(748, 127, 'story', '96', 1, 0),
(749, 128, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(750, 128, 'tags', '[{\"tag_id\":\"3\",\"tag_name\":\"Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(751, 128, 'district', '{\"district_id\":\"108\",\"district_name\":\"Kabupaten Tanjung Jabung Barat\"}', 1, 0),
(752, 128, 'cover', '96', 1, 0),
(753, 128, 'story', '107', 1, 0),
(754, 129, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(755, 129, 'tags', '[{\"tag_id\":\"51\",\"tag_name\":\"Mainan UNO Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"49\",\"tag_name\":\"Permainan UNO\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"47\",\"tag_name\":\"UNO Stacko\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"45\",\"tag_name\":\"Mainan Uno\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(756, 129, 'district', '{\"district_id\":\"7\",\"district_name\":\"Kabupaten Aceh Tamiang\"}', 1, 0),
(757, 129, 'cover', '97', 1, 0),
(758, 129, 'story', '97', 1, 0),
(759, 130, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(760, 130, 'tags', '[{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(761, 130, 'district', '{\"district_id\":\"5\",\"district_name\":\"Kabupaten Aceh Selatan\"}', 1, 0),
(762, 130, 'cover', '96', 1, 0),
(763, 130, 'story', '107', 1, 0),
(764, 131, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(765, 131, 'tags', '[{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(766, 131, 'district', '{\"district_id\":\"9\",\"district_name\":\"Kabupaten Aceh Tenggara\"}', 1, 0),
(767, 131, 'cover', '107', 1, 0),
(768, 131, 'story', '97', 1, 0),
(769, 132, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(770, 132, 'tags', '[{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(771, 132, 'district', '{\"district_id\":\"8\",\"district_name\":\"Kabupaten Aceh Tengah\"}', 1, 0),
(772, 132, 'cover', '97', 1, 0),
(773, 132, 'story', '107', 1, 0),
(774, 133, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(775, 133, 'tags', '[{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"41\",\"tag_name\":\"Helicopter Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"39\",\"tag_name\":\"Remote Control Helicopter\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(776, 133, 'district', '{\"district_id\":\"6\",\"district_name\":\"Kabupaten Aceh Singkil\"}', 1, 0),
(777, 133, 'cover', '96', 1, 0),
(778, 133, 'story', '96', 1, 0),
(779, 134, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(780, 134, 'tags', '[{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(781, 134, 'district', '{\"district_id\":\"2\",\"district_name\":\"Kabupaten Aceh Barat Daya\"}', 1, 0),
(782, 134, 'cover', '96', 1, 0),
(783, 134, 'story', '96', 1, 0),
(784, 135, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(785, 135, 'tags', '[{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(786, 135, 'district', '{\"district_id\":\"392\",\"district_name\":\"Kota Makassar\"}', 1, 0),
(787, 135, 'cover', '96', 1, 0),
(788, 135, 'story', '97', 1, 0),
(789, 136, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(790, 136, 'tags', '[{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"2\",\"tag_name\":\"Mainan Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(791, 136, 'district', '{\"district_id\":\"34\",\"district_name\":\"Kabupaten Mandailing Natal\"}', 1, 0),
(792, 136, 'cover', '96', 1, 0),
(793, 136, 'story', '96', 1, 0),
(794, 137, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(795, 137, 'tags', '[{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(796, 137, 'district', '{\"district_id\":\"124\",\"district_name\":\"Kabupaten Empat Lawang\"}', 1, 0),
(797, 137, 'cover', '96', 1, 0),
(798, 137, 'story', '96', 1, 0),
(799, 133, 'reactall', '{\"total\":17,\"senang\":4,\"terhibur\":2,\"sedih\":3,\"marah\":5,\"terinspirasi\":2,\"seram\":1}', 1, 1),
(800, 137, 'reactall', '{\"total\":2,\"senang\":0,\"terhibur\":1,\"sedih\":0,\"marah\":1,\"terinspirasi\":0,\"seram\":0}', 1, 1),
(801, 138, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(802, 138, 'tags', '[{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(803, 138, 'district', '{\"district_id\":\"20\",\"district_name\":\"Kota Langsa\"}', 1, 0),
(804, 138, 'cover', '97', 1, 0),
(805, 138, 'story', '107', 1, 0),
(806, 139, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(807, 139, 'tags', '[{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(808, 139, 'district', '{\"district_id\":\"4\",\"district_name\":\"Kabupaten Aceh Jaya\"}', 1, 0),
(809, 139, 'cover', '96', 1, 0),
(810, 139, 'story', '107', 1, 0),
(811, 140, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(812, 140, 'tags', '[{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"33\",\"tag_name\":\"Remote Control Tank\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"31\",\"tag_name\":\"Formula One Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(813, 140, 'district', '{\"district_id\":\"38\",\"district_name\":\"Kabupaten Nias Utara\"}', 1, 0),
(814, 140, 'cover', '107', 1, 0),
(815, 140, 'story', '107', 1, 0),
(816, 141, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null},{\"author_id\":\"50\",\"author_name\":\"Alexandria\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(817, 141, 'tags', '[{\"tag_id\":\"3\",\"tag_name\":\"Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(818, 141, 'district', '{\"district_id\":\"21\",\"district_name\":\"Kota Lhokseumawe\"}', 1, 0),
(819, 141, 'cover', '107', 1, 0),
(820, 141, 'story', '107', 1, 0),
(821, 142, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(822, 142, 'tags', '[{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"43\",\"tag_name\":\"Drone Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"41\",\"tag_name\":\"Helicopter Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(823, 142, 'district', '{\"district_id\":\"2\",\"district_name\":\"Kabupaten Aceh Barat Daya\"}', 1, 0),
(824, 142, 'cover', '96', 1, 0),
(825, 142, 'story', '96', 1, 0),
(826, 143, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(827, 143, 'tags', '[{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(828, 143, 'district', '{\"district_id\":\"17\",\"district_name\":\"Kabupaten Pidie Jaya\"}', 1, 0),
(829, 143, 'cover', '97', 1, 0),
(830, 143, 'story', '96', 1, 0),
(831, 144, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(832, 144, 'tags', '[{\"tag_id\":\"41\",\"tag_name\":\"Helicopter Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"39\",\"tag_name\":\"Remote Control Helicopter\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"38\",\"tag_name\":\"Helicopter\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"36\",\"tag_name\":\"Remote Control Sport Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(833, 144, 'district', '{\"district_id\":\"6\",\"district_name\":\"Kabupaten Aceh Singkil\"}', 1, 0),
(834, 144, 'cover', '112', 1, 0),
(835, 144, 'story', '107', 1, 0),
(836, 145, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(837, 145, 'tags', '[{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(838, 145, 'district', '{\"district_id\":\"39\",\"district_name\":\"Kabupaten Padang Lawas\"}', 1, 0),
(839, 145, 'cover', '111', 1, 0),
(840, 145, 'story', '111', 1, 0),
(841, 146, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(842, 146, 'tags', '[{\"tag_id\":\"53\",\"tag_name\":\"Evamat Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"51\",\"tag_name\":\"Mainan UNO Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"49\",\"tag_name\":\"Permainan UNO\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(843, 146, 'district', '{\"district_id\":\"18\",\"district_name\":\"Kabupaten Simeulue\"}', 1, 0),
(844, 146, 'cover', '112', 1, 0),
(845, 146, 'story', '97', 1, 0),
(846, 146, 'hit', '4', 1, 0),
(847, 145, 'hit', '1', 1, 1),
(848, 124, 'hit', '1', 1, 1),
(849, 126, 'hit', '1', 1, 1),
(850, 133, 'hit', '2', 1, 0),
(851, 135, 'hit', '2', 1, 0),
(852, 135, 'reactall', '{\"total\":17,\"senang\":6,\"terhibur\":2,\"sedih\":3,\"marah\":3,\"terinspirasi\":2,\"seram\":1}', 1, 1),
(853, 119, 'hit', '1', 1, 1),
(854, 119, 'reactall', '{\"total\":1,\"senang\":0,\"terhibur\":1,\"sedih\":0,\"marah\":0,\"terinspirasi\":0,\"seram\":0}', 1, 1),
(855, 123, 'reactall', '{\"total\":1,\"senang\":0,\"terhibur\":0,\"sedih\":0,\"marah\":0,\"terinspirasi\":1,\"seram\":0}', 1, 1),
(856, 141, 'hit', '1', 1, 1),
(857, 137, 'hit', '1', 1, 1),
(858, 112, 'reactall', '{\"total\":1,\"senang\":1,\"terhibur\":0,\"sedih\":0,\"marah\":0,\"terinspirasi\":0,\"seram\":0}', 1, 1),
(859, 131, 'hit', '1', 1, 1),
(860, 147, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(861, 147, 'tags', '[{\"tag_id\":\"3\",\"tag_name\":\"Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"2\",\"tag_name\":\"Mainan Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(862, 147, 'district', '{\"district_id\":\"71\",\"district_name\":\"Kota Padang Panjang\"}', 1, 0),
(863, 147, 'cover', '111', 1, 0),
(864, 147, 'story', '96', 1, 0),
(865, 147, 'hit', '1', 1, 1),
(866, 148, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(867, 148, 'tags', '[{\"tag_id\":\"11\",\"tag_name\":\"Aneka Mainan Anak\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(868, 148, 'district', '{\"district_id\":\"2\",\"district_name\":\"Kabupaten Aceh Barat Daya\"}', 1, 0),
(869, 148, 'cover', '121', 1, 0),
(870, 148, 'story', '121', 1, 0),
(871, 149, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(872, 149, 'tags', '[{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"2\",\"tag_name\":\"Mainan Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(873, 149, 'district', '{\"district_id\":\"458\",\"district_name\":\"Kabupaten Fakfak\"}', 1, 0),
(874, 149, 'cover', '121', 1, 0),
(875, 149, 'story', '121', 1, 0),
(876, 150, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(877, 150, 'tags', '[{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(878, 150, 'district', '{\"district_id\":\"16\",\"district_name\":\"Kabupaten Pidie\"}', 1, 0),
(879, 150, 'cover', '122', 1, 0),
(880, 150, 'story', '122', 1, 0),
(881, 151, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(882, 151, 'tags', '[{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(883, 151, 'district', '{\"district_id\":\"2\",\"district_name\":\"Kabupaten Aceh Barat Daya\"}', 1, 0),
(884, 151, 'cover', '122', 1, 0),
(885, 151, 'story', '121', 1, 0),
(886, 152, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(887, 152, 'tags', '[{\"tag_id\":\"43\",\"tag_name\":\"Drone Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"41\",\"tag_name\":\"Helicopter Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"39\",\"tag_name\":\"Remote Control Helicopter\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"37\",\"tag_name\":\"Mobil Model Sport Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"35\",\"tag_name\":\"Remote Control Model - Sport\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(888, 152, 'district', '{\"district_id\":\"2\",\"district_name\":\"Kabupaten Aceh Barat Daya\"}', 1, 0),
(889, 152, 'cover', '122', 1, 0),
(890, 152, 'story', '122', 1, 0),
(891, 153, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(892, 153, 'district', '{\"district_id\":\"10\",\"district_name\":\"Kabupaten Aceh Timur\"}', 1, 0),
(893, 153, 'cover', '121', 1, 0),
(894, 153, 'story', '121', 1, 0),
(895, 154, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":\"\",\"author_join\":\"\"}]', 1, 0),
(896, 154, 'tags', '[{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"4\",\"tag_name\":\"Mainan Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(897, 154, 'district', '{\"district_id\":\"163\",\"district_name\":\"Kota Jakarta Selatan\"}', 1, 0),
(898, 154, 'cover', '123', 1, 0),
(899, 154, 'story', '123', 1, 0),
(900, 155, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(901, 155, 'tags', '[{\"tag_id\":\"9\",\"tag_name\":\"Mainan Anak Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"6\",\"tag_name\":\"Mainan Murah Bekasi\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"10\",\"tag_name\":\"Mainan Anak Bekasi Punya\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(902, 155, 'district', '{\"district_id\":\"2\",\"district_name\":\"Kabupaten Aceh Barat Daya\"}', 1, 0),
(903, 155, 'cover', '123', 1, 0),
(904, 155, 'story', '124', 1, 0),
(905, 156, 'authors', '[{\"author_id\":\"1\",\"author_name\":\"Nedya Amrih Prakasa\",\"author_groups\":\"3\",\"author_avatar\":null,\"author_join\":null}]', 1, 0),
(906, 156, 'tags', '[{\"tag_id\":\"5\",\"tag_name\":\"Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"12\",\"tag_name\":\"Aneka Mainan Anak Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"53\",\"tag_name\":\"Evamat Murah\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"49\",\"tag_name\":\"Permainan UNO\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"45\",\"tag_name\":\"Mainan Uno\",\"tag_status\":\"1\",\"tag_show\":\"1\"},{\"tag_id\":\"48\",\"tag_name\":\"UNO Indonesia\",\"tag_status\":\"1\",\"tag_show\":\"1\"}]', 1, 0),
(907, 156, 'district', '{\"district_id\":\"49\",\"district_name\":\"Kota Binjai\"}', 1, 0),
(908, 156, 'cover', '124', 1, 0),
(909, 156, 'story', '124', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `list_content_chanel_1`
--

CREATE TABLE `list_content_chanel_1` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `chanel_id` bigint(100) NOT NULL,
  `content_id` bigint(255) NOT NULL,
  `position` int(11) NOT NULL,
  `hold` bigint(20) NOT NULL,
  `status` int(20) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `list_content_chanel_1`
--

INSERT INTO `list_content_chanel_1` (`id`, `chanel_id`, `content_id`, `position`, `hold`, `status`) VALUES
(1, 7, 13, 0, 0, 3),
(2, 0, 13, 0, 0, 3),
(3, 7, 14, 0, 0, 3),
(4, 0, 14, 0, 0, 3),
(5, 7, 15, 0, 0, 3),
(6, 0, 15, 0, 0, 3),
(7, 7, 16, 0, 0, 3),
(8, 0, 16, 0, 0, 3),
(9, 7, 17, 0, 0, 3),
(10, 0, 17, 0, 0, 3),
(11, 7, 18, 0, 0, 3),
(12, 0, 18, 0, 0, 3),
(13, 7, 19, 0, 0, 3),
(14, 0, 19, 0, 0, 3),
(15, 7, 20, 0, 0, 3),
(16, 0, 20, 0, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `list_content_chanel_2`
--

CREATE TABLE `list_content_chanel_2` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `chanel_id` bigint(100) NOT NULL,
  `content_id` bigint(255) NOT NULL,
  `position` int(11) NOT NULL,
  `hold` bigint(20) NOT NULL,
  `status` int(20) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `list_content_chanel_2`
--

INSERT INTO `list_content_chanel_2` (`id`, `chanel_id`, `content_id`, `position`, `hold`, `status`) VALUES
(1, 9, 23, 2, 0, 3),
(2, 8, 23, 2, 0, 3),
(3, 5, 23, 2, 0, 3),
(4, 0, 23, 2, 0, 3),
(5, 9, 24, 0, 0, 3),
(6, 8, 24, 0, 0, 3),
(7, 5, 24, 0, 0, 3),
(8, 0, 24, 0, 0, 3),
(9, 9, 25, 2, 0, 3),
(10, 8, 25, 2, 0, 3),
(11, 5, 25, 2, 0, 3),
(12, 0, 25, 2, 0, 3),
(13, 9, 26, 2, 0, 3),
(14, 8, 26, 2, 0, 3),
(15, 5, 26, 2, 0, 3),
(16, 0, 26, 2, 0, 3),
(17, 9, 27, 0, 0, 3),
(18, 8, 27, 2, 0, 3),
(19, 5, 27, 2, 0, 3),
(20, 0, 27, 2, 0, 3),
(21, 9, 28, 2, 0, 3),
(22, 8, 28, 2, 0, 3),
(23, 5, 28, 2, 0, 3),
(24, 0, 28, 2, 0, 3),
(25, 9, 29, 2, 0, 3),
(26, 8, 29, 2, 0, 3),
(27, 5, 29, 2, 0, 3),
(28, 0, 29, 2, 0, 3),
(29, 9, 30, 2, 0, 3),
(30, 8, 30, 2, 0, 3),
(31, 5, 30, 2, 0, 3),
(32, 0, 30, 2, 0, 3),
(33, 9, 31, 2, 0, 3),
(34, 8, 31, 2, 0, 3),
(35, 5, 31, 2, 0, 3),
(36, 0, 31, 2, 0, 3),
(37, 29, 32, 2, 0, 3),
(38, 28, 32, 2, 0, 3),
(39, 5, 32, 2, 0, 3),
(40, 0, 32, 2, 0, 3),
(41, 29, 33, 2, 0, 3),
(42, 28, 33, 2, 0, 3),
(43, 5, 33, 2, 0, 3),
(44, 0, 33, 2, 0, 3),
(45, 29, 34, 1, 0, 3),
(46, 28, 34, 1, 0, 3),
(47, 5, 34, 2, 0, 3),
(48, 0, 34, 2, 0, 3),
(49, 9, 35, 2, 0, 3),
(50, 8, 35, 2, 0, 3),
(51, 5, 35, 2, 0, 3),
(52, 0, 35, 2, 0, 3),
(53, 9, 36, 2, 0, 3),
(54, 8, 36, 2, 0, 3),
(55, 5, 36, 2, 0, 3),
(56, 0, 36, 2, 0, 3),
(57, 9, 37, 2, 0, 3),
(58, 8, 37, 2, 0, 3),
(59, 5, 37, 2, 0, 3),
(60, 0, 37, 2, 0, 3),
(61, 9, 38, 1, 0, 3),
(62, 8, 38, 2, 0, 3),
(63, 5, 38, 2, 0, 3),
(64, 0, 38, 2, 0, 3),
(65, 16, 39, 2, 0, 3),
(66, 14, 39, 2, 0, 3),
(67, 5, 39, 2, 0, 3),
(68, 0, 39, 2, 0, 3),
(69, 16, 40, 2, 0, 3),
(70, 14, 40, 2, 0, 3),
(71, 5, 40, 2, 0, 3),
(72, 0, 40, 2, 0, 3),
(73, 16, 41, 2, 0, 3),
(74, 14, 41, 2, 0, 3),
(75, 5, 41, 2, 0, 3),
(76, 0, 41, 2, 0, 3),
(77, 16, 42, 1, 0, 3),
(78, 14, 42, 1, 0, 3),
(79, 5, 42, 2, 0, 3),
(80, 0, 42, 2, 0, 3),
(81, 12, 43, 1, 0, 3),
(82, 8, 43, 2, 0, 3),
(83, 5, 43, 2, 0, 3),
(84, 0, 43, 2, 0, 3),
(85, 32, 44, 1, 0, 3),
(86, 5, 44, 2, 0, 3),
(87, 0, 44, 2, 0, 3),
(88, 20, 45, 2, 0, 3),
(89, 8, 45, 2, 0, 3),
(90, 5, 45, 2, 0, 3),
(91, 0, 45, 2, 0, 3),
(92, 20, 46, 1, 0, 3),
(93, 8, 46, 1, 0, 3),
(94, 5, 46, 1, 0, 3),
(95, 0, 46, 2, 0, 3),
(96, 9, 98, 2, 0, 3),
(97, 8, 98, 1, 0, 3),
(98, 5, 98, 1, 0, 3),
(99, 0, 98, 0, 0, 3),
(100, 51, 99, 1, 0, 3),
(101, 50, 99, 2, 0, 3),
(102, 0, 99, 2, 0, 3),
(103, 74, 148, 2, 0, 3),
(104, 0, 148, 2, 0, 3),
(105, 74, 149, 2, 0, 3),
(106, 0, 149, 1, 0, 3),
(107, 74, 150, 2, 0, 3),
(108, 0, 150, 1, 0, 3),
(109, 74, 151, 1, 0, 3),
(110, 0, 151, 1, 0, 3),
(111, 74, 152, 1, 1, 3),
(112, 0, 152, 1, 0, 3),
(113, 74, 153, 1, 2, 3),
(114, 0, 153, 1, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `list_content_chanel_3`
--

CREATE TABLE `list_content_chanel_3` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `chanel_id` bigint(100) NOT NULL,
  `content_id` bigint(255) NOT NULL,
  `position` int(11) NOT NULL,
  `hold` bigint(20) NOT NULL,
  `status` int(20) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `list_content_chanel_4`
--

CREATE TABLE `list_content_chanel_4` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `chanel_id` bigint(100) NOT NULL,
  `content_id` bigint(255) NOT NULL,
  `position` int(11) NOT NULL,
  `hold` bigint(20) NOT NULL,
  `status` int(20) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `list_content_chanel_4`
--

INSERT INTO `list_content_chanel_4` (`id`, `chanel_id`, `content_id`, `position`, `hold`, `status`) VALUES
(1, 45, 62, 0, 0, 3),
(2, 43, 62, 0, 0, 3),
(3, 0, 62, 0, 0, 3),
(4, 47, 63, 0, 0, 3),
(5, 43, 63, 0, 0, 3),
(6, 0, 63, 0, 0, 3),
(7, 45, 64, 0, 0, 3),
(8, 43, 64, 0, 0, 3),
(9, 0, 64, 0, 0, 3),
(10, 45, 65, 0, 0, 3),
(11, 43, 65, 0, 0, 3),
(12, 0, 65, 0, 0, 3),
(13, 45, 66, 0, 0, 3),
(14, 43, 66, 0, 0, 3),
(15, 0, 66, 0, 0, 3),
(16, 45, 67, 0, 0, 3),
(17, 43, 67, 0, 0, 3),
(18, 0, 67, 0, 0, 3),
(19, 45, 68, 0, 0, 3),
(20, 43, 68, 0, 0, 3),
(21, 0, 68, 0, 0, 3),
(22, 45, 69, 0, 0, 3),
(23, 43, 69, 0, 0, 3),
(24, 0, 69, 0, 0, 3),
(25, 45, 70, 0, 0, 3),
(26, 43, 70, 0, 0, 3),
(27, 0, 70, 0, 0, 3),
(28, 46, 71, 0, 0, 3),
(29, 43, 71, 0, 0, 3),
(30, 0, 71, 0, 0, 3),
(31, 46, 72, 0, 0, 3),
(32, 43, 72, 0, 0, 3),
(33, 0, 72, 0, 0, 3),
(34, 46, 73, 0, 0, 3),
(35, 43, 73, 0, 0, 3),
(36, 0, 73, 0, 0, 3),
(37, 46, 74, 0, 0, 3),
(38, 43, 74, 0, 0, 3),
(39, 0, 74, 0, 0, 3),
(40, 46, 75, 0, 0, 3),
(41, 43, 75, 0, 0, 3),
(42, 0, 75, 0, 0, 3),
(43, 46, 76, 0, 0, 3),
(44, 43, 76, 0, 0, 3),
(45, 0, 76, 0, 0, 3),
(46, 46, 77, 0, 0, 3),
(47, 43, 77, 0, 0, 3),
(48, 0, 77, 0, 0, 3),
(49, 46, 78, 0, 0, 3),
(50, 43, 78, 0, 0, 3),
(51, 0, 78, 0, 0, 3),
(52, 47, 79, 0, 0, 3),
(53, 43, 79, 0, 0, 3),
(54, 0, 79, 0, 0, 3),
(55, 48, 80, 0, 0, 3),
(56, 43, 80, 0, 0, 3),
(57, 0, 80, 0, 0, 3),
(58, 48, 81, 0, 0, 3),
(59, 43, 81, 0, 0, 3),
(60, 0, 81, 0, 0, 3),
(61, 48, 82, 0, 0, 3),
(62, 43, 82, 0, 0, 3),
(63, 0, 82, 0, 0, 3),
(64, 48, 83, 0, 0, 3),
(65, 43, 83, 0, 0, 3),
(66, 0, 83, 0, 0, 3),
(67, 48, 84, 0, 0, 3),
(68, 43, 84, 0, 0, 3),
(69, 0, 84, 0, 0, 3),
(70, 48, 85, 0, 0, 3),
(71, 43, 85, 0, 0, 3),
(72, 0, 85, 0, 0, 3),
(73, 48, 86, 0, 0, 3),
(74, 43, 86, 0, 0, 3),
(75, 0, 86, 0, 0, 3),
(76, 48, 87, 0, 0, 3),
(77, 43, 87, 0, 0, 3),
(78, 0, 87, 0, 0, 3),
(79, 49, 88, 0, 0, 3),
(80, 0, 88, 0, 0, 3),
(81, 49, 89, 0, 0, 3),
(82, 0, 89, 0, 0, 3),
(83, 49, 90, 0, 0, 3),
(84, 0, 90, 0, 0, 3),
(85, 49, 91, 0, 0, 3),
(86, 0, 91, 0, 0, 3),
(87, 49, 92, 0, 0, 3),
(88, 0, 92, 0, 0, 3),
(89, 49, 93, 0, 0, 3),
(90, 0, 93, 0, 0, 3),
(91, 49, 94, 0, 0, 3),
(92, 0, 94, 0, 0, 3),
(93, 49, 95, 0, 0, 3),
(94, 0, 95, 0, 0, 3),
(95, 49, 96, 0, 0, 3),
(96, 0, 96, 0, 0, 3),
(97, 47, 97, 0, 0, 3),
(98, 43, 97, 0, 0, 3),
(99, 0, 97, 0, 0, 3),
(100, 75, 154, 2, 0, 3),
(101, 0, 154, 1, 0, 3),
(102, 75, 155, 1, 0, 3),
(103, 0, 155, 1, 0, 3),
(104, 75, 156, 1, 0, 3),
(105, 0, 156, 1, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `list_content_chanel_5`
--

CREATE TABLE `list_content_chanel_5` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `chanel_id` bigint(100) NOT NULL,
  `content_id` bigint(255) NOT NULL,
  `position` int(11) NOT NULL,
  `hold` bigint(20) NOT NULL,
  `status` int(20) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `list_content_chanel_5`
--

INSERT INTO `list_content_chanel_5` (`id`, `chanel_id`, `content_id`, `position`, `hold`, `status`) VALUES
(1, 63, 100, 2, 0, 3),
(2, 52, 100, 2, 0, 3),
(3, 0, 100, 2, 0, 3),
(4, 63, 102, 2, 0, 3),
(5, 52, 102, 1, 0, 3),
(6, 0, 102, 2, 0, 3),
(7, 60, 103, 1, 0, 3),
(8, 0, 103, 2, 0, 3),
(9, 54, 104, 2, 0, 3),
(10, 0, 104, 2, 0, 3),
(11, 62, 105, 1, 0, 3),
(12, 0, 105, 2, 0, 3),
(13, 57, 106, 2, 0, 3),
(14, 0, 106, 2, 0, 3),
(15, 53, 107, 2, 0, 3),
(16, 0, 107, 2, 0, 3),
(17, 53, 108, 2, 0, 3),
(18, 0, 108, 2, 0, 3),
(19, 61, 109, 2, 0, 3),
(20, 0, 109, 2, 0, 3),
(21, 61, 110, 2, 0, 3),
(22, 0, 110, 2, 0, 3),
(23, 62, 111, 2, 0, 3),
(24, 0, 111, 2, 0, 3),
(25, 61, 112, 2, 0, 3),
(26, 0, 112, 2, 0, 3),
(27, 54, 113, 2, 0, 3),
(28, 0, 113, 2, 0, 3),
(29, 59, 114, 1, 0, 3),
(30, 0, 114, 2, 0, 3),
(31, 59, 115, 2, 0, 3),
(32, 0, 115, 2, 0, 3),
(33, 61, 116, 2, 0, 3),
(34, 0, 116, 2, 0, 3),
(35, 61, 117, 2, 0, 3),
(36, 0, 117, 2, 0, 3),
(37, 61, 118, 2, 0, 3),
(38, 0, 118, 2, 0, 3),
(39, 61, 119, 1, 0, 3),
(40, 0, 119, 2, 0, 3),
(41, 61, 120, 2, 0, 3),
(42, 0, 120, 2, 0, 3),
(43, 61, 121, 2, 0, 3),
(44, 0, 121, 2, 0, 3),
(45, 61, 122, 2, 0, 3),
(46, 0, 122, 2, 0, 3),
(47, 61, 123, 2, 0, 3),
(48, 0, 123, 2, 0, 3),
(49, 61, 124, 2, 0, 3),
(50, 0, 124, 2, 0, 3),
(51, 63, 125, 1, 0, 3),
(52, 52, 125, 2, 0, 3),
(53, 0, 125, 2, 0, 3),
(54, 66, 126, 1, 0, 3),
(55, 54, 126, 1, 0, 3),
(56, 0, 126, 2, 0, 3),
(57, 67, 127, 2, 0, 3),
(58, 56, 127, 2, 0, 3),
(59, 0, 127, 2, 0, 3),
(60, 67, 128, 2, 0, 3),
(61, 56, 128, 2, 0, 3),
(62, 0, 128, 2, 0, 3),
(63, 67, 129, 2, 0, 3),
(64, 56, 129, 2, 0, 3),
(65, 0, 129, 2, 0, 3),
(66, 67, 130, 2, 0, 3),
(67, 56, 130, 2, 0, 3),
(68, 0, 130, 2, 0, 3),
(69, 67, 131, 2, 0, 3),
(70, 56, 131, 2, 0, 3),
(71, 0, 131, 2, 0, 3),
(72, 67, 132, 2, 0, 3),
(73, 56, 132, 2, 0, 3),
(74, 0, 132, 2, 0, 3),
(75, 67, 133, 1, 0, 3),
(76, 56, 133, 1, 0, 3),
(77, 0, 133, 2, 0, 3),
(78, 67, 134, 2, 0, 3),
(79, 56, 134, 2, 0, 3),
(80, 0, 134, 2, 0, 3),
(81, 67, 135, 2, 0, 3),
(82, 56, 135, 2, 0, 3),
(83, 0, 135, 2, 0, 3),
(84, 67, 136, 2, 0, 3),
(85, 56, 136, 2, 0, 3),
(86, 0, 136, 2, 0, 3),
(87, 67, 137, 2, 0, 3),
(88, 56, 137, 2, 0, 3),
(89, 0, 137, 2, 0, 3),
(90, 57, 138, 2, 0, 3),
(91, 0, 138, 1, 0, 3),
(92, 57, 139, 2, 0, 3),
(93, 0, 139, 2, 0, 3),
(94, 57, 140, 2, 0, 3),
(95, 0, 140, 1, 0, 3),
(96, 57, 141, 2, 0, 3),
(97, 0, 141, 2, 0, 3),
(98, 57, 142, 0, 0, 3),
(99, 0, 142, 0, 0, 3),
(100, 57, 143, 0, 0, 3),
(101, 0, 143, 0, 0, 3),
(102, 57, 144, 0, 0, 3),
(103, 0, 144, 0, 0, 3),
(104, 57, 145, 0, 0, 3),
(105, 0, 145, 0, 0, 3),
(106, 57, 146, 1, 0, 3),
(107, 0, 146, 2, 0, 3),
(108, 53, 147, 1, 0, 3),
(109, 0, 147, 1, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sites`
--

CREATE TABLE `sites` (
  `sites_id` bigint(11) NOT NULL,
  `sites_name` varchar(255) NOT NULL,
  `sites_desc` text NOT NULL,
  `sites_url` varchar(255) NOT NULL,
  `sites_created` datetime NOT NULL,
  `sites_status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites`
--

INSERT INTO `sites` (`sites_id`, `sites_name`, `sites_desc`, `sites_url`, `sites_created`, `sites_status`) VALUES
(1, 'Setjen Biro Umum', '', 'http://www.terpusat.com/', '2017-05-18 19:25:00', 1),
(2, 'Toko Mainan Ku', 'Pusatnya Mainan Anak Murah Bekasi dan siap dikirim keseluruh nusantara.', 'http://tokomainanku.com/', '2019-01-03 23:12:56', 1),
(3, 'Development Tekkom', 'Development Tekkom - Free Apps Repository For Student Of Bogor Agricultural University', 'http://www.devetek.com/', '2017-07-16 11:00:47', 1),
(4, 'Sewa Mobil &amp;amp; Motor Murah di Lombok, Shuttle Gili Trawangan Hanya 125rb.', 'Sewa Mobil Lombok. Promo airport ke pelabuhan bangsal (gili) hanya 125rb, senggigi 100rb, Mataram 75rb, kuta 75rb, sewa motor 75rb.', 'http://front.terpusat/', '2019-01-03 22:01:01', 1),
(5, 'Om Kumis', 'Om Kumis Banget Broooo', 'http://front.omkumis/', '2018-01-07 17:46:18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sites_attribute`
--

CREATE TABLE `sites_attribute` (
  `id` bigint(255) NOT NULL,
  `sites_id` bigint(11) NOT NULL,
  `sites_attribute_key` text NOT NULL,
  `sites_attribute_val` longtext NOT NULL,
  `sites_attribute_status` int(11) NOT NULL,
  `sites_attribute_position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites_attribute`
--

INSERT INTO `sites_attribute` (`id`, `sites_id`, `sites_attribute_key`, `sites_attribute_val`, `sites_attribute_status`, `sites_attribute_position`) VALUES
(1, 2, 'permalink', '/[chanel]/[chanelid]-[date]-[id]/[title]', 1, 0),
(2, 2, 'themes', '{\"themes_name\":\"shoppy\",\"themes_path\":\"2\\/shoppy\\/\"}', 1, 0),
(3, 1, 'permalink', '/[chanel]/[day]-[m]-[years]/[title]', 1, 0),
(4, 1, 'themes', '{\"themes_name\":\"modern\",\"themes_path\":\"1\\/modern\\/\",\"themes_thumb\":\"\"}', 1, 0),
(5, 2, 'ogimage', '121', 1, 0),
(6, 2, 'keywords', 'toko mainan, mainan bekasi, jual mainan murah, distributor mainan, mainan anak', 1, 0),
(7, 2, 'widget:footer1', '<div class=\"span6 col-3\">\r\n    <h5>No. Rek</h5>\r\n    <h5> <strong>BCA</strong> <br/>066.25.65.936<br/>\r\n<strong>MANDIRI </strong> <br/> 900.00.17.35.62.89 <br/>\r\nSemua Atas Nama <br/> <strong>Irsyam Muchti A</strong></h5>\r\n</div>\r\n<div class=\"span6 col-3\">\r\n    <h5>Alamat</h5>\r\n    <h7> <span class=\"glyphicon glyphicon-map-marker\"> Toko Mainan Murah 4 Bintang <br/>\r\n		Perumahan Villa Mutiara Gading 3 <br/>(Perumahan Taman Kebalen)<br/>\r\n		Jl. Raya Babelan<br/>\r\n		Ruko Palazzo Blok C7 No. 16 <br/> \r\n		Kel. Kebalen, Kec. Babelan, Bekasi 17610<br/><br/> </span>\r\n		 <span class=\"glyphicon glyphicon-envelope\"> 0856 710 3450 <br/> <span/>\r\n		\r\n		<h/7>\r\n </div>', 1, 0),
(8, 2, 'widget:menu1', '<li class=\"\"><a href=\"[/BASE/]page/peraturan-belanja\">Peraturan Belanja</a></li>\r\n<li class=\"\"><a href=\"[/BASE/]page/resi-pengiriman\">Resi Pengiriman</a></li>\r\n<li class=\"\"><a href=\"[/BASE/]page/reseller\">Reseller</a></li>\r\n<li class=\"\"><a href=\"[/BASE/]page/kontak\">Lokasi Toko</a></li>', 1, 0),
(9, 4, 'permalink', '/[chanel]/[chanelid]-[date]-[id]/[title]', 1, 0),
(10, 4, 'ogimage', '48', 1, 0),
(11, 4, 'keywords', 'sewa mobil lombok, sewa motor lombok, transportasi di lombok, airport ke gili trawangan, promo transport lombok', 1, 0),
(12, 4, 'themes', '{\"themes_name\":\"kekuningan\",\"themes_path\":\"4\\/kekuningan\\/\"}', 1, 0),
(13, 4, 'widget:footer1', '', 1, 0),
(14, 4, 'widget:menu1', '<div class=\"top-nav\">\r\n					<ul>\r\n						<li><a href=\"[/BASE/]\">Home</a></li>\r\n						<li><a href=\"[/BASE/]page/tarif\">Tarif</a></li>\r\n						<li><a href=\"[/BASE/]page/booking\">Booking</a></li>\r\n						<li><a href=\"[/BASE/]page/sewa-motor\">Sewa Motor</a></li>\r\n						<li><a href=\"[/BASE/]page/paket-tour\">Paket Tour</a></li>\r\n						<li><a href=\"[/BASE/]page/contact-us\">Contact Us</a></li>\r\n						<li><a href=\"https://www.instagram.com/okcar.lomboktransport/\" target=\"_blank\">Gallery</a></li>\r\n						<div class=\"clear\"> </div>\r\n					</ul>\r\n				</div>', 1, 0),
(15, 4, 'widget:sites_title', '<div class=\"logo\">\r\n					<a href=\"[/BASE/]\">\r\n						OK <span class=\"logosplit\">CAR</span><br>\r\n						<span class=\"logosplit2\">LOMBOK TRANSPORT</span>\r\n					</a>\r\n				</div>', 1, 0),
(16, 4, 'widget:slider', '<div class=\"slider\">					     \r\n			<div class=\"camera_wrap camera_azure_skin\" id=\"camera_wrap_1\">\r\n				<div data-thumb=\"http://media.terpusat.com/view/image/48/thumb/sewa-mobil-gili-trawangan-1\" data-src=\"http://media.terpusat.com/view/image/48/sewa-mobil-gili-trawangan-1\">  </div> \r\n				<div data-thumb=\"http://media.terpusat.com/view/image/49/thumb/sewa-mobil-gili-trawangan-2\" data-src=\"http://media.terpusat.com/view/image/49/sewa-mobil-gili-trawangan-2\">  </div>\r\n				<div data-thumb=\"http://media.terpusat.com/view/image/50/thumb/sewa-mobil-gili-trawangan-3\" data-src=\"http://media.terpusat.com/view/image/50/sewa-mobil-gili-trawangan-3\">  </div>\r\n				<div data-thumb=\"http://media.terpusat.com/view/image/51/thumb/sewa-mobil-gili-trawangan-4\" data-src=\"http://media.terpusat.com/view/image/51/sewa-mobil-gili-trawangan-4\">  </div>\r\n				<div data-thumb=\"http://media.terpusat.com/view/image/52/thumb/sewa-mobil-gili-trawangan-5\" data-src=\"http://media.terpusat.com/view/image/52/sewa-mobil-gili-trawangan-5\">  </div>\r\n			</div>\r\n			<div class=\"clear\"> </div>					       \r\n		</div>', 1, 0),
(17, 4, 'widget:footer_top', '<div class=\"social-links\">\r\n			<ul>\r\n				<li><a href=\"https://www.facebook.com/OkCarlomboktransport\" target=\"_blank\">Facebook</a></li>\r\n				<li><a href=\"https://www.instagram.com/okcar.lomboktransport/\" target=\"_blank\">Instagram</a></li>\r\n				<li><a href=\"https://plus.google.com/u/0/106041230432868096726\" target=\"_blank\">Google+</a></li>\r\n			</ul>\r\n		</div>', 1, 0),
(18, 4, 'widget:footer_bottom', '<div class=\"mobile-no\">\r\n			<span><a href=\"tel:083129599600\" data-content=\"083129599600\" data-type=\"phone\">0831 - 2959 - 9600</a></span>\r\n		</div>\r\n		<div class=\"footer-logo\">\r\n			<a href=\"tel:083129599600\" data-content=\"083129599600\" data-type=\"phone\">CALL / WHATSAPP</a>\r\n		</div>', 1, 0),
(19, 2, 'widget:trendbillboard', '', 1, 0),
(20, 2, 'widget:trendrectangle1', '', 1, 0),
(21, 2, 'widget:trendrectangle2', '', 1, 0),
(22, 2, 'widget:footer2', '', 1, 0),
(23, 2, 'widget:homebillboard', '', 1, 0),
(24, 2, 'widget:homerectangle1', '', 1, 0),
(25, 2, 'widget:homerectangle2', '', 1, 0),
(26, 5, 'ogimage', '96', 1, 0),
(27, 5, 'keywords', 'keyword 1, keyword 2, keyword 3', 1, 0),
(28, 5, 'permalink', '/[chanel]/[chanelid]-[date]-[id]/[title]', 1, 0),
(29, 5, 'themes', '{\"themes_name\":\"oranggo\",\"themes_path\":\"5\\/oranggo\\/\"}', 1, 0),
(30, 5, 'widget:trendbillboard', '', 1, 0),
(31, 5, 'widget:trendrectangle1', '', 1, 0),
(32, 5, 'widget:trendrectangle2', '', 1, 0),
(33, 5, 'widget:footer1', '<ul class=\"menu\">\r\n	<li>\r\n		<a href=\"[/BASE/]page/contact-us/\">Contact</a>\r\n	</li>\r\n	<li>\r\n		<a href=\"[/BASE/]page/about/\">About</a>\r\n	</li>\r\n	<li>\r\n		<a href=\"[/BASE/]page/privacy-policy/\">Privacy</a>\r\n	</li>\r\n	<li>\r\n		<a href=\"[/BASE/]page/disclaimer/\">Disclaimer</a>\r\n	</li>\r\n</ul>', 1, 0),
(34, 5, 'widget:footer2', '<div class=\"sosmed\">\r\n    <span>Follow Us</span>\r\n    <ul>\r\n        <li>\r\n            <a href=\"https://www.instagram.com/oom_kumis/\"><img src=\"[/BASE/]assets/frontend/images/icon-sosmed-ig.png\" alt=\"Instagram Omkumis\"></a>\r\n        </li>\r\n        <li>\r\n            <a href=\"https://twitter.com/oom_kumis\"><img src=\"[/BASE/]assets/frontend/images/icon-sosmed-tw.png\" alt=\"Twitter Omkumis\"></a>\r\n        </li>\r\n        <li>\r\n            <a href=\"\"><img src=\"[/BASE/]assets/frontend/images/icon-sosmed-g.png\" alt=\"Google Plus Omkumis\"></a>\r\n        </li>\r\n        <li>\r\n            <a href=\"https://www.facebook.com/OmKumisCom/\"><img src=\"[/BASE/]assets/frontend/images/icon-sosmed-fb.png\" alt=\"Facebook Omkumis\"></a>\r\n        </li> \r\n    </ul>\r\n</div>', 1, 0),
(35, 5, 'widget:homebillboard', '', 1, 0),
(36, 5, 'widget:homerectangle1', '', 1, 0),
(37, 5, 'widget:homerectangle2', '', 1, 0),
(38, 2, 'widget:footer_top', '', 1, 0),
(39, 2, 'widget:footer_bottom', '', 1, 0),
(40, 2, 'widget:sites_title', '', 1, 0),
(41, 2, 'widget:slider', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `subtype`
--

CREATE TABLE `subtype` (
  `subtype_id` bigint(20) NOT NULL,
  `subtype_tag` varchar(255) NOT NULL,
  `subtype_name` varchar(255) NOT NULL,
  `subtype_content` text NOT NULL,
  `subtype_created` datetime NOT NULL,
  `subtype_type` int(2) NOT NULL DEFAULT '1',
  `subtype_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subtype`
--

INSERT INTO `subtype` (`subtype_id`, `subtype_tag`, `subtype_name`, `subtype_content`, `subtype_created`, `subtype_type`, `subtype_status`) VALUES
(1, 'Harga', 'harga', 'Harga', '2017-05-20 23:41:25', 4, 1),
(2, 'Diskon', 'diskon', 'Diskon', '2017-05-20 23:41:44', 4, 1),
(3, 'Berat', 'berat', 'Berat', '2017-07-22 12:48:14', 4, 1),
(4, 'Slug', 'slug', 'Slug', '2017-07-29 19:10:57', 4, 1),
(5, 'Template', 'template', 'Template', '2017-09-10 18:05:00', 4, 1),
(6, 'Multipleprice', 'multipleprice', 'Multipleprice', '2017-09-17 11:24:12', 4, 1),
(7, 'Banner 140 x 60', 'banner-140-x-60', '<div class=\'partner\'>Partner With : <a href=\'\'><img src=\'images/partner1.jpg\' alt=\'\'></a></div>', '2018-01-07 18:22:28', 1, 1),
(8, 'Cover', 'cover', 'Image cover untuk chanel biasa ', '2018-01-07 18:22:42', 2, 1),
(9, 'Banner 130 x 30', 'banner-130-x-30', '<div class=\'col-l\'>\r\n<div class=\'jdl\'>Partner <br> With:</div>\r\n<a href=\'\'><img src=\'images/logo-partner.png\' class=\'logo\' alt=\'\'></a>\r\n</div>', '2018-01-07 18:23:03', 1, 1),
(10, 'Banner 725 x 90', 'banner-725-x-90', '<div class=\'banner\'><a href=\'#\'><img src=\'images/banner-leaderboard.jpg\' alt=\'\'></a></div>', '2018-01-07 18:23:24', 1, 1),
(11, 'Banner 825 x 120', 'banner-825-x-120', '<div class=\'banner-brand\'><img src=\'images/banner-brand.jpg\' alt=\'\'></div>', '2018-01-07 18:23:45', 1, 1),
(12, 'Banner 300 x 250', 'banner-300-x-250', '<div class=\'banner\'><a href=\'\'><img src=\'images/banner-300x250.jpg\' alt=\'\'></a></div>', '2018-01-07 18:25:38', 1, 1),
(13, 'Galleries', 'galleries', 'Konten galleries adalah image yang dipilih saat membuat chanel', '2018-01-07 18:29:49', 3, 1),
(14, 'Multipledate', 'multipledate', 'Multipledate', '2018-01-22 12:42:25', 4, 1),
(15, 'Banner 300 x 600', 'banner-300-x-600', '<div class=\'banner\'><a href=\'\'><img src=\'images/banner-300x250.jpg\' alt=\'\'></a></div>', '2018-01-27 16:51:00', 1, 1),
(16, 'Banner 100 x 100', 'banner-100-x-100', 'Banner 100 x 100', '2018-01-28 00:12:33', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `tag_id` bigint(20) NOT NULL,
  `tag_name` varchar(255) NOT NULL,
  `tag_status` int(1) NOT NULL,
  `tag_show` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`tag_id`, `tag_name`, `tag_status`, `tag_show`) VALUES
(1, 'Mainan', 1, 1),
(2, 'Mainan Bekasi', 1, 1),
(3, 'Mainan Anak', 1, 1),
(4, 'Mainan Murah', 1, 1),
(5, 'Mainan Anak Murah', 1, 1),
(6, 'Mainan Murah Bekasi', 1, 1),
(7, 'Mainan Edukasi', 0, 1),
(8, 'Mainan Mainan Anak', 0, 1),
(9, 'Mainan Anak Murah Bekasi', 1, 1),
(10, 'Mainan Anak Bekasi Punya', 1, 1),
(11, 'Aneka Mainan Anak', 1, 1),
(12, 'Aneka Mainan Anak Murah', 1, 1),
(13, 'Aneka Mainan Anak Bekasi', 1, 1),
(14, 'Mainan Remote Control', 1, 1),
(15, 'Remote Control', 1, 1),
(16, 'Remote Control Mobil', 1, 1),
(17, 'Rock Crawler - Hummer', 1, 1),
(18, 'Rock Crawler Hummer Murah', 1, 1),
(19, 'Mainan Mobil Rock Crawler', 1, 1),
(20, 'Rock Crawler Hummer Bekasi', 1, 1),
(21, 'Remote Control Crawler', 1, 1),
(22, 'Mainan Drifting', 1, 1),
(23, 'Mobil', 0, 1),
(24, 'Mobil Drift', 1, 1),
(25, 'Remote Control Drift', 1, 1),
(26, 'Drifting Bekasi', 1, 1),
(27, 'Remote Control Drift Murah', 1, 1),
(28, 'Remote Control Drift Bekasi', 1, 1),
(29, 'Remote Control Formula One', 1, 1),
(30, 'Mobil Formula One', 1, 1),
(31, 'Formula One Murah', 1, 1),
(32, 'Formula One Bekasi', 1, 1),
(33, 'Remote Control Tank', 1, 1),
(34, 'Tank Murah', 1, 1),
(35, 'Remote Control Model - Sport', 1, 1),
(36, 'Remote Control Sport Murah', 1, 1),
(37, 'Mobil Model Sport Murah', 1, 1),
(38, 'Helicopter', 1, 1),
(39, 'Remote Control Helicopter', 1, 1),
(40, 'Helicopter Murah', 1, 1),
(41, 'Helicopter Bekasi', 1, 1),
(42, 'Remote Control Drone', 1, 1),
(43, 'Drone Murah', 1, 1),
(44, 'Drone Bekasi', 1, 1),
(45, 'Mainan Uno', 1, 1),
(46, 'UNO Kartu', 1, 1),
(47, 'UNO Stacko', 1, 1),
(48, 'UNO Indonesia', 1, 1),
(49, 'Permainan UNO', 1, 1),
(50, 'UNO Murah', 1, 1),
(51, 'Mainan UNO Bekasi', 1, 1),
(52, 'Karpet Evamat', 1, 1),
(53, 'Evamat Murah', 1, 1),
(54, 'Edukasi UNO', 1, 1),
(55, 'Evamat Bekasi', 1, 1),
(56, 'Karpet', 1, 1),
(57, 'Mainan Talking TomCat', 1, 1),
(58, 'Talking TomCat', 1, 1),
(59, 'Talking TomCat Murah', 1, 1),
(60, 'Talking TomCat Bekasi', 1, 1),
(61, 'Hotwheels', 1, 1),
(62, 'Mainan Hotwheels', 1, 1),
(63, 'Hotwheels Murah', 1, 1),
(64, 'Hotwheels Bekasi', 1, 1),
(65, 'Diecast Hotwheels', 1, 1),
(66, 'Mobil Hotwheels', 1, 1),
(67, 'Track Hotwheels', 1, 1),
(68, 'Track Racing Hotwheels', 1, 1),
(69, 'Track Racing Hotwheels Murah', 1, 1),
(70, 'Track Racing Hotwheels Bekasi', 1, 1),
(71, 'Track Racing', 1, 1),
(72, 'Tenda Anak', 1, 1),
(73, 'Tenda Murah', 1, 1),
(74, 'Mainan Tenda', 1, 1),
(75, 'Tenda Bekasi', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `trend_content_chanel_1`
--

CREATE TABLE `trend_content_chanel_1` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `chanel_id` bigint(100) NOT NULL,
  `content_id` bigint(255) NOT NULL,
  `position` int(11) NOT NULL DEFAULT '3',
  `hold` bigint(20) NOT NULL,
  `status` int(20) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `trend_content_chanel_2`
--

CREATE TABLE `trend_content_chanel_2` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `chanel_id` bigint(100) NOT NULL,
  `content_id` bigint(255) NOT NULL,
  `position` int(11) NOT NULL DEFAULT '3',
  `hold` bigint(20) NOT NULL,
  `status` int(20) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trend_content_chanel_2`
--

INSERT INTO `trend_content_chanel_2` (`id`, `chanel_id`, `content_id`, `position`, `hold`, `status`) VALUES
(1, 0, 78, 3, 0, 3),
(2, 0, 67, 3, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `trend_content_chanel_4`
--

CREATE TABLE `trend_content_chanel_4` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `chanel_id` bigint(100) NOT NULL,
  `content_id` bigint(255) NOT NULL,
  `position` int(11) NOT NULL DEFAULT '3',
  `hold` bigint(20) NOT NULL,
  `status` int(20) NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(255) NOT NULL,
  `type_desc` text NOT NULL,
  `type_created` datetime NOT NULL,
  `type_status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`type_id`, `type_name`, `type_desc`, `type_created`, `type_status`) VALUES
(1, 'Artikel', 'Artikel', '2017-05-19 01:03:52', 1),
(2, 'Produk', 'Produk', '2017-05-19 01:04:52', 1),
(3, 'Forum', 'Forum', '2017-05-19 01:05:15', 1),
(4, 'Foto', 'Foto', '2017-09-09 17:36:54', 1),
(5, 'Video', 'Video', '2017-05-19 01:06:34', 1),
(6, 'Halaman', 'Halaman', '2017-05-19 01:06:54', 1),
(7, 'Paket Wisata', 'Paket Wisata', '2017-09-17 11:23:49', 1),
(8, 'BrandHighlights', 'Tipe model Brand Highlights', '2018-01-07 18:22:00', 1),
(9, 'Events', 'Tipe events ', '2018-01-07 18:29:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `type_subtype`
--

CREATE TABLE `type_subtype` (
  `type_id` int(11) NOT NULL,
  `subtype_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type_subtype`
--

INSERT INTO `type_subtype` (`type_id`, `subtype_id`) VALUES
(2, 1),
(2, 2),
(2, 3),
(6, 4),
(6, 5),
(7, 6),
(8, 7),
(8, 8),
(8, 9),
(8, 10),
(8, 11),
(8, 12),
(9, 13),
(9, 8),
(9, 14),
(8, 15),
(1, 12),
(1, 7),
(1, 10),
(3, 16);

-- --------------------------------------------------------

--
-- Table structure for table `widget`
--

CREATE TABLE `widget` (
  `widget_id` bigint(20) NOT NULL,
  `widget_tag` varchar(255) NOT NULL,
  `widget_name` varchar(255) NOT NULL,
  `widget_content` text NOT NULL,
  `widget_config` text NOT NULL,
  `widget_created` datetime NOT NULL,
  `widget_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chanel`
--
ALTER TABLE `chanel`
  ADD PRIMARY KEY (`chanel_id`);

--
-- Indexes for table `chanel_attribute`
--
ALTER TABLE `chanel_attribute`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`),
  ADD UNIQUE KEY `content_id` (`content_id`),
  ADD UNIQUE KEY `content_id_2` (`content_id`),
  ADD UNIQUE KEY `content_id_3` (`content_id`);

--
-- Indexes for table `content_attribute`
--
ALTER TABLE `content_attribute`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `list_content_chanel_1`
--
ALTER TABLE `list_content_chanel_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_content_chanel_2`
--
ALTER TABLE `list_content_chanel_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_content_chanel_3`
--
ALTER TABLE `list_content_chanel_3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_content_chanel_4`
--
ALTER TABLE `list_content_chanel_4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list_content_chanel_5`
--
ALTER TABLE `list_content_chanel_5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`sites_id`);

--
-- Indexes for table `sites_attribute`
--
ALTER TABLE `sites_attribute`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subtype`
--
ALTER TABLE `subtype`
  ADD PRIMARY KEY (`subtype_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `trend_content_chanel_1`
--
ALTER TABLE `trend_content_chanel_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trend_content_chanel_2`
--
ALTER TABLE `trend_content_chanel_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trend_content_chanel_4`
--
ALTER TABLE `trend_content_chanel_4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `portal_id` (`type_id`);

--
-- Indexes for table `widget`
--
ALTER TABLE `widget`
  ADD PRIMARY KEY (`widget_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chanel`
--
ALTER TABLE `chanel`
  MODIFY `chanel_id` bigint(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `chanel_attribute`
--
ALTER TABLE `chanel_attribute`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `content_attribute`
--
ALTER TABLE `content_attribute`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=910;

--
-- AUTO_INCREMENT for table `list_content_chanel_1`
--
ALTER TABLE `list_content_chanel_1`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `list_content_chanel_2`
--
ALTER TABLE `list_content_chanel_2`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `list_content_chanel_3`
--
ALTER TABLE `list_content_chanel_3`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `list_content_chanel_4`
--
ALTER TABLE `list_content_chanel_4`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `list_content_chanel_5`
--
ALTER TABLE `list_content_chanel_5`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `sites`
--
ALTER TABLE `sites`
  MODIFY `sites_id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sites_attribute`
--
ALTER TABLE `sites_attribute`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `subtype`
--
ALTER TABLE `subtype`
  MODIFY `subtype_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `tag_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `trend_content_chanel_1`
--
ALTER TABLE `trend_content_chanel_1`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trend_content_chanel_2`
--
ALTER TABLE `trend_content_chanel_2`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trend_content_chanel_4`
--
ALTER TABLE `trend_content_chanel_4`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `widget`
--
ALTER TABLE `widget`
  MODIFY `widget_id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
