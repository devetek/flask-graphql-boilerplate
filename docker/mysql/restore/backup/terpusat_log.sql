-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jun 10, 2019 at 02:40 PM
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
-- Database: `terpusat_log`
--

-- --------------------------------------------------------

--
-- Table structure for table `log_01_02_2018`
--

CREATE TABLE `log_01_02_2018` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `time` time NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log_01_02_2018`
--

INSERT INTO `log_01_02_2018` (`id`, `time`, `content`) VALUES
(1, '00:29:14', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":\"126\",\"status\":\"3\"}}}'),
(2, '00:29:32', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":\"108\",\"status\":\"3\"}}}'),
(3, '00:54:01', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":147,\"status\":\"3\"}}}');

-- --------------------------------------------------------

--
-- Table structure for table `log_02_03_2018`
--

CREATE TABLE `log_02_03_2018` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `time` time NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log_02_03_2018`
--

INSERT INTO `log_02_03_2018` (`id`, `time`, `content`) VALUES
(1, '07:15:39', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":\"1\"}}}'),
(2, '07:16:14', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"chanel\",\"sites\":\"2\",\"identifier\":{\"id\":\"0\",\"status\":\"3\"}}}'),
(3, '07:16:45', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"2\",\"identifier\":{\"id\":148,\"status\":\"3\"}}}'),
(4, '08:15:40', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"content\",\"sites\":\"2\",\"identifier\":{\"id\":\"148\",\"status\":\"3\"}}}'),
(5, '08:21:04', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":null}}}'),
(6, '08:52:13', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"content\",\"sites\":\"2\",\"identifier\":{\"id\":\"99\",\"status\":\"3\"}}}'),
(7, '08:55:04', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"delete\",\"type\":\"content\",\"sites\":\"2\",\"identifier\":{\"id\":\"99\",\"status\":\"0\"}}}'),
(8, '08:58:54', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"restore\",\"type\":\"content\",\"sites\":\"2\",\"identifier\":{\"id\":\"99\",\"status\":\"3\"}}}'),
(9, '08:58:56', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"restore\",\"type\":\"content\",\"sites\":\"2\",\"identifier\":{\"id\":\"99\",\"status\":\"3\"}}}'),
(10, '08:58:59', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"restore\",\"type\":\"content\",\"sites\":\"2\",\"identifier\":{\"id\":\"99\",\"status\":\"3\"}}}'),
(11, '09:01:10', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"2\",\"identifier\":{\"id\":149,\"status\":\"3\"}}}'),
(12, '09:05:05', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"2\",\"identifier\":{\"id\":150,\"status\":\"3\"}}}'),
(13, '09:09:41', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"2\",\"identifier\":{\"id\":151,\"status\":\"3\"}}}'),
(14, '09:12:01', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"content\",\"sites\":\"2\",\"identifier\":{\"id\":\"151\",\"status\":\"3\"}}}'),
(15, '09:22:43', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"content\",\"sites\":\"2\",\"identifier\":{\"id\":\"151\",\"status\":\"3\"}}}'),
(16, '09:23:53', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"2\",\"identifier\":{\"id\":152,\"status\":\"3\"}}}'),
(17, '09:24:43', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"2\",\"identifier\":{\"id\":153,\"status\":\"3\"}}}');

-- --------------------------------------------------------

--
-- Table structure for table `log_03_01_2019`
--

CREATE TABLE `log_03_01_2019` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `time` time NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log_03_01_2019`
--

INSERT INTO `log_03_01_2019` (`id`, `time`, `content`) VALUES
(1, '22:58:13', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"4\",\"identifier\":{\"id\":154,\"status\":\"3\"}}}'),
(2, '23:45:34', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"4\",\"identifier\":{\"id\":155,\"status\":\"3\"}}}'),
(3, '23:51:37', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"content\",\"sites\":\"4\",\"identifier\":{\"id\":\"154\",\"status\":\"3\"}}}'),
(4, '23:52:29', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"4\",\"identifier\":{\"id\":156,\"status\":\"3\"}}}');

-- --------------------------------------------------------

--
-- Table structure for table `log_04_03_2018`
--

CREATE TABLE `log_04_03_2018` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `time` time NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log_04_03_2018`
--

INSERT INTO `log_04_03_2018` (`id`, `time`, `content`) VALUES
(1, '10:32:43', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":\"1\"}}}');

-- --------------------------------------------------------

--
-- Table structure for table `log_06_11_2017`
--

CREATE TABLE `log_06_11_2017` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `time` time NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log_06_11_2017`
--

INSERT INTO `log_06_11_2017` (`id`, `time`, `content`) VALUES
(1, '22:45:48', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":null}}}'),
(2, '22:46:16', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":null}}}'),
(3, '22:46:42', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":null}}}'),
(4, '22:47:41', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":null}}}'),
(5, '22:49:02', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":null}}}'),
(6, '22:49:59', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":null}}}');

-- --------------------------------------------------------

--
-- Table structure for table `log_07_01_2018`
--

CREATE TABLE `log_07_01_2018` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `time` time NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log_07_01_2018`
--

INSERT INTO `log_07_01_2018` (`id`, `time`, `content`) VALUES
(1, '18:05:23', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"5\",\"identifier\":{\"id\":\"5\",\"status\":null}}}'),
(2, '18:05:31', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"5\",\"identifier\":{\"id\":\"5\",\"status\":null}}}'),
(3, '18:05:38', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"5\",\"identifier\":{\"id\":\"5\",\"status\":null}}}'),
(4, '18:05:42', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"5\",\"identifier\":{\"id\":\"5\",\"status\":\"1\"}}}'),
(5, '18:10:17', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"5\",\"identifier\":{\"id\":\"5\",\"status\":null}}}'),
(6, '18:26:53', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"0\",\"status\":\"3\"}}}'),
(7, '18:27:16', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"0\",\"status\":\"3\"}}}'),
(8, '18:27:53', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"0\",\"status\":\"3\"}}}'),
(9, '18:28:13', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"0\",\"status\":\"3\"}}}'),
(10, '18:28:46', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"0\",\"status\":\"3\"}}}'),
(11, '18:30:58', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"0\",\"status\":\"3\"}}}'),
(12, '20:26:14', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"0\",\"status\":\"3\"}}}'),
(13, '20:26:28', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"0\",\"status\":\"3\"}}}'),
(14, '20:26:41', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"0\",\"status\":\"3\"}}}'),
(15, '20:26:55', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"0\",\"status\":\"3\"}}}'),
(16, '20:27:07', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"0\",\"status\":\"3\"}}}'),
(17, '20:27:50', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"0\",\"status\":\"3\"}}}'),
(18, '20:28:37', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":100,\"status\":\"3\"}}}'),
(19, '20:58:54', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":101,\"status\":\"3\"}}}'),
(20, '21:50:44', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":102,\"status\":\"3\"}}}'),
(21, '21:59:08', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":103,\"status\":\"3\"}}}'),
(22, '23:58:31', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":\"1\"}}}');

-- --------------------------------------------------------

--
-- Table structure for table `log_08_01_2018`
--

CREATE TABLE `log_08_01_2018` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `time` time NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log_08_01_2018`
--

INSERT INTO `log_08_01_2018` (`id`, `time`, `content`) VALUES
(1, '00:23:41', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":null}}}');

-- --------------------------------------------------------

--
-- Table structure for table `log_12_02_2018`
--

CREATE TABLE `log_12_02_2018` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `time` time NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log_12_02_2018`
--

INSERT INTO `log_12_02_2018` (`id`, `time`, `content`) VALUES
(1, '01:52:12', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":\"1\"}}}'),
(2, '01:56:50', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":null}}}'),
(3, '02:06:14', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":null}}}');

-- --------------------------------------------------------

--
-- Table structure for table `log_12_11_2017`
--

CREATE TABLE `log_12_11_2017` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `time` time NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log_12_11_2017`
--

INSERT INTO `log_12_11_2017` (`id`, `time`, `content`) VALUES
(1, '10:36:36', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":\"1\"}}}'),
(2, '10:36:48', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":null}}}'),
(3, '10:36:56', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":null}}}'),
(4, '10:57:31', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":null}}}'),
(5, '12:35:43', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":null}}}'),
(6, '12:36:24', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":null}}}'),
(7, '12:36:45', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":null}}}'),
(8, '12:37:29', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":null}}}'),
(9, '12:38:18', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":null}}}'),
(10, '12:38:21', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":null}}}'),
(11, '12:40:01', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":null}}}'),
(12, '12:40:44', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":null}}}'),
(13, '12:40:47', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":null}}}'),
(14, '12:43:43', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"trend\",\"sites\":\"2\",\"identifier\":{\"id\":\"1\",\"status\":3}}}'),
(15, '12:43:49', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"trend\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":3}}}'),
(16, '12:46:16', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"chanel\",\"sites\":\"2\",\"identifier\":{\"id\":\"0\",\"status\":\"3\"}}}'),
(17, '13:11:59', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"chanel\",\"sites\":\"2\",\"identifier\":{\"id\":\"0\",\"status\":\"3\"}}}'),
(18, '13:12:53', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"2\",\"identifier\":{\"id\":99,\"status\":\"3\"}}}');

-- --------------------------------------------------------

--
-- Table structure for table `log_16_02_2018`
--

CREATE TABLE `log_16_02_2018` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `time` time NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log_16_02_2018`
--

INSERT INTO `log_16_02_2018` (`id`, `time`, `content`) VALUES
(1, '10:05:24', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":null}}}');

-- --------------------------------------------------------

--
-- Table structure for table `log_19_01_2018`
--

CREATE TABLE `log_19_01_2018` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `time` time NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log_19_01_2018`
--

INSERT INTO `log_19_01_2018` (`id`, `time`, `content`) VALUES
(1, '22:40:34', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":104,\"status\":\"3\"}}}'),
(2, '22:42:55', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":105,\"status\":\"3\"}}}');

-- --------------------------------------------------------

--
-- Table structure for table `log_22_01_2018`
--

CREATE TABLE `log_22_01_2018` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `time` time NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log_22_01_2018`
--

INSERT INTO `log_22_01_2018` (`id`, `time`, `content`) VALUES
(1, '12:37:27', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":106,\"status\":\"3\"}}}'),
(2, '12:37:56', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"0\",\"status\":\"3\"}}}'),
(3, '12:38:35', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"0\",\"status\":\"3\"}}}');

-- --------------------------------------------------------

--
-- Table structure for table `log_27_01_2018`
--

CREATE TABLE `log_27_01_2018` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `time` time NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log_27_01_2018`
--

INSERT INTO `log_27_01_2018` (`id`, `time`, `content`) VALUES
(1, '10:23:17', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":107,\"status\":\"3\"}}}'),
(2, '10:24:57', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":108,\"status\":\"3\"}}}'),
(3, '10:25:41', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":109,\"status\":\"3\"}}}'),
(4, '10:27:18', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":110,\"status\":\"3\"}}}'),
(5, '10:27:58', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":111,\"status\":\"3\"}}}'),
(6, '10:29:15', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":112,\"status\":\"3\"}}}'),
(7, '10:29:53', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":113,\"status\":\"3\"}}}'),
(8, '10:30:31', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":114,\"status\":\"3\"}}}'),
(9, '10:59:21', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":115,\"status\":\"3\"}}}'),
(10, '11:27:02', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":116,\"status\":\"3\"}}}'),
(11, '11:27:27', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":117,\"status\":\"3\"}}}'),
(12, '11:30:51', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":118,\"status\":\"3\"}}}'),
(13, '11:31:46', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":119,\"status\":\"3\"}}}'),
(14, '11:32:26', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":120,\"status\":\"3\"}}}'),
(15, '11:33:05', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":121,\"status\":\"3\"}}}'),
(16, '11:33:45', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":122,\"status\":\"3\"}}}'),
(17, '11:34:35', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":123,\"status\":\"3\"}}}'),
(18, '11:37:19', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":124,\"status\":\"3\"}}}'),
(19, '11:43:28', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":\"110\",\"status\":\"3\"}}}'),
(20, '11:43:54', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":\"124\",\"status\":\"3\"}}}'),
(21, '11:44:51', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"5\",\"identifier\":{\"id\":\"5\",\"status\":null}}}'),
(22, '11:45:19', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"5\",\"identifier\":{\"id\":\"5\",\"status\":null}}}'),
(23, '11:46:58', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":\"102\",\"status\":\"3\"}}}'),
(24, '11:47:06', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":\"100\",\"status\":\"3\"}}}'),
(25, '11:47:50', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":125,\"status\":\"3\"}}}'),
(26, '11:50:23', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"52\",\"status\":\"3\"}}}'),
(27, '11:51:01', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"52\",\"status\":\"3\"}}}'),
(28, '11:51:52', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"0\",\"status\":\"3\"}}}'),
(29, '11:53:32', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":126,\"status\":\"3\"}}}'),
(30, '12:53:50', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"0\",\"status\":\"3\"}}}'),
(31, '12:54:10', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"0\",\"status\":\"3\"}}}'),
(32, '13:00:54', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"0\",\"status\":\"3\"}}}'),
(33, '13:01:03', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"0\",\"status\":\"3\"}}}'),
(34, '13:01:15', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"0\",\"status\":\"3\"}}}'),
(35, '13:01:32', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"0\",\"status\":\"3\"}}}'),
(36, '13:01:43', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"0\",\"status\":\"3\"}}}'),
(37, '13:03:53', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"56\",\"status\":\"3\"}}}'),
(38, '13:05:02', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"56\",\"status\":\"3\"}}}'),
(39, '16:42:30', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"67\",\"status\":\"3\"}}}'),
(40, '16:47:32', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"67\",\"status\":\"3\"}}}'),
(41, '16:53:23', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"67\",\"status\":\"3\"}}}'),
(42, '16:54:04', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"67\",\"status\":\"3\"}}}'),
(43, '16:59:53', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"67\",\"status\":\"3\"}}}'),
(44, '17:00:06', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"67\",\"status\":\"3\"}}}'),
(45, '17:03:01', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"72\",\"status\":\"3\"}}}'),
(46, '17:10:35', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":127,\"status\":\"3\"}}}'),
(47, '17:12:14', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":128,\"status\":\"3\"}}}'),
(48, '17:13:00', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":129,\"status\":\"3\"}}}'),
(49, '17:27:04', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":\"129\",\"status\":\"3\"}}}'),
(50, '17:28:04', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":130,\"status\":\"3\"}}}'),
(51, '17:29:33', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":131,\"status\":\"3\"}}}'),
(52, '17:30:21', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":132,\"status\":\"3\"}}}'),
(53, '17:31:31', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":133,\"status\":\"3\"}}}'),
(54, '17:33:11', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":134,\"status\":\"3\"}}}'),
(55, '17:33:57', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":135,\"status\":\"3\"}}}'),
(56, '17:34:35', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":136,\"status\":\"3\"}}}'),
(57, '17:35:32', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":137,\"status\":\"3\"}}}'),
(58, '18:45:53', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":138,\"status\":\"3\"}}}'),
(59, '18:46:42', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":139,\"status\":\"3\"}}}'),
(60, '18:47:25', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":140,\"status\":\"3\"}}}'),
(61, '18:48:17', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":141,\"status\":\"3\"}}}'),
(62, '18:51:05', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":142,\"status\":\"3\"}}}'),
(63, '18:51:25', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":\"142\",\"status\":\"3\"}}}'),
(64, '18:52:13', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":\"142\",\"status\":\"3\"}}}'),
(65, '19:14:23', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":143,\"status\":\"3\"}}}'),
(66, '19:22:14', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":144,\"status\":\"3\"}}}'),
(67, '19:30:44', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":145,\"status\":\"3\"}}}'),
(68, '19:40:39', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":\"144\",\"status\":\"3\"}}}'),
(69, '19:43:03', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"insert\",\"type\":\"content\",\"sites\":\"5\",\"identifier\":{\"id\":146,\"status\":\"3\"}}}'),
(70, '23:19:17', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"chanel\",\"sites\":\"5\",\"identifier\":{\"id\":\"52\",\"status\":\"3\"}}}');

-- --------------------------------------------------------

--
-- Table structure for table `log_28_02_2018`
--

CREATE TABLE `log_28_02_2018` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `time` time NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log_28_02_2018`
--

INSERT INTO `log_28_02_2018` (`id`, `time`, `content`) VALUES
(1, '07:45:27', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":\"1\"}}}'),
(2, '07:46:27', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"2\",\"identifier\":{\"id\":\"2\",\"status\":null}}}');

-- --------------------------------------------------------

--
-- Table structure for table `log_31_01_2018`
--

CREATE TABLE `log_31_01_2018` (
  `id` bigint(255) UNSIGNED NOT NULL,
  `time` time NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log_31_01_2018`
--

INSERT INTO `log_31_01_2018` (`id`, `time`, `content`) VALUES
(1, '23:27:33', '{\"type\":\"log\",\"user\":{\"id\":\"1\",\"name\":\"Nedya Amrih Prakasa\",\"username\":\"prakasa1904\",\"email\":\"prakasa@devetek.com\"},\"activity\":{\"action\":\"update\",\"type\":\"sites\",\"sites\":\"5\",\"identifier\":{\"id\":\"5\",\"status\":null}}}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `log_01_02_2018`
--
ALTER TABLE `log_01_02_2018`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_02_03_2018`
--
ALTER TABLE `log_02_03_2018`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_03_01_2019`
--
ALTER TABLE `log_03_01_2019`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_04_03_2018`
--
ALTER TABLE `log_04_03_2018`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_06_11_2017`
--
ALTER TABLE `log_06_11_2017`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_07_01_2018`
--
ALTER TABLE `log_07_01_2018`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_08_01_2018`
--
ALTER TABLE `log_08_01_2018`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_12_02_2018`
--
ALTER TABLE `log_12_02_2018`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_12_11_2017`
--
ALTER TABLE `log_12_11_2017`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_16_02_2018`
--
ALTER TABLE `log_16_02_2018`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_19_01_2018`
--
ALTER TABLE `log_19_01_2018`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_22_01_2018`
--
ALTER TABLE `log_22_01_2018`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_27_01_2018`
--
ALTER TABLE `log_27_01_2018`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_28_02_2018`
--
ALTER TABLE `log_28_02_2018`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_31_01_2018`
--
ALTER TABLE `log_31_01_2018`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `log_01_02_2018`
--
ALTER TABLE `log_01_02_2018`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `log_02_03_2018`
--
ALTER TABLE `log_02_03_2018`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `log_03_01_2019`
--
ALTER TABLE `log_03_01_2019`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `log_04_03_2018`
--
ALTER TABLE `log_04_03_2018`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `log_06_11_2017`
--
ALTER TABLE `log_06_11_2017`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `log_07_01_2018`
--
ALTER TABLE `log_07_01_2018`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `log_08_01_2018`
--
ALTER TABLE `log_08_01_2018`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `log_12_02_2018`
--
ALTER TABLE `log_12_02_2018`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `log_12_11_2017`
--
ALTER TABLE `log_12_11_2017`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `log_16_02_2018`
--
ALTER TABLE `log_16_02_2018`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `log_19_01_2018`
--
ALTER TABLE `log_19_01_2018`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `log_22_01_2018`
--
ALTER TABLE `log_22_01_2018`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `log_27_01_2018`
--
ALTER TABLE `log_27_01_2018`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `log_28_02_2018`
--
ALTER TABLE `log_28_02_2018`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `log_31_01_2018`
--
ALTER TABLE `log_31_01_2018`
  MODIFY `id` bigint(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
