-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2022 at 04:41 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ssh`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uraian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `spesifikasi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `merk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kategori_barang` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `kode`, `uraian`, `spesifikasi`, `merk`, `keterangan`, `satuan`, `harga`, `id_kategori_barang`, `created_at`, `updated_at`) VALUES
(4, 'placeat', 'Miss Kaia Champlin V', 'Culpa officia veritatis eum unde molestiae eos officiis.', 'amet', 'Nihil sed deleniti consequuntur voluptatibus quasi. Itaque et corrupti dolore suscipit autem.', 'laboriosam', '858', 29, '2022-09-23 01:36:51', '2022-09-23 01:36:51'),
(5, 'accusamus', 'Hellen Greenholt II', 'Ipsam et rerum placeat id commodi.', 'nulla', 'Omnis ut eius deleniti ex magni consequatur. Nam necessitatibus reprehenderit esse dolorem.', 'voluptas', '805', 30, '2022-09-23 01:36:51', '2022-09-23 01:36:51'),
(6, 'natus', 'Amalia Toy', 'Officia quos qui excepturi consectetur et est corrupti eos.', 'sed', 'Dicta odio perferendis et necessitatibus sequi. Quia fugiat facilis ab expedita et consequatur sed.', 'aliquam', '775', 31, '2022-09-23 01:36:51', '2022-09-23 01:36:51'),
(7, 'impedit', 'Dr. Denis Lebsack Sr.', 'Cupiditate cum voluptatem aspernatur laboriosam molestias distinctio eligendi perferendis.', 'consequatur', 'Voluptatum ipsam omnis enim cumque enim rem eius. Est veniam omnis quod quidem deserunt suscipit perspiciatis. Aut officia debitis quam cumque illo possimus dolores.', 'quis', '687', 32, '2022-09-23 01:36:51', '2022-09-23 01:36:51'),
(8, 'est', 'Miss Megane Funk V', 'Rem natus molestiae libero.', 'officia', 'Impedit sed asperiores culpa quas cupiditate ipsa. In ut a minima aliquam quia soluta iste.', 'impedit', '854', 33, '2022-09-23 01:36:51', '2022-09-23 01:36:51'),
(9, 'corrupti', 'Willow Littel MD', 'Enim animi sit sint recusandae.', 'ut', 'Earum inventore ea aut eaque pariatur vel. Accusamus aut repudiandae rerum dolorem.', 'aperiam', '859', 34, '2022-09-23 01:36:51', '2022-09-23 01:36:51'),
(10, 'doloribus', 'Mr. Dell Hirthe', 'Porro commodi nobis omnis omnis accusantium.', 'architecto', 'Eaque maxime tempore excepturi nihil ratione error ab. Cumque reprehenderit optio rerum quis voluptate omnis non et. Voluptate eveniet consectetur ut et et blanditiis.', 'consequatur', '096', 35, '2022-09-23 01:36:51', '2022-09-23 01:36:51'),
(11, 'voluptatem', 'Karley Johns', 'Natus occaecati similique ullam placeat qui consequatur.', 'explicabo', 'Quia eum necessitatibus fuga enim minus illum. Voluptatibus eius et iure ea soluta beatae. Neque necessitatibus reprehenderit magni veritatis ut quia.', 'commodi', '561', 36, '2022-09-23 01:36:51', '2022-09-23 01:36:51'),
(12, 'id', 'Carolyne Hermann', 'Quia consectetur quasi vel labore vel quia quia.', 'aperiam', 'Repellat distinctio aspernatur molestias quia doloremque et perferendis. Sapiente ut autem hic veniam. Eum consequuntur quia suscipit dolorem itaque officiis.', 'optio', '365', 37, '2022-09-23 01:36:51', '2022-09-23 01:36:51'),
(13, 'et', 'Dr. Jimmy Jacobi V', 'Quia et et ipsa architecto provident necessitatibus aliquam.', 'hic', 'Suscipit consequatur esse ad ad. Et ratione corrupti eveniet fugiat aperiam.', 'cum', '660', 38, '2022-09-23 01:36:51', '2022-09-23 01:36:51');

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
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'nobis', NULL, '2022-09-23 01:16:13', '2022-09-23 01:16:13'),
(2, 'quia', NULL, '2022-09-23 01:16:13', '2022-09-23 01:16:13'),
(3, 'quia', NULL, '2022-09-23 01:16:13', '2022-09-23 01:16:13'),
(4, 'ea', NULL, '2022-09-23 01:16:13', '2022-09-23 01:16:13'),
(5, 'illo', NULL, '2022-09-23 01:16:13', '2022-09-23 01:16:13'),
(6, 'magni', NULL, '2022-09-23 01:16:13', '2022-09-23 01:16:13'),
(7, 'eaque', NULL, '2022-09-23 01:27:30', '2022-09-23 01:27:30'),
(8, 'assumenda', NULL, '2022-09-23 01:27:30', '2022-09-23 01:27:30'),
(9, 'ea', NULL, '2022-09-23 01:27:30', '2022-09-23 01:27:30'),
(10, 'vel', NULL, '2022-09-23 01:27:30', '2022-09-23 01:27:30'),
(11, 'rerum', NULL, '2022-09-23 01:27:30', '2022-09-23 01:27:30'),
(12, 'beatae', NULL, '2022-09-23 01:28:43', '2022-09-23 01:28:43'),
(13, 'voluptates', NULL, '2022-09-23 01:28:43', '2022-09-23 01:28:43'),
(14, 'minus', NULL, '2022-09-23 01:28:43', '2022-09-23 01:28:43'),
(15, 'ut', NULL, '2022-09-23 01:29:03', '2022-09-23 01:29:03'),
(16, 'ut', NULL, '2022-09-23 01:29:23', '2022-09-23 01:29:23'),
(17, 'omnis', NULL, '2022-09-23 01:30:04', '2022-09-23 01:30:04'),
(18, 'sint', NULL, '2022-09-23 01:32:32', '2022-09-23 01:32:32'),
(19, 'laboriosam', NULL, '2022-09-23 01:32:32', '2022-09-23 01:32:32'),
(20, 'magni', NULL, '2022-09-23 01:32:40', '2022-09-23 01:32:40'),
(21, 'eius', NULL, '2022-09-23 01:32:40', '2022-09-23 01:32:40'),
(22, 'dolor', NULL, '2022-09-23 01:32:40', '2022-09-23 01:32:40'),
(23, 'assumenda', NULL, '2022-09-23 01:32:40', '2022-09-23 01:32:40'),
(24, 'nulla', NULL, '2022-09-23 01:32:40', '2022-09-23 01:32:40'),
(25, 'quod', NULL, '2022-09-23 01:32:40', '2022-09-23 01:32:40'),
(26, 'optio', NULL, '2022-09-23 01:32:40', '2022-09-23 01:32:40'),
(27, 'minima', NULL, '2022-09-23 01:32:40', '2022-09-23 01:32:40'),
(28, 'asperiores', NULL, '2022-09-23 01:36:51', '2022-09-23 01:36:51'),
(29, 'voluptatum', NULL, '2022-09-23 01:36:51', '2022-09-23 01:36:51'),
(30, 'consectetur', NULL, '2022-09-23 01:36:51', '2022-09-23 01:36:51'),
(31, 'accusamus', NULL, '2022-09-23 01:36:51', '2022-09-23 01:36:51'),
(32, 'accusamus', NULL, '2022-09-23 01:36:51', '2022-09-23 01:36:51'),
(33, 'corporis', NULL, '2022-09-23 01:36:51', '2022-09-23 01:36:51'),
(34, 'optio', NULL, '2022-09-23 01:36:51', '2022-09-23 01:36:51'),
(35, 'et', NULL, '2022-09-23 01:36:51', '2022-09-23 01:36:51'),
(36, 'debitis', NULL, '2022-09-23 01:36:51', '2022-09-23 01:36:51'),
(37, 'repellat', NULL, '2022-09-23 01:36:51', '2022-09-23 01:36:51');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_barang`
--

CREATE TABLE `kategori_barang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_kategori` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_barang`
--

INSERT INTO `kategori_barang` (`id`, `kode`, `nama`, `id_kategori`, `created_at`, `updated_at`) VALUES
(2, 'velit', 'Blanditiis sequi eius fugit voluptatibus mollitia aut consequatur.', 1, '2022-09-23 01:16:13', '2022-09-23 01:16:13'),
(3, 'veritatis', 'Molestias pariatur iusto id molestias.', 1, '2022-09-23 01:16:13', '2022-09-23 01:16:13'),
(4, 'voluptas', 'Et quis atque praesentium nostrum quaerat doloribus.', 1, '2022-09-23 01:16:13', '2022-09-23 01:16:13'),
(5, 'ipsa', 'Exercitationem aut et qui voluptatem mollitia adipisci.', 1, '2022-09-23 01:16:13', '2022-09-23 01:16:13'),
(6, 'sed', 'Saepe occaecati hic dolor sequi.', 2, '2022-09-23 01:16:13', '2022-09-23 01:16:13'),
(29, 'quo', 'Sed omnis alias a.', 28, '2022-09-23 01:36:51', '2022-09-23 01:36:51'),
(30, 'consequatur', 'Doloremque cupiditate iure numquam adipisci maiores.', 29, '2022-09-23 01:36:51', '2022-09-23 01:36:51'),
(31, 'debitis', 'Ut velit accusantium expedita repudiandae aliquid.', 30, '2022-09-23 01:36:51', '2022-09-23 01:36:51'),
(32, 'numquam', 'Dicta consequuntur qui ut asperiores.', 31, '2022-09-23 01:36:51', '2022-09-23 01:36:51'),
(33, 'facere', 'Fugit porro sint itaque.', 32, '2022-09-23 01:36:51', '2022-09-23 01:36:51'),
(34, 'inventore', 'Quia occaecati eos enim ipsam sunt explicabo.', 33, '2022-09-23 01:36:51', '2022-09-23 01:36:51'),
(35, 'laborum', 'Quo quia dolorem ea animi repellendus sed accusantium.', 34, '2022-09-23 01:36:51', '2022-09-23 01:36:51'),
(36, 'sit', 'Praesentium et voluptatum in sed facere sint fugit.', 35, '2022-09-23 01:36:51', '2022-09-23 01:36:51'),
(37, 'voluptatem', 'Iste neque quia inventore et.', 36, '2022-09-23 01:36:51', '2022-09-23 01:36:51'),
(38, 'perspiciatis', 'Et voluptatem ea quod tempore.', 37, '2022-09-23 01:36:51', '2022-09-23 01:36:51'),
(39, 'asd', 'tyy', 33, '2022-09-23 01:43:27', '2022-09-23 01:43:27'),
(40, 'zzz', 'zzz', 1, '2022-09-23 02:07:49', '2022-09-23 02:07:49');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_20_070429_create_kategori_table', 1),
(6, '2022_09_22_032017_create_kategori_barang_table', 1),
(7, '2022_09_23_040739_create_barang_table', 1);

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
  `expires_at` timestamp NULL DEFAULT NULL,
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
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `is_admin`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@example.com', '2022-09-23 01:16:13', 1, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'UvSZt3wROHvR624kAspDX4nB58EHgo6NJGdRMZHeXIB0VyHrO3zMn79cbVXS', '2022-09-23 01:16:13', '2022-09-23 01:16:13'),
(2, 'User', 'user@example.com', '2022-09-23 01:16:13', 0, '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aqHbAOFn4kkp16auh88hQXLcL0znx7SvcKddSBWstpBKZnFeobN9r2f015gn', '2022-09-23 01:16:13', '2022-09-23 01:16:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `barang_kode_unique` (`kode`),
  ADD KEY `barang_id_kategori_barang_foreign` (`id_kategori_barang`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_barang`
--
ALTER TABLE `kategori_barang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kategori_barang_kode_unique` (`kode`),
  ADD KEY `kategori_barang_id_kategori_foreign` (`id_kategori`);

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
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `kategori_barang`
--
ALTER TABLE `kategori_barang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_id_kategori_barang_foreign` FOREIGN KEY (`id_kategori_barang`) REFERENCES `kategori_barang` (`id`);

--
-- Constraints for table `kategori_barang`
--
ALTER TABLE `kategori_barang`
  ADD CONSTRAINT `kategori_barang_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
