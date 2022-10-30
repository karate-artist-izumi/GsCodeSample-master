-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- ホスト: mysql1011.db.sakura.ne.jp
-- 生成日時: 2022 年 9 月 26 日 23:04
-- サーバのバージョン： 5.7.32-log
-- PHP のバージョン: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `karate-artist_agdish`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_super` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2020_12_15_030105_create_plans_table', 1),
(13, '2020_12_17_153420_create_sales_table', 1),
(14, '2020_12_18_171557_add_column_to_users_table', 1),
(15, '2020_12_21_033354_create_admins_table', 1),
(16, '2020_12_21_152216_plan_user_table', 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `plan_date` datetime DEFAULT NULL,
  `ag_name` text COLLATE utf8mb4_unicode_ci,
  `dish_name` text COLLATE utf8mb4_unicode_ci,
  `ag_photo` text COLLATE utf8mb4_unicode_ci,
  `dish_photo` text COLLATE utf8mb4_unicode_ci,
  `ag_latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ag_longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dish_latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dish_longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adult_price` int(11) DEFAULT NULL,
  `child_price` int(11) DEFAULT NULL,
  `place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `small_place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vegetable` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `plans`
--

INSERT INTO `plans` (`id`, `title`, `description`, `plan_date`, `ag_name`, `dish_name`, `ag_photo`, `dish_photo`, `ag_latitude`, `ag_longitude`, `dish_latitude`, `dish_longitude`, `adult_price`, `child_price`, `place`, `small_place`, `vegetable`, `created_at`, `updated_at`) VALUES
(6, '野菜収穫とフレンチコース', '有機農法のほうれん草を収穫して、地元のフランス料理店でフレンチコースにして堪能', '2020-12-23 14:00:00', 'ほうれん草農家', '有機レストラン', 'ag01.jpg', 'dish01.jpg', '35.248265', '139.643504', '35.274966', '139.650413', 3000, 2000, '神奈川県横須賀市東逸見町', '神奈川県', 'ほうれん草', '2020-12-16 14:51:43', '2020-12-16 14:51:43'),
(7, '泥付き人参と野菜串', '農家さんにて新鮮な人参を収穫し、一本一本丁寧に野菜串にして堪能', '2020-12-25 13:30:00', '田崎ファーム', 'せんとり', 'ag02.jpg', 'dish02.jpg', '35.862500', '139.710195', '35.924566', '139.779235', 5000, 4000, '埼玉県越谷市袋山', '埼玉県', '人参', '2020-12-16 14:59:43', '2020-12-16 14:59:43'),
(8, '有機白菜とベジタブルテリーヌ', '有機農法の白菜を、野菜いのテリーヌにして堪能', '2020-12-20 11:00:00', '太陽のめぐみ農場', 'アフタヌーンティー正樹', 'ag03.jpg', 'dish03.jpg', '35.628820', '140.365855', '35.721473', '140.656338', 8000, 6000, '千葉県旭市東町', '千葉県', '白菜', '2020-12-16 15:05:15', '2020-12-16 15:05:15'),
(10, 'ハウス野菜とビストロハウス', 'ハウスで栽培した野菜を、ビストロハウスで堪能してください', '2020-12-20 09:30:00', 'ベジハウス', 'ビストロ小梅', 'ag04.jpg', 'dish04.jpg', '35.93426661603826', '140.1324428761923', '36.10900001089374', '140.1985845046517', 3000, 2000, '茨城県土浦市', '茨城県', 'ほうれん草', '2020-12-16 20:23:35', '2020-12-16 20:23:35'),
(11, '創作和食の新鮮野菜盛り', '創作和食を新鮮な野菜で堪能してください', '2020-12-23 09:30:00', '久保田農場', '創作和食『レン』', 'ag05.jpg', 'dish05.jpg', '35.47360173096703', '139.28603431908076', '35.2903889863214', '139.58093476119637', 5000, 4000, '神奈川県逗子市', '神奈川県', 'トマト', '2020-12-16 20:28:05', '2020-12-16 20:28:05'),
(12, '埼玉野菜とおばんざい', '地元特産の野菜をおばんざいでご堪能下さい', '2020-12-25 13:00:00', '埼玉ファーム', 'おばんざい「ノリ」', 'ag06.jpg', 'dish06.jpg', '35.976903637291045', '139.81001910057773', '35.846492257370414', '139.6331704949937', 8000, 6000, '埼玉県さいたま市', '埼玉県', '白菜', '2020-12-16 20:36:30', '2020-12-16 20:36:30'),
(13, '白菜収穫ともつ鍋', '取れたての白菜を、冬に大人気のもつ鍋でご堪能下さい', '2020-12-20 06:30:00', 'シーシャ農場', 'もつ屋「TD」', 'ag07.jpg', 'dish07.jpg', '36.04940204721548', '140.22531446456188', '36.198176057389446', '139.71947916963975', 3000, 2000, '茨城県古河市', '茨城県', '白菜', '2020-12-16 20:42:26', '2020-12-16 20:42:26'),
(14, '美味しいお酒と美味しい野菜', 'シンプルに美味しいお酒と美味しい野菜をご堪能下さい', '2020-12-23 09:30:00', '闇のファーム', 'BAR「かのみん」', 'ag08.jpg', 'dish08.jpg', '35.50089947112375', '140.3882377983096', '35.31241043698992', '139.82311089164105', 5000, 4000, '千葉県富津市', '千葉県', 'トマト', '2020-12-16 20:47:09', '2020-12-16 20:47:09'),
(15, 'この道50年農家さんの野菜で食べる中華料理', '最高の野菜と最高の中華料理をご堪能下さい', '2020-12-25 12:00:00', '筋肉ファーム', '来々軒', 'ag09.jpg', 'dish09.jpg', '36.14278645190521', '140.52784016130212', '35.9636845075983', '140.15021400621765', 8000, 6000, '茨城県牛久市', '茨城県', '人参', '2020-12-16 21:08:56', '2020-12-16 21:08:56'),
(16, 'ジーズランチミーティング', 'ジーズアカデミーでお昼を食べながら検討します', '2020-12-20 00:00:00', 'チームイズミ', 'ジーズアカデミー', 'og-3.png', 'a76ceb96.jpg', '35.689613', '139.698629', '35.669028', '139.703264', 8000, 3000, '東京都原宿', '東京都', 'トマト', '2020-12-22 04:10:28', '2020-12-22 04:10:28');

-- --------------------------------------------------------

--
-- テーブルの構造 `plan_user`
--

CREATE TABLE `plan_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `plan_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `plan_user`
--

INSERT INTO `plan_user` (`id`, `user_id`, `plan_id`, `created_at`, `updated_at`) VALUES
(2, 3, 12, '2020-12-22 04:14:47', '2020-12-22 04:14:47'),
(3, 4, 11, '2020-12-22 05:24:39', '2020-12-22 05:24:39');

-- --------------------------------------------------------

--
-- テーブルの構造 `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `plan_id` int(11) NOT NULL,
  `plan_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plan_date` datetime NOT NULL,
  `plan_adult_price` int(11) NOT NULL,
  `plan_child_price` int(11) NOT NULL,
  `adult_kazu` int(11) NOT NULL,
  `child_kazu` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `plan_id`, `plan_title`, `plan_date`, `plan_adult_price`, `plan_child_price`, `adult_kazu`, `child_kazu`, `created_at`, `updated_at`) VALUES
(1, 1, 15, 'この道50年農家さんの野菜で食べる中華料理', '2020-12-16 00:00:00', 8000, 6000, 1, 1, '2020-12-17 23:44:40', '2020-12-17 23:44:40'),
(2, 1, 14, '美味しいお酒と美味しい野菜', '2020-12-24 00:00:00', 5000, 4000, 2, 1, '2020-12-17 23:45:12', '2020-12-17 23:45:12'),
(3, 1, 13, '白菜収穫ともつ鍋', '2021-01-05 00:00:00', 3000, 2000, 3, 2, '2020-12-17 23:45:47', '2020-12-17 23:45:47'),
(4, 2, 14, '美味しいお酒と美味しい野菜', '2020-12-23 09:30:00', 5000, 4000, 1, 2, '2020-12-22 03:47:01', '2020-12-22 03:47:01'),
(5, 3, 13, '白菜収穫ともつ鍋', '2020-12-20 06:30:00', 3000, 2000, 2, 1, '2020-12-22 03:55:19', '2020-12-22 03:55:19'),
(6, 3, 15, 'この道50年農家さんの野菜で食べる中華料理', '2020-12-25 12:00:00', 8000, 6000, 5, 4, '2020-12-22 03:58:57', '2020-12-22 03:58:57'),
(7, 3, 7, '泥付き人参と野菜串', '2020-12-25 13:30:00', 5000, 4000, 3, 1, '2020-12-22 04:02:48', '2020-12-22 04:02:48'),
(8, 3, 12, '埼玉野菜とおばんざい', '2020-12-25 13:00:00', 8000, 6000, 6, 3, '2020-12-22 04:06:29', '2020-12-22 04:06:29'),
(9, 3, 7, '泥付き人参と野菜串', '2020-12-25 13:30:00', 5000, 4000, 1, 0, '2020-12-22 04:08:08', '2020-12-22 04:08:08'),
(10, 2, 12, '埼玉野菜とおばんざい', '2020-12-25 13:00:00', 8000, 6000, 4, 4, '2020-12-22 04:10:21', '2020-12-22 04:10:21'),
(11, 3, 10, 'ハウス野菜とビストロハウス', '2020-12-20 09:30:00', 3000, 2000, 6, 2, '2020-12-22 04:11:06', '2020-12-22 04:11:06'),
(12, 3, 16, 'ジーズランチミーティング', '2020-12-20 00:00:00', 8000, 3000, 8, 1, '2020-12-22 04:12:39', '2020-12-22 04:12:39'),
(13, 3, 8, '有機白菜とベジタブルテリーヌ', '2020-12-20 11:00:00', 8000, 6000, 2, 1, '2020-12-22 04:14:05', '2020-12-22 04:14:05'),
(14, 4, 15, 'この道50年農家さんの野菜で食べる中華料理', '2020-12-25 12:00:00', 8000, 6000, 3, 1, '2020-12-22 05:23:44', '2020-12-22 05:23:44');

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tell` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `tell`) VALUES
(3, 'アグ次郎', 'ag@ism.jp', NULL, '$2y$10$IAXh3N8xNRvpcj14qfszO.xQwuCL/9FyfDWFrJwTu14hejtfXxTVO', NULL, '2020-12-22 03:54:20', '2020-12-22 05:05:59', NULL),
(4, 'オガワタクヤ', 'gawgaw.developer@gmail.com', NULL, '$2y$10$z49AdbOMlAfQ4jl/bsrEbuxEHba8W8MudMw1UOFCH/6n9T5SCaHzC', NULL, '2020-12-22 05:23:44', '2020-12-22 05:23:44', '08023456789');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- テーブルのインデックス `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `plan_user`
--
ALTER TABLE `plan_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plan_user_user_id_plan_id_unique` (`user_id`,`plan_id`),
  ADD KEY `plan_user_plan_id_foreign` (`plan_id`);

--
-- テーブルのインデックス `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- テーブルのAUTO_INCREMENT `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- テーブルのAUTO_INCREMENT `plan_user`
--
ALTER TABLE `plan_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- テーブルのAUTO_INCREMENT `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- テーブルのAUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `plan_user`
--
ALTER TABLE `plan_user`
  ADD CONSTRAINT `plan_user_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `plan_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
