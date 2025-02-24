-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2025 at 07:42 PM
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
-- Database: `car_rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `car_type` varchar(255) NOT NULL,
  `daily_rent_price` decimal(8,2) NOT NULL,
  `availability` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `name`, `brand`, `model`, `year`, `car_type`, `daily_rent_price`, `availability`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Toyota Corolla', 'Toyota', 'Corolla', 2022, 'Sedan', 3500.00, 1, '1.jpg', '2025-02-16 17:54:39', '2025-02-16 13:44:10'),
(2, 'Honda Civic', 'Honda', 'Civic', 2021, 'Sedan', 4000.00, 1, '2.jpg', '2025-02-16 17:54:39', '2025-02-16 17:54:39'),
(3, 'Nissan X-Trail', 'Nissan', 'X-Trail', 2020, 'SUV', 5500.00, 1, '3.jpg', '2025-02-16 17:54:39', '2025-02-16 17:54:39'),
(4, 'Mitsubishi Pajero', 'Mitsubishi', 'Pajero', 2019, 'SUV', 6000.00, 1, '4.jpg', '2025-02-16 17:54:39', '2025-02-16 17:54:39'),
(5, 'Suzuki Swift', 'Suzuki', 'Swift', 2023, 'Hatchback', 3000.00, 1, '5.jpg', '2025-02-16 17:54:39', '2025-02-16 17:54:39'),
(6, 'Ford Mustang', 'Ford', 'Mustang', 2022, 'Sports', 10000.00, 1, '6.jpg', '2025-02-16 17:54:39', '2025-02-16 17:54:39'),
(7, 'BMW X5', 'BMW', 'X5', 2021, 'Luxury SUV', 12000.00, 1, '7.jpg', '2025-02-16 17:54:39', '2025-02-16 17:54:39'),
(8, 'Mercedes-Benz C-Class', 'Mercedes-Benz', 'C-Class', 2023, 'Luxury Sedan', 15000.00, 1, '8.jpg', '2025-02-16 17:54:39', '2025-02-16 17:54:39'),
(9, 'Hyundai Tucson', 'Hyundai', 'Tucson', 2020, 'SUV', 5000.00, 1, '9.jpg', '2025-02-16 17:54:39', '2025-02-16 17:54:39'),
(10, 'Kia Sportage', 'Kia', 'Sportage', 2021, 'SUV', 4800.00, 1, '10.jpg', '2025-02-16 17:54:39', '2025-02-16 17:54:39');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Raju', 'customer1@gmail.com', 'sds', '2025-02-20 13:28:51', '2025-02-20 13:28:51');

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
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2025_02_15_211834_create_cars_table', 1),
(5, '2025_02_15_211834_create_users_table', 1),
(6, '2025_02_15_211835_create_rentals_table', 1),
(7, '2025_02_20_190355_create_contacts_table', 2),
(8, '2014_10_12_100000_create_password_resets_table', 3),
(9, '2025_02_21_132135_add_remember_token_to_users_table', 3),
(10, '2025_02_21_225652_add_cancellable_to_rentals_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `rentals`
--

CREATE TABLE `rentals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `car_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_cost` decimal(8,2) NOT NULL,
  `status` enum('Ongoing','Completed','Cancelled') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cancellable` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rentals`
--

INSERT INTO `rentals` (`id`, `user_id`, `car_id`, `start_date`, `end_date`, `total_cost`, `status`, `created_at`, `updated_at`, `cancellable`) VALUES
(28, 6, 1, '2025-02-25', '2025-02-26', 100.00, 'Cancelled', '2025-02-23 12:28:25', '2025-02-23 12:30:26', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `role` enum('admin','customer') NOT NULL DEFAULT 'customer',
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `role`, `address`, `city`, `zip_code`, `created_at`, `updated_at`, `remember_token`) VALUES
(1, 'Admin User2', 'admin2@example.com', '$2y$10$abcdefghijklmnopqrstuv', '01234567890', 'admin', '123 Admin Street Dhaka', 'Dhaka', '1000', '2025-02-16 17:52:41', '2025-02-16 12:35:32', NULL),
(2, 'Mr John Doe', 'john.doe@example.com', '$2y$10$abcdefghijklmnopqrstuv', '01987654321', 'customer', '456 Customer Road', 'Chittagong', '4000', '2025-02-16 17:52:41', '2025-02-22 11:52:25', NULL),
(3, 'Jane Smith', 'jane.smith@example.com', '$2y$10$abcdefghijklmnopqrstuv', '01711223344', 'customer', '789 Buyer Lane', 'Sylhet', '3100', '2025-02-16 17:52:41', '2025-02-16 17:52:41', NULL),
(4, 'Michael Khan', 'michael.khan@example.com', '$2y$10$abcdefghijklmnopqrstuv', '01822334455', 'customer', '159 Renters Avenue', 'Khulna', '9100', '2025-02-16 17:52:41', '2025-02-16 17:52:41', NULL),
(5, 'Sarah Rahman', 'sarah.rahman@example.com', '$2y$10$abcdefghijklmnopqrstuv', '01699887766', 'customer', '753 Shopper Street', 'Rajshahi', '6000', '2025-02-16 17:52:41', '2025-02-16 17:52:41', NULL),
(6, 'Learning Master', 'earningmasterlearn@gmail.com', '$2y$12$P7eU/u79enRzjEOmtf/Xt.31v/KQ3Fa6QJIsFdMhaZrhg/HVUZIbS', '0188445548', 'customer', '3rd Floor Mascot Plaza, 7 Uttara, Dhaka 1230', 'Uttara 7 Dhaka', '1230', '2025-02-16 13:07:00', '2025-02-22 13:13:24', 'B51GphMosjKGKpO85YXDmaHexPmUo4GRqYfKXEG8s4fj8K42lSO56CBOdZGl'),
(7, 'customer2', 'customer2@gmail.com', '$2y$12$9SVgWk09guE7Cd4NLxYiW.2JGJHa6K3qMx3AIcb6js.29zLBHWhpG', '0188887788', 'customer', NULL, NULL, NULL, '2025-02-16 13:07:51', '2025-02-16 13:07:51', NULL),
(9, 'Admin User', 'qatarfashion01@gmail.com', '$2y$12$HAJFijOtCoeO4BoYhcT5ieNze0hrasLOOW.TdV6gNaAQIkwTwa./6', '01746636666', 'admin', NULL, NULL, NULL, '2025-02-16 15:32:19', '2025-02-16 15:32:19', NULL),
(10, 'customer3', 'customer3@gmail.com', '$2y$12$j/ZsDV6E9PjlKmM70YjiJebYXQgkrAR6vyRv4i.IxnTufYqARRRlO', '0144588554', 'customer', NULL, NULL, NULL, '2025-02-20 03:27:27', '2025-02-20 03:27:27', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
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
-- Indexes for table `rentals`
--
ALTER TABLE `rentals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rentals_user_id_foreign` (`user_id`),
  ADD KEY `rentals_car_id_foreign` (`car_id`);

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
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- AUTO_INCREMENT for table `rentals`
--
ALTER TABLE `rentals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rentals`
--
ALTER TABLE `rentals`
  ADD CONSTRAINT `rentals_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rentals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
