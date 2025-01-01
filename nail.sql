-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 24, 2024 at 06:11 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nail`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `discription` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `discription`, `create_date`) VALUES
(1, 'CHĂM SÓC DA MẶT', 'sẽ bao gồm : Massge mặt , nặn mụn , tẩy da chết mặt , cạo lông mặt. ', '2024-12-19 07:58:38'),
(2, 'LÀM MÓNG TAY CHÂN', 'Sẽ bao gồm : sơn màu , tạo kiểu đính đá , đắp móng , dưỡng móng , cắt da chết  ', '2024-12-19 07:58:38'),
(3, 'GỘI ĐẦU ', 'bao gồm : gội đầu dưỡng dinh , gội đầu massge ', '2024-12-19 07:58:38'),
(4, 'TRIỆT LÔNG', 'sẽ gồm : Triệt lông cánh tay , triệt lông chân , triệt lông toàn thân .. ', '2024-12-19 07:58:38');

-- --------------------------------------------------------

--
-- Table structure for table `category_service`
--

DROP TABLE IF EXISTS `category_service`;
CREATE TABLE IF NOT EXISTS `category_service` (
  `service_id` int NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_service`
--

INSERT INTO `category_service` (`service_id`, `category_id`) VALUES
(1, 1),
(3, 1),
(4, 2),
(5, 2),
(6, 2),
(12, 4),
(17, 1),
(16, 3);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `phone`, `email`, `address`, `create_date`) VALUES
(1, 'Nguyễn Lê Kim Hoàng ', '033445578', 'kimhoang@gmail.com', '27 Chương Dương , Linh Chiểu , Thủ Đức , Hồ Chí Minh', '2024-12-10 10:28:12'),
(2, 'Trần Thị Hoàng Yến ', '035544127', 'hoangyen@gmail.com', '8 Nguyễn Huy Tưởng , Phường 6 , Quận Bình Thạnh , Thành Phố Hồ Chí Minh', '2024-12-10 10:28:12'),
(3, 'Nguyễn Thị Yến Nhi', '0334455781', 'mai@gmail.com', '45 Võ Văn Ngân , Linh Chiểu , Thủ Đức , Thành Phố Hồ Chí Minh', '2024-12-10 10:29:31'),
(4, 'My', '46236344848', 'r@gmail.com', 'thu duc', '2024-12-21 17:10:52'),
(7, 'Đinh Thị Kim Xuyến', '03356272623', 'xuyen@gmail.com', 'Thủ Đức', '2024-12-23 15:21:17'),
(8, 'Yến Nhi', '031717312', 'nhi@gmai.com', 'thu duc', '2024-12-24 08:49:32');

-- --------------------------------------------------------

--
-- Table structure for table `customer_ratings`
--

DROP TABLE IF EXISTS `customer_ratings`;
CREATE TABLE IF NOT EXISTS `customer_ratings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_rating` int NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_ratings`
--

INSERT INTO `customer_ratings` (`id`, `customer_name`, `service_rating`, `comments`, `created_at`) VALUES
(1, 'Nguyễn Hoàng Mai Lan', 5, 'Dịch vụ tốt', '2024-12-23 04:19:14'),
(2, 'Trần Thị Hoàng Yến ', 1, 'tốt', '2024-12-23 04:21:45'),
(3, 'nga', 1, 'tốt', '2024-12-23 04:22:34'),
(4, 'Nguyễn Lê Kim Hoàng ', 3, 'cũng tạm được', '2024-12-23 04:35:30'),
(5, 'Nguyễn Lê Kim Hoàng ', 3, 'cũng tạm được', '2024-12-23 04:35:31'),
(6, 'Nguyễn Lê Kim Hoàng ', 3, 'cũng tạm được', '2024-12-23 04:35:31'),
(7, 'Nguyễn Lê Kim Hoàng ', 3, 'cũng tạm được', '2024-12-23 04:35:31'),
(8, 'Nguyễn Lê Kim Hoàng ', 3, 'cũng tạm được', '2024-12-23 04:35:31'),
(9, 'Nguyễn Lê Kim Hoàng ', 3, 'cũng tạm được', '2024-12-23 04:35:31'),
(10, 'Nguyễn Lê Kim Hoàng ', 3, 'cũng tạm được', '2024-12-23 04:35:32'),
(11, 'Nguyễn Lê Kim Hoàng ', 3, 'cũng tạm được', '2024-12-23 04:35:32'),
(12, 'Nguyễn Lê Kim Hoàng ', 3, 'cũng tạm được', '2024-12-23 04:35:33'),
(13, 'Nguyễn Lê Kim Hoàng ', 3, 'cũng tạm được', '2024-12-23 04:35:33'),
(14, 'Nguyễn Lê Kim Hoàng ', 3, 'cũng tạm được', '2024-12-23 04:35:33'),
(15, 'Nguyễn Lê Kim Hoàng ', 3, 'cũng tạm được', '2024-12-23 04:35:33'),
(16, 'Nguyễn Lê Kim Hoàng ', 3, 'cũng tạm được', '2024-12-23 04:35:33'),
(17, 'Nguyễn Lê Kim Hoàng ', 3, 'cũng tạm được', '2024-12-23 04:35:34'),
(18, 'Nguyễn Lê Kim Hoàng ', 3, 'cũng tạm được', '2024-12-23 04:35:34'),
(19, 'Nguyễn Lê Kim Hoàng ', 3, 'cũng tạm được', '2024-12-23 04:35:34'),
(20, 'Nguyễn Lê Kim Hoàng ', 3, 'cũng tạm được', '2024-12-23 04:35:34'),
(21, 'Nguyễn Lê Kim Hoàng ', 3, 'cũng tạm được', '2024-12-23 04:36:25'),
(22, 'Trần Thị Hoàng Yến ', 2, 'tốt', '2024-12-23 04:36:34'),
(23, 'Trần Thị Hoàng Yến ', 2, 'tốt', '2024-12-23 04:36:35'),
(24, 'Trần Thị Hoàng Yến ', 2, 'tốt', '2024-12-23 04:36:35'),
(25, 'Trần Thị Hoàng Yến ', 1, 'tốt', '2024-12-23 04:39:57'),
(26, 'Trần Thị Hoàng Yến ', 1, 'tốt', '2024-12-23 04:40:00'),
(27, 'Trần Thị Hoàng Yến ', 1, 'tốt', '2024-12-23 04:40:00'),
(28, 'Trần Thị Hoàng Yến ', 1, 'tốt', '2024-12-23 04:40:00'),
(29, 'Trần Thị Hoàng Yến ', 1, 'tốt', '2024-12-23 04:40:00'),
(30, 'Trần Thị Hoàng Yến ', 2, 'tốt', '2024-12-23 04:43:13'),
(31, 'Trần Thị Hoàng Yến ', 2, 'tốt', '2024-12-23 04:43:14'),
(32, 'Trần Thị Hoàng Yến ', 2, 'tốt', '2024-12-23 04:43:14'),
(33, 'Trần Thị Hoàng Yến ', 2, 'tốt', '2024-12-23 04:43:14'),
(34, 'Trần Thị Hoàng Yến ', 2, 'tốt', '2024-12-23 04:43:14'),
(35, 'Trần Thị Hoàng Yến ', 2, 'tốt', '2024-12-23 04:43:15'),
(36, 'Nguyễn Lê Kim Hoàng ', 1, 'tốt', '2024-12-23 06:12:24'),
(37, 'Trần Thị Hoàng Yến ', 1, 'tốt', '2024-12-23 06:13:32'),
(38, 'Nguyễn Lê Kim Hoàng ', 5, 'dịch vụ đáng trải nghiệm', '2024-12-23 06:18:36'),
(39, 'nga', 2, 'tốt', '2024-12-23 08:17:59'),
(40, 'Nguyễn Thị Yến Nhi', 1, 'rất tốt', '2024-12-23 08:18:08'),
(41, 'Trần Thị Hoàng Yến ', 5, 'rất tốt', '2024-12-23 08:19:49'),
(42, 'My', 4, 'sẽ ủng hộ thêm ', '2024-12-23 08:20:03'),
(43, 'Đinh Thị Kim Xuyến', 5, 'một trải nghiệm thật là đáng nhớ ở spa này , nhân viên rấ chuyên nghiệp , sẽ quay lại lần sau', '2024-12-23 08:22:22'),
(44, 'Trần Thị Hoàng Yến ', 5, 'tốt', '2024-12-23 08:47:38'),
(45, 'Đinh Thị Kim Xuyến', 5, 'tốt', '2024-12-23 12:41:50'),
(46, 'Nguyễn Lê Kim Hoàng ', 5, 'Rất tốt', '2024-12-24 01:51:42');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` int NOT NULL,
  `staff_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_ids` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `method_payment` enum('cash','card','online') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `service_names` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `staff_names` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `customer_id`, `staff_ids`, `service_ids`, `total`, `method_payment`, `created_at`, `service_names`, `staff_names`, `customer_name`) VALUES
(16, 2, '[\"1\",\"2\"]', '[\"2\",\"1\",\"7\"]', 167.00, 'cash', '2024-12-20 06:22:39', 'Tẩy da chết mặt59.00, Massge mặt 39.00, Cắt da chết69.00', 'Kim Xuyến , Như Quỳnh ', 'Trần Thị Hoàng Yến '),
(17, 1, '[\"1\",\"2\"]', '[\"3\",\"2\",\"1\",\"7\"]', 256.00, 'cash', '2024-12-20 06:22:56', 'Nặn mụn 89.00, Tẩy da chết mặt59.00, Massge mặt 39.00, Cắt da chết69.00', 'Kim Xuyến , Như Quỳnh ', 'Nguyễn Lê Kim Hoàng '),
(18, 3, '[\"1\",\"2\"]', '[\"3\",\"2\",\"1\"]', 187.00, 'cash', '2024-12-20 06:24:07', 'Nặn mụn 89.00, Tẩy da chết mặt59.00, Massge mặt 39.00', 'Kim Xuyến , Như Quỳnh ', 'Nguyễn Thị Yến Nhi'),
(19, 3, '[\"1\",\"2\"]', '[\"3\",\"2\",\"1\"]', 187.00, 'cash', '2024-12-20 06:27:02', 'Nặn mụn  (89.00$), Tẩy da chết mặt (59.00$), Massge mặt  (39.00$)', 'Kim Xuyến , Như Quỳnh ', 'Nguyễn Thị Yến Nhi'),
(20, 1, '[\"1\",\"2\"]', '[\"3\",\"2\",\"1\"]', 187.00, 'cash', '2024-12-20 06:27:10', 'Nặn mụn  (89.00$), Tẩy da chết mặt (59.00$), Massge mặt  (39.00$)', 'Kim Xuyến , Như Quỳnh ', 'Nguyễn Lê Kim Hoàng '),
(21, 1, '[\"2\"]', '[\"3\"]', 89.00, 'cash', '2024-12-20 06:53:52', 'Nặn mụn  (89.00 $)', 'Như Quỳnh ', 'Nguyễn Lê Kim Hoàng '),
(22, 1, '[\"1\"]', '[\"2\"]', 59.00, 'cash', '2024-12-20 06:54:37', 'Tẩy da chết mặt (59.00 $)', 'Kim Xuyến ', 'Nguyễn Lê Kim Hoàng '),
(23, 1, '[\"1\",\"2\"]', '[\"3\",\"2\",\"1\",\"7\",\"6\",\"5\",\"4\",\"8\",\"12\",\"11\",\"10\"]', 2289.00, 'card', '2024-12-20 07:17:16', 'Nặn mụn  (89.00 $), Tẩy da chết mặt (59.00 $), Massge mặt  (39.00 $), Cắt da chết (69.00 $), Đắp móng (89.00 $), Tạo kiểu đính đá (49.00 $), Sơn móng (159.00 $), Gội đầu dưỡng sinh  (129.00 $), Triệt lông toàn thân (999.00 $), Triệt lông chân (309.00 $), Triệt lông cánh tay (299.00 $)', 'Kim Xuyến , Như Quỳnh ', 'Nguyễn Lê Kim Hoàng '),
(24, 1, '[\"2\"]', '[\"6\",\"11\"]', 398.00, 'card', '2024-12-21 05:48:43', 'Đắp móng (89.00 $), Triệt lông chân (309.00 $)', 'Như Quỳnh ', 'Nguyễn Lê Kim Hoàng '),
(25, 1, '[\"1\"]', '[\"3\",\"12\"]', 1088.00, 'cash', '2024-12-21 05:58:29', 'Nặn mụn  (89.00 $), Triệt lông toàn thân (999.00 $)', 'Kim Xuyến ', 'Nguyễn Lê Kim Hoàng '),
(26, 2, '[\"2\",\"7\"]', '[\"2\"]', 59.00, 'cash', '2024-12-21 06:03:46', 'Tẩy da chết mặt (59.00 $)', 'Nguyễn Hoàng Mai, Nguyễn Hoàng Lan', 'Trần Thị Hoàng Yến '),
(27, 2, '[\"1\"]', '[\"5\",\"4\",\"8\"]', 337.00, 'cash', '2024-12-21 08:40:44', 'Tạo kiểu đính đá (49.00 $), Sơn móng (159.00 $), Gội đầu dưỡng sinh  (129.00 $)', 'Nguyễn Hoàng Mai', 'Trần Thị Hoàng Yến '),
(28, 2, '[\"3\"]', '[\"4\"]', 159.00, 'card', '2024-12-23 02:24:22', 'Sơn móng (159.00 $)', 'Nguyễn Loan', 'Trần Thị Hoàng Yến '),
(29, 1, '[\"3\"]', '[\"4\"]', 159.00, 'card', '2024-12-23 02:28:58', 'Sơn móng (159.00 $)', 'Nguyễn Loan', 'Nguyễn Lê Kim Hoàng '),
(30, 1, '[\"2\"]', '[\"4\"]', 159.00, 'card', '2024-12-23 02:31:18', 'Sơn móng (159.00 $)', 'Nguyễn Hoàng Mai', 'Nguyễn Lê Kim Hoàng '),
(32, 1, '[\"6\"]', '[\"2\"]', 59.00, 'cash', '2024-12-23 03:16:03', 'Tẩy da chết mặt (59.00 $)', 'Hoang Yen', 'Nguyễn Lê Kim Hoàng '),
(33, 1, '[\"6\"]', '[\"2\"]', 59.00, 'cash', '2024-12-23 03:16:25', 'Tẩy da chết mặt (59.00 $)', 'Hoang Yen', 'Nguyễn Lê Kim Hoàng '),
(34, 1, '[\"6\"]', '[\"2\"]', 59.00, 'cash', '2024-12-23 03:32:37', 'Tẩy da chết mặt (59.00 $)', 'Hoang Yen', 'Nguyễn Lê Kim Hoàng '),
(35, 1, '[\"4\"]', '[\"4\"]', 159.00, 'cash', '2024-12-23 08:44:34', 'Sơn móng (159.00 $)', 'Nguyễn Kim Anh', 'Nguyễn Lê Kim Hoàng '),
(36, 4, '[\"3\"]', '[\"16\"]', 45.00, 'cash', '2024-12-23 08:44:53', 'Massage đầu (45.00 $)', 'Nguyễn Loan', 'My'),
(37, 4, '[\"7\"]', '[\"4\",\"16\"]', 204.00, 'cash', '2024-12-23 12:40:37', 'Sơn móng (159.00 $), Massage đầu (45.00 $)', 'Nguyễn Hoàng Lan Mai', 'My'),
(38, 2, '[\"6\"]', '[\"17\",\"3\",\"1\"]', 218.00, 'cash', '2024-12-24 01:50:38', 'cạo lông mặt (90.00 $), Nặn mụn  (89.00 $), Massge mặt  (39.00 $)', 'Hoang Yen', 'Trần Thị Hoàng Yến ');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `service_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `service_duration` int NOT NULL,
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `price`, `service_duration`, `create_date`) VALUES
(1, 'Massge mặt ', 39.00, 10, '2024-12-19 07:58:38'),
(3, 'Nặn mụn ', 89.00, 0, '2024-12-19 07:58:38'),
(4, 'Sơn móng', 159.00, 0, '2024-12-19 07:58:38'),
(5, 'Tạo kiểu đính đá', 49.00, 0, '2024-12-19 07:58:38'),
(6, 'Đắp móng', 90.00, 90, '2024-12-19 07:58:38'),
(12, 'Triệt lông toàn thân', 999.00, 0, '2024-12-19 07:58:38'),
(16, 'Massage đầu', 45.00, 60, '2024-12-22 19:53:04'),
(17, 'cạo lông mặt', 90.00, 20, '2024-12-24 08:45:26');

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

DROP TABLE IF EXISTS `staffs`;
CREATE TABLE IF NOT EXISTS `staffs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int NOT NULL,
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chucvu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`id`, `name`, `phone`, `email`, `chucvu`) VALUES
(2, 'Nguyễn Hoàng Mai', 327322, 'mai@gmail.com', 'Nhân Viên Chuyên Nghiệp'),
(3, 'Nguyễn Loan', 2147483647, 'loan@gmail.com', 'Nhân Viên'),
(4, 'Nguyễn Kim Anh', 2147483647, 'anh@gmail.com', 'Quản Lý'),
(5, 'Nguyễn Hoàng Lan', 327322, 'mai@gmail.com', 'Nhân Viên Chuyên Nghiệp'),
(6, 'Hoang Yen', 44389828, 'yen@gmail.com', 'Quản Lý'),
(7, 'Nguyễn Hoàng Lan Trúc', 32732287, 'mai@gmail.com', 'Nhân Viên Chuyên Nghiệp'),
(10, 'Hoàng Anh', 932318382, 'anh@gmail.com', 'Nhân Viên');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `created_at`, `phone`) VALUES
(1, 'lani', 'lani@gmail.com', '$2y$10$D249NQI8b3al.wsfICMGOe.pu.p3jLhCdvVtdwJPc3R2Y0P5gbUbG', '0000-00-00 00:00:00', '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
