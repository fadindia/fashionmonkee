-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2015 at 07:41 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  `media_url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `catelog_fk0` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  PRIMARY KEY (`id`),
  KEY `locations_fk0` (`shop_id`),
  KEY `locations_fk1` (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE IF NOT EXISTS `offers` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `name` tinytext,
  `description` text,
  `from` datetime DEFAULT NULL,
  `to` datetime DEFAULT NULL,
  `promocode` tinytext,
  `sub_category_id` bigint(10) DEFAULT NULL,
  `locaton_id` bigint(10) DEFAULT NULL,
  `status` tinyint(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `offers_fk0` (`sub_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `shop_brand`
--

CREATE TABLE IF NOT EXISTS `shop_brand` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `location_id` bigint(10) DEFAULT NULL,
  `brand_id` bigint(10) DEFAULT NULL,
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
