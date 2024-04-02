-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2024 at 11:36 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `calculator`
--

-- --------------------------------------------------------

--
-- Table structure for table `calculations`
--

CREATE TABLE `calculations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `result` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `calculations`
--

INSERT INTO `calculations` (`id`, `method`, `result`, `created_at`, `updated_at`) VALUES
(1, 'add', '10.00', '2024-03-30 05:45:58', '2024-03-30 05:45:58'),
(2, 'add', '12.00', '2024-03-30 05:55:10', '2024-03-30 05:55:10'),
(3, 'add', '12.00', '2024-03-30 05:58:08', '2024-03-30 05:58:08'),
(4, 'add', '88.00', '2024-03-30 05:58:38', '2024-03-30 05:58:38'),
(5, 'subtract', '91.00', '2024-03-30 06:02:53', '2024-03-30 06:02:53'),
(6, 'multiply', '170.00', '2024-03-30 06:03:09', '2024-03-30 06:03:09'),
(7, 'subtract', '82.00', '2024-03-30 06:04:01', '2024-03-30 06:04:01'),
(8, 'subtract', '76.00', '2024-03-30 06:04:04', '2024-03-30 06:04:04'),
(9, 'multiply', '48.00', '2024-03-30 06:05:36', '2024-03-30 06:05:36'),
(10, 'add', '9672.00', '2024-03-30 06:05:39', '2024-03-30 06:05:39'),
(11, 'add', '38.00', '2024-03-30 06:07:05', '2024-03-30 06:07:05'),
(12, 'add', '7672.00', '2024-03-30 06:07:15', '2024-03-30 06:07:15'),
(13, 'subtract', '22.00', '2024-03-30 06:07:18', '2024-03-30 06:07:18'),
(14, 'add', '6.00', '2024-03-30 06:30:11', '2024-03-30 06:30:11'),
(15, 'add', '88.00', '2024-03-30 07:49:45', '2024-03-30 07:49:45'),
(16, 'add', '3.08', '2024-03-30 08:08:06', '2024-03-30 08:08:06'),
(17, 'add', '80.00', '2024-04-01 00:42:55', '2024-04-01 00:42:55'),
(18, 'add', '10.00', '2024-04-01 00:43:28', '2024-04-01 00:43:28'),
(19, 'divide', '3.00', '2024-04-01 00:53:17', '2024-04-01 00:53:17'),
(20, 'multiply', '15.00', '2024-04-01 00:53:22', '2024-04-01 00:53:22'),
(21, 'multiply', '997.94', '2024-04-01 00:53:30', '2024-04-01 00:53:30'),
(22, 'multiply', '416.00', '2024-04-01 01:21:31', '2024-04-01 01:21:31'),
(23, 'multiply', '53928.00', '2024-04-01 02:10:54', '2024-04-01 02:10:54'),
(24, 'subtract', '53896.00', '2024-04-01 02:10:57', '2024-04-01 02:10:57'),
(25, 'divide', '10779.20', '2024-04-01 02:11:00', '2024-04-01 02:11:00'),
(26, 'divide', '414.58', '2024-04-01 02:11:04', '2024-04-01 02:11:04'),
(27, 'multiply', '7533396', '2024-04-01 02:14:08', '2024-04-01 02:14:08'),
(28, 'multiply', '2727089352', '2024-04-01 02:14:12', '2024-04-01 02:14:12'),
(29, 'multiply', '261800577792', '2024-04-01 02:14:16', '2024-04-01 02:14:16'),
(30, 'divide', '3.6956521739130435', '2024-04-01 02:14:57', '2024-04-01 02:14:57'),
(31, 'multiply', '58970789344769', '2024-04-01 02:39:44', '2024-04-01 02:39:44'),
(32, 'multiply', '5989994334445', '2024-04-01 02:42:51', '2024-04-01 02:42:51'),
(33, 'multiply', '39332873334', '2024-04-01 02:43:30', '2024-04-01 02:43:30'),
(34, 'multiply', '49769937', '2024-04-01 02:44:40', '2024-04-01 02:44:40'),
(35, 'multiply', '331766400042', '2024-04-01 02:44:43', '2024-04-01 02:44:43'),
(36, 'multiply', '8888847111144', '2024-04-01 02:44:57', '2024-04-01 02:44:57'),
(37, 'divide', '3.142857142857143', '2024-04-01 02:48:03', '2024-04-01 02:48:03'),
(38, 'multiply', '288', '2024-04-01 03:12:02', '2024-04-01 03:12:02'),
(39, 'subtract', '280', '2024-04-01 03:12:04', '2024-04-01 03:12:04'),
(40, 'add', '300', '2024-04-01 03:12:07', '2024-04-01 03:12:07'),
(41, 'subtract', '263.75', '2024-04-01 03:12:11', '2024-04-01 03:12:11'),
(42, 'multiply', '3926274', '2024-04-01 03:14:15', '2024-04-01 03:14:15'),
(43, 'divide', '3.142857142857143', '2024-04-01 03:14:20', '2024-04-01 03:14:20'),
(44, 'divide', 'Infinity', '2024-04-01 03:17:34', '2024-04-01 03:17:34'),
(45, 'multiply', '7225', '2024-04-01 03:20:46', '2024-04-01 03:20:46'),
(46, 'add', '7261', '2024-04-01 03:20:49', '2024-04-01 03:20:49'),
(47, 'subtract', '7256', '2024-04-01 03:20:51', '2024-04-01 03:20:51'),
(48, 'multiply', '696576', '2024-04-01 03:20:53', '2024-04-01 03:20:53'),
(49, 'add', '69657628', '2024-04-01 03:21:06', '2024-04-01 03:21:06'),
(50, 'percentage', '125', '2024-04-01 03:32:38', '2024-04-01 03:32:38'),
(51, 'divide', '1.3333333333333333', '2024-04-01 03:33:38', '2024-04-01 03:33:38'),
(52, 'percentage', '5010', '2024-04-01 03:33:59', '2024-04-01 03:33:59'),
(53, 'percentage', '500', '2024-04-01 03:34:16', '2024-04-01 03:34:16'),
(54, 'percentage', '13000', '2024-04-01 03:34:31', '2024-04-01 03:34:31'),
(55, 'add', 'NaN', '2024-04-01 03:35:08', '2024-04-01 03:35:08'),
(56, 'add', 'NaN', '2024-04-01 03:35:26', '2024-04-01 03:35:26'),
(57, 'add', '0', '2024-04-01 03:37:58', '2024-04-01 03:37:58'),
(58, 'add', '0', '2024-04-01 03:38:13', '2024-04-01 03:38:13'),
(59, 'subtract', '0', '2024-04-01 03:38:15', '2024-04-01 03:38:15'),
(60, 'add', '0', '2024-04-01 03:38:17', '2024-04-01 03:38:17'),
(61, 'add', '6', '2024-04-01 03:42:26', '2024-04-01 03:42:26'),
(62, 'add', '123', '2024-04-01 03:49:52', '2024-04-01 03:49:52'),
(63, 'multiply', '2808', '2024-04-01 03:50:17', '2024-04-01 03:50:17'),
(64, 'add', '121', '2024-04-01 03:51:00', '2024-04-01 03:51:00'),
(65, 'percentage', '116', '2024-04-01 03:51:46', '2024-04-01 03:51:46'),
(66, 'multiply', '5929', '2024-04-01 03:51:55', '2024-04-01 03:51:55'),
(67, 'add', '5961.36', '2024-04-01 03:52:00', '2024-04-01 03:52:00'),
(68, 'add', 'NaN', '2024-04-01 03:52:09', '2024-04-01 03:52:09'),
(69, 'add', 'NaN', '2024-04-01 03:52:18', '2024-04-01 03:52:18'),
(70, 'add', 'NaN', '2024-04-01 03:52:22', '2024-04-01 03:52:22'),
(71, 'subtract', '4', '2024-04-01 03:54:53', '2024-04-01 03:54:53'),
(72, 'percentage', '14.5', '2024-04-01 03:54:58', '2024-04-01 03:54:58'),
(73, 'multiply', '81', '2024-04-01 03:55:03', '2024-04-01 03:55:03'),
(74, 'add', '57.97', '2024-04-01 03:55:16', '2024-04-01 03:55:16'),
(75, 'multiply', '480', '2024-04-01 03:55:22', '2024-04-01 03:55:22'),
(76, 'percentage', 'NaN', '2024-04-01 03:55:30', '2024-04-01 03:55:30'),
(77, 'percentage', 'NaN', '2024-04-01 03:55:40', '2024-04-01 03:55:40'),
(78, 'subtract', '61', '2024-04-01 03:57:56', '2024-04-01 03:57:56'),
(79, 'add', '-36', '2024-04-01 03:58:00', '2024-04-01 03:58:00'),
(80, 'percentage', 'NaN', '2024-04-01 03:58:11', '2024-04-01 03:58:11'),
(81, 'add', '110', '2024-04-01 04:04:53', '2024-04-01 04:04:53'),
(82, 'add', '11077', '2024-04-01 04:05:05', '2024-04-01 04:05:05'),
(83, 'subtract', '10826', '2024-04-01 04:05:16', '2024-04-01 04:05:16'),
(84, 'subtract', '10800', '2024-04-01 04:05:19', '2024-04-01 04:05:19'),
(85, 'divide', '42.51968503937008', '2024-04-01 04:05:23', '2024-04-01 04:05:23'),
(86, 'percentage', '9', '2024-04-01 04:05:36', '2024-04-01 04:05:36');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_resets_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2024_03_30_101720_create_calculations_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calculations`
--
ALTER TABLE `calculations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `calculations`
--
ALTER TABLE `calculations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
