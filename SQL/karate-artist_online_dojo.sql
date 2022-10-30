-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- ホスト: mysql1011.db.sakura.ne.jp
-- 生成日時: 2022 年 9 月 26 日 23:06
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
-- データベース: `karate-artist_online_dojo`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bookings_students_id` int(11) DEFAULT NULL,
  `bookings_datetime` datetime DEFAULT NULL,
  `bookings_lessons_id` int(11) DEFAULT NULL,
  `bookings_courses_id` int(11) DEFAULT NULL,
  `bookings_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `bookings`
--

INSERT INTO `bookings` (`id`, `bookings_students_id`, `bookings_datetime`, `bookings_lessons_id`, `bookings_courses_id`, `bookings_flag`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-02-27 17:31:38', 1, 1, 1, '2021-02-27 08:31:38', '2021-02-27 08:31:38');

-- --------------------------------------------------------

--
-- テーブルの構造 `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `courses_date` date DEFAULT NULL,
  `courses_time` time DEFAULT NULL,
  `courses_week` int(11) DEFAULT NULL,
  `courses_lessons_id` int(11) DEFAULT NULL,
  `courses_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `courses`
--

INSERT INTO `courses` (`id`, `courses_date`, `courses_time`, `courses_week`, `courses_lessons_id`, `courses_flag`, `created_at`, `updated_at`) VALUES
(1, '2021-03-30', '13:00:00', 1, 1, 1, '2021-02-27 08:31:38', '2021-02-27 08:31:38');

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
-- テーブルの構造 `helps`
--

CREATE TABLE `helps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `helps_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `helps_text` text COLLATE utf8mb4_unicode_ci,
  `helps_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `helps`
--

INSERT INTO `helps` (`id`, `helps_title`, `helps_text`, `helps_flag`, `created_at`, `updated_at`) VALUES
(1, '使用方法', 'PCのブラウザで表示させて下さい', 1, '2021-02-27 08:31:38', '2021-02-27 08:31:38');

-- --------------------------------------------------------

--
-- テーブルの構造 `lessons`
--

CREATE TABLE `lessons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `lessons_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lessons_text` text COLLATE utf8mb4_unicode_ci,
  `lessons_price` int(11) DEFAULT NULL,
  `lessons_date` datetime DEFAULT NULL,
  `lessons_week` int(11) DEFAULT NULL,
  `lessons_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lessons_pass` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lessons_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lessons_video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teachers_id` int(11) DEFAULT NULL,
  `navis_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `lessons`
--

INSERT INTO `lessons` (`id`, `lessons_title`, `lessons_text`, `lessons_price`, `lessons_date`, `lessons_week`, `lessons_url`, `lessons_pass`, `lessons_photo`, `lessons_video`, `teachers_id`, `navis_id`, `created_at`, `updated_at`) VALUES
(1, '空手BasicLesson', '空手の基礎を稽古します', 1000, NULL, 1, NULL, NULL, 'Snapshot_13.png', 'https://youtu.be/maLniMSaEcE', 1, 2, '2021-02-27 08:31:38', '2021-04-05 17:28:23'),
(2, '空手テクニック：回し蹴り', '回し蹴りの蹴り方を説明します', 1000, '2021-03-05 13:00:00', 7, 'https://meet.jit.si/kick01', 'kick01', 'kick.jpg', 'https://youtu.be/SZ5T0wblWvk', 2, 1, '2021-02-27 08:31:38', '2021-02-27 08:31:38'),
(3, '空手AdvanceLesson', '空手上級者向けのレッスンです', 0, '2021-03-05 13:00:00', 7, 'non', 'non', 'Snapshot_11.png', 'https://youtu.be/jxqLpfzrxL4', 1, 1, '2021-02-27 08:31:38', '2021-02-27 08:31:38'),
(4, 'オンラインテスト', 'テストレッスン', 0, '2021-04-06 11:26:00', 1, 'y', 'y', 'Snapshot_42.png', 'y', 1, 1, '2021-04-05 17:26:56', '2021-04-05 17:26:56');

-- --------------------------------------------------------

--
-- テーブルの構造 `likes`
--

CREATE TABLE `likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `likes_students_id` int(11) DEFAULT NULL,
  `likes_teachers_id` int(11) DEFAULT NULL,
  `likes_navis_id` int(11) DEFAULT NULL,
  `likes_lessons_id` int(11) DEFAULT NULL,
  `likes_courses_id` int(11) DEFAULT NULL,
  `likes_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `likes`
--

INSERT INTO `likes` (`id`, `likes_students_id`, `likes_teachers_id`, `likes_navis_id`, `likes_lessons_id`, `likes_courses_id`, `likes_flag`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, '2021-02-27 08:31:38', '2021-02-27 08:31:38');

-- --------------------------------------------------------

--
-- テーブルの構造 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_02_26_085047_create_lessons_table', 1),
(5, '2021_02_27_033506_create_teachers_table', 1),
(6, '2021_02_27_051754_create_navis_table', 1),
(7, '2021_03_02_092218_create_students_table', 1),
(8, '2021_03_02_092355_create_recommends_table', 1),
(9, '2021_03_02_092455_create_helps_table', 1),
(10, '2021_03_02_093836_create_notices_table', 1),
(11, '2021_03_19_144306_create_courses_table', 1),
(12, '2021_03_19_161951_create_likes_table', 1),
(13, '2021_03_19_162056_create_bookings_table', 1);

-- --------------------------------------------------------

--
-- テーブルの構造 `navis`
--

CREATE TABLE `navis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `navis_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `navis_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `navis_flag` int(11) DEFAULT NULL,
  `navis_login_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `navis_pass` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `navis_tel` text COLLATE utf8mb4_unicode_ci,
  `navis_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `navis`
--

INSERT INTO `navis` (`id`, `navis_name`, `navis_email`, `navis_flag`, `navis_login_id`, `navis_pass`, `navis_tel`, `navis_photo`, `created_at`, `updated_at`) VALUES
(1, 'izumi satoru', 'izumi@test.jp', 1, '55', 'non', '08032103210', 'navi.jpg', '2021-02-27 08:31:38', '2021-02-27 08:31:38'),
(2, 'amano gaku', 'amano@test.jp', 1, '22', 'non', '08012341234', 'amano_navi.jpg', '2021-03-15 23:30:00', '2021-03-15 23:30:00');

-- --------------------------------------------------------

--
-- テーブルの構造 `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `notices_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notices_text` text COLLATE utf8mb4_unicode_ci,
  `notices_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `notices`
--

INSERT INTO `notices` (`id`, `notices_title`, `notices_text`, `notices_flag`, `created_at`, `updated_at`) VALUES
(1, '新規オープン', '空手のオンライン道場が出来ました', 1, '2021-02-27 08:31:38', '2021-02-27 08:31:38');

-- --------------------------------------------------------

--
-- テーブルの構造 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `recommends`
--

CREATE TABLE `recommends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `recommends_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recommends_lessons_id` int(11) DEFAULT NULL,
  `recommends_text` text COLLATE utf8mb4_unicode_ci,
  `recommends_flag` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `recommends`
--

INSERT INTO `recommends` (`id`, `recommends_title`, `recommends_lessons_id`, `recommends_text`, `recommends_flag`, `created_at`, `updated_at`) VALUES
(1, '空手基礎講座', 1, '空手初心者の方に最適な講座です', 1, '2021-02-27 08:31:38', '2021-02-27 08:31:38');

-- --------------------------------------------------------

--
-- テーブルの構造 `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `students_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `students_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `students_flag` int(11) DEFAULT NULL,
  `students_login_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `students_pass` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `students_tel` text COLLATE utf8mb4_unicode_ci,
  `students_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `students`
--

INSERT INTO `students` (`id`, `students_name`, `students_email`, `students_flag`, `students_login_id`, `students_pass`, `students_tel`, `students_photo`, `created_at`, `updated_at`) VALUES
(1, 'ヤマダ　タロウ', 'student@test.jp', 1, '1', 'non', '08099999999', 'karate.png', '2021-02-27 08:31:38', '2021-02-27 08:31:38');

-- --------------------------------------------------------

--
-- テーブルの構造 `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `teachers_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teachers_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teachers_flag` int(11) DEFAULT NULL,
  `teachers_login_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teachers_pass` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teachers_tel` text COLLATE utf8mb4_unicode_ci,
  `teachers_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `teachers`
--

INSERT INTO `teachers` (`id`, `teachers_name`, `teachers_email`, `teachers_flag`, `teachers_login_id`, `teachers_pass`, `teachers_tel`, `teachers_photo`, `created_at`, `updated_at`) VALUES
(1, '泉　智', 'izumi@teacher.jp', 1, '1', 'non', '08012341234', 'teacher.jpg', '2021-02-27 08:31:38', '2021-02-27 08:31:38'),
(2, '天野　岳', 'amano@teacher.jp', 1, '1', 'non', '08012341234', 'amano_teacher.jpg', '2021-03-15 23:30:00', '2021-03-15 23:30:00');

-- --------------------------------------------------------

--
-- テーブルの構造 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- テーブルのデータのダンプ `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'administrator', 'master', 'master@test.jp', NULL, '$2y$10$kAYhib31ei1AZO.TJPtUNuHz6rXXRgfD93KBxcZGz1HEQtESTQ93u', NULL, '2021-04-02 15:11:41', '2021-04-02 15:11:41'),
(3, 'user', 'user', 'user@test.jp', NULL, '$2y$10$/A4L0eISyUNoqcomwL6l.u.U1pgCwyZiLgp7XQItNjByjKgAw71rO', NULL, '2021-04-02 15:13:48', '2021-04-02 15:13:48'),
(4, 'navigator', 'navi', 'navi@test.jp', NULL, '$2y$10$JKPbra6.9y/oiIpKn37zj.VdruqFduBip1x5W0NJrSYnWZe6O9W3.', NULL, '2021-04-02 15:16:20', '2021-04-02 15:16:20'),
(5, 'user', '岩田圭介', 'hymsiwt@yahoo.co.jp', NULL, '$2y$10$AK0kcDo3NqU/qc9CjO6IdOJ1Rc3WtmksBFu3qxR01gVY677ldHAdC', NULL, '2021-04-06 02:10:59', '2021-04-06 02:10:59'),
(6, 'user', '青木', 'kuniao-007@outlook.jp', NULL, '$2y$10$DCMaVWk53MTlA.sIEgh3wuXNzc/0jTMg/pfBvsgJcHqq16vBVy9bO', NULL, '2021-04-07 02:37:20', '2021-04-07 02:37:20'),
(7, 'user', '天野岳', 'amano@amano.com', NULL, '$2y$10$LsAz6EJvgs91ydfzrvgwgOFgr6ilYLWpw1IJFcnLWVFh5N3Gy8dQy', NULL, '2021-04-22 05:06:33', '2021-04-22 05:06:33'),
(8, 'user', 'キタムラ', 'kazuekitamura2003@gmail.com', NULL, '$2y$10$lpQSZNVdHYih4d1RQuagIudFXpQT/1iD4FTBrbU9sVClbrvl2ZD76', NULL, '2021-04-27 04:20:50', '2021-04-27 04:20:50'),
(9, 'user', 'ゲスト', 'guest@test.jp', NULL, '$2y$10$tlGiPjuGpfzMr4GggcQ8CeV4f/292Z2kpccPm2aBRsbJCNwJojnJC', NULL, '2021-05-07 05:34:10', '2021-05-07 05:34:10'),
(10, 'user', '竹田達也', 't-takeda@dream.bbexcite.jp', NULL, '$2y$10$Njyr/Hroz2A8/MeQwYMsNe9/9htBifIgmONCL9OVwa0lv.7LoldxO', NULL, '2021-05-07 22:06:31', '2021-05-07 22:06:31'),
(11, 'user', '小川拓也', 'togawa61@gmail.com', NULL, '$2y$10$xwKZg.lHNVxG1aKE7NOmvOocA/RNKZpXUiGSwEyjFDXiReZkMqASa', NULL, '2021-05-23 17:36:29', '2021-05-23 17:36:29'),
(12, 'user', 'Gaku Amano', 'gaku@gaku.com', NULL, '$2y$10$nFDqUw5h5UkHCgEwGOjhRuonqrOA1.7u6aid491Xp7yJw9Y1AeqIy', NULL, '2021-05-27 20:48:11', '2021-05-27 20:48:11'),
(13, 'user', '簑島', 'guest02@test.jp', NULL, '$2y$10$Tt/9gzpd.hAeRSdKae6wBeHVOQ3JwJaAJU9XZ2eRebeoB6elmSr7C', NULL, '2021-06-19 04:20:54', '2021-06-19 04:20:54'),
(14, 'user', 'JUN GOTO', 'jokin510@outlook.jp', NULL, '$2y$10$jiWh9PCWQiZkUbZgnsRYR.w9QPtu6jytMbr8k9lp76Kw4b.WwZnAu', NULL, '2021-07-12 06:27:28', '2021-07-12 06:27:28'),
(15, 'user', '大槌', 'test05@test.jp', NULL, '$2y$10$rM4w0wuPGrk9fRdm2MOrZOuqYoCLtdeQB2clOLgXQF0QbpDLblhC.', NULL, '2021-07-22 23:45:34', '2021-07-22 23:45:34'),
(16, 'user', '大槌輝彦', 'dexteroustaurus@gmail.com', NULL, '$2y$10$qxiq7camLn7ECGAhivkYnOaoekLpKvcnW/KWbovRFah6KgQSlLbiC', NULL, '2021-07-23 00:16:01', '2021-07-23 00:16:01');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `helps`
--
ALTER TABLE `helps`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `navis`
--
ALTER TABLE `navis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `navis_navis_email_unique` (`navis_email`);

--
-- テーブルのインデックス `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- テーブルのインデックス `recommends`
--
ALTER TABLE `recommends`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_students_email_unique` (`students_email`);

--
-- テーブルのインデックス `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teachers_teachers_email_unique` (`teachers_email`);

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
-- テーブルのAUTO_INCREMENT `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルのAUTO_INCREMENT `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルのAUTO_INCREMENT `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `helps`
--
ALTER TABLE `helps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルのAUTO_INCREMENT `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- テーブルのAUTO_INCREMENT `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルのAUTO_INCREMENT `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- テーブルのAUTO_INCREMENT `navis`
--
ALTER TABLE `navis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- テーブルのAUTO_INCREMENT `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルのAUTO_INCREMENT `recommends`
--
ALTER TABLE `recommends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルのAUTO_INCREMENT `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- テーブルのAUTO_INCREMENT `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- テーブルのAUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
