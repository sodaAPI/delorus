-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2022 at 10:18 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `storedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_qty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(2, NULL, 1, 'Category 2', 'category-2', '2022-01-01 05:33:32', '2022-01-01 05:33:32');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'voyager::seeders.data_rows.roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(56, 7, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(57, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'category', 'text', 'Category', 1, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'description', 'text', 'Description', 1, 1, 1, 1, 1, 1, '{}', 5),
(61, 7, 'gallery', 'text', 'Gallery', 1, 1, 1, 1, 1, 1, '{}', 6),
(62, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(63, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(64, 8, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 1, '{}', 1),
(65, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(66, 8, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{}', 3),
(67, 8, 'category', 'text', 'Category', 1, 1, 1, 1, 1, 1, '{}', 4),
(68, 8, 'description', 'text', 'Description', 1, 1, 1, 1, 1, 1, '{}', 5),
(69, 8, 'gallery', 'text', 'Gallery', 1, 1, 1, 1, 1, 1, '{}', 6),
(70, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(71, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(7, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Models\\Products', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-01-01 05:34:44', '2022-01-01 05:34:44'),
(8, 'recommends', 'recommends', 'Recommend', 'Recommends', 'voyager-shop', 'App\\Models\\Recommends', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"id\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":null}', '2022-01-01 05:35:08', '2022-01-01 05:35:08');

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
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-01-01 05:33:32', '2022-01-01 05:33:32');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-01-01 05:33:32', '2022-01-01 05:33:32', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 6, '2022-01-01 05:33:32', '2022-01-01 05:35:17', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 4, '2022-01-01 05:33:32', '2022-01-01 05:36:29', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 5, '2022-01-01 05:33:32', '2022-01-01 05:36:29', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 7, '2022-01-01 05:33:32', '2022-01-01 05:35:17', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2022-01-01 05:33:32', '2022-01-01 05:35:16', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2022-01-01 05:33:32', '2022-01-01 05:35:16', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2022-01-01 05:33:32', '2022-01-01 05:35:16', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2022-01-01 05:33:32', '2022-01-01 05:35:16', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 8, '2022-01-01 05:33:32', '2022-01-01 05:35:17', 'voyager.settings.index', NULL),
(14, 1, 'Products', '', '_self', 'voyager-bag', NULL, NULL, 2, '2022-01-01 05:34:44', '2022-01-01 05:35:16', 'voyager.products.index', NULL),
(15, 1, 'Recommends', '', '_self', 'voyager-shop', NULL, NULL, 3, '2022-01-01 05:35:08', '2022-01-01 05:35:17', 'voyager.recommends.index', NULL);

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
(61, '2014_10_12_000000_create_users_table', 1),
(62, '2014_10_12_100000_create_password_resets_table', 1),
(63, '2016_01_01_000000_add_voyager_user_fields', 1),
(64, '2016_01_01_000000_create_data_types_table', 1),
(65, '2016_01_01_000000_create_pages_table', 1),
(66, '2016_01_01_000000_create_posts_table', 1),
(67, '2016_02_15_204651_create_categories_table', 1),
(68, '2016_05_19_173453_create_menu_table', 1),
(69, '2016_10_21_190000_create_roles_table', 1),
(70, '2016_10_21_190000_create_settings_table', 1),
(71, '2016_11_30_135954_create_permission_table', 1),
(72, '2016_11_30_141208_create_permission_role_table', 1),
(73, '2016_12_26_201236_data_types__add__server_side', 1),
(74, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(75, '2017_01_14_005015_create_translations_table', 1),
(76, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(77, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(78, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(79, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(80, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(81, '2017_08_05_000000_add_group_to_settings_table', 1),
(82, '2017_11_26_013050_add_user_role_relationship', 1),
(83, '2017_11_26_015000_create_user_roles_table', 1),
(84, '2018_03_11_000000_add_user_settings', 1),
(85, '2018_03_14_000000_add_details_to_data_types_table', 1),
(86, '2018_03_16_000000_make_settings_value_nullable', 1),
(87, '2019_08_19_000000_create_failed_jobs_table', 1),
(88, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(89, '2021_12_29_154228_create_products_table', 1),
(90, '2021_12_29_154313_create_recommends_table', 1),
(91, '2022_01_02_180936_create_carts_table', 2),
(92, '2022_01_03_070550_create_orders_table', 3),
(93, '2022_01_03_075813_create_order_items_table', 3),
(94, '2022_01_03_075904_create_payments_table', 4),
(95, '2022_01_03_075957_create_shipments_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_date` datetime NOT NULL,
  `payment_due` datetime NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_total_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(16,2) NOT NULL DEFAULT 0.00,
  `grand_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_city_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_province_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_postcode` int(11) DEFAULT NULL,
  `shipping_courier` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_service_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `approved_by` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `cancelled_by` bigint(20) UNSIGNED DEFAULT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `cancellation_note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `base_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `base_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `sub_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attributes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`attributes`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2022-01-01 05:33:33', '2022-01-01 05:33:33');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payloads` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payloads`)),
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `va_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biller_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(2, 'browse_bread', NULL, '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(3, 'browse_database', NULL, '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(4, 'browse_media', NULL, '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(5, 'browse_compass', NULL, '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(6, 'browse_menus', 'menus', '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(7, 'read_menus', 'menus', '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(8, 'edit_menus', 'menus', '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(9, 'add_menus', 'menus', '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(10, 'delete_menus', 'menus', '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(11, 'browse_roles', 'roles', '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(12, 'read_roles', 'roles', '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(13, 'edit_roles', 'roles', '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(14, 'add_roles', 'roles', '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(15, 'delete_roles', 'roles', '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(16, 'browse_users', 'users', '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(17, 'read_users', 'users', '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(18, 'edit_users', 'users', '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(19, 'add_users', 'users', '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(20, 'delete_users', 'users', '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(21, 'browse_settings', 'settings', '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(22, 'read_settings', 'settings', '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(23, 'edit_settings', 'settings', '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(24, 'add_settings', 'settings', '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(25, 'delete_settings', 'settings', '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(41, 'browse_products', 'products', '2022-01-01 05:34:44', '2022-01-01 05:34:44'),
(42, 'read_products', 'products', '2022-01-01 05:34:44', '2022-01-01 05:34:44'),
(43, 'edit_products', 'products', '2022-01-01 05:34:44', '2022-01-01 05:34:44'),
(44, 'add_products', 'products', '2022-01-01 05:34:44', '2022-01-01 05:34:44'),
(45, 'delete_products', 'products', '2022-01-01 05:34:44', '2022-01-01 05:34:44'),
(46, 'browse_recommends', 'recommends', '2022-01-01 05:35:08', '2022-01-01 05:35:08'),
(47, 'read_recommends', 'recommends', '2022-01-01 05:35:08', '2022-01-01 05:35:08'),
(48, 'edit_recommends', 'recommends', '2022-01-01 05:35:08', '2022-01-01 05:35:08'),
(49, 'add_recommends', 'recommends', '2022-01-01 05:35:08', '2022-01-01 05:35:08'),
(50, 'delete_recommends', 'recommends', '2022-01-01 05:35:08', '2022-01-01 05:35:08');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2022-01-01 05:33:33', '2022-01-01 05:33:33');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category`, `description`, `gallery`, `created_at`, `updated_at`) VALUES
(1, 'Totebag Sketch', '35000', 'Totebag', 'A Totebag with sketch graphic style', 'images/totebag-product.jpg', NULL, NULL),
(2, 'Colorful Mask', '40000', 'Masker', 'A Mask with colorful style', 'images/masker.jpeg', NULL, NULL),
(3, 'Red LV Bucket Hat', '35000', 'Hat', 'A Bucket hat with Red LV style', 'images/product-3.jpg', NULL, NULL),
(4, 'White Beanie Hat', '25000', 'Hat', 'A Beanie hat with White colors', 'https://m.media-amazon.com/images/I/612Mye5LFhL._AC_UL1001_.jpg', NULL, NULL),
(5, 'Black Beanie Hat', '30000', 'Hat', 'A Beanie hat with Black colors', 'https://m.media-amazon.com/images/I/61nS+ugwc6L._AC_UX385_.jpg', NULL, NULL),
(6, 'Cream Bucket Hat', '55000', 'Hat', 'A Eiger Bucket hat with Cream colors', 'https://cdn.idntimes.com/content-images/community/2021/08/910006662khk1-fed8da28f424252529171158ad96a3c9-51dd9bfd0c5588de5d4e3a1a9759166f.jpg', NULL, NULL),
(7, 'White Bucket Hat', '35000', 'Hat', 'A Eiger Bucket hat with White colors', 'https://eigeradventure.com/media/catalog/product/cache/4f33418a30da1d50c37d8b95a2cfab0e/9/1/910006663.LBL.1.jpg', NULL, NULL),
(8, 'Denim Wallet', '75000', 'Wallet', 'A Wallet with denim material', 'images/dompet.jpg', NULL, NULL),
(9, 'Navy Beanie Hat', '45000', 'Hat', 'A Beanie hat with Blue Navy colors', 'images/beanie.jpg', NULL, NULL),
(10, 'Rabbit Mask', '20000', 'Mask', 'A Mask with rabbit pattern', 'images/masker1.jpeg', NULL, NULL),
(11, 'Red Printed Totebag', '35000', 'Totebag', 'A Totebag with Red printed graphic style', 'images/product-1.jpg', NULL, NULL),
(12, 'Christmas Totebag Printed', '60000', 'Totebag', 'A Totebag with Christmas printed graphic style', 'images/product-2.jpg', NULL, NULL),
(13, 'Cow Pattern Mask', '20000', 'Mask', 'A Mask with cow pattern', 'images/product-4.jpg', NULL, NULL),
(14, 'Bucket Hat Ayam', '55000', 'Hat', 'A Bucket hat with Ayam Pattern', 'images/ayam.jpg', NULL, NULL),
(15, 'Black Tucker Hat', '25000', 'Hat', 'A Tucket hat with black color', 'images/tucker-hat.jpg', NULL, NULL),
(16, 'Batman Wallet', '55000', 'Wallet', 'A Wallet with batman design', 'images/batman-wallet.jpg', NULL, NULL),
(17, 'Ironman Wallet', '45000', 'Wallet', 'A Wallet with cartoon design', 'images/ironman-wallet.jpg', NULL, NULL),
(18, 'Spidey Wallet', '55000', 'Wallet', 'A Wallet with cartoon design', 'images/spidey-wallet.jpg', NULL, NULL),
(19, 'Joker Wallet', '45000', 'Wallet', 'A Wallet with canvas material', 'images/joker-wallet.jpg', NULL, NULL),
(20, 'Spongebob Wallet', '55000', 'Wallet', 'A Wallet with canvas material', 'images/sponsbob-wallet.jpg', NULL, NULL),
(21, 'Pikachu Wallet', '55000', 'Wallet', 'A Wallet with canvas material', 'images/pikachu-wallet.jpg', NULL, NULL),
(22, 'Capt Marvel Wallet', '60000', 'Wallet', 'A Wallet with canvas material', 'images/captain-wallet.jpg', NULL, NULL),
(23, 'Sonic Wallet', '50000', 'Wallet', 'A Wallet with canvas material', 'images/sonic-wallet.jpg', NULL, NULL),
(24, 'Mickey Wallet', '55000', 'Wallet', 'A Wallet with canvas material', 'images/mickey-wallet.jpg', NULL, NULL),
(25, 'Disney Wallet', '60000', 'Wallet', 'A Wallet with canvas material', 'images/disney-wallet.jpg', NULL, NULL),
(26, 'Avangers Wallet', '65000', 'Wallet', 'A Wallet with canvas material', 'images/avangers-wallet.jpg', NULL, NULL),
(27, 'Stich Wallet', '50000', 'Wallet', 'A Wallet with canvas material', 'images/stich-wallet.jpg', NULL, NULL),
(28, 'Avangers Wallet', '65000', 'Wallet', 'A Wallet with canvas material', 'images/avangers-wallet.jpg', NULL, NULL),
(29, 'Winnie Pooh Wallet', '60000', 'Wallet', 'A Wallet with canvas material', 'images/winnie.jpg', NULL, NULL),
(30, 'Lion King Wallet', '65000', 'Wallet', 'A Wallet with canvas material', 'images/lion.jpg', NULL, NULL),
(31, 'Tsum Tsum Wallet', '55000', 'Wallet', 'A Wallet with canvas material', 'images/tsumtsum.jpg', NULL, NULL),
(32, 'Flower Blue Mask', '55000', 'Mask', 'A Mask with colorful design', 'images/flower-mask.jpg', NULL, NULL),
(33, 'Flamingos Mask', '45000', 'Mask', 'A Mask with colorful design', 'images/flamingos-mask.jpg', NULL, NULL),
(34, 'Dog Mask', '35000', 'Mask', 'A Mask with colorful design', 'images/dog-mask.jpg', NULL, NULL),
(35, 'Cat Mask', '50000', 'Mask', 'A Mask with colorful design', 'images/cat-mask.jpg', NULL, NULL),
(36, 'Colorful Mask', '40000', 'Mask', 'A Mask with colorful design', 'images/masker.jpeg', NULL, NULL),
(37, 'Rabbit Mask', '25000', 'Mask', 'A Mask with colorful design', 'images/masker1.jpeg', NULL, NULL),
(38, 'Bubble Black White', '50000', 'Mask', 'A Mask with colorful design', 'images/black-mask.jpg', NULL, NULL),
(39, 'Ice Cream Mask', '55000', 'Mask', 'A Mask with colorful design', 'images/icecream-mask.jpg', NULL, NULL),
(40, 'Marvel Mask', '45000', 'Mask', 'A Mask with colorful design', 'images/marvel-mask.jpg', NULL, NULL),
(41, 'Spidey Mask', '65000', 'Mask', 'A Mask with colorful design', 'images/spidey-mask.jpg', NULL, NULL),
(42, 'Hero Mask', '55000', 'Mask', 'A Mask with colorful design', 'images/marvel-hero.jpg', NULL, NULL),
(43, 'Flower Plant Mask ', '45000', 'Mask', 'A Mask with colorful design', 'images/flower-plant-mask.jpg', NULL, NULL),
(44, 'Unicorn Mask', '60000', 'Mask', 'A Mask with colorful design', 'images/unicorn-mask.jpg', NULL, NULL),
(45, 'Batman Mask', '45000', 'Mask', 'A Mask with colorful design', 'images/batman-mask.jpg', NULL, NULL),
(46, 'Batman Hero Mask', '65000', 'Mask', 'A Mask with colorful design', 'images/superhero-mask.jpg', NULL, NULL),
(47, 'Dollar Bucket Hat', '45000', 'Hat', 'A Hat with colorful design', 'images/dollar-hat.jpg', NULL, NULL),
(48, 'Messes Pinky Hat', '35000', 'Hat', 'A Hat with colorful design', 'images/pink-hat.jpg', NULL, NULL),
(49, 'Colorfull Donut Hat', '35000', 'Hat', 'A Hat with colorful design', 'images/colorful-donut.jpg', NULL, NULL),
(50, 'Block Hat', '50000', 'Hat', 'A Hat with colorful design', 'images/block-hat.jpg', NULL, NULL),
(51, 'Flower Hat', '40000', 'Hat', 'A Hat with colorful design', 'images/flower-hat.jpg', NULL, NULL),
(52, 'Green Hat', '45000', 'Hat', 'A Hat with colorful design', 'images/green-hat.jpg', NULL, NULL),
(53, 'Block Yellow Hat', '50000', 'Hat', 'A Hat with colorful design', 'images/block-yellow.jpg', NULL, NULL),
(54, 'Blue Donut Hat', '50000', 'Hat', 'A Hat with colorful design', 'images/donut-hat.jpg', NULL, NULL),
(55, 'Colorful Mushroom Hat', '55000', 'Hat', 'A Hat with colorful design', 'images/mushroom-hat.jpg', NULL, NULL),
(56, 'Pigeon Green Hat', '60000', 'Hat', 'A Hat with colorful design', 'images/pigeon-hat.jpg', NULL, NULL),
(57, 'Cherry Blossom Hat', '45000', 'Hat', 'A Hat with colorful design', 'images/cherry-hat.jpg', NULL, NULL),
(58, 'Tiedye Bucket Hat', '65000', 'Hat', 'A Hat with colorful design', 'images/tieday-hat.jpg', NULL, NULL),
(59, 'Plant Green Hat', '45000', 'Hat', 'A Hat with colorful design', 'images/greenplant-hat.jpg', NULL, NULL),
(60, 'Avocado Green Hat', '65000', 'Hat', 'A Hat with colorful design', 'images/avocado-hat.jpg', NULL, NULL),
(61, 'Turtle Green Hat', '55000', 'Hat', 'A Hat with colorful design', 'images/turtle-hat.jpg', NULL, NULL),
(62, 'Love Purple Hat', '45000', 'Hat', 'A Hat with colorful design', 'images/love-purple.jpg', NULL, NULL),
(63, 'Sun Plant Totebag', '45000', 'Totebag', 'A Bag with canvas material', 'images/plant-sun-totebag.jpg', NULL, NULL),
(64, 'Earth Tone Totebag', '35000', 'Totebag', 'A Bag with canvas material', 'images/totebag-product.jpg', NULL, NULL),
(65, 'Plant Totebag', '25000', 'Totebag', 'A Bag with canvas material', 'images/plant-totebag.jpg', NULL, NULL),
(66, 'Stroberi Totebag', '35000', 'Totebag', 'A Bag with canvas material', 'images/strawberry-totebag.jpg', NULL, NULL),
(67, 'Abstrak Totebag', '45000', 'Totebag', 'A Bag with canvas material', 'images/abstraak-bag.jpg', NULL, NULL),
(68, 'Colorful Bag', '50000', 'Totebag', 'A Bag with canvas material', 'images/abstrak-totebag.jpg', NULL, NULL),
(69, 'Oppa Korean Bag', '50000', 'Totebag', 'A Bag with canvas material', 'images/oppa-bag.jpg', NULL, NULL),
(70, 'Totebag Printed', '60000', 'Totebag', 'A Bag with canvas material', 'images/product-2.jpg', NULL, NULL),
(71, 'Korean Bag', '35000', 'Totebag', 'A Bag with canvas material', 'images/korean-bag.jpg', NULL, NULL),
(72, 'Sunset Bag', '60000', 'Totebag', 'A Bag with canvas material', 'images/sunset-bag.jpg', NULL, NULL),
(73, 'Connecticut Bag', '50000', 'Totebag', 'A Bag with canvas material', 'images/connecticut-bag.jpg', NULL, NULL),
(74, 'Colorful Plant Bag', '60000', 'Totebag', 'A Bag with canvas material', 'images/bunglon-bag.jpg', NULL, NULL),
(75, 'Dino Bag', '40000', 'Totebag', 'A Bag with canvas material', 'images/dino-bag.jpg', NULL, NULL),
(76, 'Butterfly Bag', '50000', 'Totebag', 'A Bag with canvas material', 'images/butterfly-bag.jpg', NULL, NULL),
(77, 'Oppa Koriah Bag', '55000', 'Totebag', 'A Bag with canvas material', 'images/oppaa-bag.jpg', NULL, NULL),
(78, 'Emoticon Flufy Bag', '60000', 'Totebag', 'A Bag with canvas material', 'images/husbi-bag.jpg', NULL, NULL),
(79, 'Butterfly Bag', '45000', 'Totebag', 'A Bag with canvas material', 'images/butterfly-bag.jpg', NULL, NULL),
(80, 'Flowy Cheerful Bag', '50000', 'Totebag', 'A Bag with canvas material', 'images/floweremot-bag.jpg', NULL, NULL),
(81, 'Flower Green Bag', '40000', 'Totebag', 'A Bag with canvas material', 'images/flower-green.jpg', NULL, NULL),
(82, 'Artsy Block Bag', '50000', 'Totebag', 'A Bag with canvas material', 'images/artsy-bag.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recommends`
--

CREATE TABLE `recommends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recommends`
--

INSERT INTO `recommends` (`id`, `name`, `price`, `category`, `description`, `gallery`, `created_at`, `updated_at`) VALUES
(1, 'White Beanie Hat', '25000', 'Hat', 'A Beanie hat with White colors', 'https://m.media-amazon.com/images/I/612Mye5LFhL._AC_UL1001_.jpg', NULL, NULL),
(2, 'Black Beanie Hat', '30000', 'Hat', 'A Beanie hat with Black colors', 'https://m.media-amazon.com/images/I/61nS+ugwc6L._AC_UX385_.jpg', NULL, NULL),
(3, 'Cream Bucket Hat', '55000', 'Hat', 'A Eiger Bucket hat with Cream colors', 'https://cdn.idntimes.com/content-images/community/2021/08/910006662khk1-fed8da28f424252529171158ad96a3c9-51dd9bfd0c5588de5d4e3a1a9759166f.jpg', NULL, NULL),
(4, 'White Bucket Hat', '35000', 'Hat', 'A Eiger Bucket hat with White colors', 'https://eigeradventure.com/media/catalog/product/cache/4f33418a30da1d50c37d8b95a2cfab0e/9/1/910006663.LBL.1.jpg', NULL, NULL),
(5, 'Bucket Hat Ayam', '55000', 'Hat', 'A Bucket hat with Ayam Pattern', 'images/ayam.jpg', NULL, NULL),
(6, 'Colorful Mask', '40000', 'Masker', 'A Mask with colorful style', 'images/masker.jpeg', NULL, NULL),
(7, 'Red Printed Totebag', '35000', 'Totebag', 'A Totebag with Red printed graphic style', 'images/product-1.jpg', NULL, NULL),
(8, 'Christmas Totebag Printed', '60000', 'Totebag', 'A Totebag with Christmas printed graphic style', 'images/product-2.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(2, 'user', 'Normal User', '2022-01-01 05:33:32', '2022-01-01 05:33:32');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Delorus', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', NULL, '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings\\January2022\\WcbZL1SHzxpzvmmXGYMn.png', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\January2022\\S5FJxtPfolxznyoacrGf.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Delorus', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Delorus Admin Dashboard', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings\\January2022\\9RhbIUGbyrrTcxOXhOgQ.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings\\January2022\\K4DSare8WK5g8DILKTIN.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `shipments`
--

CREATE TABLE `shipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `track_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_qty` int(11) NOT NULL,
  `total_weight` int(11) NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` int(11) DEFAULT NULL,
  `shipped_by` bigint(20) UNSIGNED DEFAULT NULL,
  `shipped_at` datetime DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2022-01-01 05:33:33', '2022-01-01 05:33:33'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2022-01-01 05:33:33', '2022-01-01 05:33:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$VlqiUDl4PWtTwaUHrJ2Ug.WWPRXpH12Wm6Vm3ECaOj2YbN0HGsuZ2', 'XsyDNUJDsnnecIjRUmZeVJzHSeXEpE0s8QdT9c5rfcvwYOSYvKhLJN8Vqvov', NULL, '2022-01-01 05:33:32', '2022-01-01 05:33:32'),
(2, 1, 'rafy', 'rafy@delorus.com', 'users\\January2022\\10k5cMzxYknqo4qYdEZo.jpg', NULL, '$2y$10$62tf2zf.RPNn9FMH1epKe.c5iEHm9MvBqKJkv9/JOj4oCRgFYrrqq', NULL, '{\"locale\":\"en\"}', '2022-01-01 05:36:51', '2022-01-01 05:37:47'),
(3, 1, 'tarra', 'tarra@delorus.com', 'users\\January2022\\egoFCcD1rAuwG1J45LNY.jpg', NULL, '$2y$10$eTEBwcGfIMG8PQbhtScAXuUFk3tvryQW0.VzQlQpW//r5qtoAECb2', NULL, '{\"locale\":\"en\"}', '2022-01-01 08:20:57', '2022-01-01 08:20:57'),
(4, 2, 'dodo', 'dodo@user.com', 'users/default.png', NULL, '$2y$10$PAR2gaHY4JgOmT8S60T0CeCdbvSGrrq3NWl.CUEUD6hoqmFZkuDMi', NULL, NULL, '2022-01-01 08:25:42', '2022-01-01 08:25:42');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_code_unique` (`code`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_approved_by_foreign` (`approved_by`),
  ADD KEY `orders_cancelled_by_foreign` (`cancelled_by`),
  ADD KEY `orders_code_index` (`code`),
  ADD KEY `orders_code_order_date_index` (`code`,`order_date`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_sku_index` (`sku`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_number_unique` (`number`),
  ADD KEY `payments_order_id_foreign` (`order_id`),
  ADD KEY `payments_number_index` (`number`),
  ADD KEY `payments_method_index` (`method`),
  ADD KEY `payments_token_index` (`token`),
  ADD KEY `payments_payment_type_index` (`payment_type`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recommends`
--
ALTER TABLE `recommends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `shipments`
--
ALTER TABLE `shipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipments_user_id_foreign` (`user_id`),
  ADD KEY `shipments_order_id_foreign` (`order_id`),
  ADD KEY `shipments_shipped_by_foreign` (`shipped_by`),
  ADD KEY `shipments_track_number_index` (`track_number`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `recommends`
--
ALTER TABLE `recommends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shipments`
--
ALTER TABLE `shipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_cancelled_by_foreign` FOREIGN KEY (`cancelled_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shipments`
--
ALTER TABLE `shipments`
  ADD CONSTRAINT `shipments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `shipments_shipped_by_foreign` FOREIGN KEY (`shipped_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `shipments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
