-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2020 at 10:14 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maqalat`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(3, 'Quisquam laudantium aut inventore ducimus.', 'Id rerum aut aliquid laudantium voluptatem. Dicta dolore qui enim quia ratione velit. Sunt quisquam sed quae accusantium fugit sit.', '2020-01-08 07:49:43', '2020-01-08 07:49:43'),
(4, 'Sit delectus consequatur quis eum ut non quia.', 'Id tempora veritatis ut error odit fuga. Deserunt ut quo aperiam aspernatur quae qui magni. Esse ab laudantium quis vitae magni. Laboriosam aliquid est nulla eaque ut non.', '2020-01-08 07:49:43', '2020-01-08 07:49:43'),
(5, 'Non ullam ea eum sint.', 'Voluptate magnam error ut qui autem et. Suscipit iure vel laborum quis id qui. Eum non eligendi velit hic. Mollitia accusantium aliquid aspernatur tempora doloremque iure.', '2020-01-08 07:49:43', '2020-01-08 07:49:43'),
(6, 'Aut pariatur vitae possimus assumenda quis.', 'Dolor consequatur libero non explicabo velit cupiditate dolore voluptatibus. Soluta omnis alias est eum aut. Sapiente ut aut fugit.', '2020-01-08 07:49:43', '2020-01-08 07:49:43'),
(7, 'Harum doloribus recusandae quasi recusandae.', 'Illo reprehenderit iure ipsam officia. Omnis ducimus nobis est quos. Quia sed quod ut est aliquid ad.', '2020-01-08 07:49:43', '2020-01-08 07:49:43'),
(8, 'Cum sequi aut et aspernatur facilis.', 'Officia nam non et. Excepturi aut vitae eius modi iure voluptatem. Tempore et quasi illo architecto repellat perspiciatis voluptatibus.', '2020-01-08 07:49:43', '2020-01-08 07:49:43'),
(9, 'Non voluptatum aut et quis.', 'Illum corrupti consequatur doloribus. Et aut dolorum qui quia. Nobis consequatur saepe vitae minima mollitia error accusantium tenetur.', '2020-01-08 07:49:43', '2020-01-08 07:49:43'),
(10, 'Veniam velit eaque et culpa qui natus labore.', 'Saepe aut commodi et ut. Accusamus aut voluptas quia. Quaerat non a itaque dolorum impedit rerum exercitationem. Dolorem cumque exercitationem inventore dignissimos qui facilis iusto.', '2020-01-08 07:49:43', '2020-01-08 07:49:43'),
(11, 'Corporis ab suscipit sit velit mollitia quo.', 'Voluptatum nostrum natus vitae incidunt perspiciatis at quam. Ea totam fugiat pariatur dolore. Magnam nemo quis porro adipisci. Aut itaque enim occaecati maxime et eaque.', '2020-01-08 07:49:43', '2020-01-08 07:49:43'),
(12, 'Illo possimus qui ut eos.', 'Veniam voluptatem quas ea culpa cum. Autem deserunt facere aut sed aut. Exercitationem veritatis quia quasi. Sed vel ratione velit dolore debitis ea voluptates.', '2020-01-08 07:49:43', '2020-01-08 07:49:43'),
(13, 'Ipsam recusandae blanditiis maxime.', 'Eius et facere qui quae quidem qui omnis. Est ullam asperiores quas nihil vero vel. Rerum voluptatem dolorem qui et. Laudantium doloribus doloremque molestias commodi.', '2020-01-08 07:49:43', '2020-01-08 07:49:43'),
(14, 'Consequatur consectetur eum facilis.', 'Beatae quia cupiditate rerum. Voluptatum excepturi ullam id dolorem quis odio. Ex nihil qui ipsum voluptas cumque et exercitationem.', '2020-01-08 07:49:43', '2020-01-08 07:49:43'),
(15, 'Molestiae dolorem doloribus sint vel ex.', 'Totam nobis non velit voluptate atque. Aperiam at quos modi sapiente corporis modi. Et veniam quia quam.', '2020-01-08 07:49:43', '2020-01-08 07:49:43'),
(16, 'Quod ut praesentium ut minus optio omnis.', 'Aliquam ipsam quia modi quasi ullam consectetur. Autem rerum praesentium dignissimos nobis. Autem suscipit culpa voluptatibus ipsa. Et id id rem assumenda repellendus rem quisquam.', '2020-01-08 07:49:43', '2020-01-08 07:49:43'),
(17, 'Voluptatem provident odio expedita hic.', 'Ipsam voluptatem aut cupiditate maiores tempore. Quo reprehenderit in quos provident aliquid. Sed perferendis laboriosam in doloremque necessitatibus veritatis. Ducimus ut natus perferendis corrupti.', '2020-01-08 07:49:43', '2020-01-08 07:49:43'),
(18, 'Facilis ipsam dolores accusamus ut amet nihil.', 'Eos illo in magnam. Nihil fugiat quisquam sit non perspiciatis. Quod non magni quibusdam vel porro ut. Consequuntur rerum veritatis et sunt eos.', '2020-01-08 07:49:43', '2020-01-08 07:49:43'),
(19, 'Cum assumenda suscipit voluptatem maiores ex nam.', 'Quas rerum sit omnis porro. Velit nam consequatur rerum culpa sunt deleniti. Rerum unde qui dolor vel et.', '2020-01-08 07:49:43', '2020-01-08 07:49:43'),
(20, 'Sunt dolorem repellat molestiae dolorem quaerat.', 'Doloremque ut ut error id ut. Eum consequatur deserunt nostrum culpa labore aspernatur incidunt. Illo consequatur soluta illum aut.', '2020-01-08 07:49:43', '2020-01-08 07:49:43'),
(21, 'Quia expedita et dolorem fuga occaecati.', 'Fuga voluptas non autem. Saepe dolorum in voluptas doloremque. Velit et nihil nemo optio eveniet. Aut est voluptas dicta dignissimos nobis est.', '2020-01-08 07:49:43', '2020-01-08 07:49:43'),
(22, 'Quia occaecati ut quae ut.', 'Similique numquam et quia provident pariatur et eius. Non porro accusamus deserunt accusantium. Ducimus dolorem itaque at reprehenderit explicabo qui dolor. Harum molestias quam et labore.', '2020-01-08 07:49:43', '2020-01-08 07:49:43'),
(23, 'Explicabo itaque exercitationem repellat.', 'Voluptas est ratione quidem nobis tempore fugit. Maiores reprehenderit et magnam. Accusantium voluptatem debitis quia inventore et provident sit. Et fuga nisi placeat nulla rerum autem nulla unde.', '2020-01-08 07:49:43', '2020-01-08 07:49:43'),
(24, 'Qui suscipit voluptatibus et modi omnis.', 'Rerum a ut aut enim tenetur libero. Laboriosam dolore ut modi et quia voluptatem. Temporibus vel adipisci sunt consequatur ex delectus quaerat. Est omnis maxime quaerat.', '2020-01-08 07:49:43', '2020-01-08 07:49:43'),
(25, 'Et et qui sequi non odio.', 'Doloribus vitae dolorem iste numquam. Possimus voluptates sequi perspiciatis veritatis aut. Delectus distinctio soluta nemo et velit. Magni praesentium dolores maiores aut.', '2020-01-08 07:49:43', '2020-01-08 07:49:43'),
(26, 'Maxime ab nihil vel et molestiae qui eum.', 'Sit nesciunt minus voluptatem quod quis. Blanditiis inventore nihil sit perspiciatis facere ex. Qui rerum officiis iusto suscipit nihil repellat harum voluptate. Quam nihil sit minima voluptatum.', '2020-01-08 07:49:43', '2020-01-08 07:49:43'),
(27, 'Accusamus veritatis ut et amet molestias.', 'Vel possimus quam cum repellendus impedit sint quo. Velit reprehenderit ex ab. Quia et ducimus sit vero inventore. Expedita magnam nihil qui voluptatibus id.', '2020-01-08 07:49:43', '2020-01-08 07:49:43'),
(28, 'At totam maxime debitis et.', 'Rerum praesentium magni quia. Ullam deleniti perspiciatis sed rem saepe non. Odio sint a maiores modi. Pariatur consequuntur placeat maiores rerum et minus non.', '2020-01-08 07:49:43', '2020-01-08 07:49:43'),
(29, 'Dolores beatae atque ratione dolorem.', 'Quidem omnis nostrum voluptas commodi. Iure quis quia eveniet laborum ut. Quisquam consequatur explicabo vero quo. Quae consequuntur nisi sint tempora amet eos ratione.', '2020-01-08 07:49:43', '2020-01-08 07:49:43'),
(30, 'Magni error expedita qui esse a nobis.', 'Accusantium adipisci omnis sequi eum excepturi. Consectetur ut libero eum sunt quasi id. Quae aspernatur ab qui similique nihil cupiditate dolores. A praesentium doloribus sit.', '2020-01-08 07:49:43', '2020-01-08 07:49:43'),
(41, 'Example Book Title', 'This is an example book to showcase the method in which the books are added.', '2020-01-09 04:10:29', '2020-01-09 04:10:29'),
(42, 'I just want 30', 'The only reason I am adding this book is to have 30 articles. I thought this would be funny, well I hope it is funny. O well, you could delete/edit it if you want. Or maybe just add your own book maybe? 🤷‍♀️', '2020-01-09 04:11:46', '2020-01-09 04:11:46');

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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_01_07_173423_create_articles_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
