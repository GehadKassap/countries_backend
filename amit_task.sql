-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 11, 2023 at 12:50 PM
-- Server version: 5.7.36
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amit_task`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `country_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_flag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_name`, `country_code`, `phone_number`, `phone_status`, `country_flag`, `created_at`, `updated_at`) VALUES
(1, 'Iceland', '+354', 'dm', 'nok', 'https://flagcdn.com/w320/is.png', '2023-02-16 07:47:10', '2023-03-10 17:29:07'),
(2, 'Japan', '+81', '12', 'nok', 'https://flagcdn.com/w320/jp.png', '2023-02-16 07:47:10', '2023-03-10 22:32:40'),
(3, 'New Caledonia', '+687', '123122222ww', 'nok', 'https://flagcdn.com/w320/nc.png', '2023-02-16 07:47:10', '2023-03-10 16:32:28'),
(4, 'Somalia', '+252', '323', 'nok', 'https://flagcdn.com/w320/so.png', '2023-02-16 07:47:10', '2023-03-10 17:40:01'),
(5, 'Jordan', '+962', '123', 'nok', 'https://flagcdn.com/w320/jo.png', '2023-02-16 07:47:10', '2023-03-10 17:39:55'),
(6, 'Caribbean Netherlands', '+599', NULL, NULL, 'https://flagcdn.com/w320/bq.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(7, 'Algeria', '+213', '45', 'nok', 'https://flagcdn.com/w320/dz.png', '2023-02-16 07:47:10', '2023-03-10 17:16:27'),
(8, 'New Zealand', '+64', '2', 'nok', 'https://flagcdn.com/w320/nz.png', '2023-02-16 07:47:10', '2023-03-10 17:16:03'),
(9, 'Chile', '+56', '1234dddd', 'nok', 'https://flagcdn.com/w320/cl.png', '2023-02-16 07:47:10', '2023-03-10 17:08:10'),
(10, 'France', '+33', '1234dddd', 'nok', 'https://flagcdn.com/w320/fr.png', '2023-02-16 07:47:10', '2023-03-10 17:08:19'),
(11, 'Lesotho', '+266', NULL, NULL, 'https://flagcdn.com/w320/ls.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(12, 'Lebanon', '+961', '12345', 'nok', 'https://flagcdn.com/w320/lb.png', '2023-02-16 07:47:10', '2023-03-10 19:18:54'),
(13, 'Turks and Caicos Islands', '+1649', NULL, NULL, 'https://flagcdn.com/w320/tc.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(14, 'Norway', '+47', NULL, NULL, 'https://flagcdn.com/w320/no.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(15, 'Peru', '+51', NULL, NULL, 'https://flagcdn.com/w320/pe.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(16, 'Syria', '+963', NULL, NULL, 'https://flagcdn.com/w320/sy.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(17, 'Nauru', '+674', NULL, NULL, 'https://flagcdn.com/w320/nr.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(19, 'Honduras', '+504', NULL, NULL, 'https://flagcdn.com/w320/hn.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(20, 'Benin', '+229', NULL, NULL, 'https://flagcdn.com/w320/bj.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(21, 'Palau', '+680', NULL, NULL, 'https://flagcdn.com/w320/pw.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(22, 'Saint Martin', '+590', '123', 'ok', 'https://flagcdn.com/w320/mf.png', '2023-02-16 07:47:10', '2023-03-10 22:41:02'),
(23, 'Svalbard and Jan Mayen', '+4779', NULL, NULL, 'https://flagcdn.com/w320/sj.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(24, 'Montenegro', '+382', NULL, NULL, 'https://flagcdn.com/w320/me.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(25, 'Estonia', '+372', NULL, NULL, 'https://flagcdn.com/w320/ee.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(26, 'Grenada', '+1473', NULL, NULL, 'https://flagcdn.com/w320/gd.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(27, 'Singapore', '+65', NULL, NULL, 'https://flagcdn.com/w320/sg.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(28, 'Mali', '+223', NULL, NULL, 'https://flagcdn.com/w320/ml.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(29, 'Kazakhstan', '+76', NULL, NULL, 'https://flagcdn.com/w320/kz.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(30, 'Spain', '+34', 'q', 'nok', 'https://flagcdn.com/w320/es.png', '2023-02-16 07:47:10', '2023-03-10 22:41:16'),
(31, 'Monaco', '+377', NULL, NULL, 'https://flagcdn.com/w320/mc.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(32, 'Seychelles', '+248', NULL, NULL, 'https://flagcdn.com/w320/sc.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(33, 'Armenia', '+374', NULL, NULL, 'https://flagcdn.com/w320/am.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(34, 'China', '+86', NULL, NULL, 'https://flagcdn.com/w320/cn.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(35, 'Malaysia', '+60', NULL, NULL, 'https://flagcdn.com/w320/my.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(36, 'Åland Islands', '+35818', NULL, NULL, 'https://flagcdn.com/w320/ax.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(37, 'Andorra', '+376', NULL, NULL, 'https://flagcdn.com/w320/ad.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(38, 'Turkey', '+90', NULL, NULL, 'https://flagcdn.com/w320/tr.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(39, 'Wallis and Futuna', '+681', NULL, NULL, 'https://flagcdn.com/w320/wf.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(40, 'Ethiopia', '+251', NULL, NULL, 'https://flagcdn.com/w320/et.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(41, 'Paraguay', '+595', NULL, NULL, 'https://flagcdn.com/w320/py.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(42, 'Czechia', '+420', NULL, NULL, 'https://flagcdn.com/w320/cz.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(43, 'Iran', '+98', NULL, NULL, 'https://flagcdn.com/w320/ir.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(44, 'Guinea-Bissau', '+245', NULL, NULL, 'https://flagcdn.com/w320/gw.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(45, 'Ghana', '+233', NULL, NULL, 'https://flagcdn.com/w320/gh.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(46, 'Netherlands', '+31', NULL, NULL, 'https://flagcdn.com/w320/nl.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(47, 'Sweden', '+46', NULL, NULL, 'https://flagcdn.com/w320/se.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(48, 'Guyana', '+592', NULL, NULL, 'https://flagcdn.com/w320/gy.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(49, 'Brunei', '+673', 'd', 'nok', 'https://flagcdn.com/w320/bn.png', '2023-02-16 07:47:10', '2023-03-11 10:35:11'),
(50, 'Sudan', '+249', NULL, NULL, 'https://flagcdn.com/w320/sd.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(51, 'Austria', '+43', NULL, NULL, 'https://flagcdn.com/w320/at.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(52, 'Venezuela', '+58', NULL, NULL, 'https://flagcdn.com/w320/ve.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(53, 'Eswatini', '+268', NULL, NULL, 'https://flagcdn.com/w320/sz.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(54, 'Palestine', '+970', NULL, NULL, 'https://flagcdn.com/w320/ps.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(55, 'São Tomé and Príncipe', '+239', NULL, NULL, 'https://flagcdn.com/w320/st.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(56, 'Northern Mariana Islands', '+1670', NULL, NULL, 'https://flagcdn.com/w320/mp.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(57, 'Kenya', '+254', NULL, NULL, 'https://flagcdn.com/w320/ke.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(58, 'Papua New Guinea', '+675', NULL, NULL, 'https://flagcdn.com/w320/pg.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(59, 'Chad', '+235', NULL, NULL, 'https://flagcdn.com/w320/td.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(60, 'Taiwan', '+886', NULL, NULL, 'https://flagcdn.com/w320/tw.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(61, 'Cape Verde', '+238', NULL, NULL, 'https://flagcdn.com/w320/cv.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(62, 'Saint Vincent and the Grenadines', '+1784', NULL, NULL, 'https://flagcdn.com/w320/vc.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(63, 'Turkmenistan', '+993', 'sd', 'nok', 'https://flagcdn.com/w320/tm.png', '2023-02-16 07:47:10', '2023-03-10 22:44:26'),
(64, 'Moldova', '+373', NULL, NULL, 'https://flagcdn.com/w320/md.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(65, 'Romania', '+40', NULL, NULL, 'https://flagcdn.com/w320/ro.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(66, 'Marshall Islands', '+692', NULL, NULL, 'https://flagcdn.com/w320/mh.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(67, 'Isle of Man', '+44', NULL, NULL, 'https://flagcdn.com/w320/im.png', '2023-02-16 07:47:10', '2023-02-16 07:47:10'),
(71, 'New Caledonia', '+687', 'qad', 'ok', 'https://flagcdn.com/w320/nc.png', '2023-03-04 10:29:03', '2023-03-04 10:29:03'),
(72, 'New Caledonia', '+687', '234', 'ok', 'https://flagcdn.com/w320/nc.png', '2023-03-04 10:29:50', '2023-03-04 10:29:50'),
(84, 'Spain', '+34', '12', 'nok', 'https://flagcdn.com/w320/es.png', '2023-03-11 09:17:55', '2023-03-11 09:17:55'),
(83, 'Japan', '+81', NULL, 'nok', 'https://flagcdn.com/w320/jp.png', '2023-03-10 11:59:45', '2023-03-10 11:59:45'),
(76, 'Mali', '+223', '1234567', 'ok', 'https://flagcdn.com/w320/ml.png', '2023-03-10 09:39:34', '2023-03-10 09:39:34'),
(77, 'Mali', '+223', '12', 'ok', 'https://flagcdn.com/w320/ml.png', '2023-03-10 09:40:07', '2023-03-10 09:40:07'),
(80, 'Mali', '+223', '1234567', 'ok', 'https://flagcdn.com/w320/ml.png', '2023-03-10 09:51:30', '2023-03-10 09:51:30'),
(81, 'New Zealand', '+64', '12', 'nok', 'https://flagcdn.com/w320/nz.png', '2023-03-10 09:51:56', '2023-03-10 09:51:56'),
(85, 'Japan', '+81', '1', 'nok', 'https://flagcdn.com/w320/jp.png', '2023-03-11 10:14:30', '2023-03-11 10:14:30'),
(87, 'Algeria', '+213', 'z', 'nok', 'https://flagcdn.com/w320/dz.png', '2023-03-11 10:33:58', '2023-03-11 10:33:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_02_07_191925_create_countries_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
