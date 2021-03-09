-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 09, 2021 at 03:28 AM
-- Server version: 10.2.37-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acadazone_lab`
--

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `discount` int(10) UNSIGNED NOT NULL,
  `medicals_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `discount` int(10) UNSIGNED DEFAULT 0,
  `trx_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`id`, `discount`, `trx_id`, `created_at`, `updated_at`) VALUES
(1, NULL, '602c2742cde2d', '2021-02-16 20:12:50', '2021-02-16 20:12:50'),
(2, NULL, '6033305b5cf24', '2021-02-22 04:17:31', '2021-02-22 04:17:31'),
(3, 0, '603330761802c', '2021-02-22 04:17:58', '2021-02-22 04:17:58'),
(4, 0, '603332e0a72a8', '2021-02-22 04:28:16', '2021-02-22 04:28:16'),
(5, 0, '6033330f8aeb0', '2021-02-22 04:29:03', '2021-02-22 04:29:03'),
(6, 0, '6033334287949', '2021-02-22 04:29:54', '2021-02-22 04:29:54'),
(7, 0, '60333376a6866', '2021-02-22 04:30:46', '2021-02-22 04:30:46'),
(8, NULL, '603a14852fe0d', '2021-02-27 09:44:37', '2021-02-27 09:44:37'),
(9, 1000, '603a154231637', '2021-02-27 09:47:46', '2021-02-27 09:47:46'),
(10, 300, '603e19f224812', '2021-03-02 10:56:50', '2021-03-02 10:56:50'),
(11, NULL, '603e1b1e79d1f', '2021-03-02 11:01:50', '2021-03-02 11:01:50'),
(12, NULL, '603e1e5aeb4ae', '2021-03-02 11:15:38', '2021-03-02 11:15:38'),
(13, 250, '603e2c0e6b992', '2021-03-02 12:14:06', '2021-03-02 12:14:06'),
(14, 250, '603e2cb1a695e', '2021-03-02 12:16:49', '2021-03-02 12:16:49'),
(15, NULL, '603e2d9ea9efe', '2021-03-02 12:20:46', '2021-03-02 12:20:46'),
(16, 600, '603e31e4c2e16', '2021-03-02 12:39:00', '2021-03-02 12:39:00'),
(17, 100, '603e352a42ca2', '2021-03-02 12:52:58', '2021-03-02 12:52:58'),
(18, 0, '6045b19d276e7', '2021-03-08 05:09:49', '2021-03-08 05:09:49');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logged_in_staff`
--

CREATE TABLE `logged_in_staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staffs_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicals`
--

CREATE TABLE `medicals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trx_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tests_id` int(10) UNSIGNED NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `patients_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicals`
--

INSERT INTO `medicals` (`id`, `trx_id`, `tests_id`, `created_at`, `updated_at`, `patients_id`) VALUES
(1, '603a14852fe0d', 2, '2021-02-27', '2021-02-27 09:44:37', 102),
(2, '603a14852fe0d', 4, '2021-02-27', '2021-02-27 09:44:37', 102),
(3, '603a154231637', 4, '2021-02-27', '2021-02-27 09:47:46', 103),
(4, '603a154231637', 5, '2021-02-27', '2021-02-27 09:47:46', 103),
(5, '603e19f224812', 4, '2021-03-02', '2021-03-02 10:56:50', 104),
(6, '603e19f224812', 1, '2021-03-02', '2021-03-02 10:56:50', 104),
(7, '603e1b1e79d1f', 2, '2021-03-02', '2021-03-02 11:01:50', 105),
(8, '603e1b1e79d1f', 3, '2021-03-02', '2021-03-02 11:01:50', 105),
(9, '603e1e5aeb4ae', 3, '2021-03-02', '2021-03-02 11:15:38', 106),
(10, '603e1e5aeb4ae', 2, '2021-03-02', '2021-03-02 11:15:38', 106),
(11, '603e2c0e6b992', 1, '2021-03-02', '2021-03-02 12:14:06', 107),
(12, '603e2c0e6b992', 6, '2021-03-02', '2021-03-02 12:14:06', 107),
(13, '603e2cb1a695e', 1, '2021-03-02', '2021-03-02 12:16:49', 108),
(14, '603e2cb1a695e', 6, '2021-03-02', '2021-03-02 12:16:49', 108),
(15, '603e2d9ea9efe', 6, '2021-03-02', '2021-03-02 12:20:46', 108),
(16, '603e31e4c2e16', 4, '2021-03-02', '2021-03-02 12:39:00', 102),
(17, '603e31e4c2e16', 4, '2021-03-02', '2021-03-02 12:39:00', 102),
(18, '603e352a42ca2', 3, '2021-03-02', '2021-03-02 12:52:58', 109),
(19, '603e352a42ca2', 1, '2021-03-02', '2021-03-02 12:52:58', 109),
(20, '6045b19d276e7', 4, '2021-03-08', '2021-03-08 05:09:49', 104);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2021_01_22_115523_create_tests_table', 1),
(4, '2021_01_22_210600_create_patients_table', 1),
(5, '2021_01_22_212610_create_staff_table', 1),
(6, '2021_01_23_150152_create_selected_test_table', 1),
(7, '2021_01_24_104524_create_medicals_table', 1),
(8, '2021_01_24_114256_create_selected_patient_referral_table', 1),
(9, '2021_01_24_171116_create_deposits_table', 1),
(10, '2021_02_09_100235_create_referrals_table', 2),
(13, '2021_02_09_113540_create_logged_in_staff_table', 3),
(14, '2021_02_09_120008_create_staff_activities_table', 3),
(16, '2021_02_16_072809_create_discounts_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pat_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `pat_id`, `first_name`, `last_name`, `phone`, `gender`, `age`, `created_at`, `updated_at`) VALUES
(101, '602c2742cde2f', 'Frank', 'Okebanama', '08143198212', 'M', '2000-07-02', '2021-02-16', '2021-02-22 04:14:51'),
(102, '603a14852fe13', 'Franklin', 'Okebanama', '08143198212', 'M', '1998-12-23', '2021-02-27', '2021-02-27 09:44:37'),
(103, '603a154231639', 'okeke', 'uche', '+2347025482291', 'F', '2001-02-23', '2021-02-27', '2021-02-27 09:47:46'),
(104, '603e19f224819', 'Uche', 'Mba', '07039327698', 'F', '1999-02-23', '2021-03-02', '2021-03-02 10:56:50'),
(105, '603e1b1e79d2b', 'Ibe', 'Chidera', '08125628628', 'F', '2020-07-08', '2021-03-02', '2021-03-02 11:01:50'),
(106, '603e1e5aeb4af', 'Dora', 'Ndjinkou', '08143198215', 'M', '2020-12-23', '2021-03-02', '2021-03-02 11:15:38'),
(107, '603e2c0e6b994', 'Samson', 'Chinenye', '0803254785', 'M', '2021-03-02', '2021-03-02', '2021-03-02 12:14:06'),
(108, '603e2cb1a6968', 'Samson', 'Chinenye', '080325478574', 'M', '2021-03-02', '2021-03-02', '2021-03-02 12:16:49'),
(109, '603e352a42ca4', 'okere', 'ibe', '08056778587', 'M', '2020-03-04', '2021-03-02', '2021-03-02 12:52:58');

-- --------------------------------------------------------

--
-- Table structure for table `patient_referral`
--

CREATE TABLE `patient_referral` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trx_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referred_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `patients_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patient_referral`
--

INSERT INTO `patient_referral` (`id`, `trx_id`, `referred_by`, `created_at`, `updated_at`, `patients_id`) VALUES
(1, '602c2742cde2d', 'others', '2021-02-16 20:12:50', '2021-02-16 20:12:50', 101),
(2, '603a14852fe0d', 'others', '2021-02-27 09:44:37', '2021-02-27 09:44:37', 102),
(3, '603a154231637', 'others', '2021-02-27 09:47:46', '2021-02-27 09:47:46', 103),
(4, '603e19f224812', 'Biya General clinic', '2021-03-02 10:56:50', '2021-03-02 10:56:50', 104),
(5, '603e1b1e79d1f', 'Dr Honour specialist hospital', '2021-03-02 11:01:50', '2021-03-02 11:01:50', 105),
(6, '603e1e5aeb4ae', 'Dr Honour specialist hospital', '2021-03-02 11:15:38', '2021-03-02 11:15:38', 106),
(7, '603e2c0e6b992', 'ST. frank Hospital opi', '2021-03-02 12:14:06', '2021-03-02 12:14:06', 107),
(8, '603e2cb1a695e', 'ST. frank Hospital opi', '2021-03-02 12:16:49', '2021-03-02 12:16:49', 108),
(9, '603e2d9ea9efe', 'ST. frank Hospital opi', '2021-03-02 12:20:46', '2021-03-02 12:20:46', 108),
(10, '603e31e4c2e16', 'Dr Honour specialist hospital', '2021-03-02 12:39:00', '2021-03-02 12:39:00', 102),
(11, '603e352a42ca2', 'Bishop shahama clinic', '2021-03-02 12:52:58', '2021-03-02 12:52:58', 109),
(12, '6045b19d276e7', 'ST. frank Hospital opi', '2021-03-08 05:09:49', '2021-03-08 05:09:49', 104);

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `referrals`
--

INSERT INTO `referrals` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'ST. frank Hospital opi', '2021-02-27 09:59:56', '2021-02-27 09:59:56'),
(2, 'Bishop shahama clinic', '2021-02-27 10:00:26', '2021-02-27 10:00:26'),
(3, 'Dr Honour specialist hospital', '2021-02-27 10:02:10', '2021-02-27 10:02:10'),
(4, 'Biya General clinic', '2021-03-02 10:49:22', '2021-03-02 10:49:22'),
(5, 'frank clink', '2021-03-02 11:07:06', '2021-03-02 11:07:06');

-- --------------------------------------------------------

--
-- Table structure for table `selected_test`
--

CREATE TABLE `selected_test` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uniqueid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_activities`
--

CREATE TABLE `staff_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `staffs_id` int(10) UNSIGNED NOT NULL,
  `activity` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff_activities`
--

INSERT INTO `staff_activities` (`id`, `staffs_id`, `activity`, `created_at`, `updated_at`) VALUES
(1, 2, 'logged in', '2021-02-16 20:11:18', '2021-02-16 20:11:18'),
(2, 2, 'Registered a new Patient', '2021-02-16 20:12:50', '2021-02-16 20:12:50'),
(3, 2, 'logged out', '2021-02-16 20:20:45', '2021-02-16 20:20:45'),
(4, 2, 'logged out', '2021-02-22 04:11:26', '2021-02-22 04:11:26'),
(5, 2, 'logged in', '2021-02-22 04:11:46', '2021-02-22 04:11:46'),
(6, 2, 'logged in', '2021-02-24 13:18:12', '2021-02-24 13:18:12'),
(7, 2, 'logged in', '2021-02-27 09:41:00', '2021-02-27 09:41:00'),
(8, 2, 'Registered a new Patient', '2021-02-27 09:44:37', '2021-02-27 09:44:37'),
(9, 2, 'Registered a new Patient', '2021-02-27 09:47:46', '2021-02-27 09:47:46'),
(10, 2, 'logged out', '2021-02-27 10:18:44', '2021-02-27 10:18:44'),
(11, 2, 'logged in', '2021-03-02 10:51:58', '2021-03-02 10:51:58'),
(12, 2, 'Registered a new Patient', '2021-03-02 10:56:50', '2021-03-02 10:56:50'),
(13, 2, 'Registered a new Patient', '2021-03-02 11:01:50', '2021-03-02 11:01:50'),
(14, 2, 'logged out', '2021-03-02 11:11:49', '2021-03-02 11:11:49'),
(15, 2, 'logged in', '2021-03-02 11:12:01', '2021-03-02 11:12:01'),
(16, 2, 'Registered a new Patient', '2021-03-02 11:15:39', '2021-03-02 11:15:39'),
(17, 2, 'logged in', '2021-03-02 12:05:18', '2021-03-02 12:05:18'),
(18, 2, 'Registered a new Patient', '2021-03-02 12:14:06', '2021-03-02 12:14:06'),
(19, 2, 'Registered a new Patient', '2021-03-02 12:16:49', '2021-03-02 12:16:49'),
(20, 2, 'Registered a new Patient', '2021-03-02 12:20:46', '2021-03-02 12:20:46'),
(21, 2, 'logged out', '2021-03-02 12:35:05', '2021-03-02 12:35:05'),
(22, 2, 'logged in', '2021-03-02 12:35:50', '2021-03-02 12:35:50'),
(23, 2, 'Registered a new Patient', '2021-03-02 12:39:00', '2021-03-02 12:39:00'),
(24, 2, 'logged out', '2021-03-02 12:46:21', '2021-03-02 12:46:21'),
(25, 2, 'logged in', '2021-03-02 12:48:40', '2021-03-02 12:48:40'),
(26, 2, 'Registered a new Patient', '2021-03-02 12:52:58', '2021-03-02 12:52:58'),
(27, 2, 'logged out', '2021-03-02 13:05:02', '2021-03-02 13:05:02'),
(28, 2, 'logged out', '2021-03-02 13:22:04', '2021-03-02 13:22:04'),
(29, 2, 'logged in', '2021-03-02 13:22:12', '2021-03-02 13:22:12'),
(30, 2, 'logged out', '2021-03-08 05:08:12', '2021-03-08 05:08:12'),
(31, 2, 'logged in', '2021-03-08 05:08:26', '2021-03-08 05:08:26'),
(32, 2, 'Registered a new Patient', '2021-03-08 05:09:49', '2021-03-08 05:09:49'),
(33, 2, 'logged out', '2021-03-08 05:13:05', '2021-03-08 05:13:05');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `name`, `price`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'hiv', '400', 'None', '2021-02-22 04:27:28', '2021-02-22 04:27:28'),
(2, 'SYphlis test', '2200', 'None', '2021-02-24 13:19:32', '2021-02-24 13:19:32'),
(3, 'MP test', '700', 'None', '2021-02-24 13:20:02', '2021-02-24 13:20:02'),
(4, 'blood sugar', '2300', 'None', '2021-02-24 13:21:06', '2021-02-24 13:21:06'),
(6, 'hiv 2', '1220', 'None', '2021-03-02 11:09:02', '2021-03-02 11:09:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loggedin` int(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `loggedin`, `created_at`, `updated_at`) VALUES
(1, 'chiz', NULL, '$2y$10$IMfFt3xn/DD2mFlY8XhMyO/S.7oFJ1vmcPftYduiqhoMmpqx8PBfu', NULL, 0, '2021-01-27 06:34:28', '2021-01-27 06:34:28'),
(2, 'admin', NULL, '$2y$10$Qyk0tmTw6JN/DhbdbiC1.e6YwSZP7ZzbPTHYoL3sKCdESHkpruvc.', NULL, 0, NULL, '2021-03-08 05:13:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logged_in_staff`
--
ALTER TABLE `logged_in_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicals`
--
ALTER TABLE `medicals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `medicals_patients_id_foreign` (`patients_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_referral`
--
ALTER TABLE `patient_referral`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_referral_patients_id_foreign` (`patients_id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `selected_test`
--
ALTER TABLE `selected_test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_user_id_foreign` (`user_id`);

--
-- Indexes for table `staff_activities`
--
ALTER TABLE `staff_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logged_in_staff`
--
ALTER TABLE `logged_in_staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicals`
--
ALTER TABLE `medicals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `patient_referral`
--
ALTER TABLE `patient_referral`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `selected_test`
--
ALTER TABLE `selected_test`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_activities`
--
ALTER TABLE `staff_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `medicals`
--
ALTER TABLE `medicals`
  ADD CONSTRAINT `medicals_patients_id_foreign` FOREIGN KEY (`patients_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `patient_referral`
--
ALTER TABLE `patient_referral`
  ADD CONSTRAINT `patient_referral_patients_id_foreign` FOREIGN KEY (`patients_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
