-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 27, 2024 at 12:48 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vuelaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `counters`
--

CREATE TABLE `counters` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counters`
--

INSERT INTO `counters` (`id`, `key`, `prefix`, `value`, `created_at`, `updated_at`) VALUES
(1, 'invoice', 'INV-', '20000', '2024-02-26 22:04:58', '2024-02-26 22:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `firstname`, `lastname`, `email`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Deron Connelly Sr.', 'Prof. Elta Weissnat', 'mwelch@dickens.biz', '58549 Ortiz Forges Suite 489\nSouth Geo, AZ 06421', '2024-02-26 22:31:13', '2024-02-26 22:31:13'),
(2, 'Norval Kuphal DDS', 'Kaci Koch', 'victor.mccullough@okon.com', '9577 Aurelia Circles\nCummingsshire, AK 75977', '2024-02-26 22:31:13', '2024-02-26 22:31:13'),
(3, 'Drake Ratke', 'Mr. Christophe Cassin Sr.', 'ystark@stanton.org', '9200 Spinka Rue\nKassulketown, MD 06762-4010', '2024-02-26 22:31:13', '2024-02-26 22:31:13'),
(4, 'Alexys Little V', 'Cullen Schmitt', 'hosea43@feest.com', '753 Carolyne Mill\nPort Allie, AL 61153-9327', '2024-02-26 22:31:13', '2024-02-26 22:31:13'),
(5, 'Adell Friesen', 'Citlalli Jacobi', 'satterfield.abe@streich.net', '2768 Tillman River Suite 184\nHeaneyburgh, GA 72775', '2024-02-26 22:31:13', '2024-02-26 22:31:13');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `due_date` date NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_and_conditions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` double NOT NULL,
  `discount` double NOT NULL DEFAULT '0',
  `total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `number`, `customer_id`, `date`, `due_date`, `reference`, `terms_and_conditions`, `sub_total`, `discount`, `total`, `created_at`, `updated_at`) VALUES
(1, '40', 9, '2022-01-21', '1978-09-26', 'REF-120', 'Dolorum aliquid dolorem quisquam veritatis voluptatum iste. Accusantium error nemo voluptatem est. Occaecati aut est omnis molestiae suscipit. Velit consequatur ea animi labore aut ea aliquam.', 886, 66, 914, '2024-02-26 22:41:39', '2024-02-26 22:41:39'),
(2, '760', 2, '1979-11-08', '2005-05-01', 'REF-281', 'Ullam magnam labore consequatur commodi repellendus placeat. Eos aut corporis eos reiciendis voluptatem ut minima. Sunt est eum accusamus cupiditate. Dolores qui ullam voluptatem et cum omnis eveniet.', 163, 53, 290, '2024-02-26 22:41:39', '2024-02-26 22:41:39'),
(3, '35', 6, '1975-03-02', '2010-04-02', 'REF-488', 'Officia aut mollitia est voluptatum quod rerum distinctio. Nobis eos perferendis distinctio. Temporibus iusto quia ratione. Ratione ut fugiat dicta.', 164, 42, 1400, '2024-02-26 22:41:39', '2024-02-26 22:41:39'),
(4, '499', 14, '2022-03-18', '2004-08-17', 'REF-369', 'Repudiandae beatae id ut et ut. Et dolorum beatae aperiam laudantium et iure.', 676, 92, 444, '2024-02-26 22:41:39', '2024-02-26 22:41:39'),
(5, '349', 4, '1992-08-10', '1977-01-29', 'REF-427', 'Occaecati adipisci quis cum. Quos aut voluptas mollitia facilis quam et repudiandae. Possimus dolores dicta aut incidunt pariatur ut. Ipsam debitis in earum voluptatum voluptas.', 206, 54, 944, '2024-02-26 22:41:39', '2024-02-26 22:41:39'),
(6, 'INV-20006', 3, '2024-02-27', '2024-02-27', 'najmulvai', 'This is terms and conditions', 1394, 4, 1390, '2024-02-27 06:31:46', '2024-02-27 06:31:46'),
(7, 'INV-20007', 2, '2024-02-27', '2024-02-27', 'threenumber', 'Three number terms and conditions', 2828, 8, 2820, '2024-02-27 06:46:51', '2024-02-27 06:46:51');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` bigint UNSIGNED NOT NULL,
  `invoice_id` int NOT NULL,
  `product_id` int NOT NULL,
  `unit_price` double NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice_id`, `product_id`, `unit_price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 750, 89, 4914, 3, '2024-02-26 22:48:10', '2024-02-26 22:48:10'),
(2, 921, 17, 2987, 3, '2024-02-26 22:48:10', '2024-02-26 22:48:10'),
(3, 161, 31, 1033, 3, '2024-02-26 22:48:10', '2024-02-26 22:48:10'),
(4, 159, 19, 4661, 4, '2024-02-26 22:48:10', '2024-02-26 22:48:10'),
(5, 933, 39, 4609, 5, '2024-02-26 22:48:10', '2024-02-26 22:48:10'),
(6, 6, 10, 565, 2, '2024-02-27 06:31:46', '2024-02-27 06:31:46'),
(7, 6, 9, 264, 1, '2024-02-27 06:31:46', '2024-02-27 06:31:46'),
(8, 7, 8, 976, 2, '2024-02-27 06:46:51', '2024-02-27 06:46:51'),
(9, 7, 7, 876, 1, '2024-02-27 06:46:51', '2024-02-27 06:46:51');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_27_040041_create_counters_table', 1),
(6, '2024_02_27_040555_create_products_table', 2),
(7, '2024_02_27_042742_create_customers_table', 3),
(8, '2024_02_27_043251_create_invoices_table', 4),
(9, '2024_02_27_044257_create_invoice_items_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `item_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `item_code`, `description`, `unit_price`, `created_at`, `updated_at`) VALUES
(1, 'IC-1000331', 'Name of Product460', 591, '2024-02-26 22:09:49', '2024-02-26 22:09:49'),
(2, 'IC-100073', 'Name of Product189', 842, '2024-02-26 22:09:49', '2024-02-26 22:09:49'),
(3, 'IC-100016', 'Name of Product337', 404, '2024-02-26 22:09:49', '2024-02-26 22:09:49'),
(4, 'IC-1000481', 'Name of Product49', 524, '2024-02-26 22:09:49', '2024-02-26 22:09:49'),
(5, 'IC-1000198', 'Name of Product428', 282, '2024-02-26 22:09:49', '2024-02-26 22:09:49'),
(6, 'IC-100053', 'Name of Product193', 941, '2024-02-27 03:41:45', '2024-02-27 03:41:45'),
(7, 'IC-100051', 'Name of Product279', 876, '2024-02-27 03:41:45', '2024-02-27 03:41:45'),
(8, 'IC-1000466', 'Name of Product389', 976, '2024-02-27 03:41:45', '2024-02-27 03:41:45'),
(9, 'IC-1000272', 'Name of Product480', 264, '2024-02-27 03:41:45', '2024-02-27 03:41:45'),
(10, 'IC-1000390', 'Name of Product95', 565, '2024-02-27 03:41:45', '2024-02-27 03:41:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
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
-- Indexes for table `counters`
--
ALTER TABLE `counters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `counters_key_unique` (`key`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoices_number_unique` (`number`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_item_code_unique` (`item_code`);

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
-- AUTO_INCREMENT for table `counters`
--
ALTER TABLE `counters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
