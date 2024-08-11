-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 11, 2024 at 08:47 PM
-- Server version: 8.3.0
-- PHP Version: 8.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment_class_4`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(11, 'Dr. Carolyn Keeling', 'fcollins@example.com', '+1 (562) 530-8851', '15520 Wyman Well Apt. 081\nSonyamouth, MA 37503-6619', '2024-07-31 17:55:36', '2024-07-31 17:55:36'),
(12, 'Avis Weimann', 'april16@example.net', '(559) 790-6355', '35600 Prohaska Park Suite 766\nHegmannbury, NV 89474', '2024-07-31 17:55:36', '2024-07-31 17:55:36'),
(13, 'Kattie Schiller Sr.', 'selmer12@example.com', '+1-283-317-0727', '5149 Mylene Isle Suite 017\nMoenmouth, HI 61607', '2024-07-31 17:55:36', '2024-07-31 17:55:36'),
(14, 'Leora Baumbach', 'abdiel.funk@example.com', '+18387802456', '658 Shyann Brooks Suite 536\nKovacekside, FL 99983', '2024-07-31 17:55:36', '2024-07-31 17:55:36'),
(15, 'Stanley Collier', 'rowe.orin@example.org', '+1-531-547-2822', '549 Dibbert Knoll\nEast Jaydeshire, ID 84073', '2024-07-31 17:55:36', '2024-07-31 17:55:36'),
(16, 'Nicolette Schumm', 'dklein@example.net', '(667) 471-4187', '824 Ayla Walks\nHuelton, SD 66863-8346', '2024-07-31 17:55:36', '2024-07-31 17:55:36'),
(17, 'Myriam Simonis', 'dharris@example.org', '309-468-9057', '612 Hipolito Trafficway Apt. 341\nWest Noble, AR 03276-5278', '2024-07-31 17:55:36', '2024-07-31 17:55:36'),
(18, 'Raleigh Will', 'zwisoky@example.org', '276.735.8879', '629 Kuhlman Lodge\nNorth Miguelport, FL 91315-2120', '2024-07-31 17:55:36', '2024-07-31 17:55:36'),
(19, 'Dorothea Hills', 'oberge@example.net', '1-747-296-7880', '418 Ward Roads\nKuhictown, PA 20563-9355', '2024-07-31 17:55:36', '2024-07-31 17:55:36'),
(20, 'Jaren Mertz V', 'derrick07@example.com', '+1 (248) 516-0395', '2571 Margot Crossing\nHermanville, ND 76203', '2024-07-31 17:55:36', '2024-07-31 17:55:36'),
(22, 'Ms. Brenda Beier', 'wgusikowski@example.net', '1-442-415-5390', '852 Kane Park Apt. 014\nWest Dashawn, IA 48073', '2024-07-31 17:55:54', '2024-07-31 17:55:54'),
(23, 'Carlee Beatty', 'stark.arnold@example.org', '+17328904940', '79899 Becker Island\nLesliemouth, MA 65892', '2024-07-31 17:55:54', '2024-07-31 17:55:54'),
(24, 'Elouise Wisozk', 'quincy.oconner@example.org', '(423) 602-8614', '767 Bayer Centers Suite 814\nBrakusstad, SC 42936', '2024-07-31 17:55:54', '2024-07-31 17:55:54'),
(25, 'Lolita Tillman', 'brosenbaum@example.org', '(346) 721-5589', '9075 Frederic Flat Suite 491\nUllrichburgh, CO 46399', '2024-07-31 17:55:54', '2024-07-31 17:55:54'),
(26, 'Foster Lind', 'nbauch@example.net', '(339) 594-4095', '9830 Schoen Throughway\nNew Baron, DE 40025', '2024-07-31 17:55:54', '2024-07-31 17:55:54'),
(27, 'Elyse Bosco', 'jo.ratke@example.org', '1-917-582-0481', '7207 Becker Greens Apt. 181\nWest Jabaribury, AL 69864-9345', '2024-07-31 17:55:54', '2024-07-31 17:55:54'),
(28, 'Prof. Augustine Kuhlman PhD', 'wintheiser.carter@example.org', '916.785.1001', '689 Wunsch Field Apt. 588\nSchimmelmouth, SD 98276', '2024-07-31 17:55:54', '2024-07-31 17:55:54'),
(29, 'Dayana Parker', 'durgan.clifton@example.com', '+1-607-305-8933', '540 Dickinson Tunnel Apt. 340\nSouth Gideon, AR 37033', '2024-07-31 17:55:54', '2024-07-31 17:55:54'),
(30, 'Mr. Conrad Pouros', 'deanna.reilly@example.net', '+1.475.933.1295', '26040 Edna Cove Apt. 471\nCartwrightstad, PA 84653', '2024-07-31 17:55:54', '2024-07-31 17:55:54'),
(37, 'Kattie Brakus', 'mkeebler@example.net', '1-808-936-8445', '5760 Meghan Cove Suite 961\nPaucekview, VA 10472-0071', '2024-07-31 18:55:13', '2024-07-31 18:55:13'),
(38, 'Prof. Orie Jakubowski I', 'rohan.delilah@example.org', '1-928-231-6454', '672 Kathryn Vista\nMarcelinaport, AK 63005-5451', '2024-07-31 18:55:13', '2024-07-31 18:55:13'),
(39, 'Prof. Alessandra Larson V', 'elmo.gleichner@example.com', '1-680-531-4536', '8782 Michael Junction Apt. 252\nWest Daishaside, ID 26864-3490', '2024-07-31 18:55:13', '2024-07-31 18:55:13'),
(40, 'Miss Helga Gaylord', 'hildegard32@example.com', '+1-606-479-8667', '698 Humberto Brook Suite 843\nEast Zackary, NE 73972-4841', '2024-07-31 18:55:13', '2024-07-31 18:55:13'),
(41, 'Carrie Littel', 'shany.waters@example.net', '1-234-318-3589', '23772 Rahul Alley\nNew Heber, NM 77768', '2024-07-31 18:55:13', '2024-07-31 18:55:13'),
(42, 'Travis Green', 'glemke@example.org', '443-687-0972', '41846 Langosh Ports\nWest Prince, NY 09943', '2024-07-31 18:55:13', '2024-07-31 18:55:13'),
(43, 'Maverick Braun', 'daphney.rippin@example.org', '(734) 519-9069', '3649 Eichmann Views\nNew Cullenfurt, PA 87218-0895', '2024-07-31 18:55:13', '2024-07-31 18:55:13'),
(44, 'Helga Mayer', 'rbeier@example.com', '+19085809316', '603 O\'Kon Plaza Suite 900\nTomborough, IA 96708', '2024-07-31 18:55:13', '2024-07-31 18:55:13'),
(45, 'Alfreda Feest', 'hertha.gleason@example.com', '225-796-6622', '15053 Araceli Court\nNorth Ari, DE 91508', '2024-07-31 18:55:13', '2024-07-31 18:55:13'),
(46, 'Rosamond Collier', 'ferry.beverly@example.com', '507-810-4419', '5696 Drake Junctions\nKihnburgh, MN 81883-4761', '2024-07-31 18:55:13', '2024-07-31 18:55:13'),
(47, 'Anjali Yundt', 'kaden40@example.org', '(601) 262-1283', '6865 Kessler Harbor\nGreenholthaven, ME 87407-2003', '2024-07-31 18:55:15', '2024-07-31 18:55:15'),
(48, 'Chelsey Muller', 'agerhold@example.com', '240.599.4200', '508 Lambert Fall Apt. 826\nWest Hellenfurt, SD 12096', '2024-07-31 18:55:15', '2024-07-31 18:55:15'),
(49, 'Patience Franecki', 'christian.gutkowski@example.org', '380-630-9220', '4586 Schiller Village\nJuddmouth, LA 66599', '2024-07-31 18:55:15', '2024-07-31 18:55:15'),
(50, 'Nina Stanton II', 'lbogisich@example.org', '+1-650-394-8371', '82178 Balistreri Tunnel\nKesslerberg, NJ 96132', '2024-07-31 18:55:15', '2024-07-31 18:55:15'),
(51, 'Joany Morissette MD', 'miller.keshaun@example.net', '272.819.3874', '61597 Marcel Mountains\nEthanview, OH 44018-3220', '2024-07-31 18:55:15', '2024-07-31 18:55:15'),
(52, 'Harrison Kiehn', 'gus30@example.net', '+1-731-698-4534', '593 Pansy Pike\nNorth Julio, IL 76958-2263', '2024-07-31 18:55:15', '2024-07-31 18:55:15'),
(53, 'Bennett Rodriguez', 'kbode@example.com', '458.443.0699', '3639 Heaney Creek Suite 367\nBorerville, AZ 28124', '2024-07-31 18:55:15', '2024-07-31 18:55:15'),
(54, 'Jerry Jenkins', 'wlangworth@example.net', '737.660.9224', '66407 Schultz Tunnel Suite 349\nLake Ford, LA 21108', '2024-07-31 18:55:15', '2024-07-31 18:55:15'),
(55, 'Isidro Heller IV', 'ivah37@example.net', '+1-947-784-4622', '7839 Cloyd Mission Apt. 282\nReyport, OK 72297', '2024-07-31 18:55:15', '2024-07-31 18:55:15'),
(56, 'Dr. Heath Baumbach I', 'garett.reichel@example.org', '1-541-561-5623', '594 Herman Station\nKuhicland, CT 02371-5650', '2024-07-31 18:55:15', '2024-07-31 18:55:15');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_07_30_220020_create_contacts_table', 1);

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('h1Ke8bDbfkdsZp3Sjpe4PG9B3EyU6PFy95aTcav2', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibDh5MFp0bHZiNWIwV2pRbENsSXRQVGpkSEl4cG10WHFNRUhiWXVteSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9hc3NpZ25tZW50X2NsYXNzXzQudGVzdC9jb250YWN0cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1722552777),
('YAvrn7iZC7aurhKPPFGsVQ3YqdakTxRCVr8KAX3e', NULL, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiekpTaDBscm5ndndGenNkWHA5eXFBY0U3SUZ4MEV0alhuSGltelNZMCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9hc3NpZ25tZW50X2NsYXNzXzQudGVzdC9jb250YWN0cyI7fX0=', 1722465366);

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bernice Nolan', 'cjones@example.org', '2024-07-30 19:16:10', '$2y$12$E4NjYMUm0SzxySikxjpisezjcqW/PBeBxSVVUHgnHg1OqYaaQtMw6', 'TeIzilagUO', '2024-07-30 19:16:10', '2024-07-30 19:16:10'),
(2, 'Mr. Bennett Thiel', 'nmonahan@example.org', '2024-07-30 19:16:10', '$2y$12$E4NjYMUm0SzxySikxjpisezjcqW/PBeBxSVVUHgnHg1OqYaaQtMw6', '9LM8dY6gWB', '2024-07-30 19:16:10', '2024-07-30 19:16:10'),
(3, 'Florence Kihn', 'roberts.destiny@example.net', '2024-07-30 19:16:10', '$2y$12$E4NjYMUm0SzxySikxjpisezjcqW/PBeBxSVVUHgnHg1OqYaaQtMw6', 'DHJ38JQebC', '2024-07-30 19:16:10', '2024-07-30 19:16:10'),
(4, 'Mr. Jacques Hamill', 'dmacejkovic@example.net', '2024-07-30 19:16:10', '$2y$12$E4NjYMUm0SzxySikxjpisezjcqW/PBeBxSVVUHgnHg1OqYaaQtMw6', '2KNdUKrFxu', '2024-07-30 19:16:10', '2024-07-30 19:16:10'),
(5, 'Dr. Garret Wisoky V', 'elda37@example.net', '2024-07-30 19:16:10', '$2y$12$E4NjYMUm0SzxySikxjpisezjcqW/PBeBxSVVUHgnHg1OqYaaQtMw6', 'i36Xiwigtb', '2024-07-30 19:16:10', '2024-07-30 19:16:10'),
(6, 'Mrs. Shaylee Renner Sr.', 'lauren.shields@example.com', '2024-07-30 19:16:10', '$2y$12$E4NjYMUm0SzxySikxjpisezjcqW/PBeBxSVVUHgnHg1OqYaaQtMw6', 'maEC9lsDdP', '2024-07-30 19:16:10', '2024-07-30 19:16:10'),
(7, 'Prof. Wilmer Volkman', 'johnathon.kutch@example.com', '2024-07-30 19:16:10', '$2y$12$E4NjYMUm0SzxySikxjpisezjcqW/PBeBxSVVUHgnHg1OqYaaQtMw6', '4rgXi2DCtc', '2024-07-30 19:16:10', '2024-07-30 19:16:10'),
(8, 'Shana Wolf', 'russell17@example.org', '2024-07-30 19:16:10', '$2y$12$E4NjYMUm0SzxySikxjpisezjcqW/PBeBxSVVUHgnHg1OqYaaQtMw6', 'ZuUlMNnodZ', '2024-07-30 19:16:10', '2024-07-30 19:16:10'),
(9, 'Ena Lubowitz', 'newton.predovic@example.net', '2024-07-30 19:16:10', '$2y$12$E4NjYMUm0SzxySikxjpisezjcqW/PBeBxSVVUHgnHg1OqYaaQtMw6', '52jVzfOHbB', '2024-07-30 19:16:10', '2024-07-30 19:16:10'),
(10, 'Ansley Hermann II', 'zbailey@example.org', '2024-07-30 19:16:10', '$2y$12$E4NjYMUm0SzxySikxjpisezjcqW/PBeBxSVVUHgnHg1OqYaaQtMw6', 'r6sZD3e0wN', '2024-07-30 19:16:10', '2024-07-30 19:16:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contacts_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
