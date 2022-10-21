-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 21 oct. 2022 à 04:13
-- Version du serveur : 5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `shamaecom`
--

-- --------------------------------------------------------

--
-- Structure de la table `carts`
--

DROP TABLE IF EXISTS `carts`;
CREATE TABLE IF NOT EXISTS `carts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `created_at`, `updated_at`) VALUES
(1, '1', '27', '1', '2022-10-21 11:31:39', '2022-10-21 11:31:39'),
(2, '1', '31', '1', '2022-10-21 11:32:15', '2022-10-21 11:32:15'),
(3, '1', '28', '4', '2022-10-21 11:32:51', '2022-10-21 11:32:51'),
(4, '1', '36', '1', '2022-10-21 12:12:22', '2022-10-21 12:12:22');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `popular` tinyint(4) NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_descrip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_descrip`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(22, 'Chaussures', 'Chaussures balenciaga', 'Set the Trend this Season by shopping the Latest Collections of Balenciaga at Mytheresa. Enjoy Fast Shipping, Free Returns, 24h Customer Service & Secure Payments at Mytheresa. Highlights: App Available, Multiple Payment Options Available, Customer Care Available.', 0, 1, '1666242778.jpg', 'Balenciaga at Mytheresa.', 'Balenciaga at Mytheresa.', 'Balenciaga at Mytheresa.', '2022-10-20 16:12:58', '2022-10-20 16:12:58'),
(25, 'Pulls à col roulé', 'Pulls à col roulé pour homme', 'Un grand choix de pulls à col roulé pour homme en ligne sur Zalando parmi plus de 1 500 marques ✓ Livraisons et retours gratuits*', 0, 1, '1666243028.jpg', 'Un grand choix de pulls à col roulé', 'Un grand choix de pulls à col roulé', 'Un grand choix de pulls à col roulé', '2022-10-20 16:17:08', '2022-10-20 16:17:08'),
(26, 'Pulls à col roulé', 'Pull col roulé homme - La Redoute', 'Pull col roulé homme - La Redoute. Contrairement au pull col rond qui convient à toutes les morphologies, le col roulé est une pièce qui flatte particulièrement les silhouettes longilignes et ...', 0, 1, '1666243078.jpg', 'Pull col roulé homme - La Redoute', 'Pull col roulé homme - La Redoute', 'Pull col roulé homme - La Redoute', '2022-10-20 16:17:58', '2022-10-20 16:17:58'),
(31, 'REDMI NOTE 10 PRO MAX', 'REDMI NOTE 10 PRO MAX', 'Xiaomi Redmi Note 10 Pro Max · Released 2021, March 18 · 192g, 8.1mm thickness · Android 11, MIUI 12 · 64GB/128GB storage, microSDXC', 0, 0, '1666314308.jpg', 'REDMI NOTE 10 PRO MAX', 'Internal : 64GB 6GB RAM, 128GB 6GB RAM, 1...\r\nPrice : ₹ 16,999\r\nChipset : Qualcomm SM7150 Snapdragon 732G ...\r\nResolution : 1080 x 2400 pixels,', 'REDMI NOTE 10 PRO MAX', '2022-10-21 12:05:08', '2022-10-21 12:05:08'),
(32, 'samsung galaxy s22 +', 'samsung galaxy s22 +', 'Samsung Galaxy S22 5G ; Resolution, 1080 x 2340 pixels, 19.5:9 ratio (~425 ppi density) ; Protection, Corning Gorilla Glass Victus+ ; Platform, OS ; Chipset, Exynos', 0, 1, '1666314614.jpg', 'samsung galaxy s22 +', 'STOCKAGE · 128Go / 8Go RAM. 199,75 €/mois ou. 799,00 € · 256Go / 8Go RAM. 212,25', 'samsung galaxy s22 +', '2022-10-21 12:10:14', '2022-10-21 12:10:14'),
(29, 'ordi acer predator helios 300 ph', 'ordi acer predator helios 300 ph', 'PC portable Acer Predator Helios 300 PH315-51-58KC - Ecran LED 15,6\" Full HD - Processeur Intel® Core™ i5-8300H - RAM 8 Go - 1 To HDD + 128 Go SSD - Carte', 0, 1, '1666312706.jpg', 'ordi acer predator helios 300 ph', 'ordi acer predator helios 300 ph', 'ordi acer predator helios 300 ph', '2022-10-21 11:38:26', '2022-10-21 11:38:26'),
(30, 'PC portable Acer Predator Helios 300 PH315-51-58KC', 'PC portable Acer Predator Helios 300 PH315-51-58KC', 'PC portable Acer Predator Helios 300 PH315-51-58KC - Ecran LED 15,6\" Full HD - Processeur Intel® Core™ i5-8300H - RAM 8 Go - 1 To HDD + 128 Go SSD - Carte', 0, 1, '1666314072.jpg', 'PC portable Acer Predator Helios 300 PH315-51-58KC', 'PC portable Acer Predator Helios 300 PH315-51-58KC', 'PC portable Acer Predator Helios 300 PH315-51-58KC', '2022-10-21 12:01:12', '2022-10-21 12:01:12');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2022_10_18_224052_create_categories_table', 1),
(9, '2022_10_19_012952_create_products_table', 2),
(10, '2022_10_20_230938_create_carts_table', 3);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cate_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `cate_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `tax`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(28, 22, 'Balenciaga at Mytheresa', 'Balenciaga at Mytheresa', 'Balenciaga at Mytheresa', 'Set the Trend this Season by shopping the Latest Collections of Balenciaga at Mytheresa. Enjoy Fast Shipping, Free Returns, 24h Customer Service & Secure Payments at Mytheresa. Highlights: App Available, Multiple Payment Options Available, Customer Care Available.', '45', '67', '1666243357.jpg', '5', '34', 0, 1, 'Balenciaga at Mytheresa', 'Balenciaga at Mytheresa', 'Balenciaga at Mytheresa', '2022-10-20 16:22:37', '2022-10-20 16:22:37'),
(30, 25, 'Pulls à col roulé', 'Pulls à col roulé', 'Pulls à col roulé', 'Un grand choix de pulls à col roulé pour homme en ligne sur Zalando parmi plus de 1 500 marques ✓ Livraisons et retours gratuits*', '45', '78', '1666243502.jpg', '5', '56', 0, 1, 'Pulls à col roulé', 'Pulls à col roulé', 'Pulls à col roulé', '2022-10-20 16:25:02', '2022-10-20 16:25:02'),
(36, 32, 'samsung galaxy s22 +', 'samsung galaxy s22 +', 'samsung galaxy s22 +', 'Plus de 25 références Samsung Galaxy S22, S22+, S22 Ultra : Samsung Galaxy S22, S22+ avec la livraison en 1 jour avec Fnac+. Retrouvez tous nos produits .', '890', '900', '1666314687.jpg', '1', '345', 0, 1, 'samsung galaxy s22 +', 'samsung galaxy s22 +', 'Facteur de forme : Smartphone\r\nSystème d\'exploitation : Android 12.0\r\nCapacité de stockage de la mémoire : 8 Go\r\nType de connecteur : USB Type C', '2022-10-21 12:11:27', '2022-10-21 12:11:27'),
(32, 26, 'Pulls à col roulé', 'Pulls à col roulé', 'Pulls à col roulé', 'Pull col roulé homme - La Redoute. Contrairement au pull col rond qui convient à toutes les morphologies, le col roulé est une pièce qui flatte particulièrement les silhouettes longilignes et ...', '90', '121', '1666312610.jpg', '3', '12', 0, 1, 'Pulls à col roulé', 'Pulls à col roulé', 'Pulls à col roulé', '2022-10-21 11:36:50', '2022-10-21 11:36:50'),
(33, 29, 'ordi acer predator helios 300 ph', 'ordi acer predator helios 300 ph', 'ordi acer predator helios 300 ph', 'PC portable Acer Predator Helios 300 PH315-51-58KC - Ecran LED 15,6\" Full HD - Processeur Intel® Core™ i5-8300H - RAM 8 Go - 1 To HDD + 128 Go SSD - Carte', '500', '800', '1666312747.jpg', '2', '45', 0, 1, 'ordi acer predator helios 300 ph', 'ordi acer predator helios 300 ph', 'ordi acer predator helios 300 ph', '2022-10-21 11:39:07', '2022-10-21 11:39:07'),
(34, 30, 'PC portable Acer Predator Helios 300 PH315-51-58KC', 'PC portable Acer Predator Helios 300 PH315-51-58KC', 'PC portable Acer Predator Helios 300 PH315-51-58KC', 'PC portable Acer Predator Helios 300 PH315-51-58KC - Ecran LED 15,6\" Full HD - Processeur Intel® Core™ i5-8300H - RAM 8 Go - 1 To HDD + 128 Go SSD - Carte', '898', '900', '1666314117.jpg', '1', '45', 0, 1, 'PC portable Acer Predator Helios 300 PH315-51-58KC', 'PC portable Acer Predator Helios 300 PH315-51-58KC', 'PC portable Acer Predator Helios 300 PH315-51-58KC', '2022-10-21 12:01:57', '2022-10-21 12:01:57'),
(35, 31, 'Xiaomi Redmi Note 10 Pro Max', 'Xiaomi Redmi Note 10 Pro Max - Full phone specifications', 'Xiaomi Redmi Note 10 Pro Max', 'Xiaomi Redmi Note 10 Pro Max · Released 2021, March 18 · 192g, 8.1mm thickness · Android 11, MIUI 12 · 64GB/128GB storage, microSDXC ...', '578', '788', '1666314365.jpg', '1', '45', 0, 1, 'Xiaomi Redmi Note 10 Pro Max', 'Xiaomi Redmi Note 10 Pro Max', 'Internal : 64GB 6GB RAM, 128GB 6GB RAM, 1...\r\nPrice : ₹ 16,999\r\nChipset : Qualcomm SM7150 Snapdragon 732G ...\r\nResolution : 1080 x 2400 pixels, 20:9 r', '2022-10-21 12:06:05', '2022-10-21 12:06:05');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role as` tinyint(4) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ohm lova', 'Ohmlova@gmail.com', NULL, '$2y$10$vWYAmqAFYaHA3D.bzuJQOOzgUQwXNoe06kY2yE88s2n50UdC.IJ0C', 0, '7vaUumGKoIM0Gwcs1m29vndYNKI6CDzLJw2Lbqc6kJQUSHOC5ZAEksr5tMTQ', '2022-10-19 10:33:32', '2022-10-19 10:33:32'),
(2, 'defaultuser', 'defaultuser@gmail.com', NULL, '$2y$10$wvRumEtBAgodGnxzoXdb3.GAy0LKSLhZp4An42DfOOS.kmGQb1.MO', 0, 'FDNTCVdOfV6XEHZdfcPbKMDKGeUsreqQDECMLWEgoJ50BcetPp4cUsgRzYkA', '2022-10-19 10:38:31', '2022-10-19 10:38:31');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
