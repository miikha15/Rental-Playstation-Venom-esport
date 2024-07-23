-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2024 at 06:11 AM
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
-- Database: `rental_ps1`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ps3', '', NULL, NULL, NULL),
(2, 'Ps4', '', NULL, NULL, NULL),
(3, 'Ps5', '', NULL, NULL, NULL),
(11, 'Xbox 3', 'xbox-3', '2024-07-10 23:20:58', '2024-07-10 23:30:01', '2024-07-10 23:30:01'),
(12, 'PS 5', 'ps-5', '2024-07-16 23:36:03', '2024-07-16 23:36:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_07_04_094312_create_roles_table', 1),
(6, '2024_07_04_100003_add_role_id_column_to_users_table', 1),
(7, '2024_07_04_104522_create_categories_table', 1),
(8, '2024_07_04_105055_create_playstation_table', 1),
(9, '2024_07_04_105746_create_playstation_categories_table', 1),
(10, '2024_07_04_111037_create_rent_logs_table', 1),
(18, '2024_07_06_104723_add_slug_column_to_categories_table', 2),
(19, '2024_07_06_110146_change_slug_column_into_nullable_in_categories_table', 2),
(20, '2024_07_06_120410_add_soft_delete_to_categories_table', 2),
(21, '2024_07_07_155544_add_slug_cover_column_to_playstation_table', 3),
(22, '2024_07_08_131636_add_soft_delete_to_playstations_table', 3),
(23, '2024_07_09_015107_add_deleted_at_to_playstations_table', 3),
(24, '2024_07_09_031359_add_slug_to_users_table', 4),
(26, '2024_07_09_044108_add_softdelete_to_users_table', 5),
(27, '2024_07_11_062501_add_slug_cover_column_to_playstation_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `playstation`
--

CREATE TABLE `playstation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_ps` varchar(255) NOT NULL,
  `nama_ps` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `harga_sewa` int(11) NOT NULL,
  `stok` varchar(100) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'in stock',
  `cover` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `playstation`
--

INSERT INTO `playstation` (`id`, `kode_ps`, `nama_ps`, `slug`, `harga_sewa`, `stok`, `status`, `cover`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'P001-01', 'Playstation 3 (12Jam)', 'Playstation_3_(12Jam)', 25000, '2', 'in stock', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `playstations`
--

CREATE TABLE `playstations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode_ps` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `harga_sewa` int(11) NOT NULL,
  `stok` varchar(100) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'in stock',
  `cover` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `playstations`
--

INSERT INTO `playstations` (`id`, `kode_ps`, `title`, `slug`, `harga_sewa`, `stok`, `status`, `cover`, `created_at`, `updated_at`, `deleted_at`) VALUES
(15, 'PS300-01', 'PS 3 (12 jam)', 'ps-3-12-jam', 25000, '5', 'in stock', NULL, NULL, '2024-07-11 13:51:45', NULL),
(16, 'PS301-02', 'PS 3 + TV (12 jam)', NULL, 40000, '5', 'in stock', NULL, NULL, '2024-07-09 23:38:14', NULL),
(17, 'PS302-03', 'PS 3 (1 Hari)', NULL, 85000, '5', 'in stock', NULL, NULL, '2024-07-10 00:36:08', NULL),
(18, 'PS303-04', 'PS3 + TV (1 HARI)', NULL, 100000, '5', 'in stock', NULL, NULL, NULL, NULL),
(19, 'PS4001-01', 'PS4 (12 jam)', 'ps4-12-jam', 100000, '5', 'in stock', NULL, NULL, '2024-07-14 03:30:41', NULL),
(20, 'PS4002-02', 'PS4 + TV (12 jam)', NULL, 100000, '5', 'in stock', NULL, NULL, '2024-07-09 23:16:11', NULL),
(21, 'PS4003-03', 'PS4 (1 Hari)', NULL, 100000, '5', 'in stock', NULL, NULL, '2024-07-09 23:35:40', NULL),
(22, 'PS4004-04', 'PS4 + TV (1 Hari)', NULL, 100000, '5', 'in stock', NULL, NULL, '2024-07-09 23:35:58', NULL),
(23, 'PS5001-01', 'PS5 (12 Jam)', NULL, 100000, '5', 'in stock', NULL, NULL, '2024-07-09 23:23:03', NULL),
(24, 'P002-02-1', 'Xbox 360', 'xbox-360', 45000, '1', 'in stock', 'Xbox 360-1720679335-jpeg', '2024-07-10 23:28:56', '2024-07-16 08:31:44', NULL),
(25, 'PS009-01', 'PS 5 CD', 'ps-5-cd', 80000, '2', 'in stock', '', '2024-07-16 02:25:58', '2024-07-16 02:27:05', '2024-07-16 02:27:05'),
(26, 'PS009-02', 'PS 5', 'ps-5', 100000, '2', 'in stock', '', '2024-07-16 02:37:41', '2024-07-16 02:52:01', '2024-07-16 02:52:01'),
(27, 'PS009-03', 'PS 4 CD', 'ps-4-cd', 60000, '4', 'in stock', '', '2024-07-16 02:39:28', '2024-07-16 02:51:57', '2024-07-16 02:51:57'),
(28, 'PS001-01', 'PS 5 + CD', 'ps-5-cd', 80000, '2', 'in stock', '', '2024-07-16 02:53:46', '2024-07-16 02:53:46', NULL),
(29, 'PS009-04', 'PS 4 Slim', 'ps-4-slim', 65000, '2', 'in stock', '', '2024-07-16 03:12:17', '2024-07-16 03:12:17', NULL),
(30, 'PS009-05', 'PS 4 Fat', 'ps-4-fat', 70000, '3', 'in stock', '', '2024-07-16 03:13:43', '2024-07-16 03:13:43', NULL),
(31, 'PS009-06', 'PS 3 CD', 'ps-3-cd', 50000, '3', 'in stock', '', '2024-07-16 03:15:46', '2024-07-16 03:15:46', NULL),
(32, 'PS009-07', 'PS 5 Slim', 'ps-5-slim', 70000, '1', 'in stock', '', '2024-07-16 03:42:08', '2024-07-16 03:42:08', NULL),
(33, 'PS009-08', 'PS 4 Slim', 'ps-4-slim-2', 60000, '1', 'in stock', '', '2024-07-16 03:50:36', '2024-07-16 03:50:36', NULL),
(34, 'PS009-09', 'PS 5 Special Edition', 'ps-5-special-edition', 150000, '1', 'in stock', '', '2024-07-16 03:52:04', '2024-07-16 03:52:04', NULL),
(35, 'PS009-10', 'PS 3 Slim', 'ps-3-slim', 35000, '4', 'in stock', '', '2024-07-16 06:27:04', '2024-07-16 06:27:04', NULL),
(36, 'PS009-11', 'PS 3 Slim', 'ps-3-slim-2', 35000, '4', 'in stock', '', '2024-07-16 06:28:19', '2024-07-16 06:28:19', NULL),
(37, 'PS009-13', 'PS 3 Fat', 'ps-3-fat', 40000, '3', 'in stock', '', '2024-07-16 06:59:37', '2024-07-16 06:59:37', NULL),
(38, 'PS009-14', 'PS 4 Limited', 'ps-4-limited', 70000, '2', 'in stock', '', '2024-07-16 07:11:09', '2024-07-16 07:11:09', NULL),
(39, 'PS009-016', 'PS 3', 'ps-3', 50000, '2', 'in stock', '', '2024-07-16 08:30:51', '2024-07-16 08:31:20', '2024-07-16 08:31:20'),
(40, 'PS009-20', 'PS 3', 'ps-3', 60000, '2', 'in stock', '', '2024-07-16 23:13:57', '2024-07-16 23:13:57', NULL),
(41, 'PS009-21', 'PS 4', 'ps-4', 50000, '3', 'not available', '', '2024-07-16 23:21:45', '2024-07-16 23:34:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `playstation_categories`
--

CREATE TABLE `playstation_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `playstation_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `playstation_categories`
--

INSERT INTO `playstation_categories` (`id`, `playstation_id`, `category_id`, `created_at`, `updated_at`) VALUES
(8, 15, 1, NULL, NULL),
(9, 16, 1, NULL, NULL),
(10, 17, 1, NULL, NULL),
(11, 18, 1, NULL, NULL),
(12, 19, 2, NULL, NULL),
(13, 20, 2, NULL, NULL),
(14, 21, 2, NULL, NULL),
(15, 22, 2, NULL, NULL),
(16, 23, 3, NULL, NULL),
(22, 24, 11, NULL, NULL),
(23, 25, 3, NULL, NULL),
(24, 26, 3, NULL, NULL),
(25, 27, 2, NULL, NULL),
(26, 28, 3, NULL, NULL),
(27, 29, 2, NULL, NULL),
(28, 30, 2, NULL, NULL),
(29, 31, 1, NULL, NULL),
(30, 32, 3, NULL, NULL),
(31, 33, 2, NULL, NULL),
(32, 34, 3, NULL, NULL),
(33, 35, 1, NULL, NULL),
(34, 36, 1, NULL, NULL),
(35, 37, 1, NULL, NULL),
(36, 38, 2, NULL, NULL),
(37, 39, 1, NULL, NULL),
(38, 40, 1, NULL, NULL),
(39, 41, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rent_logs`
--

CREATE TABLE `rent_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `playstation_id` bigint(20) UNSIGNED NOT NULL,
  `rent_date` date NOT NULL,
  `return_date` date NOT NULL,
  `actual_return_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rent_logs`
--

INSERT INTO `rent_logs` (`id`, `user_id`, `playstation_id`, `rent_date`, `return_date`, `actual_return_date`, `created_at`, `updated_at`) VALUES
(1, 2, 15, '2024-07-10', '2024-07-13', NULL, '2024-07-09 23:14:41', '2024-07-09 23:14:41'),
(2, 5, 20, '2024-07-10', '2024-07-13', NULL, '2024-07-09 23:16:11', '2024-07-09 23:16:11'),
(3, 7, 16, '2024-07-10', '2024-07-13', NULL, '2024-07-09 23:17:42', '2024-07-09 23:17:42'),
(4, 3, 17, '2024-07-10', '2024-07-13', NULL, '2024-07-09 23:21:39', '2024-07-09 23:21:39'),
(5, 2, 23, '2024-07-10', '2024-07-13', NULL, '2024-07-09 23:23:03', '2024-07-09 23:23:03'),
(6, 2, 19, '2024-07-10', '2024-07-13', '2024-07-16', '2024-07-09 23:33:57', '2024-07-16 07:45:24'),
(10, 5, 15, '2024-07-10', '2024-07-13', NULL, '2024-07-09 23:38:05', '2024-07-09 23:38:05'),
(11, 5, 16, '2024-07-10', '2024-07-13', '2024-07-12', '2024-07-09 23:38:14', '2024-07-09 23:38:14'),
(13, 3, 17, '2024-07-10', '2024-07-12', '2024-07-13', '2024-07-10 00:36:08', '2024-07-10 00:36:08'),
(14, 5, 15, '2024-07-11', '2024-07-14', NULL, '2024-07-11 13:51:45', '2024-07-11 13:51:45'),
(15, 3, 19, '2024-07-14', '2024-07-17', '2024-07-14', '2024-07-14 03:30:41', '2024-07-14 03:31:28'),
(16, 8, 41, '2024-07-17', '2024-07-20', NULL, '2024-07-16 23:34:48', '2024-07-16 23:34:48');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'client', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Username` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'inactive',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Username`, `slug`, `password`, `email`, `address`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `role_id`) VALUES
(1, 'admin', 'admin', '$2y$10$2YLr1Cjq3bwMYlJ.sGkfW.9pAQM.4Y356vo1yqLFbAPt8toek2RFC', 'admin@gmail.com', 'toko ps solo', 'active', NULL, NULL, NULL, NULL, 1),
(2, 'Udin', 'udin', '$2y$10$2YLr1Cjq3bwMYlJ.sGkfW.9pAQM.4Y356vo1yqLFbAPt8toek2RFC', 'udinsarden@gmail.com', 'bantul', 'active', NULL, NULL, '2024-07-16 20:19:37', '2024-07-16 20:19:37', 2),
(3, 'Mikchael', 'mikchael', '$2y$10$2YLr1Cjq3bwMYlJ.sGkfW.9pAQM.4Y356vo1yqLFbAPt8toek2RFC', 'mikaelbalsem@gmail', 'concat', 'active', NULL, NULL, '2024-07-16 20:18:59', '2024-07-16 20:18:59', 2),
(5, 'Zein', 'zein', '$2y$12$TFfbMD1SeMLIFO5c9qzI/ODOVCxQxfUBUDlL6tSkm3.pAIsT7Z/VK', 'zeinnur@gmail.com', 'Kasihan, Bantul', 'active', NULL, '2024-07-05 18:12:38', '2024-07-16 20:19:34', '2024-07-16 20:19:34', 2),
(7, 'Yoga', 'yoga', '$2y$12$kwpqSiYVTi6Or5vu2N66SOSRf2ZCCvZwHMV4SwhF5cEYMhIkXZp/m', 'yogaaris@gmail.com', 'Klaten', 'inactive', NULL, '2024-07-08 20:31:26', '2024-07-08 20:31:26', NULL, 2),
(8, 'Intan', 'intan', '$2y$12$be.W.1r/KQP52pbXZ2kU3e3.e.Mkyvr0NzGIg6WvQ57tk6Crn9UYO', 'intan02@gmail.com', 'Bengkulu', 'active', NULL, '2024-07-16 20:17:45', '2024-07-16 20:18:15', NULL, 2),
(9, 'Amanda', 'amanda', '$2y$12$O0xNdxZGcZI3396i8PGXY.I.vCUUT71BvfU7E8jD6ezI3rQmKCQr2', 'amandanita@gmail.com', 'Temanggung', 'active', NULL, '2024-07-16 20:21:27', '2024-07-16 20:24:14', NULL, 2),
(10, 'Kevin', 'kevin', '$2y$12$yJofu/UGGvfzJULD9txQXubnvNgnSIqhmK5dwyH/RGVq0IIh4Q2D2', 'kevinal@gmail.com', 'Jakarta', 'active', NULL, '2024-07-16 20:22:12', '2024-07-16 20:24:35', NULL, 2),
(100, 'admin2', 'admin2', '$2y$10$2YLr1Cjq3bwMYlJ.sGkfW.9pAQM.4Y356vo1yqLFbAPt8toek2RFC', 'admin2@gmail.com', 'PS Solo', 'active', NULL, NULL, NULL, NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `playstation`
--
ALTER TABLE `playstation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playstations`
--
ALTER TABLE `playstations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playstation_categories`
--
ALTER TABLE `playstation_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playstation_categories_playstation_id_foreign` (`playstation_id`),
  ADD KEY `playstation_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `rent_logs`
--
ALTER TABLE `rent_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rent_logs_playstation_id_foreign` (`playstation_id`),
  ADD KEY `rent_logs_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `playstation`
--
ALTER TABLE `playstation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `playstations`
--
ALTER TABLE `playstations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `playstation_categories`
--
ALTER TABLE `playstation_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `rent_logs`
--
ALTER TABLE `rent_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `playstation_categories`
--
ALTER TABLE `playstation_categories`
  ADD CONSTRAINT `playstation_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `playstation_categories_playstation_id_foreign` FOREIGN KEY (`playstation_id`) REFERENCES `playstations` (`id`);

--
-- Constraints for table `rent_logs`
--
ALTER TABLE `rent_logs`
  ADD CONSTRAINT `rent_logs_playstation_id_foreign` FOREIGN KEY (`playstation_id`) REFERENCES `playstations` (`id`),
  ADD CONSTRAINT `rent_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
