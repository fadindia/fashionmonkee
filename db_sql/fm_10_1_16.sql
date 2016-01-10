-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 10, 2016 at 02:44 PM
-- Server version: 5.5.46-0ubuntu0.14.04.2
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fm`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `address1` varchar(250) DEFAULT NULL,
  `address2` varchar(250) DEFAULT NULL,
  `country` tinytext,
  `state` tinytext,
  `city` tinytext,
  `area` tinytext,
  `mobile` tinytext,
  `phone` tinytext,
  `zip_code` tinytext,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `address1`, `address2`, `country`, `state`, `city`, `area`, `mobile`, `phone`, `zip_code`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-12-19 13:27:15', '2015-12-19 13:27:15'),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-12-19 13:35:58', '2015-12-19 13:35:58'),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-12-19 13:36:59', '2015-12-19 13:36:59'),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-12-19 13:39:02', '2015-12-19 13:39:02'),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-12-19 13:41:13', '2015-12-19 13:41:13'),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-12-19 13:47:57', '2015-12-19 13:47:57'),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-12-19 13:48:37', '2015-12-19 13:48:37'),
(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-12-19 13:48:58', '2015-12-19 13:48:58'),
(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-12-19 13:50:44', '2015-12-19 13:50:44'),
(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-12-19 13:53:01', '2015-12-19 13:53:01'),
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-12-19 13:53:25', '2015-12-19 13:53:25'),
(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-12-19 14:02:45', '2015-12-19 14:02:45'),
(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-12-19 14:12:52', '2015-12-19 14:12:52'),
(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-12-19 14:13:24', '2015-12-19 14:13:24'),
(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-12-19 14:16:23', '2015-12-19 14:16:23'),
(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-12-19 14:18:31', '2015-12-19 14:18:31'),
(17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2015-12-19 14:19:03', '2015-12-19 14:19:03'),
(18, '100ft road', '', 'India', 'Tamilnadu', 'Chennai', 'Velachery', '9876543210', '', NULL, '2015-12-27 11:10:44', '2015-12-27 11:10:44'),
(19, '100ft road', '', 'India', 'Tamilnadu', 'Chennai', 'Velachery', '9876543210', '', NULL, '2015-12-28 11:18:46', '2015-12-28 11:18:46'),
(20, '200ft road', '', 'India', 'Tamilnadu', 'Chennai', 'Velachery', '9876543210', '', NULL, '2015-12-28 11:35:29', '2015-12-28 11:35:29'),
(21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-03 01:17:58', '2016-01-03 01:17:58'),
(22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-03 01:23:28', '2016-01-03 01:23:28'),
(23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-04 10:44:29', '2016-01-04 10:44:29'),
(24, '100ft road', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-04 11:04:35', '2016-01-04 11:04:35'),
(25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-04 11:22:12', '2016-01-04 11:22:12');

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE IF NOT EXISTS `areas` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` tinytext,
  `city_id` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `blog_url` varchar(100) DEFAULT NULL,
  `user_id` bigint(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `like_count` bigint(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blogs_fk0` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `blog_comment`
--

CREATE TABLE IF NOT EXISTS `blog_comment` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `review` varchar(1000) DEFAULT NULL,
  `blog_id` bigint(10) DEFAULT NULL,
  `user_id` bigint(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_comment_fk0` (`blog_id`),
  KEY `blog_comment_fk1` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `blog_review_like`
--

CREATE TABLE IF NOT EXISTS `blog_review_like` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(10) DEFAULT NULL,
  `blog_id` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog_review_like_fk0` (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE IF NOT EXISTS `bookmarks` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(10) DEFAULT NULL,
  `location_id` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bookmarks_fk0` (`user_id`),
  KEY `bookmarks_fk1` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `logo_url` varchar(100) DEFAULT NULL,
  `sub_category_id` bigint(10) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `brands_fk0` (`sub_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` tinytext,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `catelog`
--

CREATE TABLE IF NOT EXISTS `catelog` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `location_id` bigint(100) DEFAULT NULL,
  `sub_category_id` int(11) NOT NULL,
  `media_url` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `catelog_fk0` (`location_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `catelog`
--

INSERT INTO `catelog` (`id`, `name`, `description`, `location_id`, `sub_category_id`, `media_url`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, NULL, 0, NULL, '2016-01-04 11:19:40', '2016-01-04 11:19:40'),
(2, NULL, NULL, NULL, 0, NULL, '2016-01-04 11:22:25', '2016-01-04 11:22:25'),
(3, 'catalog1', 'desc cat', 9, 0, NULL, '2016-01-04 11:22:44', '2016-01-04 11:22:44'),
(4, 'catalog1', 'desc cat', 9, 0, '/var/www/fashionmonkee/public/fm_user/images/fm/catalog/18/x0fJH8nrPkmTxIFIHB1D30AYq0pv7aJTMbB3e493a', '2016-01-04 11:25:10', '2016-01-04 11:25:10'),
(5, 'catalog1', 'desc cat', 9, 0, '/var/www/fashionmonkee/public/fm_user/images/fm/catalog/18/N6MlMHbczx.jpg', '2016-01-04 11:28:22', '2016-01-04 11:28:22'),
(6, 'catalog1', 'desc cat', 9, 0, '/var/www/fashionmonkee/public/fm_user/images/fm/catalog/18/AreKl225FV.jpg', '2016-01-04 11:29:53', '2016-01-04 11:29:53'),
(7, 'catalog1', 'desc cat', 9, 0, '/var/www/fashionmonkee/public/fm_user/images/fm/catalog/18/oiWhXnNy3cu5JeLWqU4dzGt3qGdFggfwp4D97NJDC', '2016-01-04 11:38:22', '2016-01-04 11:38:22'),
(8, 'catalog1', 'desc cat', 9, 0, '/var/www/fashionmonkee/public/fm_user/images/fm/catalog/18/CTSnXGhzdjcKdEdB3IK4GRPoOeGkVA7PrQoHwbnqP', '2016-01-04 11:40:39', '2016-01-04 11:40:39');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE IF NOT EXISTS `cities` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` tinytext,
  `state_id` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` tinytext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `shop_id` bigint(10) DEFAULT NULL,
  `address_id` bigint(10) DEFAULT NULL,
  `open_from` datetime DEFAULT NULL,
  `open_to` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `locations_fk0` (`shop_id`),
  KEY `locations_fk1` (`address_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `shop_id`, `address_id`, `open_from`, `open_to`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-12-19 13:27:15', '2015-12-19 13:27:15'),
(2, 4, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-12-19 13:35:58', '2015-12-19 13:35:58'),
(3, 5, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-12-19 13:36:59', '2015-12-19 13:36:59'),
(4, 6, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-12-19 13:39:02', '2015-12-19 13:39:02'),
(5, 7, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-12-19 13:41:13', '2015-12-19 13:41:13'),
(6, 8, 6, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-12-19 13:47:57', '2015-12-19 13:47:57'),
(7, 9, 7, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-12-19 13:48:37', '2015-12-19 13:48:37'),
(8, 10, 8, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-12-19 13:48:59', '2015-12-19 13:48:59'),
(9, 11, 9, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-12-19 13:50:44', '2015-12-19 13:50:44'),
(10, 12, 10, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-12-19 13:53:01', '2015-12-19 13:53:01'),
(11, 13, 11, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-12-19 13:53:25', '2015-12-19 13:53:25'),
(12, 14, 12, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-12-19 14:02:45', '2015-12-19 14:02:45'),
(13, 15, 13, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-12-19 14:12:52', '2015-12-19 14:12:52'),
(14, 16, 14, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-12-19 14:13:24', '2015-12-19 14:13:24'),
(15, 17, 15, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-12-19 14:16:23', '2015-12-19 14:16:23'),
(16, 18, 16, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-12-19 14:18:31', '2015-12-19 14:18:31'),
(17, 19, 17, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-12-19 14:19:03', '2015-12-19 14:19:03'),
(18, 20, 18, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-12-27 11:10:45', '2015-12-27 11:10:45'),
(19, 21, 19, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-12-28 11:18:46', '2015-12-28 11:18:46'),
(20, 22, 20, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2015-12-28 11:35:29', '2015-12-28 11:35:29'),
(21, 23, 21, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-01-03 01:17:58', '2016-01-03 01:17:58'),
(22, 24, 22, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-01-03 01:23:28', '2016-01-03 01:23:28'),
(23, 25, 23, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-01-04 10:44:29', '2016-01-04 10:44:29'),
(24, 26, 24, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-01-04 11:04:35', '2016-01-04 11:04:35'),
(25, 27, 25, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2016-01-04 11:22:12', '2016-01-04 11:22:12');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2014_10_12_100001_add_timestamp_to_shops', 1),
('2016_01_04_123456_add_timestamp_to_catalog', 2);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE IF NOT EXISTS `offers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` tinytext,
  `description` text,
  `valid_from` datetime DEFAULT NULL,
  `valid_to` datetime DEFAULT NULL,
  `promocode` tinytext,
  `sub_category_id` bigint(10) DEFAULT NULL,
  `locaton_id` bigint(10) DEFAULT NULL,
  `status` tinyint(10) DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `value` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `offers_fk0` (`sub_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE IF NOT EXISTS `reviews` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `comment` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` bigint(10) DEFAULT NULL,
  `location_id` bigint(10) DEFAULT NULL,
  `like_count` bigint(100) DEFAULT NULL,
  `review_url` varchar(100) DEFAULT NULL,
  `rating_count` bigint(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_fk0` (`user_id`),
  KEY `reviews_fk1` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE IF NOT EXISTS `shops` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` tinytext,
  `status` tinyint(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Rex Fashions', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Unlimited', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, NULL, 1, '2015-12-19 13:27:15', '2015-12-19 13:27:15'),
(4, NULL, 1, '2015-12-19 13:35:57', '2015-12-19 13:35:57'),
(5, NULL, 1, '2015-12-19 13:36:59', '2015-12-19 13:36:59'),
(6, NULL, 1, '2015-12-19 13:39:02', '2015-12-19 13:39:02'),
(7, NULL, 1, '2015-12-19 13:41:13', '2015-12-19 13:41:13'),
(8, NULL, 1, '2015-12-19 13:47:57', '2015-12-19 13:47:57'),
(9, NULL, 1, '2015-12-19 13:48:36', '2015-12-19 13:48:36'),
(10, NULL, 1, '2015-12-19 13:48:58', '2015-12-19 13:48:58'),
(11, NULL, 1, '2015-12-19 13:50:43', '2015-12-19 13:50:43'),
(12, NULL, 1, '2015-12-19 13:53:01', '2015-12-19 13:53:01'),
(13, NULL, 1, '2015-12-19 13:53:24', '2015-12-19 13:53:24'),
(14, NULL, 1, '2015-12-19 14:02:45', '2015-12-19 14:02:45'),
(15, NULL, 1, '2015-12-19 14:12:52', '2015-12-19 14:12:52'),
(16, NULL, 1, '2015-12-19 14:13:24', '2015-12-19 14:13:24'),
(17, NULL, 1, '2015-12-19 14:16:23', '2015-12-19 14:16:23'),
(18, NULL, 1, '2015-12-19 14:18:31', '2015-12-19 14:18:31'),
(19, NULL, 1, '2015-12-19 14:19:03', '2015-12-19 14:19:03'),
(20, NULL, 1, '2015-12-27 11:10:44', '2015-12-27 11:10:44'),
(21, NULL, 1, '2015-12-28 11:18:46', '2015-12-28 11:18:46'),
(22, NULL, 1, '2015-12-28 11:35:29', '2015-12-28 11:35:29'),
(23, NULL, 1, '2016-01-03 01:17:58', '2016-01-03 01:17:58'),
(24, NULL, 1, '2016-01-03 01:23:28', '2016-01-03 01:23:28'),
(25, NULL, 1, '2016-01-04 10:44:29', '2016-01-04 10:44:29'),
(26, 'Spinner', 1, '2016-01-04 11:04:35', '2016-01-04 11:04:35'),
(27, NULL, 1, '2016-01-04 11:22:12', '2016-01-04 11:22:12');

-- --------------------------------------------------------

--
-- Table structure for table `shop_brand`
--

CREATE TABLE IF NOT EXISTS `shop_brand` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `location_id` bigint(10) DEFAULT NULL,
  `brand_id` bigint(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `shop_brand_fk0` (`location_id`),
  KEY `shop_brand_fk1` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `shop_category`
--

CREATE TABLE IF NOT EXISTS `shop_category` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `location_id` bigint(10) DEFAULT NULL,
  `sub_category_id` bigint(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `shop_category_fk0` (`location_id`),
  KEY `shop_category_fk1` (`sub_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `shop_review_like`
--

CREATE TABLE IF NOT EXISTS `shop_review_like` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(10) DEFAULT NULL,
  `review_id` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_review_like_fk0` (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` tinytext,
  `country_id` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE IF NOT EXISTS `sub_categories` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `category_id` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_categories_fk0` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `username` tinytext,
  `password` tinytext,
  `first_name` tinytext,
  `last_name` tinytext,
  `dob` datetime DEFAULT NULL,
  `gender` tinytext,
  `status` tinyint(100) DEFAULT NULL,
  `type_id` bigint(100) DEFAULT NULL,
  `address_id` bigint(10) DEFAULT NULL,
  `profile_url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `users_fk0` (`type_id`),
  KEY `users_fk1` (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE IF NOT EXISTS `user_type` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `description` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_fk0` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `blog_comment`
--
ALTER TABLE `blog_comment`
  ADD CONSTRAINT `blog_comment_fk0` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`),
  ADD CONSTRAINT `blog_comment_fk1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `blog_review_like`
--
ALTER TABLE `blog_review_like`
  ADD CONSTRAINT `blog_review_like_fk0` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`);

--
-- Constraints for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD CONSTRAINT `bookmarks_fk0` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `bookmarks_fk1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`);

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_fk0` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`);

--
-- Constraints for table `catelog`
--
ALTER TABLE `catelog`
  ADD CONSTRAINT `catelog_fk0` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`);

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_fk0` FOREIGN KEY (`shop_id`) REFERENCES `shops` (`id`),
  ADD CONSTRAINT `locations_fk1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`);

--
-- Constraints for table `offers`
--
ALTER TABLE `offers`
  ADD CONSTRAINT `offers_fk0` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_fk0` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `reviews_fk1` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`);

--
-- Constraints for table `shop_brand`
--
ALTER TABLE `shop_brand`
  ADD CONSTRAINT `shop_brand_fk0` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `shop_brand_fk1` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`);

--
-- Constraints for table `shop_category`
--
ALTER TABLE `shop_category`
  ADD CONSTRAINT `shop_category_fk0` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `shop_category_fk1` FOREIGN KEY (`sub_category_id`) REFERENCES `sub_categories` (`id`);

--
-- Constraints for table `shop_review_like`
--
ALTER TABLE `shop_review_like`
  ADD CONSTRAINT `shop_review_like_fk0` FOREIGN KEY (`review_id`) REFERENCES `reviews` (`id`);

--
-- Constraints for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD CONSTRAINT `sub_categories_fk0` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_fk0` FOREIGN KEY (`type_id`) REFERENCES `user_type` (`id`),
  ADD CONSTRAINT `users_fk1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
