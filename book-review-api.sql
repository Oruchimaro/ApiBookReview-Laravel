-- Adminer 4.6.4-dev MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `books` (`id`, `user_id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(4,	1,	'book of genesis',	'/svg/404.svg\n[Fri Feb  1 18:46:06 2019] 127.0.0.1:54338 [200]: /favicon.ico\n[Fri Feb  1 18:46:55 2019] 127.0.0.1:54346 [200]: /favicon.ico\n[Fri Feb  1 18:52:31 2019] 127.0.0.1:54362 [200]: /favicon.ico\n[Fri Feb  1 18:53:22 2019] 127.0.0.1:54374 [200]: /favicon.ico',	'2019-02-01 12:38:01',	'2019-02-01 12:38:01'),
(5,	1,	'article of test update',	'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xMjcuMC4wLjE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTU0OTExNTQwMSwiZXhwIjoxNTQ5MTE5MDAxLCJuYmYiOjE1NDkxMTU0MDEsImp0aSI6IkRwNUxsdasYZ2ZqeFQ5blQzaHkiLCJzdWIiOjEsInBydiI6Ijg3ZTBhZjFlZjlmZDE1ODEyZmRlYzk3MTUzYTE0ZTBiMDQ3NTQ2YWEifQ.z9eqg_KV0nJoJ1YHyWoASalQpHtrrwfH6UQy9F33CfU',	'2019-02-01 13:02:05',	'2019-02-02 10:25:38'),
(6,	1,	'article of test update 2',	'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xMjcuMC4wLjE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTU0OTExNTQwMSwiZXhwIjoxNTQ5MTE5MDAxLCJuYmYiOjE1NDkxMTU0MDEsImp0aSI6IkRwNUxsdasYZ2ZqeFQ5blQzaHkiLCJzdWIiOjEsInBydiI6Ijg3ZTBhZjFlZjlmZDE1ODEyZmRlYzk3MTUzYTE0ZTBiMDQ3NTQ2YWEifQ.z9eqg_KV0nJoJ1YHyWoASalQpHtrrwfH6UQy9F33CfU',	'2019-02-01 13:20:13',	'2019-02-02 10:24:57');

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'2014_10_12_000000_create_users_table',	1),
(2,	'2014_10_12_100000_create_password_resets_table',	1),
(3,	'2019_02_01_100852_create_books_table',	1),
(4,	'2019_02_01_101831_create_ratings_table',	1);

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `ratings`;
CREATE TABLE `ratings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `book_id` int(10) unsigned NOT NULL,
  `rating` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `ratings` (`id`, `user_id`, `book_id`, `rating`, `created_at`, `updated_at`) VALUES
(3,	1,	4,	2,	'2019-02-01 14:21:41',	'2019-02-01 14:21:41'),
(4,	1,	5,	5,	'2019-02-01 14:22:45',	'2019-02-01 14:22:45'),
(5,	3,	5,	1,	'2019-02-01 14:26:47',	'2019-02-01 14:26:47');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1,	'amir',	'am@am.am',	NULL,	'$2y$10$Yv8i1rneFCDgb/Dmk04Qq.L2xNcvN9qbD0CsytyiM9Alo170eXPe6',	NULL,	'2019-02-01 10:32:42',	'2019-02-01 10:32:42'),
(3,	'amiruser2',	'amir@am.am',	NULL,	'$2y$10$QIo4akbJdz7t.COP1nA.M.jAhzcjZEzBWl.Id.6yvCdBGWrNs1gyi',	NULL,	'2019-02-01 14:25:56',	'2019-02-01 14:25:56');

-- 2019-02-03 10:33:07
