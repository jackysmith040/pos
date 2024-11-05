-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2024 at 05:44 PM
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
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Chinese', 'Chinese Items'),
(2, 'Mexican', 'Mexican Items'),
(3, 'Pizza', 'Pizza Items'),
(4, 'Indian', 'Indian items'),
(5, 'Sandwiches', 'Sandwiches Types'),
(6, ' Japanese', ' Japanese Items'),
(9, 'Thai', 'Thai Items'),
(10, 'Sweetheart', 'Something Sweet?');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0=Unavailable,1=Available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `price`, `status`) VALUES
(2, 1, 'Hot Pot', 'a communal meal that involves a pot filled with broth constantly simmered by a heat source underneath', 352, 1),
(3, 1, 'Kung Pao Chicken', 'Kung Pao chicken, also transcribed Gong Bao or Kung Po, is a spicy, stir-fried Chinese dish made with cubes of chicken, peanuts, vegetables, and chili peppers.', 520, 1),
(4, 1, 'Ma Po Tofu', 'Mapo tofu is a popular Chinese dish from Sichuan province. ', 450, 1),
(5, 6, 'Tofu', 'The Japanese eat it alone, as if it were meat or cheese. Another popular way of eating tofu is to serve it fried.', 452, 1),
(6, 6, 'Tempura', 'A simple and traditional tempura batter is typically made of ice water, flour, and egg yolks.', 443, 1),
(7, 6, 'Yakitori', 'This type is usually served with a sweet tare sauce, and depending on the region, it can also come with raw egg yolk for dipping.', 452, 1),
(8, 4, 'Pakora', 'Pakoras are made by coating ingredients, usually vegetables, in a spiced batter, then deep frying them. ', 452, 1),
(9, 4, 'Vada Pav', 'Vada pav, alternatively spelt wada pao, is a vegetarian fast food dish native to the Indian state of Maharashtra. ', 50, 1),
(10, 4, 'Paratha', 'Paratha is a flatbread native to South Asia, prevalent throughout the modern-day nations of India, Sri Lanka, Pakistan, Nepal, Bangladesh, Maldives, Afghanistan, Myanmar, Malaysia, Singapore, Mauritius, Fiji, Guyana, Suriname, and Trinidad and Tobago where wheat is the traditional staple.', 80, 1),
(11, 9, 'Pad Thai', 'Pad thai, phat thai, or phad thai, is a stir-fried rice noodle dish commonly served as a street food in Thailand as part of the countrys cuisine.', 452, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `ref_no` varchar(50) NOT NULL,
  `total_amount` float NOT NULL,
  `amount_tendered` float NOT NULL,
  `order_number` int(30) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `payment_method` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `ref_no`, `total_amount`, `amount_tendered`, `order_number`, `date_created`, `payment_method`) VALUES
(1, '278998154978', 904, 1000, 1001, '2023-02-03 19:17:03', ''),
(2, '091428583362', 1343, 0, 1005, '2023-02-03 19:17:34', ''),
(3, '543076159999', 1622, 0, 1004, '2023-02-03 19:17:56', ''),
(4, '967470759448', 742, 1000, 1003, '2023-02-03 19:20:26', ''),
(5, '300535882264', 1354, 1400, 1006, '2023-02-03 20:12:43', ''),
(6, '905537326112', 2312, 0, 5, '2024-10-16 21:29:20', ''),
(7, '802956406795', 2312, 0, 5, '2024-10-16 21:29:21', ''),
(8, '935502504718', 970, 970, 2, '2024-10-16 21:30:20', ''),
(9, '372325236497', 2142, 970, 67, '2024-10-17 16:41:09', ''),
(10, '144621806186', 130, 200, 4, '2024-10-17 16:42:01', ''),
(11, '005960945698', 970, 970, 5, '2024-10-17 16:42:34', ''),
(12, '349069166019', 130, 130, 6, '2024-10-17 17:14:11', ''),
(13, '204027769822', 452, 0, 6, '2024-10-17 17:21:46', ''),
(14, '876141438300', 450, 450, 8, '2024-10-17 17:22:13', ''),
(15, '420274096526', 300, 301, 6, '2024-10-17 17:47:24', ''),
(16, '882135316753', 902, 1000, 5, '2024-10-18 17:44:04', ''),
(17, '434365489224', 452, 500, 77, '2024-10-21 10:45:47', ''),
(18, '954953319066', 0, 0, 0, '2024-10-21 11:39:16', ''),
(19, '517870403592', 0, 0, 0, '2024-10-21 11:39:17', ''),
(20, '160835358989', 0, 0, 0, '2024-10-21 11:42:34', ''),
(21, '672780292934', 0, 0, 0, '2024-10-21 11:46:26', ''),
(22, '985432157689', 0, 0, 0, '2024-10-21 11:46:30', ''),
(23, '313685495064', 0, 0, 0, '2024-10-21 11:52:24', ''),
(24, '075404237366', 0, 0, 0, '2024-10-21 11:52:27', ''),
(25, '883405358962', 0, 0, 0, '2024-10-21 12:37:40', ''),
(26, '334937092647', 0, 0, 0, '2024-10-21 18:58:06', ''),
(27, '874556859168', 0, 0, 0, '2024-10-22 10:13:46', ''),
(28, '960955874611', 0, 0, 0, '2024-10-22 10:14:30', ''),
(29, '294743684233', 0, 0, 0, '2024-10-22 10:31:26', ''),
(30, '838724662417', 0, 0, 0, '2024-10-22 10:31:46', ''),
(31, '670946103227', 0, 0, 0, '2024-10-22 10:38:21', ''),
(32, '244253701872', 0, 0, 0, '2024-10-22 10:38:44', ''),
(33, '428251366594', 0, 0, 0, '2024-10-22 10:38:47', ''),
(34, '282750990113', 0, 0, 0, '2024-10-22 10:39:08', ''),
(35, '706469828740', 0, 0, 0, '2024-10-22 10:52:31', ''),
(36, '996010041775', 0, 0, 0, '2024-10-22 10:52:37', ''),
(37, '926597689556', 0, 0, 0, '2024-10-22 10:52:38', ''),
(38, '557188139879', 452, 500, 3, '2024-10-22 10:59:06', ''),
(39, '666114296415', 452, 500, 3, '2024-10-22 10:59:37', ''),
(40, '128171486960', 160, 1111, 1, '2024-10-25 00:22:42', ''),
(41, '959042983507', 452, 500, 0, '2024-10-25 02:06:05', ''),
(42, '436742220455', 452, 500, 0, '2024-10-25 02:06:12', ''),
(43, '885226314246', 452, 500, 0, '2024-10-25 02:06:19', ''),
(44, '226427585921', 452, 500, 0, '2024-10-25 02:06:20', ''),
(45, '251650621927', 452, 500, 0, '2024-10-25 02:06:20', ''),
(46, '939207381125', 452, 500, 0, '2024-10-25 02:06:21', ''),
(47, '824260507113', 452, 500, 0, '2024-10-25 02:06:21', ''),
(48, '498985822826', 452, 500, 0, '2024-10-25 02:06:22', ''),
(49, '281400820725', 452, 500, 0, '2024-10-25 02:06:24', ''),
(50, '374209165225', 452, 500, 0, '2024-10-25 02:06:25', ''),
(51, '438830835786', 452, 500, 0, '2024-10-25 02:06:25', ''),
(52, '886973868491', 452, 500, 0, '2024-10-25 02:06:25', ''),
(53, '360797759532', 452, 500, 2147483647, '2024-10-25 09:56:58', ''),
(54, '445315300664', 452, 500, 2147483647, '2024-10-25 10:23:47', ''),
(55, '595452623469', 352, 0, 0, '2024-10-25 12:20:08', ''),
(56, '360823745251', 352, 0, 0, '2024-10-25 12:20:14', ''),
(57, '750928835842', 352, 0, 0, '2024-10-25 12:20:22', ''),
(58, '567516374645', 352, 0, 0, '2024-10-25 12:20:23', ''),
(59, '610604447208', 0, 0, 0, '2024-10-25 12:21:12', ''),
(60, '934011055381', 0, 0, 2147483647, '2024-10-25 12:40:21', ''),
(61, '545140443136', 0, 0, 2147483647, '2024-10-25 12:40:23', ''),
(62, '593853581609', 0, 0, 2147483647, '2024-10-25 12:40:24', ''),
(63, '682020055048', 0, 0, 2147483647, '2024-10-25 12:40:30', ''),
(64, '004867514345', 352, 400, 2147483647, '2024-10-25 12:46:09', ''),
(65, '651416787689', 0, 0, 2147483647, '2024-10-25 13:44:27', ''),
(66, '234629658408', 0, 0, 2147483647, '2024-10-25 13:44:50', ''),
(67, '977047740549', 0, 0, 2147483647, '2024-10-25 13:44:52', ''),
(68, '473797403367', 352, 400, 2147483647, '2024-10-25 14:08:01', ''),
(69, '328923588611', 872, 900, 2147483647, '2024-10-25 14:26:03', ''),
(70, '271251931166', 704, 800, 2147483647, '2024-10-26 12:29:12', ''),
(71, '680738843183', 872, 1000, 2147483647, '2024-10-26 12:35:29', ''),
(72, '658071470168', 1392, 2000, 2147483647, '2024-10-26 12:51:36', ''),
(73, '769945352844', 872, 900, 2147483647, '2024-10-28 14:42:41', ''),
(74, '612039874580', 2096, 3000, 2147483647, '2024-10-28 16:44:50', ''),
(76, '415964122220', 352, 400, 2147483647, '2024-10-30 11:57:39', 'Cash'),
(77, '966855151204', 352, 400, 2147483647, '2024-10-30 11:58:29', 'MoMo'),
(78, '234255723725', 352, 400, 2147483647, '2024-10-30 12:05:22', 'MoMo'),
(79, '055396210005', 352, 400, 2147483647, '2024-10-30 12:18:55', 'Cash'),
(80, '694710181011', 352, 400, 2147483647, '2024-10-30 12:19:02', 'Cash'),
(81, '997490282051', 352, 600, 2147483647, '2024-10-30 12:50:58', ''),
(82, '335662161238', 804, 1000, 2147483647, '2024-10-30 12:55:08', ''),
(83, '572060660346', 352, 500, 2147483647, '2024-10-30 13:25:29', 'Cash'),
(84, '827565997489', 520, 600, 2147483647, '2024-10-30 13:54:48', 'Cash'),
(85, '952235742107', 352, 600, 2147483647, '2024-10-30 13:56:01', 'Cash'),
(86, '911759358632', 520, 600, 2147483647, '2024-10-30 13:56:30', 'Mobile Payment'),
(87, '446907382374', 520, 500, 2147483647, '2024-10-30 13:56:54', 'Mobile Payment'),
(88, '289181834088', 520, 200, 2147483647, '2024-10-30 13:58:55', 'Mobile Payment'),
(89, '553284780659', 352, 400, 2147483647, '2024-10-30 18:06:01', 'Mobile Money'),
(90, '341868629168', 352, 400, 2147483647, '2024-10-30 18:07:19', 'Cash'),
(91, '699170880545', 352, 400, 2147483647, '2024-10-31 17:07:45', 'Cash'),
(92, '432835177255', 352, 400, 2147483647, '2024-10-31 17:10:39', 'Cash'),
(93, '663698636214', 352, 400, 2147483647, '2024-10-31 17:12:02', 'Mobile Money'),
(94, '432790050285', 352, 400, 2147483647, '2024-10-31 17:17:58', 'Cash'),
(95, '051049680682', 352, 500, 2147483647, '2024-10-31 17:23:48', 'Cash'),
(96, '738783905747', 352, 600, 2147483647, '2024-10-31 17:24:56', 'Cash'),
(97, '641351882174', 352, 400, 2147483647, '2024-10-31 17:25:29', 'Cash'),
(98, '285018106812', 452, 500, 2147483647, '2024-10-31 17:27:12', 'Cash'),
(99, '212438909709', 352, 300, 2147483647, '2024-10-31 17:31:36', 'Cash'),
(100, '547365573291', 352, 500, 2147483647, '2024-10-31 17:45:41', 'Cash'),
(101, '146968710461', 352, 400, 2147483647, '2024-10-31 17:54:42', 'Cash'),
(102, '811963717854', 352, 400, 2147483647, '2024-10-31 17:58:30', 'Cash'),
(103, '180340208968', 452, 500, 2147483647, '2024-10-31 18:00:23', 'Cash'),
(104, '478534392927', 352, 400, 2147483647, '2024-10-31 18:02:44', 'Cash'),
(105, '775283698891', 872, 900, 2147483647, '2024-10-31 18:05:36', 'Cash'),
(106, '019645685366', 352, 400, 2147483647, '2024-10-31 18:13:43', 'Cash'),
(107, '827999452682', 872, 900, 2147483647, '2024-10-31 18:24:58', 'Cash'),
(108, '014378826930', 352, 400, 2147483647, '2024-10-31 18:28:57', 'Cash'),
(109, '445994513731', 352, 400, 2147483647, '2024-10-31 18:37:29', 'Cash'),
(110, '241515543517', 352, 500, 2147483647, '2024-10-31 18:48:39', 'Cash'),
(111, '666656157231', 450, 500, 2147483647, '2024-10-31 18:49:22', 'Cash'),
(112, '527867423227', 352, 400, 2147483647, '2024-10-31 18:51:01', 'Cash'),
(113, '487446499753', 450, 500, 2147483647, '2024-10-31 18:56:39', 'Cash'),
(114, '803650507543', 352, 400, 2147483647, '2024-10-31 18:58:49', 'Cash'),
(115, '131338574809', 352, 400, 2147483647, '2024-10-31 19:01:36', 'Cash'),
(116, '227396688336', 352, 444, 2147483647, '2024-10-31 19:06:47', 'Cash'),
(117, '956937725873', 352, 444, 2147483647, '2024-10-31 19:09:00', 'Cash'),
(118, '623185789557', 352, 444, 2147483647, '2024-10-31 19:11:26', 'Cash'),
(119, '506956098365', 872, 900, 2147483647, '2024-10-31 19:18:10', 'Cash'),
(120, '367174506413', 352, 500, 2147483647, '2024-11-01 13:29:41', 'Cash'),
(121, '282933878209', 352, 400, 2147483647, '2024-11-01 13:32:13', 'Cash'),
(122, '134835222072', 872, 1000, 2147483647, '2024-11-04 13:43:51', 'Cash'),
(123, '229871267388', 802, 1000, 2147483647, '2024-11-04 16:56:03', 'Cash'),
(124, '386249023769', 352, 500, 2147483647, '2024-11-04 17:00:19', 'Cash'),
(125, '881868356945', 872, 1000, 2147483647, '2024-11-04 17:13:39', 'Cash'),
(126, '411581849549', 1224, 2000, 2147483647, '2024-11-04 17:37:33', 'Cash'),
(127, '609794204212', 784, 800, 2147483647, '2024-11-04 17:43:45', 'Cash'),
(128, '362601053195', 900, 1000, 2147483647, '2024-11-04 17:45:20', 'Cash'),
(129, '916837931725', 1154, 2000, 2147483647, '2024-11-04 17:46:09', 'Cash'),
(130, '095242055803', 1154, 2000, 2147483647, '2024-11-04 17:46:47', 'Cash'),
(131, '593351879657', 1154, 2000, 2147483647, '2024-11-04 17:47:24', 'Cash'),
(132, '803881675819', 1154, 2000, 2147483647, '2024-11-04 17:50:53', 'Cash'),
(133, '044679541555', 1154, 2000, 2147483647, '2024-11-04 17:57:39', 'Cash'),
(134, '908047725560', 552, 600, 2147483647, '2024-11-04 17:58:56', 'Cash'),
(135, '581054674784', 180, 200, 2147483647, '2024-11-04 18:06:47', 'Cash'),
(136, '893737557350', 210, 300, 2147483647, '2024-11-04 18:09:36', 'Cash'),
(137, '460472346906', 130, 300, 2147483647, '2024-11-04 18:12:32', 'Cash'),
(138, '668727629420', 130, 200, 2147483647, '2024-11-04 18:15:21', 'Cash'),
(139, '120370521292', 130, 200, 2147483647, '2024-11-04 18:16:49', 'Cash'),
(140, '992236353799', 100, 101, 2147483647, '2024-11-04 18:34:29', 'Cash'),
(141, '755592197672', 130, 200, 2147483647, '2024-11-04 18:43:45', 'Cash'),
(142, '031450267861', 872, 1000, 2147483647, '2024-11-04 18:50:38', 'Cash'),
(143, '786854651978', 80, 100, 2147483647, '2024-11-04 18:54:38', 'Cash'),
(144, '670991814100', 50, 60, 2147483647, '2024-11-04 18:56:16', 'Cash'),
(145, '660440305507', 50, 60, 2147483647, '2024-11-04 19:01:47', 'Cash'),
(146, '854762806766', 650, 700, 2147483647, '2024-11-04 19:08:29', 'Cash'),
(147, '671087185867', 130, 200, 2147483647, '2024-11-04 19:12:32', 'Cash'),
(148, '230684271028', 650, 700, 2147483647, '2024-11-04 19:13:52', 'Cash'),
(149, '671405163310', 80, 100, 2147483647, '2024-11-04 19:17:16', 'Cash'),
(150, '004841286647', 872, 950, 2147483647, '2024-11-04 22:28:42', 'Cash'),
(151, '442822076111', 704, 800, 2147483647, '2024-11-04 22:59:30', 'Cash'),
(152, '469047014677', 80, 100, 2147483647, '2024-11-04 23:15:51', 'Cash'),
(153, '027632072260', 3552, 5000, 2147483647, '2024-11-04 23:26:32', 'Cash'),
(154, '709317439752', 1050, 2000, 2147483647, '2024-11-04 23:52:43', 'Cash'),
(155, '988984775274', 872, 900, 2147483647, '2024-11-05 00:20:59', 'Cash'),
(156, '690129134755', 1324, 2000, 2147483647, '2024-11-05 00:24:49', 'Cash'),
(157, '456742434981', 970, 1000, 2147483647, '2024-11-05 00:30:18', 'Cash'),
(158, '617632156967', 450, 500, 2147483647, '2024-11-05 00:39:17', 'Cash'),
(159, '331008144403', 1870, 2000, 2147483647, '2024-11-05 00:52:12', 'Cash'),
(160, '134898876265', 573, 600, 2147483647, '2024-11-05 01:13:15', 'Cash'),
(161, '040922885145', 580, 650, 2147483647, '2024-11-05 01:18:18', 'Cash'),
(162, '966995333082', 573, 600, 2147483647, '2024-11-05 01:19:41', 'Cash'),
(163, '157190228232', 1397, 2000, 2147483647, '2024-11-05 01:21:13', 'Cash'),
(164, '111678322636', 1749, 3000, 2147483647, '2024-11-05 16:09:48', 'Mobile Money'),
(165, '157588947702', 802, 950, 2147483647, '2024-11-05 16:28:56', 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `sales_receipt`
--

CREATE TABLE `sales_receipt` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `invoice_no` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `cashier_name` varchar(100) DEFAULT NULL,
  `item_description` varchar(255) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) DEFAULT NULL,
  `discount` decimal(5,2) DEFAULT NULL,
  `discount_percentage` decimal(5,2) DEFAULT NULL,
  `total_sales_vat_ex` decimal(10,2) DEFAULT NULL,
  `vat_percentage` decimal(5,2) DEFAULT NULL,
  `vat_amount` decimal(10,2) DEFAULT NULL,
  `covid_tax_percentage` decimal(5,2) DEFAULT NULL,
  `covid_tax_amount` decimal(10,2) DEFAULT NULL,
  `net_sales_amount` decimal(10,2) DEFAULT NULL,
  `cash_paid` decimal(10,2) DEFAULT NULL,
  `change_due` decimal(10,2) DEFAULT NULL,
  `contact_tel` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `qty` int(30) NOT NULL,
  `price` float NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale_items`
--

INSERT INTO `sale_items` (`id`, `order_id`, `product_id`, `qty`, `price`, `amount`) VALUES
(1, 1, 8, 1, 452, 452),
(2, 1, 7, 1, 452, 452),
(3, 2, 3, 1, 520, 520),
(4, 2, 6, 1, 443, 443),
(5, 2, 10, 1, 80, 80),
(6, 2, 1, 1, 300, 300),
(7, 3, 2, 1, 352, 352),
(8, 3, 1, 1, 300, 300),
(9, 3, 3, 1, 520, 520),
(10, 3, 4, 1, 450, 450),
(11, 4, 9, 1, 50, 50),
(12, 4, 8, 1, 452, 452),
(13, 4, 10, 3, 80, 240),
(14, 5, 4, 1, 450, 450),
(15, 5, 8, 2, 452, 904),
(16, 6, 2, 4, 352, 1408),
(17, 6, 8, 1, 452, 452),
(18, 6, 11, 1, 452, 452),
(19, 7, 2, 4, 352, 1408),
(20, 7, 8, 1, 452, 452),
(21, 7, 11, 1, 452, 452),
(22, 8, 4, 1, 450, 450),
(23, 8, 3, 1, 520, 520),
(24, 9, 3, 2, 520, 1040),
(25, 9, 4, 1, 450, 450),
(26, 9, 1, 1, 300, 300),
(27, 9, 2, 1, 352, 352),
(28, 10, 9, 1, 50, 50),
(29, 10, 10, 1, 80, 80),
(30, 11, 4, 1, 450, 450),
(31, 11, 3, 1, 520, 520),
(32, 12, 9, 1, 50, 50),
(33, 12, 10, 1, 80, 80),
(34, 13, 11, 1, 452, 452),
(35, 14, 4, 1, 450, 450),
(36, 15, 1, 2, 300, 600),
(37, 16, 4, 1, 450, 450),
(38, 16, 11, 1, 452, 452),
(39, 17, 11, 1, 452, 452),
(40, 38, 11, 1, 452, 452),
(41, 39, 11, 1, 452, 452),
(42, 40, 10, 2, 80, 160),
(43, 41, 8, 1, 452, 452),
(44, 42, 8, 1, 452, 452),
(45, 43, 8, 1, 452, 452),
(46, 44, 8, 1, 452, 452),
(47, 45, 8, 1, 452, 452),
(48, 46, 8, 1, 452, 452),
(49, 47, 8, 1, 452, 452),
(50, 48, 8, 1, 452, 452),
(51, 49, 8, 1, 452, 452),
(52, 50, 8, 1, 452, 452),
(53, 51, 8, 1, 452, 452),
(54, 52, 8, 1, 452, 452),
(55, 53, 8, 1, 452, 452),
(56, 54, 11, 1, 452, 452),
(57, 60, 4, 1, 450, 450),
(58, 61, 4, 1, 450, 450),
(59, 62, 4, 1, 450, 450),
(60, 63, 4, 1, 450, 450),
(61, 64, 2, 1, 352, 352),
(62, 65, 2, 1, 352, 352),
(63, 66, 2, 1, 352, 352),
(64, 67, 2, 1, 352, 352),
(65, 68, 2, 1, 352, 352),
(66, 69, 2, 1, 352, 352),
(67, 69, 3, 1, 520, 520),
(68, 70, 2, 2, 352, 704),
(69, 71, 2, 1, 352, 352),
(70, 71, 3, 1, 520, 520),
(71, 72, 2, 1, 352, 352),
(72, 72, 3, 2, 520, 1040),
(73, 73, 2, 1, 352, 352),
(74, 73, 3, 1, 520, 520),
(75, 74, 2, 3, 352, 1056),
(76, 74, 3, 2, 520, 1040),
(79, 76, 2, 1, 352, 352),
(80, 77, 2, 1, 352, 352),
(81, 78, 2, 1, 352, 352),
(82, 81, 2, 1, 352, 352),
(83, 82, 2, 1, 352, 352),
(84, 82, 11, 1, 452, 452),
(85, 83, 2, 1, 352, 352),
(86, 84, 3, 1, 520, 520),
(87, 85, 2, 1, 352, 352),
(88, 86, 3, 1, 520, 520),
(89, 87, 3, 1, 520, 520),
(90, 88, 3, 1, 520, 520),
(91, 89, 2, 1, 352, 352),
(92, 90, 2, 1, 352, 352),
(93, 91, 2, 1, 352, 352),
(94, 92, 2, 1, 352, 352),
(95, 93, 2, 1, 352, 352),
(96, 94, 2, 1, 352, 352),
(97, 95, 2, 1, 352, 352),
(98, 96, 2, 1, 352, 352),
(99, 97, 2, 1, 352, 352),
(100, 98, 8, 1, 452, 452),
(101, 99, 2, 1, 352, 352),
(102, 100, 2, 1, 352, 352),
(103, 101, 2, 1, 352, 352),
(104, 102, 2, 1, 352, 352),
(105, 103, 11, 1, 452, 452),
(106, 104, 2, 1, 352, 352),
(107, 105, 2, 1, 352, 352),
(108, 105, 3, 1, 520, 520),
(109, 106, 2, 1, 352, 352),
(110, 107, 2, 1, 352, 352),
(111, 107, 3, 1, 520, 520),
(112, 108, 2, 1, 352, 352),
(113, 109, 2, 1, 352, 352),
(114, 110, 2, 1, 352, 352),
(115, 111, 4, 1, 450, 450),
(116, 112, 2, 1, 352, 352),
(117, 113, 4, 1, 450, 450),
(118, 114, 2, 1, 352, 352),
(119, 115, 2, 1, 352, 352),
(120, 116, 2, 1, 352, 352),
(121, 117, 2, 1, 352, 352),
(122, 118, 2, 1, 352, 352),
(123, 119, 2, 1, 352, 352),
(124, 119, 3, 1, 520, 520),
(125, 120, 2, 1, 352, 352),
(126, 121, 2, 1, 352, 352),
(127, 122, 2, 1, 352, 352),
(128, 122, 3, 1, 520, 520),
(129, 123, 2, 1, 352, 352),
(130, 123, 4, 1, 450, 450),
(131, 124, 2, 1, 352, 352),
(132, 125, 2, 1, 352, 352),
(133, 125, 3, 1, 520, 520),
(134, 126, 2, 2, 352, 704),
(135, 126, 3, 1, 520, 520),
(136, 127, 2, 2, 352, 704),
(137, 127, 10, 1, 80, 80),
(138, 128, 4, 2, 450, 900),
(139, 129, 2, 2, 352, 704),
(140, 129, 4, 1, 450, 450),
(141, 130, 2, 2, 352, 704),
(142, 130, 4, 1, 450, 450),
(143, 131, 2, 2, 352, 704),
(144, 131, 4, 1, 450, 450),
(145, 132, 2, 2, 352, 704),
(146, 132, 4, 1, 450, 450),
(147, 133, 2, 2, 352, 704),
(148, 133, 4, 1, 450, 450),
(149, 134, 9, 2, 50, 100),
(150, 134, 5, 1, 452, 452),
(151, 135, 9, 2, 50, 100),
(152, 135, 10, 1, 80, 80),
(153, 136, 10, 2, 80, 160),
(154, 136, 9, 1, 50, 50),
(155, 137, 10, 1, 80, 80),
(156, 137, 9, 1, 50, 50),
(157, 138, 10, 1, 80, 80),
(158, 138, 9, 1, 50, 50),
(159, 139, 10, 1, 80, 80),
(160, 139, 9, 1, 50, 50),
(161, 140, 9, 2, 50, 100),
(162, 141, 10, 1, 80, 80),
(163, 141, 9, 1, 50, 50),
(164, 142, 2, 1, 352, 352),
(165, 142, 3, 1, 520, 520),
(166, 143, 10, 1, 80, 80),
(167, 144, 9, 1, 50, 50),
(168, 145, 9, 1, 50, 50),
(169, 146, 9, 1, 50, 50),
(170, 146, 10, 1, 80, 80),
(171, 146, 3, 1, 520, 520),
(172, 147, 10, 1, 80, 80),
(173, 147, 9, 1, 50, 50),
(174, 148, 10, 1, 80, 80),
(175, 148, 9, 1, 50, 50),
(176, 148, 3, 1, 520, 520),
(177, 149, 10, 1, 80, 80),
(178, 150, 2, 1, 352, 352),
(179, 150, 3, 1, 520, 520),
(180, 151, 2, 2, 352, 704),
(181, 152, 10, 1, 80, 80),
(182, 153, 2, 2, 352, 704),
(183, 153, 3, 2, 520, 1040),
(184, 153, 11, 1, 452, 452),
(185, 153, 5, 2, 452, 904),
(186, 153, 7, 1, 452, 452),
(187, 154, 3, 1, 520, 520),
(188, 154, 4, 1, 450, 450),
(189, 154, 10, 1, 80, 80),
(190, 155, 2, 1, 352, 352),
(191, 155, 3, 1, 520, 520),
(192, 156, 3, 1, 520, 520),
(193, 156, 2, 1, 352, 352),
(194, 156, 11, 1, 452, 452),
(195, 157, 3, 1, 520, 520),
(196, 157, 4, 1, 450, 450),
(197, 158, 4, 1, 450, 450),
(198, 159, 3, 1, 520, 520),
(199, 159, 4, 3, 450, 1350),
(200, 160, 9, 1, 50, 50),
(201, 160, 10, 1, 80, 80),
(202, 160, 6, 1, 443, 443),
(203, 161, 9, 1, 50, 50),
(204, 161, 10, 1, 80, 80),
(205, 161, 4, 1, 450, 450),
(206, 162, 9, 1, 50, 50),
(207, 162, 10, 1, 80, 80),
(208, 162, 6, 1, 443, 443),
(209, 163, 7, 1, 452, 452),
(210, 163, 9, 1, 50, 50),
(211, 163, 5, 1, 452, 452),
(212, 163, 6, 1, 443, 443),
(213, 164, 7, 1, 452, 452),
(214, 164, 9, 1, 50, 50),
(215, 164, 5, 1, 452, 452),
(216, 164, 6, 1, 443, 443),
(217, 164, 2, 1, 352, 352),
(218, 165, 2, 1, 352, 352),
(219, 165, 4, 1, 450, 450);

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL,
  `vat_percentage` decimal(5,2) DEFAULT 0.00 COMMENT 'VAT percentage applied on sales',
  `covid_tax_percentage` decimal(5,2) DEFAULT 0.00 COMMENT 'COVID tax percentage applied on sales',
  `default_discount` decimal(5,2) DEFAULT 0.00 COMMENT 'Default discount percentage applied on sales',
  `footer_message` text DEFAULT NULL COMMENT 'Footer message displayed on sales receipts'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`, `vat_percentage`, `covid_tax_percentage`, `default_discount`, `footer_message`) VALUES
(1, 'POS ', '', '030-2764092', '', '&lt;p&gt;POS System DONZYTECH&lt;/p&gt;', 3.00, 1.00, 50.00, '															Goods Sold are NOT RETURNABLE																					');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1=Admin,2=Staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(3, 'admin2', 'admin2', '21232f297a57a5a743894a0e4a801fc3', 1),
(4, 'Gideon', 'giddy', '8bb9b4e06bf90e0a1237a09e664d6451', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_receipt`
--
ALTER TABLE `sales_receipt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `sales_receipt`
--
ALTER TABLE `sales_receipt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
