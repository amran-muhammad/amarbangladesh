-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2021 at 07:07 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `edujust`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sports', '2021-03-14 09:42:29', '2021-03-14 09:42:29'),
(2, 'Bangladesh', '2021-03-14 09:56:15', '2021-03-14 09:56:15');

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
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) NOT NULL,
  `headline` varchar(255) DEFAULT NULL,
  `news` text DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `division` varchar(255) DEFAULT NULL,
  `publish_status` int(10) DEFAULT 0,
  `view` bigint(20) NOT NULL DEFAULT 0,
  `category` varchar(255) DEFAULT NULL,
  `shreable_link` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `headline`, `news`, `banner`, `user_id`, `district`, `division`, `publish_status`, `view`, `category`, `shreable_link`, `created_at`, `updated_at`) VALUES
(1, 'ভয়ের কথা বলা সত্ত্বেও আসামির জবানবন্দি রেকর্ড, ব্যাখ্যা চান হাইকোর্ট', '<p>‘আসামির দুই হাত বেঁধে ঝুলিয়ে পেটানোর প্রমাণ তাঁর দুই হাতের কবজির নিচের কালশিরা দাগ থেকে প্রমাণিত হয়। আসামি রিমান্ডের ভয়ে এই জবানবন্দি দিয়েছেন মর্মে প্রতীয়মান হয়।’</p><p>চাঁদপুরের মতলবের একটি হত্যা মামলায় ম্যাজিস্ট্রেটের কাছে এক আসামির দেওয়া স্বীকারোক্তিমূলক জবানবন্দিতে এসব লেখা রয়েছে। এমনকি এক স্মারকে ম্যাজিস্ট্রেট উল্লেখ করেছেন, ‘আসামি একপর্যায়ে বলেছে, পুলিশ বলেছে, দোষ স্বীকার না করলে আবার রিমান্ডে নিয়ে পেটাবে। যতবার দোষ স্বীকার করব না, ততবার রিমান্ডে নিয়ে মারবে। এ জন্য আমি (আসামি) দোষ স্বীকার করেছি।’ আসামির দোষ স্বীকার স্বেচ্ছাপ্রণোদিত নয় বলে ওই স্মারকে উল্লেখ করেন ম্যাজিস্ট্রেট।</p><p>তারপরও আসামির স্বীকারোক্তিমূলক জবানবন্দি কেন ও কীভাবে রেকর্ড করা হলো, তার লিখিত ব্যাখ্যা সংশ্লিষ্ট বিচারকের কাছে জানতে চেয়েছেন হাইকোর্ট। এক মাসের মধ্যে চাঁদপুরের চিফ জুডিশিয়াল ম্যাজিস্ট্রেট মো. নূরে আলমকে এ বিষয়ে ব্যাখ্যা জানাতে বলা হয়েছে।</p><p>বিচারপতি এম ইনায়েতুর রহিম ও বিচারপতি মো. মোস্তাফিজুর রহমানের সমন্বয়ে গঠিত ভার্চ্যুয়াল হাইকোর্ট বেঞ্চ আজ রোববার এ আদেশ দেন।</p><p>ওই হত্যা মামলায় আসামি মো. ফরহাদ হোসেন ওরফে খলুর জামিন আবেদনের শুনানিতে বিষয়টি আদালতের নজরে আনে আসামিপক্ষ। শুনানি নিয়ে আদালত রুল দিয়ে মো. ফরহাদকে অন্তর্বর্তীকালীন জামিন দিয়েছেন।</p>', '/uploads/V8VLIq1N71Xe4fyO3y7zc9H8L5hCFK9zZoFl4yVJ.png', 1, NULL, NULL, 0, 0, 'Bangladesh', NULL, '2021-03-14 09:55:30', '2021-03-14 09:56:31'),
(2, 'ওবায়দুল কাদেরের স্ত্রীকে দুষলেন কাদের মির্জা', '<p>নোয়াখালীর কোম্পানীগঞ্জের সাম্প্রতিক রাজনৈতিক অস্থিতিশীলতার জন্য বড় ভাই এবং সড়ক পরিবহন ও সেতুমন্ত্রী ওবায়দুল কাদেরের স্ত্রীর বিরুদ্ধে অভিযোগ এনেছেন আবদুল কাদের মির্জা।</p><p>পাঁচ দিন আগে বসুরহাটে সংঘর্ষে আলাউদ্দিন নামে এক ব্যক্তি নিহতের ঘটনায় পৌর মেয়র কাদের মির্জা ও তাঁর ছেলেসহ শতাধিক ব্যক্তির বিরুদ্ধে আজ রোববার আদালতে মামলার আবেদন যাওয়ার পর এ অভিযোগ করেন তিনি।</p><p><br></p><p> আজ বিকেলে ফেসবুক লাইভে এসে কাদের মির্জা বলেন, ‘আজকে কোম্পানীগঞ্জের অস্থিতিশীলতার জন্য দায়ী ওবায়দুল কাদের সাহেবের সহধর্মিণী (ইশরাতুন্নেছা কাদের)। ওবায়দুল কাদের সাহেবের ওপর প্রভাব খাটিয়ে তিনি এ কাজগুলো করছেন। ফেনীর অপরাজনীতির হোতা নিজাম হাজারী (সাংসদ নিজাম উদ্দিন হাজারী) আর নোয়াখালীর অপরাজনীতির হোতা সাংসদ একরামুল করিম চৌধুরী তাঁর সঙ্গে রয়েছে।’</p><p> গত জানুয়ারির ভোটে দ্বিতীয় দফায় বসুরহাট পৌরসভার মেয়র নির্বাচিত হওয়া কাদের মির্জা প্রথম আলোচনায় এসেছিলেন যে বক্তব্য দিয়ে, সেখানেও এই ভাবির বিরুদ্ধে অভিযোগ ছিল তাঁর। নৌকা প্রতীকের প্রার্থী হলেও ভাবির সঙ্গে মিলে স্থানীয় কয়েকজন আওয়ামী লীগ নেতা ও সাংসদ তাঁর বিপক্ষে কাজ করছিলেন বলে অভিযোগ করেছিলেন তিনি। সে সময়ই দলের স্থানীয় সাংসদের জনপ্রিয়তা নিয়ে প্রশ্ন তুলে দেশজুড়ে আলোচনায় আসেন তিনি।</p><p><br></p><p><br></p>', '/uploads/MTDcvz8guHnO7mX4bDwtfZkBVRk1ZvxZYIbwgf9B.png', 29, 'Noakhali', 'Chattagram', 0, 0, 'Bangladesh', NULL, '2021-03-14 10:04:27', '2021-03-14 10:04:27');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profilePic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/uploads/s8NCAVS6tguE4Bwg358D7O8dNbzXqCKjSJqhSwDA.png',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userType` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'User',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `app_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `profilePic`, `email`, `email_verified_at`, `password`, `userType`, `created_at`, `updated_at`, `app_token`, `address`) VALUES
(1, 'Admin', '/uploads/s8NCAVS6tguE4Bwg358D7O8dNbzXqCKjSJqhSwDA.png', 'admin@gmail.com', NULL, '$2y$10$tMHiwnDqYyXt3x.UrNPOzu70JxPD2rryZax1BYNFqZIwPBcX/Y3dm', 'admin', '2019-12-30 23:15:32', '2020-01-21 03:07:49', NULL, NULL),
(29, 'Journalist', '/uploads/EmCEkV9FEBRiPlPINe30gnAH9nqX03sMYS0xw4uX.png', 'journalist@gmail.com', NULL, '$2y$10$tMHiwnDqYyXt3x.UrNPOzu70JxPD2rryZax1BYNFqZIwPBcX/Y3dm', 'journalist', '2019-12-30 23:15:32', '2021-03-14 12:05:53', NULL, 'Kumar Para');

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
