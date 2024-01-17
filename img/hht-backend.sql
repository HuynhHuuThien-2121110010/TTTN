-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2024 at 05:20 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hht-backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `action`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::upload.read', NULL, '{}', '[]', '2023-06-07 18:37:56.737000', '2023-06-07 18:37:56.737000', NULL, NULL),
(2, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-06-07 18:37:56.830000', '2023-06-07 18:37:56.830000', NULL, NULL),
(3, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-06-07 18:37:56.926000', '2023-06-07 18:37:56.926000', NULL, NULL),
(4, 'plugin::upload.assets.update', NULL, '{}', '[]', '2023-06-07 18:37:56.933000', '2023-06-07 18:37:56.933000', NULL, NULL),
(5, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-06-07 18:37:56.963000', '2023-06-07 18:37:56.963000', NULL, NULL),
(6, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-06-07 18:37:57.036000', '2023-06-07 18:37:57.036000', NULL, NULL),
(7, 'plugin::upload.read', NULL, '{}', '[\"admin::is-creator\"]', '2023-06-07 18:37:57.041000', '2023-06-07 18:37:57.041000', NULL, NULL),
(8, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-06-07 18:37:57.052000', '2023-06-07 18:37:57.052000', NULL, NULL),
(9, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-06-07 18:37:57.057000', '2023-06-07 18:37:57.057000', NULL, NULL),
(10, 'plugin::upload.assets.update', NULL, '{}', '[\"admin::is-creator\"]', '2023-06-07 18:37:57.061000', '2023-06-07 18:37:57.061000', NULL, NULL),
(11, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-06-07 18:37:57.064000', '2023-06-07 18:37:57.064000', NULL, NULL),
(12, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-06-07 18:37:57.069000', '2023-06-07 18:37:57.069000', NULL, NULL),
(13, 'plugin::content-manager.explorer.create', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2023-06-07 18:37:57.113000', '2023-06-07 18:37:57.113000', NULL, NULL),
(14, 'plugin::content-manager.explorer.read', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2023-06-07 18:37:57.126000', '2023-06-07 18:37:57.126000', NULL, NULL),
(15, 'plugin::content-manager.explorer.update', 'plugin::users-permissions.user', '{\"fields\": [\"username\", \"email\", \"provider\", \"password\", \"resetPasswordToken\", \"confirmationToken\", \"confirmed\", \"blocked\", \"role\"]}', '[]', '2023-06-07 18:37:57.134000', '2023-06-07 18:37:57.134000', NULL, NULL),
(16, 'plugin::content-manager.explorer.delete', 'plugin::users-permissions.user', '{}', '[]', '2023-06-07 18:37:57.148000', '2023-06-07 18:37:57.148000', NULL, NULL),
(17, 'plugin::content-manager.single-types.configure-view', NULL, '{}', '[]', '2023-06-07 18:37:57.152000', '2023-06-07 18:37:57.152000', NULL, NULL),
(18, 'plugin::content-manager.collection-types.configure-view', NULL, '{}', '[]', '2023-06-07 18:37:57.155000', '2023-06-07 18:37:57.155000', NULL, NULL),
(19, 'plugin::content-manager.components.configure-layout', NULL, '{}', '[]', '2023-06-07 18:37:57.158000', '2023-06-07 18:37:57.158000', NULL, NULL),
(20, 'plugin::content-type-builder.read', NULL, '{}', '[]', '2023-06-07 18:37:57.161000', '2023-06-07 18:37:57.161000', NULL, NULL),
(21, 'plugin::email.settings.read', NULL, '{}', '[]', '2023-06-07 18:37:57.164000', '2023-06-07 18:37:57.164000', NULL, NULL),
(22, 'plugin::upload.read', NULL, '{}', '[]', '2023-06-07 18:37:57.168000', '2023-06-07 18:37:57.168000', NULL, NULL),
(23, 'plugin::upload.assets.create', NULL, '{}', '[]', '2023-06-07 18:37:57.171000', '2023-06-07 18:37:57.171000', NULL, NULL),
(24, 'plugin::upload.assets.update', NULL, '{}', '[]', '2023-06-07 18:37:57.175000', '2023-06-07 18:37:57.175000', NULL, NULL),
(25, 'plugin::upload.assets.download', NULL, '{}', '[]', '2023-06-07 18:37:57.181000', '2023-06-07 18:37:57.181000', NULL, NULL),
(26, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2023-06-07 18:37:57.186000', '2023-06-07 18:37:57.186000', NULL, NULL),
(27, 'plugin::upload.configure-view', NULL, '{}', '[]', '2023-06-07 18:37:57.196000', '2023-06-07 18:37:57.196000', NULL, NULL),
(28, 'plugin::upload.settings.read', NULL, '{}', '[]', '2023-06-07 18:37:57.202000', '2023-06-07 18:37:57.202000', NULL, NULL),
(29, 'plugin::users-permissions.roles.create', NULL, '{}', '[]', '2023-06-07 18:37:57.207000', '2023-06-07 18:37:57.207000', NULL, NULL),
(30, 'plugin::users-permissions.roles.read', NULL, '{}', '[]', '2023-06-07 18:37:57.221000', '2023-06-07 18:37:57.221000', NULL, NULL),
(31, 'plugin::users-permissions.roles.update', NULL, '{}', '[]', '2023-06-07 18:37:57.226000', '2023-06-07 18:37:57.226000', NULL, NULL),
(32, 'plugin::users-permissions.roles.delete', NULL, '{}', '[]', '2023-06-07 18:37:57.231000', '2023-06-07 18:37:57.231000', NULL, NULL),
(33, 'plugin::users-permissions.providers.read', NULL, '{}', '[]', '2023-06-07 18:37:57.234000', '2023-06-07 18:37:57.234000', NULL, NULL),
(34, 'plugin::users-permissions.providers.update', NULL, '{}', '[]', '2023-06-07 18:37:57.239000', '2023-06-07 18:37:57.239000', NULL, NULL),
(35, 'plugin::users-permissions.email-templates.read', NULL, '{}', '[]', '2023-06-07 18:37:57.252000', '2023-06-07 18:37:57.252000', NULL, NULL),
(36, 'plugin::users-permissions.email-templates.update', NULL, '{}', '[]', '2023-06-07 18:37:57.256000', '2023-06-07 18:37:57.256000', NULL, NULL),
(37, 'plugin::users-permissions.advanced-settings.read', NULL, '{}', '[]', '2023-06-07 18:37:57.259000', '2023-06-07 18:37:57.259000', NULL, NULL),
(38, 'plugin::users-permissions.advanced-settings.update', NULL, '{}', '[]', '2023-06-07 18:37:57.265000', '2023-06-07 18:37:57.265000', NULL, NULL),
(39, 'plugin::i18n.locale.create', NULL, '{}', '[]', '2023-06-07 18:37:57.269000', '2023-06-07 18:37:57.269000', NULL, NULL),
(40, 'plugin::i18n.locale.read', NULL, '{}', '[]', '2023-06-07 18:37:57.272000', '2023-06-07 18:37:57.272000', NULL, NULL),
(41, 'plugin::i18n.locale.update', NULL, '{}', '[]', '2023-06-07 18:37:57.276000', '2023-06-07 18:37:57.276000', NULL, NULL),
(42, 'plugin::i18n.locale.delete', NULL, '{}', '[]', '2023-06-07 18:37:57.279000', '2023-06-07 18:37:57.279000', NULL, NULL),
(43, 'admin::marketplace.read', NULL, '{}', '[]', '2023-06-07 18:37:57.292000', '2023-06-07 18:37:57.292000', NULL, NULL),
(44, 'admin::webhooks.create', NULL, '{}', '[]', '2023-06-07 18:37:57.295000', '2023-06-07 18:37:57.295000', NULL, NULL),
(45, 'admin::webhooks.read', NULL, '{}', '[]', '2023-06-07 18:37:57.304000', '2023-06-07 18:37:57.304000', NULL, NULL),
(46, 'admin::webhooks.update', NULL, '{}', '[]', '2023-06-07 18:37:57.308000', '2023-06-07 18:37:57.308000', NULL, NULL),
(47, 'admin::webhooks.delete', NULL, '{}', '[]', '2023-06-07 18:37:57.312000', '2023-06-07 18:37:57.312000', NULL, NULL),
(48, 'admin::users.create', NULL, '{}', '[]', '2023-06-07 18:37:57.315000', '2023-06-07 18:37:57.315000', NULL, NULL),
(49, 'admin::users.read', NULL, '{}', '[]', '2023-06-07 18:37:57.319000', '2023-06-07 18:37:57.319000', NULL, NULL),
(50, 'admin::users.update', NULL, '{}', '[]', '2023-06-07 18:37:57.322000', '2023-06-07 18:37:57.322000', NULL, NULL),
(51, 'admin::users.delete', NULL, '{}', '[]', '2023-06-07 18:37:57.325000', '2023-06-07 18:37:57.325000', NULL, NULL),
(52, 'admin::roles.create', NULL, '{}', '[]', '2023-06-07 18:37:57.333000', '2023-06-07 18:37:57.333000', NULL, NULL),
(53, 'admin::roles.read', NULL, '{}', '[]', '2023-06-07 18:37:57.337000', '2023-06-07 18:37:57.337000', NULL, NULL),
(54, 'admin::roles.update', NULL, '{}', '[]', '2023-06-07 18:37:57.340000', '2023-06-07 18:37:57.340000', NULL, NULL),
(55, 'admin::roles.delete', NULL, '{}', '[]', '2023-06-07 18:37:57.342000', '2023-06-07 18:37:57.342000', NULL, NULL),
(56, 'admin::api-tokens.access', NULL, '{}', '[]', '2023-06-07 18:37:57.346000', '2023-06-07 18:37:57.346000', NULL, NULL),
(57, 'admin::api-tokens.create', NULL, '{}', '[]', '2023-06-07 18:37:57.349000', '2023-06-07 18:37:57.349000', NULL, NULL),
(58, 'admin::api-tokens.read', NULL, '{}', '[]', '2023-06-07 18:37:57.357000', '2023-06-07 18:37:57.357000', NULL, NULL),
(59, 'admin::api-tokens.update', NULL, '{}', '[]', '2023-06-07 18:37:57.360000', '2023-06-07 18:37:57.360000', NULL, NULL),
(60, 'admin::api-tokens.regenerate', NULL, '{}', '[]', '2023-06-07 18:37:57.363000', '2023-06-07 18:37:57.363000', NULL, NULL),
(61, 'admin::api-tokens.delete', NULL, '{}', '[]', '2023-06-07 18:37:57.369000', '2023-06-07 18:37:57.369000', NULL, NULL),
(62, 'admin::project-settings.update', NULL, '{}', '[]', '2023-06-07 18:37:57.372000', '2023-06-07 18:37:57.372000', NULL, NULL),
(63, 'admin::project-settings.read', NULL, '{}', '[]', '2023-06-07 18:37:57.375000', '2023-06-07 18:37:57.375000', NULL, NULL),
(64, 'admin::transfer.tokens.access', NULL, '{}', '[]', '2023-06-07 18:37:57.378000', '2023-06-07 18:37:57.378000', NULL, NULL),
(65, 'admin::transfer.tokens.create', NULL, '{}', '[]', '2023-06-07 18:37:57.384000', '2023-06-07 18:37:57.384000', NULL, NULL),
(66, 'admin::transfer.tokens.read', NULL, '{}', '[]', '2023-06-07 18:37:57.388000', '2023-06-07 18:37:57.388000', NULL, NULL),
(67, 'admin::transfer.tokens.update', NULL, '{}', '[]', '2023-06-07 18:37:57.393000', '2023-06-07 18:37:57.393000', NULL, NULL),
(68, 'admin::transfer.tokens.regenerate', NULL, '{}', '[]', '2023-06-07 18:37:57.405000', '2023-06-07 18:37:57.405000', NULL, NULL),
(69, 'admin::transfer.tokens.delete', NULL, '{}', '[]', '2023-06-07 18:37:57.409000', '2023-06-07 18:37:57.409000', NULL, NULL),
(70, 'plugin::content-manager.explorer.create', 'api::category.category', '{\"fields\": [\"categoryName\", \"description\"]}', '[]', '2023-06-07 19:41:27.070000', '2023-06-07 19:41:27.070000', NULL, NULL),
(71, 'plugin::content-manager.explorer.read', 'api::category.category', '{\"fields\": [\"categoryName\", \"description\"]}', '[]', '2023-06-07 19:41:27.087000', '2023-06-07 19:41:27.087000', NULL, NULL),
(72, 'plugin::content-manager.explorer.update', 'api::category.category', '{\"fields\": [\"categoryName\", \"description\"]}', '[]', '2023-06-07 19:41:27.093000', '2023-06-07 19:41:27.093000', NULL, NULL),
(73, 'plugin::content-manager.explorer.delete', 'api::category.category', '{}', '[]', '2023-06-07 19:41:27.098000', '2023-06-07 19:41:27.098000', NULL, NULL),
(74, 'plugin::content-manager.explorer.publish', 'api::category.category', '{}', '[]', '2023-06-07 19:41:27.102000', '2023-06-07 19:41:27.102000', NULL, NULL),
(78, 'plugin::content-manager.explorer.delete', 'api::product.product', '{}', '[]', '2023-06-07 19:48:37.631000', '2023-06-07 19:48:37.631000', NULL, NULL),
(79, 'plugin::content-manager.explorer.publish', 'api::product.product', '{}', '[]', '2023-06-07 19:48:37.637000', '2023-06-07 19:48:37.637000', NULL, NULL),
(80, 'plugin::content-manager.explorer.create', 'api::product.product', '{\"fields\": [\"productName\", \"description\", \"detail\", \"price\", \"image\", \"category\"]}', '[]', '2023-06-07 19:52:58.129000', '2023-06-07 19:52:58.129000', NULL, NULL),
(81, 'plugin::content-manager.explorer.read', 'api::product.product', '{\"fields\": [\"productName\", \"description\", \"detail\", \"price\", \"image\", \"category\"]}', '[]', '2023-06-07 19:52:58.141000', '2023-06-07 19:52:58.141000', NULL, NULL),
(82, 'plugin::content-manager.explorer.update', 'api::product.product', '{\"fields\": [\"productName\", \"description\", \"detail\", \"price\", \"image\", \"category\"]}', '[]', '2023-06-07 19:52:58.146000', '2023-06-07 19:52:58.146000', NULL, NULL),
(83, 'plugin::documentation.read', NULL, '{}', '[]', '2023-06-08 15:22:49.971000', '2023-06-08 15:22:49.971000', NULL, NULL),
(84, 'plugin::documentation.settings.update', NULL, '{}', '[]', '2023-06-08 15:22:49.983000', '2023-06-08 15:22:49.983000', NULL, NULL),
(85, 'plugin::documentation.settings.regenerate', NULL, '{}', '[]', '2023-06-08 15:22:49.988000', '2023-06-08 15:22:49.988000', NULL, NULL),
(86, 'plugin::documentation.settings.read', NULL, '{}', '[]', '2023-06-08 15:22:49.992000', '2023-06-08 15:22:49.992000', NULL, NULL),
(90, 'plugin::content-manager.explorer.delete', 'api::post.post', '{}', '[]', '2023-06-18 13:52:00.358000', '2023-06-18 13:52:00.358000', NULL, NULL),
(91, 'plugin::content-manager.explorer.publish', 'api::post.post', '{}', '[]', '2023-06-18 13:52:00.367000', '2023-06-18 13:52:00.367000', NULL, NULL),
(95, 'plugin::content-manager.explorer.create', 'api::post.post', '{\"fields\": [\"title\", \"contact\", \"image\", \"detail\"]}', '[]', '2023-06-22 17:32:02.863000', '2023-06-22 17:32:02.863000', NULL, NULL),
(96, 'plugin::content-manager.explorer.read', 'api::post.post', '{\"fields\": [\"title\", \"contact\", \"image\", \"detail\"]}', '[]', '2023-06-22 17:32:02.872000', '2023-06-22 17:32:02.872000', NULL, NULL),
(97, 'plugin::content-manager.explorer.update', 'api::post.post', '{\"fields\": [\"title\", \"contact\", \"image\", \"detail\"]}', '[]', '2023-06-22 17:32:02.875000', '2023-06-22 17:32:02.875000', NULL, NULL),
(98, 'plugin::content-manager.explorer.create', 'api::brand.brand', '{\"fields\": [\"brandName\", \"description\", \"image\"]}', '[]', '2023-07-13 11:59:25.139000', '2023-07-13 11:59:25.139000', NULL, NULL),
(99, 'plugin::content-manager.explorer.read', 'api::brand.brand', '{\"fields\": [\"brandName\", \"description\", \"image\"]}', '[]', '2023-07-13 11:59:25.147000', '2023-07-13 11:59:25.147000', NULL, NULL),
(100, 'plugin::content-manager.explorer.update', 'api::brand.brand', '{\"fields\": [\"brandName\", \"description\", \"image\"]}', '[]', '2023-07-13 11:59:25.151000', '2023-07-13 11:59:25.151000', NULL, NULL),
(101, 'plugin::content-manager.explorer.delete', 'api::brand.brand', '{}', '[]', '2023-07-13 11:59:25.155000', '2023-07-13 11:59:25.155000', NULL, NULL),
(102, 'plugin::content-manager.explorer.publish', 'api::brand.brand', '{}', '[]', '2023-07-13 11:59:25.158000', '2023-07-13 11:59:25.158000', NULL, NULL),
(106, 'plugin::content-manager.explorer.delete', 'api::slider.slider', '{}', '[]', '2023-07-13 12:52:27.626000', '2023-07-13 12:52:27.626000', NULL, NULL),
(107, 'plugin::content-manager.explorer.publish', 'api::slider.slider', '{}', '[]', '2023-07-13 12:52:27.630000', '2023-07-13 12:52:27.630000', NULL, NULL),
(120, 'plugin::content-manager.explorer.create', 'api::slider.slider', '{\"fields\": [\"content\", \"image\", \"method\"]}', '[]', '2023-07-13 13:46:07.672000', '2023-07-13 13:46:07.672000', NULL, NULL),
(121, 'plugin::content-manager.explorer.read', 'api::slider.slider', '{\"fields\": [\"content\", \"image\", \"method\"]}', '[]', '2023-07-13 13:46:07.679000', '2023-07-13 13:46:07.679000', NULL, NULL),
(122, 'plugin::content-manager.explorer.update', 'api::slider.slider', '{\"fields\": [\"content\", \"image\", \"method\"]}', '[]', '2023-07-13 13:46:07.684000', '2023-07-13 13:46:07.684000', NULL, NULL),
(126, 'plugin::content-manager.explorer.delete', 'api::order.order', '{}', '[]', '2023-07-15 09:10:08.531000', '2023-07-15 09:10:08.531000', NULL, NULL),
(127, 'plugin::content-manager.explorer.publish', 'api::order.order', '{}', '[]', '2023-07-15 09:10:08.534000', '2023-07-15 09:10:08.534000', NULL, NULL),
(134, 'plugin::content-manager.explorer.delete', 'api::orderdetail.orderdetail', '{}', '[]', '2023-07-15 09:16:44.630000', '2023-07-15 09:16:44.630000', NULL, NULL),
(135, 'plugin::content-manager.explorer.publish', 'api::orderdetail.orderdetail', '{}', '[]', '2023-07-15 09:16:44.635000', '2023-07-15 09:16:44.635000', NULL, NULL),
(166, 'plugin::content-manager.explorer.create', 'api::orderdetail.orderdetail', '{\"fields\":[\"order_id\",\"price\",\"qty\",\"amount\",\"product_id\"]}', '[]', '2024-01-17 10:02:29.618000', '2024-01-17 10:02:29.618000', NULL, NULL),
(167, 'plugin::content-manager.explorer.read', 'api::orderdetail.orderdetail', '{\"fields\":[\"order_id\",\"price\",\"qty\",\"amount\",\"product_id\"]}', '[]', '2024-01-17 10:02:29.626000', '2024-01-17 10:02:29.626000', NULL, NULL),
(168, 'plugin::content-manager.explorer.update', 'api::orderdetail.orderdetail', '{\"fields\":[\"order_id\",\"price\",\"qty\",\"amount\",\"product_id\"]}', '[]', '2024-01-17 10:02:29.630000', '2024-01-17 10:02:29.630000', NULL, NULL),
(169, 'plugin::content-manager.explorer.create', 'api::order.order', '{\"fields\":[\"code\",\"user_id\",\"deliveryaddress\",\"deliveryname\",\"deliveryphone\",\"deliveryemail\",\"status\",\"orderdetails\",\"total\",\"ship\"]}', '[]', '2024-01-17 11:03:01.366000', '2024-01-17 11:03:01.366000', NULL, NULL),
(170, 'plugin::content-manager.explorer.read', 'api::order.order', '{\"fields\":[\"code\",\"user_id\",\"deliveryaddress\",\"deliveryname\",\"deliveryphone\",\"deliveryemail\",\"status\",\"orderdetails\",\"total\",\"ship\"]}', '[]', '2024-01-17 11:03:01.370000', '2024-01-17 11:03:01.370000', NULL, NULL),
(171, 'plugin::content-manager.explorer.update', 'api::order.order', '{\"fields\":[\"code\",\"user_id\",\"deliveryaddress\",\"deliveryname\",\"deliveryphone\",\"deliveryemail\",\"status\",\"orderdetails\",\"total\",\"ship\"]}', '[]', '2024-01-17 11:03:01.373000', '2024-01-17 11:03:01.373000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions_role_links`
--

CREATE TABLE `admin_permissions_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `admin_permissions_role_links`
--

INSERT INTO `admin_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 2),
(3, 3, 2, 3),
(4, 4, 2, 4),
(5, 5, 2, 5),
(6, 6, 2, 6),
(7, 7, 3, 1),
(8, 8, 3, 2),
(9, 9, 3, 3),
(10, 10, 3, 4),
(11, 11, 3, 5),
(12, 12, 3, 6),
(13, 13, 1, 1),
(14, 14, 1, 2),
(15, 15, 1, 3),
(16, 16, 1, 4),
(17, 17, 1, 5),
(18, 18, 1, 6),
(19, 19, 1, 7),
(20, 20, 1, 8),
(21, 21, 1, 9),
(22, 22, 1, 10),
(23, 23, 1, 11),
(24, 24, 1, 12),
(25, 25, 1, 13),
(26, 26, 1, 14),
(27, 27, 1, 15),
(28, 28, 1, 16),
(29, 29, 1, 17),
(30, 30, 1, 18),
(31, 31, 1, 19),
(32, 32, 1, 20),
(33, 33, 1, 21),
(34, 34, 1, 22),
(35, 35, 1, 23),
(36, 36, 1, 24),
(37, 37, 1, 25),
(38, 38, 1, 26),
(39, 39, 1, 27),
(40, 40, 1, 28),
(41, 41, 1, 29),
(42, 42, 1, 30),
(43, 43, 1, 31),
(44, 44, 1, 32),
(45, 45, 1, 33),
(46, 46, 1, 34),
(47, 47, 1, 35),
(48, 48, 1, 36),
(49, 49, 1, 37),
(50, 50, 1, 38),
(51, 51, 1, 39),
(52, 52, 1, 40),
(53, 53, 1, 41),
(54, 54, 1, 42),
(55, 55, 1, 43),
(56, 56, 1, 44),
(57, 57, 1, 45),
(58, 58, 1, 46),
(59, 59, 1, 47),
(60, 60, 1, 48),
(61, 61, 1, 49),
(62, 62, 1, 50),
(63, 63, 1, 51),
(64, 64, 1, 52),
(65, 65, 1, 53),
(66, 66, 1, 54),
(67, 67, 1, 55),
(68, 68, 1, 56),
(69, 69, 1, 57),
(70, 70, 1, 58),
(71, 71, 1, 59),
(72, 72, 1, 60),
(73, 73, 1, 61),
(74, 74, 1, 62),
(78, 78, 1, 66),
(79, 79, 1, 67),
(80, 80, 1, 68),
(81, 81, 1, 69),
(82, 82, 1, 70),
(83, 83, 1, 71),
(84, 84, 1, 72),
(85, 85, 1, 73),
(86, 86, 1, 74),
(90, 90, 1, 78),
(91, 91, 1, 79),
(95, 95, 1, 80),
(96, 96, 1, 81),
(97, 97, 1, 82),
(98, 98, 1, 83),
(99, 99, 1, 84),
(100, 100, 1, 85),
(101, 101, 1, 86),
(102, 102, 1, 87),
(106, 106, 1, 91),
(107, 107, 1, 92),
(120, 120, 1, 93),
(121, 121, 1, 94),
(122, 122, 1, 95),
(126, 126, 1, 99),
(127, 127, 1, 100),
(134, 134, 1, 107),
(135, 135, 1, 108),
(166, 166, 1, 121),
(167, 167, 1, 122),
(168, 168, 1, 123),
(169, 169, 1, 124),
(170, 170, 1, 125),
(171, 171, 1, 126);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `code`, `description`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2023-06-07 18:37:56.638000', '2023-06-07 18:37:56.638000', NULL, NULL),
(2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2023-06-07 18:37:56.699000', '2023-06-07 18:37:56.699000', NULL, NULL),
(3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2023-06-07 18:37:56.718000', '2023-06-07 18:37:56.718000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Thiện', 'Huỳnh', NULL, 'hhtvlogs275@gmail.com', '$2a$10$VVti/GLNhQhf4a5gJSXHeuyGGQ9ZyU/2C/NzoTNkZcR5UujJE912i', NULL, NULL, 1, 0, NULL, '2023-06-07 18:45:51.081000', '2023-06-07 18:45:51.081000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users_roles_links`
--

CREATE TABLE `admin_users_roles_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `role_order` double UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `admin_users_roles_links`
--

INSERT INTO `admin_users_roles_links` (`id`, `user_id`, `role_id`, `role_order`, `user_order`) VALUES
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `description`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(2, 'Bóng chuyền', 'Sản phẩm chuyên dành cho môn thể thao bóng chuyền', '2023-06-08 13:58:00.526000', '2023-06-18 10:30:19.098000', '2023-06-08 15:35:38.000000', NULL, 1),
(3, 'Cầu lông', 'Sản phẩm chuyên dành cho môn thể thao cầu lông', '2023-06-08 13:58:00.535000', '2023-06-18 10:30:32.036000', '2023-06-08 15:35:38.000000', NULL, 1),
(4, 'Gym', 'Sản phẩm chuyên dành cho dân Gymer', '2023-06-08 13:58:00.539000', '2023-06-18 10:30:44.552000', '2023-06-08 15:35:38.000000', NULL, 1),
(5, 'Bơi lội', 'Sản phẩm chuyên dành cho môn thể thao bơi', '2023-06-08 13:58:00.544000', '2023-06-18 10:30:53.497000', '2023-06-08 15:35:38.000000', NULL, 1),
(6, 'Tennis', 'Sản phẩm chuyên dành người yêu thích tennis', '2023-06-08 13:58:00.548000', '2023-06-18 10:31:11.858000', '2023-06-08 15:35:38.000000', NULL, 1),
(7, 'Đạp xe', 'Sản phẩm chuyên dành thích đạp xe', '2023-06-08 13:58:00.552000', '2023-06-18 10:31:29.088000', '2023-06-08 15:35:38.000000', NULL, 1),
(8, 'Bóng rổ', 'Sản phẩm chuyên dành cho môn thể thao bóng rổ', '2023-06-08 13:58:00.555000', '2023-06-18 10:31:40.511000', '2023-06-08 15:35:38.000000', NULL, 1),
(9, 'Bóng bàn', 'Sản phẩm chuyên dành cho môn thể thao bóng bàn', '2023-06-08 13:58:00.560000', '2023-06-18 10:31:56.982000', '2023-06-08 15:35:38.000000', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `alternative_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `caption` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`formats`)),
  `hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `ext` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `mime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `preview_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `provider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `provider_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`provider_metadata`)),
  `folder_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(2, 'OIP.jfif', NULL, NULL, 212, 212, '{\"thumbnail\": {\"ext\": \".jfif\", \"url\": \"/uploads/thumbnail_OIP_d2534ac192.jfif\", \"hash\": \"thumbnail_OIP_d2534ac192\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_OIP.jfif\", \"path\": null, \"size\": 7.47, \"width\": 156, \"height\": 156}}', 'OIP_d2534ac192', '.jfif', 'image/jpeg', 12.28, '/uploads/OIP_d2534ac192.jfif', NULL, 'local', NULL, '/1', '2023-06-07 20:02:58.303000', '2023-06-07 20:02:58.303000', 1, 1),
(3, 'OIP (2).jfif', NULL, NULL, 245, 180, '{\"thumbnail\": {\"ext\": \".jfif\", \"url\": \"/uploads/thumbnail_OIP_2_f3f3cbd6c1.jfif\", \"hash\": \"thumbnail_OIP_2_f3f3cbd6c1\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_OIP (2).jfif\", \"path\": null, \"size\": 8.89, \"width\": 212, \"height\": 156}}', 'OIP_2_f3f3cbd6c1', '.jfif', 'image/jpeg', 10.96, '/uploads/OIP_2_f3f3cbd6c1.jfif', NULL, 'local', NULL, '/1', '2023-06-07 20:02:58.298000', '2023-06-07 20:02:58.298000', 1, 1),
(4, 'OIP (1).jfif', NULL, NULL, 187, 188, '{\"thumbnail\": {\"ext\": \".jfif\", \"url\": \"/uploads/thumbnail_OIP_1_b393bcf95b.jfif\", \"hash\": \"thumbnail_OIP_1_b393bcf95b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_OIP (1).jfif\", \"path\": null, \"size\": 4.23, \"width\": 155, \"height\": 156}}', 'OIP_1_b393bcf95b', '.jfif', 'image/jpeg', 5.40, '/uploads/OIP_1_b393bcf95b.jfif', NULL, 'local', NULL, '/1', '2023-06-07 20:02:58.401000', '2023-06-07 20:02:58.401000', 1, 1),
(5, '5ce4e4770131df6f8620.jpg', NULL, NULL, 1920, 2560, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_5ce4e4770131df6f8620_729f757c8d.jpg\", \"hash\": \"large_5ce4e4770131df6f8620_729f757c8d\", \"mime\": \"image/jpeg\", \"name\": \"large_5ce4e4770131df6f8620.jpg\", \"path\": null, \"size\": 186.35, \"width\": 750, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_5ce4e4770131df6f8620_729f757c8d.jpg\", \"hash\": \"small_5ce4e4770131df6f8620_729f757c8d\", \"mime\": \"image/jpeg\", \"name\": \"small_5ce4e4770131df6f8620.jpg\", \"path\": null, \"size\": 47.12, \"width\": 375, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_5ce4e4770131df6f8620_729f757c8d.jpg\", \"hash\": \"medium_5ce4e4770131df6f8620_729f757c8d\", \"mime\": \"image/jpeg\", \"name\": \"medium_5ce4e4770131df6f8620.jpg\", \"path\": null, \"size\": 104.97, \"width\": 563, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_5ce4e4770131df6f8620_729f757c8d.jpg\", \"hash\": \"thumbnail_5ce4e4770131df6f8620_729f757c8d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_5ce4e4770131df6f8620.jpg\", \"path\": null, \"size\": 5.55, \"width\": 117, \"height\": 156}}', '5ce4e4770131df6f8620_729f757c8d', '.jpg', 'image/jpeg', 1005.56, '/uploads/5ce4e4770131df6f8620_729f757c8d.jpg', NULL, 'local', NULL, '/1', '2023-06-08 14:07:27.520000', '2023-06-08 14:07:27.520000', 1, 1),
(6, '6e5bdbc83e8ee0d0b99f.jpg', NULL, NULL, 1926, 2568, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_6e5bdbc83e8ee0d0b99f_1a70b7a6cd.jpg\", \"hash\": \"large_6e5bdbc83e8ee0d0b99f_1a70b7a6cd\", \"mime\": \"image/jpeg\", \"name\": \"large_6e5bdbc83e8ee0d0b99f.jpg\", \"path\": null, \"size\": 170.27, \"width\": 750, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_6e5bdbc83e8ee0d0b99f_1a70b7a6cd.jpg\", \"hash\": \"small_6e5bdbc83e8ee0d0b99f_1a70b7a6cd\", \"mime\": \"image/jpeg\", \"name\": \"small_6e5bdbc83e8ee0d0b99f.jpg\", \"path\": null, \"size\": 39.08, \"width\": 375, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_6e5bdbc83e8ee0d0b99f_1a70b7a6cd.jpg\", \"hash\": \"medium_6e5bdbc83e8ee0d0b99f_1a70b7a6cd\", \"mime\": \"image/jpeg\", \"name\": \"medium_6e5bdbc83e8ee0d0b99f.jpg\", \"path\": null, \"size\": 92.66, \"width\": 563, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_6e5bdbc83e8ee0d0b99f_1a70b7a6cd.jpg\", \"hash\": \"thumbnail_6e5bdbc83e8ee0d0b99f_1a70b7a6cd\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_6e5bdbc83e8ee0d0b99f.jpg\", \"path\": null, \"size\": 3.97, \"width\": 117, \"height\": 156}}', '6e5bdbc83e8ee0d0b99f_1a70b7a6cd', '.jpg', 'image/jpeg', 1046.97, '/uploads/6e5bdbc83e8ee0d0b99f_1a70b7a6cd.jpg', NULL, 'local', NULL, '/1', '2023-06-08 14:07:27.607000', '2023-06-08 14:07:27.607000', 1, 1),
(7, 'cf188c756933b76dee22.jpg', NULL, NULL, 1920, 2560, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_cf188c756933b76dee22_31e60edebc.jpg\", \"hash\": \"large_cf188c756933b76dee22_31e60edebc\", \"mime\": \"image/jpeg\", \"name\": \"large_cf188c756933b76dee22.jpg\", \"path\": null, \"size\": 147.21, \"width\": 750, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_cf188c756933b76dee22_31e60edebc.jpg\", \"hash\": \"small_cf188c756933b76dee22_31e60edebc\", \"mime\": \"image/jpeg\", \"name\": \"small_cf188c756933b76dee22.jpg\", \"path\": null, \"size\": 40.39, \"width\": 375, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_cf188c756933b76dee22_31e60edebc.jpg\", \"hash\": \"medium_cf188c756933b76dee22_31e60edebc\", \"mime\": \"image/jpeg\", \"name\": \"medium_cf188c756933b76dee22.jpg\", \"path\": null, \"size\": 85.93, \"width\": 563, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_cf188c756933b76dee22_31e60edebc.jpg\", \"hash\": \"thumbnail_cf188c756933b76dee22_31e60edebc\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_cf188c756933b76dee22.jpg\", \"path\": null, \"size\": 5.4, \"width\": 117, \"height\": 156}}', 'cf188c756933b76dee22_31e60edebc', '.jpg', 'image/jpeg', 801.76, '/uploads/cf188c756933b76dee22_31e60edebc.jpg', NULL, 'local', NULL, '/1', '2023-06-08 14:07:28.075000', '2023-06-08 14:07:28.075000', 1, 1),
(8, '9b13de7a3b3ce562bc2d.jpg', NULL, NULL, 1920, 2560, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_9b13de7a3b3ce562bc2d_3500fdd340.jpg\", \"hash\": \"large_9b13de7a3b3ce562bc2d_3500fdd340\", \"mime\": \"image/jpeg\", \"name\": \"large_9b13de7a3b3ce562bc2d.jpg\", \"path\": null, \"size\": 169.41, \"width\": 750, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_9b13de7a3b3ce562bc2d_3500fdd340.jpg\", \"hash\": \"small_9b13de7a3b3ce562bc2d_3500fdd340\", \"mime\": \"image/jpeg\", \"name\": \"small_9b13de7a3b3ce562bc2d.jpg\", \"path\": null, \"size\": 44.4, \"width\": 375, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_9b13de7a3b3ce562bc2d_3500fdd340.jpg\", \"hash\": \"medium_9b13de7a3b3ce562bc2d_3500fdd340\", \"mime\": \"image/jpeg\", \"name\": \"medium_9b13de7a3b3ce562bc2d.jpg\", \"path\": null, \"size\": 97.14, \"width\": 563, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_9b13de7a3b3ce562bc2d_3500fdd340.jpg\", \"hash\": \"thumbnail_9b13de7a3b3ce562bc2d_3500fdd340\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_9b13de7a3b3ce562bc2d.jpg\", \"path\": null, \"size\": 5.45, \"width\": 117, \"height\": 156}}', '9b13de7a3b3ce562bc2d_3500fdd340', '.jpg', 'image/jpeg', 937.77, '/uploads/9b13de7a3b3ce562bc2d_3500fdd340.jpg', NULL, 'local', NULL, '/1', '2023-06-08 14:07:28.223000', '2023-06-08 14:07:28.223000', 1, 1),
(9, 'b0a1d0353573eb2db262.jpg', NULL, NULL, 1920, 2560, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_b0a1d0353573eb2db262_e13ee08f53.jpg\", \"hash\": \"large_b0a1d0353573eb2db262_e13ee08f53\", \"mime\": \"image/jpeg\", \"name\": \"large_b0a1d0353573eb2db262.jpg\", \"path\": null, \"size\": 242.05, \"width\": 750, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_b0a1d0353573eb2db262_e13ee08f53.jpg\", \"hash\": \"small_b0a1d0353573eb2db262_e13ee08f53\", \"mime\": \"image/jpeg\", \"name\": \"small_b0a1d0353573eb2db262.jpg\", \"path\": null, \"size\": 65.78, \"width\": 375, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_b0a1d0353573eb2db262_e13ee08f53.jpg\", \"hash\": \"medium_b0a1d0353573eb2db262_e13ee08f53\", \"mime\": \"image/jpeg\", \"name\": \"medium_b0a1d0353573eb2db262.jpg\", \"path\": null, \"size\": 143.22, \"width\": 563, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_b0a1d0353573eb2db262_e13ee08f53.jpg\", \"hash\": \"thumbnail_b0a1d0353573eb2db262_e13ee08f53\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_b0a1d0353573eb2db262.jpg\", \"path\": null, \"size\": 7.67, \"width\": 117, \"height\": 156}}', 'b0a1d0353573eb2db262_e13ee08f53', '.jpg', 'image/jpeg', 1148.96, '/uploads/b0a1d0353573eb2db262_e13ee08f53.jpg', NULL, 'local', NULL, '/1', '2023-06-08 14:07:28.456000', '2023-06-08 14:07:28.456000', 1, 1),
(10, '9281412ca46a7a34237b.jpg', NULL, NULL, 2568, 1926, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_9281412ca46a7a34237b_75e977abf6.jpg\", \"hash\": \"large_9281412ca46a7a34237b_75e977abf6\", \"mime\": \"image/jpeg\", \"name\": \"large_9281412ca46a7a34237b.jpg\", \"path\": null, \"size\": 109.35, \"width\": 1000, \"height\": 750}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_9281412ca46a7a34237b_75e977abf6.jpg\", \"hash\": \"small_9281412ca46a7a34237b_75e977abf6\", \"mime\": \"image/jpeg\", \"name\": \"small_9281412ca46a7a34237b.jpg\", \"path\": null, \"size\": 31.46, \"width\": 500, \"height\": 375}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_9281412ca46a7a34237b_75e977abf6.jpg\", \"hash\": \"medium_9281412ca46a7a34237b_75e977abf6\", \"mime\": \"image/jpeg\", \"name\": \"medium_9281412ca46a7a34237b.jpg\", \"path\": null, \"size\": 64.81, \"width\": 750, \"height\": 563}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_9281412ca46a7a34237b_75e977abf6.jpg\", \"hash\": \"thumbnail_9281412ca46a7a34237b_75e977abf6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_9281412ca46a7a34237b.jpg\", \"path\": null, \"size\": 7.39, \"width\": 209, \"height\": 156}}', '9281412ca46a7a34237b_75e977abf6', '.jpg', 'image/jpeg', 625.96, '/uploads/9281412ca46a7a34237b_75e977abf6.jpg', NULL, 'local', NULL, '/1', '2023-06-08 14:07:28.719000', '2023-06-08 14:07:28.719000', 1, 1),
(11, '9fb10224e762393c6073.jpg', NULL, NULL, 1920, 2560, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_9fb10224e762393c6073_72da77607c.jpg\", \"hash\": \"large_9fb10224e762393c6073_72da77607c\", \"mime\": \"image/jpeg\", \"name\": \"large_9fb10224e762393c6073.jpg\", \"path\": null, \"size\": 282.7, \"width\": 750, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_9fb10224e762393c6073_72da77607c.jpg\", \"hash\": \"small_9fb10224e762393c6073_72da77607c\", \"mime\": \"image/jpeg\", \"name\": \"small_9fb10224e762393c6073.jpg\", \"path\": null, \"size\": 69.2, \"width\": 375, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_9fb10224e762393c6073_72da77607c.jpg\", \"hash\": \"medium_9fb10224e762393c6073_72da77607c\", \"mime\": \"image/jpeg\", \"name\": \"medium_9fb10224e762393c6073.jpg\", \"path\": null, \"size\": 157.06, \"width\": 563, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_9fb10224e762393c6073_72da77607c.jpg\", \"hash\": \"thumbnail_9fb10224e762393c6073_72da77607c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_9fb10224e762393c6073.jpg\", \"path\": null, \"size\": 7.49, \"width\": 117, \"height\": 156}}', '9fb10224e762393c6073_72da77607c', '.jpg', 'image/jpeg', 1491.13, '/uploads/9fb10224e762393c6073_72da77607c.jpg', NULL, 'local', NULL, '/1', '2023-06-08 14:07:28.768000', '2023-06-08 14:07:28.768000', 1, 1),
(12, '3d655127b4616a3f3370.jpg', NULL, NULL, 1920, 2560, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_3d655127b4616a3f3370_d793c5ba43.jpg\", \"hash\": \"large_3d655127b4616a3f3370_d793c5ba43\", \"mime\": \"image/jpeg\", \"name\": \"large_3d655127b4616a3f3370.jpg\", \"path\": null, \"size\": 112.74, \"width\": 750, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_3d655127b4616a3f3370_d793c5ba43.jpg\", \"hash\": \"small_3d655127b4616a3f3370_d793c5ba43\", \"mime\": \"image/jpeg\", \"name\": \"small_3d655127b4616a3f3370.jpg\", \"path\": null, \"size\": 35.95, \"width\": 375, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_3d655127b4616a3f3370_d793c5ba43.jpg\", \"hash\": \"medium_3d655127b4616a3f3370_d793c5ba43\", \"mime\": \"image/jpeg\", \"name\": \"medium_3d655127b4616a3f3370.jpg\", \"path\": null, \"size\": 69.01, \"width\": 563, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_3d655127b4616a3f3370_d793c5ba43.jpg\", \"hash\": \"thumbnail_3d655127b4616a3f3370_d793c5ba43\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_3d655127b4616a3f3370.jpg\", \"path\": null, \"size\": 5.68, \"width\": 117, \"height\": 156}}', '3d655127b4616a3f3370_d793c5ba43', '.jpg', 'image/jpeg', 738.48, '/uploads/3d655127b4616a3f3370_d793c5ba43.jpg', NULL, 'local', NULL, '/1', '2023-06-08 14:07:28.780000', '2023-06-08 14:07:28.780000', 1, 1),
(13, '0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024.webp', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_b9c1bf894d.webp\", \"hash\": \"small_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_b9c1bf894d\", \"mime\": \"image/webp\", \"name\": \"small_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024.webp\", \"path\": null, \"size\": 18.67, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_b9c1bf894d.webp\", \"hash\": \"thumbnail_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_b9c1bf894d\", \"mime\": \"image/webp\", \"name\": \"thumbnail_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024.webp\", \"path\": null, \"size\": 3.77, \"width\": 156, \"height\": 156}}', '0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_b9c1bf894d', '.webp', 'image/webp', 30.60, '/uploads/0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_b9c1bf894d.webp', NULL, 'local', NULL, '/2', '2023-06-10 22:28:55.898000', '2023-06-10 22:28:55.898000', 1, 1),
(14, '1-500x505.jpg', NULL, NULL, 500, 505, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_1_500x505_4461fc0f18.jpg\", \"hash\": \"small_1_500x505_4461fc0f18\", \"mime\": \"image/jpeg\", \"name\": \"small_1-500x505.jpg\", \"path\": null, \"size\": 38.83, \"width\": 495, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_1_500x505_4461fc0f18.jpg\", \"hash\": \"thumbnail_1_500x505_4461fc0f18\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_1-500x505.jpg\", \"path\": null, \"size\": 6.28, \"width\": 155, \"height\": 156}}', '1_500x505_4461fc0f18', '.jpg', 'image/jpeg', 40.15, '/uploads/1_500x505_4461fc0f18.jpg', NULL, 'local', NULL, '/2', '2023-06-10 22:28:55.982000', '2023-06-10 22:28:55.982000', 1, 1),
(15, '21-500x505.jpg', NULL, NULL, 500, 505, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_21_500x505_4861b50b03.jpg\", \"hash\": \"small_21_500x505_4861b50b03\", \"mime\": \"image/jpeg\", \"name\": \"small_21-500x505.jpg\", \"path\": null, \"size\": 38.77, \"width\": 495, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_21_500x505_4861b50b03.jpg\", \"hash\": \"thumbnail_21_500x505_4861b50b03\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_21-500x505.jpg\", \"path\": null, \"size\": 6.75, \"width\": 155, \"height\": 156}}', '21_500x505_4861b50b03', '.jpg', 'image/jpeg', 39.53, '/uploads/21_500x505_4861b50b03.jpg', NULL, 'local', NULL, '/2', '2023-06-10 22:28:56.236000', '2023-06-10 22:28:56.236000', 1, 1),
(16, '7-500x505.jpg', NULL, NULL, 500, 505, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_7_500x505_555cb603ec.jpg\", \"hash\": \"small_7_500x505_555cb603ec\", \"mime\": \"image/jpeg\", \"name\": \"small_7-500x505.jpg\", \"path\": null, \"size\": 31.62, \"width\": 495, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_7_500x505_555cb603ec.jpg\", \"hash\": \"thumbnail_7_500x505_555cb603ec\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_7-500x505.jpg\", \"path\": null, \"size\": 5.74, \"width\": 155, \"height\": 156}}', '7_500x505_555cb603ec', '.jpg', 'image/jpeg', 31.67, '/uploads/7_500x505_555cb603ec.jpg', NULL, 'local', NULL, '/2', '2023-06-10 22:28:56.261000', '2023-06-10 22:28:56.261000', 1, 1),
(17, '2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024.webp', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024_44dafbac05.webp\", \"hash\": \"small_2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024_44dafbac05\", \"mime\": \"image/webp\", \"name\": \"small_2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024.webp\", \"path\": null, \"size\": 13.28, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024_44dafbac05.webp\", \"hash\": \"thumbnail_2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024_44dafbac05\", \"mime\": \"image/webp\", \"name\": \"thumbnail_2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024.webp\", \"path\": null, \"size\": 2.84, \"width\": 156, \"height\": 156}}', '2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024_44dafbac05', '.webp', 'image/webp', 20.43, '/uploads/2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024_44dafbac05.webp', NULL, 'local', NULL, '/2', '2023-06-10 22:28:56.266000', '2023-06-10 22:28:56.266000', 1, 1),
(18, '28e583b44c178bc2a3683b139f6693f4.jpg', NULL, NULL, 775, 775, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_28e583b44c178bc2a3683b139f6693f4_cf74b58ab5.jpg\", \"hash\": \"small_28e583b44c178bc2a3683b139f6693f4_cf74b58ab5\", \"mime\": \"image/jpeg\", \"name\": \"small_28e583b44c178bc2a3683b139f6693f4.jpg\", \"path\": null, \"size\": 47, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_28e583b44c178bc2a3683b139f6693f4_cf74b58ab5.jpg\", \"hash\": \"medium_28e583b44c178bc2a3683b139f6693f4_cf74b58ab5\", \"mime\": \"image/jpeg\", \"name\": \"medium_28e583b44c178bc2a3683b139f6693f4.jpg\", \"path\": null, \"size\": 97.98, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_28e583b44c178bc2a3683b139f6693f4_cf74b58ab5.jpg\", \"hash\": \"thumbnail_28e583b44c178bc2a3683b139f6693f4_cf74b58ab5\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_28e583b44c178bc2a3683b139f6693f4.jpg\", \"path\": null, \"size\": 7.03, \"width\": 156, \"height\": 156}}', '28e583b44c178bc2a3683b139f6693f4_cf74b58ab5', '.jpg', 'image/jpeg', 107.59, '/uploads/28e583b44c178bc2a3683b139f6693f4_cf74b58ab5.jpg', NULL, 'local', NULL, '/2', '2023-06-10 22:28:56.286000', '2023-06-10 22:28:56.286000', 1, 1),
(19, '3cb647165a574254bcedbc8929a2c09d_ee86bfb763894e14ae8e1f2998c7550a_1024x1024.webp', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_3cb647165a574254bcedbc8929a2c09d_ee86bfb763894e14ae8e1f2998c7550a_1024x1024_32c3f45cdb.webp\", \"hash\": \"small_3cb647165a574254bcedbc8929a2c09d_ee86bfb763894e14ae8e1f2998c7550a_1024x1024_32c3f45cdb\", \"mime\": \"image/webp\", \"name\": \"small_3cb647165a574254bcedbc8929a2c09d_ee86bfb763894e14ae8e1f2998c7550a_1024x1024.webp\", \"path\": null, \"size\": 16.64, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_3cb647165a574254bcedbc8929a2c09d_ee86bfb763894e14ae8e1f2998c7550a_1024x1024_32c3f45cdb.webp\", \"hash\": \"thumbnail_3cb647165a574254bcedbc8929a2c09d_ee86bfb763894e14ae8e1f2998c7550a_1024x1024_32c3f45cdb\", \"mime\": \"image/webp\", \"name\": \"thumbnail_3cb647165a574254bcedbc8929a2c09d_ee86bfb763894e14ae8e1f2998c7550a_1024x1024.webp\", \"path\": null, \"size\": 3.43, \"width\": 156, \"height\": 156}}', '3cb647165a574254bcedbc8929a2c09d_ee86bfb763894e14ae8e1f2998c7550a_1024x1024_32c3f45cdb', '.webp', 'image/webp', 27.14, '/uploads/3cb647165a574254bcedbc8929a2c09d_ee86bfb763894e14ae8e1f2998c7550a_1024x1024_32c3f45cdb.webp', NULL, 'local', NULL, '/2', '2023-06-10 22:28:56.376000', '2023-06-10 22:28:56.376000', 1, 1),
(20, '372c234262d04f8fb389cd63abf7b1ac_988356c0fd784755850ecaafd68e7db2_1024x1024.webp', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_372c234262d04f8fb389cd63abf7b1ac_988356c0fd784755850ecaafd68e7db2_1024x1024_ad8886f8dc.webp\", \"hash\": \"small_372c234262d04f8fb389cd63abf7b1ac_988356c0fd784755850ecaafd68e7db2_1024x1024_ad8886f8dc\", \"mime\": \"image/webp\", \"name\": \"small_372c234262d04f8fb389cd63abf7b1ac_988356c0fd784755850ecaafd68e7db2_1024x1024.webp\", \"path\": null, \"size\": 20.73, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_372c234262d04f8fb389cd63abf7b1ac_988356c0fd784755850ecaafd68e7db2_1024x1024_ad8886f8dc.webp\", \"hash\": \"thumbnail_372c234262d04f8fb389cd63abf7b1ac_988356c0fd784755850ecaafd68e7db2_1024x1024_ad8886f8dc\", \"mime\": \"image/webp\", \"name\": \"thumbnail_372c234262d04f8fb389cd63abf7b1ac_988356c0fd784755850ecaafd68e7db2_1024x1024.webp\", \"path\": null, \"size\": 3.82, \"width\": 156, \"height\": 156}}', '372c234262d04f8fb389cd63abf7b1ac_988356c0fd784755850ecaafd68e7db2_1024x1024_ad8886f8dc', '.webp', 'image/webp', 33.50, '/uploads/372c234262d04f8fb389cd63abf7b1ac_988356c0fd784755850ecaafd68e7db2_1024x1024_ad8886f8dc.webp', NULL, 'local', NULL, '/2', '2023-06-10 22:28:56.377000', '2023-06-10 22:28:56.377000', 1, 1),
(21, '7900d558c0076dd7dd8a691f998d7868.jpg.webp', NULL, NULL, 750, 750, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_7900d558c0076dd7dd8a691f998d7868_jpg_f653264cbe.webp\", \"hash\": \"small_7900d558c0076dd7dd8a691f998d7868_jpg_f653264cbe\", \"mime\": \"image/webp\", \"name\": \"small_7900d558c0076dd7dd8a691f998d7868.jpg.webp\", \"path\": null, \"size\": 18.03, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_7900d558c0076dd7dd8a691f998d7868_jpg_f653264cbe.webp\", \"hash\": \"thumbnail_7900d558c0076dd7dd8a691f998d7868_jpg_f653264cbe\", \"mime\": \"image/webp\", \"name\": \"thumbnail_7900d558c0076dd7dd8a691f998d7868.jpg.webp\", \"path\": null, \"size\": 4.02, \"width\": 156, \"height\": 156}}', '7900d558c0076dd7dd8a691f998d7868_jpg_f653264cbe', '.webp', 'image/webp', 34.84, '/uploads/7900d558c0076dd7dd8a691f998d7868_jpg_f653264cbe.webp', NULL, 'local', NULL, '/2', '2023-06-10 22:28:56.627000', '2023-06-10 22:28:56.627000', 1, 1),
(22, 'adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018964.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_e849871cde.jpeg\", \"hash\": \"small_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_e849871cde\", \"mime\": \"image/jpeg\", \"name\": \"small_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018964.jpeg\", \"path\": null, \"size\": 35.39, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_e849871cde.jpeg\", \"hash\": \"medium_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_e849871cde\", \"mime\": \"image/jpeg\", \"name\": \"medium_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018964.jpeg\", \"path\": null, \"size\": 72.23, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_e849871cde.jpeg\", \"hash\": \"thumbnail_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_e849871cde\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018964.jpeg\", \"path\": null, \"size\": 5.37, \"width\": 156, \"height\": 156}}', 'adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_e849871cde', '.jpeg', 'image/jpeg', 78.59, '/uploads/adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_e849871cde.jpeg', NULL, 'local', NULL, '/2', '2023-06-10 22:28:56.632000', '2023-06-10 22:28:56.632000', 1, 1),
(23, 'adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018966.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018966_6716f7d65f.jpeg\", \"hash\": \"small_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018966_6716f7d65f\", \"mime\": \"image/jpeg\", \"name\": \"small_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018966.jpeg\", \"path\": null, \"size\": 17.13, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018966_6716f7d65f.jpeg\", \"hash\": \"medium_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018966_6716f7d65f\", \"mime\": \"image/jpeg\", \"name\": \"medium_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018966.jpeg\", \"path\": null, \"size\": 34.96, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018966_6716f7d65f.jpeg\", \"hash\": \"thumbnail_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018966_6716f7d65f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018966.jpeg\", \"path\": null, \"size\": 2.77, \"width\": 156, \"height\": 156}}', 'adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018966_6716f7d65f', '.jpeg', 'image/jpeg', 38.37, '/uploads/adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018966_6716f7d65f.jpeg', NULL, 'local', NULL, '/2', '2023-06-10 22:28:56.644000', '2023-06-10 22:28:56.644000', 1, 1),
(24, 'ad87bd623f92c661069d2c944d07cb0f.jpg', NULL, NULL, 781, 781, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_ad87bd623f92c661069d2c944d07cb0f_0952eff921.jpg\", \"hash\": \"small_ad87bd623f92c661069d2c944d07cb0f_0952eff921\", \"mime\": \"image/jpeg\", \"name\": \"small_ad87bd623f92c661069d2c944d07cb0f.jpg\", \"path\": null, \"size\": 61.76, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_ad87bd623f92c661069d2c944d07cb0f_0952eff921.jpg\", \"hash\": \"medium_ad87bd623f92c661069d2c944d07cb0f_0952eff921\", \"mime\": \"image/jpeg\", \"name\": \"medium_ad87bd623f92c661069d2c944d07cb0f.jpg\", \"path\": null, \"size\": 133.09, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ad87bd623f92c661069d2c944d07cb0f_0952eff921.jpg\", \"hash\": \"thumbnail_ad87bd623f92c661069d2c944d07cb0f_0952eff921\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ad87bd623f92c661069d2c944d07cb0f.jpg\", \"path\": null, \"size\": 7.41, \"width\": 156, \"height\": 156}}', 'ad87bd623f92c661069d2c944d07cb0f_0952eff921', '.jpg', 'image/jpeg', 147.97, '/uploads/ad87bd623f92c661069d2c944d07cb0f_0952eff921.jpg', NULL, 'local', NULL, '/2', '2023-06-10 22:28:56.653000', '2023-06-10 22:28:56.653000', 1, 1),
(25, '72007bdebb868f294cd628c7026c4a7f.jpg', NULL, NULL, 1000, 1000, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_72007bdebb868f294cd628c7026c4a7f_254912ef5d.jpg\", \"hash\": \"small_72007bdebb868f294cd628c7026c4a7f_254912ef5d\", \"mime\": \"image/jpeg\", \"name\": \"small_72007bdebb868f294cd628c7026c4a7f.jpg\", \"path\": null, \"size\": 46.53, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_72007bdebb868f294cd628c7026c4a7f_254912ef5d.jpg\", \"hash\": \"medium_72007bdebb868f294cd628c7026c4a7f_254912ef5d\", \"mime\": \"image/jpeg\", \"name\": \"medium_72007bdebb868f294cd628c7026c4a7f.jpg\", \"path\": null, \"size\": 95.5, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_72007bdebb868f294cd628c7026c4a7f_254912ef5d.jpg\", \"hash\": \"thumbnail_72007bdebb868f294cd628c7026c4a7f_254912ef5d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_72007bdebb868f294cd628c7026c4a7f.jpg\", \"path\": null, \"size\": 7.09, \"width\": 156, \"height\": 156}}', '72007bdebb868f294cd628c7026c4a7f_254912ef5d', '.jpg', 'image/jpeg', 169.54, '/uploads/72007bdebb868f294cd628c7026c4a7f_254912ef5d.jpg', NULL, 'local', NULL, '/2', '2023-06-10 22:28:56.654000', '2023-06-10 22:28:56.654000', 1, 1),
(26, 'adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018967.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018967_2f2c49f916.jpeg\", \"hash\": \"small_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018967_2f2c49f916\", \"mime\": \"image/jpeg\", \"name\": \"small_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018967.jpeg\", \"path\": null, \"size\": 13.66, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018967_2f2c49f916.jpeg\", \"hash\": \"medium_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018967_2f2c49f916\", \"mime\": \"image/jpeg\", \"name\": \"medium_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018967.jpeg\", \"path\": null, \"size\": 27.32, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018967_2f2c49f916.jpeg\", \"hash\": \"thumbnail_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018967_2f2c49f916\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018967.jpeg\", \"path\": null, \"size\": 2.34, \"width\": 156, \"height\": 156}}', 'adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018967_2f2c49f916', '.jpeg', 'image/jpeg', 30.16, '/uploads/adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018967_2f2c49f916.jpeg', NULL, 'local', NULL, '/2', '2023-06-10 22:28:56.668000', '2023-06-10 22:28:56.668000', 1, 1),
(27, 'adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_220_0019774.jpeg', NULL, NULL, 220, 220, '{\"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_220_0019774_051ec6b129.jpeg\", \"hash\": \"thumbnail_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_220_0019774_051ec6b129\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_220_0019774.jpeg\", \"path\": null, \"size\": 3.84, \"width\": 156, \"height\": 156}}', 'adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_220_0019774_051ec6b129', '.jpeg', 'image/jpeg', 6.10, '/uploads/adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_220_0019774_051ec6b129.jpeg', NULL, 'local', NULL, '/2', '2023-06-10 22:28:56.882000', '2023-06-10 22:28:56.882000', 1, 1),
(28, 'adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018968.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018968_2650a5108c.jpeg\", \"hash\": \"small_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018968_2650a5108c\", \"mime\": \"image/jpeg\", \"name\": \"small_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018968.jpeg\", \"path\": null, \"size\": 14.36, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018968_2650a5108c.jpeg\", \"hash\": \"medium_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018968_2650a5108c\", \"mime\": \"image/jpeg\", \"name\": \"medium_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018968.jpeg\", \"path\": null, \"size\": 28.73, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018968_2650a5108c.jpeg\", \"hash\": \"thumbnail_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018968_2650a5108c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018968.jpeg\", \"path\": null, \"size\": 2.4, \"width\": 156, \"height\": 156}}', 'adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018968_2650a5108c', '.jpeg', 'image/jpeg', 32.08, '/uploads/adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018968_2650a5108c.jpeg', NULL, 'local', NULL, '/2', '2023-06-10 22:28:56.971000', '2023-06-10 22:28:56.971000', 1, 1),
(29, 'adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019775.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019775_bcbb041489.jpeg\", \"hash\": \"small_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019775_bcbb041489\", \"mime\": \"image/jpeg\", \"name\": \"small_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019775.jpeg\", \"path\": null, \"size\": 24.34, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019775_bcbb041489.jpeg\", \"hash\": \"medium_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019775_bcbb041489\", \"mime\": \"image/jpeg\", \"name\": \"medium_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019775.jpeg\", \"path\": null, \"size\": 44.34, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019775_bcbb041489.jpeg\", \"hash\": \"thumbnail_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019775_bcbb041489\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019775.jpeg\", \"path\": null, \"size\": 4.28, \"width\": 156, \"height\": 156}}', 'adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019775_bcbb041489', '.jpeg', 'image/jpeg', 45.28, '/uploads/adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019775_bcbb041489.jpeg', NULL, 'local', NULL, '/2', '2023-06-10 22:28:56.983000', '2023-06-10 22:28:56.983000', 1, 1),
(30, 'adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019778.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_cba7600d66.jpeg\", \"hash\": \"small_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_cba7600d66\", \"mime\": \"image/jpeg\", \"name\": \"small_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019778.jpeg\", \"path\": null, \"size\": 17.13, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_cba7600d66.jpeg\", \"hash\": \"medium_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_cba7600d66\", \"mime\": \"image/jpeg\", \"name\": \"medium_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019778.jpeg\", \"path\": null, \"size\": 31.31, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_cba7600d66.jpeg\", \"hash\": \"thumbnail_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_cba7600d66\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019778.jpeg\", \"path\": null, \"size\": 3.45, \"width\": 156, \"height\": 156}}', 'adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_cba7600d66', '.jpeg', 'image/jpeg', 32.00, '/uploads/adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_cba7600d66.jpeg', NULL, 'local', NULL, '/2', '2023-06-10 22:28:57.003000', '2023-06-10 22:28:57.003000', 1, 1),
(31, 'adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019776.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_ebfd5233f0.jpeg\", \"hash\": \"small_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_ebfd5233f0\", \"mime\": \"image/jpeg\", \"name\": \"small_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019776.jpeg\", \"path\": null, \"size\": 16.34, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_ebfd5233f0.jpeg\", \"hash\": \"medium_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_ebfd5233f0\", \"mime\": \"image/jpeg\", \"name\": \"medium_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019776.jpeg\", \"path\": null, \"size\": 30.43, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_ebfd5233f0.jpeg\", \"hash\": \"thumbnail_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_ebfd5233f0\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019776.jpeg\", \"path\": null, \"size\": 2.9, \"width\": 156, \"height\": 156}}', 'adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_ebfd5233f0', '.jpeg', 'image/jpeg', 31.15, '/uploads/adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_ebfd5233f0.jpeg', NULL, 'local', NULL, '/2', '2023-06-10 22:28:57.019000', '2023-06-10 22:28:57.019000', 1, 1),
(32, 'af21551728324ff2b2971c63247a9ba6_5f29f2a96f9549c0a75fe912d268be4c_1024x1024.webp', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_af21551728324ff2b2971c63247a9ba6_5f29f2a96f9549c0a75fe912d268be4c_1024x1024_48cbeb3fe9.webp\", \"hash\": \"small_af21551728324ff2b2971c63247a9ba6_5f29f2a96f9549c0a75fe912d268be4c_1024x1024_48cbeb3fe9\", \"mime\": \"image/webp\", \"name\": \"small_af21551728324ff2b2971c63247a9ba6_5f29f2a96f9549c0a75fe912d268be4c_1024x1024.webp\", \"path\": null, \"size\": 20.15, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_af21551728324ff2b2971c63247a9ba6_5f29f2a96f9549c0a75fe912d268be4c_1024x1024_48cbeb3fe9.webp\", \"hash\": \"thumbnail_af21551728324ff2b2971c63247a9ba6_5f29f2a96f9549c0a75fe912d268be4c_1024x1024_48cbeb3fe9\", \"mime\": \"image/webp\", \"name\": \"thumbnail_af21551728324ff2b2971c63247a9ba6_5f29f2a96f9549c0a75fe912d268be4c_1024x1024.webp\", \"path\": null, \"size\": 3.9, \"width\": 156, \"height\": 156}}', 'af21551728324ff2b2971c63247a9ba6_5f29f2a96f9549c0a75fe912d268be4c_1024x1024_48cbeb3fe9', '.webp', 'image/webp', 32.58, '/uploads/af21551728324ff2b2971c63247a9ba6_5f29f2a96f9549c0a75fe912d268be4c_1024x1024_48cbeb3fe9.webp', NULL, 'local', NULL, '/2', '2023-06-10 22:28:57.140000', '2023-06-10 22:28:57.140000', 1, 1),
(33, 'banh-da-dong-luc-thai-hien-sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master.webp', NULL, NULL, 500, 500, '{\"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_003ff85313.webp\", \"hash\": \"thumbnail_banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_003ff85313\", \"mime\": \"image/webp\", \"name\": \"thumbnail_banh-da-dong-luc-thai-hien-sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master.webp\", \"path\": null, \"size\": 4.3, \"width\": 156, \"height\": 156}}', 'banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_003ff85313', '.webp', 'image/webp', 23.30, '/uploads/banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_003ff85313.webp', NULL, 'local', NULL, '/2', '2023-06-10 22:28:57.172000', '2023-06-10 22:28:57.172000', 1, 1),
(34, 'covy 06-500x505.jpg', NULL, NULL, 500, 505, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_covy_06_500x505_cae4644bf7.jpg\", \"hash\": \"small_covy_06_500x505_cae4644bf7\", \"mime\": \"image/jpeg\", \"name\": \"small_covy 06-500x505.jpg\", \"path\": null, \"size\": 30.01, \"width\": 495, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_covy_06_500x505_cae4644bf7.jpg\", \"hash\": \"thumbnail_covy_06_500x505_cae4644bf7\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_covy 06-500x505.jpg\", \"path\": null, \"size\": 5.45, \"width\": 155, \"height\": 156}}', 'covy_06_500x505_cae4644bf7', '.jpg', 'image/jpeg', 30.92, '/uploads/covy_06_500x505_cae4644bf7.jpg', NULL, 'local', NULL, '/2', '2023-06-10 22:28:57.233000', '2023-06-10 22:28:57.233000', 1, 1),
(35, 'bfd9aeb9d5ea4c108854a69f906131fa_16bd8216aa9b4326a71cd9bd13a954ba.webp', NULL, NULL, 546, 600, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_bfd9aeb9d5ea4c108854a69f906131fa_16bd8216aa9b4326a71cd9bd13a954ba_7a6f74ee28.webp\", \"hash\": \"small_bfd9aeb9d5ea4c108854a69f906131fa_16bd8216aa9b4326a71cd9bd13a954ba_7a6f74ee28\", \"mime\": \"image/webp\", \"name\": \"small_bfd9aeb9d5ea4c108854a69f906131fa_16bd8216aa9b4326a71cd9bd13a954ba.webp\", \"path\": null, \"size\": 18.85, \"width\": 455, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_bfd9aeb9d5ea4c108854a69f906131fa_16bd8216aa9b4326a71cd9bd13a954ba_7a6f74ee28.webp\", \"hash\": \"thumbnail_bfd9aeb9d5ea4c108854a69f906131fa_16bd8216aa9b4326a71cd9bd13a954ba_7a6f74ee28\", \"mime\": \"image/webp\", \"name\": \"thumbnail_bfd9aeb9d5ea4c108854a69f906131fa_16bd8216aa9b4326a71cd9bd13a954ba.webp\", \"path\": null, \"size\": 3.52, \"width\": 142, \"height\": 156}}', 'bfd9aeb9d5ea4c108854a69f906131fa_16bd8216aa9b4326a71cd9bd13a954ba_7a6f74ee28', '.webp', 'image/webp', 30.54, '/uploads/bfd9aeb9d5ea4c108854a69f906131fa_16bd8216aa9b4326a71cd9bd13a954ba_7a6f74ee28.webp', NULL, 'local', NULL, '/2', '2023-06-10 22:28:57.288000', '2023-06-10 22:28:57.288000', 1, 1),
(36, 'bfc250ee668ad5a24ce5e31af0e7345f.jpg.webp', NULL, NULL, 750, 750, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_bfc250ee668ad5a24ce5e31af0e7345f_jpg_ccd050bd05.webp\", \"hash\": \"small_bfc250ee668ad5a24ce5e31af0e7345f_jpg_ccd050bd05\", \"mime\": \"image/webp\", \"name\": \"small_bfc250ee668ad5a24ce5e31af0e7345f.jpg.webp\", \"path\": null, \"size\": 19.66, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_bfc250ee668ad5a24ce5e31af0e7345f_jpg_ccd050bd05.webp\", \"hash\": \"thumbnail_bfc250ee668ad5a24ce5e31af0e7345f_jpg_ccd050bd05\", \"mime\": \"image/webp\", \"name\": \"thumbnail_bfc250ee668ad5a24ce5e31af0e7345f.jpg.webp\", \"path\": null, \"size\": 4.24, \"width\": 156, \"height\": 156}}', 'bfc250ee668ad5a24ce5e31af0e7345f_jpg_ccd050bd05', '.webp', 'image/webp', 36.07, '/uploads/bfc250ee668ad5a24ce5e31af0e7345f_jpg_ccd050bd05.webp', NULL, 'local', NULL, '/2', '2023-06-10 22:28:57.320000', '2023-06-10 22:28:57.320000', 1, 1),
(37, 'da36d757937c579f5a0edc271414ca72.jpg', NULL, NULL, 920, 920, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_da36d757937c579f5a0edc271414ca72_b8c09af2fa.jpg\", \"hash\": \"small_da36d757937c579f5a0edc271414ca72_b8c09af2fa\", \"mime\": \"image/jpeg\", \"name\": \"small_da36d757937c579f5a0edc271414ca72.jpg\", \"path\": null, \"size\": 49.33, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_da36d757937c579f5a0edc271414ca72_b8c09af2fa.jpg\", \"hash\": \"medium_da36d757937c579f5a0edc271414ca72_b8c09af2fa\", \"mime\": \"image/jpeg\", \"name\": \"medium_da36d757937c579f5a0edc271414ca72.jpg\", \"path\": null, \"size\": 96.13, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_da36d757937c579f5a0edc271414ca72_b8c09af2fa.jpg\", \"hash\": \"thumbnail_da36d757937c579f5a0edc271414ca72_b8c09af2fa\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_da36d757937c579f5a0edc271414ca72.jpg\", \"path\": null, \"size\": 7.4, \"width\": 156, \"height\": 156}}', 'da36d757937c579f5a0edc271414ca72_b8c09af2fa', '.jpg', 'image/jpeg', 136.04, '/uploads/da36d757937c579f5a0edc271414ca72_b8c09af2fa.jpg', NULL, 'local', NULL, '/2', '2023-06-10 22:28:57.394000', '2023-06-10 22:28:57.394000', 1, 1),
(38, 'bong-da-dong-luc-so-4-ucv-3-05_bbe211fd19f44ea7811a9c0e4cba944a_master.webp', NULL, NULL, 850, 850, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_c0b7ec569a.webp\", \"hash\": \"small_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_c0b7ec569a\", \"mime\": \"image/webp\", \"name\": \"small_bong-da-dong-luc-so-4-ucv-3-05_bbe211fd19f44ea7811a9c0e4cba944a_master.webp\", \"path\": null, \"size\": 29.99, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_c0b7ec569a.webp\", \"hash\": \"medium_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_c0b7ec569a\", \"mime\": \"image/webp\", \"name\": \"medium_bong-da-dong-luc-so-4-ucv-3-05_bbe211fd19f44ea7811a9c0e4cba944a_master.webp\", \"path\": null, \"size\": 49.93, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_c0b7ec569a.webp\", \"hash\": \"thumbnail_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_c0b7ec569a\", \"mime\": \"image/webp\", \"name\": \"thumbnail_bong-da-dong-luc-so-4-ucv-3-05_bbe211fd19f44ea7811a9c0e4cba944a_master.webp\", \"path\": null, \"size\": 6.13, \"width\": 156, \"height\": 156}}', 'bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_c0b7ec569a', '.webp', 'image/webp', 68.51, '/uploads/bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_c0b7ec569a.webp', NULL, 'local', NULL, '/2', '2023-06-10 22:28:57.468000', '2023-06-10 22:28:57.468000', 1, 1),
(39, 'e3ec25636a846d312d20a7e5b1d57cf0.jpg.webp', NULL, NULL, 750, 750, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_e3ec25636a846d312d20a7e5b1d57cf0_jpg_3b25ce1146.webp\", \"hash\": \"small_e3ec25636a846d312d20a7e5b1d57cf0_jpg_3b25ce1146\", \"mime\": \"image/webp\", \"name\": \"small_e3ec25636a846d312d20a7e5b1d57cf0.jpg.webp\", \"path\": null, \"size\": 34.84, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_e3ec25636a846d312d20a7e5b1d57cf0_jpg_3b25ce1146.webp\", \"hash\": \"thumbnail_e3ec25636a846d312d20a7e5b1d57cf0_jpg_3b25ce1146\", \"mime\": \"image/webp\", \"name\": \"thumbnail_e3ec25636a846d312d20a7e5b1d57cf0.jpg.webp\", \"path\": null, \"size\": 5.45, \"width\": 156, \"height\": 156}}', 'e3ec25636a846d312d20a7e5b1d57cf0_jpg_3b25ce1146', '.webp', 'image/webp', 75.28, '/uploads/e3ec25636a846d312d20a7e5b1d57cf0_jpg_3b25ce1146.webp', NULL, 'local', NULL, '/2', '2023-06-10 22:28:57.537000', '2023-06-10 22:28:57.537000', 1, 1),
(40, 'f62d5bca47ac06b35d175d7a95a7fd82.jpg.webp', NULL, NULL, 750, 750, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_f62d5bca47ac06b35d175d7a95a7fd82_jpg_e59845eb01.webp\", \"hash\": \"small_f62d5bca47ac06b35d175d7a95a7fd82_jpg_e59845eb01\", \"mime\": \"image/webp\", \"name\": \"small_f62d5bca47ac06b35d175d7a95a7fd82.jpg.webp\", \"path\": null, \"size\": 17.94, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_f62d5bca47ac06b35d175d7a95a7fd82_jpg_e59845eb01.webp\", \"hash\": \"thumbnail_f62d5bca47ac06b35d175d7a95a7fd82_jpg_e59845eb01\", \"mime\": \"image/webp\", \"name\": \"thumbnail_f62d5bca47ac06b35d175d7a95a7fd82.jpg.webp\", \"path\": null, \"size\": 3.89, \"width\": 156, \"height\": 156}}', 'f62d5bca47ac06b35d175d7a95a7fd82_jpg_e59845eb01', '.webp', 'image/webp', 34.61, '/uploads/f62d5bca47ac06b35d175d7a95a7fd82_jpg_e59845eb01.webp', NULL, 'local', NULL, '/2', '2023-06-10 22:28:57.537000', '2023-06-10 22:28:57.537000', 1, 1);
INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(41, 'gang-tay-thu-mon-zocker-gloves-edwin-denxanh-bien_0019141.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_bien_0019141_29a3f72e35.jpeg\", \"hash\": \"small_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_bien_0019141_29a3f72e35\", \"mime\": \"image/jpeg\", \"name\": \"small_gang-tay-thu-mon-zocker-gloves-edwin-denxanh-bien_0019141.jpeg\", \"path\": null, \"size\": 31.52, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_bien_0019141_29a3f72e35.jpeg\", \"hash\": \"medium_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_bien_0019141_29a3f72e35\", \"mime\": \"image/jpeg\", \"name\": \"medium_gang-tay-thu-mon-zocker-gloves-edwin-denxanh-bien_0019141.jpeg\", \"path\": null, \"size\": 56.72, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_bien_0019141_29a3f72e35.jpeg\", \"hash\": \"thumbnail_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_bien_0019141_29a3f72e35\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_gang-tay-thu-mon-zocker-gloves-edwin-denxanh-bien_0019141.jpeg\", \"path\": null, \"size\": 5.45, \"width\": 156, \"height\": 156}}', 'gang_tay_thu_mon_zocker_gloves_edwin_denxanh_bien_0019141_29a3f72e35', '.jpeg', 'image/jpeg', 58.78, '/uploads/gang_tay_thu_mon_zocker_gloves_edwin_denxanh_bien_0019141_29a3f72e35.jpeg', NULL, 'local', NULL, '/2', '2023-06-10 22:28:57.548000', '2023-06-10 22:28:57.548000', 1, 1),
(42, 'gang-tay-thu-mon-zocker-gloves-edwin-denxanh-bien_0019142.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_bien_0019142_d699255212.jpeg\", \"hash\": \"small_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_bien_0019142_d699255212\", \"mime\": \"image/jpeg\", \"name\": \"small_gang-tay-thu-mon-zocker-gloves-edwin-denxanh-bien_0019142.jpeg\", \"path\": null, \"size\": 55.61, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_bien_0019142_d699255212.jpeg\", \"hash\": \"medium_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_bien_0019142_d699255212\", \"mime\": \"image/jpeg\", \"name\": \"medium_gang-tay-thu-mon-zocker-gloves-edwin-denxanh-bien_0019142.jpeg\", \"path\": null, \"size\": 101.44, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_bien_0019142_d699255212.jpeg\", \"hash\": \"thumbnail_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_bien_0019142_d699255212\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_gang-tay-thu-mon-zocker-gloves-edwin-denxanh-bien_0019142.jpeg\", \"path\": null, \"size\": 8.04, \"width\": 156, \"height\": 156}}', 'gang_tay_thu_mon_zocker_gloves_edwin_denxanh_bien_0019142_d699255212', '.jpeg', 'image/jpeg', 121.71, '/uploads/gang_tay_thu_mon_zocker_gloves_edwin_denxanh_bien_0019142_d699255212.jpeg', NULL, 'local', NULL, '/2', '2023-06-10 22:28:57.643000', '2023-06-10 22:28:57.643000', 1, 1),
(43, 'ff05444fa9b1fdcd24c4a0dbe6bf41b8.jpg.webp', NULL, NULL, 750, 750, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_ff05444fa9b1fdcd24c4a0dbe6bf41b8_jpg_72c1d45019.webp\", \"hash\": \"small_ff05444fa9b1fdcd24c4a0dbe6bf41b8_jpg_72c1d45019\", \"mime\": \"image/webp\", \"name\": \"small_ff05444fa9b1fdcd24c4a0dbe6bf41b8.jpg.webp\", \"path\": null, \"size\": 21.53, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_ff05444fa9b1fdcd24c4a0dbe6bf41b8_jpg_72c1d45019.webp\", \"hash\": \"thumbnail_ff05444fa9b1fdcd24c4a0dbe6bf41b8_jpg_72c1d45019\", \"mime\": \"image/webp\", \"name\": \"thumbnail_ff05444fa9b1fdcd24c4a0dbe6bf41b8.jpg.webp\", \"path\": null, \"size\": 4.58, \"width\": 156, \"height\": 156}}', 'ff05444fa9b1fdcd24c4a0dbe6bf41b8_jpg_72c1d45019', '.webp', 'image/webp', 39.76, '/uploads/ff05444fa9b1fdcd24c4a0dbe6bf41b8_jpg_72c1d45019.webp', NULL, 'local', NULL, '/2', '2023-06-10 22:28:57.653000', '2023-06-10 22:28:57.653000', 1, 1),
(44, 'gang-tay-thu-mon-zocker-gloves-edwin-denxanh-bien_0019143.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_bien_0019143_20ebfa4f1c.jpeg\", \"hash\": \"small_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_bien_0019143_20ebfa4f1c\", \"mime\": \"image/jpeg\", \"name\": \"small_gang-tay-thu-mon-zocker-gloves-edwin-denxanh-bien_0019143.jpeg\", \"path\": null, \"size\": 63.8, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_bien_0019143_20ebfa4f1c.jpeg\", \"hash\": \"medium_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_bien_0019143_20ebfa4f1c\", \"mime\": \"image/jpeg\", \"name\": \"medium_gang-tay-thu-mon-zocker-gloves-edwin-denxanh-bien_0019143.jpeg\", \"path\": null, \"size\": 120.66, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_bien_0019143_20ebfa4f1c.jpeg\", \"hash\": \"thumbnail_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_bien_0019143_20ebfa4f1c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_gang-tay-thu-mon-zocker-gloves-edwin-denxanh-bien_0019143.jpeg\", \"path\": null, \"size\": 9.45, \"width\": 156, \"height\": 156}}', 'gang_tay_thu_mon_zocker_gloves_edwin_denxanh_bien_0019143_20ebfa4f1c', '.jpeg', 'image/jpeg', 131.05, '/uploads/gang_tay_thu_mon_zocker_gloves_edwin_denxanh_bien_0019143_20ebfa4f1c.jpeg', NULL, 'local', NULL, '/2', '2023-06-10 22:28:57.758000', '2023-06-10 22:28:57.758000', 1, 1),
(45, 'gang-tay-thu-mon-zocker-gloves-edwin-denxanh-chuoi_0019157.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_chuoi_0019157_23f673f4cd.jpeg\", \"hash\": \"small_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_chuoi_0019157_23f673f4cd\", \"mime\": \"image/jpeg\", \"name\": \"small_gang-tay-thu-mon-zocker-gloves-edwin-denxanh-chuoi_0019157.jpeg\", \"path\": null, \"size\": 32.5, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_chuoi_0019157_23f673f4cd.jpeg\", \"hash\": \"medium_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_chuoi_0019157_23f673f4cd\", \"mime\": \"image/jpeg\", \"name\": \"medium_gang-tay-thu-mon-zocker-gloves-edwin-denxanh-chuoi_0019157.jpeg\", \"path\": null, \"size\": 58.34, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_chuoi_0019157_23f673f4cd.jpeg\", \"hash\": \"thumbnail_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_chuoi_0019157_23f673f4cd\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_gang-tay-thu-mon-zocker-gloves-edwin-denxanh-chuoi_0019157.jpeg\", \"path\": null, \"size\": 5.78, \"width\": 156, \"height\": 156}}', 'gang_tay_thu_mon_zocker_gloves_edwin_denxanh_chuoi_0019157_23f673f4cd', '.jpeg', 'image/jpeg', 58.41, '/uploads/gang_tay_thu_mon_zocker_gloves_edwin_denxanh_chuoi_0019157_23f673f4cd.jpeg', NULL, 'local', NULL, '/2', '2023-06-10 22:28:57.787000', '2023-06-10 22:28:57.787000', 1, 1),
(46, 'mizuno-alpha-select-as-p1gd236501-mau-den_0019908.jpeg', NULL, NULL, 1280, 1280, '{\"large\": {\"ext\": \".jpeg\", \"url\": \"/uploads/large_mizuno_alpha_select_as_p1gd236501_mau_den_0019908_0cd8820987.jpeg\", \"hash\": \"large_mizuno_alpha_select_as_p1gd236501_mau_den_0019908_0cd8820987\", \"mime\": \"image/jpeg\", \"name\": \"large_mizuno-alpha-select-as-p1gd236501-mau-den_0019908.jpeg\", \"path\": null, \"size\": 101.78, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_mizuno_alpha_select_as_p1gd236501_mau_den_0019908_0cd8820987.jpeg\", \"hash\": \"small_mizuno_alpha_select_as_p1gd236501_mau_den_0019908_0cd8820987\", \"mime\": \"image/jpeg\", \"name\": \"small_mizuno-alpha-select-as-p1gd236501-mau-den_0019908.jpeg\", \"path\": null, \"size\": 32.1, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_mizuno_alpha_select_as_p1gd236501_mau_den_0019908_0cd8820987.jpeg\", \"hash\": \"medium_mizuno_alpha_select_as_p1gd236501_mau_den_0019908_0cd8820987\", \"mime\": \"image/jpeg\", \"name\": \"medium_mizuno-alpha-select-as-p1gd236501-mau-den_0019908.jpeg\", \"path\": null, \"size\": 62.53, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_mizuno_alpha_select_as_p1gd236501_mau_den_0019908_0cd8820987.jpeg\", \"hash\": \"thumbnail_mizuno_alpha_select_as_p1gd236501_mau_den_0019908_0cd8820987\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mizuno-alpha-select-as-p1gd236501-mau-den_0019908.jpeg\", \"path\": null, \"size\": 4.97, \"width\": 156, \"height\": 156}}', 'mizuno_alpha_select_as_p1gd236501_mau_den_0019908_0cd8820987', '.jpeg', 'image/jpeg', 112.37, '/uploads/mizuno_alpha_select_as_p1gd236501_mau_den_0019908_0cd8820987.jpeg', NULL, 'local', NULL, '/2', '2023-06-10 22:28:57.925000', '2023-06-10 22:28:57.925000', 1, 1),
(47, 'mizuno-morelia-neo-iii-pro-as-p1gd228409-trang-den_0019358.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019358_468fe76682.jpeg\", \"hash\": \"small_mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019358_468fe76682\", \"mime\": \"image/jpeg\", \"name\": \"small_mizuno-morelia-neo-iii-pro-as-p1gd228409-trang-den_0019358.jpeg\", \"path\": null, \"size\": 40.21, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019358_468fe76682.jpeg\", \"hash\": \"medium_mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019358_468fe76682\", \"mime\": \"image/jpeg\", \"name\": \"medium_mizuno-morelia-neo-iii-pro-as-p1gd228409-trang-den_0019358.jpeg\", \"path\": null, \"size\": 82.41, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019358_468fe76682.jpeg\", \"hash\": \"thumbnail_mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019358_468fe76682\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mizuno-morelia-neo-iii-pro-as-p1gd228409-trang-den_0019358.jpeg\", \"path\": null, \"size\": 5.86, \"width\": 156, \"height\": 156}}', 'mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019358_468fe76682', '.jpeg', 'image/jpeg', 84.54, '/uploads/mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019358_468fe76682.jpeg', NULL, 'local', NULL, '/2', '2023-06-10 22:28:57.934000', '2023-06-10 22:28:57.934000', 1, 1),
(48, 'mizuno-morelia-neo-iii-pro-as-p1gd228409-trang-den_0019359.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019359_bc5a81a349.jpeg\", \"hash\": \"small_mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019359_bc5a81a349\", \"mime\": \"image/jpeg\", \"name\": \"small_mizuno-morelia-neo-iii-pro-as-p1gd228409-trang-den_0019359.jpeg\", \"path\": null, \"size\": 40.04, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019359_bc5a81a349.jpeg\", \"hash\": \"medium_mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019359_bc5a81a349\", \"mime\": \"image/jpeg\", \"name\": \"medium_mizuno-morelia-neo-iii-pro-as-p1gd228409-trang-den_0019359.jpeg\", \"path\": null, \"size\": 79.23, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019359_bc5a81a349.jpeg\", \"hash\": \"thumbnail_mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019359_bc5a81a349\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mizuno-morelia-neo-iii-pro-as-p1gd228409-trang-den_0019359.jpeg\", \"path\": null, \"size\": 5.78, \"width\": 156, \"height\": 156}}', 'mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019359_bc5a81a349', '.jpeg', 'image/jpeg', 80.75, '/uploads/mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019359_bc5a81a349.jpeg', NULL, 'local', NULL, '/2', '2023-06-10 22:28:57.988000', '2023-06-10 22:28:57.988000', 1, 1),
(49, 'mizuno-morelia-neo-iii-pro-as-p1gd228409-trang-den_0019360.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019360_5f00a1b6a3.jpeg\", \"hash\": \"small_mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019360_5f00a1b6a3\", \"mime\": \"image/jpeg\", \"name\": \"small_mizuno-morelia-neo-iii-pro-as-p1gd228409-trang-den_0019360.jpeg\", \"path\": null, \"size\": 33.89, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019360_5f00a1b6a3.jpeg\", \"hash\": \"medium_mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019360_5f00a1b6a3\", \"mime\": \"image/jpeg\", \"name\": \"medium_mizuno-morelia-neo-iii-pro-as-p1gd228409-trang-den_0019360.jpeg\", \"path\": null, \"size\": 63.6, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019360_5f00a1b6a3.jpeg\", \"hash\": \"thumbnail_mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019360_5f00a1b6a3\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mizuno-morelia-neo-iii-pro-as-p1gd228409-trang-den_0019360.jpeg\", \"path\": null, \"size\": 5.2, \"width\": 156, \"height\": 156}}', 'mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019360_5f00a1b6a3', '.jpeg', 'image/jpeg', 63.14, '/uploads/mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019360_5f00a1b6a3.jpeg', NULL, 'local', NULL, '/2', '2023-06-10 22:28:58.025000', '2023-06-10 22:28:58.025000', 1, 1),
(50, 'S6bda4fc20d884b3492309b3eea21f6fdY.jpg', NULL, NULL, 1080, 1080, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_S6bda4fc20d884b3492309b3eea21f6fd_Y_3302b67659.jpg\", \"hash\": \"large_S6bda4fc20d884b3492309b3eea21f6fd_Y_3302b67659\", \"mime\": \"image/jpeg\", \"name\": \"large_S6bda4fc20d884b3492309b3eea21f6fdY.jpg\", \"path\": null, \"size\": 171.81, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_S6bda4fc20d884b3492309b3eea21f6fd_Y_3302b67659.jpg\", \"hash\": \"small_S6bda4fc20d884b3492309b3eea21f6fd_Y_3302b67659\", \"mime\": \"image/jpeg\", \"name\": \"small_S6bda4fc20d884b3492309b3eea21f6fdY.jpg\", \"path\": null, \"size\": 60.42, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_S6bda4fc20d884b3492309b3eea21f6fd_Y_3302b67659.jpg\", \"hash\": \"medium_S6bda4fc20d884b3492309b3eea21f6fd_Y_3302b67659\", \"mime\": \"image/jpeg\", \"name\": \"medium_S6bda4fc20d884b3492309b3eea21f6fdY.jpg\", \"path\": null, \"size\": 111.24, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_S6bda4fc20d884b3492309b3eea21f6fd_Y_3302b67659.jpg\", \"hash\": \"thumbnail_S6bda4fc20d884b3492309b3eea21f6fd_Y_3302b67659\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_S6bda4fc20d884b3492309b3eea21f6fdY.jpg\", \"path\": null, \"size\": 9.98, \"width\": 156, \"height\": 156}}', 'S6bda4fc20d884b3492309b3eea21f6fd_Y_3302b67659', '.jpg', 'image/jpeg', 191.13, '/uploads/S6bda4fc20d884b3492309b3eea21f6fd_Y_3302b67659.jpg', NULL, 'local', NULL, '/2', '2023-06-10 22:28:58.170000', '2023-06-10 22:28:58.170000', 1, 1),
(51, 'S7d02580a10044cb2a1fb6a0bcbcdc646c.jpg', NULL, NULL, 1080, 1080, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_S7d02580a10044cb2a1fb6a0bcbcdc646c_7fe9e995f2.jpg\", \"hash\": \"large_S7d02580a10044cb2a1fb6a0bcbcdc646c_7fe9e995f2\", \"mime\": \"image/jpeg\", \"name\": \"large_S7d02580a10044cb2a1fb6a0bcbcdc646c.jpg\", \"path\": null, \"size\": 171.3, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_S7d02580a10044cb2a1fb6a0bcbcdc646c_7fe9e995f2.jpg\", \"hash\": \"small_S7d02580a10044cb2a1fb6a0bcbcdc646c_7fe9e995f2\", \"mime\": \"image/jpeg\", \"name\": \"small_S7d02580a10044cb2a1fb6a0bcbcdc646c.jpg\", \"path\": null, \"size\": 61.22, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_S7d02580a10044cb2a1fb6a0bcbcdc646c_7fe9e995f2.jpg\", \"hash\": \"medium_S7d02580a10044cb2a1fb6a0bcbcdc646c_7fe9e995f2\", \"mime\": \"image/jpeg\", \"name\": \"medium_S7d02580a10044cb2a1fb6a0bcbcdc646c.jpg\", \"path\": null, \"size\": 111.36, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_S7d02580a10044cb2a1fb6a0bcbcdc646c_7fe9e995f2.jpg\", \"hash\": \"thumbnail_S7d02580a10044cb2a1fb6a0bcbcdc646c_7fe9e995f2\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_S7d02580a10044cb2a1fb6a0bcbcdc646c.jpg\", \"path\": null, \"size\": 10.12, \"width\": 156, \"height\": 156}}', 'S7d02580a10044cb2a1fb6a0bcbcdc646c_7fe9e995f2', '.jpg', 'image/jpeg', 189.64, '/uploads/S7d02580a10044cb2a1fb6a0bcbcdc646c_7fe9e995f2.jpg', NULL, 'local', NULL, '/2', '2023-06-10 22:28:58.232000', '2023-06-10 22:28:58.232000', 1, 1),
(52, 'S644c532d664b430eb99809bc6e0e1024S.jpg', NULL, NULL, 1080, 1080, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_S644c532d664b430eb99809bc6e0e1024_S_bf7da2b9b0.jpg\", \"hash\": \"large_S644c532d664b430eb99809bc6e0e1024_S_bf7da2b9b0\", \"mime\": \"image/jpeg\", \"name\": \"large_S644c532d664b430eb99809bc6e0e1024S.jpg\", \"path\": null, \"size\": 138.28, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_S644c532d664b430eb99809bc6e0e1024_S_bf7da2b9b0.jpg\", \"hash\": \"small_S644c532d664b430eb99809bc6e0e1024_S_bf7da2b9b0\", \"mime\": \"image/jpeg\", \"name\": \"small_S644c532d664b430eb99809bc6e0e1024S.jpg\", \"path\": null, \"size\": 51.52, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_S644c532d664b430eb99809bc6e0e1024_S_bf7da2b9b0.jpg\", \"hash\": \"medium_S644c532d664b430eb99809bc6e0e1024_S_bf7da2b9b0\", \"mime\": \"image/jpeg\", \"name\": \"medium_S644c532d664b430eb99809bc6e0e1024S.jpg\", \"path\": null, \"size\": 91.67, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_S644c532d664b430eb99809bc6e0e1024_S_bf7da2b9b0.jpg\", \"hash\": \"thumbnail_S644c532d664b430eb99809bc6e0e1024_S_bf7da2b9b0\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_S644c532d664b430eb99809bc6e0e1024S.jpg\", \"path\": null, \"size\": 9.6, \"width\": 156, \"height\": 156}}', 'S644c532d664b430eb99809bc6e0e1024_S_bf7da2b9b0', '.jpg', 'image/jpeg', 151.60, '/uploads/S644c532d664b430eb99809bc6e0e1024_S_bf7da2b9b0.jpg', NULL, 'local', NULL, '/2', '2023-06-10 22:28:58.300000', '2023-06-10 22:28:58.300000', 1, 1),
(53, 'S395796950fb04569959bf6135d997861C.jpg', NULL, NULL, 1080, 1080, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_S395796950fb04569959bf6135d997861_C_44c5ed0acb.jpg\", \"hash\": \"large_S395796950fb04569959bf6135d997861_C_44c5ed0acb\", \"mime\": \"image/jpeg\", \"name\": \"large_S395796950fb04569959bf6135d997861C.jpg\", \"path\": null, \"size\": 190.51, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_S395796950fb04569959bf6135d997861_C_44c5ed0acb.jpg\", \"hash\": \"small_S395796950fb04569959bf6135d997861_C_44c5ed0acb\", \"mime\": \"image/jpeg\", \"name\": \"small_S395796950fb04569959bf6135d997861C.jpg\", \"path\": null, \"size\": 65.18, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_S395796950fb04569959bf6135d997861_C_44c5ed0acb.jpg\", \"hash\": \"medium_S395796950fb04569959bf6135d997861_C_44c5ed0acb\", \"mime\": \"image/jpeg\", \"name\": \"medium_S395796950fb04569959bf6135d997861C.jpg\", \"path\": null, \"size\": 122.83, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_S395796950fb04569959bf6135d997861_C_44c5ed0acb.jpg\", \"hash\": \"thumbnail_S395796950fb04569959bf6135d997861_C_44c5ed0acb\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_S395796950fb04569959bf6135d997861C.jpg\", \"path\": null, \"size\": 9.98, \"width\": 156, \"height\": 156}}', 'S395796950fb04569959bf6135d997861_C_44c5ed0acb', '.jpg', 'image/jpeg', 214.35, '/uploads/S395796950fb04569959bf6135d997861_C_44c5ed0acb.jpg', NULL, 'local', NULL, '/2', '2023-06-10 22:28:58.353000', '2023-06-10 22:28:58.353000', 1, 1),
(54, 'mizuno-alpha-select-as-p1gd236501-mau-den_0019908.jpeg', NULL, NULL, 1280, 1280, '{\"large\": {\"ext\": \".jpeg\", \"url\": \"/uploads/large_mizuno_alpha_select_as_p1gd236501_mau_den_0019908_82f2a6d3be.jpeg\", \"hash\": \"large_mizuno_alpha_select_as_p1gd236501_mau_den_0019908_82f2a6d3be\", \"mime\": \"image/jpeg\", \"name\": \"large_mizuno-alpha-select-as-p1gd236501-mau-den_0019908.jpeg\", \"path\": null, \"size\": 101.78, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_mizuno_alpha_select_as_p1gd236501_mau_den_0019908_82f2a6d3be.jpeg\", \"hash\": \"small_mizuno_alpha_select_as_p1gd236501_mau_den_0019908_82f2a6d3be\", \"mime\": \"image/jpeg\", \"name\": \"small_mizuno-alpha-select-as-p1gd236501-mau-den_0019908.jpeg\", \"path\": null, \"size\": 32.1, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_mizuno_alpha_select_as_p1gd236501_mau_den_0019908_82f2a6d3be.jpeg\", \"hash\": \"medium_mizuno_alpha_select_as_p1gd236501_mau_den_0019908_82f2a6d3be\", \"mime\": \"image/jpeg\", \"name\": \"medium_mizuno-alpha-select-as-p1gd236501-mau-den_0019908.jpeg\", \"path\": null, \"size\": 62.53, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_mizuno_alpha_select_as_p1gd236501_mau_den_0019908_82f2a6d3be.jpeg\", \"hash\": \"thumbnail_mizuno_alpha_select_as_p1gd236501_mau_den_0019908_82f2a6d3be\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mizuno-alpha-select-as-p1gd236501-mau-den_0019908.jpeg\", \"path\": null, \"size\": 4.97, \"width\": 156, \"height\": 156}}', 'mizuno_alpha_select_as_p1gd236501_mau_den_0019908_82f2a6d3be', '.jpeg', 'image/jpeg', 112.37, '/uploads/mizuno_alpha_select_as_p1gd236501_mau_den_0019908_82f2a6d3be.jpeg', NULL, 'local', NULL, '/3', '2023-06-15 13:52:57.911000', '2023-06-15 13:52:57.911000', NULL, NULL),
(55, 'banh-da-dong-luc-thai-hien-sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master.webp', NULL, NULL, 500, 500, '{\"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_a019836c63.webp\", \"hash\": \"thumbnail_banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_a019836c63\", \"mime\": \"image/webp\", \"name\": \"thumbnail_banh-da-dong-luc-thai-hien-sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master.webp\", \"path\": null, \"size\": 4.3, \"width\": 156, \"height\": 156}}', 'banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_a019836c63', '.webp', 'image/webp', 23.30, '/uploads/banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_a019836c63.webp', NULL, 'local', NULL, '/3', '2023-06-15 14:39:30.679000', '2023-06-15 14:39:30.679000', NULL, NULL),
(56, '72007bdebb868f294cd628c7026c4a7f.jpg', NULL, NULL, 1000, 1000, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_72007bdebb868f294cd628c7026c4a7f_bc72965c1b.jpg\", \"hash\": \"small_72007bdebb868f294cd628c7026c4a7f_bc72965c1b\", \"mime\": \"image/jpeg\", \"name\": \"small_72007bdebb868f294cd628c7026c4a7f.jpg\", \"path\": null, \"size\": 46.53, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_72007bdebb868f294cd628c7026c4a7f_bc72965c1b.jpg\", \"hash\": \"medium_72007bdebb868f294cd628c7026c4a7f_bc72965c1b\", \"mime\": \"image/jpeg\", \"name\": \"medium_72007bdebb868f294cd628c7026c4a7f.jpg\", \"path\": null, \"size\": 95.5, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_72007bdebb868f294cd628c7026c4a7f_bc72965c1b.jpg\", \"hash\": \"thumbnail_72007bdebb868f294cd628c7026c4a7f_bc72965c1b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_72007bdebb868f294cd628c7026c4a7f.jpg\", \"path\": null, \"size\": 7.09, \"width\": 156, \"height\": 156}}', '72007bdebb868f294cd628c7026c4a7f_bc72965c1b', '.jpg', 'image/jpeg', 169.54, '/uploads/72007bdebb868f294cd628c7026c4a7f_bc72965c1b.jpg', NULL, 'local', NULL, '/3', '2023-06-15 14:39:36.037000', '2023-06-15 14:39:36.037000', NULL, NULL),
(57, 'banh-da-dong-luc-thai-hien-sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master.webp', NULL, NULL, 500, 500, '{\"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_1fa14f0540.webp\", \"hash\": \"thumbnail_banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_1fa14f0540\", \"mime\": \"image/webp\", \"name\": \"thumbnail_banh-da-dong-luc-thai-hien-sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master.webp\", \"path\": null, \"size\": 4.3, \"width\": 156, \"height\": 156}}', 'banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_1fa14f0540', '.webp', 'image/webp', 23.30, '/uploads/banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_1fa14f0540.webp', NULL, 'local', NULL, '/3', '2023-06-15 14:41:55.089000', '2023-06-15 14:41:55.089000', NULL, NULL),
(58, 'bfc250ee668ad5a24ce5e31af0e7345f.jpg.webp', NULL, NULL, 750, 750, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_bfc250ee668ad5a24ce5e31af0e7345f_jpg_bfd4a8738a.webp\", \"hash\": \"small_bfc250ee668ad5a24ce5e31af0e7345f_jpg_bfd4a8738a\", \"mime\": \"image/webp\", \"name\": \"small_bfc250ee668ad5a24ce5e31af0e7345f.jpg.webp\", \"path\": null, \"size\": 19.66, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_bfc250ee668ad5a24ce5e31af0e7345f_jpg_bfd4a8738a.webp\", \"hash\": \"thumbnail_bfc250ee668ad5a24ce5e31af0e7345f_jpg_bfd4a8738a\", \"mime\": \"image/webp\", \"name\": \"thumbnail_bfc250ee668ad5a24ce5e31af0e7345f.jpg.webp\", \"path\": null, \"size\": 4.24, \"width\": 156, \"height\": 156}}', 'bfc250ee668ad5a24ce5e31af0e7345f_jpg_bfd4a8738a', '.webp', 'image/webp', 36.07, '/uploads/bfc250ee668ad5a24ce5e31af0e7345f_jpg_bfd4a8738a.webp', NULL, 'local', NULL, '/3', '2023-06-15 14:41:59.077000', '2023-06-15 14:41:59.077000', NULL, NULL),
(59, 'gang-tay-thu-mon-zocker-gloves-edwin-denxanh-chuoi_0019157.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_chuoi_0019157_6a8784c9ba.jpeg\", \"hash\": \"small_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_chuoi_0019157_6a8784c9ba\", \"mime\": \"image/jpeg\", \"name\": \"small_gang-tay-thu-mon-zocker-gloves-edwin-denxanh-chuoi_0019157.jpeg\", \"path\": null, \"size\": 32.5, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_chuoi_0019157_6a8784c9ba.jpeg\", \"hash\": \"medium_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_chuoi_0019157_6a8784c9ba\", \"mime\": \"image/jpeg\", \"name\": \"medium_gang-tay-thu-mon-zocker-gloves-edwin-denxanh-chuoi_0019157.jpeg\", \"path\": null, \"size\": 58.34, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_chuoi_0019157_6a8784c9ba.jpeg\", \"hash\": \"thumbnail_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_chuoi_0019157_6a8784c9ba\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_gang-tay-thu-mon-zocker-gloves-edwin-denxanh-chuoi_0019157.jpeg\", \"path\": null, \"size\": 5.78, \"width\": 156, \"height\": 156}}', 'gang_tay_thu_mon_zocker_gloves_edwin_denxanh_chuoi_0019157_6a8784c9ba', '.jpeg', 'image/jpeg', 58.41, '/uploads/gang_tay_thu_mon_zocker_gloves_edwin_denxanh_chuoi_0019157_6a8784c9ba.jpeg', NULL, 'local', NULL, '/3', '2023-06-15 14:42:03.311000', '2023-06-15 14:42:03.311000', NULL, NULL),
(60, 'bfd9aeb9d5ea4c108854a69f906131fa_16bd8216aa9b4326a71cd9bd13a954ba.webp', NULL, NULL, 546, 600, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_bfd9aeb9d5ea4c108854a69f906131fa_16bd8216aa9b4326a71cd9bd13a954ba_7442feed51.webp\", \"hash\": \"small_bfd9aeb9d5ea4c108854a69f906131fa_16bd8216aa9b4326a71cd9bd13a954ba_7442feed51\", \"mime\": \"image/webp\", \"name\": \"small_bfd9aeb9d5ea4c108854a69f906131fa_16bd8216aa9b4326a71cd9bd13a954ba.webp\", \"path\": null, \"size\": 18.85, \"width\": 455, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_bfd9aeb9d5ea4c108854a69f906131fa_16bd8216aa9b4326a71cd9bd13a954ba_7442feed51.webp\", \"hash\": \"thumbnail_bfd9aeb9d5ea4c108854a69f906131fa_16bd8216aa9b4326a71cd9bd13a954ba_7442feed51\", \"mime\": \"image/webp\", \"name\": \"thumbnail_bfd9aeb9d5ea4c108854a69f906131fa_16bd8216aa9b4326a71cd9bd13a954ba.webp\", \"path\": null, \"size\": 3.52, \"width\": 142, \"height\": 156}}', 'bfd9aeb9d5ea4c108854a69f906131fa_16bd8216aa9b4326a71cd9bd13a954ba_7442feed51', '.webp', 'image/webp', 30.54, '/uploads/bfd9aeb9d5ea4c108854a69f906131fa_16bd8216aa9b4326a71cd9bd13a954ba_7442feed51.webp', NULL, 'local', NULL, '/3', '2023-06-15 14:45:08.767000', '2023-06-15 14:45:08.767000', NULL, NULL),
(61, 'bong-da-dong-luc-so-4-ucv-3-05_bbe211fd19f44ea7811a9c0e4cba944a_master.webp', NULL, NULL, 850, 850, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_1fb65d3ed4.webp\", \"hash\": \"small_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_1fb65d3ed4\", \"mime\": \"image/webp\", \"name\": \"small_bong-da-dong-luc-so-4-ucv-3-05_bbe211fd19f44ea7811a9c0e4cba944a_master.webp\", \"path\": null, \"size\": 29.99, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_1fb65d3ed4.webp\", \"hash\": \"medium_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_1fb65d3ed4\", \"mime\": \"image/webp\", \"name\": \"medium_bong-da-dong-luc-so-4-ucv-3-05_bbe211fd19f44ea7811a9c0e4cba944a_master.webp\", \"path\": null, \"size\": 49.93, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_1fb65d3ed4.webp\", \"hash\": \"thumbnail_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_1fb65d3ed4\", \"mime\": \"image/webp\", \"name\": \"thumbnail_bong-da-dong-luc-so-4-ucv-3-05_bbe211fd19f44ea7811a9c0e4cba944a_master.webp\", \"path\": null, \"size\": 6.13, \"width\": 156, \"height\": 156}}', 'bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_1fb65d3ed4', '.webp', 'image/webp', 68.51, '/uploads/bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_1fb65d3ed4.webp', NULL, 'local', NULL, '/3', '2023-06-15 14:45:13.306000', '2023-06-15 14:45:13.306000', NULL, NULL),
(62, 'covy 06-500x505.jpg', NULL, NULL, 500, 505, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_covy_06_500x505_1313441fbd.jpg\", \"hash\": \"small_covy_06_500x505_1313441fbd\", \"mime\": \"image/jpeg\", \"name\": \"small_covy 06-500x505.jpg\", \"path\": null, \"size\": 30.01, \"width\": 495, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_covy_06_500x505_1313441fbd.jpg\", \"hash\": \"thumbnail_covy_06_500x505_1313441fbd\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_covy 06-500x505.jpg\", \"path\": null, \"size\": 5.45, \"width\": 155, \"height\": 156}}', 'covy_06_500x505_1313441fbd', '.jpg', 'image/jpeg', 30.92, '/uploads/covy_06_500x505_1313441fbd.jpg', NULL, 'local', NULL, '/3', '2023-06-15 14:45:17.910000', '2023-06-15 14:45:17.910000', NULL, NULL),
(63, 'adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018964.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_c498ef5066.jpeg\", \"hash\": \"small_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_c498ef5066\", \"mime\": \"image/jpeg\", \"name\": \"small_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018964.jpeg\", \"path\": null, \"size\": 35.39, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_c498ef5066.jpeg\", \"hash\": \"medium_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_c498ef5066\", \"mime\": \"image/jpeg\", \"name\": \"medium_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018964.jpeg\", \"path\": null, \"size\": 72.23, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_c498ef5066.jpeg\", \"hash\": \"thumbnail_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_c498ef5066\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018964.jpeg\", \"path\": null, \"size\": 5.37, \"width\": 156, \"height\": 156}}', 'adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_c498ef5066', '.jpeg', 'image/jpeg', 78.59, '/uploads/adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_c498ef5066.jpeg', NULL, 'local', NULL, '/3', '2023-06-15 14:46:09.157000', '2023-06-15 14:46:09.157000', NULL, NULL),
(64, 'adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018964.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_e89ae06546.jpeg\", \"hash\": \"small_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_e89ae06546\", \"mime\": \"image/jpeg\", \"name\": \"small_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018964.jpeg\", \"path\": null, \"size\": 35.39, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_e89ae06546.jpeg\", \"hash\": \"medium_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_e89ae06546\", \"mime\": \"image/jpeg\", \"name\": \"medium_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018964.jpeg\", \"path\": null, \"size\": 72.23, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_e89ae06546.jpeg\", \"hash\": \"thumbnail_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_e89ae06546\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018964.jpeg\", \"path\": null, \"size\": 5.37, \"width\": 156, \"height\": 156}}', 'adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_e89ae06546', '.jpeg', 'image/jpeg', 78.59, '/uploads/adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_e89ae06546.jpeg', NULL, 'local', NULL, '/3', '2023-06-15 14:46:10.421000', '2023-06-15 14:46:10.421000', NULL, NULL),
(65, 'da36d757937c579f5a0edc271414ca72.jpg', NULL, NULL, 920, 920, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_da36d757937c579f5a0edc271414ca72_5a84aeb9bb.jpg\", \"hash\": \"small_da36d757937c579f5a0edc271414ca72_5a84aeb9bb\", \"mime\": \"image/jpeg\", \"name\": \"small_da36d757937c579f5a0edc271414ca72.jpg\", \"path\": null, \"size\": 49.33, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_da36d757937c579f5a0edc271414ca72_5a84aeb9bb.jpg\", \"hash\": \"medium_da36d757937c579f5a0edc271414ca72_5a84aeb9bb\", \"mime\": \"image/jpeg\", \"name\": \"medium_da36d757937c579f5a0edc271414ca72.jpg\", \"path\": null, \"size\": 96.13, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_da36d757937c579f5a0edc271414ca72_5a84aeb9bb.jpg\", \"hash\": \"thumbnail_da36d757937c579f5a0edc271414ca72_5a84aeb9bb\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_da36d757937c579f5a0edc271414ca72.jpg\", \"path\": null, \"size\": 7.4, \"width\": 156, \"height\": 156}}', 'da36d757937c579f5a0edc271414ca72_5a84aeb9bb', '.jpg', 'image/jpeg', 136.04, '/uploads/da36d757937c579f5a0edc271414ca72_5a84aeb9bb.jpg', NULL, 'local', NULL, '/3', '2023-06-15 14:46:15.118000', '2023-06-15 14:46:15.118000', NULL, NULL),
(66, 'banh-da-dong-luc-thai-hien-sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master.webp', NULL, NULL, 500, 500, '{\"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_68bf2ac6fd.webp\", \"hash\": \"thumbnail_banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_68bf2ac6fd\", \"mime\": \"image/webp\", \"name\": \"thumbnail_banh-da-dong-luc-thai-hien-sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master.webp\", \"path\": null, \"size\": 4.3, \"width\": 156, \"height\": 156}}', 'banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_68bf2ac6fd', '.webp', 'image/webp', 23.30, '/uploads/banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_68bf2ac6fd.webp', NULL, 'local', NULL, '/3', '2023-06-15 14:52:48.094000', '2023-06-15 14:52:48.094000', NULL, NULL),
(67, 'bong-da-dong-luc-so-4-ucv-3-05_bbe211fd19f44ea7811a9c0e4cba944a_master.webp', NULL, NULL, 850, 850, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_f2e8e0433c.webp\", \"hash\": \"small_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_f2e8e0433c\", \"mime\": \"image/webp\", \"name\": \"small_bong-da-dong-luc-so-4-ucv-3-05_bbe211fd19f44ea7811a9c0e4cba944a_master.webp\", \"path\": null, \"size\": 29.99, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_f2e8e0433c.webp\", \"hash\": \"medium_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_f2e8e0433c\", \"mime\": \"image/webp\", \"name\": \"medium_bong-da-dong-luc-so-4-ucv-3-05_bbe211fd19f44ea7811a9c0e4cba944a_master.webp\", \"path\": null, \"size\": 49.93, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_f2e8e0433c.webp\", \"hash\": \"thumbnail_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_f2e8e0433c\", \"mime\": \"image/webp\", \"name\": \"thumbnail_bong-da-dong-luc-so-4-ucv-3-05_bbe211fd19f44ea7811a9c0e4cba944a_master.webp\", \"path\": null, \"size\": 6.13, \"width\": 156, \"height\": 156}}', 'bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_f2e8e0433c', '.webp', 'image/webp', 68.51, '/uploads/bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_f2e8e0433c.webp', NULL, 'local', NULL, '/3', '2023-06-15 14:54:04.411000', '2023-06-15 14:54:04.411000', NULL, NULL),
(68, 'bfd9aeb9d5ea4c108854a69f906131fa_16bd8216aa9b4326a71cd9bd13a954ba.webp', NULL, NULL, 546, 600, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_bfd9aeb9d5ea4c108854a69f906131fa_16bd8216aa9b4326a71cd9bd13a954ba_603328128f.webp\", \"hash\": \"small_bfd9aeb9d5ea4c108854a69f906131fa_16bd8216aa9b4326a71cd9bd13a954ba_603328128f\", \"mime\": \"image/webp\", \"name\": \"small_bfd9aeb9d5ea4c108854a69f906131fa_16bd8216aa9b4326a71cd9bd13a954ba.webp\", \"path\": null, \"size\": 18.85, \"width\": 455, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_bfd9aeb9d5ea4c108854a69f906131fa_16bd8216aa9b4326a71cd9bd13a954ba_603328128f.webp\", \"hash\": \"thumbnail_bfd9aeb9d5ea4c108854a69f906131fa_16bd8216aa9b4326a71cd9bd13a954ba_603328128f\", \"mime\": \"image/webp\", \"name\": \"thumbnail_bfd9aeb9d5ea4c108854a69f906131fa_16bd8216aa9b4326a71cd9bd13a954ba.webp\", \"path\": null, \"size\": 3.52, \"width\": 142, \"height\": 156}}', 'bfd9aeb9d5ea4c108854a69f906131fa_16bd8216aa9b4326a71cd9bd13a954ba_603328128f', '.webp', 'image/webp', 30.54, '/uploads/bfd9aeb9d5ea4c108854a69f906131fa_16bd8216aa9b4326a71cd9bd13a954ba_603328128f.webp', NULL, 'local', NULL, '/3', '2023-06-15 14:55:57.544000', '2023-06-15 14:55:57.544000', NULL, NULL),
(69, 'bong-da-dong-luc-so-4-ucv-3-05_bbe211fd19f44ea7811a9c0e4cba944a_master.webp', NULL, NULL, 850, 850, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_ade9ff4639.webp\", \"hash\": \"small_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_ade9ff4639\", \"mime\": \"image/webp\", \"name\": \"small_bong-da-dong-luc-so-4-ucv-3-05_bbe211fd19f44ea7811a9c0e4cba944a_master.webp\", \"path\": null, \"size\": 29.99, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_ade9ff4639.webp\", \"hash\": \"medium_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_ade9ff4639\", \"mime\": \"image/webp\", \"name\": \"medium_bong-da-dong-luc-so-4-ucv-3-05_bbe211fd19f44ea7811a9c0e4cba944a_master.webp\", \"path\": null, \"size\": 49.93, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_ade9ff4639.webp\", \"hash\": \"thumbnail_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_ade9ff4639\", \"mime\": \"image/webp\", \"name\": \"thumbnail_bong-da-dong-luc-so-4-ucv-3-05_bbe211fd19f44ea7811a9c0e4cba944a_master.webp\", \"path\": null, \"size\": 6.13, \"width\": 156, \"height\": 156}}', 'bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_ade9ff4639', '.webp', 'image/webp', 68.51, '/uploads/bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_ade9ff4639.webp', NULL, 'local', NULL, '/3', '2023-06-15 14:56:02.503000', '2023-06-15 14:56:02.503000', NULL, NULL),
(70, 'adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018964.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_604fe8bb91.jpeg\", \"hash\": \"small_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_604fe8bb91\", \"mime\": \"image/jpeg\", \"name\": \"small_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018964.jpeg\", \"path\": null, \"size\": 35.39, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_604fe8bb91.jpeg\", \"hash\": \"medium_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_604fe8bb91\", \"mime\": \"image/jpeg\", \"name\": \"medium_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018964.jpeg\", \"path\": null, \"size\": 72.23, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_604fe8bb91.jpeg\", \"hash\": \"thumbnail_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_604fe8bb91\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018964.jpeg\", \"path\": null, \"size\": 5.37, \"width\": 156, \"height\": 156}}', 'adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_604fe8bb91', '.jpeg', 'image/jpeg', 78.59, '/uploads/adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018964_604fe8bb91.jpeg', NULL, 'local', NULL, '/3', '2023-06-15 14:58:32.802000', '2023-06-15 14:58:32.802000', NULL, NULL),
(71, 'adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018966.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018966_5124940d69.jpeg\", \"hash\": \"small_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018966_5124940d69\", \"mime\": \"image/jpeg\", \"name\": \"small_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018966.jpeg\", \"path\": null, \"size\": 17.13, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018966_5124940d69.jpeg\", \"hash\": \"medium_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018966_5124940d69\", \"mime\": \"image/jpeg\", \"name\": \"medium_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018966.jpeg\", \"path\": null, \"size\": 34.96, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018966_5124940d69.jpeg\", \"hash\": \"thumbnail_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018966_5124940d69\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018966.jpeg\", \"path\": null, \"size\": 2.77, \"width\": 156, \"height\": 156}}', 'adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018966_5124940d69', '.jpeg', 'image/jpeg', 38.37, '/uploads/adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018966_5124940d69.jpeg', NULL, 'local', NULL, '/3', '2023-06-15 14:58:36.489000', '2023-06-15 14:58:36.489000', NULL, NULL),
(72, 'adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018967.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018967_97e28d843a.jpeg\", \"hash\": \"small_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018967_97e28d843a\", \"mime\": \"image/jpeg\", \"name\": \"small_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018967.jpeg\", \"path\": null, \"size\": 13.66, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018967_97e28d843a.jpeg\", \"hash\": \"medium_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018967_97e28d843a\", \"mime\": \"image/jpeg\", \"name\": \"medium_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018967.jpeg\", \"path\": null, \"size\": 27.32, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018967_97e28d843a.jpeg\", \"hash\": \"thumbnail_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018967_97e28d843a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018967.jpeg\", \"path\": null, \"size\": 2.34, \"width\": 156, \"height\": 156}}', 'adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018967_97e28d843a', '.jpeg', 'image/jpeg', 30.16, '/uploads/adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018967_97e28d843a.jpeg', NULL, 'local', NULL, '/3', '2023-06-15 14:58:42.274000', '2023-06-15 14:58:42.274000', NULL, NULL),
(73, 'bfc250ee668ad5a24ce5e31af0e7345f.jpg.webp', NULL, NULL, 750, 750, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_bfc250ee668ad5a24ce5e31af0e7345f_jpg_d31a00a902.webp\", \"hash\": \"small_bfc250ee668ad5a24ce5e31af0e7345f_jpg_d31a00a902\", \"mime\": \"image/webp\", \"name\": \"small_bfc250ee668ad5a24ce5e31af0e7345f.jpg.webp\", \"path\": null, \"size\": 19.66, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_bfc250ee668ad5a24ce5e31af0e7345f_jpg_d31a00a902.webp\", \"hash\": \"thumbnail_bfc250ee668ad5a24ce5e31af0e7345f_jpg_d31a00a902\", \"mime\": \"image/webp\", \"name\": \"thumbnail_bfc250ee668ad5a24ce5e31af0e7345f.jpg.webp\", \"path\": null, \"size\": 4.24, \"width\": 156, \"height\": 156}}', 'bfc250ee668ad5a24ce5e31af0e7345f_jpg_d31a00a902', '.webp', 'image/webp', 36.07, '/uploads/bfc250ee668ad5a24ce5e31af0e7345f_jpg_d31a00a902.webp', NULL, 'local', NULL, '/3', '2023-06-15 15:00:38.366000', '2023-06-15 15:00:38.366000', NULL, NULL),
(74, 'covy 06-500x505.jpg', NULL, NULL, 500, 505, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_covy_06_500x505_71c87a7693.jpg\", \"hash\": \"small_covy_06_500x505_71c87a7693\", \"mime\": \"image/jpeg\", \"name\": \"small_covy 06-500x505.jpg\", \"path\": null, \"size\": 30.01, \"width\": 495, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_covy_06_500x505_71c87a7693.jpg\", \"hash\": \"thumbnail_covy_06_500x505_71c87a7693\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_covy 06-500x505.jpg\", \"path\": null, \"size\": 5.45, \"width\": 155, \"height\": 156}}', 'covy_06_500x505_71c87a7693', '.jpg', 'image/jpeg', 30.92, '/uploads/covy_06_500x505_71c87a7693.jpg', NULL, 'local', NULL, '/3', '2023-06-15 15:00:42.297000', '2023-06-15 15:00:42.297000', NULL, NULL);
INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(75, 'f62d5bca47ac06b35d175d7a95a7fd82.jpg.webp', NULL, NULL, 750, 750, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_f62d5bca47ac06b35d175d7a95a7fd82_jpg_d34d7a8041.webp\", \"hash\": \"small_f62d5bca47ac06b35d175d7a95a7fd82_jpg_d34d7a8041\", \"mime\": \"image/webp\", \"name\": \"small_f62d5bca47ac06b35d175d7a95a7fd82.jpg.webp\", \"path\": null, \"size\": 17.94, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_f62d5bca47ac06b35d175d7a95a7fd82_jpg_d34d7a8041.webp\", \"hash\": \"thumbnail_f62d5bca47ac06b35d175d7a95a7fd82_jpg_d34d7a8041\", \"mime\": \"image/webp\", \"name\": \"thumbnail_f62d5bca47ac06b35d175d7a95a7fd82.jpg.webp\", \"path\": null, \"size\": 3.89, \"width\": 156, \"height\": 156}}', 'f62d5bca47ac06b35d175d7a95a7fd82_jpg_d34d7a8041', '.webp', 'image/webp', 34.61, '/uploads/f62d5bca47ac06b35d175d7a95a7fd82_jpg_d34d7a8041.webp', NULL, 'local', NULL, '/3', '2023-06-15 15:00:47.351000', '2023-06-15 15:00:47.351000', NULL, NULL),
(76, 'bong-da-dong-luc-so-4-ucv-3-05_bbe211fd19f44ea7811a9c0e4cba944a_master.webp', NULL, NULL, 850, 850, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_52546977f3.webp\", \"hash\": \"small_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_52546977f3\", \"mime\": \"image/webp\", \"name\": \"small_bong-da-dong-luc-so-4-ucv-3-05_bbe211fd19f44ea7811a9c0e4cba944a_master.webp\", \"path\": null, \"size\": 29.99, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_52546977f3.webp\", \"hash\": \"medium_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_52546977f3\", \"mime\": \"image/webp\", \"name\": \"medium_bong-da-dong-luc-so-4-ucv-3-05_bbe211fd19f44ea7811a9c0e4cba944a_master.webp\", \"path\": null, \"size\": 49.93, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_52546977f3.webp\", \"hash\": \"thumbnail_bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_52546977f3\", \"mime\": \"image/webp\", \"name\": \"thumbnail_bong-da-dong-luc-so-4-ucv-3-05_bbe211fd19f44ea7811a9c0e4cba944a_master.webp\", \"path\": null, \"size\": 6.13, \"width\": 156, \"height\": 156}}', 'bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_52546977f3', '.webp', 'image/webp', 68.51, '/uploads/bong_da_dong_luc_so_4_ucv_3_05_bbe211fd19f44ea7811a9c0e4cba944a_master_52546977f3.webp', NULL, 'local', NULL, '/3', '2023-06-15 15:01:41.132000', '2023-06-15 15:01:41.132000', NULL, NULL),
(77, 'mizuno-morelia-neo-iii-pro-as-p1gd228409-trang-den_0019359.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019359_fecc8443e5.jpeg\", \"hash\": \"small_mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019359_fecc8443e5\", \"mime\": \"image/jpeg\", \"name\": \"small_mizuno-morelia-neo-iii-pro-as-p1gd228409-trang-den_0019359.jpeg\", \"path\": null, \"size\": 40.04, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019359_fecc8443e5.jpeg\", \"hash\": \"medium_mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019359_fecc8443e5\", \"mime\": \"image/jpeg\", \"name\": \"medium_mizuno-morelia-neo-iii-pro-as-p1gd228409-trang-den_0019359.jpeg\", \"path\": null, \"size\": 79.23, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019359_fecc8443e5.jpeg\", \"hash\": \"thumbnail_mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019359_fecc8443e5\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mizuno-morelia-neo-iii-pro-as-p1gd228409-trang-den_0019359.jpeg\", \"path\": null, \"size\": 5.78, \"width\": 156, \"height\": 156}}', 'mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019359_fecc8443e5', '.jpeg', 'image/jpeg', 80.75, '/uploads/mizuno_morelia_neo_iii_pro_as_p1gd228409_trang_den_0019359_fecc8443e5.jpeg', NULL, 'local', NULL, '/3', '2023-06-15 15:01:45.167000', '2023-06-15 15:01:45.167000', NULL, NULL),
(78, '7900d558c0076dd7dd8a691f998d7868.jpg.webp', NULL, NULL, 750, 750, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_7900d558c0076dd7dd8a691f998d7868_jpg_d066fbed38.webp\", \"hash\": \"small_7900d558c0076dd7dd8a691f998d7868_jpg_d066fbed38\", \"mime\": \"image/webp\", \"name\": \"small_7900d558c0076dd7dd8a691f998d7868.jpg.webp\", \"path\": null, \"size\": 18.03, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_7900d558c0076dd7dd8a691f998d7868_jpg_d066fbed38.webp\", \"hash\": \"thumbnail_7900d558c0076dd7dd8a691f998d7868_jpg_d066fbed38\", \"mime\": \"image/webp\", \"name\": \"thumbnail_7900d558c0076dd7dd8a691f998d7868.jpg.webp\", \"path\": null, \"size\": 4.02, \"width\": 156, \"height\": 156}}', '7900d558c0076dd7dd8a691f998d7868_jpg_d066fbed38', '.webp', 'image/webp', 34.84, '/uploads/7900d558c0076dd7dd8a691f998d7868_jpg_d066fbed38.webp', NULL, 'local', NULL, '/3', '2023-06-15 15:03:09.270000', '2023-06-15 15:03:09.270000', NULL, NULL),
(79, '372c234262d04f8fb389cd63abf7b1ac_988356c0fd784755850ecaafd68e7db2_1024x1024.webp', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_372c234262d04f8fb389cd63abf7b1ac_988356c0fd784755850ecaafd68e7db2_1024x1024_ed8ff62769.webp\", \"hash\": \"small_372c234262d04f8fb389cd63abf7b1ac_988356c0fd784755850ecaafd68e7db2_1024x1024_ed8ff62769\", \"mime\": \"image/webp\", \"name\": \"small_372c234262d04f8fb389cd63abf7b1ac_988356c0fd784755850ecaafd68e7db2_1024x1024.webp\", \"path\": null, \"size\": 20.73, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_372c234262d04f8fb389cd63abf7b1ac_988356c0fd784755850ecaafd68e7db2_1024x1024_ed8ff62769.webp\", \"hash\": \"thumbnail_372c234262d04f8fb389cd63abf7b1ac_988356c0fd784755850ecaafd68e7db2_1024x1024_ed8ff62769\", \"mime\": \"image/webp\", \"name\": \"thumbnail_372c234262d04f8fb389cd63abf7b1ac_988356c0fd784755850ecaafd68e7db2_1024x1024.webp\", \"path\": null, \"size\": 3.82, \"width\": 156, \"height\": 156}}', '372c234262d04f8fb389cd63abf7b1ac_988356c0fd784755850ecaafd68e7db2_1024x1024_ed8ff62769', '.webp', 'image/webp', 33.50, '/uploads/372c234262d04f8fb389cd63abf7b1ac_988356c0fd784755850ecaafd68e7db2_1024x1024_ed8ff62769.webp', NULL, 'local', NULL, '/3', '2023-06-15 15:03:15.153000', '2023-06-15 15:03:15.153000', NULL, NULL),
(80, '3cb647165a574254bcedbc8929a2c09d_ee86bfb763894e14ae8e1f2998c7550a_1024x1024.webp', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_3cb647165a574254bcedbc8929a2c09d_ee86bfb763894e14ae8e1f2998c7550a_1024x1024_3c4a324a9a.webp\", \"hash\": \"small_3cb647165a574254bcedbc8929a2c09d_ee86bfb763894e14ae8e1f2998c7550a_1024x1024_3c4a324a9a\", \"mime\": \"image/webp\", \"name\": \"small_3cb647165a574254bcedbc8929a2c09d_ee86bfb763894e14ae8e1f2998c7550a_1024x1024.webp\", \"path\": null, \"size\": 16.64, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_3cb647165a574254bcedbc8929a2c09d_ee86bfb763894e14ae8e1f2998c7550a_1024x1024_3c4a324a9a.webp\", \"hash\": \"thumbnail_3cb647165a574254bcedbc8929a2c09d_ee86bfb763894e14ae8e1f2998c7550a_1024x1024_3c4a324a9a\", \"mime\": \"image/webp\", \"name\": \"thumbnail_3cb647165a574254bcedbc8929a2c09d_ee86bfb763894e14ae8e1f2998c7550a_1024x1024.webp\", \"path\": null, \"size\": 3.43, \"width\": 156, \"height\": 156}}', '3cb647165a574254bcedbc8929a2c09d_ee86bfb763894e14ae8e1f2998c7550a_1024x1024_3c4a324a9a', '.webp', 'image/webp', 27.14, '/uploads/3cb647165a574254bcedbc8929a2c09d_ee86bfb763894e14ae8e1f2998c7550a_1024x1024_3c4a324a9a.webp', NULL, 'local', NULL, '/3', '2023-06-15 15:03:19.754000', '2023-06-15 15:03:19.754000', NULL, NULL),
(81, 'adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_220_0019774.jpeg', NULL, NULL, 220, 220, '{\"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_220_0019774_2957e6c07f.jpeg\", \"hash\": \"thumbnail_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_220_0019774_2957e6c07f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_220_0019774.jpeg\", \"path\": null, \"size\": 3.84, \"width\": 156, \"height\": 156}}', 'adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_220_0019774_2957e6c07f', '.jpeg', 'image/jpeg', 6.10, '/uploads/adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_220_0019774_2957e6c07f.jpeg', NULL, 'local', NULL, '/3', '2023-06-17 08:44:50.913000', '2023-06-17 08:44:50.913000', NULL, NULL),
(82, 'adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019775.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019775_34c0bbb7b1.jpeg\", \"hash\": \"small_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019775_34c0bbb7b1\", \"mime\": \"image/jpeg\", \"name\": \"small_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019775.jpeg\", \"path\": null, \"size\": 24.34, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019775_34c0bbb7b1.jpeg\", \"hash\": \"medium_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019775_34c0bbb7b1\", \"mime\": \"image/jpeg\", \"name\": \"medium_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019775.jpeg\", \"path\": null, \"size\": 44.34, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019775_34c0bbb7b1.jpeg\", \"hash\": \"thumbnail_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019775_34c0bbb7b1\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019775.jpeg\", \"path\": null, \"size\": 4.28, \"width\": 156, \"height\": 156}}', 'adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019775_34c0bbb7b1', '.jpeg', 'image/jpeg', 45.28, '/uploads/adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019775_34c0bbb7b1.jpeg', NULL, 'local', NULL, '/3', '2023-06-17 08:44:54.938000', '2023-06-17 08:44:54.938000', NULL, NULL),
(83, 'adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019776.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_321279573b.jpeg\", \"hash\": \"small_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_321279573b\", \"mime\": \"image/jpeg\", \"name\": \"small_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019776.jpeg\", \"path\": null, \"size\": 16.34, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_321279573b.jpeg\", \"hash\": \"medium_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_321279573b\", \"mime\": \"image/jpeg\", \"name\": \"medium_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019776.jpeg\", \"path\": null, \"size\": 30.43, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_321279573b.jpeg\", \"hash\": \"thumbnail_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_321279573b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019776.jpeg\", \"path\": null, \"size\": 2.9, \"width\": 156, \"height\": 156}}', 'adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_321279573b', '.jpeg', 'image/jpeg', 31.15, '/uploads/adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_321279573b.jpeg', NULL, 'local', NULL, '/3', '2023-06-17 08:44:58.299000', '2023-06-17 08:44:58.299000', NULL, NULL),
(84, 'adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019778.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_8904b4b063.jpeg\", \"hash\": \"small_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_8904b4b063\", \"mime\": \"image/jpeg\", \"name\": \"small_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019778.jpeg\", \"path\": null, \"size\": 17.13, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_8904b4b063.jpeg\", \"hash\": \"medium_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_8904b4b063\", \"mime\": \"image/jpeg\", \"name\": \"medium_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019778.jpeg\", \"path\": null, \"size\": 31.31, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_8904b4b063.jpeg\", \"hash\": \"thumbnail_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_8904b4b063\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019778.jpeg\", \"path\": null, \"size\": 3.45, \"width\": 156, \"height\": 156}}', 'adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_8904b4b063', '.jpeg', 'image/jpeg', 32.00, '/uploads/adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_8904b4b063.jpeg', NULL, 'local', NULL, '/3', '2023-06-17 08:45:01.467000', '2023-06-17 08:45:01.467000', NULL, NULL),
(85, 'adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019778.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_673840faa0.jpeg\", \"hash\": \"small_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_673840faa0\", \"mime\": \"image/jpeg\", \"name\": \"small_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019778.jpeg\", \"path\": null, \"size\": 17.13, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_673840faa0.jpeg\", \"hash\": \"medium_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_673840faa0\", \"mime\": \"image/jpeg\", \"name\": \"medium_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019778.jpeg\", \"path\": null, \"size\": 31.31, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_673840faa0.jpeg\", \"hash\": \"thumbnail_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_673840faa0\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019778.jpeg\", \"path\": null, \"size\": 3.45, \"width\": 156, \"height\": 156}}', 'adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_673840faa0', '.jpeg', 'image/jpeg', 32.00, '/uploads/adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_673840faa0.jpeg', NULL, 'local', NULL, '/3', '2023-06-17 08:45:10.988000', '2023-06-17 08:45:10.988000', NULL, NULL),
(86, 'bongro1.jpg', NULL, NULL, NULL, NULL, NULL, 'bongro1_dbb98d10ae', '.jpg', 'image/jpeg', 28.80, '/uploads/bongro1_dbb98d10ae.jpg', NULL, 'local', NULL, '/3', '2023-06-17 10:19:27.068000', '2023-06-17 10:19:27.068000', NULL, NULL),
(87, 'bongro2.jpg', NULL, NULL, NULL, NULL, NULL, 'bongro2_da5d51532b', '.jpg', 'image/jpeg', 25.10, '/uploads/bongro2_da5d51532b.jpg', NULL, 'local', NULL, '/3', '2023-06-17 10:19:31.477000', '2023-06-17 10:19:31.477000', NULL, NULL),
(88, 'bongro3.jpg', NULL, NULL, NULL, NULL, NULL, 'bongro3_f68c87db88', '.jpg', 'image/jpeg', 23.62, '/uploads/bongro3_f68c87db88.jpg', NULL, 'local', NULL, '/3', '2023-06-17 10:19:35.244000', '2023-06-17 10:19:35.244000', NULL, NULL),
(89, '0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024.webp', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_84abc17fa0.webp\", \"hash\": \"small_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_84abc17fa0\", \"mime\": \"image/webp\", \"name\": \"small_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024.webp\", \"path\": null, \"size\": 18.67, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_84abc17fa0.webp\", \"hash\": \"thumbnail_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_84abc17fa0\", \"mime\": \"image/webp\", \"name\": \"thumbnail_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024.webp\", \"path\": null, \"size\": 3.77, \"width\": 156, \"height\": 156}}', '0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_84abc17fa0', '.webp', 'image/webp', 30.60, '/uploads/0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_84abc17fa0.webp', NULL, 'local', NULL, '/3', '2023-06-18 11:03:40.452000', '2023-06-18 11:03:40.452000', NULL, NULL),
(90, '1-500x505.jpg', NULL, NULL, 500, 505, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_1_500x505_5c4fc04757.jpg\", \"hash\": \"small_1_500x505_5c4fc04757\", \"mime\": \"image/jpeg\", \"name\": \"small_1-500x505.jpg\", \"path\": null, \"size\": 38.83, \"width\": 495, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_1_500x505_5c4fc04757.jpg\", \"hash\": \"thumbnail_1_500x505_5c4fc04757\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_1-500x505.jpg\", \"path\": null, \"size\": 6.28, \"width\": 155, \"height\": 156}}', '1_500x505_5c4fc04757', '.jpg', 'image/jpeg', 40.15, '/uploads/1_500x505_5c4fc04757.jpg', NULL, 'local', NULL, '/3', '2023-06-18 11:03:43.511000', '2023-06-18 11:03:43.511000', NULL, NULL),
(91, '2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024.webp', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024_47258afb0d.webp\", \"hash\": \"small_2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024_47258afb0d\", \"mime\": \"image/webp\", \"name\": \"small_2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024.webp\", \"path\": null, \"size\": 13.28, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024_47258afb0d.webp\", \"hash\": \"thumbnail_2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024_47258afb0d\", \"mime\": \"image/webp\", \"name\": \"thumbnail_2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024.webp\", \"path\": null, \"size\": 2.84, \"width\": 156, \"height\": 156}}', '2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024_47258afb0d', '.webp', 'image/webp', 20.43, '/uploads/2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024_47258afb0d.webp', NULL, 'local', NULL, '/3', '2023-06-18 11:03:46.099000', '2023-06-18 11:03:46.099000', NULL, NULL),
(92, 'adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019776.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_a0b6c97262.jpeg\", \"hash\": \"small_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_a0b6c97262\", \"mime\": \"image/jpeg\", \"name\": \"small_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019776.jpeg\", \"path\": null, \"size\": 16.34, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_a0b6c97262.jpeg\", \"hash\": \"medium_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_a0b6c97262\", \"mime\": \"image/jpeg\", \"name\": \"medium_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019776.jpeg\", \"path\": null, \"size\": 30.43, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_a0b6c97262.jpeg\", \"hash\": \"thumbnail_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_a0b6c97262\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019776.jpeg\", \"path\": null, \"size\": 2.9, \"width\": 156, \"height\": 156}}', 'adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_a0b6c97262', '.jpeg', 'image/jpeg', 31.15, '/uploads/adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_a0b6c97262.jpeg', NULL, 'local', NULL, '/3', '2023-06-18 11:29:54.738000', '2023-06-18 11:29:54.738000', NULL, NULL),
(93, 'banh-da-dong-luc-thai-hien-sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master.webp', NULL, NULL, 500, 500, '{\"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_77f2a3d61b.webp\", \"hash\": \"thumbnail_banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_77f2a3d61b\", \"mime\": \"image/webp\", \"name\": \"thumbnail_banh-da-dong-luc-thai-hien-sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master.webp\", \"path\": null, \"size\": 4.3, \"width\": 156, \"height\": 156}}', 'banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_77f2a3d61b', '.webp', 'image/webp', 23.30, '/uploads/banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_77f2a3d61b.webp', NULL, 'local', NULL, '/3', '2023-06-18 11:29:58.416000', '2023-06-18 11:29:58.416000', NULL, NULL),
(94, 'af21551728324ff2b2971c63247a9ba6_5f29f2a96f9549c0a75fe912d268be4c_1024x1024.webp', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_af21551728324ff2b2971c63247a9ba6_5f29f2a96f9549c0a75fe912d268be4c_1024x1024_70245d8570.webp\", \"hash\": \"small_af21551728324ff2b2971c63247a9ba6_5f29f2a96f9549c0a75fe912d268be4c_1024x1024_70245d8570\", \"mime\": \"image/webp\", \"name\": \"small_af21551728324ff2b2971c63247a9ba6_5f29f2a96f9549c0a75fe912d268be4c_1024x1024.webp\", \"path\": null, \"size\": 20.15, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_af21551728324ff2b2971c63247a9ba6_5f29f2a96f9549c0a75fe912d268be4c_1024x1024_70245d8570.webp\", \"hash\": \"thumbnail_af21551728324ff2b2971c63247a9ba6_5f29f2a96f9549c0a75fe912d268be4c_1024x1024_70245d8570\", \"mime\": \"image/webp\", \"name\": \"thumbnail_af21551728324ff2b2971c63247a9ba6_5f29f2a96f9549c0a75fe912d268be4c_1024x1024.webp\", \"path\": null, \"size\": 3.9, \"width\": 156, \"height\": 156}}', 'af21551728324ff2b2971c63247a9ba6_5f29f2a96f9549c0a75fe912d268be4c_1024x1024_70245d8570', '.webp', 'image/webp', 32.58, '/uploads/af21551728324ff2b2971c63247a9ba6_5f29f2a96f9549c0a75fe912d268be4c_1024x1024_70245d8570.webp', NULL, 'local', NULL, '/3', '2023-06-18 11:38:47.557000', '2023-06-18 11:38:47.557000', NULL, NULL),
(95, 'mizuno-alpha-select-as-p1gd236501-mau-den_0019908.jpeg', NULL, NULL, 1280, 1280, '{\"large\": {\"ext\": \".jpeg\", \"url\": \"/uploads/large_mizuno_alpha_select_as_p1gd236501_mau_den_0019908_00082c7fac.jpeg\", \"hash\": \"large_mizuno_alpha_select_as_p1gd236501_mau_den_0019908_00082c7fac\", \"mime\": \"image/jpeg\", \"name\": \"large_mizuno-alpha-select-as-p1gd236501-mau-den_0019908.jpeg\", \"path\": null, \"size\": 101.78, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_mizuno_alpha_select_as_p1gd236501_mau_den_0019908_00082c7fac.jpeg\", \"hash\": \"small_mizuno_alpha_select_as_p1gd236501_mau_den_0019908_00082c7fac\", \"mime\": \"image/jpeg\", \"name\": \"small_mizuno-alpha-select-as-p1gd236501-mau-den_0019908.jpeg\", \"path\": null, \"size\": 32.1, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_mizuno_alpha_select_as_p1gd236501_mau_den_0019908_00082c7fac.jpeg\", \"hash\": \"medium_mizuno_alpha_select_as_p1gd236501_mau_den_0019908_00082c7fac\", \"mime\": \"image/jpeg\", \"name\": \"medium_mizuno-alpha-select-as-p1gd236501-mau-den_0019908.jpeg\", \"path\": null, \"size\": 62.53, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_mizuno_alpha_select_as_p1gd236501_mau_den_0019908_00082c7fac.jpeg\", \"hash\": \"thumbnail_mizuno_alpha_select_as_p1gd236501_mau_den_0019908_00082c7fac\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mizuno-alpha-select-as-p1gd236501-mau-den_0019908.jpeg\", \"path\": null, \"size\": 4.97, \"width\": 156, \"height\": 156}}', 'mizuno_alpha_select_as_p1gd236501_mau_den_0019908_00082c7fac', '.jpeg', 'image/jpeg', 112.37, '/uploads/mizuno_alpha_select_as_p1gd236501_mau_den_0019908_00082c7fac.jpeg', NULL, 'local', NULL, '/3', '2023-06-18 11:38:53.355000', '2023-06-18 11:38:53.355000', NULL, NULL),
(96, 'banh-da-dong-luc-thai-hien-sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master.webp', NULL, NULL, 500, 500, '{\"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_d05ed21bbd.webp\", \"hash\": \"thumbnail_banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_d05ed21bbd\", \"mime\": \"image/webp\", \"name\": \"thumbnail_banh-da-dong-luc-thai-hien-sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master.webp\", \"path\": null, \"size\": 4.3, \"width\": 156, \"height\": 156}}', 'banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_d05ed21bbd', '.webp', 'image/webp', 23.30, '/uploads/banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_d05ed21bbd.webp', NULL, 'local', NULL, '/3', '2023-06-18 11:41:00.041000', '2023-06-18 11:41:00.041000', NULL, NULL),
(97, 'da36d757937c579f5a0edc271414ca72.jpg', NULL, NULL, 920, 920, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_da36d757937c579f5a0edc271414ca72_f2e31981fc.jpg\", \"hash\": \"small_da36d757937c579f5a0edc271414ca72_f2e31981fc\", \"mime\": \"image/jpeg\", \"name\": \"small_da36d757937c579f5a0edc271414ca72.jpg\", \"path\": null, \"size\": 49.33, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_da36d757937c579f5a0edc271414ca72_f2e31981fc.jpg\", \"hash\": \"medium_da36d757937c579f5a0edc271414ca72_f2e31981fc\", \"mime\": \"image/jpeg\", \"name\": \"medium_da36d757937c579f5a0edc271414ca72.jpg\", \"path\": null, \"size\": 96.13, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_da36d757937c579f5a0edc271414ca72_f2e31981fc.jpg\", \"hash\": \"thumbnail_da36d757937c579f5a0edc271414ca72_f2e31981fc\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_da36d757937c579f5a0edc271414ca72.jpg\", \"path\": null, \"size\": 7.4, \"width\": 156, \"height\": 156}}', 'da36d757937c579f5a0edc271414ca72_f2e31981fc', '.jpg', 'image/jpeg', 136.04, '/uploads/da36d757937c579f5a0edc271414ca72_f2e31981fc.jpg', NULL, 'local', NULL, '/3', '2023-06-18 11:41:05.409000', '2023-06-18 11:41:05.409000', NULL, NULL),
(98, 'bongro3.jpg', NULL, NULL, NULL, NULL, NULL, 'bongro3_1203c771ee', '.jpg', 'image/jpeg', 23.62, '/uploads/bongro3_1203c771ee.jpg', NULL, 'local', NULL, '/3', '2023-06-18 15:41:40.577000', '2023-06-18 15:41:40.577000', NULL, NULL),
(99, 'bongro1.jpg', NULL, NULL, NULL, NULL, NULL, 'bongro1_5477c88f99', '.jpg', 'image/jpeg', 28.80, '/uploads/bongro1_5477c88f99.jpg', NULL, 'local', NULL, '/3', '2023-06-18 15:41:45.818000', '2023-06-18 15:41:45.818000', NULL, NULL),
(100, 'bongro2.jpg', NULL, NULL, NULL, NULL, NULL, 'bongro2_81ede360a6', '.jpg', 'image/jpeg', 25.10, '/uploads/bongro2_81ede360a6.jpg', NULL, 'local', NULL, '/3', '2023-06-18 15:41:50.191000', '2023-06-18 15:41:50.191000', NULL, NULL),
(101, 'bongro2.jpg', NULL, NULL, NULL, NULL, NULL, 'bongro2_74af2ea7ce', '.jpg', 'image/jpeg', 25.10, '/uploads/bongro2_74af2ea7ce.jpg', NULL, 'local', NULL, '/3', '2023-06-18 15:42:07.797000', '2023-06-18 15:42:07.797000', NULL, NULL),
(102, 'bongro2.jpg', NULL, NULL, NULL, NULL, NULL, 'bongro2_7455e55586', '.jpg', 'image/jpeg', 25.10, '/uploads/bongro2_7455e55586.jpg', NULL, 'local', NULL, '/3', '2023-06-19 08:53:12.392000', '2023-06-19 08:53:12.392000', NULL, NULL),
(103, 'banh-da-dong-luc-thai-hien-sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master.webp', NULL, NULL, 500, 500, '{\"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_aaaca2803e.webp\", \"hash\": \"thumbnail_banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_aaaca2803e\", \"mime\": \"image/webp\", \"name\": \"thumbnail_banh-da-dong-luc-thai-hien-sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master.webp\", \"path\": null, \"size\": 4.3, \"width\": 156, \"height\": 156}}', 'banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_aaaca2803e', '.webp', 'image/webp', 23.30, '/uploads/banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_aaaca2803e.webp', NULL, 'local', NULL, '/3', '2023-06-22 17:39:22.346000', '2023-06-22 17:39:22.346000', NULL, NULL),
(104, 'adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019776.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_fb90f2d1e1.jpeg\", \"hash\": \"small_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_fb90f2d1e1\", \"mime\": \"image/jpeg\", \"name\": \"small_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019776.jpeg\", \"path\": null, \"size\": 16.34, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_fb90f2d1e1.jpeg\", \"hash\": \"medium_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_fb90f2d1e1\", \"mime\": \"image/jpeg\", \"name\": \"medium_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019776.jpeg\", \"path\": null, \"size\": 30.43, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_fb90f2d1e1.jpeg\", \"hash\": \"thumbnail_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_fb90f2d1e1\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019776.jpeg\", \"path\": null, \"size\": 2.9, \"width\": 156, \"height\": 156}}', 'adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_fb90f2d1e1', '.jpeg', 'image/jpeg', 31.15, '/uploads/adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019776_fb90f2d1e1.jpeg', NULL, 'local', NULL, '/3', '2023-06-22 17:39:28.899000', '2023-06-22 17:39:28.899000', NULL, NULL),
(105, '7900d558c0076dd7dd8a691f998d7868.jpg.webp', NULL, NULL, 750, 750, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_7900d558c0076dd7dd8a691f998d7868_jpg_6ab961bedb.webp\", \"hash\": \"small_7900d558c0076dd7dd8a691f998d7868_jpg_6ab961bedb\", \"mime\": \"image/webp\", \"name\": \"small_7900d558c0076dd7dd8a691f998d7868.jpg.webp\", \"path\": null, \"size\": 18.03, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_7900d558c0076dd7dd8a691f998d7868_jpg_6ab961bedb.webp\", \"hash\": \"thumbnail_7900d558c0076dd7dd8a691f998d7868_jpg_6ab961bedb\", \"mime\": \"image/webp\", \"name\": \"thumbnail_7900d558c0076dd7dd8a691f998d7868.jpg.webp\", \"path\": null, \"size\": 4.02, \"width\": 156, \"height\": 156}}', '7900d558c0076dd7dd8a691f998d7868_jpg_6ab961bedb', '.webp', 'image/webp', 34.84, '/uploads/7900d558c0076dd7dd8a691f998d7868_jpg_6ab961bedb.webp', NULL, 'local', NULL, '/3', '2023-06-22 17:39:32.269000', '2023-06-22 17:39:32.269000', NULL, NULL),
(106, 'banh-da-dong-luc-thai-hien-sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master.webp', NULL, NULL, 500, 500, '{\"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_66c42afdfb.webp\", \"hash\": \"thumbnail_banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_66c42afdfb\", \"mime\": \"image/webp\", \"name\": \"thumbnail_banh-da-dong-luc-thai-hien-sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master.webp\", \"path\": null, \"size\": 4.3, \"width\": 156, \"height\": 156}}', 'banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_66c42afdfb', '.webp', 'image/webp', 23.30, '/uploads/banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_66c42afdfb.webp', NULL, 'local', NULL, '/3', '2023-06-22 17:42:11.206000', '2023-06-22 17:42:11.206000', NULL, NULL),
(107, 'adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019778.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_8f22edfc2c.jpeg\", \"hash\": \"small_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_8f22edfc2c\", \"mime\": \"image/jpeg\", \"name\": \"small_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019778.jpeg\", \"path\": null, \"size\": 17.13, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_8f22edfc2c.jpeg\", \"hash\": \"medium_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_8f22edfc2c\", \"mime\": \"image/jpeg\", \"name\": \"medium_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019778.jpeg\", \"path\": null, \"size\": 31.31, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_8f22edfc2c.jpeg\", \"hash\": \"thumbnail_adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_8f22edfc2c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_adidas-x-speedportal1-tf-own-your-football-hong-den-gz2440_0019778.jpeg\", \"path\": null, \"size\": 3.45, \"width\": 156, \"height\": 156}}', 'adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_8f22edfc2c', '.jpeg', 'image/jpeg', 32.00, '/uploads/adidas_x_speedportal1_tf_own_your_football_hong_den_gz2440_0019778_8f22edfc2c.jpeg', NULL, 'local', NULL, '/3', '2023-06-22 17:42:13.606000', '2023-06-22 17:42:13.606000', NULL, NULL),
(108, 'banh-da-dong-luc-thai-hien-sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master.webp', NULL, NULL, 500, 500, '{\"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_3d5a1d9e9e.webp\", \"hash\": \"thumbnail_banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_3d5a1d9e9e\", \"mime\": \"image/webp\", \"name\": \"thumbnail_banh-da-dong-luc-thai-hien-sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master.webp\", \"path\": null, \"size\": 4.3, \"width\": 156, \"height\": 156}}', 'banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_3d5a1d9e9e', '.webp', 'image/webp', 23.30, '/uploads/banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_3d5a1d9e9e.webp', NULL, 'local', NULL, '/3', '2023-06-22 17:43:41.514000', '2023-06-22 17:43:41.514000', NULL, NULL),
(109, '7900d558c0076dd7dd8a691f998d7868.jpg.webp', NULL, NULL, 750, 750, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_7900d558c0076dd7dd8a691f998d7868_jpg_560047105d.webp\", \"hash\": \"small_7900d558c0076dd7dd8a691f998d7868_jpg_560047105d\", \"mime\": \"image/webp\", \"name\": \"small_7900d558c0076dd7dd8a691f998d7868.jpg.webp\", \"path\": null, \"size\": 18.03, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_7900d558c0076dd7dd8a691f998d7868_jpg_560047105d.webp\", \"hash\": \"thumbnail_7900d558c0076dd7dd8a691f998d7868_jpg_560047105d\", \"mime\": \"image/webp\", \"name\": \"thumbnail_7900d558c0076dd7dd8a691f998d7868.jpg.webp\", \"path\": null, \"size\": 4.02, \"width\": 156, \"height\": 156}}', '7900d558c0076dd7dd8a691f998d7868_jpg_560047105d', '.webp', 'image/webp', 34.84, '/uploads/7900d558c0076dd7dd8a691f998d7868_jpg_560047105d.webp', NULL, 'local', NULL, '/3', '2023-06-22 17:43:44.553000', '2023-06-22 17:43:44.553000', NULL, NULL),
(110, '7900d558c0076dd7dd8a691f998d7868.jpg.webp', NULL, NULL, 750, 750, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_7900d558c0076dd7dd8a691f998d7868_jpg_a1fc3a2562.webp\", \"hash\": \"small_7900d558c0076dd7dd8a691f998d7868_jpg_a1fc3a2562\", \"mime\": \"image/webp\", \"name\": \"small_7900d558c0076dd7dd8a691f998d7868.jpg.webp\", \"path\": null, \"size\": 18.03, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_7900d558c0076dd7dd8a691f998d7868_jpg_a1fc3a2562.webp\", \"hash\": \"thumbnail_7900d558c0076dd7dd8a691f998d7868_jpg_a1fc3a2562\", \"mime\": \"image/webp\", \"name\": \"thumbnail_7900d558c0076dd7dd8a691f998d7868.jpg.webp\", \"path\": null, \"size\": 4.02, \"width\": 156, \"height\": 156}}', '7900d558c0076dd7dd8a691f998d7868_jpg_a1fc3a2562', '.webp', 'image/webp', 34.84, '/uploads/7900d558c0076dd7dd8a691f998d7868_jpg_a1fc3a2562.webp', NULL, 'local', NULL, '/3', '2023-06-22 17:45:01.766000', '2023-06-22 17:45:01.766000', NULL, NULL),
(111, 'banh-da-dong-luc-thai-hien-sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master.webp', NULL, NULL, 500, 500, '{\"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_701626810a.webp\", \"hash\": \"thumbnail_banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_701626810a\", \"mime\": \"image/webp\", \"name\": \"thumbnail_banh-da-dong-luc-thai-hien-sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master.webp\", \"path\": null, \"size\": 4.3, \"width\": 156, \"height\": 156}}', 'banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_701626810a', '.webp', 'image/webp', 23.30, '/uploads/banh_da_dong_luc_thai_hien_sport6_81cd23bd1bd94d54843cfb1a3a179d1a_master_701626810a.webp', NULL, 'local', NULL, '/3', '2023-06-22 17:45:03.745000', '2023-06-22 17:45:03.745000', NULL, NULL),
(112, 'adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018967.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018967_d2bcf9ffba.jpeg\", \"hash\": \"small_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018967_d2bcf9ffba\", \"mime\": \"image/jpeg\", \"name\": \"small_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018967.jpeg\", \"path\": null, \"size\": 13.66, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018967_d2bcf9ffba.jpeg\", \"hash\": \"medium_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018967_d2bcf9ffba\", \"mime\": \"image/jpeg\", \"name\": \"medium_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018967.jpeg\", \"path\": null, \"size\": 27.32, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018967_d2bcf9ffba.jpeg\", \"hash\": \"thumbnail_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018967_d2bcf9ffba\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018967.jpeg\", \"path\": null, \"size\": 2.34, \"width\": 156, \"height\": 156}}', 'adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018967_d2bcf9ffba', '.jpeg', 'image/jpeg', 30.16, '/uploads/adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018967_d2bcf9ffba.jpeg', NULL, 'local', NULL, '/3', '2023-06-22 17:45:26.533000', '2023-06-22 17:45:26.533000', NULL, NULL),
(113, 'adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018968.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018968_bb0c73f9b1.jpeg\", \"hash\": \"small_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018968_bb0c73f9b1\", \"mime\": \"image/jpeg\", \"name\": \"small_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018968.jpeg\", \"path\": null, \"size\": 14.36, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018968_bb0c73f9b1.jpeg\", \"hash\": \"medium_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018968_bb0c73f9b1\", \"mime\": \"image/jpeg\", \"name\": \"medium_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018968.jpeg\", \"path\": null, \"size\": 28.73, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018968_bb0c73f9b1.jpeg\", \"hash\": \"thumbnail_adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018968_bb0c73f9b1\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_adidas-x-speedportal1-tf-al-rihla-xanh-ngoc-gw8972_0018968.jpeg\", \"path\": null, \"size\": 2.4, \"width\": 156, \"height\": 156}}', 'adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018968_bb0c73f9b1', '.jpeg', 'image/jpeg', 32.08, '/uploads/adidas_x_speedportal1_tf_al_rihla_xanh_ngoc_gw8972_0018968_bb0c73f9b1.jpeg', NULL, 'local', NULL, '/3', '2023-06-22 17:45:28.749000', '2023-06-22 17:45:28.749000', NULL, NULL),
(114, '2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024.webp', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024_3a0bc4e24f.webp\", \"hash\": \"small_2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024_3a0bc4e24f\", \"mime\": \"image/webp\", \"name\": \"small_2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024.webp\", \"path\": null, \"size\": 13.28, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024_3a0bc4e24f.webp\", \"hash\": \"thumbnail_2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024_3a0bc4e24f\", \"mime\": \"image/webp\", \"name\": \"thumbnail_2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024.webp\", \"path\": null, \"size\": 2.84, \"width\": 156, \"height\": 156}}', '2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024_3a0bc4e24f', '.webp', 'image/webp', 20.43, '/uploads/2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024_3a0bc4e24f.webp', NULL, 'local', NULL, '/3', '2023-06-23 07:53:09.258000', '2023-06-23 07:53:09.258000', NULL, NULL),
(115, '0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024.webp', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_ffde438cbd.webp\", \"hash\": \"small_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_ffde438cbd\", \"mime\": \"image/webp\", \"name\": \"small_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024.webp\", \"path\": null, \"size\": 18.67, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_ffde438cbd.webp\", \"hash\": \"thumbnail_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_ffde438cbd\", \"mime\": \"image/webp\", \"name\": \"thumbnail_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024.webp\", \"path\": null, \"size\": 3.77, \"width\": 156, \"height\": 156}}', '0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_ffde438cbd', '.webp', 'image/webp', 30.60, '/uploads/0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_ffde438cbd.webp', NULL, 'local', NULL, '/3', '2023-06-23 07:53:13.975000', '2023-06-23 07:53:13.975000', NULL, NULL),
(116, 'bfc250ee668ad5a24ce5e31af0e7345f.jpg.webp', NULL, NULL, 750, 750, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_bfc250ee668ad5a24ce5e31af0e7345f_jpg_71b0ddce35.webp\", \"hash\": \"small_bfc250ee668ad5a24ce5e31af0e7345f_jpg_71b0ddce35\", \"mime\": \"image/webp\", \"name\": \"small_bfc250ee668ad5a24ce5e31af0e7345f.jpg.webp\", \"path\": null, \"size\": 19.66, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_bfc250ee668ad5a24ce5e31af0e7345f_jpg_71b0ddce35.webp\", \"hash\": \"thumbnail_bfc250ee668ad5a24ce5e31af0e7345f_jpg_71b0ddce35\", \"mime\": \"image/webp\", \"name\": \"thumbnail_bfc250ee668ad5a24ce5e31af0e7345f.jpg.webp\", \"path\": null, \"size\": 4.24, \"width\": 156, \"height\": 156}}', 'bfc250ee668ad5a24ce5e31af0e7345f_jpg_71b0ddce35', '.webp', 'image/webp', 36.07, '/uploads/bfc250ee668ad5a24ce5e31af0e7345f_jpg_71b0ddce35.webp', NULL, 'local', NULL, '/3', '2023-06-23 07:55:37.752000', '2023-06-23 07:55:37.752000', NULL, NULL),
(117, 'gang-tay-thu-mon-zocker-gloves-edwin-denxanh-chuoi_0019157.jpeg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_chuoi_0019157_ecf7b50cf6.jpeg\", \"hash\": \"small_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_chuoi_0019157_ecf7b50cf6\", \"mime\": \"image/jpeg\", \"name\": \"small_gang-tay-thu-mon-zocker-gloves-edwin-denxanh-chuoi_0019157.jpeg\", \"path\": null, \"size\": 32.5, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_chuoi_0019157_ecf7b50cf6.jpeg\", \"hash\": \"medium_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_chuoi_0019157_ecf7b50cf6\", \"mime\": \"image/jpeg\", \"name\": \"medium_gang-tay-thu-mon-zocker-gloves-edwin-denxanh-chuoi_0019157.jpeg\", \"path\": null, \"size\": 58.34, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_chuoi_0019157_ecf7b50cf6.jpeg\", \"hash\": \"thumbnail_gang_tay_thu_mon_zocker_gloves_edwin_denxanh_chuoi_0019157_ecf7b50cf6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_gang-tay-thu-mon-zocker-gloves-edwin-denxanh-chuoi_0019157.jpeg\", \"path\": null, \"size\": 5.78, \"width\": 156, \"height\": 156}}', 'gang_tay_thu_mon_zocker_gloves_edwin_denxanh_chuoi_0019157_ecf7b50cf6', '.jpeg', 'image/jpeg', 58.41, '/uploads/gang_tay_thu_mon_zocker_gloves_edwin_denxanh_chuoi_0019157_ecf7b50cf6.jpeg', NULL, 'local', NULL, '/3', '2023-06-23 07:55:41.242000', '2023-06-23 07:55:41.242000', NULL, NULL),
(118, '0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024.webp', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_0f7f7906ad.webp\", \"hash\": \"small_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_0f7f7906ad\", \"mime\": \"image/webp\", \"name\": \"small_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024.webp\", \"path\": null, \"size\": 18.67, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_0f7f7906ad.webp\", \"hash\": \"thumbnail_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_0f7f7906ad\", \"mime\": \"image/webp\", \"name\": \"thumbnail_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024.webp\", \"path\": null, \"size\": 3.77, \"width\": 156, \"height\": 156}}', '0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_0f7f7906ad', '.webp', 'image/webp', 30.60, '/uploads/0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_0f7f7906ad.webp', NULL, 'local', NULL, '/3', '2023-06-23 11:26:09.540000', '2023-06-23 11:26:09.540000', NULL, NULL);
INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(119, '0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024.webp', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_30f2ad8231.webp\", \"hash\": \"small_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_30f2ad8231\", \"mime\": \"image/webp\", \"name\": \"small_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024.webp\", \"path\": null, \"size\": 18.67, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_30f2ad8231.webp\", \"hash\": \"thumbnail_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_30f2ad8231\", \"mime\": \"image/webp\", \"name\": \"thumbnail_0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024.webp\", \"path\": null, \"size\": 3.77, \"width\": 156, \"height\": 156}}', '0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_30f2ad8231', '.webp', 'image/webp', 30.60, '/uploads/0b3bd5dd4fdb4149bac5a2464bf3b859_c3e7f73bea2542db911be758b084be3a_1024x1024_30f2ad8231.webp', NULL, 'local', NULL, '/3', '2023-06-23 11:26:12.038000', '2023-06-23 11:26:12.038000', NULL, NULL),
(120, '2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024.webp', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024_5981aa5011.webp\", \"hash\": \"small_2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024_5981aa5011\", \"mime\": \"image/webp\", \"name\": \"small_2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024.webp\", \"path\": null, \"size\": 13.28, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024_5981aa5011.webp\", \"hash\": \"thumbnail_2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024_5981aa5011\", \"mime\": \"image/webp\", \"name\": \"thumbnail_2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024.webp\", \"path\": null, \"size\": 2.84, \"width\": 156, \"height\": 156}}', '2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024_5981aa5011', '.webp', 'image/webp', 20.43, '/uploads/2a1fbf3117b242cdb6cdc6335f95294a_f8c175548ba94c10b2b30c51377e6601_1024x1024_5981aa5011.webp', NULL, 'local', NULL, '/3', '2023-06-23 11:26:14.783000', '2023-06-23 11:26:14.783000', NULL, NULL),
(121, '21-500x505.jpg', NULL, NULL, 500, 505, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_21_500x505_c2962ea62d.jpg\", \"hash\": \"small_21_500x505_c2962ea62d\", \"mime\": \"image/jpeg\", \"name\": \"small_21-500x505.jpg\", \"path\": null, \"size\": 38.77, \"width\": 495, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_21_500x505_c2962ea62d.jpg\", \"hash\": \"thumbnail_21_500x505_c2962ea62d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_21-500x505.jpg\", \"path\": null, \"size\": 6.75, \"width\": 155, \"height\": 156}}', '21_500x505_c2962ea62d', '.jpg', 'image/jpeg', 39.53, '/uploads/21_500x505_c2962ea62d.jpg', NULL, 'local', NULL, '/3', '2023-06-23 11:26:19.128000', '2023-06-23 11:26:19.128000', NULL, NULL),
(122, 'vot-yonex-nanoflare-001-acf-anh-dai-dien-100x100.jpg', NULL, NULL, 100, 100, NULL, 'vot_yonex_nanoflare_001_acf_anh_dai_dien_100x100_fa8dc2e736', '.jpg', 'image/jpeg', 1.94, '/uploads/vot_yonex_nanoflare_001_acf_anh_dai_dien_100x100_fa8dc2e736.jpg', NULL, 'local', NULL, '/4', '2023-06-28 10:41:31.031000', '2023-06-28 10:41:31.031000', 1, 1),
(123, 'vot-yonex-nanoflare-001-clear-mat-5.jpg', NULL, NULL, 2000, 2666, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_vot_yonex_nanoflare_001_clear_mat_5_0a59af98d7.jpg\", \"hash\": \"large_vot_yonex_nanoflare_001_clear_mat_5_0a59af98d7\", \"mime\": \"image/jpeg\", \"name\": \"large_vot-yonex-nanoflare-001-clear-mat-5.jpg\", \"path\": null, \"size\": 40.99, \"width\": 750, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_vot_yonex_nanoflare_001_clear_mat_5_0a59af98d7.jpg\", \"hash\": \"small_vot_yonex_nanoflare_001_clear_mat_5_0a59af98d7\", \"mime\": \"image/jpeg\", \"name\": \"small_vot-yonex-nanoflare-001-clear-mat-5.jpg\", \"path\": null, \"size\": 14.92, \"width\": 375, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_vot_yonex_nanoflare_001_clear_mat_5_0a59af98d7.jpg\", \"hash\": \"medium_vot_yonex_nanoflare_001_clear_mat_5_0a59af98d7\", \"mime\": \"image/jpeg\", \"name\": \"medium_vot-yonex-nanoflare-001-clear-mat-5.jpg\", \"path\": null, \"size\": 27.15, \"width\": 563, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_vot_yonex_nanoflare_001_clear_mat_5_0a59af98d7.jpg\", \"hash\": \"thumbnail_vot_yonex_nanoflare_001_clear_mat_5_0a59af98d7\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_vot-yonex-nanoflare-001-clear-mat-5.jpg\", \"path\": null, \"size\": 2.82, \"width\": 117, \"height\": 156}}', 'vot_yonex_nanoflare_001_clear_mat_5_0a59af98d7', '.jpg', 'image/jpeg', 173.50, '/uploads/vot_yonex_nanoflare_001_clear_mat_5_0a59af98d7.jpg', NULL, 'local', NULL, '/4', '2023-06-28 10:41:31.442000', '2023-06-28 10:41:31.442000', 1, 1),
(124, 'vot-yonex-nanoflare-001-clear-anh-dai-dien-8.jpg', NULL, NULL, 3000, 3000, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_vot_yonex_nanoflare_001_clear_anh_dai_dien_8_05f0fb5d04.jpg\", \"hash\": \"large_vot_yonex_nanoflare_001_clear_anh_dai_dien_8_05f0fb5d04\", \"mime\": \"image/jpeg\", \"name\": \"large_vot-yonex-nanoflare-001-clear-anh-dai-dien-8.jpg\", \"path\": null, \"size\": 40.87, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_vot_yonex_nanoflare_001_clear_anh_dai_dien_8_05f0fb5d04.jpg\", \"hash\": \"small_vot_yonex_nanoflare_001_clear_anh_dai_dien_8_05f0fb5d04\", \"mime\": \"image/jpeg\", \"name\": \"small_vot-yonex-nanoflare-001-clear-anh-dai-dien-8.jpg\", \"path\": null, \"size\": 14.95, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_vot_yonex_nanoflare_001_clear_anh_dai_dien_8_05f0fb5d04.jpg\", \"hash\": \"medium_vot_yonex_nanoflare_001_clear_anh_dai_dien_8_05f0fb5d04\", \"mime\": \"image/jpeg\", \"name\": \"medium_vot-yonex-nanoflare-001-clear-anh-dai-dien-8.jpg\", \"path\": null, \"size\": 26.6, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_vot_yonex_nanoflare_001_clear_anh_dai_dien_8_05f0fb5d04.jpg\", \"hash\": \"thumbnail_vot_yonex_nanoflare_001_clear_anh_dai_dien_8_05f0fb5d04\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_vot-yonex-nanoflare-001-clear-anh-dai-dien-8.jpg\", \"path\": null, \"size\": 2.88, \"width\": 156, \"height\": 156}}', 'vot_yonex_nanoflare_001_clear_anh_dai_dien_8_05f0fb5d04', '.jpg', 'image/jpeg', 205.85, '/uploads/vot_yonex_nanoflare_001_clear_anh_dai_dien_8_05f0fb5d04.jpg', NULL, 'local', NULL, '/4', '2023-06-28 10:41:31.561000', '2023-06-28 10:41:31.561000', 1, 1),
(125, 'vot-yonex-nanoflare-001-clear-ten-4.jpg', NULL, NULL, 2000, 2667, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_vot_yonex_nanoflare_001_clear_ten_4_63feeff95a.jpg\", \"hash\": \"large_vot_yonex_nanoflare_001_clear_ten_4_63feeff95a\", \"mime\": \"image/jpeg\", \"name\": \"large_vot-yonex-nanoflare-001-clear-ten-4.jpg\", \"path\": null, \"size\": 28.25, \"width\": 750, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_vot_yonex_nanoflare_001_clear_ten_4_63feeff95a.jpg\", \"hash\": \"small_vot_yonex_nanoflare_001_clear_ten_4_63feeff95a\", \"mime\": \"image/jpeg\", \"name\": \"small_vot-yonex-nanoflare-001-clear-ten-4.jpg\", \"path\": null, \"size\": 9.93, \"width\": 375, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_vot_yonex_nanoflare_001_clear_ten_4_63feeff95a.jpg\", \"hash\": \"medium_vot_yonex_nanoflare_001_clear_ten_4_63feeff95a\", \"mime\": \"image/jpeg\", \"name\": \"medium_vot-yonex-nanoflare-001-clear-ten-4.jpg\", \"path\": null, \"size\": 18.45, \"width\": 563, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_vot_yonex_nanoflare_001_clear_ten_4_63feeff95a.jpg\", \"hash\": \"thumbnail_vot_yonex_nanoflare_001_clear_ten_4_63feeff95a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_vot-yonex-nanoflare-001-clear-ten-4.jpg\", \"path\": null, \"size\": 1.96, \"width\": 117, \"height\": 156}}', 'vot_yonex_nanoflare_001_clear_ten_4_63feeff95a', '.jpg', 'image/jpeg', 138.87, '/uploads/vot_yonex_nanoflare_001_clear_ten_4_63feeff95a.jpg', NULL, 'local', NULL, '/4', '2023-06-28 10:41:31.663000', '2023-06-28 10:41:31.663000', 1, 1),
(126, 'vot-yonex-nanoflare-001-clear-thong-so-1.jpg', NULL, NULL, 2000, 2667, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_vot_yonex_nanoflare_001_clear_thong_so_1_4c2269b6ed.jpg\", \"hash\": \"large_vot_yonex_nanoflare_001_clear_thong_so_1_4c2269b6ed\", \"mime\": \"image/jpeg\", \"name\": \"large_vot-yonex-nanoflare-001-clear-thong-so-1.jpg\", \"path\": null, \"size\": 33.76, \"width\": 750, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_vot_yonex_nanoflare_001_clear_thong_so_1_4c2269b6ed.jpg\", \"hash\": \"small_vot_yonex_nanoflare_001_clear_thong_so_1_4c2269b6ed\", \"mime\": \"image/jpeg\", \"name\": \"small_vot-yonex-nanoflare-001-clear-thong-so-1.jpg\", \"path\": null, \"size\": 10.98, \"width\": 375, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_vot_yonex_nanoflare_001_clear_thong_so_1_4c2269b6ed.jpg\", \"hash\": \"medium_vot_yonex_nanoflare_001_clear_thong_so_1_4c2269b6ed\", \"mime\": \"image/jpeg\", \"name\": \"medium_vot-yonex-nanoflare-001-clear-thong-so-1.jpg\", \"path\": null, \"size\": 21.14, \"width\": 563, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_vot_yonex_nanoflare_001_clear_thong_so_1_4c2269b6ed.jpg\", \"hash\": \"thumbnail_vot_yonex_nanoflare_001_clear_thong_so_1_4c2269b6ed\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_vot-yonex-nanoflare-001-clear-thong-so-1.jpg\", \"path\": null, \"size\": 1.97, \"width\": 117, \"height\": 156}}', 'vot_yonex_nanoflare_001_clear_thong_so_1_4c2269b6ed', '.jpg', 'image/jpeg', 186.74, '/uploads/vot_yonex_nanoflare_001_clear_thong_so_1_4c2269b6ed.jpg', NULL, 'local', NULL, '/4', '2023-06-28 10:41:31.677000', '2023-06-28 10:41:31.677000', 1, 1),
(127, '09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c.webp', NULL, NULL, 1500, 1500, '{\"large\": {\"ext\": \".webp\", \"url\": \"/uploads/large_09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c_016a8dd7c1.webp\", \"hash\": \"large_09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c_016a8dd7c1\", \"mime\": \"image/webp\", \"name\": \"large_09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c.webp\", \"path\": null, \"size\": 30.8, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c_016a8dd7c1.webp\", \"hash\": \"small_09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c_016a8dd7c1\", \"mime\": \"image/webp\", \"name\": \"small_09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c.webp\", \"path\": null, \"size\": 10.2, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c_016a8dd7c1.webp\", \"hash\": \"medium_09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c_016a8dd7c1\", \"mime\": \"image/webp\", \"name\": \"medium_09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c.webp\", \"path\": null, \"size\": 20.51, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c_016a8dd7c1.webp\", \"hash\": \"thumbnail_09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c_016a8dd7c1\", \"mime\": \"image/webp\", \"name\": \"thumbnail_09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c.webp\", \"path\": null, \"size\": 1.42, \"width\": 156, \"height\": 156}}', '09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c_016a8dd7c1', '.webp', 'image/webp', 87.22, '/uploads/09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c_016a8dd7c1.webp', NULL, 'local', NULL, '/3', '2023-06-28 10:52:47.037000', '2023-06-28 10:52:47.037000', NULL, NULL),
(128, '16ea84af5c1e9e3aba7cfee02e556e6f_a56a8773b00e4f5eab8d9036868024ca.webp', NULL, NULL, 1500, 1500, '{\"large\": {\"ext\": \".webp\", \"url\": \"/uploads/large_16ea84af5c1e9e3aba7cfee02e556e6f_a56a8773b00e4f5eab8d9036868024ca_00af38c41b.webp\", \"hash\": \"large_16ea84af5c1e9e3aba7cfee02e556e6f_a56a8773b00e4f5eab8d9036868024ca_00af38c41b\", \"mime\": \"image/webp\", \"name\": \"large_16ea84af5c1e9e3aba7cfee02e556e6f_a56a8773b00e4f5eab8d9036868024ca.webp\", \"path\": null, \"size\": 34.18, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_16ea84af5c1e9e3aba7cfee02e556e6f_a56a8773b00e4f5eab8d9036868024ca_00af38c41b.webp\", \"hash\": \"small_16ea84af5c1e9e3aba7cfee02e556e6f_a56a8773b00e4f5eab8d9036868024ca_00af38c41b\", \"mime\": \"image/webp\", \"name\": \"small_16ea84af5c1e9e3aba7cfee02e556e6f_a56a8773b00e4f5eab8d9036868024ca.webp\", \"path\": null, \"size\": 9.56, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_16ea84af5c1e9e3aba7cfee02e556e6f_a56a8773b00e4f5eab8d9036868024ca_00af38c41b.webp\", \"hash\": \"medium_16ea84af5c1e9e3aba7cfee02e556e6f_a56a8773b00e4f5eab8d9036868024ca_00af38c41b\", \"mime\": \"image/webp\", \"name\": \"medium_16ea84af5c1e9e3aba7cfee02e556e6f_a56a8773b00e4f5eab8d9036868024ca.webp\", \"path\": null, \"size\": 21.23, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_16ea84af5c1e9e3aba7cfee02e556e6f_a56a8773b00e4f5eab8d9036868024ca_00af38c41b.webp\", \"hash\": \"thumbnail_16ea84af5c1e9e3aba7cfee02e556e6f_a56a8773b00e4f5eab8d9036868024ca_00af38c41b\", \"mime\": \"image/webp\", \"name\": \"thumbnail_16ea84af5c1e9e3aba7cfee02e556e6f_a56a8773b00e4f5eab8d9036868024ca.webp\", \"path\": null, \"size\": 1.2, \"width\": 156, \"height\": 156}}', '16ea84af5c1e9e3aba7cfee02e556e6f_a56a8773b00e4f5eab8d9036868024ca_00af38c41b', '.webp', 'image/webp', 99.68, '/uploads/16ea84af5c1e9e3aba7cfee02e556e6f_a56a8773b00e4f5eab8d9036868024ca_00af38c41b.webp', NULL, 'local', NULL, '/3', '2023-06-28 10:54:03.489000', '2023-06-28 10:54:03.489000', NULL, NULL),
(129, 'e0156106ada2fc07c9412f17fa0b8355_78e8d28ea71a4a2daf483e6e535aa75e.webp', NULL, NULL, 1500, 1500, '{\"large\": {\"ext\": \".webp\", \"url\": \"/uploads/large_e0156106ada2fc07c9412f17fa0b8355_78e8d28ea71a4a2daf483e6e535aa75e_e80018b086.webp\", \"hash\": \"large_e0156106ada2fc07c9412f17fa0b8355_78e8d28ea71a4a2daf483e6e535aa75e_e80018b086\", \"mime\": \"image/webp\", \"name\": \"large_e0156106ada2fc07c9412f17fa0b8355_78e8d28ea71a4a2daf483e6e535aa75e.webp\", \"path\": null, \"size\": 33.51, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_e0156106ada2fc07c9412f17fa0b8355_78e8d28ea71a4a2daf483e6e535aa75e_e80018b086.webp\", \"hash\": \"small_e0156106ada2fc07c9412f17fa0b8355_78e8d28ea71a4a2daf483e6e535aa75e_e80018b086\", \"mime\": \"image/webp\", \"name\": \"small_e0156106ada2fc07c9412f17fa0b8355_78e8d28ea71a4a2daf483e6e535aa75e.webp\", \"path\": null, \"size\": 9.96, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_e0156106ada2fc07c9412f17fa0b8355_78e8d28ea71a4a2daf483e6e535aa75e_e80018b086.webp\", \"hash\": \"medium_e0156106ada2fc07c9412f17fa0b8355_78e8d28ea71a4a2daf483e6e535aa75e_e80018b086\", \"mime\": \"image/webp\", \"name\": \"medium_e0156106ada2fc07c9412f17fa0b8355_78e8d28ea71a4a2daf483e6e535aa75e.webp\", \"path\": null, \"size\": 20.74, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_e0156106ada2fc07c9412f17fa0b8355_78e8d28ea71a4a2daf483e6e535aa75e_e80018b086.webp\", \"hash\": \"thumbnail_e0156106ada2fc07c9412f17fa0b8355_78e8d28ea71a4a2daf483e6e535aa75e_e80018b086\", \"mime\": \"image/webp\", \"name\": \"thumbnail_e0156106ada2fc07c9412f17fa0b8355_78e8d28ea71a4a2daf483e6e535aa75e.webp\", \"path\": null, \"size\": 1.65, \"width\": 156, \"height\": 156}}', 'e0156106ada2fc07c9412f17fa0b8355_78e8d28ea71a4a2daf483e6e535aa75e_e80018b086', '.webp', 'image/webp', 99.37, '/uploads/e0156106ada2fc07c9412f17fa0b8355_78e8d28ea71a4a2daf483e6e535aa75e_e80018b086.webp', NULL, 'local', NULL, '/3', '2023-06-28 10:54:07.164000', '2023-06-28 10:54:07.164000', NULL, NULL),
(130, '6527840fda1074778f4e8c89d4f960db_c5e59385801d45eda3d2e62fa21aa0c0.webp', NULL, NULL, 1500, 1500, '{\"large\": {\"ext\": \".webp\", \"url\": \"/uploads/large_6527840fda1074778f4e8c89d4f960db_c5e59385801d45eda3d2e62fa21aa0c0_2f3f6a245b.webp\", \"hash\": \"large_6527840fda1074778f4e8c89d4f960db_c5e59385801d45eda3d2e62fa21aa0c0_2f3f6a245b\", \"mime\": \"image/webp\", \"name\": \"large_6527840fda1074778f4e8c89d4f960db_c5e59385801d45eda3d2e62fa21aa0c0.webp\", \"path\": null, \"size\": 42.42, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_6527840fda1074778f4e8c89d4f960db_c5e59385801d45eda3d2e62fa21aa0c0_2f3f6a245b.webp\", \"hash\": \"small_6527840fda1074778f4e8c89d4f960db_c5e59385801d45eda3d2e62fa21aa0c0_2f3f6a245b\", \"mime\": \"image/webp\", \"name\": \"small_6527840fda1074778f4e8c89d4f960db_c5e59385801d45eda3d2e62fa21aa0c0.webp\", \"path\": null, \"size\": 12.41, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_6527840fda1074778f4e8c89d4f960db_c5e59385801d45eda3d2e62fa21aa0c0_2f3f6a245b.webp\", \"hash\": \"medium_6527840fda1074778f4e8c89d4f960db_c5e59385801d45eda3d2e62fa21aa0c0_2f3f6a245b\", \"mime\": \"image/webp\", \"name\": \"medium_6527840fda1074778f4e8c89d4f960db_c5e59385801d45eda3d2e62fa21aa0c0.webp\", \"path\": null, \"size\": 26.46, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_6527840fda1074778f4e8c89d4f960db_c5e59385801d45eda3d2e62fa21aa0c0_2f3f6a245b.webp\", \"hash\": \"thumbnail_6527840fda1074778f4e8c89d4f960db_c5e59385801d45eda3d2e62fa21aa0c0_2f3f6a245b\", \"mime\": \"image/webp\", \"name\": \"thumbnail_6527840fda1074778f4e8c89d4f960db_c5e59385801d45eda3d2e62fa21aa0c0.webp\", \"path\": null, \"size\": 1.95, \"width\": 156, \"height\": 156}}', '6527840fda1074778f4e8c89d4f960db_c5e59385801d45eda3d2e62fa21aa0c0_2f3f6a245b', '.webp', 'image/webp', 123.99, '/uploads/6527840fda1074778f4e8c89d4f960db_c5e59385801d45eda3d2e62fa21aa0c0_2f3f6a245b.webp', NULL, 'local', NULL, '/3', '2023-06-28 10:54:12.769000', '2023-06-28 10:54:12.769000', NULL, NULL),
(131, 'c15eb71f646184bd87b0633541c022ea_07bf98d7d6344b9181e5e5c96235906c_1024x1024.webp', NULL, NULL, 1024, 1024, '{\"large\": {\"ext\": \".webp\", \"url\": \"/uploads/large_c15eb71f646184bd87b0633541c022ea_07bf98d7d6344b9181e5e5c96235906c_1024x1024_bec4da9b47.webp\", \"hash\": \"large_c15eb71f646184bd87b0633541c022ea_07bf98d7d6344b9181e5e5c96235906c_1024x1024_bec4da9b47\", \"mime\": \"image/webp\", \"name\": \"large_c15eb71f646184bd87b0633541c022ea_07bf98d7d6344b9181e5e5c96235906c_1024x1024.webp\", \"path\": null, \"size\": 29.1, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_c15eb71f646184bd87b0633541c022ea_07bf98d7d6344b9181e5e5c96235906c_1024x1024_bec4da9b47.webp\", \"hash\": \"small_c15eb71f646184bd87b0633541c022ea_07bf98d7d6344b9181e5e5c96235906c_1024x1024_bec4da9b47\", \"mime\": \"image/webp\", \"name\": \"small_c15eb71f646184bd87b0633541c022ea_07bf98d7d6344b9181e5e5c96235906c_1024x1024.webp\", \"path\": null, \"size\": 10.24, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_c15eb71f646184bd87b0633541c022ea_07bf98d7d6344b9181e5e5c96235906c_1024x1024_bec4da9b47.webp\", \"hash\": \"medium_c15eb71f646184bd87b0633541c022ea_07bf98d7d6344b9181e5e5c96235906c_1024x1024_bec4da9b47\", \"mime\": \"image/webp\", \"name\": \"medium_c15eb71f646184bd87b0633541c022ea_07bf98d7d6344b9181e5e5c96235906c_1024x1024.webp\", \"path\": null, \"size\": 19.69, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_c15eb71f646184bd87b0633541c022ea_07bf98d7d6344b9181e5e5c96235906c_1024x1024_bec4da9b47.webp\", \"hash\": \"thumbnail_c15eb71f646184bd87b0633541c022ea_07bf98d7d6344b9181e5e5c96235906c_1024x1024_bec4da9b47\", \"mime\": \"image/webp\", \"name\": \"thumbnail_c15eb71f646184bd87b0633541c022ea_07bf98d7d6344b9181e5e5c96235906c_1024x1024.webp\", \"path\": null, \"size\": 1.8, \"width\": 156, \"height\": 156}}', 'c15eb71f646184bd87b0633541c022ea_07bf98d7d6344b9181e5e5c96235906c_1024x1024_bec4da9b47', '.webp', 'image/webp', 41.86, '/uploads/c15eb71f646184bd87b0633541c022ea_07bf98d7d6344b9181e5e5c96235906c_1024x1024_bec4da9b47.webp', NULL, 'local', NULL, '/3', '2023-06-28 10:54:15.733000', '2023-06-28 10:54:15.733000', NULL, NULL),
(132, '09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c.webp', NULL, NULL, 1500, 1500, '{\"large\": {\"ext\": \".webp\", \"url\": \"/uploads/large_09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c_6ec08d3495.webp\", \"hash\": \"large_09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c_6ec08d3495\", \"mime\": \"image/webp\", \"name\": \"large_09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c.webp\", \"path\": null, \"size\": 30.8, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c_6ec08d3495.webp\", \"hash\": \"small_09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c_6ec08d3495\", \"mime\": \"image/webp\", \"name\": \"small_09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c.webp\", \"path\": null, \"size\": 10.2, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c_6ec08d3495.webp\", \"hash\": \"medium_09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c_6ec08d3495\", \"mime\": \"image/webp\", \"name\": \"medium_09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c.webp\", \"path\": null, \"size\": 20.51, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c_6ec08d3495.webp\", \"hash\": \"thumbnail_09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c_6ec08d3495\", \"mime\": \"image/webp\", \"name\": \"thumbnail_09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c.webp\", \"path\": null, \"size\": 1.42, \"width\": 156, \"height\": 156}}', '09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c_6ec08d3495', '.webp', 'image/webp', 87.22, '/uploads/09bf36ba196b49860ed25752f8e94a7f_e6b4b68fb5d048e9bdc82ae3f1c8364c_6ec08d3495.webp', NULL, 'local', NULL, '/3', '2023-06-28 10:54:18.271000', '2023-06-28 10:54:18.271000', NULL, NULL),
(133, 'dcb59f65266eae38a2e572050050dac3.jpg', NULL, NULL, 640, 640, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_dcb59f65266eae38a2e572050050dac3_df7d39d04d.jpg\", \"hash\": \"small_dcb59f65266eae38a2e572050050dac3_df7d39d04d\", \"mime\": \"image/jpeg\", \"name\": \"small_dcb59f65266eae38a2e572050050dac3.jpg\", \"path\": null, \"size\": 70.4, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_dcb59f65266eae38a2e572050050dac3_df7d39d04d.jpg\", \"hash\": \"thumbnail_dcb59f65266eae38a2e572050050dac3_df7d39d04d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_dcb59f65266eae38a2e572050050dac3.jpg\", \"path\": null, \"size\": 9.42, \"width\": 156, \"height\": 156}}', 'dcb59f65266eae38a2e572050050dac3_df7d39d04d', '.jpg', 'image/jpeg', 102.59, '/uploads/dcb59f65266eae38a2e572050050dac3_df7d39d04d.jpg', NULL, 'local', NULL, '/3', '2023-06-28 10:58:02.667000', '2023-06-28 10:58:02.667000', NULL, NULL),
(134, '15e6cdaad2f0aebe51102ca3f687dd07.jpg', NULL, NULL, 640, 640, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_15e6cdaad2f0aebe51102ca3f687dd07_ad1ea34a98.jpg\", \"hash\": \"small_15e6cdaad2f0aebe51102ca3f687dd07_ad1ea34a98\", \"mime\": \"image/jpeg\", \"name\": \"small_15e6cdaad2f0aebe51102ca3f687dd07.jpg\", \"path\": null, \"size\": 58.85, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_15e6cdaad2f0aebe51102ca3f687dd07_ad1ea34a98.jpg\", \"hash\": \"thumbnail_15e6cdaad2f0aebe51102ca3f687dd07_ad1ea34a98\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_15e6cdaad2f0aebe51102ca3f687dd07.jpg\", \"path\": null, \"size\": 8.24, \"width\": 156, \"height\": 156}}', '15e6cdaad2f0aebe51102ca3f687dd07_ad1ea34a98', '.jpg', 'image/jpeg', 86.15, '/uploads/15e6cdaad2f0aebe51102ca3f687dd07_ad1ea34a98.jpg', NULL, 'local', NULL, '/3', '2023-06-28 10:58:05.435000', '2023-06-28 10:58:05.435000', NULL, NULL),
(135, 'f9192b7cffbac9ec7139cd650c2af121.jpg', NULL, NULL, 640, 640, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_f9192b7cffbac9ec7139cd650c2af121_97a486bd38.jpg\", \"hash\": \"small_f9192b7cffbac9ec7139cd650c2af121_97a486bd38\", \"mime\": \"image/jpeg\", \"name\": \"small_f9192b7cffbac9ec7139cd650c2af121.jpg\", \"path\": null, \"size\": 13.07, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_f9192b7cffbac9ec7139cd650c2af121_97a486bd38.jpg\", \"hash\": \"thumbnail_f9192b7cffbac9ec7139cd650c2af121_97a486bd38\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_f9192b7cffbac9ec7139cd650c2af121.jpg\", \"path\": null, \"size\": 2.29, \"width\": 156, \"height\": 156}}', 'f9192b7cffbac9ec7139cd650c2af121_97a486bd38', '.jpg', 'image/jpeg', 19.07, '/uploads/f9192b7cffbac9ec7139cd650c2af121_97a486bd38.jpg', NULL, 'local', NULL, '/3', '2023-06-28 10:58:08.918000', '2023-06-28 10:58:08.918000', NULL, NULL),
(136, '6_97a93fedaa624d2883b958ead69d7815_master.webp', NULL, NULL, 750, 750, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_6_97a93fedaa624d2883b958ead69d7815_master_6c01cc646b.webp\", \"hash\": \"small_6_97a93fedaa624d2883b958ead69d7815_master_6c01cc646b\", \"mime\": \"image/webp\", \"name\": \"small_6_97a93fedaa624d2883b958ead69d7815_master.webp\", \"path\": null, \"size\": 7.38, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_6_97a93fedaa624d2883b958ead69d7815_master_6c01cc646b.webp\", \"hash\": \"thumbnail_6_97a93fedaa624d2883b958ead69d7815_master_6c01cc646b\", \"mime\": \"image/webp\", \"name\": \"thumbnail_6_97a93fedaa624d2883b958ead69d7815_master.webp\", \"path\": null, \"size\": 1.75, \"width\": 156, \"height\": 156}}', '6_97a93fedaa624d2883b958ead69d7815_master_6c01cc646b', '.webp', 'image/webp', 16.63, '/uploads/6_97a93fedaa624d2883b958ead69d7815_master_6c01cc646b.webp', NULL, 'local', NULL, '/3', '2023-06-28 11:01:37.296000', '2023-06-28 11:01:37.296000', NULL, NULL),
(137, '3_1246b0dac07c4bb0922cea848c1c54b7_master.webp', NULL, NULL, 750, 838, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_3_1246b0dac07c4bb0922cea848c1c54b7_master_225fcedb0c.webp\", \"hash\": \"small_3_1246b0dac07c4bb0922cea848c1c54b7_master_225fcedb0c\", \"mime\": \"image/webp\", \"name\": \"small_3_1246b0dac07c4bb0922cea848c1c54b7_master.webp\", \"path\": null, \"size\": 14.29, \"width\": 447, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_3_1246b0dac07c4bb0922cea848c1c54b7_master_225fcedb0c.webp\", \"hash\": \"medium_3_1246b0dac07c4bb0922cea848c1c54b7_master_225fcedb0c\", \"mime\": \"image/webp\", \"name\": \"medium_3_1246b0dac07c4bb0922cea848c1c54b7_master.webp\", \"path\": null, \"size\": 23.35, \"width\": 671, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_3_1246b0dac07c4bb0922cea848c1c54b7_master_225fcedb0c.webp\", \"hash\": \"thumbnail_3_1246b0dac07c4bb0922cea848c1c54b7_master_225fcedb0c\", \"mime\": \"image/webp\", \"name\": \"thumbnail_3_1246b0dac07c4bb0922cea848c1c54b7_master.webp\", \"path\": null, \"size\": 3.61, \"width\": 140, \"height\": 156}}', '3_1246b0dac07c4bb0922cea848c1c54b7_master_225fcedb0c', '.webp', 'image/webp', 32.98, '/uploads/3_1246b0dac07c4bb0922cea848c1c54b7_master_225fcedb0c.webp', NULL, 'local', NULL, '/3', '2023-06-28 11:01:40.357000', '2023-06-28 11:01:40.357000', NULL, NULL),
(138, '1_9bf9ec0a7edc476daed2c06aaf8dcea5_master.webp', NULL, NULL, 750, 837, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_1_9bf9ec0a7edc476daed2c06aaf8dcea5_master_a91fff341e.webp\", \"hash\": \"small_1_9bf9ec0a7edc476daed2c06aaf8dcea5_master_a91fff341e\", \"mime\": \"image/webp\", \"name\": \"small_1_9bf9ec0a7edc476daed2c06aaf8dcea5_master.webp\", \"path\": null, \"size\": 13.97, \"width\": 448, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_1_9bf9ec0a7edc476daed2c06aaf8dcea5_master_a91fff341e.webp\", \"hash\": \"medium_1_9bf9ec0a7edc476daed2c06aaf8dcea5_master_a91fff341e\", \"mime\": \"image/webp\", \"name\": \"medium_1_9bf9ec0a7edc476daed2c06aaf8dcea5_master.webp\", \"path\": null, \"size\": 22.92, \"width\": 672, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_1_9bf9ec0a7edc476daed2c06aaf8dcea5_master_a91fff341e.webp\", \"hash\": \"thumbnail_1_9bf9ec0a7edc476daed2c06aaf8dcea5_master_a91fff341e\", \"mime\": \"image/webp\", \"name\": \"thumbnail_1_9bf9ec0a7edc476daed2c06aaf8dcea5_master.webp\", \"path\": null, \"size\": 3.55, \"width\": 140, \"height\": 156}}', '1_9bf9ec0a7edc476daed2c06aaf8dcea5_master_a91fff341e', '.webp', 'image/webp', 33.74, '/uploads/1_9bf9ec0a7edc476daed2c06aaf8dcea5_master_a91fff341e.webp', NULL, 'local', NULL, '/3', '2023-06-28 11:01:43.028000', '2023-06-28 11:01:43.028000', NULL, NULL),
(139, '1_72c5c5b65a4847e28fc48f0631043a3a_master.webp', NULL, NULL, 1200, 1200, '{\"large\": {\"ext\": \".webp\", \"url\": \"/uploads/large_1_72c5c5b65a4847e28fc48f0631043a3a_master_75f4f098ec.webp\", \"hash\": \"large_1_72c5c5b65a4847e28fc48f0631043a3a_master_75f4f098ec\", \"mime\": \"image/webp\", \"name\": \"large_1_72c5c5b65a4847e28fc48f0631043a3a_master.webp\", \"path\": null, \"size\": 41.03, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_1_72c5c5b65a4847e28fc48f0631043a3a_master_75f4f098ec.webp\", \"hash\": \"small_1_72c5c5b65a4847e28fc48f0631043a3a_master_75f4f098ec\", \"mime\": \"image/webp\", \"name\": \"small_1_72c5c5b65a4847e28fc48f0631043a3a_master.webp\", \"path\": null, \"size\": 14.18, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_1_72c5c5b65a4847e28fc48f0631043a3a_master_75f4f098ec.webp\", \"hash\": \"medium_1_72c5c5b65a4847e28fc48f0631043a3a_master_75f4f098ec\", \"mime\": \"image/webp\", \"name\": \"medium_1_72c5c5b65a4847e28fc48f0631043a3a_master.webp\", \"path\": null, \"size\": 27, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_1_72c5c5b65a4847e28fc48f0631043a3a_master_75f4f098ec.webp\", \"hash\": \"thumbnail_1_72c5c5b65a4847e28fc48f0631043a3a_master_75f4f098ec\", \"mime\": \"image/webp\", \"name\": \"thumbnail_1_72c5c5b65a4847e28fc48f0631043a3a_master.webp\", \"path\": null, \"size\": 2.62, \"width\": 156, \"height\": 156}}', '1_72c5c5b65a4847e28fc48f0631043a3a_master_75f4f098ec', '.webp', 'image/webp', 69.43, '/uploads/1_72c5c5b65a4847e28fc48f0631043a3a_master_75f4f098ec.webp', NULL, 'local', NULL, '/3', '2023-06-28 11:03:48.434000', '2023-06-28 11:03:48.434000', NULL, NULL),
(140, '2_c7a3765952bc41fda8b3fc5544f3f759_master.webp', NULL, NULL, 1200, 1683, '{\"large\": {\"ext\": \".webp\", \"url\": \"/uploads/large_2_c7a3765952bc41fda8b3fc5544f3f759_master_1af3be2ba7.webp\", \"hash\": \"large_2_c7a3765952bc41fda8b3fc5544f3f759_master_1af3be2ba7\", \"mime\": \"image/webp\", \"name\": \"large_2_c7a3765952bc41fda8b3fc5544f3f759_master.webp\", \"path\": null, \"size\": 43.32, \"width\": 713, \"height\": 1000}, \"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_2_c7a3765952bc41fda8b3fc5544f3f759_master_1af3be2ba7.webp\", \"hash\": \"small_2_c7a3765952bc41fda8b3fc5544f3f759_master_1af3be2ba7\", \"mime\": \"image/webp\", \"name\": \"small_2_c7a3765952bc41fda8b3fc5544f3f759_master.webp\", \"path\": null, \"size\": 14.12, \"width\": 357, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_2_c7a3765952bc41fda8b3fc5544f3f759_master_1af3be2ba7.webp\", \"hash\": \"medium_2_c7a3765952bc41fda8b3fc5544f3f759_master_1af3be2ba7\", \"mime\": \"image/webp\", \"name\": \"medium_2_c7a3765952bc41fda8b3fc5544f3f759_master.webp\", \"path\": null, \"size\": 27.19, \"width\": 535, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_2_c7a3765952bc41fda8b3fc5544f3f759_master_1af3be2ba7.webp\", \"hash\": \"thumbnail_2_c7a3765952bc41fda8b3fc5544f3f759_master_1af3be2ba7\", \"mime\": \"image/webp\", \"name\": \"thumbnail_2_c7a3765952bc41fda8b3fc5544f3f759_master.webp\", \"path\": null, \"size\": 2.14, \"width\": 111, \"height\": 156}}', '2_c7a3765952bc41fda8b3fc5544f3f759_master_1af3be2ba7', '.webp', 'image/webp', 102.20, '/uploads/2_c7a3765952bc41fda8b3fc5544f3f759_master_1af3be2ba7.webp', NULL, 'local', NULL, '/3', '2023-06-28 11:03:51.459000', '2023-06-28 11:03:51.459000', NULL, NULL),
(141, '5_3b4b05cc2801478cb50155b1cb156745_master.webp', NULL, NULL, 1082, 2048, '{\"large\": {\"ext\": \".webp\", \"url\": \"/uploads/large_5_3b4b05cc2801478cb50155b1cb156745_master_f0bf887572.webp\", \"hash\": \"large_5_3b4b05cc2801478cb50155b1cb156745_master_f0bf887572\", \"mime\": \"image/webp\", \"name\": \"large_5_3b4b05cc2801478cb50155b1cb156745_master.webp\", \"path\": null, \"size\": 73.02, \"width\": 528, \"height\": 1000}, \"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_5_3b4b05cc2801478cb50155b1cb156745_master_f0bf887572.webp\", \"hash\": \"small_5_3b4b05cc2801478cb50155b1cb156745_master_f0bf887572\", \"mime\": \"image/webp\", \"name\": \"small_5_3b4b05cc2801478cb50155b1cb156745_master.webp\", \"path\": null, \"size\": 19.3, \"width\": 264, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_5_3b4b05cc2801478cb50155b1cb156745_master_f0bf887572.webp\", \"hash\": \"medium_5_3b4b05cc2801478cb50155b1cb156745_master_f0bf887572\", \"mime\": \"image/webp\", \"name\": \"medium_5_3b4b05cc2801478cb50155b1cb156745_master.webp\", \"path\": null, \"size\": 43.72, \"width\": 396, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_5_3b4b05cc2801478cb50155b1cb156745_master_f0bf887572.webp\", \"hash\": \"thumbnail_5_3b4b05cc2801478cb50155b1cb156745_master_f0bf887572\", \"mime\": \"image/webp\", \"name\": \"thumbnail_5_3b4b05cc2801478cb50155b1cb156745_master.webp\", \"path\": null, \"size\": 2.26, \"width\": 82, \"height\": 156}}', '5_3b4b05cc2801478cb50155b1cb156745_master_f0bf887572', '.webp', 'image/webp', 240.14, '/uploads/5_3b4b05cc2801478cb50155b1cb156745_master_f0bf887572.webp', NULL, 'local', NULL, '/3', '2023-06-28 11:03:54.119000', '2023-06-28 11:03:54.119000', NULL, NULL),
(142, 'kinh-boi-SSM-7899.jpg', NULL, NULL, 650, 650, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_kinh_boi_SSM_7899_cf49b28e03.jpg\", \"hash\": \"small_kinh_boi_SSM_7899_cf49b28e03\", \"mime\": \"image/jpeg\", \"name\": \"small_kinh-boi-SSM-7899.jpg\", \"path\": null, \"size\": 21.77, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_kinh_boi_SSM_7899_cf49b28e03.jpg\", \"hash\": \"thumbnail_kinh_boi_SSM_7899_cf49b28e03\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_kinh-boi-SSM-7899.jpg\", \"path\": null, \"size\": 4.28, \"width\": 156, \"height\": 156}}', 'kinh_boi_SSM_7899_cf49b28e03', '.jpg', 'image/jpeg', 31.74, '/uploads/kinh_boi_SSM_7899_cf49b28e03.jpg', NULL, 'local', NULL, '/3', '2023-06-28 11:09:16.315000', '2023-06-28 11:09:16.315000', NULL, NULL),
(143, 'kinh-boi-SSM-7899-1.jpg', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_kinh_boi_SSM_7899_1_0ac871d185.jpg\", \"hash\": \"small_kinh_boi_SSM_7899_1_0ac871d185\", \"mime\": \"image/jpeg\", \"name\": \"small_kinh-boi-SSM-7899-1.jpg\", \"path\": null, \"size\": 22.77, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_kinh_boi_SSM_7899_1_0ac871d185.jpg\", \"hash\": \"thumbnail_kinh_boi_SSM_7899_1_0ac871d185\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_kinh-boi-SSM-7899-1.jpg\", \"path\": null, \"size\": 4.43, \"width\": 156, \"height\": 156}}', 'kinh_boi_SSM_7899_1_0ac871d185', '.jpg', 'image/jpeg', 29.69, '/uploads/kinh_boi_SSM_7899_1_0ac871d185.jpg', NULL, 'local', NULL, '/3', '2023-06-28 11:09:22.537000', '2023-06-28 11:09:22.537000', NULL, NULL),
(144, 'kinh-boi-SSM-7899-2.jpg', NULL, NULL, 650, 646, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_kinh_boi_SSM_7899_2_c1e7218aa8.jpg\", \"hash\": \"small_kinh_boi_SSM_7899_2_c1e7218aa8\", \"mime\": \"image/jpeg\", \"name\": \"small_kinh-boi-SSM-7899-2.jpg\", \"path\": null, \"size\": 34.54, \"width\": 500, \"height\": 497}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_kinh_boi_SSM_7899_2_c1e7218aa8.jpg\", \"hash\": \"thumbnail_kinh_boi_SSM_7899_2_c1e7218aa8\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_kinh-boi-SSM-7899-2.jpg\", \"path\": null, \"size\": 6.14, \"width\": 157, \"height\": 156}}', 'kinh_boi_SSM_7899_2_c1e7218aa8', '.jpg', 'image/jpeg', 50.13, '/uploads/kinh_boi_SSM_7899_2_c1e7218aa8.jpg', NULL, 'local', NULL, '/3', '2023-06-28 11:09:25.988000', '2023-06-28 11:09:25.988000', NULL, NULL),
(145, 'mu-boi-trum-tai-whale-cac-mau.jpg', NULL, NULL, 700, 699, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_mu_boi_trum_tai_whale_cac_mau_fe8984b246.jpg\", \"hash\": \"small_mu_boi_trum_tai_whale_cac_mau_fe8984b246\", \"mime\": \"image/jpeg\", \"name\": \"small_mu-boi-trum-tai-whale-cac-mau.jpg\", \"path\": null, \"size\": 37.31, \"width\": 500, \"height\": 499}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mu_boi_trum_tai_whale_cac_mau_fe8984b246.jpg\", \"hash\": \"thumbnail_mu_boi_trum_tai_whale_cac_mau_fe8984b246\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mu-boi-trum-tai-whale-cac-mau.jpg\", \"path\": null, \"size\": 5.9, \"width\": 156, \"height\": 156}}', 'mu_boi_trum_tai_whale_cac_mau_fe8984b246', '.jpg', 'image/jpeg', 62.05, '/uploads/mu_boi_trum_tai_whale_cac_mau_fe8984b246.jpg', NULL, 'local', NULL, '/3', '2023-06-28 11:13:23.316000', '2023-06-28 11:13:23.316000', NULL, NULL),
(146, 'mu-boi-trum-tai-whale-mau-sac.jpg', NULL, NULL, 700, 700, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_mu_boi_trum_tai_whale_mau_sac_fa82841eb9.jpg\", \"hash\": \"small_mu_boi_trum_tai_whale_mau_sac_fa82841eb9\", \"mime\": \"image/jpeg\", \"name\": \"small_mu-boi-trum-tai-whale-mau-sac.jpg\", \"path\": null, \"size\": 29.35, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mu_boi_trum_tai_whale_mau_sac_fa82841eb9.jpg\", \"hash\": \"thumbnail_mu_boi_trum_tai_whale_mau_sac_fa82841eb9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mu-boi-trum-tai-whale-mau-sac.jpg\", \"path\": null, \"size\": 5.35, \"width\": 156, \"height\": 156}}', 'mu_boi_trum_tai_whale_mau_sac_fa82841eb9', '.jpg', 'image/jpeg', 50.10, '/uploads/mu_boi_trum_tai_whale_mau_sac_fa82841eb9.jpg', NULL, 'local', NULL, '/3', '2023-06-28 11:13:26.735000', '2023-06-28 11:13:26.735000', NULL, NULL),
(147, 'mu-boi-trum-tai-whale-600x600.jpg', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_mu_boi_trum_tai_whale_600x600_4b3a3301f0.jpg\", \"hash\": \"small_mu_boi_trum_tai_whale_600x600_4b3a3301f0\", \"mime\": \"image/jpeg\", \"name\": \"small_mu-boi-trum-tai-whale-600x600.jpg\", \"path\": null, \"size\": 21.56, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_mu_boi_trum_tai_whale_600x600_4b3a3301f0.jpg\", \"hash\": \"thumbnail_mu_boi_trum_tai_whale_600x600_4b3a3301f0\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_mu-boi-trum-tai-whale-600x600.jpg\", \"path\": null, \"size\": 4.36, \"width\": 156, \"height\": 156}}', 'mu_boi_trum_tai_whale_600x600_4b3a3301f0', '.jpg', 'image/jpeg', 27.90, '/uploads/mu_boi_trum_tai_whale_600x600_4b3a3301f0.jpg', NULL, 'local', NULL, '/3', '2023-06-28 11:13:29.726000', '2023-06-28 11:13:29.726000', NULL, NULL),
(148, 'quan-boi-203-4.jpg', NULL, NULL, 720, 720, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_quan_boi_203_4_b99c045029.jpg\", \"hash\": \"small_quan_boi_203_4_b99c045029\", \"mime\": \"image/jpeg\", \"name\": \"small_quan-boi-203-4.jpg\", \"path\": null, \"size\": 30.38, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_quan_boi_203_4_b99c045029.jpg\", \"hash\": \"thumbnail_quan_boi_203_4_b99c045029\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_quan-boi-203-4.jpg\", \"path\": null, \"size\": 5.51, \"width\": 156, \"height\": 156}}', 'quan_boi_203_4_b99c045029', '.jpg', 'image/jpeg', 46.78, '/uploads/quan_boi_203_4_b99c045029.jpg', NULL, 'local', NULL, '/3', '2023-06-28 11:15:43.419000', '2023-06-28 11:15:43.419000', NULL, NULL),
(149, 'quan-boi-203-3.jpg', NULL, NULL, 720, 720, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_quan_boi_203_3_827eb30743.jpg\", \"hash\": \"small_quan_boi_203_3_827eb30743\", \"mime\": \"image/jpeg\", \"name\": \"small_quan-boi-203-3.jpg\", \"path\": null, \"size\": 23.35, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_quan_boi_203_3_827eb30743.jpg\", \"hash\": \"thumbnail_quan_boi_203_3_827eb30743\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_quan-boi-203-3.jpg\", \"path\": null, \"size\": 4.66, \"width\": 156, \"height\": 156}}', 'quan_boi_203_3_827eb30743', '.jpg', 'image/jpeg', 31.97, '/uploads/quan_boi_203_3_827eb30743.jpg', NULL, 'local', NULL, '/3', '2023-06-28 11:15:45.372000', '2023-06-28 11:15:45.372000', NULL, NULL),
(150, 'quan-boi-203-2.jpg', NULL, NULL, 720, 720, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_quan_boi_203_2_b3f39212a8.jpg\", \"hash\": \"small_quan_boi_203_2_b3f39212a8\", \"mime\": \"image/jpeg\", \"name\": \"small_quan-boi-203-2.jpg\", \"path\": null, \"size\": 28.31, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_quan_boi_203_2_b3f39212a8.jpg\", \"hash\": \"thumbnail_quan_boi_203_2_b3f39212a8\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_quan-boi-203-2.jpg\", \"path\": null, \"size\": 5.25, \"width\": 156, \"height\": 156}}', 'quan_boi_203_2_b3f39212a8', '.jpg', 'image/jpeg', 38.12, '/uploads/quan_boi_203_2_b3f39212a8.jpg', NULL, 'local', NULL, '/3', '2023-06-28 11:15:47.467000', '2023-06-28 11:15:47.467000', NULL, NULL),
(151, 'quan-boi-203-1.jpg', NULL, NULL, 720, 720, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_quan_boi_203_1_a3e53f3bab.jpg\", \"hash\": \"small_quan_boi_203_1_a3e53f3bab\", \"mime\": \"image/jpeg\", \"name\": \"small_quan-boi-203-1.jpg\", \"path\": null, \"size\": 24.81, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_quan_boi_203_1_a3e53f3bab.jpg\", \"hash\": \"thumbnail_quan_boi_203_1_a3e53f3bab\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_quan-boi-203-1.jpg\", \"path\": null, \"size\": 4.51, \"width\": 156, \"height\": 156}}', 'quan_boi_203_1_a3e53f3bab', '.jpg', 'image/jpeg', 33.56, '/uploads/quan_boi_203_1_a3e53f3bab.jpg', NULL, 'local', NULL, '/3', '2023-06-28 11:15:49.722000', '2023-06-28 11:15:49.722000', NULL, NULL),
(152, 'phao-boi-deo-tay-cho-tre-em-nguoi-lon.jpg', NULL, NULL, 650, 650, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_phao_boi_deo_tay_cho_tre_em_nguoi_lon_8029bdabce.jpg\", \"hash\": \"small_phao_boi_deo_tay_cho_tre_em_nguoi_lon_8029bdabce\", \"mime\": \"image/jpeg\", \"name\": \"small_phao-boi-deo-tay-cho-tre-em-nguoi-lon.jpg\", \"path\": null, \"size\": 21.05, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phao_boi_deo_tay_cho_tre_em_nguoi_lon_8029bdabce.jpg\", \"hash\": \"thumbnail_phao_boi_deo_tay_cho_tre_em_nguoi_lon_8029bdabce\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phao-boi-deo-tay-cho-tre-em-nguoi-lon.jpg\", \"path\": null, \"size\": 3.8, \"width\": 156, \"height\": 156}}', 'phao_boi_deo_tay_cho_tre_em_nguoi_lon_8029bdabce', '.jpg', 'image/jpeg', 30.85, '/uploads/phao_boi_deo_tay_cho_tre_em_nguoi_lon_8029bdabce.jpg', NULL, 'local', NULL, '/3', '2023-06-28 11:17:40.024000', '2023-06-28 11:17:40.024000', NULL, NULL),
(153, 'phao-boi-deo-tay.jpg', NULL, NULL, 650, 650, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_phao_boi_deo_tay_b7515cdad9.jpg\", \"hash\": \"small_phao_boi_deo_tay_b7515cdad9\", \"mime\": \"image/jpeg\", \"name\": \"small_phao-boi-deo-tay.jpg\", \"path\": null, \"size\": 58.66, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phao_boi_deo_tay_b7515cdad9.jpg\", \"hash\": \"thumbnail_phao_boi_deo_tay_b7515cdad9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phao-boi-deo-tay.jpg\", \"path\": null, \"size\": 6.28, \"width\": 156, \"height\": 156}}', 'phao_boi_deo_tay_b7515cdad9', '.jpg', 'image/jpeg', 95.34, '/uploads/phao_boi_deo_tay_b7515cdad9.jpg', NULL, 'local', NULL, '/3', '2023-06-28 11:17:42.646000', '2023-06-28 11:17:42.646000', NULL, NULL),
(154, 'phao-boi-deo-canh-tay.jpg', NULL, NULL, 650, 650, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_phao_boi_deo_canh_tay_fe82e5b8d4.jpg\", \"hash\": \"small_phao_boi_deo_canh_tay_fe82e5b8d4\", \"mime\": \"image/jpeg\", \"name\": \"small_phao-boi-deo-canh-tay.jpg\", \"path\": null, \"size\": 44.51, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_phao_boi_deo_canh_tay_fe82e5b8d4.jpg\", \"hash\": \"thumbnail_phao_boi_deo_canh_tay_fe82e5b8d4\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_phao-boi-deo-canh-tay.jpg\", \"path\": null, \"size\": 6.61, \"width\": 156, \"height\": 156}}', 'phao_boi_deo_canh_tay_fe82e5b8d4', '.jpg', 'image/jpeg', 67.58, '/uploads/phao_boi_deo_canh_tay_fe82e5b8d4.jpg', NULL, 'local', NULL, '/3', '2023-06-28 11:17:45.365000', '2023-06-28 11:17:45.365000', NULL, NULL),
(155, 'Inkedfyklzua5f6v2q_LI.jpg', NULL, NULL, 376, 700, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Inkedfyklzua5f6v2q_LI_d9ba87d42a.jpg\", \"hash\": \"small_Inkedfyklzua5f6v2q_LI_d9ba87d42a\", \"mime\": \"image/jpeg\", \"name\": \"small_Inkedfyklzua5f6v2q_LI.jpg\", \"path\": null, \"size\": 17, \"width\": 269, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Inkedfyklzua5f6v2q_LI_d9ba87d42a.jpg\", \"hash\": \"thumbnail_Inkedfyklzua5f6v2q_LI_d9ba87d42a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Inkedfyklzua5f6v2q_LI.jpg\", \"path\": null, \"size\": 2.56, \"width\": 84, \"height\": 156}}', 'Inkedfyklzua5f6v2q_LI_d9ba87d42a', '.jpg', 'image/jpeg', 29.98, '/uploads/Inkedfyklzua5f6v2q_LI_d9ba87d42a.jpg', NULL, 'local', NULL, '/3', '2023-06-28 11:20:33.043000', '2023-06-28 11:20:33.043000', NULL, NULL),
(156, 'InkedGU-tennis-blade98_1619_countervail_2017_front_logo-700x700_LI.jpg', NULL, NULL, 700, 700, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Inked_GU_tennis_blade98_1619_countervail_2017_front_logo_700x700_LI_836bcca5ca.jpg\", \"hash\": \"small_Inked_GU_tennis_blade98_1619_countervail_2017_front_logo_700x700_LI_836bcca5ca\", \"mime\": \"image/jpeg\", \"name\": \"small_InkedGU-tennis-blade98_1619_countervail_2017_front_logo-700x700_LI.jpg\", \"path\": null, \"size\": 26.43, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Inked_GU_tennis_blade98_1619_countervail_2017_front_logo_700x700_LI_836bcca5ca.jpg\", \"hash\": \"thumbnail_Inked_GU_tennis_blade98_1619_countervail_2017_front_logo_700x700_LI_836bcca5ca\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_InkedGU-tennis-blade98_1619_countervail_2017_front_logo-700x700_LI.jpg\", \"path\": null, \"size\": 4.12, \"width\": 156, \"height\": 156}}', 'Inked_GU_tennis_blade98_1619_countervail_2017_front_logo_700x700_LI_836bcca5ca', '.jpg', 'image/jpeg', 43.73, '/uploads/Inked_GU_tennis_blade98_1619_countervail_2017_front_logo_700x700_LI_836bcca5ca.jpg', NULL, 'local', NULL, '/3', '2023-06-28 11:20:35.225000', '2023-06-28 11:20:35.225000', NULL, NULL);
INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(157, 'InkedvpFDnBC4yxtx_LI.jpg', NULL, NULL, 572, 584, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Inkedvp_F_Dn_BC_4yxtx_LI_d0b6de0493.jpg\", \"hash\": \"small_Inkedvp_F_Dn_BC_4yxtx_LI_d0b6de0493\", \"mime\": \"image/jpeg\", \"name\": \"small_InkedvpFDnBC4yxtx_LI.jpg\", \"path\": null, \"size\": 15.1, \"width\": 490, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Inkedvp_F_Dn_BC_4yxtx_LI_d0b6de0493.jpg\", \"hash\": \"thumbnail_Inkedvp_F_Dn_BC_4yxtx_LI_d0b6de0493\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_InkedvpFDnBC4yxtx_LI.jpg\", \"path\": null, \"size\": 2.41, \"width\": 153, \"height\": 156}}', 'Inkedvp_F_Dn_BC_4yxtx_LI_d0b6de0493', '.jpg', 'image/jpeg', 18.14, '/uploads/Inkedvp_F_Dn_BC_4yxtx_LI_d0b6de0493.jpg', NULL, 'local', NULL, '/3', '2023-06-28 11:20:37.298000', '2023-06-28 11:20:37.298000', NULL, NULL),
(158, 'dws.webp', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_dws_878e9e6900.webp\", \"hash\": \"small_dws_878e9e6900\", \"mime\": \"image/webp\", \"name\": \"small_dws.webp\", \"path\": null, \"size\": 21.51, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_dws_878e9e6900.webp\", \"hash\": \"medium_dws_878e9e6900\", \"mime\": \"image/webp\", \"name\": \"medium_dws.webp\", \"path\": null, \"size\": 35.2, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_dws_878e9e6900.webp\", \"hash\": \"thumbnail_dws_878e9e6900\", \"mime\": \"image/webp\", \"name\": \"thumbnail_dws.webp\", \"path\": null, \"size\": 4.3, \"width\": 156, \"height\": 156}}', 'dws_878e9e6900', '.webp', 'image/webp', 56.30, '/uploads/dws_878e9e6900.webp', NULL, 'local', NULL, '/3', '2023-06-28 11:23:03.490000', '2023-06-28 11:23:03.490000', NULL, NULL),
(159, 'mau-75b663fa-c276-4cf4-ac45-fc96230f3b22.webp', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_mau_75b663fa_c276_4cf4_ac45_fc96230f3b22_345744886a.webp\", \"hash\": \"small_mau_75b663fa_c276_4cf4_ac45_fc96230f3b22_345744886a\", \"mime\": \"image/webp\", \"name\": \"small_mau-75b663fa-c276-4cf4-ac45-fc96230f3b22.webp\", \"path\": null, \"size\": 21.42, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_mau_75b663fa_c276_4cf4_ac45_fc96230f3b22_345744886a.webp\", \"hash\": \"medium_mau_75b663fa_c276_4cf4_ac45_fc96230f3b22_345744886a\", \"mime\": \"image/webp\", \"name\": \"medium_mau-75b663fa-c276-4cf4-ac45-fc96230f3b22.webp\", \"path\": null, \"size\": 36.04, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_mau_75b663fa_c276_4cf4_ac45_fc96230f3b22_345744886a.webp\", \"hash\": \"thumbnail_mau_75b663fa_c276_4cf4_ac45_fc96230f3b22_345744886a\", \"mime\": \"image/webp\", \"name\": \"thumbnail_mau-75b663fa-c276-4cf4-ac45-fc96230f3b22.webp\", \"path\": null, \"size\": 3.91, \"width\": 156, \"height\": 156}}', 'mau_75b663fa_c276_4cf4_ac45_fc96230f3b22_345744886a', '.webp', 'image/webp', 62.93, '/uploads/mau_75b663fa_c276_4cf4_ac45_fc96230f3b22_345744886a.webp', NULL, 'local', NULL, '/3', '2023-06-28 11:23:06.038000', '2023-06-28 11:23:06.038000', NULL, NULL),
(160, 'wef.webp', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_wef_3a91982791.webp\", \"hash\": \"small_wef_3a91982791\", \"mime\": \"image/webp\", \"name\": \"small_wef.webp\", \"path\": null, \"size\": 21.78, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_wef_3a91982791.webp\", \"hash\": \"medium_wef_3a91982791\", \"mime\": \"image/webp\", \"name\": \"medium_wef.webp\", \"path\": null, \"size\": 34.34, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_wef_3a91982791.webp\", \"hash\": \"thumbnail_wef_3a91982791\", \"mime\": \"image/webp\", \"name\": \"thumbnail_wef.webp\", \"path\": null, \"size\": 5.22, \"width\": 156, \"height\": 156}}', 'wef_3a91982791', '.webp', 'image/webp', 48.85, '/uploads/wef_3a91982791.webp', NULL, 'local', NULL, '/3', '2023-06-28 11:23:08.401000', '2023-06-28 11:23:08.401000', NULL, NULL),
(161, 'BCTLBV5020-600x600.jpg', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_BCTLBV_5020_600x600_489040ea21.jpg\", \"hash\": \"small_BCTLBV_5020_600x600_489040ea21\", \"mime\": \"image/jpeg\", \"name\": \"small_BCTLBV5020-600x600.jpg\", \"path\": null, \"size\": 27.82, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_BCTLBV_5020_600x600_489040ea21.jpg\", \"hash\": \"thumbnail_BCTLBV_5020_600x600_489040ea21\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_BCTLBV5020-600x600.jpg\", \"path\": null, \"size\": 5.37, \"width\": 156, \"height\": 156}}', 'BCTLBV_5020_600x600_489040ea21', '.jpg', 'image/jpeg', 36.23, '/uploads/BCTLBV_5020_600x600_489040ea21.jpg', NULL, 'local', NULL, '/3', '2023-06-28 11:26:58.343000', '2023-06-28 11:26:58.343000', NULL, NULL),
(162, 'bong-thang-long-5020_d5946125edef4b1cbd3d8b2997f0d1b8_large.webp', NULL, NULL, 480, 480, '{\"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_bong_thang_long_5020_d5946125edef4b1cbd3d8b2997f0d1b8_large_e025340c89.webp\", \"hash\": \"thumbnail_bong_thang_long_5020_d5946125edef4b1cbd3d8b2997f0d1b8_large_e025340c89\", \"mime\": \"image/webp\", \"name\": \"thumbnail_bong-thang-long-5020_d5946125edef4b1cbd3d8b2997f0d1b8_large.webp\", \"path\": null, \"size\": 3.9, \"width\": 156, \"height\": 156}}', 'bong_thang_long_5020_d5946125edef4b1cbd3d8b2997f0d1b8_large_e025340c89', '.webp', 'image/webp', 17.77, '/uploads/bong_thang_long_5020_d5946125edef4b1cbd3d8b2997f0d1b8_large_e025340c89.webp', NULL, 'local', NULL, '/3', '2023-06-28 11:27:00.339000', '2023-06-28 11:27:00.339000', NULL, NULL),
(163, 'C4F678B8-0ECD-40FE-8502-B95D43F93D20-600x867.jpeg', NULL, NULL, 600, 867, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_C4_F678_B8_0_ECD_40_FE_8502_B95_D43_F93_D20_600x867_87e62c878f.jpeg\", \"hash\": \"small_C4_F678_B8_0_ECD_40_FE_8502_B95_D43_F93_D20_600x867_87e62c878f\", \"mime\": \"image/jpeg\", \"name\": \"small_C4F678B8-0ECD-40FE-8502-B95D43F93D20-600x867.jpeg\", \"path\": null, \"size\": 17.52, \"width\": 346, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_C4_F678_B8_0_ECD_40_FE_8502_B95_D43_F93_D20_600x867_87e62c878f.jpeg\", \"hash\": \"medium_C4_F678_B8_0_ECD_40_FE_8502_B95_D43_F93_D20_600x867_87e62c878f\", \"mime\": \"image/jpeg\", \"name\": \"medium_C4F678B8-0ECD-40FE-8502-B95D43F93D20-600x867.jpeg\", \"path\": null, \"size\": 31.25, \"width\": 519, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_C4_F678_B8_0_ECD_40_FE_8502_B95_D43_F93_D20_600x867_87e62c878f.jpeg\", \"hash\": \"thumbnail_C4_F678_B8_0_ECD_40_FE_8502_B95_D43_F93_D20_600x867_87e62c878f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_C4F678B8-0ECD-40FE-8502-B95D43F93D20-600x867.jpeg\", \"path\": null, \"size\": 3.36, \"width\": 108, \"height\": 156}}', 'C4_F678_B8_0_ECD_40_FE_8502_B95_D43_F93_D20_600x867_87e62c878f', '.jpeg', 'image/jpeg', 38.80, '/uploads/C4_F678_B8_0_ECD_40_FE_8502_B95_D43_F93_D20_600x867_87e62c878f.jpeg', NULL, 'local', NULL, '/3', '2023-06-28 11:29:55.105000', '2023-06-28 11:29:55.105000', NULL, NULL),
(164, '831AC5D0-030B-48A1-B4C8-6D39CE9388DE-600x875.jpeg', NULL, NULL, 600, 875, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_831_AC_5_D0_030_B_48_A1_B4_C8_6_D39_CE_9388_DE_600x875_5c7414a482.jpeg\", \"hash\": \"small_831_AC_5_D0_030_B_48_A1_B4_C8_6_D39_CE_9388_DE_600x875_5c7414a482\", \"mime\": \"image/jpeg\", \"name\": \"small_831AC5D0-030B-48A1-B4C8-6D39CE9388DE-600x875.jpeg\", \"path\": null, \"size\": 15.45, \"width\": 343, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_831_AC_5_D0_030_B_48_A1_B4_C8_6_D39_CE_9388_DE_600x875_5c7414a482.jpeg\", \"hash\": \"medium_831_AC_5_D0_030_B_48_A1_B4_C8_6_D39_CE_9388_DE_600x875_5c7414a482\", \"mime\": \"image/jpeg\", \"name\": \"medium_831AC5D0-030B-48A1-B4C8-6D39CE9388DE-600x875.jpeg\", \"path\": null, \"size\": 26.61, \"width\": 514, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_831_AC_5_D0_030_B_48_A1_B4_C8_6_D39_CE_9388_DE_600x875_5c7414a482.jpeg\", \"hash\": \"thumbnail_831_AC_5_D0_030_B_48_A1_B4_C8_6_D39_CE_9388_DE_600x875_5c7414a482\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_831AC5D0-030B-48A1-B4C8-6D39CE9388DE-600x875.jpeg\", \"path\": null, \"size\": 3.16, \"width\": 107, \"height\": 156}}', '831_AC_5_D0_030_B_48_A1_B4_C8_6_D39_CE_9388_DE_600x875_5c7414a482', '.jpeg', 'image/jpeg', 33.63, '/uploads/831_AC_5_D0_030_B_48_A1_B4_C8_6_D39_CE_9388_DE_600x875_5c7414a482.jpeg', NULL, 'local', NULL, '/3', '2023-06-28 11:29:58.084000', '2023-06-28 11:29:58.084000', NULL, NULL),
(165, 'B1F51B23-816F-4715-8E39-F94137D3ED66-600x829.jpeg', NULL, NULL, 600, 829, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_B1_F51_B23_816_F_4715_8_E39_F94137_D3_ED_66_600x829_8c918deb62.jpeg\", \"hash\": \"small_B1_F51_B23_816_F_4715_8_E39_F94137_D3_ED_66_600x829_8c918deb62\", \"mime\": \"image/jpeg\", \"name\": \"small_B1F51B23-816F-4715-8E39-F94137D3ED66-600x829.jpeg\", \"path\": null, \"size\": 16.2, \"width\": 362, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_B1_F51_B23_816_F_4715_8_E39_F94137_D3_ED_66_600x829_8c918deb62.jpeg\", \"hash\": \"medium_B1_F51_B23_816_F_4715_8_E39_F94137_D3_ED_66_600x829_8c918deb62\", \"mime\": \"image/jpeg\", \"name\": \"medium_B1F51B23-816F-4715-8E39-F94137D3ED66-600x829.jpeg\", \"path\": null, \"size\": 28.5, \"width\": 543, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_B1_F51_B23_816_F_4715_8_E39_F94137_D3_ED_66_600x829_8c918deb62.jpeg\", \"hash\": \"thumbnail_B1_F51_B23_816_F_4715_8_E39_F94137_D3_ED_66_600x829_8c918deb62\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_B1F51B23-816F-4715-8E39-F94137D3ED66-600x829.jpeg\", \"path\": null, \"size\": 3.27, \"width\": 113, \"height\": 156}}', 'B1_F51_B23_816_F_4715_8_E39_F94137_D3_ED_66_600x829_8c918deb62', '.jpeg', 'image/jpeg', 33.05, '/uploads/B1_F51_B23_816_F_4715_8_E39_F94137_D3_ED_66_600x829_8c918deb62.jpeg', NULL, 'local', NULL, '/3', '2023-06-28 11:30:00.398000', '2023-06-28 11:30:00.398000', NULL, NULL),
(166, 'B4F51A13-FC5C-4E5E-B014-7C83D1DB62A3-600x825.jpeg', NULL, NULL, 600, 825, '{\"small\": {\"ext\": \".jpeg\", \"url\": \"/uploads/small_B4_F51_A13_FC_5_C_4_E5_E_B014_7_C83_D1_DB_62_A3_600x825_730c3a7719.jpeg\", \"hash\": \"small_B4_F51_A13_FC_5_C_4_E5_E_B014_7_C83_D1_DB_62_A3_600x825_730c3a7719\", \"mime\": \"image/jpeg\", \"name\": \"small_B4F51A13-FC5C-4E5E-B014-7C83D1DB62A3-600x825.jpeg\", \"path\": null, \"size\": 16.12, \"width\": 364, \"height\": 500}, \"medium\": {\"ext\": \".jpeg\", \"url\": \"/uploads/medium_B4_F51_A13_FC_5_C_4_E5_E_B014_7_C83_D1_DB_62_A3_600x825_730c3a7719.jpeg\", \"hash\": \"medium_B4_F51_A13_FC_5_C_4_E5_E_B014_7_C83_D1_DB_62_A3_600x825_730c3a7719\", \"mime\": \"image/jpeg\", \"name\": \"medium_B4F51A13-FC5C-4E5E-B014-7C83D1DB62A3-600x825.jpeg\", \"path\": null, \"size\": 28.49, \"width\": 545, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpeg\", \"url\": \"/uploads/thumbnail_B4_F51_A13_FC_5_C_4_E5_E_B014_7_C83_D1_DB_62_A3_600x825_730c3a7719.jpeg\", \"hash\": \"thumbnail_B4_F51_A13_FC_5_C_4_E5_E_B014_7_C83_D1_DB_62_A3_600x825_730c3a7719\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_B4F51A13-FC5C-4E5E-B014-7C83D1DB62A3-600x825.jpeg\", \"path\": null, \"size\": 3.26, \"width\": 114, \"height\": 156}}', 'B4_F51_A13_FC_5_C_4_E5_E_B014_7_C83_D1_DB_62_A3_600x825_730c3a7719', '.jpeg', 'image/jpeg', 32.35, '/uploads/B4_F51_A13_FC_5_C_4_E5_E_B014_7_C83_D1_DB_62_A3_600x825_730c3a7719.jpeg', NULL, 'local', NULL, '/3', '2023-06-28 11:30:02.500000', '2023-06-28 11:30:02.500000', NULL, NULL),
(167, '2-1-600x600.jpg', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_2_1_600x600_5f08ce56c5.jpg\", \"hash\": \"small_2_1_600x600_5f08ce56c5\", \"mime\": \"image/jpeg\", \"name\": \"small_2-1-600x600.jpg\", \"path\": null, \"size\": 40.24, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_2_1_600x600_5f08ce56c5.jpg\", \"hash\": \"thumbnail_2_1_600x600_5f08ce56c5\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_2-1-600x600.jpg\", \"path\": null, \"size\": 6.25, \"width\": 156, \"height\": 156}}', '2_1_600x600_5f08ce56c5', '.jpg', 'image/jpeg', 54.35, '/uploads/2_1_600x600_5f08ce56c5.jpg', NULL, 'local', NULL, '/3', '2023-06-28 11:40:20.956000', '2023-06-28 11:40:20.956000', NULL, NULL),
(168, '2-2.jpg', NULL, NULL, 800, 800, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_2_2_4e11d7d4f3.jpg\", \"hash\": \"small_2_2_4e11d7d4f3\", \"mime\": \"image/jpeg\", \"name\": \"small_2-2.jpg\", \"path\": null, \"size\": 41.46, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_2_2_4e11d7d4f3.jpg\", \"hash\": \"medium_2_2_4e11d7d4f3\", \"mime\": \"image/jpeg\", \"name\": \"medium_2-2.jpg\", \"path\": null, \"size\": 77.64, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_2_2_4e11d7d4f3.jpg\", \"hash\": \"thumbnail_2_2_4e11d7d4f3\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_2-2.jpg\", \"path\": null, \"size\": 6.24, \"width\": 156, \"height\": 156}}', '2_2_4e11d7d4f3', '.jpg', 'image/jpeg', 87.23, '/uploads/2_2_4e11d7d4f3.jpg', NULL, 'local', NULL, '/3', '2023-06-28 11:40:24.023000', '2023-06-28 11:40:24.023000', NULL, NULL),
(169, '2-3.jpg', NULL, NULL, 800, 800, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_2_3_bf75712806.jpg\", \"hash\": \"small_2_3_bf75712806\", \"mime\": \"image/jpeg\", \"name\": \"small_2-3.jpg\", \"path\": null, \"size\": 38.53, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_2_3_bf75712806.jpg\", \"hash\": \"medium_2_3_bf75712806\", \"mime\": \"image/jpeg\", \"name\": \"medium_2-3.jpg\", \"path\": null, \"size\": 73.7, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_2_3_bf75712806.jpg\", \"hash\": \"thumbnail_2_3_bf75712806\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_2-3.jpg\", \"path\": null, \"size\": 5.88, \"width\": 156, \"height\": 156}}', '2_3_bf75712806', '.jpg', 'image/jpeg', 83.39, '/uploads/2_3_bf75712806.jpg', NULL, 'local', NULL, '/3', '2023-06-28 11:40:26.656000', '2023-06-28 11:40:26.656000', NULL, NULL),
(170, 'lin-2023-05-18T125018.807-1.png', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_lin_2023_05_18_T125018_807_1_5b51806f32.png\", \"hash\": \"small_lin_2023_05_18_T125018_807_1_5b51806f32\", \"mime\": \"image/png\", \"name\": \"small_lin-2023-05-18T125018.807-1.png\", \"path\": null, \"size\": 121.96, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_lin_2023_05_18_T125018_807_1_5b51806f32.png\", \"hash\": \"medium_lin_2023_05_18_T125018_807_1_5b51806f32\", \"mime\": \"image/png\", \"name\": \"medium_lin-2023-05-18T125018.807-1.png\", \"path\": null, \"size\": 252.99, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_lin_2023_05_18_T125018_807_1_5b51806f32.png\", \"hash\": \"thumbnail_lin_2023_05_18_T125018_807_1_5b51806f32\", \"mime\": \"image/png\", \"name\": \"thumbnail_lin-2023-05-18T125018.807-1.png\", \"path\": null, \"size\": 16.16, \"width\": 156, \"height\": 156}}', 'lin_2023_05_18_T125018_807_1_5b51806f32', '.png', 'image/png', 92.37, '/uploads/lin_2023_05_18_T125018_807_1_5b51806f32.png', NULL, 'local', NULL, '/3', '2023-06-28 11:42:57.289000', '2023-06-28 11:42:57.289000', NULL, NULL),
(171, 'lin-2023-05-18T125043.524-1.png', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_lin_2023_05_18_T125043_524_1_dc00d0d5a5.png\", \"hash\": \"small_lin_2023_05_18_T125043_524_1_dc00d0d5a5\", \"mime\": \"image/png\", \"name\": \"small_lin-2023-05-18T125043.524-1.png\", \"path\": null, \"size\": 108.54, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_lin_2023_05_18_T125043_524_1_dc00d0d5a5.png\", \"hash\": \"medium_lin_2023_05_18_T125043_524_1_dc00d0d5a5\", \"mime\": \"image/png\", \"name\": \"medium_lin-2023-05-18T125043.524-1.png\", \"path\": null, \"size\": 225.79, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_lin_2023_05_18_T125043_524_1_dc00d0d5a5.png\", \"hash\": \"thumbnail_lin_2023_05_18_T125043_524_1_dc00d0d5a5\", \"mime\": \"image/png\", \"name\": \"thumbnail_lin-2023-05-18T125043.524-1.png\", \"path\": null, \"size\": 14.05, \"width\": 156, \"height\": 156}}', 'lin_2023_05_18_T125043_524_1_dc00d0d5a5', '.png', 'image/png', 81.35, '/uploads/lin_2023_05_18_T125043_524_1_dc00d0d5a5.png', NULL, 'local', NULL, '/3', '2023-06-28 11:42:59.547000', '2023-06-28 11:42:59.547000', NULL, NULL),
(172, 'Thiet-ke-chua-co-ten-38-1.png', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_Thiet_ke_chua_co_ten_38_1_aa550fb31f.png\", \"hash\": \"small_Thiet_ke_chua_co_ten_38_1_aa550fb31f\", \"mime\": \"image/png\", \"name\": \"small_Thiet-ke-chua-co-ten-38-1.png\", \"path\": null, \"size\": 105.53, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_Thiet_ke_chua_co_ten_38_1_aa550fb31f.png\", \"hash\": \"medium_Thiet_ke_chua_co_ten_38_1_aa550fb31f\", \"mime\": \"image/png\", \"name\": \"medium_Thiet-ke-chua-co-ten-38-1.png\", \"path\": null, \"size\": 217.84, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Thiet_ke_chua_co_ten_38_1_aa550fb31f.png\", \"hash\": \"thumbnail_Thiet_ke_chua_co_ten_38_1_aa550fb31f\", \"mime\": \"image/png\", \"name\": \"thumbnail_Thiet-ke-chua-co-ten-38-1.png\", \"path\": null, \"size\": 14, \"width\": 156, \"height\": 156}}', 'Thiet_ke_chua_co_ten_38_1_aa550fb31f', '.png', 'image/png', 85.66, '/uploads/Thiet_ke_chua_co_ten_38_1_aa550fb31f.png', NULL, 'local', NULL, '/3', '2023-06-28 11:43:03.143000', '2023-06-28 11:43:03.143000', NULL, NULL),
(173, 'lin-2023-05-18T125202.761-1.png', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_lin_2023_05_18_T125202_761_1_7e54b90d4a.png\", \"hash\": \"small_lin_2023_05_18_T125202_761_1_7e54b90d4a\", \"mime\": \"image/png\", \"name\": \"small_lin-2023-05-18T125202.761-1.png\", \"path\": null, \"size\": 34.61, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_lin_2023_05_18_T125202_761_1_7e54b90d4a.png\", \"hash\": \"medium_lin_2023_05_18_T125202_761_1_7e54b90d4a\", \"mime\": \"image/png\", \"name\": \"medium_lin-2023-05-18T125202.761-1.png\", \"path\": null, \"size\": 71.22, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_lin_2023_05_18_T125202_761_1_7e54b90d4a.png\", \"hash\": \"thumbnail_lin_2023_05_18_T125202_761_1_7e54b90d4a\", \"mime\": \"image/png\", \"name\": \"thumbnail_lin-2023-05-18T125202.761-1.png\", \"path\": null, \"size\": 4.82, \"width\": 156, \"height\": 156}}', 'lin_2023_05_18_T125202_761_1_7e54b90d4a', '.png', 'image/png', 23.52, '/uploads/lin_2023_05_18_T125202_761_1_7e54b90d4a.png', NULL, 'local', NULL, '/3', '2023-06-28 11:43:05.546000', '2023-06-28 11:43:05.546000', NULL, NULL),
(174, 'runfit__17__685764a736fa49b0a3d610469d0d78a2_master.png', NULL, NULL, 1024, 1024, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_runfit_17_685764a736fa49b0a3d610469d0d78a2_master_c5c9bbbdfe.png\", \"hash\": \"large_runfit_17_685764a736fa49b0a3d610469d0d78a2_master_c5c9bbbdfe\", \"mime\": \"image/png\", \"name\": \"large_runfit__17__685764a736fa49b0a3d610469d0d78a2_master.png\", \"path\": null, \"size\": 260.62, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_runfit_17_685764a736fa49b0a3d610469d0d78a2_master_c5c9bbbdfe.png\", \"hash\": \"small_runfit_17_685764a736fa49b0a3d610469d0d78a2_master_c5c9bbbdfe\", \"mime\": \"image/png\", \"name\": \"small_runfit__17__685764a736fa49b0a3d610469d0d78a2_master.png\", \"path\": null, \"size\": 84.69, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_runfit_17_685764a736fa49b0a3d610469d0d78a2_master_c5c9bbbdfe.png\", \"hash\": \"medium_runfit_17_685764a736fa49b0a3d610469d0d78a2_master_c5c9bbbdfe\", \"mime\": \"image/png\", \"name\": \"medium_runfit__17__685764a736fa49b0a3d610469d0d78a2_master.png\", \"path\": null, \"size\": 168.5, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_runfit_17_685764a736fa49b0a3d610469d0d78a2_master_c5c9bbbdfe.png\", \"hash\": \"thumbnail_runfit_17_685764a736fa49b0a3d610469d0d78a2_master_c5c9bbbdfe\", \"mime\": \"image/png\", \"name\": \"thumbnail_runfit__17__685764a736fa49b0a3d610469d0d78a2_master.png\", \"path\": null, \"size\": 13.18, \"width\": 156, \"height\": 156}}', 'runfit_17_685764a736fa49b0a3d610469d0d78a2_master_c5c9bbbdfe', '.png', 'image/png', 66.21, '/uploads/runfit_17_685764a736fa49b0a3d610469d0d78a2_master_c5c9bbbdfe.png', NULL, 'local', NULL, '/3', '2023-06-28 11:45:59.353000', '2023-06-28 11:45:59.353000', NULL, NULL),
(175, 'running-hydration-cup-kettle-water-bottle-1 (1).webp', NULL, NULL, 1001, 1001, '{\"large\": {\"ext\": \".webp\", \"url\": \"/uploads/large_running_hydration_cup_kettle_water_bottle_1_1_531f8d3445.webp\", \"hash\": \"large_running_hydration_cup_kettle_water_bottle_1_1_531f8d3445\", \"mime\": \"image/webp\", \"name\": \"large_running-hydration-cup-kettle-water-bottle-1 (1).webp\", \"path\": null, \"size\": 12.79, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_running_hydration_cup_kettle_water_bottle_1_1_531f8d3445.webp\", \"hash\": \"small_running_hydration_cup_kettle_water_bottle_1_1_531f8d3445\", \"mime\": \"image/webp\", \"name\": \"small_running-hydration-cup-kettle-water-bottle-1 (1).webp\", \"path\": null, \"size\": 5.22, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_running_hydration_cup_kettle_water_bottle_1_1_531f8d3445.webp\", \"hash\": \"medium_running_hydration_cup_kettle_water_bottle_1_1_531f8d3445\", \"mime\": \"image/webp\", \"name\": \"medium_running-hydration-cup-kettle-water-bottle-1 (1).webp\", \"path\": null, \"size\": 8.66, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_running_hydration_cup_kettle_water_bottle_1_1_531f8d3445.webp\", \"hash\": \"thumbnail_running_hydration_cup_kettle_water_bottle_1_1_531f8d3445\", \"mime\": \"image/webp\", \"name\": \"thumbnail_running-hydration-cup-kettle-water-bottle-1 (1).webp\", \"path\": null, \"size\": 1.13, \"width\": 156, \"height\": 156}}', 'running_hydration_cup_kettle_water_bottle_1_1_531f8d3445', '.webp', 'image/webp', 15.97, '/uploads/running_hydration_cup_kettle_water_bottle_1_1_531f8d3445.webp', NULL, 'local', NULL, '/3', '2023-06-28 11:46:01.488000', '2023-06-28 11:46:01.488000', NULL, NULL),
(176, 'running-hydration-cup-kettle-water-bottle-1 (2).webp', NULL, NULL, 1001, 1001, '{\"large\": {\"ext\": \".webp\", \"url\": \"/uploads/large_running_hydration_cup_kettle_water_bottle_1_2_7d4271d17c.webp\", \"hash\": \"large_running_hydration_cup_kettle_water_bottle_1_2_7d4271d17c\", \"mime\": \"image/webp\", \"name\": \"large_running-hydration-cup-kettle-water-bottle-1 (2).webp\", \"path\": null, \"size\": 18.9, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_running_hydration_cup_kettle_water_bottle_1_2_7d4271d17c.webp\", \"hash\": \"small_running_hydration_cup_kettle_water_bottle_1_2_7d4271d17c\", \"mime\": \"image/webp\", \"name\": \"small_running-hydration-cup-kettle-water-bottle-1 (2).webp\", \"path\": null, \"size\": 7.96, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_running_hydration_cup_kettle_water_bottle_1_2_7d4271d17c.webp\", \"hash\": \"medium_running_hydration_cup_kettle_water_bottle_1_2_7d4271d17c\", \"mime\": \"image/webp\", \"name\": \"medium_running-hydration-cup-kettle-water-bottle-1 (2).webp\", \"path\": null, \"size\": 12.92, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_running_hydration_cup_kettle_water_bottle_1_2_7d4271d17c.webp\", \"hash\": \"thumbnail_running_hydration_cup_kettle_water_bottle_1_2_7d4271d17c\", \"mime\": \"image/webp\", \"name\": \"thumbnail_running-hydration-cup-kettle-water-bottle-1 (2).webp\", \"path\": null, \"size\": 1.74, \"width\": 156, \"height\": 156}}', 'running_hydration_cup_kettle_water_bottle_1_2_7d4271d17c', '.webp', 'image/webp', 22.60, '/uploads/running_hydration_cup_kettle_water_bottle_1_2_7d4271d17c.webp', NULL, 'local', NULL, '/3', '2023-06-28 11:46:04.207000', '2023-06-28 11:46:04.207000', NULL, NULL),
(177, 'running-hydration-cup-kettle-water-bottle-1 (3).webp', NULL, NULL, 1001, 1001, '{\"large\": {\"ext\": \".webp\", \"url\": \"/uploads/large_running_hydration_cup_kettle_water_bottle_1_3_277fc43d96.webp\", \"hash\": \"large_running_hydration_cup_kettle_water_bottle_1_3_277fc43d96\", \"mime\": \"image/webp\", \"name\": \"large_running-hydration-cup-kettle-water-bottle-1 (3).webp\", \"path\": null, \"size\": 26, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_running_hydration_cup_kettle_water_bottle_1_3_277fc43d96.webp\", \"hash\": \"small_running_hydration_cup_kettle_water_bottle_1_3_277fc43d96\", \"mime\": \"image/webp\", \"name\": \"small_running-hydration-cup-kettle-water-bottle-1 (3).webp\", \"path\": null, \"size\": 8.86, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_running_hydration_cup_kettle_water_bottle_1_3_277fc43d96.webp\", \"hash\": \"medium_running_hydration_cup_kettle_water_bottle_1_3_277fc43d96\", \"mime\": \"image/webp\", \"name\": \"medium_running-hydration-cup-kettle-water-bottle-1 (3).webp\", \"path\": null, \"size\": 16.61, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_running_hydration_cup_kettle_water_bottle_1_3_277fc43d96.webp\", \"hash\": \"thumbnail_running_hydration_cup_kettle_water_bottle_1_3_277fc43d96\", \"mime\": \"image/webp\", \"name\": \"thumbnail_running-hydration-cup-kettle-water-bottle-1 (3).webp\", \"path\": null, \"size\": 1.81, \"width\": 156, \"height\": 156}}', 'running_hydration_cup_kettle_water_bottle_1_3_277fc43d96', '.webp', 'image/webp', 38.28, '/uploads/running_hydration_cup_kettle_water_bottle_1_3_277fc43d96.webp', NULL, 'local', NULL, '/3', '2023-06-28 11:46:06.758000', '2023-06-28 11:46:06.758000', NULL, NULL),
(178, 'running-hydration-cup-kettle-water-bottle-1.webp', NULL, NULL, 1001, 1001, '{\"large\": {\"ext\": \".webp\", \"url\": \"/uploads/large_running_hydration_cup_kettle_water_bottle_1_a83710cc84.webp\", \"hash\": \"large_running_hydration_cup_kettle_water_bottle_1_a83710cc84\", \"mime\": \"image/webp\", \"name\": \"large_running-hydration-cup-kettle-water-bottle-1.webp\", \"path\": null, \"size\": 16.6, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_running_hydration_cup_kettle_water_bottle_1_a83710cc84.webp\", \"hash\": \"small_running_hydration_cup_kettle_water_bottle_1_a83710cc84\", \"mime\": \"image/webp\", \"name\": \"small_running-hydration-cup-kettle-water-bottle-1.webp\", \"path\": null, \"size\": 7.98, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_running_hydration_cup_kettle_water_bottle_1_a83710cc84.webp\", \"hash\": \"medium_running_hydration_cup_kettle_water_bottle_1_a83710cc84\", \"mime\": \"image/webp\", \"name\": \"medium_running-hydration-cup-kettle-water-bottle-1.webp\", \"path\": null, \"size\": 12.33, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_running_hydration_cup_kettle_water_bottle_1_a83710cc84.webp\", \"hash\": \"thumbnail_running_hydration_cup_kettle_water_bottle_1_a83710cc84\", \"mime\": \"image/webp\", \"name\": \"thumbnail_running-hydration-cup-kettle-water-bottle-1.webp\", \"path\": null, \"size\": 2.08, \"width\": 156, \"height\": 156}}', 'running_hydration_cup_kettle_water_bottle_1_a83710cc84', '.webp', 'image/webp', 19.42, '/uploads/running_hydration_cup_kettle_water_bottle_1_a83710cc84.webp', NULL, 'local', NULL, '/3', '2023-06-28 11:46:08.967000', '2023-06-28 11:46:08.967000', NULL, NULL),
(179, '594_Quan-ao-xe-dap-Sky.jpg', NULL, NULL, 750, 733, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_594_Quan_ao_xe_dap_Sky_d8078fff9e.jpg\", \"hash\": \"small_594_Quan_ao_xe_dap_Sky_d8078fff9e\", \"mime\": \"image/jpeg\", \"name\": \"small_594_Quan-ao-xe-dap-Sky.jpg\", \"path\": null, \"size\": 37.3, \"width\": 500, \"height\": 489}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_594_Quan_ao_xe_dap_Sky_d8078fff9e.jpg\", \"hash\": \"thumbnail_594_Quan_ao_xe_dap_Sky_d8078fff9e\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_594_Quan-ao-xe-dap-Sky.jpg\", \"path\": null, \"size\": 6.5, \"width\": 160, \"height\": 156}}', '594_Quan_ao_xe_dap_Sky_d8078fff9e', '.jpg', 'image/jpeg', 60.73, '/uploads/594_Quan_ao_xe_dap_Sky_d8078fff9e.jpg', NULL, 'local', NULL, '/3', '2023-06-28 11:51:59.539000', '2023-06-28 11:51:59.539000', NULL, NULL),
(180, '44da93cb2d201fae910d2abe3c9d1dec.jpg', NULL, NULL, 900, 900, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_44da93cb2d201fae910d2abe3c9d1dec_70e718dd94.jpg\", \"hash\": \"small_44da93cb2d201fae910d2abe3c9d1dec_70e718dd94\", \"mime\": \"image/jpeg\", \"name\": \"small_44da93cb2d201fae910d2abe3c9d1dec.jpg\", \"path\": null, \"size\": 15.74, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_44da93cb2d201fae910d2abe3c9d1dec_70e718dd94.jpg\", \"hash\": \"medium_44da93cb2d201fae910d2abe3c9d1dec_70e718dd94\", \"mime\": \"image/jpeg\", \"name\": \"medium_44da93cb2d201fae910d2abe3c9d1dec.jpg\", \"path\": null, \"size\": 29.41, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_44da93cb2d201fae910d2abe3c9d1dec_70e718dd94.jpg\", \"hash\": \"thumbnail_44da93cb2d201fae910d2abe3c9d1dec_70e718dd94\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_44da93cb2d201fae910d2abe3c9d1dec.jpg\", \"path\": null, \"size\": 3.19, \"width\": 156, \"height\": 156}}', '44da93cb2d201fae910d2abe3c9d1dec_70e718dd94', '.jpg', 'image/jpeg', 39.56, '/uploads/44da93cb2d201fae910d2abe3c9d1dec_70e718dd94.jpg', NULL, 'local', NULL, '/3', '2023-06-28 11:53:15.583000', '2023-06-28 11:53:15.583000', NULL, NULL),
(181, 'nike-lebron-19-dutch-blue-pomegranate-lime-glow-white-dc9339-400-3-f5e66287f9604e02a8b525b32aab7bc5-1024x1024-1659327857216.webp', NULL, NULL, 1024, 719, '{\"large\": {\"ext\": \".webp\", \"url\": \"/uploads/large_nike_lebron_19_dutch_blue_pomegranate_lime_glow_white_dc9339_400_3_f5e66287f9604e02a8b525b32aab7bc5_1024x1024_1659327857216_d65494c429.webp\", \"hash\": \"large_nike_lebron_19_dutch_blue_pomegranate_lime_glow_white_dc9339_400_3_f5e66287f9604e02a8b525b32aab7bc5_1024x1024_1659327857216_d65494c429\", \"mime\": \"image/webp\", \"name\": \"large_nike-lebron-19-dutch-blue-pomegranate-lime-glow-white-dc9339-400-3-f5e66287f9604e02a8b525b32aab7bc5-1024x1024-1659327857216.webp\", \"path\": null, \"size\": 53.72, \"width\": 1000, \"height\": 702}, \"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_nike_lebron_19_dutch_blue_pomegranate_lime_glow_white_dc9339_400_3_f5e66287f9604e02a8b525b32aab7bc5_1024x1024_1659327857216_d65494c429.webp\", \"hash\": \"small_nike_lebron_19_dutch_blue_pomegranate_lime_glow_white_dc9339_400_3_f5e66287f9604e02a8b525b32aab7bc5_1024x1024_1659327857216_d65494c429\", \"mime\": \"image/webp\", \"name\": \"small_nike-lebron-19-dutch-blue-pomegranate-lime-glow-white-dc9339-400-3-f5e66287f9604e02a8b525b32aab7bc5-1024x1024-1659327857216.webp\", \"path\": null, \"size\": 18.48, \"width\": 500, \"height\": 351}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_nike_lebron_19_dutch_blue_pomegranate_lime_glow_white_dc9339_400_3_f5e66287f9604e02a8b525b32aab7bc5_1024x1024_1659327857216_d65494c429.webp\", \"hash\": \"medium_nike_lebron_19_dutch_blue_pomegranate_lime_glow_white_dc9339_400_3_f5e66287f9604e02a8b525b32aab7bc5_1024x1024_1659327857216_d65494c429\", \"mime\": \"image/webp\", \"name\": \"medium_nike-lebron-19-dutch-blue-pomegranate-lime-glow-white-dc9339-400-3-f5e66287f9604e02a8b525b32aab7bc5-1024x1024-1659327857216.webp\", \"path\": null, \"size\": 35.45, \"width\": 750, \"height\": 527}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_nike_lebron_19_dutch_blue_pomegranate_lime_glow_white_dc9339_400_3_f5e66287f9604e02a8b525b32aab7bc5_1024x1024_1659327857216_d65494c429.webp\", \"hash\": \"thumbnail_nike_lebron_19_dutch_blue_pomegranate_lime_glow_white_dc9339_400_3_f5e66287f9604e02a8b525b32aab7bc5_1024x1024_1659327857216_d65494c429\", \"mime\": \"image/webp\", \"name\": \"thumbnail_nike-lebron-19-dutch-blue-pomegranate-lime-glow-white-dc9339-400-3-f5e66287f9604e02a8b525b32aab7bc5-1024x1024-1659327857216.webp\", \"path\": null, \"size\": 5.06, \"width\": 222, \"height\": 156}}', 'nike_lebron_19_dutch_blue_pomegranate_lime_glow_white_dc9339_400_3_f5e66287f9604e02a8b525b32aab7bc5_1024x1024_1659327857216_d65494c429', '.webp', 'image/webp', 69.56, '/uploads/nike_lebron_19_dutch_blue_pomegranate_lime_glow_white_dc9339_400_3_f5e66287f9604e02a8b525b32aab7bc5_1024x1024_1659327857216_d65494c429.webp', NULL, 'local', NULL, '/3', '2023-06-28 11:55:43.317000', '2023-06-28 11:55:43.317000', NULL, NULL),
(182, 'nike-lebron-19-dutch-blue-pomegranate-lime-glow-white-dc9339-400-6-1e72f3b0ba61498e8371e051a97c6d5f-1659327857232.webp', NULL, NULL, 1140, 1140, '{\"large\": {\"ext\": \".webp\", \"url\": \"/uploads/large_nike_lebron_19_dutch_blue_pomegranate_lime_glow_white_dc9339_400_6_1e72f3b0ba61498e8371e051a97c6d5f_1659327857232_1b08a4bb69.webp\", \"hash\": \"large_nike_lebron_19_dutch_blue_pomegranate_lime_glow_white_dc9339_400_6_1e72f3b0ba61498e8371e051a97c6d5f_1659327857232_1b08a4bb69\", \"mime\": \"image/webp\", \"name\": \"large_nike-lebron-19-dutch-blue-pomegranate-lime-glow-white-dc9339-400-6-1e72f3b0ba61498e8371e051a97c6d5f-1659327857232.webp\", \"path\": null, \"size\": 113.1, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_nike_lebron_19_dutch_blue_pomegranate_lime_glow_white_dc9339_400_6_1e72f3b0ba61498e8371e051a97c6d5f_1659327857232_1b08a4bb69.webp\", \"hash\": \"small_nike_lebron_19_dutch_blue_pomegranate_lime_glow_white_dc9339_400_6_1e72f3b0ba61498e8371e051a97c6d5f_1659327857232_1b08a4bb69\", \"mime\": \"image/webp\", \"name\": \"small_nike-lebron-19-dutch-blue-pomegranate-lime-glow-white-dc9339-400-6-1e72f3b0ba61498e8371e051a97c6d5f-1659327857232.webp\", \"path\": null, \"size\": 33.22, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_nike_lebron_19_dutch_blue_pomegranate_lime_glow_white_dc9339_400_6_1e72f3b0ba61498e8371e051a97c6d5f_1659327857232_1b08a4bb69.webp\", \"hash\": \"medium_nike_lebron_19_dutch_blue_pomegranate_lime_glow_white_dc9339_400_6_1e72f3b0ba61498e8371e051a97c6d5f_1659327857232_1b08a4bb69\", \"mime\": \"image/webp\", \"name\": \"medium_nike-lebron-19-dutch-blue-pomegranate-lime-glow-white-dc9339-400-6-1e72f3b0ba61498e8371e051a97c6d5f-1659327857232.webp\", \"path\": null, \"size\": 69.4, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_nike_lebron_19_dutch_blue_pomegranate_lime_glow_white_dc9339_400_6_1e72f3b0ba61498e8371e051a97c6d5f_1659327857232_1b08a4bb69.webp\", \"hash\": \"thumbnail_nike_lebron_19_dutch_blue_pomegranate_lime_glow_white_dc9339_400_6_1e72f3b0ba61498e8371e051a97c6d5f_1659327857232_1b08a4bb69\", \"mime\": \"image/webp\", \"name\": \"thumbnail_nike-lebron-19-dutch-blue-pomegranate-lime-glow-white-dc9339-400-6-1e72f3b0ba61498e8371e051a97c6d5f-1659327857232.webp\", \"path\": null, \"size\": 4.92, \"width\": 156, \"height\": 156}}', 'nike_lebron_19_dutch_blue_pomegranate_lime_glow_white_dc9339_400_6_1e72f3b0ba61498e8371e051a97c6d5f_1659327857232_1b08a4bb69', '.webp', 'image/webp', 174.16, '/uploads/nike_lebron_19_dutch_blue_pomegranate_lime_glow_white_dc9339_400_6_1e72f3b0ba61498e8371e051a97c6d5f_1659327857232_1b08a4bb69.webp', NULL, 'local', NULL, '/3', '2023-06-28 11:55:46.146000', '2023-06-28 11:55:46.146000', NULL, NULL),
(183, 'bron-featured-1659327857220.webp', NULL, NULL, 1280, 720, '{\"large\": {\"ext\": \".webp\", \"url\": \"/uploads/large_bron_featured_1659327857220_73708aab44.webp\", \"hash\": \"large_bron_featured_1659327857220_73708aab44\", \"mime\": \"image/webp\", \"name\": \"large_bron-featured-1659327857220.webp\", \"path\": null, \"size\": 51.98, \"width\": 1000, \"height\": 562}, \"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_bron_featured_1659327857220_73708aab44.webp\", \"hash\": \"small_bron_featured_1659327857220_73708aab44\", \"mime\": \"image/webp\", \"name\": \"small_bron-featured-1659327857220.webp\", \"path\": null, \"size\": 18.88, \"width\": 500, \"height\": 281}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_bron_featured_1659327857220_73708aab44.webp\", \"hash\": \"medium_bron_featured_1659327857220_73708aab44\", \"mime\": \"image/webp\", \"name\": \"medium_bron-featured-1659327857220.webp\", \"path\": null, \"size\": 34.98, \"width\": 750, \"height\": 422}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_bron_featured_1659327857220_73708aab44.webp\", \"hash\": \"thumbnail_bron_featured_1659327857220_73708aab44\", \"mime\": \"image/webp\", \"name\": \"thumbnail_bron-featured-1659327857220.webp\", \"path\": null, \"size\": 6.39, \"width\": 245, \"height\": 138}}', 'bron_featured_1659327857220_73708aab44', '.webp', 'image/webp', 91.75, '/uploads/bron_featured_1659327857220_73708aab44.webp', NULL, 'local', NULL, '/3', '2023-06-28 11:55:48.918000', '2023-06-28 11:55:48.918000', NULL, NULL),
(184, 'q13233dsc-0123-1659327857218.webp', NULL, NULL, 1099, 733, '{\"large\": {\"ext\": \".webp\", \"url\": \"/uploads/large_q13233dsc_0123_1659327857218_982a96e0c9.webp\", \"hash\": \"large_q13233dsc_0123_1659327857218_982a96e0c9\", \"mime\": \"image/webp\", \"name\": \"large_q13233dsc-0123-1659327857218.webp\", \"path\": null, \"size\": 50.98, \"width\": 1000, \"height\": 667}, \"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_q13233dsc_0123_1659327857218_982a96e0c9.webp\", \"hash\": \"small_q13233dsc_0123_1659327857218_982a96e0c9\", \"mime\": \"image/webp\", \"name\": \"small_q13233dsc-0123-1659327857218.webp\", \"path\": null, \"size\": 18.28, \"width\": 500, \"height\": 333}, \"medium\": {\"ext\": \".webp\", \"url\": \"/uploads/medium_q13233dsc_0123_1659327857218_982a96e0c9.webp\", \"hash\": \"medium_q13233dsc_0123_1659327857218_982a96e0c9\", \"mime\": \"image/webp\", \"name\": \"medium_q13233dsc-0123-1659327857218.webp\", \"path\": null, \"size\": 33.45, \"width\": 750, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_q13233dsc_0123_1659327857218_982a96e0c9.webp\", \"hash\": \"thumbnail_q13233dsc_0123_1659327857218_982a96e0c9\", \"mime\": \"image/webp\", \"name\": \"thumbnail_q13233dsc-0123-1659327857218.webp\", \"path\": null, \"size\": 5.69, \"width\": 234, \"height\": 156}}', 'q13233dsc_0123_1659327857218_982a96e0c9', '.webp', 'image/webp', 75.48, '/uploads/q13233dsc_0123_1659327857218_982a96e0c9.webp', NULL, 'local', NULL, '/3', '2023-06-28 11:55:52.122000', '2023-06-28 11:55:52.122000', NULL, NULL),
(185, 'bo-quan-ao-bong-ro-jordan-choibongrovn.jpg', NULL, NULL, 800, 800, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_bo_quan_ao_bong_ro_jordan_choibongrovn_d5ed4fd573.jpg\", \"hash\": \"small_bo_quan_ao_bong_ro_jordan_choibongrovn_d5ed4fd573\", \"mime\": \"image/jpeg\", \"name\": \"small_bo-quan-ao-bong-ro-jordan-choibongrovn.jpg\", \"path\": null, \"size\": 53.63, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_bo_quan_ao_bong_ro_jordan_choibongrovn_d5ed4fd573.jpg\", \"hash\": \"medium_bo_quan_ao_bong_ro_jordan_choibongrovn_d5ed4fd573\", \"mime\": \"image/jpeg\", \"name\": \"medium_bo-quan-ao-bong-ro-jordan-choibongrovn.jpg\", \"path\": null, \"size\": 100.88, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_bo_quan_ao_bong_ro_jordan_choibongrovn_d5ed4fd573.jpg\", \"hash\": \"thumbnail_bo_quan_ao_bong_ro_jordan_choibongrovn_d5ed4fd573\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bo-quan-ao-bong-ro-jordan-choibongrovn.jpg\", \"path\": null, \"size\": 8.12, \"width\": 156, \"height\": 156}}', 'bo_quan_ao_bong_ro_jordan_choibongrovn_d5ed4fd573', '.jpg', 'image/jpeg', 115.71, '/uploads/bo_quan_ao_bong_ro_jordan_choibongrovn_d5ed4fd573.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:01:24.437000', '2023-06-28 12:01:24.437000', NULL, NULL),
(186, 'bo-quan-ao-bong-ro-jordan-choibongrovn-1-1024x1024.jpg', NULL, NULL, 1024, 1024, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_bo_quan_ao_bong_ro_jordan_choibongrovn_1_1024x1024_a29d12b533.jpg\", \"hash\": \"large_bo_quan_ao_bong_ro_jordan_choibongrovn_1_1024x1024_a29d12b533\", \"mime\": \"image/jpeg\", \"name\": \"large_bo-quan-ao-bong-ro-jordan-choibongrovn-1-1024x1024.jpg\", \"path\": null, \"size\": 76.65, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_bo_quan_ao_bong_ro_jordan_choibongrovn_1_1024x1024_a29d12b533.jpg\", \"hash\": \"small_bo_quan_ao_bong_ro_jordan_choibongrovn_1_1024x1024_a29d12b533\", \"mime\": \"image/jpeg\", \"name\": \"small_bo-quan-ao-bong-ro-jordan-choibongrovn-1-1024x1024.jpg\", \"path\": null, \"size\": 29.03, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_bo_quan_ao_bong_ro_jordan_choibongrovn_1_1024x1024_a29d12b533.jpg\", \"hash\": \"medium_bo_quan_ao_bong_ro_jordan_choibongrovn_1_1024x1024_a29d12b533\", \"mime\": \"image/jpeg\", \"name\": \"medium_bo-quan-ao-bong-ro-jordan-choibongrovn-1-1024x1024.jpg\", \"path\": null, \"size\": 51.23, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_bo_quan_ao_bong_ro_jordan_choibongrovn_1_1024x1024_a29d12b533.jpg\", \"hash\": \"thumbnail_bo_quan_ao_bong_ro_jordan_choibongrovn_1_1024x1024_a29d12b533\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bo-quan-ao-bong-ro-jordan-choibongrovn-1-1024x1024.jpg\", \"path\": null, \"size\": 5.49, \"width\": 156, \"height\": 156}}', 'bo_quan_ao_bong_ro_jordan_choibongrovn_1_1024x1024_a29d12b533', '.jpg', 'image/jpeg', 78.62, '/uploads/bo_quan_ao_bong_ro_jordan_choibongrovn_1_1024x1024_a29d12b533.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:01:26.809000', '2023-06-28 12:01:26.809000', NULL, NULL),
(187, 'bo-quan-ao-bong-ro-jordan-choibongrovn-2-1024x1024.jpg', NULL, NULL, 1024, 1024, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_bo_quan_ao_bong_ro_jordan_choibongrovn_2_1024x1024_78d7ea70e7.jpg\", \"hash\": \"large_bo_quan_ao_bong_ro_jordan_choibongrovn_2_1024x1024_78d7ea70e7\", \"mime\": \"image/jpeg\", \"name\": \"large_bo-quan-ao-bong-ro-jordan-choibongrovn-2-1024x1024.jpg\", \"path\": null, \"size\": 76.67, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_bo_quan_ao_bong_ro_jordan_choibongrovn_2_1024x1024_78d7ea70e7.jpg\", \"hash\": \"small_bo_quan_ao_bong_ro_jordan_choibongrovn_2_1024x1024_78d7ea70e7\", \"mime\": \"image/jpeg\", \"name\": \"small_bo-quan-ao-bong-ro-jordan-choibongrovn-2-1024x1024.jpg\", \"path\": null, \"size\": 29.6, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_bo_quan_ao_bong_ro_jordan_choibongrovn_2_1024x1024_78d7ea70e7.jpg\", \"hash\": \"medium_bo_quan_ao_bong_ro_jordan_choibongrovn_2_1024x1024_78d7ea70e7\", \"mime\": \"image/jpeg\", \"name\": \"medium_bo-quan-ao-bong-ro-jordan-choibongrovn-2-1024x1024.jpg\", \"path\": null, \"size\": 51.39, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_bo_quan_ao_bong_ro_jordan_choibongrovn_2_1024x1024_78d7ea70e7.jpg\", \"hash\": \"thumbnail_bo_quan_ao_bong_ro_jordan_choibongrovn_2_1024x1024_78d7ea70e7\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bo-quan-ao-bong-ro-jordan-choibongrovn-2-1024x1024.jpg\", \"path\": null, \"size\": 5.51, \"width\": 156, \"height\": 156}}', 'bo_quan_ao_bong_ro_jordan_choibongrovn_2_1024x1024_78d7ea70e7', '.jpg', 'image/jpeg', 78.20, '/uploads/bo_quan_ao_bong_ro_jordan_choibongrovn_2_1024x1024_78d7ea70e7.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:01:29.184000', '2023-06-28 12:01:29.184000', NULL, NULL),
(188, 'bo-quan-ao-bong-ro-jordan-choibongrovn-3-1024x1024.jpg', NULL, NULL, 1024, 1024, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_bo_quan_ao_bong_ro_jordan_choibongrovn_3_1024x1024_6a81be83df.jpg\", \"hash\": \"large_bo_quan_ao_bong_ro_jordan_choibongrovn_3_1024x1024_6a81be83df\", \"mime\": \"image/jpeg\", \"name\": \"large_bo-quan-ao-bong-ro-jordan-choibongrovn-3-1024x1024.jpg\", \"path\": null, \"size\": 81.51, \"width\": 1000, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_bo_quan_ao_bong_ro_jordan_choibongrovn_3_1024x1024_6a81be83df.jpg\", \"hash\": \"small_bo_quan_ao_bong_ro_jordan_choibongrovn_3_1024x1024_6a81be83df\", \"mime\": \"image/jpeg\", \"name\": \"small_bo-quan-ao-bong-ro-jordan-choibongrovn-3-1024x1024.jpg\", \"path\": null, \"size\": 31.54, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_bo_quan_ao_bong_ro_jordan_choibongrovn_3_1024x1024_6a81be83df.jpg\", \"hash\": \"medium_bo_quan_ao_bong_ro_jordan_choibongrovn_3_1024x1024_6a81be83df\", \"mime\": \"image/jpeg\", \"name\": \"medium_bo-quan-ao-bong-ro-jordan-choibongrovn-3-1024x1024.jpg\", \"path\": null, \"size\": 54.8, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_bo_quan_ao_bong_ro_jordan_choibongrovn_3_1024x1024_6a81be83df.jpg\", \"hash\": \"thumbnail_bo_quan_ao_bong_ro_jordan_choibongrovn_3_1024x1024_6a81be83df\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bo-quan-ao-bong-ro-jordan-choibongrovn-3-1024x1024.jpg\", \"path\": null, \"size\": 5.83, \"width\": 156, \"height\": 156}}', 'bo_quan_ao_bong_ro_jordan_choibongrovn_3_1024x1024_6a81be83df', '.jpg', 'image/jpeg', 83.78, '/uploads/bo_quan_ao_bong_ro_jordan_choibongrovn_3_1024x1024_6a81be83df.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:01:32.676000', '2023-06-28 12:01:32.676000', NULL, NULL),
(189, 'vot-bong-ban-and1__5_.jpg', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_vot_bong_ban_and1_5_ab3e03fe76.jpg\", \"hash\": \"small_vot_bong_ban_and1_5_ab3e03fe76\", \"mime\": \"image/jpeg\", \"name\": \"small_vot-bong-ban-and1__5_.jpg\", \"path\": null, \"size\": 15.33, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_vot_bong_ban_and1_5_ab3e03fe76.jpg\", \"hash\": \"thumbnail_vot_bong_ban_and1_5_ab3e03fe76\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_vot-bong-ban-and1__5_.jpg\", \"path\": null, \"size\": 3.13, \"width\": 156, \"height\": 156}}', 'vot_bong_ban_and1_5_ab3e03fe76', '.jpg', 'image/jpeg', 20.09, '/uploads/vot_bong_ban_and1_5_ab3e03fe76.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:04:26.127000', '2023-06-28 12:04:26.127000', NULL, NULL),
(190, 'vot-bong-ban-and1__4_.jpg', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_vot_bong_ban_and1_4_7f2bb552fd.jpg\", \"hash\": \"small_vot_bong_ban_and1_4_7f2bb552fd\", \"mime\": \"image/jpeg\", \"name\": \"small_vot-bong-ban-and1__4_.jpg\", \"path\": null, \"size\": 22.42, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_vot_bong_ban_and1_4_7f2bb552fd.jpg\", \"hash\": \"thumbnail_vot_bong_ban_and1_4_7f2bb552fd\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_vot-bong-ban-and1__4_.jpg\", \"path\": null, \"size\": 3.15, \"width\": 156, \"height\": 156}}', 'vot_bong_ban_and1_4_7f2bb552fd', '.jpg', 'image/jpeg', 30.76, '/uploads/vot_bong_ban_and1_4_7f2bb552fd.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:04:28.467000', '2023-06-28 12:04:28.467000', NULL, NULL),
(191, 'vot-bong-ban-and1__1_.jpg', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_vot_bong_ban_and1_1_c78335adf7.jpg\", \"hash\": \"small_vot_bong_ban_and1_1_c78335adf7\", \"mime\": \"image/jpeg\", \"name\": \"small_vot-bong-ban-and1__1_.jpg\", \"path\": null, \"size\": 13.41, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_vot_bong_ban_and1_1_c78335adf7.jpg\", \"hash\": \"thumbnail_vot_bong_ban_and1_1_c78335adf7\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_vot-bong-ban-and1__1_.jpg\", \"path\": null, \"size\": 2.54, \"width\": 156, \"height\": 156}}', 'vot_bong_ban_and1_1_c78335adf7', '.jpg', 'image/jpeg', 17.87, '/uploads/vot_bong_ban_and1_1_c78335adf7.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:04:30.648000', '2023-06-28 12:04:30.648000', NULL, NULL);
INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(192, 'vot-bong-ban-and1__3_.jpg', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_vot_bong_ban_and1_3_ead88c8aa6.jpg\", \"hash\": \"small_vot_bong_ban_and1_3_ead88c8aa6\", \"mime\": \"image/jpeg\", \"name\": \"small_vot-bong-ban-and1__3_.jpg\", \"path\": null, \"size\": 16.66, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_vot_bong_ban_and1_3_ead88c8aa6.jpg\", \"hash\": \"thumbnail_vot_bong_ban_and1_3_ead88c8aa6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_vot-bong-ban-and1__3_.jpg\", \"path\": null, \"size\": 2.79, \"width\": 156, \"height\": 156}}', 'vot_bong_ban_and1_3_ead88c8aa6', '.jpg', 'image/jpeg', 22.52, '/uploads/vot_bong_ban_and1_3_ead88c8aa6.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:04:32.960000', '2023-06-28 12:04:32.960000', NULL, NULL),
(193, 'Set-30-qua-bong-ban-40mm-1-sao-GoodFit-2-1-700x700.jpg', NULL, NULL, 700, 700, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Set_30_qua_bong_ban_40mm_1_sao_Good_Fit_2_1_700x700_57197533db.jpg\", \"hash\": \"small_Set_30_qua_bong_ban_40mm_1_sao_Good_Fit_2_1_700x700_57197533db\", \"mime\": \"image/jpeg\", \"name\": \"small_Set-30-qua-bong-ban-40mm-1-sao-GoodFit-2-1-700x700.jpg\", \"path\": null, \"size\": 13.98, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Set_30_qua_bong_ban_40mm_1_sao_Good_Fit_2_1_700x700_57197533db.jpg\", \"hash\": \"thumbnail_Set_30_qua_bong_ban_40mm_1_sao_Good_Fit_2_1_700x700_57197533db\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Set-30-qua-bong-ban-40mm-1-sao-GoodFit-2-1-700x700.jpg\", \"path\": null, \"size\": 2.78, \"width\": 156, \"height\": 156}}', 'Set_30_qua_bong_ban_40mm_1_sao_Good_Fit_2_1_700x700_57197533db', '.jpg', 'image/jpeg', 23.58, '/uploads/Set_30_qua_bong_ban_40mm_1_sao_Good_Fit_2_1_700x700_57197533db.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:06:32.358000', '2023-06-28 12:06:32.358000', NULL, NULL),
(194, 'Set-30-qua-bong-ban-40mm-1-sao-GoodFit-9.jpg', NULL, NULL, 1000, 1000, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Set_30_qua_bong_ban_40mm_1_sao_Good_Fit_9_72b811a070.jpg\", \"hash\": \"small_Set_30_qua_bong_ban_40mm_1_sao_Good_Fit_9_72b811a070\", \"mime\": \"image/jpeg\", \"name\": \"small_Set-30-qua-bong-ban-40mm-1-sao-GoodFit-9.jpg\", \"path\": null, \"size\": 20.69, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Set_30_qua_bong_ban_40mm_1_sao_Good_Fit_9_72b811a070.jpg\", \"hash\": \"medium_Set_30_qua_bong_ban_40mm_1_sao_Good_Fit_9_72b811a070\", \"mime\": \"image/jpeg\", \"name\": \"medium_Set-30-qua-bong-ban-40mm-1-sao-GoodFit-9.jpg\", \"path\": null, \"size\": 37.51, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Set_30_qua_bong_ban_40mm_1_sao_Good_Fit_9_72b811a070.jpg\", \"hash\": \"thumbnail_Set_30_qua_bong_ban_40mm_1_sao_Good_Fit_9_72b811a070\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Set-30-qua-bong-ban-40mm-1-sao-GoodFit-9.jpg\", \"path\": null, \"size\": 3.74, \"width\": 156, \"height\": 156}}', 'Set_30_qua_bong_ban_40mm_1_sao_Good_Fit_9_72b811a070', '.jpg', 'image/jpeg', 56.55, '/uploads/Set_30_qua_bong_ban_40mm_1_sao_Good_Fit_9_72b811a070.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:06:34.175000', '2023-06-28 12:06:34.175000', NULL, NULL),
(195, 'Set-30-qua-bong-ban-40mm-1-sao-GoodFit-8.jpg', NULL, NULL, 1000, 1000, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Set_30_qua_bong_ban_40mm_1_sao_Good_Fit_8_f33d77d2b6.jpg\", \"hash\": \"small_Set_30_qua_bong_ban_40mm_1_sao_Good_Fit_8_f33d77d2b6\", \"mime\": \"image/jpeg\", \"name\": \"small_Set-30-qua-bong-ban-40mm-1-sao-GoodFit-8.jpg\", \"path\": null, \"size\": 21.98, \"width\": 500, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Set_30_qua_bong_ban_40mm_1_sao_Good_Fit_8_f33d77d2b6.jpg\", \"hash\": \"medium_Set_30_qua_bong_ban_40mm_1_sao_Good_Fit_8_f33d77d2b6\", \"mime\": \"image/jpeg\", \"name\": \"medium_Set-30-qua-bong-ban-40mm-1-sao-GoodFit-8.jpg\", \"path\": null, \"size\": 43.08, \"width\": 750, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Set_30_qua_bong_ban_40mm_1_sao_Good_Fit_8_f33d77d2b6.jpg\", \"hash\": \"thumbnail_Set_30_qua_bong_ban_40mm_1_sao_Good_Fit_8_f33d77d2b6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Set-30-qua-bong-ban-40mm-1-sao-GoodFit-8.jpg\", \"path\": null, \"size\": 4.09, \"width\": 156, \"height\": 156}}', 'Set_30_qua_bong_ban_40mm_1_sao_Good_Fit_8_f33d77d2b6', '.jpg', 'image/jpeg', 71.06, '/uploads/Set_30_qua_bong_ban_40mm_1_sao_Good_Fit_8_f33d77d2b6.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:06:36.785000', '2023-06-28 12:06:36.785000', NULL, NULL),
(196, 'ban-bong-ban-vinasport-mdf-25-ly.jpg', NULL, NULL, 600, 500, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_ban_bong_ban_vinasport_mdf_25_ly_b0d59ba181.jpg\", \"hash\": \"small_ban_bong_ban_vinasport_mdf_25_ly_b0d59ba181\", \"mime\": \"image/jpeg\", \"name\": \"small_ban-bong-ban-vinasport-mdf-25-ly.jpg\", \"path\": null, \"size\": 14.73, \"width\": 500, \"height\": 417}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ban_bong_ban_vinasport_mdf_25_ly_b0d59ba181.jpg\", \"hash\": \"thumbnail_ban_bong_ban_vinasport_mdf_25_ly_b0d59ba181\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ban-bong-ban-vinasport-mdf-25-ly.jpg\", \"path\": null, \"size\": 3.8, \"width\": 187, \"height\": 156}}', 'ban_bong_ban_vinasport_mdf_25_ly_b0d59ba181', '.jpg', 'image/jpeg', 19.01, '/uploads/ban_bong_ban_vinasport_mdf_25_ly_b0d59ba181.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:11:05.805000', '2023-06-28 12:11:05.805000', NULL, NULL),
(197, 'tải xuống.jpg', NULL, NULL, 285, 177, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tai_xuong_099b790e9d.jpg\", \"hash\": \"thumbnail_tai_xuong_099b790e9d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tải xuống.jpg\", \"path\": null, \"size\": 5.89, \"width\": 245, \"height\": 152}}', 'tai_xuong_099b790e9d', '.jpg', 'image/jpeg', 5.72, '/uploads/tai_xuong_099b790e9d.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:11:08.035000', '2023-06-28 12:11:08.035000', NULL, NULL),
(198, 'bo-gay-golf-honma-beres-08-black-13-gay-6.jpg', NULL, NULL, 1633, 1225, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_bo_gay_golf_honma_beres_08_black_13_gay_6_e7280e6a23.jpg\", \"hash\": \"large_bo_gay_golf_honma_beres_08_black_13_gay_6_e7280e6a23\", \"mime\": \"image/jpeg\", \"name\": \"large_bo-gay-golf-honma-beres-08-black-13-gay-6.jpg\", \"path\": null, \"size\": 74.54, \"width\": 1000, \"height\": 750}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_bo_gay_golf_honma_beres_08_black_13_gay_6_e7280e6a23.jpg\", \"hash\": \"small_bo_gay_golf_honma_beres_08_black_13_gay_6_e7280e6a23\", \"mime\": \"image/jpeg\", \"name\": \"small_bo-gay-golf-honma-beres-08-black-13-gay-6.jpg\", \"path\": null, \"size\": 24.37, \"width\": 500, \"height\": 375}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_bo_gay_golf_honma_beres_08_black_13_gay_6_e7280e6a23.jpg\", \"hash\": \"medium_bo_gay_golf_honma_beres_08_black_13_gay_6_e7280e6a23\", \"mime\": \"image/jpeg\", \"name\": \"medium_bo-gay-golf-honma-beres-08-black-13-gay-6.jpg\", \"path\": null, \"size\": 47.68, \"width\": 750, \"height\": 563}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_bo_gay_golf_honma_beres_08_black_13_gay_6_e7280e6a23.jpg\", \"hash\": \"thumbnail_bo_gay_golf_honma_beres_08_black_13_gay_6_e7280e6a23\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bo-gay-golf-honma-beres-08-black-13-gay-6.jpg\", \"path\": null, \"size\": 6.11, \"width\": 208, \"height\": 156}}', 'bo_gay_golf_honma_beres_08_black_13_gay_6_e7280e6a23', '.jpg', 'image/jpeg', 154.90, '/uploads/bo_gay_golf_honma_beres_08_black_13_gay_6_e7280e6a23.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:15:38.375000', '2023-06-28 12:15:38.375000', NULL, NULL),
(199, 'bo-gay-golf-honma-beres-08-black-13-gay-5.jpg', NULL, NULL, 668, 501, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_bo_gay_golf_honma_beres_08_black_13_gay_5_dce14d24e9.jpg\", \"hash\": \"small_bo_gay_golf_honma_beres_08_black_13_gay_5_dce14d24e9\", \"mime\": \"image/jpeg\", \"name\": \"small_bo-gay-golf-honma-beres-08-black-13-gay-5.jpg\", \"path\": null, \"size\": 14.99, \"width\": 500, \"height\": 375}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_bo_gay_golf_honma_beres_08_black_13_gay_5_dce14d24e9.jpg\", \"hash\": \"thumbnail_bo_gay_golf_honma_beres_08_black_13_gay_5_dce14d24e9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bo-gay-golf-honma-beres-08-black-13-gay-5.jpg\", \"path\": null, \"size\": 3.67, \"width\": 208, \"height\": 156}}', 'bo_gay_golf_honma_beres_08_black_13_gay_5_dce14d24e9', '.jpg', 'image/jpeg', 23.44, '/uploads/bo_gay_golf_honma_beres_08_black_13_gay_5_dce14d24e9.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:15:40.611000', '2023-06-28 12:15:40.611000', NULL, NULL),
(200, 'bo-gay-golf-honma-beres-08-black-13-gay-3.jpg', NULL, NULL, 660, 495, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_bo_gay_golf_honma_beres_08_black_13_gay_3_cefcf27de8.jpg\", \"hash\": \"small_bo_gay_golf_honma_beres_08_black_13_gay_3_cefcf27de8\", \"mime\": \"image/jpeg\", \"name\": \"small_bo-gay-golf-honma-beres-08-black-13-gay-3.jpg\", \"path\": null, \"size\": 18.97, \"width\": 500, \"height\": 375}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_bo_gay_golf_honma_beres_08_black_13_gay_3_cefcf27de8.jpg\", \"hash\": \"thumbnail_bo_gay_golf_honma_beres_08_black_13_gay_3_cefcf27de8\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bo-gay-golf-honma-beres-08-black-13-gay-3.jpg\", \"path\": null, \"size\": 4.99, \"width\": 208, \"height\": 156}}', 'bo_gay_golf_honma_beres_08_black_13_gay_3_cefcf27de8', '.jpg', 'image/jpeg', 29.15, '/uploads/bo_gay_golf_honma_beres_08_black_13_gay_3_cefcf27de8.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:15:46.150000', '2023-06-28 12:15:46.150000', NULL, NULL),
(201, 'bo-gay-golf-honma-beres-08-black-13-gay-2.jpg', NULL, NULL, 486, 365, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_bo_gay_golf_honma_beres_08_black_13_gay_2_aa204e8512.jpg\", \"hash\": \"thumbnail_bo_gay_golf_honma_beres_08_black_13_gay_2_aa204e8512\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bo-gay-golf-honma-beres-08-black-13-gay-2.jpg\", \"path\": null, \"size\": 4.74, \"width\": 208, \"height\": 156}}', 'bo_gay_golf_honma_beres_08_black_13_gay_2_aa204e8512', '.jpg', 'image/jpeg', 19.53, '/uploads/bo_gay_golf_honma_beres_08_black_13_gay_2_aa204e8512.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:15:48.814000', '2023-06-28 12:15:48.814000', NULL, NULL),
(202, 'hinh-anh-bong-golf-trust-panther-new.jpg', NULL, NULL, 450, 450, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_hinh_anh_bong_golf_trust_panther_new_c05548cf38.jpg\", \"hash\": \"thumbnail_hinh_anh_bong_golf_trust_panther_new_c05548cf38\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_hinh-anh-bong-golf-trust-panther-new.jpg\", \"path\": null, \"size\": 3.41, \"width\": 156, \"height\": 156}}', 'hinh_anh_bong_golf_trust_panther_new_c05548cf38', '.jpg', 'image/jpeg', 14.26, '/uploads/hinh_anh_bong_golf_trust_panther_new_c05548cf38.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:20:16.831000', '2023-06-28 12:20:16.831000', NULL, NULL),
(203, 'hinh-anh-bong-golf-trust-panther-new-2-1.jpg', NULL, NULL, 450, 450, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_hinh_anh_bong_golf_trust_panther_new_2_1_8edc6ee901.jpg\", \"hash\": \"thumbnail_hinh_anh_bong_golf_trust_panther_new_2_1_8edc6ee901\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_hinh-anh-bong-golf-trust-panther-new-2-1.jpg\", \"path\": null, \"size\": 2.22, \"width\": 156, \"height\": 156}}', 'hinh_anh_bong_golf_trust_panther_new_2_1_8edc6ee901', '.jpg', 'image/jpeg', 9.11, '/uploads/hinh_anh_bong_golf_trust_panther_new_2_1_8edc6ee901.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:20:22.390000', '2023-06-28 12:20:22.390000', NULL, NULL),
(204, 'hinh-anh-bong-golf-trust-panther-new-3-1.jpg', NULL, NULL, 450, 450, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_hinh_anh_bong_golf_trust_panther_new_3_1_433f2e7ccc.jpg\", \"hash\": \"thumbnail_hinh_anh_bong_golf_trust_panther_new_3_1_433f2e7ccc\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_hinh-anh-bong-golf-trust-panther-new-3-1.jpg\", \"path\": null, \"size\": 1.95, \"width\": 156, \"height\": 156}}', 'hinh_anh_bong_golf_trust_panther_new_3_1_433f2e7ccc', '.jpg', 'image/jpeg', 7.96, '/uploads/hinh_anh_bong_golf_trust_panther_new_3_1_433f2e7ccc.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:20:25.006000', '2023-06-28 12:20:25.006000', NULL, NULL),
(205, 'hinh-anh-bong-golf-trust-panther-new-4-1.jpg', NULL, NULL, 450, 450, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_hinh_anh_bong_golf_trust_panther_new_4_1_5cfa8871c6.jpg\", \"hash\": \"thumbnail_hinh_anh_bong_golf_trust_panther_new_4_1_5cfa8871c6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_hinh-anh-bong-golf-trust-panther-new-4-1.jpg\", \"path\": null, \"size\": 3.54, \"width\": 156, \"height\": 156}}', 'hinh_anh_bong_golf_trust_panther_new_4_1_5cfa8871c6', '.jpg', 'image/jpeg', 16.44, '/uploads/hinh_anh_bong_golf_trust_panther_new_4_1_5cfa8871c6.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:20:27.307000', '2023-06-28 12:20:27.307000', NULL, NULL),
(206, 'hinh-anh-bong-golf-trust-panther-new-5-1.jpg', NULL, NULL, 450, 450, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_hinh_anh_bong_golf_trust_panther_new_5_1_e6c466041a.jpg\", \"hash\": \"thumbnail_hinh_anh_bong_golf_trust_panther_new_5_1_e6c466041a\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_hinh-anh-bong-golf-trust-panther-new-5-1.jpg\", \"path\": null, \"size\": 1.8, \"width\": 156, \"height\": 156}}', 'hinh_anh_bong_golf_trust_panther_new_5_1_e6c466041a', '.jpg', 'image/jpeg', 7.77, '/uploads/hinh_anh_bong_golf_trust_panther_new_5_1_e6c466041a.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:20:30.776000', '2023-06-28 12:20:30.776000', NULL, NULL),
(207, 'xe-mercedes-g63-amg-1.jpg', NULL, NULL, 800, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_xe_mercedes_g63_amg_1_59e1b0be70.jpg\", \"hash\": \"small_xe_mercedes_g63_amg_1_59e1b0be70\", \"mime\": \"image/jpeg\", \"name\": \"small_xe-mercedes-g63-amg-1.jpg\", \"path\": null, \"size\": 51.32, \"width\": 500, \"height\": 375}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_xe_mercedes_g63_amg_1_59e1b0be70.jpg\", \"hash\": \"medium_xe_mercedes_g63_amg_1_59e1b0be70\", \"mime\": \"image/jpeg\", \"name\": \"medium_xe-mercedes-g63-amg-1.jpg\", \"path\": null, \"size\": 98.76, \"width\": 750, \"height\": 563}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_xe_mercedes_g63_amg_1_59e1b0be70.jpg\", \"hash\": \"thumbnail_xe_mercedes_g63_amg_1_59e1b0be70\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_xe-mercedes-g63-amg-1.jpg\", \"path\": null, \"size\": 10.84, \"width\": 208, \"height\": 156}}', 'xe_mercedes_g63_amg_1_59e1b0be70', '.jpg', 'image/jpeg', 108.78, '/uploads/xe_mercedes_g63_amg_1_59e1b0be70.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:25:38.868000', '2023-06-28 12:25:38.868000', NULL, NULL),
(208, 'xe-mercedes-g63-amg-2.jpg', NULL, NULL, 800, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_xe_mercedes_g63_amg_2_401f20e87f.jpg\", \"hash\": \"small_xe_mercedes_g63_amg_2_401f20e87f\", \"mime\": \"image/jpeg\", \"name\": \"small_xe-mercedes-g63-amg-2.jpg\", \"path\": null, \"size\": 50.74, \"width\": 500, \"height\": 375}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_xe_mercedes_g63_amg_2_401f20e87f.jpg\", \"hash\": \"medium_xe_mercedes_g63_amg_2_401f20e87f\", \"mime\": \"image/jpeg\", \"name\": \"medium_xe-mercedes-g63-amg-2.jpg\", \"path\": null, \"size\": 95.68, \"width\": 750, \"height\": 563}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_xe_mercedes_g63_amg_2_401f20e87f.jpg\", \"hash\": \"thumbnail_xe_mercedes_g63_amg_2_401f20e87f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_xe-mercedes-g63-amg-2.jpg\", \"path\": null, \"size\": 10.89, \"width\": 208, \"height\": 156}}', 'xe_mercedes_g63_amg_2_401f20e87f', '.jpg', 'image/jpeg', 105.38, '/uploads/xe_mercedes_g63_amg_2_401f20e87f.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:25:44.434000', '2023-06-28 12:25:44.434000', NULL, NULL),
(209, 'xe-mercedes-g63-amg-7.jpg', NULL, NULL, 800, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_xe_mercedes_g63_amg_7_832e6ae10f.jpg\", \"hash\": \"small_xe_mercedes_g63_amg_7_832e6ae10f\", \"mime\": \"image/jpeg\", \"name\": \"small_xe-mercedes-g63-amg-7.jpg\", \"path\": null, \"size\": 58.12, \"width\": 500, \"height\": 375}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_xe_mercedes_g63_amg_7_832e6ae10f.jpg\", \"hash\": \"medium_xe_mercedes_g63_amg_7_832e6ae10f\", \"mime\": \"image/jpeg\", \"name\": \"medium_xe-mercedes-g63-amg-7.jpg\", \"path\": null, \"size\": 114.86, \"width\": 750, \"height\": 563}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_xe_mercedes_g63_amg_7_832e6ae10f.jpg\", \"hash\": \"thumbnail_xe_mercedes_g63_amg_7_832e6ae10f\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_xe-mercedes-g63-amg-7.jpg\", \"path\": null, \"size\": 11.8, \"width\": 208, \"height\": 156}}', 'xe_mercedes_g63_amg_7_832e6ae10f', '.jpg', 'image/jpeg', 127.27, '/uploads/xe_mercedes_g63_amg_7_832e6ae10f.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:25:47.749000', '2023-06-28 12:25:47.749000', NULL, NULL),
(210, 'xe-mercedes-g63-amg-14.jpg', NULL, NULL, 800, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_xe_mercedes_g63_amg_14_58e8794174.jpg\", \"hash\": \"small_xe_mercedes_g63_amg_14_58e8794174\", \"mime\": \"image/jpeg\", \"name\": \"small_xe-mercedes-g63-amg-14.jpg\", \"path\": null, \"size\": 48.21, \"width\": 500, \"height\": 375}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_xe_mercedes_g63_amg_14_58e8794174.jpg\", \"hash\": \"medium_xe_mercedes_g63_amg_14_58e8794174\", \"mime\": \"image/jpeg\", \"name\": \"medium_xe-mercedes-g63-amg-14.jpg\", \"path\": null, \"size\": 90.37, \"width\": 750, \"height\": 563}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_xe_mercedes_g63_amg_14_58e8794174.jpg\", \"hash\": \"thumbnail_xe_mercedes_g63_amg_14_58e8794174\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_xe-mercedes-g63-amg-14.jpg\", \"path\": null, \"size\": 10.84, \"width\": 208, \"height\": 156}}', 'xe_mercedes_g63_amg_14_58e8794174', '.jpg', 'image/jpeg', 98.62, '/uploads/xe_mercedes_g63_amg_14_58e8794174.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:25:50.059000', '2023-06-28 12:25:50.059000', NULL, NULL),
(211, 'xe-mercedes-g63-amg-19.jpg', NULL, NULL, 800, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_xe_mercedes_g63_amg_19_e3de89600c.jpg\", \"hash\": \"small_xe_mercedes_g63_amg_19_e3de89600c\", \"mime\": \"image/jpeg\", \"name\": \"small_xe-mercedes-g63-amg-19.jpg\", \"path\": null, \"size\": 45.97, \"width\": 500, \"height\": 375}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_xe_mercedes_g63_amg_19_e3de89600c.jpg\", \"hash\": \"medium_xe_mercedes_g63_amg_19_e3de89600c\", \"mime\": \"image/jpeg\", \"name\": \"medium_xe-mercedes-g63-amg-19.jpg\", \"path\": null, \"size\": 87.19, \"width\": 750, \"height\": 563}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_xe_mercedes_g63_amg_19_e3de89600c.jpg\", \"hash\": \"thumbnail_xe_mercedes_g63_amg_19_e3de89600c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_xe-mercedes-g63-amg-19.jpg\", \"path\": null, \"size\": 10.14, \"width\": 208, \"height\": 156}}', 'xe_mercedes_g63_amg_19_e3de89600c', '.jpg', 'image/jpeg', 96.64, '/uploads/xe_mercedes_g63_amg_19_e3de89600c.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:25:52.151000', '2023-06-28 12:25:52.151000', NULL, NULL),
(212, 'xe-mercedes-g63-amg-20.jpg', NULL, NULL, 800, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_xe_mercedes_g63_amg_20_9c7d23c437.jpg\", \"hash\": \"small_xe_mercedes_g63_amg_20_9c7d23c437\", \"mime\": \"image/jpeg\", \"name\": \"small_xe-mercedes-g63-amg-20.jpg\", \"path\": null, \"size\": 45.02, \"width\": 500, \"height\": 375}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_xe_mercedes_g63_amg_20_9c7d23c437.jpg\", \"hash\": \"medium_xe_mercedes_g63_amg_20_9c7d23c437\", \"mime\": \"image/jpeg\", \"name\": \"medium_xe-mercedes-g63-amg-20.jpg\", \"path\": null, \"size\": 87.17, \"width\": 750, \"height\": 563}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_xe_mercedes_g63_amg_20_9c7d23c437.jpg\", \"hash\": \"thumbnail_xe_mercedes_g63_amg_20_9c7d23c437\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_xe-mercedes-g63-amg-20.jpg\", \"path\": null, \"size\": 10.33, \"width\": 208, \"height\": 156}}', 'xe_mercedes_g63_amg_20_9c7d23c437', '.jpg', 'image/jpeg', 95.89, '/uploads/xe_mercedes_g63_amg_20_9c7d23c437.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:25:54.465000', '2023-06-28 12:25:54.465000', NULL, NULL),
(213, 'xe-mercedes-g63-amg-2.jpg', NULL, NULL, 800, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_xe_mercedes_g63_amg_2_8df0926dca.jpg\", \"hash\": \"small_xe_mercedes_g63_amg_2_8df0926dca\", \"mime\": \"image/jpeg\", \"name\": \"small_xe-mercedes-g63-amg-2.jpg\", \"path\": null, \"size\": 50.74, \"width\": 500, \"height\": 375}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_xe_mercedes_g63_amg_2_8df0926dca.jpg\", \"hash\": \"medium_xe_mercedes_g63_amg_2_8df0926dca\", \"mime\": \"image/jpeg\", \"name\": \"medium_xe-mercedes-g63-amg-2.jpg\", \"path\": null, \"size\": 95.68, \"width\": 750, \"height\": 563}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_xe_mercedes_g63_amg_2_8df0926dca.jpg\", \"hash\": \"thumbnail_xe_mercedes_g63_amg_2_8df0926dca\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_xe-mercedes-g63-amg-2.jpg\", \"path\": null, \"size\": 10.89, \"width\": 208, \"height\": 156}}', 'xe_mercedes_g63_amg_2_8df0926dca', '.jpg', 'image/jpeg', 105.38, '/uploads/xe_mercedes_g63_amg_2_8df0926dca.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:27:17.171000', '2023-06-28 12:27:17.171000', NULL, NULL),
(214, 'xe-mercedes-g63-amg-1.jpg', NULL, NULL, 800, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_xe_mercedes_g63_amg_1_5cc1d6b303.jpg\", \"hash\": \"small_xe_mercedes_g63_amg_1_5cc1d6b303\", \"mime\": \"image/jpeg\", \"name\": \"small_xe-mercedes-g63-amg-1.jpg\", \"path\": null, \"size\": 51.32, \"width\": 500, \"height\": 375}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_xe_mercedes_g63_amg_1_5cc1d6b303.jpg\", \"hash\": \"medium_xe_mercedes_g63_amg_1_5cc1d6b303\", \"mime\": \"image/jpeg\", \"name\": \"medium_xe-mercedes-g63-amg-1.jpg\", \"path\": null, \"size\": 98.76, \"width\": 750, \"height\": 563}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_xe_mercedes_g63_amg_1_5cc1d6b303.jpg\", \"hash\": \"thumbnail_xe_mercedes_g63_amg_1_5cc1d6b303\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_xe-mercedes-g63-amg-1.jpg\", \"path\": null, \"size\": 10.84, \"width\": 208, \"height\": 156}}', 'xe_mercedes_g63_amg_1_5cc1d6b303', '.jpg', 'image/jpeg', 108.78, '/uploads/xe_mercedes_g63_amg_1_5cc1d6b303.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:27:19.307000', '2023-06-28 12:27:19.307000', NULL, NULL),
(215, 'xe-mercedes-g63-amg-7.jpg', NULL, NULL, 800, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_xe_mercedes_g63_amg_7_f6b0c11c98.jpg\", \"hash\": \"small_xe_mercedes_g63_amg_7_f6b0c11c98\", \"mime\": \"image/jpeg\", \"name\": \"small_xe-mercedes-g63-amg-7.jpg\", \"path\": null, \"size\": 58.12, \"width\": 500, \"height\": 375}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_xe_mercedes_g63_amg_7_f6b0c11c98.jpg\", \"hash\": \"medium_xe_mercedes_g63_amg_7_f6b0c11c98\", \"mime\": \"image/jpeg\", \"name\": \"medium_xe-mercedes-g63-amg-7.jpg\", \"path\": null, \"size\": 114.86, \"width\": 750, \"height\": 563}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_xe_mercedes_g63_amg_7_f6b0c11c98.jpg\", \"hash\": \"thumbnail_xe_mercedes_g63_amg_7_f6b0c11c98\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_xe-mercedes-g63-amg-7.jpg\", \"path\": null, \"size\": 11.8, \"width\": 208, \"height\": 156}}', 'xe_mercedes_g63_amg_7_f6b0c11c98', '.jpg', 'image/jpeg', 127.27, '/uploads/xe_mercedes_g63_amg_7_f6b0c11c98.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:27:24.230000', '2023-06-28 12:27:24.230000', NULL, NULL),
(216, 'xe-mercedes-g63-amg-19.jpg', NULL, NULL, 800, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_xe_mercedes_g63_amg_19_74622de005.jpg\", \"hash\": \"small_xe_mercedes_g63_amg_19_74622de005\", \"mime\": \"image/jpeg\", \"name\": \"small_xe-mercedes-g63-amg-19.jpg\", \"path\": null, \"size\": 45.97, \"width\": 500, \"height\": 375}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_xe_mercedes_g63_amg_19_74622de005.jpg\", \"hash\": \"medium_xe_mercedes_g63_amg_19_74622de005\", \"mime\": \"image/jpeg\", \"name\": \"medium_xe-mercedes-g63-amg-19.jpg\", \"path\": null, \"size\": 87.19, \"width\": 750, \"height\": 563}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_xe_mercedes_g63_amg_19_74622de005.jpg\", \"hash\": \"thumbnail_xe_mercedes_g63_amg_19_74622de005\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_xe-mercedes-g63-amg-19.jpg\", \"path\": null, \"size\": 10.14, \"width\": 208, \"height\": 156}}', 'xe_mercedes_g63_amg_19_74622de005', '.jpg', 'image/jpeg', 96.64, '/uploads/xe_mercedes_g63_amg_19_74622de005.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:27:27.780000', '2023-06-28 12:27:27.780000', NULL, NULL),
(217, 'bo-ta-tay-dieu-chinh-11.5-kg-600x600.jpg', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_bo_ta_tay_dieu_chinh_11_5_kg_600x600_53d92ad1b5.jpg\", \"hash\": \"small_bo_ta_tay_dieu_chinh_11_5_kg_600x600_53d92ad1b5\", \"mime\": \"image/jpeg\", \"name\": \"small_bo-ta-tay-dieu-chinh-11.5-kg-600x600.jpg\", \"path\": null, \"size\": 23.05, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_bo_ta_tay_dieu_chinh_11_5_kg_600x600_53d92ad1b5.jpg\", \"hash\": \"thumbnail_bo_ta_tay_dieu_chinh_11_5_kg_600x600_53d92ad1b5\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bo-ta-tay-dieu-chinh-11.5-kg-600x600.jpg\", \"path\": null, \"size\": 4.04, \"width\": 156, \"height\": 156}}', 'bo_ta_tay_dieu_chinh_11_5_kg_600x600_53d92ad1b5', '.jpg', 'image/jpeg', 30.07, '/uploads/bo_ta_tay_dieu_chinh_11_5_kg_600x600_53d92ad1b5.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:38:53.955000', '2023-06-28 12:38:53.955000', NULL, NULL),
(218, 'hinh-anh-thuc-te-ta-tay-dieu-chinh-11.5-kg.jpg', NULL, NULL, 700, 525, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_hinh_anh_thuc_te_ta_tay_dieu_chinh_11_5_kg_5c82be495b.jpg\", \"hash\": \"small_hinh_anh_thuc_te_ta_tay_dieu_chinh_11_5_kg_5c82be495b\", \"mime\": \"image/jpeg\", \"name\": \"small_hinh-anh-thuc-te-ta-tay-dieu-chinh-11.5-kg.jpg\", \"path\": null, \"size\": 38.48, \"width\": 500, \"height\": 375}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_hinh_anh_thuc_te_ta_tay_dieu_chinh_11_5_kg_5c82be495b.jpg\", \"hash\": \"thumbnail_hinh_anh_thuc_te_ta_tay_dieu_chinh_11_5_kg_5c82be495b\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_hinh-anh-thuc-te-ta-tay-dieu-chinh-11.5-kg.jpg\", \"path\": null, \"size\": 6.85, \"width\": 208, \"height\": 156}}', 'hinh_anh_thuc_te_ta_tay_dieu_chinh_11_5_kg_5c82be495b', '.jpg', 'image/jpeg', 74.08, '/uploads/hinh_anh_thuc_te_ta_tay_dieu_chinh_11_5_kg_5c82be495b.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:38:55.846000', '2023-06-28 12:38:55.846000', NULL, NULL),
(219, 'hinh-anh-thuc-te-ta-tay-dieu-chinh-11.5-kg-p2-600x450.jpg', NULL, NULL, 600, 450, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_hinh_anh_thuc_te_ta_tay_dieu_chinh_11_5_kg_p2_600x450_c0082d226c.jpg\", \"hash\": \"small_hinh_anh_thuc_te_ta_tay_dieu_chinh_11_5_kg_p2_600x450_c0082d226c\", \"mime\": \"image/jpeg\", \"name\": \"small_hinh-anh-thuc-te-ta-tay-dieu-chinh-11.5-kg-p2-600x450.jpg\", \"path\": null, \"size\": 34.61, \"width\": 500, \"height\": 375}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_hinh_anh_thuc_te_ta_tay_dieu_chinh_11_5_kg_p2_600x450_c0082d226c.jpg\", \"hash\": \"thumbnail_hinh_anh_thuc_te_ta_tay_dieu_chinh_11_5_kg_p2_600x450_c0082d226c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_hinh-anh-thuc-te-ta-tay-dieu-chinh-11.5-kg-p2-600x450.jpg\", \"path\": null, \"size\": 6.8, \"width\": 208, \"height\": 156}}', 'hinh_anh_thuc_te_ta_tay_dieu_chinh_11_5_kg_p2_600x450_c0082d226c', '.jpg', 'image/jpeg', 47.37, '/uploads/hinh_anh_thuc_te_ta_tay_dieu_chinh_11_5_kg_p2_600x450_c0082d226c.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:38:57.917000', '2023-06-28 12:38:57.917000', NULL, NULL),
(220, 'ta-tay-dieu-chinh-11.5-kg-va-de-dung-ta-600x450.jpg', NULL, NULL, 600, 450, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_ta_tay_dieu_chinh_11_5_kg_va_de_dung_ta_600x450_ed814085a6.jpg\", \"hash\": \"small_ta_tay_dieu_chinh_11_5_kg_va_de_dung_ta_600x450_ed814085a6\", \"mime\": \"image/jpeg\", \"name\": \"small_ta-tay-dieu-chinh-11.5-kg-va-de-dung-ta-600x450.jpg\", \"path\": null, \"size\": 40.32, \"width\": 500, \"height\": 375}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_ta_tay_dieu_chinh_11_5_kg_va_de_dung_ta_600x450_ed814085a6.jpg\", \"hash\": \"thumbnail_ta_tay_dieu_chinh_11_5_kg_va_de_dung_ta_600x450_ed814085a6\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_ta-tay-dieu-chinh-11.5-kg-va-de-dung-ta-600x450.jpg\", \"path\": null, \"size\": 7.33, \"width\": 208, \"height\": 156}}', 'ta_tay_dieu_chinh_11_5_kg_va_de_dung_ta_600x450_ed814085a6', '.jpg', 'image/jpeg', 58.41, '/uploads/ta_tay_dieu_chinh_11_5_kg_va_de_dung_ta_600x450_ed814085a6.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:39:00.887000', '2023-06-28 12:39:00.887000', NULL, NULL),
(221, 'tui-trong-the-thao-gymshark-1-600x600.jpg', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_tui_trong_the_thao_gymshark_1_600x600_c3c9fff4b3.jpg\", \"hash\": \"small_tui_trong_the_thao_gymshark_1_600x600_c3c9fff4b3\", \"mime\": \"image/jpeg\", \"name\": \"small_tui-trong-the-thao-gymshark-1-600x600.jpg\", \"path\": null, \"size\": 17.95, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tui_trong_the_thao_gymshark_1_600x600_c3c9fff4b3.jpg\", \"hash\": \"thumbnail_tui_trong_the_thao_gymshark_1_600x600_c3c9fff4b3\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tui-trong-the-thao-gymshark-1-600x600.jpg\", \"path\": null, \"size\": 3.33, \"width\": 156, \"height\": 156}}', 'tui_trong_the_thao_gymshark_1_600x600_c3c9fff4b3', '.jpg', 'image/jpeg', 23.49, '/uploads/tui_trong_the_thao_gymshark_1_600x600_c3c9fff4b3.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:43:06.148000', '2023-06-28 12:43:06.148000', NULL, NULL),
(222, 'tui-trong-the-thao-gymshark-tap-gym-4-600x600.jpg', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_tui_trong_the_thao_gymshark_tap_gym_4_600x600_f4d878d47d.jpg\", \"hash\": \"small_tui_trong_the_thao_gymshark_tap_gym_4_600x600_f4d878d47d\", \"mime\": \"image/jpeg\", \"name\": \"small_tui-trong-the-thao-gymshark-tap-gym-4-600x600.jpg\", \"path\": null, \"size\": 37.93, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tui_trong_the_thao_gymshark_tap_gym_4_600x600_f4d878d47d.jpg\", \"hash\": \"thumbnail_tui_trong_the_thao_gymshark_tap_gym_4_600x600_f4d878d47d\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tui-trong-the-thao-gymshark-tap-gym-4-600x600.jpg\", \"path\": null, \"size\": 5.9, \"width\": 156, \"height\": 156}}', 'tui_trong_the_thao_gymshark_tap_gym_4_600x600_f4d878d47d', '.jpg', 'image/jpeg', 50.53, '/uploads/tui_trong_the_thao_gymshark_tap_gym_4_600x600_f4d878d47d.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:43:07.898000', '2023-06-28 12:43:07.898000', NULL, NULL),
(223, 'tui-trong-the-thao-gymshark-tap-gym-16-600x600.jpg', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_tui_trong_the_thao_gymshark_tap_gym_16_600x600_2a65569d3c.jpg\", \"hash\": \"small_tui_trong_the_thao_gymshark_tap_gym_16_600x600_2a65569d3c\", \"mime\": \"image/jpeg\", \"name\": \"small_tui-trong-the-thao-gymshark-tap-gym-16-600x600.jpg\", \"path\": null, \"size\": 32.58, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_tui_trong_the_thao_gymshark_tap_gym_16_600x600_2a65569d3c.jpg\", \"hash\": \"thumbnail_tui_trong_the_thao_gymshark_tap_gym_16_600x600_2a65569d3c\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_tui-trong-the-thao-gymshark-tap-gym-16-600x600.jpg\", \"path\": null, \"size\": 5.39, \"width\": 156, \"height\": 156}}', 'tui_trong_the_thao_gymshark_tap_gym_16_600x600_2a65569d3c', '.jpg', 'image/jpeg', 44.89, '/uploads/tui_trong_the_thao_gymshark_tap_gym_16_600x600_2a65569d3c.jpg', NULL, 'local', NULL, '/3', '2023-06-28 12:43:10.823000', '2023-06-28 12:43:10.823000', NULL, NULL),
(224, '6_97a93fedaa624d2883b958ead69d7815_master.webp', NULL, NULL, 750, 750, '{\"small\": {\"ext\": \".webp\", \"url\": \"/uploads/small_6_97a93fedaa624d2883b958ead69d7815_master_ea61b54470.webp\", \"hash\": \"small_6_97a93fedaa624d2883b958ead69d7815_master_ea61b54470\", \"mime\": \"image/webp\", \"name\": \"small_6_97a93fedaa624d2883b958ead69d7815_master.webp\", \"path\": null, \"size\": 7.38, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".webp\", \"url\": \"/uploads/thumbnail_6_97a93fedaa624d2883b958ead69d7815_master_ea61b54470.webp\", \"hash\": \"thumbnail_6_97a93fedaa624d2883b958ead69d7815_master_ea61b54470\", \"mime\": \"image/webp\", \"name\": \"thumbnail_6_97a93fedaa624d2883b958ead69d7815_master.webp\", \"path\": null, \"size\": 1.75, \"width\": 156, \"height\": 156}}', '6_97a93fedaa624d2883b958ead69d7815_master_ea61b54470', '.webp', 'image/webp', 16.63, '/uploads/6_97a93fedaa624d2883b958ead69d7815_master_ea61b54470.webp', NULL, 'local', NULL, '/3', '2023-06-29 13:45:29.236000', '2023-06-29 13:45:29.236000', NULL, NULL),
(225, 'bo-ta-tay-dieu-chinh-11.5-kg-600x600.jpg', NULL, NULL, 600, 600, '{\"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_bo_ta_tay_dieu_chinh_11_5_kg_600x600_c23e7afda1.jpg\", \"hash\": \"small_bo_ta_tay_dieu_chinh_11_5_kg_600x600_c23e7afda1\", \"mime\": \"image/jpeg\", \"name\": \"small_bo-ta-tay-dieu-chinh-11.5-kg-600x600.jpg\", \"path\": null, \"size\": 23.05, \"width\": 500, \"height\": 500}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_bo_ta_tay_dieu_chinh_11_5_kg_600x600_c23e7afda1.jpg\", \"hash\": \"thumbnail_bo_ta_tay_dieu_chinh_11_5_kg_600x600_c23e7afda1\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_bo-ta-tay-dieu-chinh-11.5-kg-600x600.jpg\", \"path\": null, \"size\": 4.04, \"width\": 156, \"height\": 156}}', 'bo_ta_tay_dieu_chinh_11_5_kg_600x600_c23e7afda1', '.jpg', 'image/jpeg', 30.07, '/uploads/bo_ta_tay_dieu_chinh_11_5_kg_600x600_c23e7afda1.jpg', NULL, 'local', NULL, '/3', '2023-06-29 13:45:34.746000', '2023-06-29 13:45:34.746000', NULL, NULL),
(226, 'hinh-nen-xe-moto-yamaha_101703543.jpg', NULL, NULL, 3840, 2160, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_hinh_nen_xe_moto_yamaha_101703543_7faab98cd7.jpg\", \"hash\": \"large_hinh_nen_xe_moto_yamaha_101703543_7faab98cd7\", \"mime\": \"image/jpeg\", \"name\": \"large_hinh-nen-xe-moto-yamaha_101703543.jpg\", \"path\": null, \"size\": 65.4, \"width\": 1000, \"height\": 563}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_hinh_nen_xe_moto_yamaha_101703543_7faab98cd7.jpg\", \"hash\": \"small_hinh_nen_xe_moto_yamaha_101703543_7faab98cd7\", \"mime\": \"image/jpeg\", \"name\": \"small_hinh-nen-xe-moto-yamaha_101703543.jpg\", \"path\": null, \"size\": 21.1, \"width\": 500, \"height\": 281}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_hinh_nen_xe_moto_yamaha_101703543_7faab98cd7.jpg\", \"hash\": \"medium_hinh_nen_xe_moto_yamaha_101703543_7faab98cd7\", \"mime\": \"image/jpeg\", \"name\": \"medium_hinh-nen-xe-moto-yamaha_101703543.jpg\", \"path\": null, \"size\": 39.83, \"width\": 750, \"height\": 422}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_hinh_nen_xe_moto_yamaha_101703543_7faab98cd7.jpg\", \"hash\": \"thumbnail_hinh_nen_xe_moto_yamaha_101703543_7faab98cd7\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_hinh-nen-xe-moto-yamaha_101703543.jpg\", \"path\": null, \"size\": 6.67, \"width\": 245, \"height\": 138}}', 'hinh_nen_xe_moto_yamaha_101703543_7faab98cd7', '.jpg', 'image/jpeg', 689.47, '/uploads/hinh_nen_xe_moto_yamaha_101703543_7faab98cd7.jpg', NULL, 'local', NULL, '/5', '2023-07-13 13:04:05.382000', '2023-07-13 13:04:05.382000', 1, 1),
(227, '2.jpg', NULL, NULL, 1222, 465, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_2_775d49cdd2.jpg\", \"hash\": \"large_2_775d49cdd2\", \"mime\": \"image/jpeg\", \"name\": \"large_2.jpg\", \"path\": null, \"size\": 59.82, \"width\": 1000, \"height\": 381}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_2_775d49cdd2.jpg\", \"hash\": \"small_2_775d49cdd2\", \"mime\": \"image/jpeg\", \"name\": \"small_2.jpg\", \"path\": null, \"size\": 20.18, \"width\": 500, \"height\": 190}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_2_775d49cdd2.jpg\", \"hash\": \"medium_2_775d49cdd2\", \"mime\": \"image/jpeg\", \"name\": \"medium_2.jpg\", \"path\": null, \"size\": 37.92, \"width\": 750, \"height\": 285}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_2_775d49cdd2.jpg\", \"hash\": \"thumbnail_2_775d49cdd2\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_2.jpg\", \"path\": null, \"size\": 6.62, \"width\": 245, \"height\": 93}}', '2_775d49cdd2', '.jpg', 'image/jpeg', 86.77, '/uploads/2_775d49cdd2.jpg', NULL, 'local', NULL, '/5', '2023-07-13 13:22:10.826000', '2023-07-13 13:22:10.826000', 1, 1),
(228, '1.jpg', NULL, NULL, 1920, 1080, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_1_da36643a74.jpg\", \"hash\": \"large_1_da36643a74\", \"mime\": \"image/jpeg\", \"name\": \"large_1.jpg\", \"path\": null, \"size\": 57.63, \"width\": 1000, \"height\": 563}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_1_da36643a74.jpg\", \"hash\": \"small_1_da36643a74\", \"mime\": \"image/jpeg\", \"name\": \"small_1.jpg\", \"path\": null, \"size\": 21, \"width\": 500, \"height\": 281}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_1_da36643a74.jpg\", \"hash\": \"medium_1_da36643a74\", \"mime\": \"image/jpeg\", \"name\": \"medium_1.jpg\", \"path\": null, \"size\": 38.31, \"width\": 750, \"height\": 422}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_1_da36643a74.jpg\", \"hash\": \"thumbnail_1_da36643a74\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_1.jpg\", \"path\": null, \"size\": 7.15, \"width\": 245, \"height\": 138}}', '1_da36643a74', '.jpg', 'image/jpeg', 143.92, '/uploads/1_da36643a74.jpg', NULL, 'local', NULL, '/5', '2023-07-13 13:22:10.903000', '2023-07-13 13:22:10.903000', 1, 1),
(229, '3.png', NULL, NULL, 1200, 768, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_3_61ba896fe5.png\", \"hash\": \"large_3_61ba896fe5\", \"mime\": \"image/png\", \"name\": \"large_3.png\", \"path\": null, \"size\": 1225.36, \"width\": 1000, \"height\": 640}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_3_61ba896fe5.png\", \"hash\": \"small_3_61ba896fe5\", \"mime\": \"image/png\", \"name\": \"small_3.png\", \"path\": null, \"size\": 340.15, \"width\": 500, \"height\": 320}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_3_61ba896fe5.png\", \"hash\": \"medium_3_61ba896fe5\", \"mime\": \"image/png\", \"name\": \"medium_3.png\", \"path\": null, \"size\": 721.91, \"width\": 750, \"height\": 480}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_3_61ba896fe5.png\", \"hash\": \"thumbnail_3_61ba896fe5\", \"mime\": \"image/png\", \"name\": \"thumbnail_3.png\", \"path\": null, \"size\": 93.25, \"width\": 244, \"height\": 156}}', '3_61ba896fe5', '.png', 'image/png', 315.54, '/uploads/3_61ba896fe5.png', NULL, 'local', NULL, '/5', '2023-07-13 13:22:12.369000', '2023-07-13 13:22:12.369000', 1, 1),
(230, 'hinh-nen-xe-moto-yamaha_101703543.jpg', NULL, NULL, 3840, 2160, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_hinh_nen_xe_moto_yamaha_101703543_90ee35f3ee.jpg\", \"hash\": \"large_hinh_nen_xe_moto_yamaha_101703543_90ee35f3ee\", \"mime\": \"image/jpeg\", \"name\": \"large_hinh-nen-xe-moto-yamaha_101703543.jpg\", \"path\": null, \"size\": 65.4, \"width\": 1000, \"height\": 563}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_hinh_nen_xe_moto_yamaha_101703543_90ee35f3ee.jpg\", \"hash\": \"small_hinh_nen_xe_moto_yamaha_101703543_90ee35f3ee\", \"mime\": \"image/jpeg\", \"name\": \"small_hinh-nen-xe-moto-yamaha_101703543.jpg\", \"path\": null, \"size\": 21.1, \"width\": 500, \"height\": 281}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_hinh_nen_xe_moto_yamaha_101703543_90ee35f3ee.jpg\", \"hash\": \"medium_hinh_nen_xe_moto_yamaha_101703543_90ee35f3ee\", \"mime\": \"image/jpeg\", \"name\": \"medium_hinh-nen-xe-moto-yamaha_101703543.jpg\", \"path\": null, \"size\": 39.83, \"width\": 750, \"height\": 422}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_hinh_nen_xe_moto_yamaha_101703543_90ee35f3ee.jpg\", \"hash\": \"thumbnail_hinh_nen_xe_moto_yamaha_101703543_90ee35f3ee\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_hinh-nen-xe-moto-yamaha_101703543.jpg\", \"path\": null, \"size\": 6.67, \"width\": 245, \"height\": 138}}', 'hinh_nen_xe_moto_yamaha_101703543_90ee35f3ee', '.jpg', 'image/jpeg', 689.47, '/uploads/hinh_nen_xe_moto_yamaha_101703543_90ee35f3ee.jpg', NULL, 'local', NULL, '/3', '2023-07-15 11:39:45.632000', '2023-07-15 11:39:45.632000', NULL, NULL),
(231, 'hinh-nen-xe-moto-yamaha_101703543.jpg', NULL, NULL, 3840, 2160, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_hinh_nen_xe_moto_yamaha_101703543_cc947773e4.jpg\", \"hash\": \"large_hinh_nen_xe_moto_yamaha_101703543_cc947773e4\", \"mime\": \"image/jpeg\", \"name\": \"large_hinh-nen-xe-moto-yamaha_101703543.jpg\", \"path\": null, \"size\": 65.4, \"width\": 1000, \"height\": 563}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_hinh_nen_xe_moto_yamaha_101703543_cc947773e4.jpg\", \"hash\": \"small_hinh_nen_xe_moto_yamaha_101703543_cc947773e4\", \"mime\": \"image/jpeg\", \"name\": \"small_hinh-nen-xe-moto-yamaha_101703543.jpg\", \"path\": null, \"size\": 21.1, \"width\": 500, \"height\": 281}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_hinh_nen_xe_moto_yamaha_101703543_cc947773e4.jpg\", \"hash\": \"medium_hinh_nen_xe_moto_yamaha_101703543_cc947773e4\", \"mime\": \"image/jpeg\", \"name\": \"medium_hinh-nen-xe-moto-yamaha_101703543.jpg\", \"path\": null, \"size\": 39.83, \"width\": 750, \"height\": 422}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_hinh_nen_xe_moto_yamaha_101703543_cc947773e4.jpg\", \"hash\": \"thumbnail_hinh_nen_xe_moto_yamaha_101703543_cc947773e4\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_hinh-nen-xe-moto-yamaha_101703543.jpg\", \"path\": null, \"size\": 6.67, \"width\": 245, \"height\": 138}}', 'hinh_nen_xe_moto_yamaha_101703543_cc947773e4', '.jpg', 'image/jpeg', 689.47, '/uploads/hinh_nen_xe_moto_yamaha_101703543_cc947773e4.jpg', NULL, 'local', NULL, '/3', '2023-07-15 11:39:46.713000', '2023-07-15 11:39:46.713000', NULL, NULL),
(232, 'logo192.png', NULL, NULL, 192, 192, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_logo192_24be79efe4.png\", \"hash\": \"thumbnail_logo192_24be79efe4\", \"mime\": \"image/png\", \"name\": \"thumbnail_logo192.png\", \"path\": null, \"size\": 19.6, \"width\": 156, \"height\": 156}}', 'logo192_24be79efe4', '.png', 'image/png', 4.46, '/uploads/logo192_24be79efe4.png', NULL, 'local', NULL, '/3', '2023-07-15 11:40:19.638000', '2023-07-15 11:40:19.638000', NULL, NULL),
(233, 'logo192.png', NULL, NULL, 192, 192, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_logo192_f7f1c72647.png\", \"hash\": \"thumbnail_logo192_f7f1c72647\", \"mime\": \"image/png\", \"name\": \"thumbnail_logo192.png\", \"path\": null, \"size\": 19.6, \"width\": 156, \"height\": 156}}', 'logo192_f7f1c72647', '.png', 'image/png', 4.46, '/uploads/logo192_f7f1c72647.png', NULL, 'local', NULL, '/3', '2023-07-15 11:41:03.928000', '2023-07-15 11:41:03.928000', NULL, NULL),
(234, 'logo.jpg', NULL, NULL, 360, 360, '{\"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_logo_61c3ca3734.jpg\", \"hash\": \"thumbnail_logo_61c3ca3734\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_logo.jpg\", \"path\": null, \"size\": 5.2, \"width\": 156, \"height\": 156}}', 'logo_61c3ca3734', '.jpg', 'image/jpeg', 13.67, '/uploads/logo_61c3ca3734.jpg', NULL, 'local', NULL, '/3', '2023-07-15 11:42:13.826000', '2023-07-15 11:42:13.826000', NULL, NULL),
(235, 'logo192.png', NULL, NULL, 192, 192, '{\"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_logo192_48416c8154.png\", \"hash\": \"thumbnail_logo192_48416c8154\", \"mime\": \"image/png\", \"name\": \"thumbnail_logo192.png\", \"path\": null, \"size\": 19.6, \"width\": 156, \"height\": 156}}', 'logo192_48416c8154', '.png', 'image/png', 4.46, '/uploads/logo192_48416c8154.png', NULL, 'local', NULL, '/3', '2023-07-15 11:42:17.742000', '2023-07-15 11:42:17.742000', NULL, NULL),
(236, '1.png', NULL, NULL, 120, 45, NULL, '1_193ec29002', '.png', 'image/png', 0.85, '/uploads/1_193ec29002.png', NULL, 'local', NULL, '/3', '2023-07-15 11:43:03.496000', '2023-07-15 11:43:03.496000', NULL, NULL),
(237, '3.png', NULL, NULL, 120, 45, NULL, '3_65a8fa1528', '.png', 'image/png', 1.60, '/uploads/3_65a8fa1528.png', NULL, 'local', NULL, '/3', '2023-07-15 11:43:05.310000', '2023-07-15 11:43:05.310000', NULL, NULL),
(238, 'bootstrap-ecommerce-templates.PNG', NULL, NULL, 276, 357, '{\"thumbnail\": {\"ext\": \".PNG\", \"url\": \"/uploads/thumbnail_bootstrap_ecommerce_templates_397b968f2b.PNG\", \"hash\": \"thumbnail_bootstrap_ecommerce_templates_397b968f2b\", \"mime\": \"image/png\", \"name\": \"thumbnail_bootstrap-ecommerce-templates.PNG\", \"path\": null, \"size\": 18.18, \"width\": 121, \"height\": 156}}', 'bootstrap_ecommerce_templates_397b968f2b', '.PNG', 'image/png', 17.00, '/uploads/bootstrap_ecommerce_templates_397b968f2b.PNG', NULL, 'local', NULL, '/3', '2023-07-16 12:18:14.805000', '2023-07-16 12:18:14.805000', NULL, NULL),
(239, 'bootstrap-ecommerce-templates.PNG', NULL, NULL, 276, 357, '{\"thumbnail\": {\"ext\": \".PNG\", \"url\": \"/uploads/thumbnail_bootstrap_ecommerce_templates_f94350d935.PNG\", \"hash\": \"thumbnail_bootstrap_ecommerce_templates_f94350d935\", \"mime\": \"image/png\", \"name\": \"thumbnail_bootstrap-ecommerce-templates.PNG\", \"path\": null, \"size\": 18.18, \"width\": 121, \"height\": 156}}', 'bootstrap_ecommerce_templates_f94350d935', '.PNG', 'image/png', 17.00, '/uploads/bootstrap_ecommerce_templates_f94350d935.PNG', NULL, 'local', NULL, '/3', '2023-07-16 12:18:16.067000', '2023-07-16 12:18:16.067000', NULL, NULL),
(240, 'Bai Tap PVTD.jpg', NULL, NULL, 1499, 530, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_Bai_Tap_PVTD_e28d746100.jpg\", \"hash\": \"large_Bai_Tap_PVTD_e28d746100\", \"mime\": \"image/jpeg\", \"name\": \"large_Bai Tap PVTD.jpg\", \"path\": null, \"size\": 63.29, \"width\": 1000, \"height\": 354}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_Bai_Tap_PVTD_e28d746100.jpg\", \"hash\": \"small_Bai_Tap_PVTD_e28d746100\", \"mime\": \"image/jpeg\", \"name\": \"small_Bai Tap PVTD.jpg\", \"path\": null, \"size\": 20.91, \"width\": 500, \"height\": 177}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_Bai_Tap_PVTD_e28d746100.jpg\", \"hash\": \"medium_Bai_Tap_PVTD_e28d746100\", \"mime\": \"image/jpeg\", \"name\": \"medium_Bai Tap PVTD.jpg\", \"path\": null, \"size\": 39.81, \"width\": 750, \"height\": 265}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_Bai_Tap_PVTD_e28d746100.jpg\", \"hash\": \"thumbnail_Bai_Tap_PVTD_e28d746100\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_Bai Tap PVTD.jpg\", \"path\": null, \"size\": 5.34, \"width\": 245, \"height\": 86}}', 'Bai_Tap_PVTD_e28d746100', '.jpg', 'image/jpeg', 120.61, '/uploads/Bai_Tap_PVTD_e28d746100.jpg', NULL, 'local', NULL, '/3', '2023-07-30 00:42:12.628000', '2023-07-30 00:42:12.628000', NULL, NULL);
INSERT INTO `files` (`id`, `name`, `alternative_text`, `caption`, `width`, `height`, `formats`, `hash`, `ext`, `mime`, `size`, `url`, `preview_url`, `provider`, `provider_metadata`, `folder_path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(241, 'Screenshot 2023-07-27 111601.png', NULL, NULL, 1920, 1080, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_Screenshot_2023_07_27_111601_1bb1ab0ebe.png\", \"hash\": \"large_Screenshot_2023_07_27_111601_1bb1ab0ebe\", \"mime\": \"image/png\", \"name\": \"large_Screenshot 2023-07-27 111601.png\", \"path\": null, \"size\": 236.04, \"width\": 1000, \"height\": 563}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_Screenshot_2023_07_27_111601_1bb1ab0ebe.png\", \"hash\": \"small_Screenshot_2023_07_27_111601_1bb1ab0ebe\", \"mime\": \"image/png\", \"name\": \"small_Screenshot 2023-07-27 111601.png\", \"path\": null, \"size\": 71.9, \"width\": 500, \"height\": 281}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_Screenshot_2023_07_27_111601_1bb1ab0ebe.png\", \"hash\": \"medium_Screenshot_2023_07_27_111601_1bb1ab0ebe\", \"mime\": \"image/png\", \"name\": \"medium_Screenshot 2023-07-27 111601.png\", \"path\": null, \"size\": 142.21, \"width\": 750, \"height\": 422}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Screenshot_2023_07_27_111601_1bb1ab0ebe.png\", \"hash\": \"thumbnail_Screenshot_2023_07_27_111601_1bb1ab0ebe\", \"mime\": \"image/png\", \"name\": \"thumbnail_Screenshot 2023-07-27 111601.png\", \"path\": null, \"size\": 26.21, \"width\": 245, \"height\": 138}}', 'Screenshot_2023_07_27_111601_1bb1ab0ebe', '.png', 'image/png', 171.48, '/uploads/Screenshot_2023_07_27_111601_1bb1ab0ebe.png', NULL, 'local', NULL, '/3', '2023-07-30 00:42:33.115000', '2023-07-30 00:42:33.115000', NULL, NULL),
(242, 'Screenshot (24).png', NULL, NULL, 1920, 1080, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_Screenshot_24_d1dbfadf36.png\", \"hash\": \"large_Screenshot_24_d1dbfadf36\", \"mime\": \"image/png\", \"name\": \"large_Screenshot (24).png\", \"path\": null, \"size\": 576.9, \"width\": 1000, \"height\": 563}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_Screenshot_24_d1dbfadf36.png\", \"hash\": \"small_Screenshot_24_d1dbfadf36\", \"mime\": \"image/png\", \"name\": \"small_Screenshot (24).png\", \"path\": null, \"size\": 175.14, \"width\": 500, \"height\": 281}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_Screenshot_24_d1dbfadf36.png\", \"hash\": \"medium_Screenshot_24_d1dbfadf36\", \"mime\": \"image/png\", \"name\": \"medium_Screenshot (24).png\", \"path\": null, \"size\": 353.16, \"width\": 750, \"height\": 422}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Screenshot_24_d1dbfadf36.png\", \"hash\": \"thumbnail_Screenshot_24_d1dbfadf36\", \"mime\": \"image/png\", \"name\": \"thumbnail_Screenshot (24).png\", \"path\": null, \"size\": 54.46, \"width\": 245, \"height\": 138}}', 'Screenshot_24_d1dbfadf36', '.png', 'image/png', 424.45, '/uploads/Screenshot_24_d1dbfadf36.png', NULL, 'local', NULL, '/3', '2023-07-30 00:56:57.344000', '2023-07-30 00:56:57.344000', NULL, NULL),
(243, 'Screenshot (21).png', NULL, NULL, 1920, 1080, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_Screenshot_21_1ac2038ed9.png\", \"hash\": \"large_Screenshot_21_1ac2038ed9\", \"mime\": \"image/png\", \"name\": \"large_Screenshot (21).png\", \"path\": null, \"size\": 659.03, \"width\": 1000, \"height\": 563}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_Screenshot_21_1ac2038ed9.png\", \"hash\": \"small_Screenshot_21_1ac2038ed9\", \"mime\": \"image/png\", \"name\": \"small_Screenshot (21).png\", \"path\": null, \"size\": 196.34, \"width\": 500, \"height\": 281}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_Screenshot_21_1ac2038ed9.png\", \"hash\": \"medium_Screenshot_21_1ac2038ed9\", \"mime\": \"image/png\", \"name\": \"medium_Screenshot (21).png\", \"path\": null, \"size\": 398.41, \"width\": 750, \"height\": 422}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Screenshot_21_1ac2038ed9.png\", \"hash\": \"thumbnail_Screenshot_21_1ac2038ed9\", \"mime\": \"image/png\", \"name\": \"thumbnail_Screenshot (21).png\", \"path\": null, \"size\": 59.98, \"width\": 245, \"height\": 138}}', 'Screenshot_21_1ac2038ed9', '.png', 'image/png', 451.02, '/uploads/Screenshot_21_1ac2038ed9.png', NULL, 'local', NULL, '/3', '2023-07-30 00:57:01.031000', '2023-07-30 00:57:01.031000', NULL, NULL),
(244, 'Screenshot 2023-07-22 201351.png', NULL, NULL, 1920, 1080, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_Screenshot_2023_07_22_201351_e6be03a980.png\", \"hash\": \"large_Screenshot_2023_07_22_201351_e6be03a980\", \"mime\": \"image/png\", \"name\": \"large_Screenshot 2023-07-22 201351.png\", \"path\": null, \"size\": 237.94, \"width\": 1000, \"height\": 563}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_Screenshot_2023_07_22_201351_e6be03a980.png\", \"hash\": \"small_Screenshot_2023_07_22_201351_e6be03a980\", \"mime\": \"image/png\", \"name\": \"small_Screenshot 2023-07-22 201351.png\", \"path\": null, \"size\": 79.3, \"width\": 500, \"height\": 281}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_Screenshot_2023_07_22_201351_e6be03a980.png\", \"hash\": \"medium_Screenshot_2023_07_22_201351_e6be03a980\", \"mime\": \"image/png\", \"name\": \"medium_Screenshot 2023-07-22 201351.png\", \"path\": null, \"size\": 149.2, \"width\": 750, \"height\": 422}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Screenshot_2023_07_22_201351_e6be03a980.png\", \"hash\": \"thumbnail_Screenshot_2023_07_22_201351_e6be03a980\", \"mime\": \"image/png\", \"name\": \"thumbnail_Screenshot 2023-07-22 201351.png\", \"path\": null, \"size\": 27.01, \"width\": 245, \"height\": 138}}', 'Screenshot_2023_07_22_201351_e6be03a980', '.png', 'image/png', 195.90, '/uploads/Screenshot_2023_07_22_201351_e6be03a980.png', NULL, 'local', NULL, '/3', '2023-07-30 00:58:32.496000', '2023-07-30 00:58:32.496000', NULL, NULL),
(245, 'Screenshot (22).png', NULL, NULL, 1920, 1080, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_Screenshot_22_b18bef4d84.png\", \"hash\": \"large_Screenshot_22_b18bef4d84\", \"mime\": \"image/png\", \"name\": \"large_Screenshot (22).png\", \"path\": null, \"size\": 585.45, \"width\": 1000, \"height\": 563}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_Screenshot_22_b18bef4d84.png\", \"hash\": \"small_Screenshot_22_b18bef4d84\", \"mime\": \"image/png\", \"name\": \"small_Screenshot (22).png\", \"path\": null, \"size\": 182.19, \"width\": 500, \"height\": 281}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_Screenshot_22_b18bef4d84.png\", \"hash\": \"medium_Screenshot_22_b18bef4d84\", \"mime\": \"image/png\", \"name\": \"medium_Screenshot (22).png\", \"path\": null, \"size\": 361.72, \"width\": 750, \"height\": 422}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Screenshot_22_b18bef4d84.png\", \"hash\": \"thumbnail_Screenshot_22_b18bef4d84\", \"mime\": \"image/png\", \"name\": \"thumbnail_Screenshot (22).png\", \"path\": null, \"size\": 57.87, \"width\": 245, \"height\": 138}}', 'Screenshot_22_b18bef4d84', '.png', 'image/png', 382.38, '/uploads/Screenshot_22_b18bef4d84.png', NULL, 'local', NULL, '/3', '2023-07-30 00:58:35.107000', '2023-07-30 00:58:35.107000', NULL, NULL),
(246, 'Screenshot (22).png', NULL, NULL, 1920, 1080, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_Screenshot_22_4ac583b0dc.png\", \"hash\": \"large_Screenshot_22_4ac583b0dc\", \"mime\": \"image/png\", \"name\": \"large_Screenshot (22).png\", \"path\": null, \"size\": 585.45, \"width\": 1000, \"height\": 563}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_Screenshot_22_4ac583b0dc.png\", \"hash\": \"small_Screenshot_22_4ac583b0dc\", \"mime\": \"image/png\", \"name\": \"small_Screenshot (22).png\", \"path\": null, \"size\": 182.19, \"width\": 500, \"height\": 281}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_Screenshot_22_4ac583b0dc.png\", \"hash\": \"medium_Screenshot_22_4ac583b0dc\", \"mime\": \"image/png\", \"name\": \"medium_Screenshot (22).png\", \"path\": null, \"size\": 361.72, \"width\": 750, \"height\": 422}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Screenshot_22_4ac583b0dc.png\", \"hash\": \"thumbnail_Screenshot_22_4ac583b0dc\", \"mime\": \"image/png\", \"name\": \"thumbnail_Screenshot (22).png\", \"path\": null, \"size\": 57.87, \"width\": 245, \"height\": 138}}', 'Screenshot_22_4ac583b0dc', '.png', 'image/png', 382.38, '/uploads/Screenshot_22_4ac583b0dc.png', NULL, 'local', NULL, '/3', '2023-07-30 01:05:31.847000', '2023-07-30 01:05:31.847000', NULL, NULL),
(247, 'Screenshot (22).png', NULL, NULL, 1920, 1080, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_Screenshot_22_db1efa0cde.png\", \"hash\": \"large_Screenshot_22_db1efa0cde\", \"mime\": \"image/png\", \"name\": \"large_Screenshot (22).png\", \"path\": null, \"size\": 585.45, \"width\": 1000, \"height\": 563}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_Screenshot_22_db1efa0cde.png\", \"hash\": \"small_Screenshot_22_db1efa0cde\", \"mime\": \"image/png\", \"name\": \"small_Screenshot (22).png\", \"path\": null, \"size\": 182.19, \"width\": 500, \"height\": 281}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_Screenshot_22_db1efa0cde.png\", \"hash\": \"medium_Screenshot_22_db1efa0cde\", \"mime\": \"image/png\", \"name\": \"medium_Screenshot (22).png\", \"path\": null, \"size\": 361.72, \"width\": 750, \"height\": 422}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Screenshot_22_db1efa0cde.png\", \"hash\": \"thumbnail_Screenshot_22_db1efa0cde\", \"mime\": \"image/png\", \"name\": \"thumbnail_Screenshot (22).png\", \"path\": null, \"size\": 57.87, \"width\": 245, \"height\": 138}}', 'Screenshot_22_db1efa0cde', '.png', 'image/png', 382.38, '/uploads/Screenshot_22_db1efa0cde.png', NULL, 'local', NULL, '/3', '2023-07-30 01:05:34.037000', '2023-07-30 01:05:34.037000', NULL, NULL),
(248, 'Screenshot 2023-07-22 201351.png', NULL, NULL, 1920, 1080, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_Screenshot_2023_07_22_201351_8f983a0f71.png\", \"hash\": \"large_Screenshot_2023_07_22_201351_8f983a0f71\", \"mime\": \"image/png\", \"name\": \"large_Screenshot 2023-07-22 201351.png\", \"path\": null, \"size\": 237.94, \"width\": 1000, \"height\": 563}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_Screenshot_2023_07_22_201351_8f983a0f71.png\", \"hash\": \"small_Screenshot_2023_07_22_201351_8f983a0f71\", \"mime\": \"image/png\", \"name\": \"small_Screenshot 2023-07-22 201351.png\", \"path\": null, \"size\": 79.3, \"width\": 500, \"height\": 281}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_Screenshot_2023_07_22_201351_8f983a0f71.png\", \"hash\": \"medium_Screenshot_2023_07_22_201351_8f983a0f71\", \"mime\": \"image/png\", \"name\": \"medium_Screenshot 2023-07-22 201351.png\", \"path\": null, \"size\": 149.2, \"width\": 750, \"height\": 422}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Screenshot_2023_07_22_201351_8f983a0f71.png\", \"hash\": \"thumbnail_Screenshot_2023_07_22_201351_8f983a0f71\", \"mime\": \"image/png\", \"name\": \"thumbnail_Screenshot 2023-07-22 201351.png\", \"path\": null, \"size\": 27.01, \"width\": 245, \"height\": 138}}', 'Screenshot_2023_07_22_201351_8f983a0f71', '.png', 'image/png', 195.90, '/uploads/Screenshot_2023_07_22_201351_8f983a0f71.png', NULL, 'local', NULL, '/3', '2023-07-30 01:35:46.865000', '2023-07-30 01:35:46.865000', NULL, NULL),
(249, 'Screenshot (22).png', NULL, NULL, 1920, 1080, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_Screenshot_22_9137662c85.png\", \"hash\": \"large_Screenshot_22_9137662c85\", \"mime\": \"image/png\", \"name\": \"large_Screenshot (22).png\", \"path\": null, \"size\": 585.45, \"width\": 1000, \"height\": 563}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_Screenshot_22_9137662c85.png\", \"hash\": \"small_Screenshot_22_9137662c85\", \"mime\": \"image/png\", \"name\": \"small_Screenshot (22).png\", \"path\": null, \"size\": 182.19, \"width\": 500, \"height\": 281}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_Screenshot_22_9137662c85.png\", \"hash\": \"medium_Screenshot_22_9137662c85\", \"mime\": \"image/png\", \"name\": \"medium_Screenshot (22).png\", \"path\": null, \"size\": 361.72, \"width\": 750, \"height\": 422}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Screenshot_22_9137662c85.png\", \"hash\": \"thumbnail_Screenshot_22_9137662c85\", \"mime\": \"image/png\", \"name\": \"thumbnail_Screenshot (22).png\", \"path\": null, \"size\": 57.87, \"width\": 245, \"height\": 138}}', 'Screenshot_22_9137662c85', '.png', 'image/png', 382.38, '/uploads/Screenshot_22_9137662c85.png', NULL, 'local', NULL, '/3', '2023-07-30 01:35:50.038000', '2023-07-30 01:35:50.038000', NULL, NULL),
(250, 'Screenshot (21).png', NULL, NULL, 1920, 1080, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_Screenshot_21_ae5220f542.png\", \"hash\": \"large_Screenshot_21_ae5220f542\", \"mime\": \"image/png\", \"name\": \"large_Screenshot (21).png\", \"path\": null, \"size\": 659.03, \"width\": 1000, \"height\": 563}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_Screenshot_21_ae5220f542.png\", \"hash\": \"small_Screenshot_21_ae5220f542\", \"mime\": \"image/png\", \"name\": \"small_Screenshot (21).png\", \"path\": null, \"size\": 196.34, \"width\": 500, \"height\": 281}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_Screenshot_21_ae5220f542.png\", \"hash\": \"medium_Screenshot_21_ae5220f542\", \"mime\": \"image/png\", \"name\": \"medium_Screenshot (21).png\", \"path\": null, \"size\": 398.41, \"width\": 750, \"height\": 422}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Screenshot_21_ae5220f542.png\", \"hash\": \"thumbnail_Screenshot_21_ae5220f542\", \"mime\": \"image/png\", \"name\": \"thumbnail_Screenshot (21).png\", \"path\": null, \"size\": 59.98, \"width\": 245, \"height\": 138}}', 'Screenshot_21_ae5220f542', '.png', 'image/png', 451.02, '/uploads/Screenshot_21_ae5220f542.png', NULL, 'local', NULL, '/3', '2023-07-30 01:50:48.069000', '2023-07-30 01:50:48.069000', NULL, NULL),
(251, 'Screenshot (21).png', NULL, NULL, 1920, 1080, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_Screenshot_21_e45c3ba967.png\", \"hash\": \"large_Screenshot_21_e45c3ba967\", \"mime\": \"image/png\", \"name\": \"large_Screenshot (21).png\", \"path\": null, \"size\": 659.03, \"width\": 1000, \"height\": 563}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_Screenshot_21_e45c3ba967.png\", \"hash\": \"small_Screenshot_21_e45c3ba967\", \"mime\": \"image/png\", \"name\": \"small_Screenshot (21).png\", \"path\": null, \"size\": 196.34, \"width\": 500, \"height\": 281}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_Screenshot_21_e45c3ba967.png\", \"hash\": \"medium_Screenshot_21_e45c3ba967\", \"mime\": \"image/png\", \"name\": \"medium_Screenshot (21).png\", \"path\": null, \"size\": 398.41, \"width\": 750, \"height\": 422}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Screenshot_21_e45c3ba967.png\", \"hash\": \"thumbnail_Screenshot_21_e45c3ba967\", \"mime\": \"image/png\", \"name\": \"thumbnail_Screenshot (21).png\", \"path\": null, \"size\": 59.98, \"width\": 245, \"height\": 138}}', 'Screenshot_21_e45c3ba967', '.png', 'image/png', 451.02, '/uploads/Screenshot_21_e45c3ba967.png', NULL, 'local', NULL, '/3', '2023-07-30 01:50:50.211000', '2023-07-30 01:50:50.211000', NULL, NULL),
(252, 'z4340483434210_a72918a0a020e19adc82c669d98fff67.jpg', NULL, NULL, 1926, 2568, '{\"large\": {\"ext\": \".jpg\", \"url\": \"/uploads/large_z4340483434210_a72918a0a020e19adc82c669d98fff67_6013d618d9.jpg\", \"hash\": \"large_z4340483434210_a72918a0a020e19adc82c669d98fff67_6013d618d9\", \"mime\": \"image/jpeg\", \"name\": \"large_z4340483434210_a72918a0a020e19adc82c669d98fff67.jpg\", \"path\": null, \"size\": 148.38, \"width\": 750, \"height\": 1000}, \"small\": {\"ext\": \".jpg\", \"url\": \"/uploads/small_z4340483434210_a72918a0a020e19adc82c669d98fff67_6013d618d9.jpg\", \"hash\": \"small_z4340483434210_a72918a0a020e19adc82c669d98fff67_6013d618d9\", \"mime\": \"image/jpeg\", \"name\": \"small_z4340483434210_a72918a0a020e19adc82c669d98fff67.jpg\", \"path\": null, \"size\": 33.59, \"width\": 375, \"height\": 500}, \"medium\": {\"ext\": \".jpg\", \"url\": \"/uploads/medium_z4340483434210_a72918a0a020e19adc82c669d98fff67_6013d618d9.jpg\", \"hash\": \"medium_z4340483434210_a72918a0a020e19adc82c669d98fff67_6013d618d9\", \"mime\": \"image/jpeg\", \"name\": \"medium_z4340483434210_a72918a0a020e19adc82c669d98fff67.jpg\", \"path\": null, \"size\": 80.44, \"width\": 563, \"height\": 750}, \"thumbnail\": {\"ext\": \".jpg\", \"url\": \"/uploads/thumbnail_z4340483434210_a72918a0a020e19adc82c669d98fff67_6013d618d9.jpg\", \"hash\": \"thumbnail_z4340483434210_a72918a0a020e19adc82c669d98fff67_6013d618d9\", \"mime\": \"image/jpeg\", \"name\": \"thumbnail_z4340483434210_a72918a0a020e19adc82c669d98fff67.jpg\", \"path\": null, \"size\": 3.68, \"width\": 117, \"height\": 156}}', 'z4340483434210_a72918a0a020e19adc82c669d98fff67_6013d618d9', '.jpg', 'image/jpeg', 931.84, '/uploads/z4340483434210_a72918a0a020e19adc82c669d98fff67_6013d618d9.jpg', NULL, 'local', NULL, '/3', '2023-07-30 01:53:54.547000', '2023-07-30 01:53:54.547000', NULL, NULL),
(253, 'Screenshot (23).png', NULL, NULL, 1920, 1080, '{\"large\": {\"ext\": \".png\", \"url\": \"/uploads/large_Screenshot_23_397e330590.png\", \"hash\": \"large_Screenshot_23_397e330590\", \"mime\": \"image/png\", \"name\": \"large_Screenshot (23).png\", \"path\": null, \"size\": 610.9, \"width\": 1000, \"height\": 563}, \"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_Screenshot_23_397e330590.png\", \"hash\": \"small_Screenshot_23_397e330590\", \"mime\": \"image/png\", \"name\": \"small_Screenshot (23).png\", \"path\": null, \"size\": 183.59, \"width\": 500, \"height\": 281}, \"medium\": {\"ext\": \".png\", \"url\": \"/uploads/medium_Screenshot_23_397e330590.png\", \"hash\": \"medium_Screenshot_23_397e330590\", \"mime\": \"image/png\", \"name\": \"medium_Screenshot (23).png\", \"path\": null, \"size\": 368.9, \"width\": 750, \"height\": 422}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Screenshot_23_397e330590.png\", \"hash\": \"thumbnail_Screenshot_23_397e330590\", \"mime\": \"image/png\", \"name\": \"thumbnail_Screenshot (23).png\", \"path\": null, \"size\": 56.38, \"width\": 245, \"height\": 138}}', 'Screenshot_23_397e330590', '.png', 'image/png', 464.15, '/uploads/Screenshot_23_397e330590.png', NULL, 'local', NULL, '/3', '2023-07-30 01:53:59.392000', '2023-07-30 01:53:59.392000', NULL, NULL),
(254, 'Bai giai phan vung tuong tuong.pdf', NULL, NULL, NULL, NULL, NULL, 'Bai_giai_phan_vung_tuong_tuong_97cbaeb22e', '.pdf', 'application/pdf', 218.65, '/uploads/Bai_giai_phan_vung_tuong_tuong_97cbaeb22e.pdf', NULL, 'local', NULL, '/3', '2023-07-30 02:04:58.370000', '2023-07-30 02:04:58.370000', NULL, NULL),
(255, 'Screenshot 2023-08-04 144211.png', NULL, NULL, 728, 732, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_Screenshot_2023_08_04_144211_436627547d.png\", \"hash\": \"small_Screenshot_2023_08_04_144211_436627547d\", \"mime\": \"image/png\", \"name\": \"small_Screenshot 2023-08-04 144211.png\", \"path\": null, \"size\": 71.64, \"width\": 497, \"height\": 500}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Screenshot_2023_08_04_144211_436627547d.png\", \"hash\": \"thumbnail_Screenshot_2023_08_04_144211_436627547d\", \"mime\": \"image/png\", \"name\": \"thumbnail_Screenshot 2023-08-04 144211.png\", \"path\": null, \"size\": 9.47, \"width\": 155, \"height\": 156}}', 'Screenshot_2023_08_04_144211_436627547d', '.png', 'image/png', 15.30, '/uploads/Screenshot_2023_08_04_144211_436627547d.png', NULL, 'local', NULL, '/3', '2023-08-22 15:33:45.461000', '2023-08-22 15:33:45.461000', NULL, NULL),
(256, 'Screenshot 2023-08-04 144211.png', NULL, NULL, 728, 732, '{\"small\": {\"ext\": \".png\", \"url\": \"/uploads/small_Screenshot_2023_08_04_144211_e88f94ff56.png\", \"hash\": \"small_Screenshot_2023_08_04_144211_e88f94ff56\", \"mime\": \"image/png\", \"name\": \"small_Screenshot 2023-08-04 144211.png\", \"path\": null, \"size\": 71.64, \"width\": 497, \"height\": 500}, \"thumbnail\": {\"ext\": \".png\", \"url\": \"/uploads/thumbnail_Screenshot_2023_08_04_144211_e88f94ff56.png\", \"hash\": \"thumbnail_Screenshot_2023_08_04_144211_e88f94ff56\", \"mime\": \"image/png\", \"name\": \"thumbnail_Screenshot 2023-08-04 144211.png\", \"path\": null, \"size\": 9.47, \"width\": 155, \"height\": 156}}', 'Screenshot_2023_08_04_144211_e88f94ff56', '.png', 'image/png', 15.30, '/uploads/Screenshot_2023_08_04_144211_e88f94ff56.png', NULL, 'local', NULL, '/3', '2023-08-22 15:33:46.932000', '2023-08-22 15:33:46.932000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `files_folder_links`
--

CREATE TABLE `files_folder_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `file_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `files_folder_links`
--

INSERT INTO `files_folder_links` (`id`, `file_id`, `folder_id`, `file_order`) VALUES
(1, 2, 1, 1),
(2, 3, 1, 2),
(3, 4, 1, 3),
(4, 5, 1, 4),
(5, 6, 1, 5),
(6, 7, 1, 6),
(7, 8, 1, 7),
(8, 9, 1, 8),
(9, 10, 1, 9),
(10, 11, 1, 10),
(11, 12, 1, 11),
(12, 13, 2, 1),
(13, 14, 2, 2),
(14, 15, 2, 3),
(15, 16, 2, 4),
(16, 17, 2, 5),
(17, 18, 2, 6),
(18, 19, 2, 7),
(19, 20, 2, 7),
(20, 21, 2, 8),
(21, 22, 2, 8),
(22, 23, 2, 9),
(23, 24, 2, 10),
(24, 25, 2, 10),
(25, 26, 2, 11),
(26, 27, 2, 12),
(27, 28, 2, 13),
(28, 29, 2, 14),
(29, 30, 2, 15),
(30, 31, 2, 16),
(31, 32, 2, 17),
(32, 33, 2, 18),
(33, 34, 2, 19),
(34, 35, 2, 20),
(35, 36, 2, 21),
(36, 37, 2, 22),
(37, 38, 2, 23),
(38, 39, 2, 24),
(39, 40, 2, 24),
(40, 41, 2, 25),
(41, 42, 2, 26),
(42, 43, 2, 27),
(43, 44, 2, 28),
(44, 45, 2, 29),
(45, 46, 2, 30),
(46, 47, 2, 31),
(47, 48, 2, 32),
(48, 49, 2, 33),
(49, 50, 2, 34),
(50, 51, 2, 35),
(51, 52, 2, 36),
(52, 53, 2, 37),
(53, 54, 3, 1),
(54, 55, 3, 2),
(55, 56, 3, 3),
(56, 57, 3, 4),
(57, 58, 3, 5),
(58, 59, 3, 6),
(59, 60, 3, 7),
(60, 61, 3, 8),
(61, 62, 3, 9),
(62, 63, 3, 10),
(63, 64, 3, 11),
(64, 65, 3, 12),
(65, 66, 3, 13),
(66, 67, 3, 14),
(67, 68, 3, 15),
(68, 69, 3, 16),
(69, 70, 3, 17),
(70, 71, 3, 18),
(71, 72, 3, 19),
(72, 73, 3, 20),
(73, 74, 3, 21),
(74, 75, 3, 22),
(75, 76, 3, 23),
(76, 77, 3, 24),
(77, 78, 3, 25),
(78, 79, 3, 26),
(79, 80, 3, 27),
(80, 81, 3, 28),
(81, 82, 3, 29),
(82, 83, 3, 30),
(83, 84, 3, 31),
(84, 85, 3, 32),
(85, 86, 3, 33),
(86, 87, 3, 34),
(87, 88, 3, 35),
(88, 89, 3, 36),
(89, 90, 3, 37),
(90, 91, 3, 38),
(91, 92, 3, 39),
(92, 93, 3, 40),
(93, 94, 3, 41),
(94, 95, 3, 42),
(95, 96, 3, 43),
(96, 97, 3, 44),
(97, 98, 3, 45),
(98, 99, 3, 46),
(99, 100, 3, 47),
(100, 101, 3, 48),
(101, 102, 3, 49),
(102, 103, 3, 50),
(103, 104, 3, 51),
(104, 105, 3, 52),
(105, 106, 3, 53),
(106, 107, 3, 54),
(107, 108, 3, 55),
(108, 109, 3, 56),
(109, 110, 3, 57),
(110, 111, 3, 58),
(111, 112, 3, 59),
(112, 113, 3, 60),
(113, 114, 3, 61),
(114, 115, 3, 62),
(115, 116, 3, 63),
(116, 117, 3, 64),
(117, 118, 3, 65),
(118, 119, 3, 66),
(119, 120, 3, 67),
(120, 121, 3, 68),
(121, 122, 4, 1),
(122, 123, 4, 2),
(123, 124, 4, 3),
(124, 125, 4, 4),
(125, 126, 4, 5),
(126, 127, 3, 69),
(127, 128, 3, 70),
(128, 129, 3, 71),
(129, 130, 3, 72),
(130, 131, 3, 73),
(131, 132, 3, 74),
(132, 133, 3, 75),
(133, 134, 3, 76),
(134, 135, 3, 77),
(135, 136, 3, 78),
(136, 137, 3, 79),
(137, 138, 3, 80),
(138, 139, 3, 81),
(139, 140, 3, 82),
(140, 141, 3, 83),
(141, 142, 3, 84),
(142, 143, 3, 85),
(143, 144, 3, 86),
(144, 145, 3, 87),
(145, 146, 3, 88),
(146, 147, 3, 89),
(147, 148, 3, 90),
(148, 149, 3, 91),
(149, 150, 3, 92),
(150, 151, 3, 93),
(151, 152, 3, 94),
(152, 153, 3, 95),
(153, 154, 3, 96),
(154, 155, 3, 97),
(155, 156, 3, 98),
(156, 157, 3, 99),
(157, 158, 3, 100),
(158, 159, 3, 101),
(159, 160, 3, 102),
(160, 161, 3, 103),
(161, 162, 3, 104),
(162, 163, 3, 105),
(163, 164, 3, 106),
(164, 165, 3, 107),
(165, 166, 3, 108),
(166, 167, 3, 109),
(167, 168, 3, 110),
(168, 169, 3, 111),
(169, 170, 3, 112),
(170, 171, 3, 113),
(171, 172, 3, 114),
(172, 173, 3, 115),
(173, 174, 3, 116),
(174, 175, 3, 117),
(175, 176, 3, 118),
(176, 177, 3, 119),
(177, 178, 3, 120),
(178, 179, 3, 121),
(179, 180, 3, 122),
(180, 181, 3, 123),
(181, 182, 3, 124),
(182, 183, 3, 125),
(183, 184, 3, 126),
(184, 185, 3, 127),
(185, 186, 3, 128),
(186, 187, 3, 129),
(187, 188, 3, 130),
(188, 189, 3, 131),
(189, 190, 3, 132),
(190, 191, 3, 133),
(191, 192, 3, 134),
(192, 193, 3, 135),
(193, 194, 3, 136),
(194, 195, 3, 137),
(195, 196, 3, 138),
(196, 197, 3, 139),
(197, 198, 3, 140),
(198, 199, 3, 141),
(199, 200, 3, 142),
(200, 201, 3, 143),
(201, 202, 3, 144),
(202, 203, 3, 145),
(203, 204, 3, 146),
(204, 205, 3, 147),
(205, 206, 3, 148),
(206, 207, 3, 149),
(207, 208, 3, 150),
(208, 209, 3, 151),
(209, 210, 3, 152),
(210, 211, 3, 153),
(211, 212, 3, 154),
(212, 213, 3, 155),
(213, 214, 3, 156),
(214, 215, 3, 157),
(215, 216, 3, 158),
(216, 217, 3, 159),
(217, 218, 3, 160),
(218, 219, 3, 161),
(219, 220, 3, 162),
(220, 221, 3, 163),
(221, 222, 3, 164),
(222, 223, 3, 165),
(223, 224, 3, 166),
(224, 225, 3, 167),
(225, 226, 5, 1),
(226, 227, 5, 2),
(227, 228, 5, 3),
(228, 229, 5, 4),
(229, 230, 3, 168),
(230, 231, 3, 169),
(231, 232, 3, 170),
(232, 233, 3, 171),
(233, 234, 3, 172),
(234, 235, 3, 173),
(235, 236, 3, 174),
(236, 237, 3, 175),
(237, 238, 3, 176),
(238, 239, 3, 177),
(239, 240, 3, 178),
(240, 241, 3, 179),
(241, 242, 3, 180),
(242, 243, 3, 181),
(243, 244, 3, 182),
(244, 245, 3, 183),
(245, 246, 3, 184),
(246, 247, 3, 185),
(247, 248, 3, 186),
(248, 249, 3, 187),
(249, 250, 3, 188),
(250, 251, 3, 189),
(251, 252, 3, 190),
(252, 253, 3, 191),
(253, 254, 3, 192),
(254, 255, 3, 193),
(255, 256, 3, 194);

-- --------------------------------------------------------

--
-- Table structure for table `files_related_morphs`
--

CREATE TABLE `files_related_morphs` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `related_id` int(10) UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `files_related_morphs`
--

INSERT INTO `files_related_morphs` (`id`, `file_id`, `related_id`, `related_type`, `field`, `order`) VALUES
(175, 52, 2, 'api::post.post', 'image', 1),
(176, 51, 2, 'api::post.post', 'image', 2),
(177, 50, 2, 'api::post.post', 'image', 3),
(178, 104, 3, 'api::post.post', 'image', 1),
(179, 105, 3, 'api::post.post', 'image', 2),
(180, 106, 4, 'api::post.post', 'image', 1),
(181, 107, 4, 'api::post.post', 'image', 2),
(182, 108, 5, 'api::post.post', 'image', 1),
(183, 109, 5, 'api::post.post', 'image', 2),
(184, 110, 6, 'api::post.post', 'image', 1),
(185, 111, 6, 'api::post.post', 'image', 2),
(190, 97, 1, 'api::post.post', 'image', 1),
(191, 96, 1, 'api::post.post', 'image', 2),
(192, 112, 7, 'api::post.post', 'image', 1),
(193, 113, 7, 'api::post.post', 'image', 2),
(194, 114, 7, 'api::post.post', 'image', 3),
(195, 115, 7, 'api::post.post', 'image', 4),
(208, 122, 55, 'api::product.product', 'image', 1),
(209, 123, 55, 'api::product.product', 'image', 2),
(210, 124, 55, 'api::product.product', 'image', 3),
(211, 125, 55, 'api::product.product', 'image', 4),
(212, 126, 55, 'api::product.product', 'image', 5),
(217, 128, 56, 'api::product.product', 'image', 1),
(218, 129, 56, 'api::product.product', 'image', 2),
(219, 130, 56, 'api::product.product', 'image', 3),
(220, 131, 56, 'api::product.product', 'image', 4),
(221, 132, 56, 'api::product.product', 'image', 5),
(222, 133, 57, 'api::product.product', 'image', 1),
(223, 134, 57, 'api::product.product', 'image', 2),
(224, 135, 57, 'api::product.product', 'image', 3),
(225, 136, 58, 'api::product.product', 'image', 1),
(226, 137, 58, 'api::product.product', 'image', 2),
(227, 138, 58, 'api::product.product', 'image', 3),
(228, 139, 59, 'api::product.product', 'image', 1),
(229, 140, 59, 'api::product.product', 'image', 2),
(230, 141, 59, 'api::product.product', 'image', 3),
(231, 142, 60, 'api::product.product', 'image', 1),
(232, 143, 60, 'api::product.product', 'image', 2),
(233, 144, 60, 'api::product.product', 'image', 3),
(234, 145, 61, 'api::product.product', 'image', 1),
(235, 146, 61, 'api::product.product', 'image', 2),
(236, 147, 61, 'api::product.product', 'image', 3),
(237, 148, 62, 'api::product.product', 'image', 1),
(238, 149, 62, 'api::product.product', 'image', 2),
(239, 150, 62, 'api::product.product', 'image', 3),
(240, 151, 62, 'api::product.product', 'image', 4),
(241, 152, 63, 'api::product.product', 'image', 1),
(242, 153, 63, 'api::product.product', 'image', 2),
(243, 154, 63, 'api::product.product', 'image', 3),
(244, 155, 64, 'api::product.product', 'image', 1),
(245, 156, 64, 'api::product.product', 'image', 2),
(246, 157, 64, 'api::product.product', 'image', 3),
(247, 158, 65, 'api::product.product', 'image', 1),
(248, 159, 65, 'api::product.product', 'image', 2),
(249, 160, 65, 'api::product.product', 'image', 3),
(250, 161, 66, 'api::product.product', 'image', 1),
(251, 162, 66, 'api::product.product', 'image', 2),
(252, 163, 67, 'api::product.product', 'image', 1),
(253, 164, 67, 'api::product.product', 'image', 2),
(254, 165, 67, 'api::product.product', 'image', 3),
(255, 166, 67, 'api::product.product', 'image', 4),
(256, 167, 68, 'api::product.product', 'image', 1),
(257, 168, 68, 'api::product.product', 'image', 2),
(258, 169, 68, 'api::product.product', 'image', 3),
(259, 170, 69, 'api::product.product', 'image', 1),
(260, 171, 69, 'api::product.product', 'image', 2),
(261, 172, 69, 'api::product.product', 'image', 3),
(262, 173, 69, 'api::product.product', 'image', 4),
(268, 174, 70, 'api::product.product', 'image', 1),
(269, 175, 70, 'api::product.product', 'image', 2),
(270, 176, 70, 'api::product.product', 'image', 3),
(271, 177, 70, 'api::product.product', 'image', 4),
(272, 178, 70, 'api::product.product', 'image', 5),
(274, 179, 71, 'api::product.product', 'image', 1),
(275, 180, 71, 'api::product.product', 'image', 2),
(276, 181, 72, 'api::product.product', 'image', 1),
(277, 182, 72, 'api::product.product', 'image', 2),
(278, 183, 72, 'api::product.product', 'image', 3),
(279, 184, 72, 'api::product.product', 'image', 4),
(280, 185, 73, 'api::product.product', 'image', 1),
(281, 186, 73, 'api::product.product', 'image', 2),
(282, 187, 73, 'api::product.product', 'image', 3),
(283, 188, 73, 'api::product.product', 'image', 4),
(284, 189, 74, 'api::product.product', 'image', 1),
(285, 190, 74, 'api::product.product', 'image', 2),
(286, 191, 74, 'api::product.product', 'image', 3),
(287, 192, 74, 'api::product.product', 'image', 4),
(288, 193, 75, 'api::product.product', 'image', 1),
(289, 194, 75, 'api::product.product', 'image', 2),
(290, 195, 75, 'api::product.product', 'image', 3),
(291, 196, 76, 'api::product.product', 'image', 1),
(292, 197, 76, 'api::product.product', 'image', 2),
(338, 217, 80, 'api::product.product', 'image', 1),
(339, 218, 80, 'api::product.product', 'image', 2),
(340, 219, 80, 'api::product.product', 'image', 3),
(341, 220, 80, 'api::product.product', 'image', 4),
(342, 221, 81, 'api::product.product', 'image', 1),
(343, 222, 81, 'api::product.product', 'image', 2),
(344, 223, 81, 'api::product.product', 'image', 3),
(349, 224, 8, 'api::post.post', 'image', 1),
(350, 225, 8, 'api::post.post', 'image', 2),
(358, 227, 2, 'api::slider.slider', 'image', 1),
(360, 229, 3, 'api::slider.slider', 'image', 1),
(361, 226, 1, 'api::slider.slider', 'image', 1);

-- --------------------------------------------------------

--
-- Table structure for table `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `name`, `code`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'English (en)', 'en', '2023-06-07 18:37:56.574000', '2023-06-07 18:37:56.574000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `qty` bigint(20) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`id`, `order_id`, `price`, `qty`, `amount`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `product_id`) VALUES
(1, 1, 250000, 2, 500000, NULL, '2023-07-15 09:24:27.440000', '2023-07-15 09:24:09.955000', NULL, 1, NULL),
(2, 1, 250000, 3, 750000, NULL, '2023-07-15 09:25:38.815000', '2023-07-15 09:24:12.673000', NULL, 1, NULL),
(3, 2, 250000, 2, 500000, NULL, '2023-07-15 09:25:46.065000', '2023-07-15 09:25:46.061000', NULL, 1, NULL),
(4, 2, 250000, 3, 750000, NULL, '2023-07-15 09:40:21.838000', '2023-07-15 09:40:21.833000', NULL, 1, NULL),
(5, 87, 0, 123456789, 0, '2024-01-16 20:53:43.011000', '2024-01-16 20:53:43.011000', '2024-01-16 20:53:43.009000', NULL, NULL, NULL),
(6, 87, 0, 123456789, 0, '2024-01-16 20:54:01.147000', '2024-01-16 20:54:01.147000', '2024-01-16 20:54:01.146000', NULL, NULL, NULL),
(7, 5648, 0, 123456789, 0, '2024-01-16 21:02:20.804000', '2024-01-16 21:02:20.804000', '2024-01-16 21:02:20.803000', NULL, NULL, NULL),
(8, NULL, 100, 1, 100, '2024-01-16 21:31:54.503000', '2024-01-16 21:31:54.503000', '2024-01-16 21:31:54.503000', NULL, NULL, NULL),
(9, NULL, 100, 1, 100, '2024-01-16 21:32:37.741000', '2024-01-16 21:32:37.741000', '2024-01-16 21:32:37.740000', NULL, NULL, NULL),
(10, 103, 100, 1, 100, '2024-01-16 21:37:15.885000', '2024-01-16 21:37:15.885000', '2024-01-16 21:37:15.884000', NULL, NULL, NULL),
(11, NULL, 2450000, 1, 2450000, '2024-01-16 22:09:02.135000', '2024-01-16 22:09:02.135000', '2024-01-16 22:09:02.134000', NULL, NULL, NULL),
(12, NULL, 183000, 1, 183000, '2024-01-16 22:09:02.153000', '2024-01-16 22:09:02.153000', '2024-01-16 22:09:02.152000', NULL, NULL, NULL),
(13, NULL, 1000000, 1, 1000000, '2024-01-16 22:09:02.163000', '2024-01-16 22:09:02.163000', '2024-01-16 22:09:02.162000', NULL, NULL, NULL),
(14, NULL, 1000000, 1, 1000000, '2024-01-16 22:09:28.406000', '2024-01-16 22:09:28.406000', '2024-01-16 22:09:28.404000', NULL, NULL, NULL),
(15, NULL, 183000, 1, 183000, '2024-01-16 22:09:28.425000', '2024-01-16 22:09:28.425000', '2024-01-16 22:09:28.419000', NULL, NULL, NULL),
(16, NULL, 2450000, 1, 2450000, '2024-01-16 22:09:28.454000', '2024-01-16 22:09:28.454000', '2024-01-16 22:09:28.452000', NULL, NULL, NULL),
(17, 132, 2450000, 1, 2450000, '2024-01-16 22:09:40.326000', '2024-01-16 22:09:40.326000', '2024-01-16 22:09:40.322000', NULL, NULL, NULL),
(18, 132, 183000, 1, 183000, '2024-01-16 22:09:40.362000', '2024-01-16 22:09:40.362000', '2024-01-16 22:09:40.361000', NULL, NULL, NULL),
(19, 132, 1000000, 1, 1000000, '2024-01-16 22:09:40.379000', '2024-01-16 22:09:40.379000', '2024-01-16 22:09:40.375000', NULL, NULL, NULL),
(20, 133, 2450000, 1, 2450000, '2024-01-16 22:11:23.287000', '2024-01-16 22:11:23.287000', '2024-01-16 22:11:23.286000', NULL, NULL, NULL),
(21, 133, 183000, 1, 183000, '2024-01-16 22:11:23.298000', '2024-01-16 22:11:23.298000', '2024-01-16 22:11:23.297000', NULL, NULL, NULL),
(22, 133, 1000000, 1, 1000000, '2024-01-16 22:11:23.320000', '2024-01-16 22:11:23.320000', '2024-01-16 22:11:23.319000', NULL, NULL, NULL),
(23, 134, 2450000, 1, 2450000, '2024-01-16 22:59:03.937000', '2024-01-16 22:59:03.937000', '2024-01-16 22:59:03.923000', NULL, NULL, NULL),
(24, 134, 183000, 1, 183000, '2024-01-16 22:59:03.972000', '2024-01-16 22:59:03.972000', '2024-01-16 22:59:03.960000', NULL, NULL, NULL),
(25, 134, 1000000, 1, 1000000, '2024-01-16 22:59:03.974000', '2024-01-16 22:59:03.974000', '2024-01-16 22:59:03.969000', NULL, NULL, NULL),
(26, 135, 2450000, 1, 2450000, '2024-01-16 23:00:49.759000', '2024-01-16 23:00:49.759000', '2024-01-16 23:00:49.737000', NULL, NULL, NULL),
(27, 135, 183000, 1, 183000, '2024-01-16 23:00:49.781000', '2024-01-16 23:00:49.781000', '2024-01-16 23:00:49.769000', NULL, NULL, NULL),
(28, 135, 1000000, 1, 1000000, '2024-01-16 23:00:49.784000', '2024-01-16 23:00:49.784000', '2024-01-16 23:00:49.778000', NULL, NULL, NULL),
(29, 136, 183000, 1, 183000, '2024-01-16 23:07:02.361000', '2024-01-16 23:07:02.361000', '2024-01-16 23:07:02.334000', NULL, NULL, NULL),
(30, 136, 1000000, 1, 1000000, '2024-01-16 23:07:02.363000', '2024-01-16 23:07:02.363000', '2024-01-16 23:07:02.358000', NULL, NULL, NULL),
(31, 138, 2450000, 1, 2450000, '2024-01-16 23:12:56.656000', '2024-01-16 23:12:56.656000', '2024-01-16 23:12:56.646000', NULL, NULL, NULL),
(32, 138, 183000, 1, 183000, '2024-01-16 23:12:56.673000', '2024-01-16 23:12:56.673000', '2024-01-16 23:12:56.668000', NULL, NULL, NULL),
(33, 139, 2450000, 1, 2450000, '2024-01-16 23:14:07.661000', '2024-01-16 23:14:07.661000', '2024-01-16 23:14:07.633000', NULL, NULL, NULL),
(34, 139, 183000, 1, 183000, '2024-01-16 23:14:07.665000', '2024-01-16 23:14:07.665000', '2024-01-16 23:14:07.656000', NULL, NULL, NULL),
(35, 140, 2450000, 1, 2450000, '2024-01-16 23:14:41.092000', '2024-01-16 23:14:41.092000', '2024-01-16 23:14:41.087000', NULL, NULL, NULL),
(36, 140, 183000, 1, 183000, '2024-01-16 23:14:41.203000', '2024-01-16 23:14:41.203000', '2024-01-16 23:14:41.185000', NULL, NULL, NULL),
(37, 141, 183000, 1, 183000, '2024-01-16 23:14:45.690000', '2024-01-16 23:14:45.690000', '2024-01-16 23:14:45.648000', NULL, NULL, NULL),
(38, 141, 2450000, 1, 2450000, '2024-01-16 23:14:45.695000', '2024-01-16 23:14:45.695000', '2024-01-16 23:14:45.673000', NULL, NULL, NULL),
(39, 142, 2450000, 1, 2450000, '2024-01-16 23:14:57.520000', '2024-01-16 23:14:57.520000', '2024-01-16 23:14:57.512000', NULL, NULL, NULL),
(40, 142, 183000, 1, 183000, '2024-01-16 23:14:57.538000', '2024-01-16 23:14:57.538000', '2024-01-16 23:14:57.535000', NULL, NULL, NULL),
(41, 143, 2450000, 1, 2450000, '2024-01-16 23:15:06.400000', '2024-01-16 23:15:06.400000', '2024-01-16 23:15:06.385000', NULL, NULL, NULL),
(42, 143, 183000, 1, 183000, '2024-01-16 23:15:06.430000', '2024-01-16 23:15:06.430000', '2024-01-16 23:15:06.421000', NULL, NULL, NULL),
(43, 144, 2450000, 1, 2450000, '2024-01-16 23:15:09.787000', '2024-01-16 23:15:09.787000', '2024-01-16 23:15:09.769000', NULL, NULL, NULL),
(44, 144, 183000, 1, 183000, '2024-01-16 23:15:09.806000', '2024-01-16 23:15:09.806000', '2024-01-16 23:15:09.801000', NULL, NULL, NULL),
(45, 145, 2450000, 1, 2450000, '2024-01-16 23:15:13.696000', '2024-01-16 23:15:13.696000', '2024-01-16 23:15:13.670000', NULL, NULL, NULL),
(46, 145, 183000, 1, 183000, '2024-01-16 23:15:13.697000', '2024-01-16 23:15:13.697000', '2024-01-16 23:15:13.693000', NULL, NULL, NULL),
(47, 146, 2450000, 1, 2450000, '2024-01-16 23:19:07.475000', '2024-01-16 23:19:07.475000', '2024-01-16 23:19:07.461000', NULL, NULL, NULL),
(48, 146, 183000, 1, 183000, '2024-01-16 23:19:07.530000', '2024-01-16 23:19:07.530000', '2024-01-16 23:19:07.521000', NULL, NULL, NULL),
(49, 147, 2450000, 1, 2450000, '2024-01-16 23:19:39.063000', '2024-01-16 23:19:39.063000', '2024-01-16 23:19:39.053000', NULL, NULL, NULL),
(50, 147, 183000, 1, 183000, '2024-01-16 23:19:39.101000', '2024-01-16 23:19:39.101000', '2024-01-16 23:19:39.095000', NULL, NULL, NULL),
(51, 155, 2450000, 1, 2450000, '2024-01-16 23:23:19.308000', '2024-01-16 23:23:19.308000', '2024-01-16 23:23:19.304000', NULL, NULL, NULL),
(52, 155, 183000, 1, 183000, '2024-01-16 23:23:19.344000', '2024-01-16 23:23:19.344000', '2024-01-16 23:23:19.340000', NULL, NULL, NULL),
(53, 156, 2450000, 1, 2450000, '2024-01-16 23:23:55.463000', '2024-01-16 23:23:55.463000', '2024-01-16 23:23:55.440000', NULL, NULL, NULL),
(54, 156, 183000, 1, 183000, '2024-01-16 23:23:55.465000', '2024-01-16 23:23:55.465000', '2024-01-16 23:23:55.460000', NULL, NULL, NULL),
(55, 157, 2450000, 1, 2450000, '2024-01-16 23:24:10.309000', '2024-01-16 23:24:10.309000', '2024-01-16 23:24:10.294000', NULL, NULL, NULL),
(56, 157, 183000, 1, 183000, '2024-01-16 23:24:10.316000', '2024-01-16 23:24:10.316000', '2024-01-16 23:24:10.303000', NULL, NULL, NULL),
(57, 158, 183000, 1, 183000, '2024-01-16 23:24:47.838000', '2024-01-16 23:24:47.838000', '2024-01-16 23:24:47.822000', NULL, NULL, NULL),
(58, 158, 2450000, 1, 2450000, '2024-01-16 23:24:47.857000', '2024-01-16 23:24:47.857000', '2024-01-16 23:24:47.849000', NULL, NULL, NULL),
(59, 159, 183000, 1, 183000, '2024-01-16 23:25:02.223000', '2024-01-16 23:25:02.223000', '2024-01-16 23:25:02.197000', NULL, NULL, NULL),
(60, 159, 2450000, 1, 2450000, '2024-01-16 23:25:02.225000', '2024-01-16 23:25:02.225000', '2024-01-16 23:25:02.215000', NULL, NULL, NULL),
(61, 160, 2450000, 1, 2450000, '2024-01-16 23:25:30.482000', '2024-01-16 23:25:30.482000', '2024-01-16 23:25:30.456000', NULL, NULL, NULL),
(62, 160, 183000, 1, 183000, '2024-01-16 23:25:30.513000', '2024-01-16 23:25:30.513000', '2024-01-16 23:25:30.503000', NULL, NULL, NULL),
(63, 161, 2450000, 1, 2450000, '2024-01-16 23:25:36.930000', '2024-01-16 23:25:36.930000', '2024-01-16 23:25:36.917000', NULL, NULL, NULL),
(64, 161, 183000, 1, 183000, '2024-01-16 23:25:36.955000', '2024-01-16 23:25:36.955000', '2024-01-16 23:25:36.950000', NULL, NULL, NULL),
(65, 162, 100, 1, 100, '2024-01-16 23:27:56.505000', '2024-01-16 23:27:56.505000', '2024-01-16 23:27:56.502000', NULL, NULL, NULL),
(66, 168, 100, 1, 100, '2024-01-16 23:34:36.751000', '2024-01-16 23:34:36.751000', '2024-01-16 23:34:36.746000', NULL, NULL, NULL),
(67, 175, 100, 1, 100, '2024-01-16 23:40:34.598000', '2024-01-16 23:40:34.598000', '2024-01-16 23:40:34.592000', NULL, NULL, NULL),
(68, 176, 7083000, 1, 7103000, '2024-01-16 23:53:36.068000', '2024-01-16 23:53:36.068000', '2024-01-16 23:53:36.062000', NULL, NULL, NULL),
(69, 177, 7083000, 1, 7103000, '2024-01-16 23:54:39.829000', '2024-01-16 23:54:39.829000', '2024-01-16 23:54:39.823000', NULL, NULL, NULL),
(70, 178, 7083000, 1, 7103000, '2024-01-16 23:55:05.464000', '2024-01-16 23:55:05.464000', '2024-01-16 23:55:05.458000', NULL, NULL, NULL),
(71, 179, 7083000, 1, 7103000, '2024-01-16 23:55:56.645000', '2024-01-16 23:55:56.645000', '2024-01-16 23:55:56.637000', NULL, NULL, NULL),
(72, 180, 7083000, 1, 7103000, '2024-01-16 23:56:16.169000', '2024-01-16 23:56:16.169000', '2024-01-16 23:56:16.165000', NULL, NULL, NULL),
(73, 181, 7083000, 1, 7103000, '2024-01-16 23:58:00.671000', '2024-01-16 23:58:00.671000', '2024-01-16 23:58:00.668000', NULL, NULL, NULL),
(74, 182, 7083000, 1, 7103000, '2024-01-16 23:58:28.341000', '2024-01-16 23:58:28.341000', '2024-01-16 23:58:28.333000', NULL, NULL, NULL),
(75, 183, 7083000, 1, 7103000, '2024-01-17 00:00:26.957000', '2024-01-17 00:00:26.957000', '2024-01-17 00:00:26.947000', NULL, NULL, NULL),
(76, 184, 7083000, 1, 7103000, '2024-01-17 00:00:56.333000', '2024-01-17 00:00:56.333000', '2024-01-17 00:00:56.321000', NULL, NULL, NULL),
(77, 185, 7083000, 1, 7103000, '2024-01-17 00:00:58.918000', '2024-01-17 00:00:58.918000', '2024-01-17 00:00:58.909000', NULL, NULL, NULL),
(78, 187, 7083000, 1, 7103000, '2024-01-17 00:01:31.041000', '2024-01-17 00:01:31.041000', '2024-01-17 00:01:31.035000', NULL, NULL, NULL),
(79, 188, 7083000, 1, 7103000, '2024-01-17 00:01:44.920000', '2024-01-17 00:01:44.920000', '2024-01-17 00:01:44.912000', NULL, NULL, NULL),
(80, 189, 7083000, 1, 7103000, '2024-01-17 00:03:29.488000', '2024-01-17 00:03:29.488000', '2024-01-17 00:03:29.454000', NULL, NULL, NULL),
(81, 190, 7083000, 1, 7103000, '2024-01-17 00:03:39.241000', '2024-01-17 00:03:39.241000', '2024-01-17 00:03:39.233000', NULL, NULL, NULL),
(82, 191, 7083000, 1, 7103000, '2024-01-17 00:03:47.628000', '2024-01-17 00:03:47.628000', '2024-01-17 00:03:47.621000', NULL, NULL, NULL),
(83, 192, 7083000, 1, 7103000, '2024-01-17 00:05:12.102000', '2024-01-17 00:05:12.102000', '2024-01-17 00:05:12.098000', NULL, NULL, NULL),
(84, 193, 7083000, 1, 7103000, '2024-01-17 00:05:18.543000', '2024-01-17 00:05:18.543000', '2024-01-17 00:05:18.536000', NULL, NULL, NULL),
(85, 194, 7083000, 5, 7103000, '2024-01-17 00:05:59.866000', '2024-01-17 00:05:59.866000', '2024-01-17 00:05:59.857000', NULL, NULL, NULL),
(86, 195, 100, 1, 100, '2024-01-17 00:08:41.403000', '2024-01-17 00:08:41.403000', '2024-01-17 00:08:41.401000', NULL, NULL, NULL),
(87, 196, 7083000, 5, 7103000, '2024-01-17 00:15:10.362000', '2024-01-17 00:15:10.362000', '2024-01-17 00:15:10.360000', NULL, NULL, NULL),
(88, 199, 7083000, 5, 7103000, '2024-01-17 00:17:11.931000', '2024-01-17 00:17:11.931000', '2024-01-17 00:17:11.922000', NULL, NULL, NULL),
(89, 200, 7083000, 5, 7103000, '2024-01-17 00:18:35.246000', '2024-01-17 00:18:35.246000', '2024-01-17 00:18:35.243000', NULL, NULL, NULL),
(90, 201, 7083000, 5, 7103000, '2024-01-17 09:53:20.338000', '2024-01-17 09:53:20.338000', '2024-01-17 09:53:20.333000', NULL, NULL, NULL),
(91, 202, 7083000, 5, 7103000, '2024-01-17 09:57:36.210000', '2024-01-17 09:57:36.210000', '2024-01-17 09:57:36.203000', NULL, NULL, NULL),
(92, 203, 7083000, 5, 7103000, '2024-01-17 09:59:39.353000', '2024-01-17 09:59:39.353000', '2024-01-17 09:59:39.347000', NULL, NULL, NULL),
(93, 204, 7083000, 5, 7103000, '2024-01-17 09:59:49.771000', '2024-01-17 09:59:49.771000', '2024-01-17 09:59:49.762000', NULL, NULL, NULL),
(94, 205, 7083000, 5, 7103000, '2024-01-17 10:00:12.779000', '2024-01-17 10:00:12.779000', '2024-01-17 10:00:12.766000', NULL, NULL, NULL),
(95, 206, 7083000, 5, 7103000, '2024-01-17 10:03:20.890000', '2024-01-17 10:03:20.890000', '2024-01-17 10:03:20.887000', NULL, NULL, NULL),
(96, 207, 7083000, 5, 7103000, '2024-01-17 10:03:44.407000', '2024-01-17 10:03:44.407000', '2024-01-17 10:03:44.405000', NULL, NULL, NULL),
(97, 208, 7083000, 5, 7103000, '2024-01-17 10:06:54.599000', '2024-01-17 10:06:54.599000', '2024-01-17 10:06:54.598000', NULL, NULL, NULL),
(98, 209, 7083000, 5, 7103000, '2024-01-17 10:07:36.950000', '2024-01-17 10:07:36.950000', '2024-01-17 10:07:36.946000', NULL, NULL, NULL),
(99, 210, 7083000, 5, 7103000, '2024-01-17 10:07:38.346000', '2024-01-17 10:07:38.346000', '2024-01-17 10:07:38.345000', NULL, NULL, NULL),
(100, 211, 7083000, 5, 7103000, '2024-01-17 10:08:07.537000', '2024-01-17 10:08:07.537000', '2024-01-17 10:08:07.536000', NULL, NULL, NULL),
(101, 212, 7083000, 5, 7103000, '2024-01-17 10:10:05.633000', '2024-01-17 10:10:05.633000', '2024-01-17 10:10:05.631000', NULL, NULL, NULL),
(102, 213, 7083000, 5, 7103000, '2024-01-17 10:10:27.060000', '2024-01-17 10:10:27.060000', '2024-01-17 10:10:27.059000', NULL, NULL, NULL),
(103, 214, 7083000, 5, 7103000, '2024-01-17 10:10:37.196000', '2024-01-17 10:10:37.196000', '2024-01-17 10:10:37.195000', NULL, NULL, NULL),
(104, 215, 7083000, 5, 7103000, '2024-01-17 10:10:51.094000', '2024-01-17 10:10:51.094000', '2024-01-17 10:10:51.093000', NULL, NULL, NULL),
(105, 216, 7083000, 5, 7103000, '2024-01-17 10:11:33.205000', '2024-01-17 10:11:33.205000', '2024-01-17 10:11:33.203000', NULL, NULL, NULL),
(106, 217, 7083000, 5, 7103000, '2024-01-17 10:11:36.800000', '2024-01-17 10:11:36.800000', '2024-01-17 10:11:36.797000', NULL, NULL, NULL),
(107, 218, 7083000, 5, 7103000, '2024-01-17 10:11:44.039000', '2024-01-17 10:11:44.039000', '2024-01-17 10:11:44.036000', NULL, NULL, NULL),
(108, 219, 7083000, 5, 7103000, '2024-01-17 10:12:10.294000', '2024-01-17 10:12:10.294000', '2024-01-17 10:12:10.287000', NULL, NULL, NULL),
(109, 220, 7083000, 5, 7103000, '2024-01-17 10:12:14.948000', '2024-01-17 10:12:14.948000', '2024-01-17 10:12:14.947000', NULL, NULL, NULL),
(110, 221, 7083000, 5, 7103000, '2024-01-17 10:13:54.602000', '2024-01-17 10:13:54.602000', '2024-01-17 10:13:54.597000', NULL, NULL, NULL),
(111, 222, 7083000, 5, 7103000, '2024-01-17 10:14:26.877000', '2024-01-17 10:14:26.877000', '2024-01-17 10:14:26.875000', NULL, NULL, NULL),
(112, 223, 7083000, 5, 7103000, '2024-01-17 10:14:31.282000', '2024-01-17 10:14:31.282000', '2024-01-17 10:14:31.279000', NULL, NULL, NULL),
(113, 224, 7083000, 5, 7103000, '2024-01-17 10:14:45.902000', '2024-01-17 10:14:45.902000', '2024-01-17 10:14:45.899000', NULL, NULL, NULL),
(114, 225, 2450000, 2, 4900000, '2024-01-17 10:19:11.596000', '2024-01-17 10:19:11.596000', '2024-01-17 10:19:11.588000', NULL, NULL, 56),
(115, 225, 183000, 1, 183000, '2024-01-17 10:19:11.694000', '2024-01-17 10:19:11.694000', '2024-01-17 10:19:11.688000', NULL, NULL, 57),
(116, 225, 1000000, 2, 2000000, '2024-01-17 10:19:11.728000', '2024-01-17 10:19:11.728000', '2024-01-17 10:19:11.725000', NULL, NULL, 55),
(117, 228, 2450000, 2, 4900000, '2024-01-17 10:19:47.603000', '2024-01-17 10:19:47.603000', '2024-01-17 10:19:47.601000', NULL, NULL, 56),
(118, 228, 183000, 1, 183000, '2024-01-17 10:19:47.691000', '2024-01-17 10:19:47.691000', '2024-01-17 10:19:47.689000', NULL, NULL, 57),
(119, 228, 1000000, 2, 2000000, '2024-01-17 10:19:47.740000', '2024-01-17 10:19:47.740000', '2024-01-17 10:19:47.738000', NULL, NULL, 55),
(120, 229, 2450000, 2, 4900000, '2024-01-17 10:19:49.596000', '2024-01-17 10:19:49.596000', '2024-01-17 10:19:49.594000', NULL, NULL, 56),
(121, 229, 183000, 1, 183000, '2024-01-17 10:19:49.636000', '2024-01-17 10:19:49.636000', '2024-01-17 10:19:49.635000', NULL, NULL, 57),
(122, 229, 1000000, 2, 2000000, '2024-01-17 10:19:49.685000', '2024-01-17 10:19:49.685000', '2024-01-17 10:19:49.683000', NULL, NULL, 55),
(123, 230, 2450000, 2, 4900000, '2024-01-17 10:26:21.511000', '2024-01-17 10:26:21.511000', '2024-01-17 10:26:21.510000', NULL, NULL, 56),
(124, 230, 183000, 1, 183000, '2024-01-17 10:26:21.573000', '2024-01-17 10:26:21.573000', '2024-01-17 10:26:21.572000', NULL, NULL, 57),
(125, 230, 1000000, 2, 2000000, '2024-01-17 10:26:21.621000', '2024-01-17 10:26:21.621000', '2024-01-17 10:26:21.619000', NULL, NULL, 55),
(126, 231, 2450000, 2, 4900000, '2024-01-17 10:26:25.863000', '2024-01-17 10:26:25.863000', '2024-01-17 10:26:25.862000', NULL, NULL, 56),
(127, 231, 183000, 1, 183000, '2024-01-17 10:26:25.916000', '2024-01-17 10:26:25.916000', '2024-01-17 10:26:25.914000', NULL, NULL, 57),
(128, 231, 1000000, 2, 2000000, '2024-01-17 10:26:25.955000', '2024-01-17 10:26:25.955000', '2024-01-17 10:26:25.954000', NULL, NULL, 55),
(129, 232, 2450000, 2, 4900000, '2024-01-17 10:27:20.901000', '2024-01-17 10:27:20.901000', '2024-01-17 10:27:20.900000', NULL, NULL, 56),
(130, 232, 183000, 1, 183000, '2024-01-17 10:27:20.992000', '2024-01-17 10:27:20.992000', '2024-01-17 10:27:20.987000', NULL, NULL, 57),
(131, 232, 1000000, 2, 2000000, '2024-01-17 10:27:21.031000', '2024-01-17 10:27:21.031000', '2024-01-17 10:27:21.030000', NULL, NULL, 55),
(132, 233, 2450000, 2, 4900000, '2024-01-17 10:27:44.492000', '2024-01-17 10:27:44.492000', '2024-01-17 10:27:44.490000', NULL, NULL, 56),
(133, 233, 183000, 1, 183000, '2024-01-17 10:27:44.552000', '2024-01-17 10:27:44.552000', '2024-01-17 10:27:44.550000', NULL, NULL, 57),
(134, 233, 1000000, 2, 2000000, '2024-01-17 10:27:44.612000', '2024-01-17 10:27:44.612000', '2024-01-17 10:27:44.608000', NULL, NULL, 55),
(135, 234, 2450000, 2, 4900000, '2024-01-17 10:28:41.414000', '2024-01-17 10:28:41.414000', '2024-01-17 10:28:41.411000', NULL, NULL, 56),
(136, 234, 183000, 1, 183000, '2024-01-17 10:28:41.534000', '2024-01-17 10:28:41.534000', '2024-01-17 10:28:41.528000', NULL, NULL, 57),
(137, 234, 1000000, 2, 2000000, '2024-01-17 10:28:41.597000', '2024-01-17 10:28:41.597000', '2024-01-17 10:28:41.593000', NULL, NULL, 55),
(138, 235, 2450000, 2, 4900000, '2024-01-17 10:28:49.213000', '2024-01-17 10:28:49.213000', '2024-01-17 10:28:49.209000', NULL, NULL, 56),
(139, 235, 183000, 1, 183000, '2024-01-17 10:28:49.262000', '2024-01-17 10:28:49.262000', '2024-01-17 10:28:49.260000', NULL, NULL, 57),
(140, 235, 1000000, 2, 2000000, '2024-01-17 10:28:49.301000', '2024-01-17 10:28:49.301000', '2024-01-17 10:28:49.300000', NULL, NULL, 55),
(141, 236, 2450000, 2, 4900000, '2024-01-17 10:28:55.542000', '2024-01-17 10:28:55.542000', '2024-01-17 10:28:55.540000', NULL, NULL, 56),
(142, 236, 183000, 1, 183000, '2024-01-17 10:28:55.670000', '2024-01-17 10:28:55.670000', '2024-01-17 10:28:55.663000', NULL, NULL, 57),
(143, 236, 1000000, 2, 2000000, '2024-01-17 10:28:55.750000', '2024-01-17 10:28:55.750000', '2024-01-17 10:28:55.749000', NULL, NULL, 55),
(144, 237, 2450000, 2, 4900000, '2024-01-17 10:30:41.804000', '2024-01-17 10:30:41.804000', '2024-01-17 10:30:41.803000', NULL, NULL, 56),
(145, 237, 183000, 1, 183000, '2024-01-17 10:30:41.849000', '2024-01-17 10:30:41.849000', '2024-01-17 10:30:41.845000', NULL, NULL, 57),
(146, 238, 2450000, 2, 4900000, '2024-01-17 10:31:37.855000', '2024-01-17 10:31:37.855000', '2024-01-17 10:31:37.853000', NULL, NULL, 56),
(147, 238, 183000, 1, 183000, '2024-01-17 10:31:37.898000', '2024-01-17 10:31:37.898000', '2024-01-17 10:31:37.897000', NULL, NULL, 57),
(148, 239, 2450000, 2, 4900000, '2024-01-17 10:31:50.892000', '2024-01-17 10:31:50.892000', '2024-01-17 10:31:50.890000', NULL, NULL, 56),
(149, 239, 183000, 1, 183000, '2024-01-17 10:31:50.939000', '2024-01-17 10:31:50.939000', '2024-01-17 10:31:50.937000', NULL, NULL, 57),
(150, 240, 2450000, 2, 4900000, '2024-01-17 10:32:19.381000', '2024-01-17 10:32:19.381000', '2024-01-17 10:32:19.379000', NULL, NULL, 56),
(151, 240, 183000, 1, 183000, '2024-01-17 10:32:19.475000', '2024-01-17 10:32:19.475000', '2024-01-17 10:32:19.473000', NULL, NULL, 57),
(152, 241, 2450000, 2, 4900000, '2024-01-17 10:32:38.571000', '2024-01-17 10:32:38.571000', '2024-01-17 10:32:38.568000', NULL, NULL, 56),
(153, 241, 183000, 1, 183000, '2024-01-17 10:32:38.678000', '2024-01-17 10:32:38.678000', '2024-01-17 10:32:38.675000', NULL, NULL, 57),
(154, 242, 2450000, 2, 4900000, '2024-01-17 10:32:49.202000', '2024-01-17 10:32:49.202000', '2024-01-17 10:32:49.199000', NULL, NULL, 56),
(155, 242, 183000, 1, 183000, '2024-01-17 10:32:49.318000', '2024-01-17 10:32:49.318000', '2024-01-17 10:32:49.312000', NULL, NULL, 57),
(156, 243, 2450000, 2, 4900000, '2024-01-17 10:33:38.133000', '2024-01-17 10:33:38.133000', '2024-01-17 10:33:38.130000', NULL, NULL, 56),
(157, 243, 183000, 1, 183000, '2024-01-17 10:33:38.209000', '2024-01-17 10:33:38.209000', '2024-01-17 10:33:38.208000', NULL, NULL, 57),
(158, 244, 2450000, 2, 4900000, '2024-01-17 10:33:52.039000', '2024-01-17 10:33:52.039000', '2024-01-17 10:33:52.037000', NULL, NULL, 56),
(159, 244, 183000, 1, 183000, '2024-01-17 10:33:52.098000', '2024-01-17 10:33:52.098000', '2024-01-17 10:33:52.095000', NULL, NULL, 57),
(160, 245, 2450000, 2, 4900000, '2024-01-17 10:34:54.822000', '2024-01-17 10:34:54.822000', '2024-01-17 10:34:54.821000', NULL, NULL, 56),
(161, 245, 183000, 1, 183000, '2024-01-17 10:34:54.857000', '2024-01-17 10:34:54.857000', '2024-01-17 10:34:54.854000', NULL, NULL, 57),
(162, 246, 2450000, 2, 4900000, '2024-01-17 10:35:10.684000', '2024-01-17 10:35:10.684000', '2024-01-17 10:35:10.682000', NULL, NULL, 56),
(163, 246, 183000, 1, 183000, '2024-01-17 10:35:10.767000', '2024-01-17 10:35:10.767000', '2024-01-17 10:35:10.764000', NULL, NULL, 57),
(164, 247, 2450000, 2, 4900000, '2024-01-17 10:35:21.063000', '2024-01-17 10:35:21.063000', '2024-01-17 10:35:21.060000', NULL, NULL, 56),
(165, 247, 183000, 1, 183000, '2024-01-17 10:35:21.099000', '2024-01-17 10:35:21.099000', '2024-01-17 10:35:21.096000', NULL, NULL, 57),
(166, 248, 2450000, 2, 4900000, '2024-01-17 10:35:31.607000', '2024-01-17 10:35:31.607000', '2024-01-17 10:35:31.604000', NULL, NULL, 56),
(167, 249, 2450000, 2, 4900000, '2024-01-17 10:35:55.946000', '2024-01-17 10:35:55.946000', '2024-01-17 10:35:55.943000', NULL, NULL, 56),
(168, 249, 183000, 1, 183000, '2024-01-17 10:35:56.072000', '2024-01-17 10:35:56.072000', '2024-01-17 10:35:56.069000', NULL, NULL, 57),
(169, 250, 2450000, 2, 4900000, '2024-01-17 10:36:05.467000', '2024-01-17 10:36:05.467000', '2024-01-17 10:36:05.464000', NULL, NULL, 56),
(170, 250, 183000, 1, 183000, '2024-01-17 10:36:05.513000', '2024-01-17 10:36:05.513000', '2024-01-17 10:36:05.512000', NULL, NULL, 57),
(171, 251, 2450000, 2, 4900000, '2024-01-17 10:36:28.031000', '2024-01-17 10:36:28.031000', '2024-01-17 10:36:28.030000', NULL, NULL, 56),
(172, 251, 183000, 1, 183000, '2024-01-17 10:36:28.100000', '2024-01-17 10:36:28.100000', '2024-01-17 10:36:28.096000', NULL, NULL, 57),
(173, 252, 2450000, 2, 4900000, '2024-01-17 10:36:35.800000', '2024-01-17 10:36:35.800000', '2024-01-17 10:36:35.799000', NULL, NULL, 56),
(174, 252, 183000, 1, 183000, '2024-01-17 10:36:35.856000', '2024-01-17 10:36:35.856000', '2024-01-17 10:36:35.855000', NULL, NULL, 57),
(175, 253, 2450000, 2, 4900000, '2024-01-17 10:38:09.141000', '2024-01-17 10:38:09.141000', '2024-01-17 10:38:09.139000', NULL, NULL, 56),
(176, 253, 183000, 1, 183000, '2024-01-17 10:38:09.314000', '2024-01-17 10:38:09.314000', '2024-01-17 10:38:09.314000', NULL, NULL, 57),
(177, 254, 2450000, 2, 4900000, '2024-01-17 10:38:56.803000', '2024-01-17 10:38:56.803000', '2024-01-17 10:38:56.801000', NULL, NULL, 56),
(178, 254, 183000, 1, 183000, '2024-01-17 10:38:56.867000', '2024-01-17 10:38:56.867000', '2024-01-17 10:38:56.866000', NULL, NULL, 57),
(179, 255, 2450000, 2, 4900000, '2024-01-17 10:39:11.705000', '2024-01-17 10:39:11.705000', '2024-01-17 10:39:11.703000', NULL, NULL, 56),
(180, 255, 183000, 1, 183000, '2024-01-17 10:39:11.758000', '2024-01-17 10:39:11.758000', '2024-01-17 10:39:11.757000', NULL, NULL, 57),
(181, 256, 2450000, 2, 4900000, '2024-01-17 10:39:14.829000', '2024-01-17 10:39:14.829000', '2024-01-17 10:39:14.828000', NULL, NULL, 56),
(182, 256, 183000, 1, 183000, '2024-01-17 10:39:14.934000', '2024-01-17 10:39:14.934000', '2024-01-17 10:39:14.931000', NULL, NULL, 57),
(183, 257, 2450000, 2, 4900000, '2024-01-17 10:39:24.024000', '2024-01-17 10:39:24.024000', '2024-01-17 10:39:24.016000', NULL, NULL, 56),
(184, 257, 183000, 1, 183000, '2024-01-17 10:39:24.098000', '2024-01-17 10:39:24.098000', '2024-01-17 10:39:24.094000', NULL, NULL, 57),
(185, 258, 2450000, 2, 4900000, '2024-01-17 10:39:46.540000', '2024-01-17 10:39:46.540000', '2024-01-17 10:39:46.537000', NULL, NULL, 56),
(186, 258, 183000, 1, 183000, '2024-01-17 10:39:46.590000', '2024-01-17 10:39:46.590000', '2024-01-17 10:39:46.589000', NULL, NULL, 57),
(187, 259, 2450000, 2, 4900000, '2024-01-17 10:39:48.314000', '2024-01-17 10:39:48.314000', '2024-01-17 10:39:48.313000', NULL, NULL, 56),
(188, 259, 183000, 1, 183000, '2024-01-17 10:39:48.360000', '2024-01-17 10:39:48.360000', '2024-01-17 10:39:48.359000', NULL, NULL, 57),
(189, 260, 2450000, 2, 4900000, '2024-01-17 10:40:07.851000', '2024-01-17 10:40:07.851000', '2024-01-17 10:40:07.849000', NULL, NULL, 56),
(190, 260, 183000, 1, 183000, '2024-01-17 10:40:07.938000', '2024-01-17 10:40:07.938000', '2024-01-17 10:40:07.936000', NULL, NULL, 57),
(191, 261, 2450000, 2, 4900000, '2024-01-17 10:40:28.038000', '2024-01-17 10:40:28.038000', '2024-01-17 10:40:28.034000', NULL, NULL, 56),
(192, 261, 183000, 1, 183000, '2024-01-17 10:40:28.093000', '2024-01-17 10:40:28.093000', '2024-01-17 10:40:28.091000', NULL, NULL, 57),
(193, 262, 2450000, 2, 4900000, '2024-01-17 10:40:38.706000', '2024-01-17 10:40:38.706000', '2024-01-17 10:40:38.704000', NULL, NULL, 56),
(194, 262, 183000, 1, 183000, '2024-01-17 10:40:38.740000', '2024-01-17 10:40:38.740000', '2024-01-17 10:40:38.737000', NULL, NULL, 57),
(195, 263, 2450000, 2, 4900000, '2024-01-17 10:40:43.588000', '2024-01-17 10:40:43.588000', '2024-01-17 10:40:43.587000', NULL, NULL, 56),
(196, 263, 183000, 1, 183000, '2024-01-17 10:40:43.624000', '2024-01-17 10:40:43.624000', '2024-01-17 10:40:43.622000', NULL, NULL, 57),
(197, 264, 2450000, 2, 4900000, '2024-01-17 10:41:33.366000', '2024-01-17 10:41:33.366000', '2024-01-17 10:41:33.365000', NULL, NULL, 56),
(198, 264, 183000, 1, 183000, '2024-01-17 10:41:33.429000', '2024-01-17 10:41:33.429000', '2024-01-17 10:41:33.428000', NULL, NULL, 57),
(199, 265, 2450000, 2, 4900000, '2024-01-17 10:42:48.706000', '2024-01-17 10:42:48.706000', '2024-01-17 10:42:48.705000', NULL, NULL, 56),
(200, 265, 183000, 1, 183000, '2024-01-17 10:42:48.714000', '2024-01-17 10:42:48.714000', '2024-01-17 10:42:48.712000', NULL, NULL, 57),
(201, 266, 2450000, 2, 4900000, '2024-01-17 10:43:09.104000', '2024-01-17 10:43:09.104000', '2024-01-17 10:43:09.104000', NULL, NULL, 56),
(202, 266, 183000, 1, 183000, '2024-01-17 10:43:09.110000', '2024-01-17 10:43:09.110000', '2024-01-17 10:43:09.109000', NULL, NULL, 57),
(203, 267, 2450000, 2, 4900000, '2024-01-17 10:45:15.546000', '2024-01-17 10:45:15.546000', '2024-01-17 10:45:15.546000', NULL, NULL, 56),
(204, 267, 183000, 1, 183000, '2024-01-17 10:45:15.558000', '2024-01-17 10:45:15.558000', '2024-01-17 10:45:15.556000', NULL, NULL, 57),
(205, 268, 2450000, 2, 4900000, '2024-01-17 10:45:18.750000', '2024-01-17 10:45:18.750000', '2024-01-17 10:45:18.748000', NULL, NULL, 56),
(206, 268, 183000, 1, 183000, '2024-01-17 10:45:18.761000', '2024-01-17 10:45:18.761000', '2024-01-17 10:45:18.757000', NULL, NULL, 57),
(207, 269, 2450000, 2, 4900000, '2024-01-17 10:45:31.268000', '2024-01-17 10:45:31.268000', '2024-01-17 10:45:31.265000', NULL, NULL, 56),
(208, 269, 183000, 1, 183000, '2024-01-17 10:45:31.286000', '2024-01-17 10:45:31.286000', '2024-01-17 10:45:31.284000', NULL, NULL, 57),
(209, 270, 2450000, 2, 4900000, '2024-01-17 10:45:34.287000', '2024-01-17 10:45:34.287000', '2024-01-17 10:45:34.285000', NULL, NULL, 56),
(210, 270, 183000, 1, 183000, '2024-01-17 10:45:34.300000', '2024-01-17 10:45:34.300000', '2024-01-17 10:45:34.296000', NULL, NULL, 57),
(211, 271, 183000, 1, 183000, '2024-01-17 10:46:05.202000', '2024-01-17 10:46:05.202000', '2024-01-17 10:46:05.201000', NULL, NULL, 57),
(212, 271, 2450000, 2, 4900000, '2024-01-17 10:46:05.211000', '2024-01-17 10:46:05.211000', '2024-01-17 10:46:05.210000', NULL, NULL, 56),
(213, 272, 183000, 1, 183000, '2024-01-17 10:46:07.738000', '2024-01-17 10:46:07.738000', '2024-01-17 10:46:07.736000', NULL, NULL, 57),
(214, 272, 2450000, 2, 4900000, '2024-01-17 10:46:07.753000', '2024-01-17 10:46:07.753000', '2024-01-17 10:46:07.751000', NULL, NULL, 56),
(215, 273, 183000, 1, 183000, '2024-01-17 10:46:18.074000', '2024-01-17 10:46:18.074000', '2024-01-17 10:46:18.073000', NULL, NULL, 57),
(216, 273, 2450000, 2, 4900000, '2024-01-17 10:46:18.085000', '2024-01-17 10:46:18.085000', '2024-01-17 10:46:18.084000', NULL, NULL, 56),
(217, 274, 2450000, 2, 4900000, '2024-01-17 10:46:22.753000', '2024-01-17 10:46:22.753000', '2024-01-17 10:46:22.751000', NULL, NULL, 56),
(218, 274, 183000, 1, 183000, '2024-01-17 10:46:22.767000', '2024-01-17 10:46:22.767000', '2024-01-17 10:46:22.766000', NULL, NULL, 57),
(219, 275, 2450000, 2, 4900000, '2024-01-17 10:46:39.595000', '2024-01-17 10:46:39.595000', '2024-01-17 10:46:39.594000', NULL, NULL, 56),
(220, 275, 183000, 1, 183000, '2024-01-17 10:46:39.613000', '2024-01-17 10:46:39.613000', '2024-01-17 10:46:39.608000', NULL, NULL, 57),
(221, 276, 183000, 1, 183000, '2024-01-17 10:46:42.293000', '2024-01-17 10:46:42.293000', '2024-01-17 10:46:42.288000', NULL, NULL, 57),
(222, 276, 2450000, 2, 4900000, '2024-01-17 10:46:42.310000', '2024-01-17 10:46:42.310000', '2024-01-17 10:46:42.306000', NULL, NULL, 56),
(223, 277, 2450000, 2, 4900000, '2024-01-17 10:46:48.417000', '2024-01-17 10:46:48.417000', '2024-01-17 10:46:48.414000', NULL, NULL, 56),
(224, 277, 183000, 1, 183000, '2024-01-17 10:46:48.426000', '2024-01-17 10:46:48.426000', '2024-01-17 10:46:48.424000', NULL, NULL, 57),
(225, 278, 2450000, 2, 4900000, '2024-01-17 10:51:41.370000', '2024-01-17 10:51:41.370000', '2024-01-17 10:51:41.368000', NULL, NULL, NULL),
(226, 278, 183000, 1, 183000, '2024-01-17 10:51:41.382000', '2024-01-17 10:51:41.382000', '2024-01-17 10:51:41.381000', NULL, NULL, NULL),
(227, 279, 183000, 1, 183000, '2024-01-17 10:52:20.829000', '2024-01-17 10:52:20.829000', '2024-01-17 10:52:20.828000', NULL, NULL, NULL),
(228, 279, 2450000, 2, 4900000, '2024-01-17 10:52:20.861000', '2024-01-17 10:52:20.861000', '2024-01-17 10:52:20.860000', NULL, NULL, NULL),
(229, 280, 183000, 1, 183000, '2024-01-17 10:52:31.125000', '2024-01-17 10:52:31.125000', '2024-01-17 10:52:31.125000', NULL, NULL, NULL),
(230, 280, 2450000, 2, 4900000, '2024-01-17 10:52:31.137000', '2024-01-17 10:52:31.137000', '2024-01-17 10:52:31.135000', NULL, NULL, NULL),
(231, 281, 2450000, 2, 4900000, '2024-01-17 10:52:34.633000', '2024-01-17 10:52:34.633000', '2024-01-17 10:52:34.633000', NULL, NULL, NULL),
(232, 281, 183000, 1, 183000, '2024-01-17 10:52:34.638000', '2024-01-17 10:52:34.638000', '2024-01-17 10:52:34.637000', NULL, NULL, NULL),
(233, 282, 2450000, 2, 4900000, '2024-01-17 10:53:08.412000', '2024-01-17 10:53:08.412000', '2024-01-17 10:53:08.411000', NULL, NULL, NULL),
(234, 282, 183000, 1, 183000, '2024-01-17 10:53:08.433000', '2024-01-17 10:53:08.433000', '2024-01-17 10:53:08.431000', NULL, NULL, NULL),
(235, 283, 2450000, 2, 4900000, '2024-01-17 10:53:20.484000', '2024-01-17 10:53:20.484000', '2024-01-17 10:53:20.482000', NULL, NULL, NULL),
(236, 283, 183000, 1, 183000, '2024-01-17 10:53:20.534000', '2024-01-17 10:53:20.534000', '2024-01-17 10:53:20.533000', NULL, NULL, NULL),
(237, 284, 183000, 1, 183000, '2024-01-17 10:53:31.272000', '2024-01-17 10:53:31.272000', '2024-01-17 10:53:31.272000', NULL, NULL, NULL),
(238, 284, 2450000, 2, 4900000, '2024-01-17 10:53:31.279000', '2024-01-17 10:53:31.279000', '2024-01-17 10:53:31.278000', NULL, NULL, NULL),
(239, 285, 183000, 1, 183000, '2024-01-17 10:53:34.020000', '2024-01-17 10:53:34.020000', '2024-01-17 10:53:34.019000', NULL, NULL, NULL),
(240, 285, 2450000, 2, 4900000, '2024-01-17 10:53:34.031000', '2024-01-17 10:53:34.031000', '2024-01-17 10:53:34.029000', NULL, NULL, NULL),
(241, 286, 183000, 1, 183000, '2024-01-17 10:53:45.811000', '2024-01-17 10:53:45.811000', '2024-01-17 10:53:45.810000', NULL, NULL, NULL),
(242, 286, 2450000, 2, 4900000, '2024-01-17 10:53:45.818000', '2024-01-17 10:53:45.818000', '2024-01-17 10:53:45.817000', NULL, NULL, NULL),
(243, 287, 183000, 1, 183000, '2024-01-17 10:54:33.497000', '2024-01-17 10:54:33.497000', '2024-01-17 10:54:33.496000', NULL, NULL, NULL),
(244, 287, 2450000, 2, 4900000, '2024-01-17 10:54:33.507000', '2024-01-17 10:54:33.507000', '2024-01-17 10:54:33.506000', NULL, NULL, NULL),
(245, 288, 183000, 1, 183000, '2024-01-17 10:54:49.980000', '2024-01-17 10:54:49.980000', '2024-01-17 10:54:49.980000', NULL, NULL, NULL),
(246, 288, 2450000, 2, 4900000, '2024-01-17 10:54:49.990000', '2024-01-17 10:54:49.990000', '2024-01-17 10:54:49.989000', NULL, NULL, NULL),
(247, 289, 183000, 1, 183000, '2024-01-17 10:54:53.642000', '2024-01-17 10:54:53.642000', '2024-01-17 10:54:53.640000', NULL, NULL, NULL),
(248, 289, 2450000, 2, 4900000, '2024-01-17 10:54:53.656000', '2024-01-17 10:54:53.656000', '2024-01-17 10:54:53.654000', NULL, NULL, NULL),
(249, 290, 183000, 1, 183000, '2024-01-17 10:55:00.698000', '2024-01-17 10:55:00.698000', '2024-01-17 10:55:00.696000', NULL, NULL, NULL),
(250, 290, 2450000, 2, 4900000, '2024-01-17 10:55:00.708000', '2024-01-17 10:55:00.708000', '2024-01-17 10:55:00.706000', NULL, NULL, NULL),
(251, 291, 2450000, 2, 4900000, '2024-01-17 10:56:39.946000', '2024-01-17 10:56:39.946000', '2024-01-17 10:56:39.945000', NULL, NULL, NULL),
(252, 291, 183000, 1, 183000, '2024-01-17 10:56:39.964000', '2024-01-17 10:56:39.964000', '2024-01-17 10:56:39.962000', NULL, NULL, NULL),
(253, 292, 2450000, 2, 4900000, '2024-01-17 10:57:05.964000', '2024-01-17 10:57:05.964000', '2024-01-17 10:57:05.962000', NULL, NULL, 56),
(254, 292, 183000, 1, 183000, '2024-01-17 10:57:05.979000', '2024-01-17 10:57:05.979000', '2024-01-17 10:57:05.978000', NULL, NULL, 57),
(255, 293, 2450000, 2, 4900000, '2024-01-17 11:00:16.225000', '2024-01-17 11:00:16.225000', '2024-01-17 11:00:16.223000', NULL, NULL, 56),
(256, 293, 183000, 1, 183000, '2024-01-17 11:00:16.290000', '2024-01-17 11:00:16.290000', '2024-01-17 11:00:16.288000', NULL, NULL, 57),
(257, 294, 2450000, 2, 4900000, '2024-01-17 11:03:06.583000', '2024-01-17 11:03:06.583000', '2024-01-17 11:03:06.582000', NULL, NULL, 56),
(258, 294, 183000, 1, 183000, '2024-01-17 11:03:06.610000', '2024-01-17 11:03:06.610000', '2024-01-17 11:03:06.606000', NULL, NULL, 57),
(259, 295, 100, 1, 100, '2024-01-17 11:05:32.081000', '2024-01-17 11:05:32.081000', '2024-01-17 11:05:32.080000', NULL, NULL, 1),
(260, 296, 100, 1, 100, '2024-01-17 11:08:30.641000', '2024-01-17 11:08:30.641000', '2024-01-17 11:08:30.640000', NULL, NULL, 1),
(261, 297, 100, 1, 100, '2024-01-17 11:09:00.243000', '2024-01-17 11:09:00.243000', '2024-01-17 11:09:00.242000', NULL, NULL, 1),
(262, 298, 100, 1, 100, '2024-01-17 11:10:13.335000', '2024-01-17 11:10:13.335000', '2024-01-17 11:10:13.334000', NULL, NULL, 1),
(263, 299, 100, 1, 100, '2024-01-17 11:10:29.739000', '2024-01-17 11:10:29.739000', '2024-01-17 11:10:29.739000', NULL, NULL, 1),
(264, 300, 100, 1, 100, '2024-01-17 11:10:32.706000', '2024-01-17 11:10:32.706000', '2024-01-17 11:10:32.705000', NULL, NULL, 1),
(265, 301, 100, 1, 100, '2024-01-17 11:10:44.208000', '2024-01-17 11:10:44.208000', '2024-01-17 11:10:44.206000', NULL, NULL, 1),
(266, 302, 100, 1, 100, '2024-01-17 11:10:46.312000', '2024-01-17 11:10:46.312000', '2024-01-17 11:10:46.310000', NULL, NULL, 1),
(267, 303, 100, 1, 100, '2024-01-17 11:10:58.989000', '2024-01-17 11:10:58.989000', '2024-01-17 11:10:58.988000', NULL, NULL, 1),
(268, 304, 100, 1, 100, '2024-01-17 11:12:27.483000', '2024-01-17 11:12:27.483000', '2024-01-17 11:12:27.482000', NULL, NULL, 1),
(269, 305, 100, 1, 100, '2024-01-17 11:12:41.051000', '2024-01-17 11:12:41.051000', '2024-01-17 11:12:41.050000', NULL, NULL, 1),
(270, 306, 100, 1, 100, '2024-01-17 11:14:15.906000', '2024-01-17 11:14:15.906000', '2024-01-17 11:14:15.905000', NULL, NULL, 1),
(271, 307, 100, 1, 100, '2024-01-17 11:17:19.787000', '2024-01-17 11:17:19.787000', '2024-01-17 11:17:19.785000', NULL, NULL, 1),
(272, 308, 780000, 1, 780000, '2024-01-17 11:18:18.269000', '2024-01-17 11:18:18.269000', '2024-01-17 11:18:18.267000', NULL, NULL, 71),
(273, 309, 780000, 1, 780000, '2024-01-17 11:19:08.077000', '2024-01-17 11:19:08.077000', '2024-01-17 11:19:08.076000', NULL, NULL, 71);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `deliveryaddress` longtext DEFAULT NULL,
  `deliveryname` longtext DEFAULT NULL,
  `deliveryphone` bigint(20) DEFAULT NULL,
  `deliveryemail` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `ship` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `code`, `user_id`, `deliveryaddress`, `deliveryname`, `deliveryphone`, `deliveryemail`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `status`, `total`, `ship`) VALUES
(1, 20200107121212, 20, 'HCM', 'Không Tên', 987654321, 'loi@gmail.com', '2023-07-29 12:27:18.000000', '2023-07-15 09:55:30.116000', '2023-07-15 09:55:30.110000', NULL, 1, 1, NULL, NULL),
(2, 20200107121216, 1, 'Bình Dương', 'Tào Lao', 987654321, 'toan@gmail.com', '1900-01-18 12:27:26.000000', '2023-07-15 09:55:33.825000', '2023-07-15 09:55:33.820000', NULL, 1, 2, NULL, NULL),
(3, 8557, 11, '103 Tăng Nhơn Phú, Phường Phước Long B , Quận 9 , Tp.Thủ Đức , Tp. Hồ Chí Minh', 'Huỳnh Hữu Thiện ', 342591007, 'huynhthien91007@gmail.com', '2023-07-15 11:34:28.713000', '2023-07-15 11:36:05.737000', '2023-07-15 11:34:28.705000', NULL, 1, 0, NULL, NULL),
(4, 5453, 11, '103 Tăng Nhơn Phú, Phường Phước Long B , Quận 9 , Tp.Thủ Đức , Tp. Hồ Chí Minh', 'Huỳnh Hữu Thiện ', 342591007, 'huynhthien91007@gmail.com', '2023-07-15 11:48:31.107000', '2023-07-15 11:48:31.107000', '2023-07-15 11:48:31.104000', NULL, NULL, 0, NULL, NULL),
(5, 7226, 11, '103 Tăng Nhơn Phú, Phường Phước Long B , Quận 9 , Tp.Thủ Đức , Tp. Hồ Chí Minh', 'Huỳnh Hữu Thiện ', 342591007, 'huynhthien91007@gmail.com', '2023-08-23 19:12:21.777000', '2023-08-23 19:12:21.777000', '2023-08-23 19:12:21.735000', NULL, NULL, 0, NULL, NULL),
(6, 681, 10, '103 Tăng Nhơn Phú, Phường Phước Long B , Quận 9 , Tp.Thủ Đức , Tp. Hồ Chí Minh', 'Huỳnh Hữu Thiện ', 342591007, 'huynhthien91007@gmail.com', '2024-01-14 16:51:56.393000', '2024-01-14 16:51:56.393000', '2024-01-14 16:51:56.379000', NULL, NULL, 0, NULL, NULL),
(7, 1575, 10, '103 Tăng Nhơn Phú, Phường Phước Long B , Quận 9 , Tp.Thủ Đức , Tp. Hồ Chí Minh', 'fsdfsdfsd', 342591007, 'huynhthien91007@gmail.com', '2024-01-14 16:53:31.290000', '2024-01-14 16:53:31.290000', '2024-01-14 16:53:31.285000', NULL, NULL, 0, NULL, NULL),
(8, 7867, 10, 'dsadsada', 'ádsadas', 342591007, 'huynhthien91007@gmail.com', '2024-01-14 16:55:04.372000', '2024-01-14 16:55:04.372000', '2024-01-14 16:55:04.363000', NULL, NULL, 0, NULL, NULL),
(9, 5319, 10, 'dfsgf616 ', 'bxcvbvxcb', 251546616, 'hhtvlogs275@gmail.com', '2024-01-14 17:01:17.224000', '2024-01-14 17:01:17.224000', '2024-01-14 17:01:17.219000', NULL, NULL, 0, NULL, NULL),
(84, 1654, 24, 'a', 'a', 123456789, 'hhtvlogs275s@gmail.com', '2024-01-16 13:07:48.253000', '2024-01-16 13:07:48.253000', '2024-01-16 13:07:48.250000', NULL, NULL, 0, NULL, NULL),
(85, 7331, 24, 'b', 'b', 113546855, 'hhtvlogs275s@gmail.com', '2024-01-16 13:15:29.620000', '2024-01-16 13:15:29.620000', '2024-01-16 13:15:29.617000', NULL, NULL, 0, NULL, NULL),
(86, 3146, 24, 'abc', 'abc', 987654321, 'hhtvlogs275s@gmail.com', '2024-01-16 20:35:36.788000', '2024-01-16 20:35:36.788000', '2024-01-16 20:35:36.776000', NULL, NULL, 0, NULL, NULL),
(87, 2254, 24, '515ggfdsgdsfg', '2453454352', 5433434524, 'hhtvlogs275s@gmail.com', '2024-01-16 20:45:29.407000', '2024-01-16 20:45:29.407000', '2024-01-16 20:45:29.402000', NULL, NULL, 0, NULL, NULL),
(88, 2194, 24, 'g21fdg2fsgfd', 'fsf', 55252551313, 'hhtvlogs275s@gmail.com', '2024-01-16 20:51:04.979000', '2024-01-16 20:51:04.979000', '2024-01-16 20:51:04.976000', NULL, NULL, 0, NULL, NULL),
(89, 2170, 24, 'đfghey4564564', '5435654645', 6546456456456, 'hhtvlogs275s@gmail.com', '2024-01-16 20:54:01.189000', '2024-01-16 20:54:01.189000', '2024-01-16 20:54:01.185000', NULL, NULL, 0, NULL, NULL),
(90, 218, 24, '2542g543g543', 'gtff', 25275275257, 'hhtvlogs275s@gmail.com', '2024-01-16 20:59:24.268000', '2024-01-16 20:59:24.268000', '2024-01-16 20:59:24.263000', NULL, NULL, 0, NULL, NULL),
(91, 9775, 24, '5435345345', '43543', 543543534534, 'hhtvlogs275s@gmail.com', '2024-01-16 21:02:20.850000', '2024-01-16 21:02:20.850000', '2024-01-16 21:02:20.832000', NULL, NULL, 0, NULL, NULL),
(92, 5274, 24, 'wfwerw', '341242', 45435435345, 'hhtvlogs275s@gmail.com', '2024-01-16 21:26:43.914000', '2024-01-16 21:26:43.914000', '2024-01-16 21:26:43.906000', NULL, NULL, 0, NULL, NULL),
(93, 5819, 24, 'wfwerw', '341242', 45435435345, 'hhtvlogs275s@gmail.com', '2024-01-16 21:26:49.339000', '2024-01-16 21:26:49.339000', '2024-01-16 21:26:49.337000', NULL, NULL, 0, NULL, NULL),
(94, 7603, 24, 'wfwerw', '341242', 45435435345, 'hhtvlogs275s@gmail.com', '2024-01-16 21:27:04.514000', '2024-01-16 21:27:04.514000', '2024-01-16 21:27:04.511000', NULL, NULL, 0, NULL, NULL),
(95, 1273, 24, '543524523', '43543524', 543543542, 'hhtvlogs275s@gmail.com', '2024-01-16 21:30:58.977000', '2024-01-16 21:30:58.977000', '2024-01-16 21:30:58.973000', NULL, NULL, 0, NULL, NULL),
(96, 5754, 24, '0254325424', '345254', 5435432545, 'hhtvlogs275s@gmail.com', '2024-01-16 21:31:54.478000', '2024-01-16 21:31:54.478000', '2024-01-16 21:31:54.476000', NULL, NULL, 0, NULL, NULL),
(97, 4911, 24, 'ggg', 'gggg', 543543534, 'hhtvlogs275s@gmail.com', '2024-01-16 21:32:37.717000', '2024-01-16 21:32:37.717000', '2024-01-16 21:32:37.713000', NULL, NULL, 0, NULL, NULL),
(98, 5862, 24, '5515546546', 'ghdfghdfgh', 3546534645, 'hhtvlogs275s@gmail.com', '2024-01-16 21:33:09.438000', '2024-01-16 21:33:09.438000', '2024-01-16 21:33:09.434000', NULL, NULL, 0, NULL, NULL),
(99, 5048, 24, '24534343', '4352324', 345343453, 'hhtvlogs275s@gmail.com', '2024-01-16 21:33:50.564000', '2024-01-16 21:33:50.564000', '2024-01-16 21:33:50.561000', NULL, NULL, 0, NULL, NULL),
(100, 2014, 24, '24534343', '4352324', 345343453, 'hhtvlogs275s@gmail.com', '2024-01-16 21:35:01.496000', '2024-01-16 21:35:01.496000', '2024-01-16 21:35:01.493000', NULL, NULL, 0, NULL, NULL),
(101, 7829, 24, '432534523', '435435345', 5244352, 'hhtvlogs275s@gmail.com', '2024-01-16 21:36:10.809000', '2024-01-16 21:36:10.809000', '2024-01-16 21:36:10.806000', NULL, NULL, 0, NULL, NULL),
(102, 5850, 24, '3452342', '4543243235', 543534534, 'hhtvlogs275s@gmail.com', '2024-01-16 21:36:32.388000', '2024-01-16 21:36:32.388000', '2024-01-16 21:36:32.385000', NULL, NULL, 0, NULL, NULL),
(103, 8293, 24, '5gfdhtfhd', 'sdthsthsdh', 546256546345, 'hhtvlogs275s@gmail.com', '2024-01-16 21:37:15.865000', '2024-01-16 21:37:15.865000', '2024-01-16 21:37:15.863000', NULL, NULL, 0, NULL, NULL),
(104, 5463, 24, '45365346', 'fdghdfhdfgh', 54634563456345, 'hhtvlogs275s@gmail.com', '2024-01-16 21:39:09.273000', '2024-01-16 21:39:09.273000', '2024-01-16 21:39:09.270000', NULL, NULL, 0, NULL, NULL),
(105, 5849, 24, '5345345', '5435342', 545513513, 'hhtvlogs275s@gmail.com', '2024-01-16 21:42:15.669000', '2024-01-16 21:42:15.669000', '2024-01-16 21:42:15.667000', NULL, NULL, 0, NULL, NULL),
(106, 7755, 24, '523543235', '4233534', 43552434345, 'hhtvlogs275s@gmail.com', '2024-01-16 21:50:30.526000', '2024-01-16 21:50:30.526000', '2024-01-16 21:50:30.521000', NULL, NULL, 0, NULL, NULL),
(107, 9019, 24, '4354234', '2343543524', 45434245, 'hhtvlogs275s@gmail.com', '2024-01-16 21:51:25.952000', '2024-01-16 21:51:25.952000', '2024-01-16 21:51:25.945000', NULL, NULL, 0, NULL, NULL),
(108, 1221, 24, '4354234', '2343543524', 45434245, 'hhtvlogs275s@gmail.com', '2024-01-16 21:54:29.069000', '2024-01-16 21:54:29.069000', '2024-01-16 21:54:29.067000', NULL, NULL, 0, NULL, NULL),
(109, 6493, 24, '4354234', '2343543524', 45434245, 'hhtvlogs275s@gmail.com', '2024-01-16 21:55:17.933000', '2024-01-16 21:55:17.933000', '2024-01-16 21:55:17.929000', NULL, NULL, 0, NULL, NULL),
(110, 2218, 24, '4354234', '2343543524', 45434245, 'hhtvlogs275s@gmail.com', '2024-01-16 21:56:25.500000', '2024-01-16 21:56:25.500000', '2024-01-16 21:56:25.496000', NULL, NULL, 0, NULL, NULL),
(111, 383, 24, '4354234', '2343543524', 45434245, 'hhtvlogs275s@gmail.com', '2024-01-16 21:57:40.662000', '2024-01-16 21:57:40.662000', '2024-01-16 21:57:40.658000', NULL, NULL, 0, NULL, NULL),
(112, 6836, 24, '4354234', '2343543524', 45434245, 'hhtvlogs275s@gmail.com', '2024-01-16 21:58:08.725000', '2024-01-16 21:58:08.725000', '2024-01-16 21:58:08.722000', NULL, NULL, 0, NULL, NULL),
(113, 1099, 24, '4354234', '2343543524', 45434245, 'hhtvlogs275s@gmail.com', '2024-01-16 21:58:37.234000', '2024-01-16 21:58:37.234000', '2024-01-16 21:58:37.224000', NULL, NULL, 0, NULL, NULL),
(114, 1798, 24, '4354234', '2343543524', 45434245, 'hhtvlogs275s@gmail.com', '2024-01-16 21:58:59.931000', '2024-01-16 21:58:59.931000', '2024-01-16 21:58:59.924000', NULL, NULL, 0, NULL, NULL),
(115, 3811, 24, '4354234', '2343543524', 45434245, 'hhtvlogs275s@gmail.com', '2024-01-16 21:59:10.122000', '2024-01-16 21:59:10.122000', '2024-01-16 21:59:10.118000', NULL, NULL, 0, NULL, NULL),
(116, 4773, 24, '4354234', '2343543524', 45434245, 'hhtvlogs275s@gmail.com', '2024-01-16 22:02:12.571000', '2024-01-16 22:02:12.571000', '2024-01-16 22:02:12.565000', NULL, NULL, 0, NULL, NULL),
(117, 1595, 24, '4354234', '2343543524', 45434245, 'hhtvlogs275s@gmail.com', '2024-01-16 22:02:24.319000', '2024-01-16 22:02:24.319000', '2024-01-16 22:02:24.314000', NULL, NULL, 0, NULL, NULL),
(118, 288, 24, '4354234', '2343543524', 45434245, 'hhtvlogs275s@gmail.com', '2024-01-16 22:02:27.841000', '2024-01-16 22:02:27.841000', '2024-01-16 22:02:27.838000', NULL, NULL, 0, NULL, NULL),
(119, 7093, 24, '4354234', '2343543524', 45434245, 'hhtvlogs275s@gmail.com', '2024-01-16 22:02:38.958000', '2024-01-16 22:02:38.958000', '2024-01-16 22:02:38.953000', NULL, NULL, 0, NULL, NULL),
(120, 6225, 24, '4354234', '2343543524', 45434245, 'hhtvlogs275s@gmail.com', '2024-01-16 22:02:42.249000', '2024-01-16 22:02:42.249000', '2024-01-16 22:02:42.244000', NULL, NULL, 0, NULL, NULL),
(121, 196, 24, '4354234', '2343543524', 45434245, 'hhtvlogs275s@gmail.com', '2024-01-16 22:02:52.597000', '2024-01-16 22:02:52.597000', '2024-01-16 22:02:52.593000', NULL, NULL, 0, NULL, NULL),
(122, 3882, 24, '4354234', '2343543524', 45434245, 'hhtvlogs275s@gmail.com', '2024-01-16 22:02:57.176000', '2024-01-16 22:02:57.176000', '2024-01-16 22:02:57.173000', NULL, NULL, 0, NULL, NULL),
(123, 1585, 24, '4354234', '2343543524', 45434245, 'hhtvlogs275s@gmail.com', '2024-01-16 22:03:05.611000', '2024-01-16 22:03:05.611000', '2024-01-16 22:03:05.605000', NULL, NULL, 0, NULL, NULL),
(124, 2340, 24, '4354234', '2343543524', 45434245, 'hhtvlogs275s@gmail.com', '2024-01-16 22:03:46.881000', '2024-01-16 22:03:46.881000', '2024-01-16 22:03:46.875000', NULL, NULL, 0, NULL, NULL),
(125, 1169, 24, '4354234', '2343543524', 45434245, 'hhtvlogs275s@gmail.com', '2024-01-16 22:03:52.054000', '2024-01-16 22:03:52.054000', '2024-01-16 22:03:52.048000', NULL, NULL, 0, NULL, NULL),
(126, 3180, 24, '4354234', '2343543524', 45434245, 'hhtvlogs275s@gmail.com', '2024-01-16 22:05:17.374000', '2024-01-16 22:05:17.374000', '2024-01-16 22:05:17.366000', NULL, NULL, 0, NULL, NULL),
(127, 1261, 24, '4354234', '2343543524', 45434245, 'hhtvlogs275s@gmail.com', '2024-01-16 22:05:41.493000', '2024-01-16 22:05:41.493000', '2024-01-16 22:05:41.489000', NULL, NULL, 0, NULL, NULL),
(128, 9590, 24, '4354234', '2343543524', 45434245, 'hhtvlogs275s@gmail.com', '2024-01-16 22:05:52.140000', '2024-01-16 22:05:52.140000', '2024-01-16 22:05:52.136000', NULL, NULL, 0, NULL, NULL),
(129, 7736, 24, '4354234', '2343543524', 45434245, 'hhtvlogs275s@gmail.com', '2024-01-16 22:08:31.143000', '2024-01-16 22:08:31.143000', '2024-01-16 22:08:31.136000', NULL, NULL, 0, NULL, NULL),
(130, 615, 24, '4354234', '2343543524', 45434245, 'hhtvlogs275s@gmail.com', '2024-01-16 22:09:02.095000', '2024-01-16 22:09:02.095000', '2024-01-16 22:09:02.092000', NULL, NULL, 0, NULL, NULL),
(131, 5054, 24, '4354234', '2343543524', 45434245, 'hhtvlogs275s@gmail.com', '2024-01-16 22:09:28.354000', '2024-01-16 22:09:28.354000', '2024-01-16 22:09:28.352000', NULL, NULL, 0, NULL, NULL),
(132, 600, 24, '4354234', '2343543524', 45434245, 'hhtvlogs275s@gmail.com', '2024-01-16 22:09:40.282000', '2024-01-16 22:09:40.282000', '2024-01-16 22:09:40.279000', NULL, NULL, 0, NULL, NULL),
(133, 3211, 24, '4354234', '2343543524', 45434245, 'hhtvlogs275s@gmail.com', '2024-01-16 22:11:23.244000', '2024-01-16 22:11:23.244000', '2024-01-16 22:11:23.240000', NULL, NULL, 0, NULL, NULL),
(134, 1349, 24, 'a', 'a', 123456789, 'hhtvlogs275s@gmail.com', '2024-01-16 22:59:03.878000', '2024-01-16 22:59:03.878000', '2024-01-16 22:59:03.867000', NULL, NULL, 0, NULL, NULL),
(135, 4282, 24, 'a', 'a', 12184646483, 'hhtvlogs275s@gmail.com', '2024-01-16 23:00:49.675000', '2024-01-16 23:00:49.675000', '2024-01-16 23:00:49.670000', NULL, NULL, 0, NULL, NULL),
(136, 5147, 24, 'c', 'c', 12164351813, 'hhtvlogs275s@gmail.com', '2024-01-16 23:07:02.290000', '2024-01-16 23:07:02.290000', '2024-01-16 23:07:02.281000', NULL, NULL, 0, NULL, NULL),
(137, 7640, 24, 'Test1', 'Test1', 342591007, 'hhtvlogs275s@gmail.com', '2024-01-16 23:11:47.012000', '2024-01-16 23:11:47.012000', '2024-01-16 23:11:47.004000', NULL, NULL, 0, NULL, NULL),
(138, 9642, 24, 'a', 'a', 123456789, 'hhtvlogs275s@gmail.com', '2024-01-16 23:12:56.618000', '2024-01-16 23:12:56.618000', '2024-01-16 23:12:56.613000', NULL, NULL, 0, NULL, NULL),
(139, 1214, 24, 'a', 'a', 123456789, 'hhtvlogs275s@gmail.com', '2024-01-16 23:14:07.577000', '2024-01-16 23:14:07.577000', '2024-01-16 23:14:07.574000', NULL, NULL, 0, NULL, NULL),
(140, 7777, 24, 'a', 'a', 123456789, 'hhtvlogs275s@gmail.com', '2024-01-16 23:14:41.027000', '2024-01-16 23:14:41.027000', '2024-01-16 23:14:41.022000', NULL, NULL, 0, NULL, NULL),
(141, 3111, 24, 'a', 'a', 123456789, 'hhtvlogs275s@gmail.com', '2024-01-16 23:14:45.550000', '2024-01-16 23:14:45.550000', '2024-01-16 23:14:45.543000', NULL, NULL, 0, NULL, NULL),
(142, 3722, 24, 'a', 'a', 123456789, 'hhtvlogs275s@gmail.com', '2024-01-16 23:14:57.478000', '2024-01-16 23:14:57.478000', '2024-01-16 23:14:57.473000', NULL, NULL, 0, NULL, NULL),
(143, 7441, 24, 'a', 'a', 123456789, 'hhtvlogs275s@gmail.com', '2024-01-16 23:15:06.342000', '2024-01-16 23:15:06.342000', '2024-01-16 23:15:06.334000', NULL, NULL, 0, NULL, NULL),
(144, 9054, 24, 'a', 'a', 123456789, 'hhtvlogs275s@gmail.com', '2024-01-16 23:15:09.728000', '2024-01-16 23:15:09.728000', '2024-01-16 23:15:09.726000', NULL, NULL, 0, NULL, NULL),
(145, 5426, 24, 'a', 'a', 123456789, 'hhtvlogs275s@gmail.com', '2024-01-16 23:15:13.597000', '2024-01-16 23:15:13.597000', '2024-01-16 23:15:13.593000', NULL, NULL, 0, NULL, NULL),
(146, 4889, 24, 'a', 'a', 123456789, 'hhtvlogs275s@gmail.com', '2024-01-16 23:19:07.387000', '2024-01-16 23:19:07.387000', '2024-01-16 23:19:07.384000', NULL, NULL, 0, NULL, NULL),
(147, 1357, 24, 'a', 'a', 123456789, 'hhtvlogs275s@gmail.com', '2024-01-16 23:19:38.994000', '2024-01-16 23:19:38.994000', '2024-01-16 23:19:38.987000', NULL, NULL, 0, NULL, NULL),
(148, 2072, 24, 'a', 'a', 123456789, 'hhtvlogs275s@gmail.com', '2024-01-16 23:19:54.278000', '2024-01-16 23:19:54.278000', '2024-01-16 23:19:54.274000', NULL, NULL, 0, NULL, NULL),
(149, 6433, 24, 'a', 'a', 123456789, 'hhtvlogs275s@gmail.com', '2024-01-16 23:21:16.332000', '2024-01-16 23:21:16.332000', '2024-01-16 23:21:16.330000', NULL, NULL, 0, NULL, NULL),
(150, 954, 24, 'a', 'a', 123456789, 'hhtvlogs275s@gmail.com', '2024-01-16 23:21:31.982000', '2024-01-16 23:21:31.982000', '2024-01-16 23:21:31.978000', NULL, NULL, 0, NULL, NULL),
(151, 6112, 24, 'a', 'a', 123456789, 'hhtvlogs275s@gmail.com', '2024-01-16 23:21:38.215000', '2024-01-16 23:21:38.215000', '2024-01-16 23:21:38.209000', NULL, NULL, 0, NULL, NULL),
(152, 6498, 24, 'a', 'a', 123456789, 'hhtvlogs275s@gmail.com', '2024-01-16 23:21:51.651000', '2024-01-16 23:21:51.651000', '2024-01-16 23:21:51.648000', NULL, NULL, 0, NULL, NULL),
(153, 8464, 24, 'a', 'a', 123456789, 'hhtvlogs275s@gmail.com', '2024-01-16 23:21:57.045000', '2024-01-16 23:21:57.045000', '2024-01-16 23:21:57.042000', NULL, NULL, 0, NULL, NULL),
(154, 2687, 24, 'a', 'a', 123456789, 'hhtvlogs275s@gmail.com', '2024-01-16 23:22:05.971000', '2024-01-16 23:22:05.971000', '2024-01-16 23:22:05.969000', NULL, NULL, 0, NULL, NULL),
(155, 3860, 24, 'sdfdsfdsf', 'a', 56354651, 'hhtvlogs275s@gmail.com', '2024-01-16 23:23:19.272000', '2024-01-16 23:23:19.272000', '2024-01-16 23:23:19.269000', NULL, NULL, 0, NULL, NULL),
(156, 527, 24, 'sdfdsfdsf', 'a', 56354651, 'hhtvlogs275s@gmail.com', '2024-01-16 23:23:55.363000', '2024-01-16 23:23:55.363000', '2024-01-16 23:23:55.358000', NULL, NULL, 0, NULL, NULL),
(157, 8924, 24, 'sdfdsfdsf', 'a', 56354651, 'hhtvlogs275s@gmail.com', '2024-01-16 23:24:10.224000', '2024-01-16 23:24:10.224000', '2024-01-16 23:24:10.217000', NULL, NULL, 0, NULL, NULL),
(158, 6686, 24, 'sdfdsfdsf', 'a', 56354651, 'hhtvlogs275s@gmail.com', '2024-01-16 23:24:47.754000', '2024-01-16 23:24:47.754000', '2024-01-16 23:24:47.751000', NULL, NULL, 0, NULL, NULL),
(159, 3195, 24, 'sdfdsfdsf', 'a', 56354651, 'hhtvlogs275s@gmail.com', '2024-01-16 23:25:02.061000', '2024-01-16 23:25:02.061000', '2024-01-16 23:25:02.054000', NULL, NULL, 0, NULL, NULL),
(160, 3384, 24, 'sdfdsfdsf', 'a', 56354651, 'hhtvlogs275s@gmail.com', '2024-01-16 23:25:30.328000', '2024-01-16 23:25:30.328000', '2024-01-16 23:25:30.322000', NULL, NULL, 0, NULL, NULL),
(161, 6500, 24, 'sdfdsfdsf', 'a', 56354651, 'hhtvlogs275s@gmail.com', '2024-01-16 23:25:36.813000', '2024-01-16 23:25:36.813000', '2024-01-16 23:25:36.808000', NULL, NULL, 0, NULL, NULL),
(162, 163, 24, '45đsfsfs', 'a', 2587956551, 'hhtvlogs275s@gmail.com', '2024-01-16 23:27:56.482000', '2024-01-16 23:27:56.482000', '2024-01-16 23:27:56.479000', NULL, NULL, 0, NULL, NULL),
(163, 4360, 24, 'v', 'v', 2222222222, 'hhtvlogs275s@gmail.com', '2024-01-16 23:30:15.922000', '2024-01-16 23:30:15.922000', '2024-01-16 23:30:15.919000', NULL, NULL, 0, NULL, NULL),
(164, 4106, 24, 'v', 'v', 2222222222, 'hhtvlogs275s@gmail.com', '2024-01-16 23:31:23.292000', '2024-01-16 23:31:23.292000', '2024-01-16 23:31:23.287000', NULL, NULL, 0, NULL, NULL),
(165, 8048, 24, 'v', 'v', 2222222222, 'hhtvlogs275s@gmail.com', '2024-01-16 23:32:55.602000', '2024-01-16 23:32:55.602000', '2024-01-16 23:32:55.597000', NULL, NULL, 0, NULL, NULL),
(166, 5765, 24, 'a', 'a', 2326585252, 'hhtvlogs275s@gmail.com', '2024-01-16 23:33:14.687000', '2024-01-16 23:33:14.687000', '2024-01-16 23:33:14.684000', NULL, NULL, 0, NULL, NULL),
(167, 6644, 24, 'a', 'a', 2326585252, 'hhtvlogs275s@gmail.com', '2024-01-16 23:34:10.760000', '2024-01-16 23:34:10.760000', '2024-01-16 23:34:10.756000', NULL, NULL, 0, NULL, NULL),
(168, 5233, 24, 'a', 'a', 2326585252, 'hhtvlogs275s@gmail.com', '2024-01-16 23:34:36.715000', '2024-01-16 23:34:36.715000', '2024-01-16 23:34:36.712000', NULL, NULL, 0, NULL, NULL),
(169, 3319, 24, 'a', 'a', 2326585252, 'hhtvlogs275s@gmail.com', '2024-01-16 23:38:32.852000', '2024-01-16 23:38:32.852000', '2024-01-16 23:38:32.845000', NULL, NULL, 0, NULL, NULL),
(170, 7683, 24, 'a', 'a', 2326585252, 'hhtvlogs275s@gmail.com', '2024-01-16 23:38:37.317000', '2024-01-16 23:38:37.317000', '2024-01-16 23:38:37.312000', NULL, NULL, 0, NULL, NULL),
(171, 9164, 24, 'a', 'a', 2326585252, 'hhtvlogs275s@gmail.com', '2024-01-16 23:38:46.302000', '2024-01-16 23:38:46.302000', '2024-01-16 23:38:46.300000', NULL, NULL, 0, NULL, NULL),
(172, 7303, 24, 'a', 'a', 2326585252, 'hhtvlogs275s@gmail.com', '2024-01-16 23:38:54.464000', '2024-01-16 23:38:54.464000', '2024-01-16 23:38:54.460000', NULL, NULL, 0, NULL, NULL),
(173, 4107, 24, 'a', 'a', 2326585252, 'hhtvlogs275s@gmail.com', '2024-01-16 23:39:09.118000', '2024-01-16 23:39:09.118000', '2024-01-16 23:39:09.109000', NULL, NULL, 0, NULL, NULL),
(174, 7045, 24, 'a', 'a', 2326585252, 'hhtvlogs275s@gmail.com', '2024-01-16 23:39:56.284000', '2024-01-16 23:39:56.284000', '2024-01-16 23:39:56.281000', NULL, NULL, 0, NULL, NULL),
(175, 2383, 24, 'a', 'a', 2326585252, 'hhtvlogs275s@gmail.com', '2024-01-16 23:40:34.548000', '2024-01-16 23:40:34.548000', '2024-01-16 23:40:34.544000', NULL, NULL, 0, NULL, NULL),
(176, 5919, 24, 'b', 'b', 658464135165, 'hhtvlogs275s@gmail.com', '2024-01-16 23:53:36.017000', '2024-01-16 23:53:36.017000', '2024-01-16 23:53:36.007000', NULL, NULL, 0, NULL, NULL),
(177, 7333, 24, 'b', 'b', 658464135165, 'hhtvlogs275s@gmail.com', '2024-01-16 23:54:39.688000', '2024-01-16 23:54:39.688000', '2024-01-16 23:54:39.678000', NULL, NULL, 0, NULL, NULL),
(178, 965, 24, 'b', 'b', 658464135165, 'hhtvlogs275s@gmail.com', '2024-01-16 23:55:05.411000', '2024-01-16 23:55:05.411000', '2024-01-16 23:55:05.405000', NULL, NULL, 0, NULL, NULL),
(179, 7284, 24, 'b', 'b', 658464135165, 'hhtvlogs275s@gmail.com', '2024-01-16 23:55:56.573000', '2024-01-16 23:55:56.573000', '2024-01-16 23:55:56.565000', NULL, NULL, 0, NULL, NULL),
(180, 4924, 24, 'b', 'b', 658464135165, 'hhtvlogs275s@gmail.com', '2024-01-16 23:56:16.101000', '2024-01-16 23:56:16.101000', '2024-01-16 23:56:16.097000', NULL, NULL, 0, NULL, NULL),
(181, 4004, 24, 'b', 'b', 658464135165, 'hhtvlogs275s@gmail.com', '2024-01-16 23:58:00.609000', '2024-01-16 23:58:00.609000', '2024-01-16 23:58:00.602000', NULL, NULL, 0, NULL, NULL),
(182, 232, 24, 'b', 'b', 658464135165, 'hhtvlogs275s@gmail.com', '2024-01-16 23:58:28.230000', '2024-01-16 23:58:28.230000', '2024-01-16 23:58:28.224000', NULL, NULL, 0, NULL, NULL),
(183, 7562, 24, 'a', 'a', 251351651351, 'hhtvlogs275s@gmail.com', '2024-01-17 00:00:26.891000', '2024-01-17 00:00:26.891000', '2024-01-17 00:00:26.883000', NULL, NULL, 0, NULL, NULL),
(184, 6940, 24, 'a', 'a', 251351651351, 'hhtvlogs275s@gmail.com', '2024-01-17 00:00:56.229000', '2024-01-17 00:00:56.229000', '2024-01-17 00:00:56.223000', NULL, NULL, 0, NULL, NULL),
(185, 6879, 24, 'a', 'a', 251351651351, 'hhtvlogs275s@gmail.com', '2024-01-17 00:00:58.806000', '2024-01-17 00:00:58.806000', '2024-01-17 00:00:58.794000', NULL, NULL, 0, NULL, NULL),
(186, 22, 24, 'a', 'a', 251351651351, 'hhtvlogs275s@gmail.com', '2024-01-17 00:01:21.895000', '2024-01-17 00:01:21.895000', '2024-01-17 00:01:21.891000', NULL, NULL, 0, NULL, NULL),
(187, 8418, 24, 'a', 'a', 251351651351, 'hhtvlogs275s@gmail.com', '2024-01-17 00:01:31.006000', '2024-01-17 00:01:31.006000', '2024-01-17 00:01:31.004000', NULL, NULL, 0, NULL, NULL),
(188, 2294, 24, 'a', 'a', 251351651351, 'hhtvlogs275s@gmail.com', '2024-01-17 00:01:44.817000', '2024-01-17 00:01:44.817000', '2024-01-17 00:01:44.813000', NULL, NULL, 0, NULL, NULL),
(189, 9744, 24, 'a', 'a', 251351651351, 'hhtvlogs275s@gmail.com', '2024-01-17 00:03:29.380000', '2024-01-17 00:03:29.380000', '2024-01-17 00:03:29.378000', NULL, NULL, 0, NULL, NULL),
(190, 7327, 24, 'a', 'a', 251351651351, 'hhtvlogs275s@gmail.com', '2024-01-17 00:03:39.159000', '2024-01-17 00:03:39.159000', '2024-01-17 00:03:39.153000', NULL, NULL, 0, NULL, NULL),
(191, 3305, 24, 'a', 'a', 251351651351, 'hhtvlogs275s@gmail.com', '2024-01-17 00:03:47.571000', '2024-01-17 00:03:47.571000', '2024-01-17 00:03:47.568000', NULL, NULL, 0, NULL, NULL),
(192, 3614, 24, 'a', 'a', 251351651351, 'hhtvlogs275s@gmail.com', '2024-01-17 00:05:12.069000', '2024-01-17 00:05:12.069000', '2024-01-17 00:05:12.067000', NULL, NULL, 0, NULL, NULL),
(193, 1320, 24, 'a', 'a', 251351651351, 'hhtvlogs275s@gmail.com', '2024-01-17 00:05:18.478000', '2024-01-17 00:05:18.478000', '2024-01-17 00:05:18.471000', NULL, NULL, 0, NULL, NULL),
(194, 1613, 24, 'a', 'a', 251351651351, 'hhtvlogs275s@gmail.com', '2024-01-17 00:05:59.825000', '2024-01-17 00:05:59.825000', '2024-01-17 00:05:59.820000', NULL, NULL, 0, NULL, NULL),
(195, 1891, 24, 'new', 'new', 22555555, 'hhtvlogs275s@gmail.com', '2024-01-17 00:08:41.382000', '2024-01-17 00:08:41.382000', '2024-01-17 00:08:41.380000', NULL, NULL, 0, NULL, NULL),
(196, 1161, 24, '053543453453', 'adasdsad', 5054243254, 'hhtvlogs275s@gmail.com', '2024-01-17 00:15:10.334000', '2024-01-17 00:15:10.334000', '2024-01-17 00:15:10.332000', NULL, NULL, 0, NULL, NULL),
(197, 6354, 24, '053543453453', 'adasdsad', 5054243254, 'hhtvlogs275s@gmail.com', '2024-01-17 00:16:45.892000', '2024-01-17 00:16:45.892000', '2024-01-17 00:16:45.889000', NULL, NULL, 0, NULL, NULL),
(198, 7409, 24, '053543453453', 'adasdsad', 5054243254, 'hhtvlogs275s@gmail.com', '2024-01-17 00:17:06.852000', '2024-01-17 00:17:06.852000', '2024-01-17 00:17:06.840000', NULL, NULL, 0, NULL, NULL),
(199, 5954, 24, '053543453453', 'adasdsad', 5054243254, 'hhtvlogs275s@gmail.com', '2024-01-17 00:17:11.872000', '2024-01-17 00:17:11.872000', '2024-01-17 00:17:11.868000', NULL, NULL, 0, NULL, NULL),
(200, 3281, 24, 'aaa', 'aaa', 516513515, 'hhtvlogs275s@gmail.com', '2024-01-17 00:18:35.218000', '2024-01-17 00:18:35.218000', '2024-01-17 00:18:35.215000', NULL, NULL, 0, NULL, NULL),
(201, 8657, 24, 'a', 'a', 1255165158451, 'hhtvlogs275s@gmail.com', '2024-01-17 09:53:20.294000', '2024-01-17 09:53:20.294000', '2024-01-17 09:53:20.286000', NULL, NULL, 0, 7103000, NULL),
(202, 2133, 24, 'a', 'a', 2551, 'hhtvlogs275s@gmail.com', '2024-01-17 09:57:36.073000', '2024-01-17 09:57:36.073000', '2024-01-17 09:57:36.065000', NULL, NULL, 0, 0, NULL),
(203, 9111, 24, 'a', 'a', 568433634, 'hhtvlogs275s@gmail.com', '2024-01-17 09:59:39.302000', '2024-01-17 09:59:39.302000', '2024-01-17 09:59:39.298000', NULL, NULL, 0, NULL, NULL),
(204, 1944, 24, 'a', 'a', 568433634, 'hhtvlogs275s@gmail.com', '2024-01-17 09:59:49.673000', '2024-01-17 09:59:49.673000', '2024-01-17 09:59:49.667000', NULL, NULL, 0, NULL, NULL),
(205, 8989, 24, 'a', 'a', 568433634, 'hhtvlogs275s@gmail.com', '2024-01-17 10:00:12.714000', '2024-01-17 10:00:12.714000', '2024-01-17 10:00:12.706000', NULL, NULL, 0, 2, NULL),
(206, 4215, 24, 'a', 'a', 568433634, 'hhtvlogs275s@gmail.com', '2024-01-17 10:03:20.845000', '2024-01-17 10:03:20.845000', '2024-01-17 10:03:20.841000', NULL, NULL, 0, 1, NULL),
(207, 2967, 24, 'a', 'a', 568433634, 'hhtvlogs275s@gmail.com', '2024-01-17 10:03:44.334000', '2024-01-17 10:03:44.334000', '2024-01-17 10:03:44.325000', NULL, NULL, 0, 1222, NULL),
(208, 5558, 24, 'fhjr', 'đấ', 2132312321, 'hhtvlogs275s@gmail.com', '2024-01-17 10:06:54.519000', '2024-01-17 10:06:54.519000', '2024-01-17 10:06:54.510000', NULL, NULL, 0, 1000, NULL),
(209, 9187, 24, 'fhjr', 'đấ', 2132312321, 'hhtvlogs275s@gmail.com', '2024-01-17 10:07:36.895000', '2024-01-17 10:07:36.895000', '2024-01-17 10:07:36.888000', NULL, NULL, 0, 1000, NULL),
(210, 73315, 24, 'fhjr', 'đấ', 2132312321, 'hhtvlogs275s@gmail.com', '2024-01-17 10:07:38.310000', '2024-01-17 10:07:38.310000', '2024-01-17 10:07:38.306000', NULL, NULL, 0, 1000, NULL),
(211, 27259, 24, 'fhjr', 'đấ', 2132312321, 'hhtvlogs275s@gmail.com', '2024-01-17 10:08:07.483000', '2024-01-17 10:08:07.483000', '2024-01-17 10:08:07.478000', NULL, NULL, 0, 1000, NULL),
(212, 95855, 24, 'fhjr', 'đấ', 2132312321, 'hhtvlogs275s@gmail.com', '2024-01-17 10:10:05.605000', '2024-01-17 10:10:05.605000', '2024-01-17 10:10:05.602000', NULL, NULL, 0, 1000, NULL),
(213, 2030, 24, 'fhjr', 'đấ', 2132312321, 'hhtvlogs275s@gmail.com', '2024-01-17 10:10:27.005000', '2024-01-17 10:10:27.005000', '2024-01-17 10:10:26.998000', NULL, NULL, 0, 1000, NULL),
(214, 60679, 24, 'fhjr', 'đấ', 2132312321, 'hhtvlogs275s@gmail.com', '2024-01-17 10:10:37.164000', '2024-01-17 10:10:37.164000', '2024-01-17 10:10:37.162000', NULL, NULL, 0, 1000, NULL),
(215, 59551, 24, 'fhjr', 'đấ', 2132312321, 'hhtvlogs275s@gmail.com', '2024-01-17 10:10:51.033000', '2024-01-17 10:10:51.033000', '2024-01-17 10:10:51.028000', NULL, NULL, 0, 1000, NULL),
(216, 41979, 24, 'fhjr', 'đấ', 2132312321, 'hhtvlogs275s@gmail.com', '2024-01-17 10:11:33.143000', '2024-01-17 10:11:33.143000', '2024-01-17 10:11:33.140000', NULL, NULL, 0, 1000, NULL),
(217, 29906, 24, 'fhjr', 'đấ', 2132312321, 'hhtvlogs275s@gmail.com', '2024-01-17 10:11:36.726000', '2024-01-17 10:11:36.726000', '2024-01-17 10:11:36.723000', NULL, NULL, 0, 1000, NULL),
(218, 72798, 24, 'fhjr', 'đấ', 2132312321, 'hhtvlogs275s@gmail.com', '2024-01-17 10:11:43.971000', '2024-01-17 10:11:43.971000', '2024-01-17 10:11:43.962000', NULL, NULL, 0, 1000, NULL),
(219, 53485, 24, 'fhjr', 'đấ', 2132312321, 'hhtvlogs275s@gmail.com', '2024-01-17 10:12:10.227000', '2024-01-17 10:12:10.227000', '2024-01-17 10:12:10.223000', NULL, NULL, 0, 1000, NULL),
(220, 95213, 24, 'fhjr', 'đấ', 2132312321, 'hhtvlogs275s@gmail.com', '2024-01-17 10:12:14.900000', '2024-01-17 10:12:14.900000', '2024-01-17 10:12:14.897000', NULL, NULL, 0, 1000, NULL),
(221, 29096, 24, 'fhjr', 'đấ', 2132312321, 'hhtvlogs275s@gmail.com', '2024-01-17 10:13:54.542000', '2024-01-17 10:13:54.542000', '2024-01-17 10:13:54.540000', NULL, NULL, 0, 1000, NULL),
(222, 47312, 24, 'fhjr', 'đấ', 2132312321, 'hhtvlogs275s@gmail.com', '2024-01-17 10:14:26.734000', '2024-01-17 10:14:26.734000', '2024-01-17 10:14:26.730000', NULL, NULL, 0, 1000, NULL),
(223, 48073, 24, 'fhjr', 'đấ', 2132312321, 'hhtvlogs275s@gmail.com', '2024-01-17 10:14:31.132000', '2024-01-17 10:14:31.132000', '2024-01-17 10:14:31.124000', NULL, NULL, 0, 1000, NULL),
(224, 84501, 24, 'fhjr', 'đấ', 2132312321, 'hhtvlogs275s@gmail.com', '2024-01-17 10:14:45.781000', '2024-01-17 10:14:45.781000', '2024-01-17 10:14:45.774000', NULL, NULL, 0, 1000, NULL),
(225, 23528, 24, 'fhjr', 'đấ', 2132312321, 'hhtvlogs275s@gmail.com', '2024-01-17 10:19:11.437000', '2024-01-17 10:19:11.437000', '2024-01-17 10:19:11.427000', NULL, NULL, 0, 1000, NULL),
(226, 49909, 24, 'fhjr', 'đấ', 2132312321, 'hhtvlogs275s@gmail.com', '2024-01-17 10:19:17.540000', '2024-01-17 10:19:17.540000', '2024-01-17 10:19:17.535000', NULL, NULL, 0, 1000, NULL),
(227, 10972, 24, 'fhjr', 'đấ', 2132312321, 'hhtvlogs275s@gmail.com', '2024-01-17 10:19:22.902000', '2024-01-17 10:19:22.902000', '2024-01-17 10:19:22.901000', NULL, NULL, 0, 1000, NULL),
(228, 32907, 24, 'fhjr', 'đấ', 2132312321, 'hhtvlogs275s@gmail.com', '2024-01-17 10:19:47.532000', '2024-01-17 10:19:47.532000', '2024-01-17 10:19:47.527000', NULL, NULL, 0, 1000, NULL),
(229, 21944, 24, 'fhjr', 'đấ', 2132312321, 'hhtvlogs275s@gmail.com', '2024-01-17 10:19:49.550000', '2024-01-17 10:19:49.550000', '2024-01-17 10:19:49.547000', NULL, NULL, 0, 1000, NULL),
(230, 7771, 24, 'fhjr', 'đấ', 2132312321, 'hhtvlogs275s@gmail.com', '2024-01-17 10:26:21.384000', '2024-01-17 10:26:21.384000', '2024-01-17 10:26:21.379000', NULL, NULL, 0, 1000, NULL),
(231, 8097, 24, 'fhjr', 'đấ', 2132312321, 'hhtvlogs275s@gmail.com', '2024-01-17 10:26:25.814000', '2024-01-17 10:26:25.814000', '2024-01-17 10:26:25.811000', NULL, NULL, 0, 1000, NULL),
(233, 7608, 24, 'fhjr', 'đấ', 2132312321, 'hhtvlogs275s@gmail.com', '2024-01-17 10:27:44.442000', '2024-01-17 10:27:44.661000', '2024-01-17 10:27:44.439000', NULL, NULL, 0, 1000, NULL),
(234, 28560, 24, 'fhjr', 'đấ', 2132312321, 'hhtvlogs275s@gmail.com', '2024-01-17 10:28:41.335000', '2024-01-17 10:28:41.652000', '2024-01-17 10:28:41.333000', NULL, NULL, 0, 1000, NULL),
(235, 61711, 24, 'fhjr', 'đấ', 2132312321, 'hhtvlogs275s@gmail.com', '2024-01-17 10:28:49.126000', '2024-01-17 10:28:49.370000', '2024-01-17 10:28:49.121000', NULL, NULL, 0, 1000, NULL),
(236, 58186, 24, 'fhjr', 'đấ', 2132312321, 'hhtvlogs275s@gmail.com', '2024-01-17 10:28:55.422000', '2024-01-17 10:28:55.794000', '2024-01-17 10:28:55.417000', NULL, NULL, 0, 1000, NULL),
(237, 21899, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:30:41.759000', '2024-01-17 10:30:41.920000', '2024-01-17 10:30:41.757000', NULL, NULL, 0, 1000, NULL),
(238, 64536, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:31:37.755000', '2024-01-17 10:31:37.985000', '2024-01-17 10:31:37.751000', NULL, NULL, 0, 1000, NULL),
(239, 65142, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:31:50.838000', '2024-01-17 10:31:51.045000', '2024-01-17 10:31:50.835000', NULL, NULL, 0, 1000, NULL),
(240, 20604, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:32:19.321000', '2024-01-17 10:32:19.550000', '2024-01-17 10:32:19.319000', NULL, NULL, 0, 1000, NULL),
(241, 50420, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:32:38.488000', '2024-01-17 10:32:38.806000', '2024-01-17 10:32:38.484000', NULL, NULL, 0, 1000, NULL),
(242, 64408, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:32:49.102000', '2024-01-17 10:32:49.497000', '2024-01-17 10:32:49.098000', NULL, NULL, 0, 1000, NULL),
(243, 42986, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:33:38.055000', '2024-01-17 10:33:38.321000', '2024-01-17 10:33:38.052000', NULL, NULL, 0, 1000, NULL),
(244, 7824, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:33:52.000000', '2024-01-17 10:33:52.172000', '2024-01-17 10:33:51.996000', NULL, NULL, 0, 1000, NULL),
(245, 66371, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:34:54.693000', '2024-01-17 10:34:54.693000', '2024-01-17 10:34:54.687000', NULL, NULL, 0, 1000, NULL),
(246, 40725, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:35:10.574000', '2024-01-17 10:35:10.574000', '2024-01-17 10:35:10.568000', NULL, NULL, 0, 1000, NULL),
(247, 34655, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:35:21.019000', '2024-01-17 10:35:21.019000', '2024-01-17 10:35:21.017000', NULL, NULL, 0, 1000, NULL),
(248, 85257, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:35:31.532000', '2024-01-17 10:35:31.532000', '2024-01-17 10:35:31.529000', NULL, NULL, 0, 1000, NULL),
(249, 84715, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:35:55.872000', '2024-01-17 10:35:55.872000', '2024-01-17 10:35:55.868000', NULL, NULL, 0, 1000, NULL),
(250, 2168, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:36:05.411000', '2024-01-17 10:36:05.411000', '2024-01-17 10:36:05.406000', NULL, NULL, 0, 1000, NULL),
(251, 12544, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:36:27.970000', '2024-01-17 10:36:27.970000', '2024-01-17 10:36:27.968000', NULL, NULL, 0, 1000, NULL),
(252, 28311, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:36:35.730000', '2024-01-17 10:36:35.730000', '2024-01-17 10:36:35.727000', NULL, NULL, 0, 1000, NULL),
(253, 5139, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:38:09.063000', '2024-01-17 10:38:09.358000', '2024-01-17 10:38:09.059000', NULL, NULL, 0, 1000, NULL),
(254, 70149, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:38:56.734000', '2024-01-17 10:38:56.734000', '2024-01-17 10:38:56.730000', NULL, NULL, 0, 1000, NULL),
(255, 22492, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:39:11.575000', '2024-01-17 10:39:11.575000', '2024-01-17 10:39:11.573000', NULL, NULL, 0, 1000, NULL),
(256, 59923, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:39:14.759000', '2024-01-17 10:39:14.759000', '2024-01-17 10:39:14.753000', NULL, NULL, 0, 1000, NULL),
(257, 15384, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:39:23.942000', '2024-01-17 10:39:23.942000', '2024-01-17 10:39:23.935000', NULL, NULL, 0, 1000, NULL),
(258, 83244, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:39:46.415000', '2024-01-17 10:39:46.415000', '2024-01-17 10:39:46.410000', NULL, NULL, 0, 1000, NULL),
(259, 30905, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:39:48.282000', '2024-01-17 10:39:48.282000', '2024-01-17 10:39:48.280000', NULL, NULL, 0, 1000, NULL),
(260, 79289, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:40:07.800000', '2024-01-17 10:40:07.800000', '2024-01-17 10:40:07.796000', NULL, NULL, 0, 1000, NULL),
(261, 32339, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:40:27.980000', '2024-01-17 10:40:27.980000', '2024-01-17 10:40:27.972000', NULL, NULL, 0, 1000, NULL),
(262, 96221, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:40:38.568000', '2024-01-17 10:40:38.568000', '2024-01-17 10:40:38.566000', NULL, NULL, 0, 1000, NULL),
(263, 17391, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:40:43.538000', '2024-01-17 10:40:43.538000', '2024-01-17 10:40:43.532000', NULL, NULL, 0, 1000, NULL),
(264, 30503, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:41:33.332000', '2024-01-17 10:41:33.332000', '2024-01-17 10:41:33.328000', NULL, NULL, 0, 1000, NULL),
(265, 4357, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:42:48.676000', '2024-01-17 10:42:48.676000', '2024-01-17 10:42:48.674000', NULL, NULL, 0, 1000, NULL),
(266, 22087, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:43:09.084000', '2024-01-17 10:43:09.084000', '2024-01-17 10:43:09.080000', NULL, NULL, 0, 1000, NULL),
(267, 17781, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:45:15.518000', '2024-01-17 10:45:15.518000', '2024-01-17 10:45:15.516000', NULL, NULL, 0, 1000, NULL),
(268, 6223, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:45:18.694000', '2024-01-17 10:45:18.694000', '2024-01-17 10:45:18.687000', NULL, NULL, 0, 1000, NULL),
(269, 23941, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:45:31.209000', '2024-01-17 10:45:31.209000', '2024-01-17 10:45:31.202000', NULL, NULL, 0, 1000, NULL),
(270, 35871, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:45:34.209000', '2024-01-17 10:45:34.209000', '2024-01-17 10:45:34.204000', NULL, NULL, 0, 1000, NULL),
(271, 89829, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:46:05.173000', '2024-01-17 10:46:05.173000', '2024-01-17 10:46:05.170000', NULL, NULL, 0, 1000, NULL),
(272, 71471, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:46:07.692000', '2024-01-17 10:46:07.692000', '2024-01-17 10:46:07.689000', NULL, NULL, 0, 1000, NULL),
(273, 1957, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:46:18.052000', '2024-01-17 10:46:18.052000', '2024-01-17 10:46:18.049000', NULL, NULL, 0, 1000, NULL),
(274, 80052, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:46:22.704000', '2024-01-17 10:46:22.704000', '2024-01-17 10:46:22.700000', NULL, NULL, 0, 1000, NULL),
(275, 37196, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:46:39.566000', '2024-01-17 10:46:39.566000', '2024-01-17 10:46:39.563000', NULL, NULL, 0, 1000, NULL),
(276, 55327, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:46:42.196000', '2024-01-17 10:46:42.196000', '2024-01-17 10:46:42.190000', NULL, NULL, 0, 1000, NULL),
(277, 56660, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:46:48.388000', '2024-01-17 10:46:48.388000', '2024-01-17 10:46:48.384000', NULL, NULL, 0, 1000, NULL),
(278, 68654, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:51:41.345000', '2024-01-17 10:51:41.345000', '2024-01-17 10:51:41.343000', NULL, NULL, 0, 1000, NULL),
(279, 57458, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:52:20.735000', '2024-01-17 10:52:20.735000', '2024-01-17 10:52:20.728000', NULL, NULL, 0, 1000, NULL),
(280, 37120, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:52:31.104000', '2024-01-17 10:52:31.104000', '2024-01-17 10:52:31.101000', NULL, NULL, 0, 1000, NULL),
(281, 55771, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:52:34.613000', '2024-01-17 10:52:34.613000', '2024-01-17 10:52:34.611000', NULL, NULL, 0, 1000, NULL),
(282, 1107, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:53:08.362000', '2024-01-17 10:53:08.362000', '2024-01-17 10:53:08.357000', NULL, NULL, 0, 1000, NULL),
(283, 57469, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:53:20.445000', '2024-01-17 10:53:20.445000', '2024-01-17 10:53:20.442000', NULL, NULL, 0, 1000, NULL),
(284, 16697, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:53:31.251000', '2024-01-17 10:53:31.251000', '2024-01-17 10:53:31.248000', NULL, NULL, 0, 1000, NULL),
(285, 28628, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:53:33.963000', '2024-01-17 10:53:33.963000', '2024-01-17 10:53:33.952000', NULL, NULL, 0, 1000, NULL),
(286, 4537, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:53:45.775000', '2024-01-17 10:53:45.894000', '2024-01-17 10:53:45.773000', NULL, NULL, 0, 1000, NULL),
(287, 64194, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:54:33.472000', '2024-01-17 10:54:33.562000', '2024-01-17 10:54:33.468000', NULL, NULL, 0, 1000, NULL),
(288, 35842, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:54:49.956000', '2024-01-17 10:54:50.045000', '2024-01-17 10:54:49.954000', NULL, NULL, 0, 1000, NULL),
(289, 16486, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:54:53.582000', '2024-01-17 10:54:53.744000', '2024-01-17 10:54:53.576000', NULL, NULL, 0, 1000, NULL),
(290, 40858, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:55:00.612000', '2024-01-17 10:55:00.768000', '2024-01-17 10:55:00.602000', NULL, NULL, 0, 1000, NULL),
(291, 78658, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:56:39.904000', '2024-01-17 10:56:40.023000', '2024-01-17 10:56:39.903000', NULL, NULL, 0, 1000, NULL),
(292, 5711, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 10:57:05.848000', '2024-01-17 10:57:06.014000', '2024-01-17 10:57:05.841000', NULL, NULL, 0, 1000, NULL),
(293, 73505, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 11:00:16.140000', '2024-01-17 11:00:16.328000', '2024-01-17 11:00:16.136000', NULL, NULL, 0, 5103000, NULL),
(294, 97201, 24, '55đg1fhgfhfgh', 'ắgdfg sgsd hgdh', 131374354, 'hhtvlogs275s@gmail.com', '2024-01-17 11:03:06.532000', '2024-01-17 11:03:06.667000', '2024-01-17 11:03:06.526000', NULL, NULL, 0, 5103000, 20000),
(295, 5008, 24, '2', 'a', 12345612345, 'hhtvlogs275s@gmail.com', '2024-01-17 11:05:32.058000', '2024-01-17 11:05:32.058000', '2024-01-17 11:05:32.053000', NULL, NULL, 0, NULL, NULL),
(296, 893, 24, '553135113', 'as', 15313511531351351, 'hhtvlogs275s@gmail.com', '2024-01-17 11:08:30.608000', '2024-01-17 11:08:30.608000', '2024-01-17 11:08:30.602000', NULL, NULL, 0, 0, 20000),
(297, 3455, 24, '553135113', 'as', 15313511531351351, 'hhtvlogs275s@gmail.com', '2024-01-17 11:09:00.221000', '2024-01-17 11:09:00.221000', '2024-01-17 11:09:00.219000', NULL, NULL, 0, 203000, 20000),
(298, 2818, 24, '553135113', 'as', 15313511531351351, 'hhtvlogs275s@gmail.com', '2024-01-17 11:10:13.309000', '2024-01-17 11:10:13.309000', '2024-01-17 11:10:13.304000', NULL, NULL, 0, 203000, 20000),
(299, 1778, 24, '553135113', 'as', 15313511531351351, 'hhtvlogs275s@gmail.com', '2024-01-17 11:10:29.712000', '2024-01-17 11:10:29.712000', '2024-01-17 11:10:29.707000', NULL, NULL, 0, 203000, 20000),
(300, 560, 24, '553135113', 'as', 15313511531351351, 'hhtvlogs275s@gmail.com', '2024-01-17 11:10:32.676000', '2024-01-17 11:10:32.676000', '2024-01-17 11:10:32.672000', NULL, NULL, 0, 203000, 20000),
(301, 8195, 24, '553135113', 'as', 15313511531351351, 'hhtvlogs275s@gmail.com', '2024-01-17 11:10:44.177000', '2024-01-17 11:10:44.177000', '2024-01-17 11:10:44.175000', NULL, NULL, 0, 203000, 20000),
(302, 1212, 24, '553135113', 'as', 15313511531351351, 'hhtvlogs275s@gmail.com', '2024-01-17 11:10:46.280000', '2024-01-17 11:10:46.280000', '2024-01-17 11:10:46.275000', NULL, NULL, 0, 203000, 20000),
(303, 3212, 24, '553135113', 'as', 15313511531351351, 'hhtvlogs275s@gmail.com', '2024-01-17 11:10:58.965000', '2024-01-17 11:10:58.965000', '2024-01-17 11:10:58.962000', NULL, NULL, 0, 203000, 20000),
(304, 6568, 24, '553135113', 'as', 15313511531351351, 'hhtvlogs275s@gmail.com', '2024-01-17 11:12:27.461000', '2024-01-17 11:12:27.509000', '2024-01-17 11:12:27.459000', NULL, NULL, 0, 203000, 20000),
(305, 1403, 24, '553135113', 'as', 15313511531351351, 'hhtvlogs275s@gmail.com', '2024-01-17 11:12:41.013000', '2024-01-17 11:12:41.106000', '2024-01-17 11:12:41.005000', NULL, NULL, 0, 203000, 20000),
(306, 7307, 24, '25ẻgheh', 'cocaigi', 1351161835, 'hhtvlogs275s@gmail.com', '2024-01-17 11:14:15.881000', '2024-01-17 11:14:15.936000', '2024-01-17 11:14:15.878000', NULL, NULL, 0, 800000, 20000),
(307, 1314, 24, '25ẻgheh', 'cocaigi', 1351161835, 'hhtvlogs275s@gmail.com', '2024-01-17 11:17:19.763000', '2024-01-17 11:17:19.825000', '2024-01-17 11:17:19.761000', NULL, NULL, 0, 800000, 20000),
(308, 7756, 24, '25ẻgheh', 'cocaigi', 1351161835, 'hhtvlogs275s@gmail.com', '2024-01-17 11:18:18.240000', '2024-01-17 11:18:18.299000', '2024-01-17 11:18:18.237000', NULL, NULL, 0, 800000, 20000),
(309, 4541, 24, '25ẻgheh', 'cocaigi', 1351161835, 'hhtvlogs275s@gmail.com', '2024-01-17 11:19:08.035000', '2024-01-17 11:19:08.131000', '2024-01-17 11:19:08.029000', NULL, NULL, 0, 800000, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `orders_orderdetails_links`
--

CREATE TABLE `orders_orderdetails_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `orderdetail_id` int(10) UNSIGNED DEFAULT NULL,
  `orderdetail_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders_orderdetails_links`
--

INSERT INTO `orders_orderdetails_links` (`id`, `order_id`, `orderdetail_id`, `orderdetail_order`) VALUES
(1, 86, 1, 1),
(2, 86, 2, 2),
(3, 87, 1, 1),
(4, 88, 1, 1),
(5, 89, 4, 1),
(6, 90, 4, 1),
(7, 91, 4, 1),
(8, 92, 1, 1),
(9, 93, 1, 1),
(10, 94, 1, 1),
(11, 200, 56, 1),
(12, 200, 57, 2),
(13, 200, 55, 3),
(14, 201, 56, 1),
(15, 201, 57, 2),
(16, 201, 55, 3),
(17, 202, 56, 1),
(18, 202, 57, 2),
(19, 202, 55, 3),
(20, 203, 56, 1),
(21, 203, 57, 2),
(22, 203, 55, 3),
(23, 204, 56, 1),
(24, 204, 57, 2),
(25, 204, 55, 3),
(26, 205, 1, 1),
(27, 206, 1, 1),
(28, 207, 1, 1),
(29, 208, 56, 1),
(30, 208, 57, 2),
(31, 208, 55, 3),
(32, 209, 56, 1),
(33, 209, 57, 2),
(34, 209, 55, 3),
(35, 210, 56, 1),
(36, 210, 57, 2),
(37, 210, 55, 3),
(38, 211, 56, 1),
(39, 211, 57, 2),
(40, 211, 55, 3),
(41, 212, 56, 1),
(42, 212, 57, 2),
(43, 212, 55, 3),
(44, 213, 56, 1),
(45, 213, 57, 2),
(46, 213, 55, 3),
(47, 214, 56, 1),
(48, 214, 57, 2),
(49, 214, 55, 3),
(50, 215, 56, 1),
(51, 215, 57, 2),
(52, 215, 55, 3),
(53, 216, 56, 1),
(54, 216, 57, 2),
(55, 216, 55, 3),
(56, 217, 56, 1),
(57, 217, 57, 2),
(58, 217, 55, 3),
(59, 218, 56, 1),
(60, 218, 57, 2),
(61, 218, 55, 3),
(62, 219, 56, 1),
(63, 219, 57, 2),
(64, 219, 55, 3),
(65, 220, 56, 1),
(66, 220, 57, 2),
(67, 220, 55, 3),
(68, 221, 56, 1),
(69, 221, 57, 2),
(70, 221, 55, 3),
(71, 222, 56, 1),
(72, 222, 57, 2),
(73, 222, 55, 3),
(74, 223, 56, 1),
(75, 223, 57, 2),
(76, 223, 55, 3),
(77, 224, 56, 1),
(78, 224, 57, 2),
(79, 224, 55, 3),
(80, 225, 56, 1),
(81, 225, 57, 2),
(82, 225, 55, 3),
(83, 226, 56, 1),
(84, 226, 57, 2),
(85, 226, 55, 3),
(86, 227, 56, 1),
(87, 227, 57, 2),
(88, 227, 55, 3),
(89, 228, 56, 1),
(90, 228, 57, 2),
(91, 228, 55, 3),
(92, 229, 56, 1),
(93, 229, 57, 2),
(94, 229, 55, 3),
(101, 233, 56, 1),
(102, 233, 57, 2),
(103, 233, 55, 3),
(104, 233, 132, 4),
(105, 233, 133, 5),
(106, 233, 134, 6),
(107, 234, 56, 1),
(108, 234, 57, 2),
(109, 234, 55, 3),
(110, 234, 135, 4),
(111, 234, 136, 5),
(112, 234, 137, 6),
(113, 235, 56, 1),
(114, 235, 57, 2),
(115, 235, 55, 3),
(116, 235, 138, 4),
(117, 235, 139, 5),
(118, 235, 140, 6),
(119, 236, 56, 1),
(120, 236, 57, 2),
(121, 236, 55, 3),
(122, 236, 141, 4),
(123, 236, 142, 5),
(124, 236, 143, 6),
(125, 237, 56, 1),
(126, 237, 57, 2),
(127, 237, 144, 3),
(128, 237, 145, 4),
(129, 238, 56, 1),
(130, 238, 57, 2),
(131, 238, 146, 3),
(132, 238, 147, 4),
(133, 239, 56, 1),
(134, 239, 57, 2),
(135, 239, 148, 3),
(136, 239, 149, 4),
(137, 240, 56, 1),
(138, 240, 57, 2),
(139, 240, 150, 3),
(140, 240, 151, 4),
(141, 241, 56, 1),
(142, 241, 57, 2),
(143, 241, 152, 3),
(144, 241, 153, 4),
(145, 242, 56, 1),
(146, 242, 57, 2),
(147, 242, 154, 3),
(148, 242, 155, 4),
(149, 243, 56, 1),
(150, 243, 57, 2),
(151, 243, 156, 3),
(152, 243, 157, 4),
(153, 244, 56, 1),
(154, 244, 57, 2),
(155, 244, 158, 3),
(156, 244, 159, 4),
(158, 253, 176, 1),
(159, 286, 56, 1),
(160, 286, 57, 2),
(161, 287, 56, 1),
(162, 287, 57, 2),
(163, 288, 56, 1),
(164, 288, 57, 2),
(165, 289, 56, 1),
(166, 289, 57, 2),
(167, 290, 250, 1),
(168, 290, 249, 2),
(169, 291, 251, 1),
(170, 291, 252, 2),
(171, 292, 253, 1),
(172, 292, 254, 2),
(173, 293, 255, 1),
(174, 293, 256, 2),
(175, 294, 257, 1),
(176, 294, 258, 2),
(177, 304, 268, 1),
(178, 305, 269, 1),
(179, 306, 270, 1),
(180, 307, 271, 1),
(181, 308, 272, 1),
(182, 309, 273, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `contact` longtext DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `detail` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `contact`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `detail`) VALUES
(1, 'Chương trình tháng 7 ', 'Khuyến mãi sập sàn', '2023-06-18 13:52:38.233000', '2023-06-23 07:47:32.588000', '2023-06-18 14:19:43.017000', 1, 1, 'Tháng 7 là thời gian nắng nóng cao điểm của mùa hè, thêm vào đó tình hình dịch Covid-19 vẫn đang có những diễn biến phức tạp. Vì vậy, không ít người vẫn chọn cách ở nhà nhiều hơn để vừa sum vầy với gia đình, tránh nóng mà vẫn đảm bảo an toàn chống dịch.\n\nĐồng hành cùng quý khách hàng trong thời điểm dịch bệnh, MobiFone tiếp tục triển khai chương trình khuyến mại 20% dành cho các thuê bao trả trước nạp thẻ.'),
(2, 'adsadsad', 'ádadad', '2023-06-22 17:36:10.389000', '2023-06-22 17:38:30.327000', '2023-06-22 17:36:10.385000', NULL, 1, 'ádasdasdsad'),
(3, 'sgkasjbgkjsgkl', 'fasfsafas', '2023-06-22 17:39:38.510000', '2023-06-22 17:39:38.510000', '2023-06-22 17:39:38.508000', NULL, NULL, 'fsafasfsaf'),
(4, 'ádasdas', 'đâsdasd', '2023-06-22 17:42:14.890000', '2023-06-22 17:42:14.890000', '2023-06-22 17:42:14.887000', NULL, NULL, 'ádsadasdasd'),
(5, 'dấdsadas', 'dsadasda', '2023-06-22 17:43:45.732000', '2023-06-22 17:43:45.732000', '2023-06-22 17:43:45.730000', NULL, NULL, 'đâsdasd'),
(6, 'dsadasd', 'ádsadad', '2023-06-22 17:45:04.977000', '2023-06-22 17:45:04.977000', '2023-06-22 17:45:04.974000', NULL, NULL, 'ádsadasdasdsa'),
(7, 'ădasdsaddsadasdasdas', 'sadasdadsđâsdasdsadsa', '2023-06-22 17:45:29.521000', '2023-06-23 07:53:15.229000', '2023-06-22 17:45:29.519000', NULL, NULL, 'dadaddasdđasadasdsadsadas'),
(8, 'dasdas', 'dsadas', '2023-06-29 13:45:36.663000', '2023-06-29 13:45:36.663000', '2023-06-29 13:45:36.659000', NULL, NULL, 'sadasda');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `detail` longtext DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `description`, `detail`, `price`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`) VALUES
(55, 'Vợt Cầu Long', 'Vợt cầu long dành cho người mới bắt đầu chơi', 'Vợt Yonex Nanoflare 001 New 2022 là bộ ba cây vợt có giá thành mềm được Yonex phát triển dành cho người chơi thứ cấp, chơi bán chuyên. Bộ sản phẩm này có đến 3 phiên bản vợt, với đại diện là 3 màu sắc khác nhau. Mỗi cây vợt hướng tới lối chơi riêng, đem lại sự lựa chọn và định hướng cho lối đánh của người chơi cầu lông. 3 phiên bản vợt với 3 tên gọi là Vợt Yonex Nanoflare 001 Feel, Nanoflare 001 Ability và 001 Clear.', 1000000, '2023-06-28 10:39:45.229000', '2023-07-15 12:07:12.946000', '2023-07-15 12:07:12.930000', NULL, 1),
(56, 'Giày cầu lông Li-Ning Nam Thunder AYAS018-2', 'Giày thi đấu chuyên nghiệp cầu lông', 'Giày thi đấu chuyên nghiệp cầu lông Thunder AYAS018-2 với cách phối màu đơn giản, đơn giản và trang nhã, thời trang và đa năng. Phần trên chủ yếu được làm bằng da sợi nhỏ giúp tăng cường khả năng bọc của thân giày. Cấu trúc thắt chặt TPU ba chiều trên gót chân giúp cải thiện sự hỗ trợ và bao bọc của đường viền cổ. Đế giữa được hỗ trợ bởi công nghệ gấp ba, LIGHT FOAM đầy lòng bàn tay giúp giảm trọng lượng của đế, BOUNSE + phía trước tăng cường phản hồi khi đạp và mặt sau được lấp đầy bởi Li Ning ba, được đệm hoàn toàn và cảm giác bàn chân tăng lên; đế ngoài phân khúc , vòm cầu TPU, sợi carbon tích hợp Tấm có độ dẻo dai và khả năng chống va đập tốt, cung cấp độ ổn định kép và chống xoắn, giúp hiệu suất thể thao.', 2450000, '2023-06-28 10:54:18.980000', '2023-07-15 12:07:13.497000', '2023-07-15 12:07:13.482000', NULL, NULL),
(57, 'Cầu lông', 'Hộp 10 quả cầu lông thi đấu Ba sao', 'Cầu chuyên dùng cho môn thể thao cầu lông', 183000, '2023-06-28 10:58:10.075000', '2023-06-28 10:58:10.075000', '2023-06-28 10:58:10.070000', NULL, NULL),
(58, 'Áo Tập Gym Thể Thao Phối Màu Sườn', 'Áo tập gym thể thao cao cấp với các lỗ thoáng khi chuyên biệt:', '* Tên: Áo tập gym thể thao phối màu sườn\n\n* Size: M, L, XL, 2XL, 3XL\n\n* Màu sắc: đỏ, xanh lá, neon\n\n* Chất liệu: polyester\n\n* Giá: 180k/cái\n\nSportswear Concept chỉ bán hàng chất lượng cao cấp, không cạnh tranh hàng giá rẻ kém chất lượng.\n\nBảo hành: 1 đổi 1', 180000, '2023-06-28 11:01:43.876000', '2023-06-28 11:01:43.876000', '2023-06-28 11:01:43.870000', NULL, NULL),
(59, 'Thảm Yoga', 'THẢM TẬP YOGA THỂ THAO PHIÊN BẢN CAO CẤP 3D', 'THẢM TẬP YOGA THỂ THAO PHIÊN BẢN CAO CẤP 3D GAVAN THÍCH HỢP MỌI ĐỐI TƯỢNG 2022\n\nMô tả:\n\nNâng cấp thông tin các đường, điểm định vị 3D giúp việc tập luyện đơn giản và dễ dàng hơn\n\nKhông chứa kim lại nặng, hóa chất độc hại và hoàn toàn an toàn với sức khỏe.\n\nHoàn thiện hơn, lớn hơn, thoải mái hơn với kích cỡ tùy chỉnh 183cm x 61cm x 0.6cm\n\nChất liệu thân thiện với môi trường, thiết kế dày dặn và đàn hồi, chống xẹp và rách, an toàn tập luyện.\n\nThảm tập mềm mại và thoải mái giúp bạn tận hưởng niềm vui thể thao từ chất liệu cao cấp, cảm ứng nhiệt tuyệt vời.\n\nTránh chấn thương vùng tiếp xúc giữ cơ thể và sàn trong những tư thế rèn luyện khác nhau.\n\nVới các lỗ thoáng khí hình tổ ong: mềm mại, đàn hồi, thoải mái và hiệu suất cao.\n\nCông nghệ tạo xốp mềm cao cấp, kết cấu mềm mại, hiệu quả chống trượt tuyệt vời, không thấm nước, vệ sinh dễ dàng.\n\nSự lựa chọn hàng đầu cho việc tập luyện tại nhà hay bất kỳ nơi nào.\n\nDụng cụ nhỏ gọn, lắp ráp nên tiện lợi tập bất kỳ nơi nào, vận hành êm ái.\n\nLuyện tập hơn giản và dễ dàng mỗi ngày!\n\nChi tiết sản phẩm:\n\nChất liệu: xốp di động cao cấp\n\nMàu sắc: xanh lam, tím hồng 2 mặt không 3D, đỏ\n\nTrọng lượng: 800 gram\n\nGiới tính: phù hợp cho mọi người\n\nGiá: 315k', 315000, '2023-06-28 11:03:55.951000', '2023-06-28 11:03:55.951000', '2023-06-28 11:03:55.947000', NULL, NULL),
(60, 'Kính Bơi', 'Kính Bơi SUPER-K SSM7899', 'Thông tin kính bơi SSM7899\nXuất xứ: Trung Quốc\nHãng sản xuất: Super-K\nMàu sắc: Mắt kính, dây đeo kính màu xanh\nChất liệu: kính được làm từ vật liệu PC nhập khẩu và silicone có độ bền cao.\nKính sử dụng nguyên liệu ổn định UV siêu chống tia cực tím và công nghệ cao xử lý tránh sương mù cho mắt kính.\nChất liệu dây và vòng đệm bằng silicone, chất liệu tròng kính là polycarbonate\nDây đeo thay đổi được theo kích thước đầu, cao su mềm không gây đau khi đeo và giúp cho kính không bị trượt ra bên ngoài khi bơi hay lặn.\nMặt kính tráng gương giúp bạn thoải mái bơi lội ngoài trời\nGọng kính dẻo tránh gãy, rất bền với độ xoắn cao', 250000, '2023-06-28 11:09:26.969000', '2023-06-28 11:09:26.969000', '2023-06-28 11:09:26.963000', NULL, NULL),
(61, 'Mũ bơi trùm tai 2D Whale', 'Mũ bơi trùm tai 2D Whale', 'Mũ bơi trùm tai Whale là phiên bản mũ bơi silicon của thương hiệu Whale có thể trùm kín tai, giúp bảo vệ không ướt tóc và nước vào tai. Sản phẩm có nhiều màu sắc, phù hợp cho người lớn và trẻ em từ 8 tuổi trở lên.\n\n', 190000, '2023-06-28 11:13:30.727000', '2023-06-28 11:13:30.727000', '2023-06-28 11:13:30.722000', NULL, NULL),
(62, ' Quần bơi nam', 'Quần bơi nam SPEEDO ngang đùi cao cấp', 'THÔNG TIN SẢN PHẨM\nQuần Bơi Nam SPEEDO Ngang Đùi Cao Cấp có những đặc điểm nổi bật sau.\n\nQuần bơi kiểu dáng thể thao, phối màu khỏe khắn, nam tính\nChất liệu thun polyester co giãn tốt tạo sự thoải mái khi vận động\nThiết kế dây buộc trong quần giúp điều chỉnh phù hợp với cơ thể\nBền đẹp, không bị ra màu.\nMàu Sắc : Giao Màu Ngẫu Nhiên\nCam kết đổi trả hàng nếu hàng kém chất lượng.\nSản phẩm như hình 100%', 135000, '2023-06-28 11:15:50.381000', '2023-06-28 11:15:50.381000', '2023-06-28 11:15:50.376000', NULL, NULL),
(63, 'Phao bơi', 'Phao bơi đeo tay cho trẻ em', 'Thông tin chi tiết phao bơi đeo tay\nĐược làm từ nhựa PVC chống thấm cao cấp, không độc hại, rất chắc chắn và dễ thổi phồng. Túi khí kép an toàn và thoải mái hơn. Màu cam đẹp xuống không phai màu\nLý tưởng cho người mới bắt đầu, đặc biệt là trẻ em, có thể dùng cho người lớn và trẻ em, chỉ dành cho cánh tay, không phải cho chân và bàn chân.\nKích thước: 21 x 21 cm trước khi bơm phồng.\nLưu ý: Bạn nên thổi phồng đến kích thước phù hợp, nếu quá căng nó sẽ khiến người bơi không thoải mái.', 75000, '2023-06-28 11:17:46.399000', '2023-06-28 11:17:46.399000', '2023-06-28 11:17:46.394000', NULL, NULL),
(64, 'Vợt Tennis', 'Vợt Tennis Wilson K HAMMER2.7 (MÃ KR)', 'Nhẹ, nhanh và rất thân thiện, Vợt Tennis Wilson K HAMMER2.7 là cây vợt hoàn hảo cho những ai muốn tăng thêm một chút sức mạnh và sự thoải mái mà không phải hy sinh quá nhiều quyền kiểm soát.', 4250000, '2023-06-28 11:20:38.071000', '2023-06-28 11:20:38.071000', '2023-06-28 11:20:38.066000', NULL, NULL),
(65, 'Bóng Tennis', 'BÓNG TENNIS CŨ', 'Bóng dùng trong bộ môn quần vợt', 5000, '2023-06-28 11:23:12.261000', '2023-06-28 11:23:12.261000', '2023-06-28 11:23:12.256000', NULL, NULL),
(66, 'Banh Thăng Long', 'BÓNG CHUYỀN THĂNG LONG TL5020', 'Thông tin quả bóng chuyền Thăng Long TL5020\n– Mã sản phẩm: TL5020.\n\n– Hãng sản xuất: Thăng Long.\n\n– Xuất xứ: Việt Nam.\n\n– Chất liệu: PVC\n\n– Quả bóng chuyền Thăng Long thi đấu TL5020 chính hãng được may tròn đều từ chất liệu da cao cấp, cho độ nảy cực chuẩn và rất êm tay khi chơi. Bóng có độ bền cao + giữ hơi rất tốt.\n\n– Màu sắc: xanh + vàng + trắng.\n\n– Size: số 5.\n\n– Chu vi bóng: 650 – 670 mm.\n\n– Trọng lượng: 260 – 280 gram.\n\n– Độ nảy: 90 - 120 cm.\n\n– Quả bóng chuyền đạt tiêu chuẩn thi đấu và phù hợp sử dụng cho tập luyện + thi đấu bóng chuyền tại nhà hoặc trường học…', 160000, '2023-06-28 11:27:01.351000', '2023-06-28 11:27:01.351000', '2023-06-28 11:27:01.346000', NULL, NULL),
(67, 'Áo quần bóng chuyền', 'Bộ Bóng Chuyền Sát Nách', 'Hàng cao cấp của hãng beyono. Chất thun thấm hút mồ hôi tốt.\n\nSize:m-2xl', 150000, '2023-06-28 11:30:03.172000', '2023-06-28 11:30:03.172000', '2023-06-28 11:30:03.169000', NULL, NULL),
(68, 'Giày bóng chuyền', 'Giày bóng chuyền ASICS GEL-TASK GBC-TL02', 'Mã sản phẩm: GBC-TL02\nThương hiệu: ASICS\nXuất xứ: Việt Nam\nBảo hành: 6 tháng\nSize: 38, 39, 40, 41, 42, 43, 44\nBộ quà tặng 4 món vô cùng hấp dẫn\nHỗ trợ đổi size miễn phí\nĐổi mới 30 ngày do phát sinh lỗi từ nhà sản xuất\nMiễn phí vận chuyển Toàn Quốc', 850000, '2023-06-28 11:40:28.254000', '2023-06-28 11:40:28.254000', '2023-06-28 11:40:28.250000', NULL, NULL),
(69, 'Xe đạp thể thao Traverse 700C', 'Mã: Traverse_700C\nDanh mục: Xe đạp cào cào, Xe đạp thể thao', 'Nguyên thùng đập hộp, mới 100%\nThương Hiệu hơn 124 năm xuất phát từ Yokohama Nhật Bản (từ năm 1894)\nXe dành cho thị trường nội địa Nhật Bản\nChất lượng và tiêu chuẩn tại Nhật\nBảo hành 2 năm', 4990000, '2023-06-28 11:43:06.152000', '2023-06-28 11:43:06.152000', '2023-06-28 11:43:06.150000', NULL, NULL),
(70, 'Bình nước', 'Bình Nước Thể Thao Aonijie SH600', '108,000 VND 90,000 VND\n\nThương hiệu: Aonijie\nModel: SH600\nTrọng lượng: 70g\nChất liệu: POLYPROYLENE\nSize: 7.2 x 21.7 cm', 90000, '2023-06-28 11:46:09.597000', '2023-06-28 11:49:23.490000', '2023-06-28 11:46:09.594000', NULL, NULL),
(71, 'Quần áo xe đạp thể thao Sky', 'Quần áo xe đạp thể thao Sky', 'Hãng sản xuất:	HANGCONGTY\nSố Serial-Mã hàng:	BO_QUAN_AO_SKY1\nBảo hành:	Không bảo hành\nTình trạng Sản phẩm :	Brand New 100%\nSố lượt xem sản phẩm:	Bạn là người thứ 9026 xem sản phẩm này\nCập nhật lần cuối:	18/11/2023 11:50\nBán tại hệ thống:	TOAN THANG CYCLES & Hệ thống Website TMĐT', 780000, '2023-06-28 11:52:03.142000', '2023-06-28 11:53:17.331000', '2023-06-28 11:52:03.139000', NULL, NULL),
(72, 'GIÀY BÓNG RỔ NIKE ', 'GIÀY BÓNG RỔ NIKE - LEBRON 19 DUTCH BLUE LIME GLOW - DC9339-400', 'GIÀY BÓNG RỔ NIKE Lebron 19 Dutch Blue Lime Glow - DC9339-400\nVề Sản Phẩm Giày Bóng Rổ Nike - Lebron 19 Dutch Blue Lime Glow - DC9339-400\nThương hiệu: Nike\nPhân loại: Giày Bóng Rổ\nGiới tính: Nam\nMàu sắc: Xanh dương - Trắng - Xanh lá cây \nChất liệu: Vải Mesh. Đế cao su giúp tăng tính ổn định\nVân đế được làm bằng cao su mềm nên hạn chế mang ra Outdoor. Hiệu năng sẽ phát huy tốt nhất khi chơi Indoor\nFit size:   Chân thon và dài: true size\n                            Chân bè: up 0.5~1 size\n\nMã sản phẩm: DC9339-400\n- Hàng Chính Hãng, Giá Tốt Nhất Thị Trường\n\n- ​​​​​​​Được trang bị bộ đệm khá khủng thì Lebron 19 sẽ phù hợp với những anh em có cân nặng và vóc dáng cao to 1 chút, để tránh cảm giác chông chênh trong những bước di chuyển.', 3500000, '2023-06-28 11:55:53.256000', '2023-06-28 11:55:53.256000', '2023-06-28 11:55:53.252000', NULL, NULL),
(73, 'Bộ quần áo bóng rổ Jordan', 'Sản phẩm : Bộ quần áo thi đấu bóng rổ', 'Sản phẩm : Bộ quần áo thi đấu bóng rổ\nDành cho : Người lớn, trẻ em\nGiới tính : Unisex\nChất liệu : Polyester\nKiểu : In tên số cầu thủ 2 mặt', 180000, '2023-06-28 12:01:34.175000', '2023-06-28 12:01:34.175000', '2023-06-28 12:01:34.171000', NULL, NULL),
(74, 'Vợt bóng bàn AND1 YD606GP2', 'Vợt bóng bàn AND1 YD606GP2', 'Vợt bóng bàn AND1 YD606GP2 một trang bị tuyệt vời giúp hỗ trợ bạn có được những cú ra bóng đẹp mắt và làm chủ được trận bóng của mình, thậm chí dù không phải là dân chơi chuyên nghiệp.\nĐối với những người chơi bóng bàn thì chiếc vợt như là một vũ khí chiến đấu, gắn liền với bạn hằng ngày. Nhưng để lựa chọn được cho mình một chiếc vợt ưng ý trên thị trường hiện nay thì không phải ai cũng làm được. Và AND1 YD606GP2 với thiết kế linh hoạt, chất liệu cao cấp cùng 2 lựa chọn vợt cầm ngang và cầm dọc sẽ là lựa chọn thú vị giúp hỗ trợ người dùng có thể dễ dàng kiểm soát bóng tốt hơn trong mỗi trận đấu.', 350000, '2023-06-28 12:04:33.903000', '2023-06-28 12:04:33.903000', '2023-06-28 12:04:33.901000', NULL, NULL),
(75, 'Quả bóng bàn 40mm 1 sao', 'Set 30 quả bóng bàn 40mm 1 sao GoodFit', 'Chất liệu: Nhựa ABS\nCó thể sử dụng cho cả tập luyện và thi đấu\nBóng có độ nảy đều, đường đi chính xác\nĐường kính: 40 mm\nĐơn vị bán: Set', 99000, '2023-06-28 12:06:37.936000', '2023-06-28 12:06:37.936000', '2023-06-28 12:06:37.932000', NULL, NULL),
(76, 'Bàn bóng bàn', 'Bàn bóng bàn VinaSport MDF 25 ly', 'Mã sản phẩm: VMDF25.\n\n- Thương hiệu: VinaSport. \n\n- Xuất xứ: Việt Nam. \n\n- Màu sắc: xanh coban + đen.\n\n- Bảo hành: 1 năm. \n\n- Giá bán: 3.650.000 đồng. Tặng cọc lưới và hộp bóng bàn khi mua bàn bóng bàn tại Thể thao Thiên Trường.\n\nThông số kỹ thuật bàn bóng bàn VinaSport MDF 25 ly: \n\n- Trọng lượng bàn: 80kg.\n\n- Kích thước lắp đặt: 2740 x 1525 x 760 mm. \n\n- Kích thước vận chuyển: 1600 x 1470 x 130 mm.', 3650000, '2023-06-28 12:11:08.935000', '2023-06-28 12:11:08.935000', '2023-06-28 12:11:08.932000', NULL, NULL),
(80, 'Bộ Tạ Đơn Tháo Lắp', 'Bộ Tạ Đơn Tháo Lắp 11.5kg PT1123', '1 bộ gồm 2 quả, trọng lượng 11.5kg mỗi quả\nĐơn giá giao tại kho, chưa bao gồm VAT (nếu có), chưa bao gồm phí vận chuyển lắp đặt.\nBáo giá được cập nhật vào: tháng 3/2021. Mời bạn liên hệ trực tiếp để nhận được báo giá tốt nhất.', 2890000, '2023-06-28 12:39:01.781000', '2023-06-28 12:39:01.781000', '2023-06-28 12:39:01.776000', NULL, NULL),
(81, 'Túi Trống Thể Thao', 'Túi Trống Thể Thao GYMSHARK Tập GYM, Đá Bóng Có Ngăn Đựng Giầy', 'Bạn là người tập thể hình và đam mê thể thao nhưng thường xuyên cảm thấy khó chịu vì không thể mang được nhiều phụ kiện đồ dùng mỗi khi đi tập. Chúng tôi thấu hiểu tình trạng của bạn và có lời khuyên cho bạn là phải sắm thêm một túi trống để có thể đựng được nhiều đồ hơn giups tập luyện tốt hơn.\n\nTúi Trống Thể Thao GYMSHARK Tập GYM mang cả thế giới tới phòng tập', 150000, '2023-06-28 12:43:12.900000', '2023-06-28 12:43:12.900000', '2023-06-28 12:43:12.897000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_category_links`
--

CREATE TABLE `products_category_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `products_category_links`
--

INSERT INTO `products_category_links` (`id`, `product_id`, `category_id`) VALUES
(113, 55, 3),
(115, 56, 3),
(116, 57, 3),
(117, 58, 4),
(118, 59, 4),
(119, 60, 5),
(120, 61, 5),
(121, 62, 5),
(122, 63, 5),
(123, 64, 6),
(124, 65, 6),
(125, 66, 2),
(126, 67, 2),
(127, 68, 2),
(128, 69, 7),
(130, 70, 7),
(131, 71, 7),
(133, 72, 8),
(134, 73, 8),
(135, 74, 9),
(136, 75, 9),
(137, 76, 9),
(149, 80, 4),
(150, 81, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `method` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `content`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `method`) VALUES
(1, 'Khuyến mãi tháng 10', '2023-07-13 13:04:08.385000', '2023-07-13 13:47:57.603000', '2023-07-13 13:05:36.018000', 1, 1, 'item active'),
(2, 'Khuyến mãi tháng 11', '2023-07-13 13:22:15.932000', '2023-07-13 13:47:28.863000', '2023-07-13 13:40:01.372000', 1, 1, 'item'),
(3, 'Khuyến mãi tháng 12', '2023-07-13 13:41:52.904000', '2023-07-13 13:47:52.805000', '2023-07-13 13:42:02.297000', 1, 1, 'item');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `strapi_api_tokens`
--

INSERT INTO `strapi_api_tokens` (`id`, `name`, `description`, `type`, `access_key`, `last_used_at`, `expires_at`, `lifespan`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Token 1', 'Chỉ được xem category', 'full-access', 'a50ebf4c11589700295db73e2ab8b66ba3cc17549b2666eb8443e3f1471cfa337ff41e1f7cc5e83b44dac05745b5cd13e5419119f8f03c8b61cb47bfd7ec9ee2', '2023-06-22 13:28:53.772000', NULL, NULL, '2023-06-08 15:31:29.581000', '2023-07-15 11:31:58.505000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions`
--

CREATE TABLE `strapi_api_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `strapi_api_token_permissions`
--

INSERT INTO `strapi_api_token_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(4, 'api::category.category.delete', '2023-06-15 12:49:34.777000', '2023-06-15 12:49:34.777000', NULL, NULL),
(5, 'api::category.category.update', '2023-06-15 12:49:34.777000', '2023-06-15 12:49:34.777000', NULL, NULL),
(6, 'api::product.product.find', '2023-06-15 12:49:34.777000', '2023-06-15 12:49:34.777000', NULL, NULL),
(7, 'api::product.product.findOne', '2023-06-15 12:49:34.777000', '2023-06-15 12:49:34.777000', NULL, NULL),
(8, 'api::product.product.create', '2023-06-15 12:49:34.777000', '2023-06-15 12:49:34.777000', NULL, NULL),
(9, 'api::product.product.update', '2023-06-15 12:49:34.777000', '2023-06-15 12:49:34.777000', NULL, NULL),
(10, 'api::product.product.delete', '2023-06-15 12:49:34.777000', '2023-06-15 12:49:34.777000', NULL, NULL),
(15, 'api::category.category.find', '2023-06-19 11:10:47.360000', '2023-06-19 11:10:47.360000', NULL, NULL),
(16, 'api::post.post.find', '2023-06-19 11:10:47.360000', '2023-06-19 11:10:47.360000', NULL, NULL),
(17, 'api::post.post.findOne', '2023-06-19 11:10:47.360000', '2023-06-19 11:10:47.360000', NULL, NULL),
(18, 'api::post.post.create', '2023-06-19 11:10:47.360000', '2023-06-19 11:10:47.360000', NULL, NULL),
(19, 'api::post.post.update', '2023-06-19 11:10:47.360000', '2023-06-19 11:10:47.360000', NULL, NULL),
(20, 'api::post.post.delete', '2023-06-19 11:10:47.360000', '2023-06-19 11:10:47.360000', NULL, NULL),
(33, 'api::brand.brand.find', '2023-07-13 12:25:45.669000', '2023-07-13 12:25:45.669000', NULL, NULL),
(34, 'api::brand.brand.findOne', '2023-07-13 12:25:45.669000', '2023-07-13 12:25:45.669000', NULL, NULL),
(35, 'api::brand.brand.create', '2023-07-13 12:25:45.669000', '2023-07-13 12:25:45.669000', NULL, NULL),
(36, 'api::brand.brand.update', '2023-07-13 12:25:45.669000', '2023-07-13 12:25:45.669000', NULL, NULL),
(37, 'api::brand.brand.delete', '2023-07-13 12:25:45.669000', '2023-07-13 12:25:45.669000', NULL, NULL),
(38, 'api::category.category.findOne', '2023-07-13 12:25:45.669000', '2023-07-13 12:25:45.669000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions_token_links`
--

CREATE TABLE `strapi_api_token_permissions_token_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `strapi_api_token_permissions_token_links`
--

INSERT INTO `strapi_api_token_permissions_token_links` (`id`, `api_token_permission_id`, `api_token_id`, `api_token_permission_order`) VALUES
(4, 4, 1, 1),
(5, 5, 1, 1),
(6, 6, 1, 1),
(7, 7, 1, 1),
(8, 8, 1, 1),
(9, 9, 1, 1),
(10, 10, 1, 1),
(15, 16, 1, 2),
(16, 18, 1, 2),
(17, 17, 1, 2),
(18, 15, 1, 2),
(19, 19, 1, 2),
(20, 20, 1, 2),
(33, 33, 1, 3),
(34, 34, 1, 3),
(35, 35, 1, 3),
(36, 36, 1, 3),
(37, 37, 1, 3),
(38, 38, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"admin::permission\",\"plugin\":\"admin\",\"globalId\":\"AdminPermission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"admin::user\",\"plugin\":\"admin\",\"globalId\":\"AdminUser\"},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"admin::role\",\"plugin\":\"admin\",\"globalId\":\"AdminRole\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token\",\"connection\":\"default\",\"uid\":\"admin::api-token\",\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"api-token-permission\",\"connection\":\"default\",\"uid\":\"admin::api-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\"},\"admin::transfer-token\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token\",\"connection\":\"default\",\"uid\":\"admin::transfer-token\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferToken\"},\"admin::transfer-token-permission\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"transfer-token-permission\",\"connection\":\"default\",\"uid\":\"admin::transfer-token-permission\",\"plugin\":\"admin\",\"globalId\":\"AdminTransferTokenPermission\"},\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"min\":1,\"required\":true,\"private\":true,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"file\",\"connection\":\"default\",\"uid\":\"plugin::upload.file\",\"plugin\":\"upload\",\"globalId\":\"UploadFile\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"min\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"folder\",\"connection\":\"default\",\"uid\":\"plugin::upload.folder\",\"plugin\":\"upload\",\"globalId\":\"UploadFolder\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"locale\",\"connection\":\"default\",\"uid\":\"plugin::i18n.locale\",\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"permission\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.permission\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\"},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"role\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.role\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\"},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"draftAndPublish\":false,\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"user\",\"connection\":\"default\",\"uid\":\"plugin::users-permissions.user\",\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\"},\"api::brand.brand\":{\"kind\":\"collectionType\",\"collectionName\":\"brands\",\"info\":{\"singularName\":\"brand\",\"pluralName\":\"brands\",\"displayName\":\"Brand\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"brandName\":{\"type\":\"string\"},\"description\":{\"type\":\"string\",\"unique\":true,\"required\":true,\"maxLength\":1000},\"image\":{\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"type\":\"media\",\"multiple\":false,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"brands\",\"info\":{\"singularName\":\"brand\",\"pluralName\":\"brands\",\"displayName\":\"Brand\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"brandName\":{\"type\":\"string\"},\"description\":{\"type\":\"string\",\"unique\":true,\"required\":true,\"maxLength\":1000},\"image\":{\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"],\"type\":\"media\",\"multiple\":false,\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"brand\",\"connection\":\"default\",\"uid\":\"api::brand.brand\",\"apiName\":\"brand\",\"globalId\":\"Brand\",\"actions\":{},\"lifecycles\":{}},\"api::category.category\":{\"kind\":\"collectionType\",\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Category\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"categoryName\":{\"type\":\"string\",\"required\":true,\"unique\":true,\"maxLength\":150},\"description\":{\"type\":\"text\",\"default\":\"Mô tả category\",\"required\":false,\"unique\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Category\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"categoryName\":{\"type\":\"string\",\"required\":true,\"unique\":true,\"maxLength\":150},\"description\":{\"type\":\"text\",\"default\":\"Mô tả category\",\"required\":false,\"unique\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"category\",\"connection\":\"default\",\"uid\":\"api::category.category\",\"apiName\":\"category\",\"globalId\":\"Category\",\"actions\":{},\"lifecycles\":{}},\"api::order.order\":{\"kind\":\"collectionType\",\"collectionName\":\"orders\",\"info\":{\"singularName\":\"order\",\"pluralName\":\"orders\",\"displayName\":\"Order\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"code\":{\"type\":\"biginteger\",\"required\":true},\"user_id\":{\"type\":\"biginteger\",\"required\":true},\"deliveryaddress\":{\"type\":\"text\",\"required\":true},\"deliveryname\":{\"type\":\"text\",\"required\":true},\"deliveryphone\":{\"required\":true,\"type\":\"biginteger\"},\"deliveryemail\":{\"type\":\"email\",\"required\":true},\"status\":{\"type\":\"integer\",\"required\":true},\"orderdetails\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::orderdetail.orderdetail\"},\"total\":{\"type\":\"integer\",\"unique\":false},\"ship\":{\"type\":\"integer\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"orders\",\"info\":{\"singularName\":\"order\",\"pluralName\":\"orders\",\"displayName\":\"Order\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"code\":{\"type\":\"biginteger\",\"required\":true},\"user_id\":{\"type\":\"biginteger\",\"required\":true},\"deliveryaddress\":{\"type\":\"text\",\"required\":true},\"deliveryname\":{\"type\":\"text\",\"required\":true},\"deliveryphone\":{\"required\":true,\"type\":\"biginteger\"},\"deliveryemail\":{\"type\":\"email\",\"required\":true},\"status\":{\"type\":\"integer\",\"required\":true},\"orderdetails\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::orderdetail.orderdetail\"},\"total\":{\"type\":\"integer\",\"unique\":false},\"ship\":{\"type\":\"integer\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"order\",\"connection\":\"default\",\"uid\":\"api::order.order\",\"apiName\":\"order\",\"globalId\":\"Order\",\"actions\":{},\"lifecycles\":{}},\"api::orderdetail.orderdetail\":{\"kind\":\"collectionType\",\"collectionName\":\"orderdetails\",\"info\":{\"singularName\":\"orderdetail\",\"pluralName\":\"orderdetails\",\"displayName\":\"Orderdetail\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"order_id\":{\"type\":\"biginteger\"},\"price\":{\"type\":\"float\",\"required\":true},\"qty\":{\"type\":\"biginteger\",\"required\":true},\"amount\":{\"type\":\"float\",\"required\":true},\"product_id\":{\"type\":\"integer\",\"unique\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"orderdetails\",\"info\":{\"singularName\":\"orderdetail\",\"pluralName\":\"orderdetails\",\"displayName\":\"Orderdetail\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"order_id\":{\"type\":\"biginteger\"},\"price\":{\"type\":\"float\",\"required\":true},\"qty\":{\"type\":\"biginteger\",\"required\":true},\"amount\":{\"type\":\"float\",\"required\":true},\"product_id\":{\"type\":\"integer\",\"unique\":false}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"orderdetail\",\"connection\":\"default\",\"uid\":\"api::orderdetail.orderdetail\",\"apiName\":\"orderdetail\",\"globalId\":\"Orderdetail\",\"actions\":{},\"lifecycles\":{}},\"api::post.post\":{\"kind\":\"collectionType\",\"collectionName\":\"posts\",\"info\":{\"singularName\":\"post\",\"pluralName\":\"posts\",\"displayName\":\"Post\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true},\"contact\":{\"type\":\"text\"},\"image\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"detail\":{\"type\":\"text\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"posts\",\"info\":{\"singularName\":\"post\",\"pluralName\":\"posts\",\"displayName\":\"Post\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true},\"contact\":{\"type\":\"text\"},\"image\":{\"type\":\"media\",\"multiple\":true,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"detail\":{\"type\":\"text\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"post\",\"connection\":\"default\",\"uid\":\"api::post.post\",\"apiName\":\"post\",\"globalId\":\"Post\",\"actions\":{},\"lifecycles\":{}},\"api::product.product\":{\"kind\":\"collectionType\",\"collectionName\":\"products\",\"info\":{\"singularName\":\"product\",\"pluralName\":\"products\",\"displayName\":\"Product\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"productName\":{\"type\":\"string\",\"required\":true,\"maxLength\":150},\"description\":{\"type\":\"string\",\"required\":true},\"detail\":{\"type\":\"richtext\",\"required\":true},\"price\":{\"type\":\"integer\",\"required\":true,\"max\":100000000000,\"min\":1000},\"image\":{\"type\":\"media\",\"multiple\":true,\"required\":true,\"allowedTypes\":[\"images\"]},\"category\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::category.category\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"products\",\"info\":{\"singularName\":\"product\",\"pluralName\":\"products\",\"displayName\":\"Product\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"productName\":{\"type\":\"string\",\"required\":true,\"maxLength\":150},\"description\":{\"type\":\"string\",\"required\":true},\"detail\":{\"type\":\"richtext\",\"required\":true},\"price\":{\"type\":\"integer\",\"required\":true,\"max\":100000000000,\"min\":1000},\"image\":{\"type\":\"media\",\"multiple\":true,\"required\":true,\"allowedTypes\":[\"images\"]},\"category\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"api::category.category\"}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"product\",\"connection\":\"default\",\"uid\":\"api::product.product\",\"apiName\":\"product\",\"globalId\":\"Product\",\"actions\":{},\"lifecycles\":{}},\"api::slider.slider\":{\"kind\":\"collectionType\",\"collectionName\":\"sliders\",\"info\":{\"singularName\":\"slider\",\"pluralName\":\"sliders\",\"displayName\":\"Slider\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"content\":{\"type\":\"string\",\"required\":true,\"maxLength\":100},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"method\":{\"type\":\"enumeration\",\"enum\":[\"item active\",\"item\"],\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true}},\"__schema__\":{\"collectionName\":\"sliders\",\"info\":{\"singularName\":\"slider\",\"pluralName\":\"sliders\",\"displayName\":\"Slider\",\"description\":\"\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"content\":{\"type\":\"string\",\"required\":true,\"maxLength\":100},\"image\":{\"type\":\"media\",\"multiple\":false,\"required\":true,\"allowedTypes\":[\"images\",\"files\",\"videos\",\"audios\"]},\"method\":{\"type\":\"enumeration\",\"enum\":[\"item active\",\"item\"],\"required\":true}},\"kind\":\"collectionType\"},\"modelType\":\"contentType\",\"modelName\":\"slider\",\"connection\":\"default\",\"uid\":\"api::slider.slider\",\"apiName\":\"slider\",\"globalId\":\"Slider\",\"actions\":{},\"lifecycles\":{}}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(2, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"uid\":\"plugin::upload.folder\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]}}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"uid\":\"admin::permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"uid\":\"admin::api-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_content_types::admin::role', '{\"uid\":\"admin::role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]}}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"uid\":\"plugin::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"uid\":\"plugin::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]}}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{\"uid\":\"admin::api-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::admin::transfer-token-permission', '{\"uid\":\"admin::transfer-token-permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]}}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"uid\":\"plugin::i18n.locale\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]}}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"uid\":\"plugin::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}]]}}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::admin::transfer-token', '{\"uid\":\"admin::transfer-token\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"accessKey\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"accessKey\",\"size\":6},{\"name\":\"lastUsedAt\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"lifespan\",\"size\":4}]]}}', 'object', NULL, NULL),
(13, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"uid\":\"plugin::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]}}', 'object', NULL, NULL),
(14, 'plugin_content_manager_configuration_content_types::admin::user', '{\"uid\":\"admin::user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"resetPasswordToken\",\"size\":6}],[{\"name\":\"registrationToken\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]}}', 'object', NULL, NULL),
(15, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(16, 'plugin_upload_view_configuration', '{\"pageSize\":10,\"sort\":\"createdAt:DESC\"}', 'object', NULL, NULL),
(17, 'plugin_upload_metrics', '{\"weeklySchedule\":\"24 50 18 * * 6\",\"lastWeeklyUpdate\":1705225863080}', 'object', NULL, NULL),
(18, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"enabled\":false,\"icon\":\"linkedin\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"enabled\":false,\"icon\":\"aws\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"enabled\":false,\"icon\":\"reddit\",\"key\":\"\",\"secret\":\"\",\"state\":true,\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"enabled\":false,\"icon\":\"book\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"},\"patreon\":{\"enabled\":false,\"icon\":\"\",\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/patreon/callback\",\"scope\":[\"identity\",\"identity[email]\"]}}', 'object', NULL, NULL),
(19, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(20, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":\"\",\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(21, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL),
(22, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null}}', 'object', NULL, NULL),
(23, 'plugin_content_manager_configuration_content_types::api::category.category', '{\"uid\":\"api::category.category\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"categoryName\",\"defaultSortBy\":\"categoryName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"categoryName\":{\"edit\":{\"label\":\"categoryName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"categoryName\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"categoryName\",\"description\",\"createdAt\"],\"edit\":[[{\"name\":\"categoryName\",\"size\":6},{\"name\":\"description\",\"size\":6}]]}}', 'object', NULL, NULL),
(24, 'plugin_content_manager_configuration_content_types::api::product.product', '{\"uid\":\"api::product.product\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"productName\",\"defaultSortBy\":\"productName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"productName\":{\"edit\":{\"label\":\"productName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"productName\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"detail\":{\"edit\":{\"label\":\"detail\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"detail\",\"searchable\":false,\"sortable\":false}},\"price\":{\"edit\":{\"label\":\"price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"price\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"category\":{\"edit\":{\"label\":\"category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"categoryName\"},\"list\":{\"label\":\"category\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"productName\",\"description\",\"price\"],\"edit\":[[{\"name\":\"productName\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"detail\",\"size\":12}],[{\"name\":\"price\",\"size\":4},{\"name\":\"image\",\"size\":6}],[{\"name\":\"category\",\"size\":6}]]}}', 'object', NULL, NULL),
(25, 'plugin_documentation_config', '{\"restrictedAccess\":false}', 'object', NULL, NULL),
(26, 'core_admin_project-settings', '{\"menuLogo\":{},\"authLogo\":{}}', 'object', NULL, NULL),
(27, 'plugin_upload_api-folder', '{\"id\":3}', 'object', NULL, NULL),
(28, 'plugin_content_manager_configuration_content_types::api::post.post', '{\"uid\":\"api::post.post\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"contact\":{\"edit\":{\"label\":\"contact\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"contact\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"detail\":{\"edit\":{\"label\":\"detail\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"detail\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"image\",\"title\",\"contact\"],\"edit\":[[{\"name\":\"image\",\"size\":6},{\"name\":\"detail\",\"size\":6}],[{\"name\":\"title\",\"size\":6},{\"name\":\"contact\",\"size\":6}]]}}', 'object', NULL, NULL),
(29, 'plugin_content_manager_configuration_content_types::api::brand.brand', '{\"uid\":\"api::brand.brand\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"brandName\",\"defaultSortBy\":\"brandName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"brandName\":{\"edit\":{\"label\":\"brandName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"brandName\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"brandName\",\"description\",\"image\"],\"edit\":[[{\"name\":\"brandName\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"image\",\"size\":6}]]}}', 'object', NULL, NULL),
(30, 'plugin_content_manager_configuration_content_types::api::slider.slider', '{\"uid\":\"api::slider.slider\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"content\",\"defaultSortBy\":\"content\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"content\":{\"edit\":{\"label\":\"content\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"content\",\"searchable\":true,\"sortable\":true}},\"image\":{\"edit\":{\"label\":\"image\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"image\",\"searchable\":false,\"sortable\":false}},\"method\":{\"edit\":{\"label\":\"method\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"method\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"content\",\"image\",\"createdAt\"],\"edit\":[[{\"name\":\"content\",\"size\":6},{\"name\":\"image\",\"size\":6}],[{\"name\":\"method\",\"size\":6}]]}}', 'object', NULL, NULL),
(31, 'plugin_content_manager_configuration_content_types::api::order.order', '{\"uid\":\"api::order.order\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"user_id\":{\"edit\":{\"label\":\"user_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"user_id\",\"searchable\":true,\"sortable\":true}},\"deliveryaddress\":{\"edit\":{\"label\":\"deliveryaddress\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deliveryaddress\",\"searchable\":true,\"sortable\":true}},\"deliveryname\":{\"edit\":{\"label\":\"deliveryname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deliveryname\",\"searchable\":true,\"sortable\":true}},\"deliveryphone\":{\"edit\":{\"label\":\"deliveryphone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deliveryphone\",\"searchable\":true,\"sortable\":true}},\"deliveryemail\":{\"edit\":{\"label\":\"deliveryemail\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"deliveryemail\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"status\",\"searchable\":true,\"sortable\":true}},\"orderdetails\":{\"edit\":{\"label\":\"orderdetails\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"orderdetails\",\"searchable\":false,\"sortable\":false}},\"total\":{\"edit\":{\"label\":\"total\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"total\",\"searchable\":true,\"sortable\":true}},\"ship\":{\"edit\":{\"label\":\"ship\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ship\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"code\",\"size\":4},{\"name\":\"user_id\",\"size\":4}],[{\"name\":\"deliveryaddress\",\"size\":6}],[{\"name\":\"deliveryname\",\"size\":6},{\"name\":\"deliveryphone\",\"size\":4}],[{\"name\":\"deliveryemail\",\"size\":6}],[{\"name\":\"status\",\"size\":4},{\"name\":\"orderdetails\",\"size\":6}],[{\"name\":\"total\",\"size\":4},{\"name\":\"ship\",\"size\":4}]],\"list\":[\"id\",\"code\",\"user_id\",\"deliveryaddress\",\"deliveryemail\",\"deliveryname\",\"deliveryphone\",\"orderdetails\",\"total\",\"status\",\"ship\"]}}', 'object', NULL, NULL),
(32, 'plugin_content_manager_configuration_content_types::api::orderdetail.orderdetail', '{\"uid\":\"api::orderdetail.orderdetail\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"order_id\":{\"edit\":{\"label\":\"order_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"order_id\",\"searchable\":true,\"sortable\":true}},\"price\":{\"edit\":{\"label\":\"price\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"price\",\"searchable\":true,\"sortable\":true}},\"qty\":{\"edit\":{\"label\":\"qty\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"qty\",\"searchable\":true,\"sortable\":true}},\"amount\":{\"edit\":{\"label\":\"amount\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"amount\",\"searchable\":true,\"sortable\":true}},\"product_id\":{\"edit\":{\"label\":\"product_id\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"product_id\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"edit\":[[{\"name\":\"order_id\",\"size\":4},{\"name\":\"price\",\"size\":4}],[{\"name\":\"qty\",\"size\":4},{\"name\":\"amount\",\"size\":4},{\"name\":\"product_id\",\"size\":4}]],\"list\":[\"id\",\"order_id\",\"product_id\",\"price\",\"qty\",\"amount\"]}}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(29, '{\"tables\":[{\"name\":\"strapi_core_store_settings\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"value\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"environment\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tag\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_webhooks\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"headers\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"events\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"enabled\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions\",\"indexes\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"subject\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"properties\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"conditions\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users\",\"indexes\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"firstname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lastname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"registration_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"prefered_language\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_roles\",\"indexes\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_tokens\",\"indexes\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_tokens\",\"indexes\":[{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_token_permissions\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files\",\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null},{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"alternative_text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"caption\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"width\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"height\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"formats\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"hash\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ext\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mime\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"size\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"preview_url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider_metadata\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"folder_path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders\",\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"},{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"i18n_locale\",\"indexes\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions\",\"indexes\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_roles\",\"indexes\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users\",\"indexes\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmation_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"brands\",\"indexes\":[{\"name\":\"brands_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"brands_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"brands_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"brands_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"brand_name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"categories\",\"indexes\":[{\"name\":\"categories_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"categories_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"categories_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"categories_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"category_name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"orders\",\"indexes\":[{\"name\":\"orders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"orders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"orders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"orders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"code\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deliveryaddress\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deliveryname\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deliveryphone\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"deliveryemail\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"status\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"total\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ship\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"orderdetails\",\"indexes\":[{\"name\":\"orderdetails_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"orderdetails_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"orderdetails_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"orderdetails_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"order_id\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"price\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"qty\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"amount\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"posts\",\"indexes\":[{\"name\":\"posts_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"posts_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"posts_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"posts_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"contact\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"detail\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"products\",\"indexes\":[{\"name\":\"products_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"products_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"products_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"products_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"product_name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"detail\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"price\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"sliders\",\"indexes\":[{\"name\":\"sliders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"sliders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"sliders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"sliders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"content\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"method\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_permissions_role_links\",\"indexes\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_permissions_role_links_unique\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_permissions_role_links_order_inv_fk\",\"columns\":[\"permission_order\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users_roles_links\",\"indexes\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_users_roles_links_unique\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_users_roles_links_order_fk\",\"columns\":[\"role_order\"]},{\"name\":\"admin_users_roles_links_order_inv_fk\",\"columns\":[\"user_order\"]}],\"foreignKeys\":[{\"name\":\"admin_users_roles_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_users_roles_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions_token_links\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_token_links_fk\",\"columns\":[\"api_token_permission_id\"]},{\"name\":\"strapi_api_token_permissions_token_links_inv_fk\",\"columns\":[\"api_token_id\"]},{\"name\":\"strapi_api_token_permissions_token_links_unique\",\"columns\":[\"api_token_permission_id\",\"api_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_api_token_permissions_token_links_order_inv_fk\",\"columns\":[\"api_token_permission_order\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_token_links_fk\",\"columns\":[\"api_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_api_token_permissions_token_links_inv_fk\",\"columns\":[\"api_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"api_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_token_permissions_token_links\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_token_links_fk\",\"columns\":[\"transfer_token_permission_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_links_inv_fk\",\"columns\":[\"transfer_token_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_links_unique\",\"columns\":[\"transfer_token_permission_id\",\"transfer_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_transfer_token_permissions_token_links_order_inv_fk\",\"columns\":[\"transfer_token_permission_order\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_token_links_fk\",\"columns\":[\"transfer_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_transfer_token_permissions_token_links_inv_fk\",\"columns\":[\"transfer_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"transfer_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_related_morphs\",\"indexes\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_related_morphs_order_index\",\"columns\":[\"order\"],\"type\":null},{\"name\":\"files_related_morphs_id_column_index\",\"columns\":[\"related_id\"],\"type\":null}],\"foreignKeys\":[{\"name\":\"files_related_morphs_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_folder_links\",\"indexes\":[{\"name\":\"files_folder_links_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_folder_links_inv_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"files_folder_links_unique\",\"columns\":[\"file_id\",\"folder_id\"],\"type\":\"unique\"},{\"name\":\"files_folder_links_order_inv_fk\",\"columns\":[\"file_order\"]}],\"foreignKeys\":[{\"name\":\"files_folder_links_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"},{\"name\":\"files_folder_links_inv_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"file_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders_parent_links\",\"indexes\":[{\"name\":\"upload_folders_parent_links_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"upload_folders_parent_links_inv_fk\",\"columns\":[\"inv_folder_id\"]},{\"name\":\"upload_folders_parent_links_unique\",\"columns\":[\"folder_id\",\"inv_folder_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_parent_links_order_inv_fk\",\"columns\":[\"folder_order\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_parent_links_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"},{\"name\":\"upload_folders_parent_links_inv_fk\",\"columns\":[\"inv_folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions_role_links\",\"indexes\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"up_permissions_role_links_unique\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_permissions_role_links_order_inv_fk\",\"columns\":[\"permission_order\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_role_links_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_permissions_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users_role_links\",\"indexes\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"]},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"]},{\"name\":\"up_users_role_links_unique\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_users_role_links_order_inv_fk\",\"columns\":[\"user_order\"]}],\"foreignKeys\":[{\"name\":\"up_users_role_links_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_users_role_links_inv_fk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"orders_orderdetails_links\",\"indexes\":[{\"name\":\"orders_orderdetails_links_fk\",\"columns\":[\"order_id\"]},{\"name\":\"orders_orderdetails_links_inv_fk\",\"columns\":[\"orderdetail_id\"]},{\"name\":\"orders_orderdetails_links_unique\",\"columns\":[\"order_id\",\"orderdetail_id\"],\"type\":\"unique\"},{\"name\":\"orders_orderdetails_links_order_fk\",\"columns\":[\"orderdetail_order\"]}],\"foreignKeys\":[{\"name\":\"orders_orderdetails_links_fk\",\"columns\":[\"order_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"orders\",\"onDelete\":\"CASCADE\"},{\"name\":\"orders_orderdetails_links_inv_fk\",\"columns\":[\"orderdetail_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"orderdetails\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"order_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"orderdetail_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"orderdetail_order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"products_category_links\",\"indexes\":[{\"name\":\"products_category_links_fk\",\"columns\":[\"product_id\"]},{\"name\":\"products_category_links_inv_fk\",\"columns\":[\"category_id\"]},{\"name\":\"products_category_links_unique\",\"columns\":[\"product_id\",\"category_id\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"products_category_links_fk\",\"columns\":[\"product_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"products\",\"onDelete\":\"CASCADE\"},{\"name\":\"products_category_links_inv_fk\",\"columns\":[\"category_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"categories\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"product_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"category_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]}]}', '2024-01-17 11:03:01', 'c27146dfa8a99f67b3010630cc0f6b1f');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_tokens`
--

CREATE TABLE `strapi_transfer_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_token_permissions`
--

CREATE TABLE `strapi_transfer_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_token_permissions_token_links`
--

CREATE TABLE `strapi_transfer_token_permissions_token_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `url` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headers`)),
  `events` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`events`)),
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders`
--

CREATE TABLE `upload_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `upload_folders`
--

INSERT INTO `upload_folders` (`id`, `name`, `path_id`, `path`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'giày', 1, '/1', '2023-06-07 20:01:27.105000', '2023-06-07 20:01:27.105000', 1, 1),
(2, 'Đá banh', 2, '/2', '2023-06-10 22:28:30.475000', '2023-06-10 22:28:30.475000', 1, 1),
(3, 'API Uploads', 3, '/3', '2023-06-15 13:52:57.744000', '2023-06-22 17:38:23.657000', NULL, 1),
(4, 'CauLong', 4, '/4', '2023-06-28 10:41:12.783000', '2023-06-28 10:41:12.783000', 1, 1),
(5, 'promotion', 5, '/5', '2023-07-13 13:03:56.418000', '2023-07-13 13:03:56.418000', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders_parent_links`
--

CREATE TABLE `upload_folders_parent_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_folder_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `action`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'plugin::users-permissions.user.me', '2023-06-07 18:37:56.467000', '2023-06-07 18:37:56.467000', NULL, NULL),
(2, 'plugin::users-permissions.auth.changePassword', '2023-06-07 18:37:56.467000', '2023-06-07 18:37:56.467000', NULL, NULL),
(3, 'plugin::users-permissions.auth.callback', '2023-06-07 18:37:56.478000', '2023-06-07 18:37:56.478000', NULL, NULL),
(4, 'plugin::users-permissions.auth.sendEmailConfirmation', '2023-06-07 18:37:56.478000', '2023-06-07 18:37:56.478000', NULL, NULL),
(5, 'plugin::users-permissions.auth.emailConfirmation', '2023-06-07 18:37:56.478000', '2023-06-07 18:37:56.478000', NULL, NULL),
(6, 'plugin::users-permissions.auth.register', '2023-06-07 18:37:56.478000', '2023-06-07 18:37:56.478000', NULL, NULL),
(7, 'plugin::users-permissions.auth.resetPassword', '2023-06-07 18:37:56.478000', '2023-06-07 18:37:56.478000', NULL, NULL),
(8, 'plugin::users-permissions.auth.forgotPassword', '2023-06-07 18:37:56.478000', '2023-06-07 18:37:56.478000', NULL, NULL),
(9, 'plugin::users-permissions.auth.connect', '2023-06-07 18:37:56.478000', '2023-06-07 18:37:56.478000', NULL, NULL),
(14, 'api::post.post.find', '2023-06-18 14:28:57.426000', '2023-06-18 14:28:57.426000', NULL, NULL),
(15, 'api::post.post.findOne', '2023-06-18 14:28:57.426000', '2023-06-18 14:28:57.426000', NULL, NULL),
(19, 'api::category.category.findOne', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(20, 'api::category.category.find', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(21, 'api::category.category.create', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(22, 'api::category.category.update', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(23, 'api::category.category.delete', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(24, 'api::post.post.find', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(25, 'api::post.post.findOne', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(26, 'api::post.post.create', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(27, 'api::post.post.update', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(28, 'api::post.post.delete', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(29, 'api::product.product.find', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(30, 'api::product.product.findOne', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(31, 'api::product.product.create', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(32, 'api::product.product.delete', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(33, 'api::product.product.update', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(34, 'plugin::content-type-builder.components.getComponents', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(35, 'plugin::content-type-builder.components.getComponent', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(36, 'plugin::content-type-builder.content-types.getContentTypes', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(37, 'plugin::content-type-builder.content-types.getContentType', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(38, 'plugin::email.email.send', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(39, 'plugin::upload.content-api.find', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(40, 'plugin::upload.content-api.findOne', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(41, 'plugin::upload.content-api.destroy', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(42, 'plugin::upload.content-api.upload', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(43, 'plugin::i18n.locales.listLocales', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(44, 'plugin::users-permissions.auth.callback', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(45, 'plugin::users-permissions.auth.changePassword', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(46, 'plugin::users-permissions.auth.resetPassword', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(47, 'plugin::users-permissions.auth.connect', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(48, 'plugin::users-permissions.auth.forgotPassword', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(49, 'plugin::users-permissions.auth.register', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(50, 'plugin::users-permissions.auth.emailConfirmation', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(51, 'plugin::users-permissions.auth.sendEmailConfirmation', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(52, 'plugin::users-permissions.user.create', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(53, 'plugin::users-permissions.user.update', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(54, 'plugin::users-permissions.user.find', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(55, 'plugin::users-permissions.user.findOne', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(56, 'plugin::users-permissions.user.count', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(57, 'plugin::users-permissions.user.destroy', '2023-06-22 12:51:11.499000', '2023-06-22 12:51:11.499000', NULL, NULL),
(58, 'plugin::users-permissions.user.me', '2023-06-22 12:51:11.500000', '2023-06-22 12:51:11.500000', NULL, NULL),
(59, 'plugin::users-permissions.role.createRole', '2023-06-22 12:51:11.500000', '2023-06-22 12:51:11.500000', NULL, NULL),
(60, 'plugin::users-permissions.role.findOne', '2023-06-22 12:51:11.500000', '2023-06-22 12:51:11.500000', NULL, NULL),
(61, 'plugin::users-permissions.role.find', '2023-06-22 12:51:11.500000', '2023-06-22 12:51:11.500000', NULL, NULL),
(62, 'plugin::users-permissions.role.updateRole', '2023-06-22 12:51:11.500000', '2023-06-22 12:51:11.500000', NULL, NULL),
(63, 'plugin::users-permissions.role.deleteRole', '2023-06-22 12:51:11.500000', '2023-06-22 12:51:11.500000', NULL, NULL),
(64, 'plugin::users-permissions.permissions.getPermissions', '2023-06-22 12:51:11.500000', '2023-06-22 12:51:11.500000', NULL, NULL),
(65, 'api::category.category.find', '2023-06-22 12:53:54.591000', '2023-06-22 12:53:54.591000', NULL, NULL),
(66, 'api::category.category.findOne', '2023-06-22 12:53:54.591000', '2023-06-22 12:53:54.591000', NULL, NULL),
(67, 'api::post.post.find', '2023-06-22 12:53:54.591000', '2023-06-22 12:53:54.591000', NULL, NULL),
(68, 'api::post.post.findOne', '2023-06-22 12:53:54.591000', '2023-06-22 12:53:54.591000', NULL, NULL),
(69, 'api::product.product.find', '2023-06-22 12:53:54.591000', '2023-06-22 12:53:54.591000', NULL, NULL),
(70, 'api::product.product.findOne', '2023-06-22 12:53:54.591000', '2023-06-22 12:53:54.591000', NULL, NULL),
(71, 'api::category.category.find', '2023-06-22 12:55:34.633000', '2023-06-22 12:55:34.633000', NULL, NULL),
(72, 'api::category.category.findOne', '2023-06-22 12:55:34.633000', '2023-06-22 12:55:34.633000', NULL, NULL),
(73, 'api::product.product.find', '2023-06-22 12:55:34.633000', '2023-06-22 12:55:34.633000', NULL, NULL),
(74, 'api::product.product.findOne', '2023-06-22 12:55:34.633000', '2023-06-22 12:55:34.633000', NULL, NULL),
(75, 'plugin::email.email.send', '2023-06-22 12:55:34.633000', '2023-06-22 12:55:34.633000', NULL, NULL),
(76, 'plugin::users-permissions.user.findOne', '2023-06-22 15:55:53.764000', '2023-06-22 15:55:53.764000', NULL, NULL),
(77, 'plugin::users-permissions.user.find', '2023-06-22 15:55:53.764000', '2023-06-22 15:55:53.764000', NULL, NULL),
(78, 'plugin::users-permissions.role.find', '2023-06-22 15:55:53.764000', '2023-06-22 15:55:53.764000', NULL, NULL),
(79, 'plugin::users-permissions.role.findOne', '2023-06-22 15:55:53.764000', '2023-06-22 15:55:53.764000', NULL, NULL),
(80, 'plugin::upload.content-api.find', '2023-06-22 17:39:05.996000', '2023-06-22 17:39:05.996000', NULL, NULL),
(81, 'plugin::upload.content-api.findOne', '2023-06-22 17:39:05.996000', '2023-06-22 17:39:05.996000', NULL, NULL),
(82, 'plugin::upload.content-api.destroy', '2023-06-22 17:39:05.996000', '2023-06-22 17:39:05.996000', NULL, NULL),
(83, 'plugin::upload.content-api.upload', '2023-06-22 17:39:05.996000', '2023-06-22 17:39:05.996000', NULL, NULL),
(90, 'api::brand.brand.find', '2023-07-13 12:29:05.183000', '2023-07-13 12:29:05.183000', NULL, NULL),
(91, 'api::brand.brand.findOne', '2023-07-13 12:29:05.183000', '2023-07-13 12:29:05.183000', NULL, NULL),
(92, 'plugin::content-type-builder.components.getComponents', '2023-07-13 12:30:47.720000', '2023-07-13 12:30:47.720000', NULL, NULL),
(93, 'plugin::content-type-builder.components.getComponent', '2023-07-13 12:30:47.721000', '2023-07-13 12:30:47.721000', NULL, NULL),
(94, 'plugin::content-type-builder.content-types.getContentTypes', '2023-07-13 12:30:47.721000', '2023-07-13 12:30:47.721000', NULL, NULL),
(95, 'plugin::content-type-builder.content-types.getContentType', '2023-07-13 12:30:47.721000', '2023-07-13 12:30:47.721000', NULL, NULL),
(96, 'plugin::email.email.send', '2023-07-13 12:30:47.721000', '2023-07-13 12:30:47.721000', NULL, NULL),
(97, 'plugin::upload.content-api.find', '2023-07-13 12:30:47.721000', '2023-07-13 12:30:47.721000', NULL, NULL),
(98, 'plugin::upload.content-api.upload', '2023-07-13 12:30:47.721000', '2023-07-13 12:30:47.721000', NULL, NULL),
(99, 'plugin::upload.content-api.findOne', '2023-07-13 12:30:47.721000', '2023-07-13 12:30:47.721000', NULL, NULL),
(100, 'plugin::upload.content-api.destroy', '2023-07-13 12:30:47.721000', '2023-07-13 12:30:47.721000', NULL, NULL),
(101, 'plugin::i18n.locales.listLocales', '2023-07-13 12:30:47.721000', '2023-07-13 12:30:47.721000', NULL, NULL),
(102, 'plugin::users-permissions.auth.callback', '2023-07-13 12:31:03.361000', '2023-07-13 12:31:03.361000', NULL, NULL),
(103, 'plugin::users-permissions.auth.resetPassword', '2023-07-13 12:31:03.361000', '2023-07-13 12:31:03.361000', NULL, NULL),
(104, 'plugin::users-permissions.auth.connect', '2023-07-13 12:31:03.361000', '2023-07-13 12:31:03.361000', NULL, NULL),
(105, 'plugin::users-permissions.auth.forgotPassword', '2023-07-13 12:31:03.361000', '2023-07-13 12:31:03.361000', NULL, NULL),
(106, 'plugin::users-permissions.auth.register', '2023-07-13 12:31:03.361000', '2023-07-13 12:31:03.361000', NULL, NULL),
(107, 'plugin::users-permissions.auth.emailConfirmation', '2023-07-13 12:31:03.361000', '2023-07-13 12:31:03.361000', NULL, NULL),
(108, 'plugin::users-permissions.auth.sendEmailConfirmation', '2023-07-13 12:31:03.361000', '2023-07-13 12:31:03.361000', NULL, NULL),
(109, 'plugin::users-permissions.user.create', '2023-07-13 12:31:03.361000', '2023-07-13 12:31:03.361000', NULL, NULL),
(110, 'plugin::users-permissions.user.update', '2023-07-13 12:31:03.361000', '2023-07-13 12:31:03.361000', NULL, NULL),
(111, 'plugin::users-permissions.user.count', '2023-07-13 12:31:03.361000', '2023-07-13 12:31:03.361000', NULL, NULL),
(112, 'plugin::users-permissions.user.destroy', '2023-07-13 12:31:03.361000', '2023-07-13 12:31:03.361000', NULL, NULL),
(113, 'plugin::users-permissions.role.createRole', '2023-07-13 12:31:03.361000', '2023-07-13 12:31:03.361000', NULL, NULL),
(114, 'plugin::users-permissions.role.updateRole', '2023-07-13 12:31:03.361000', '2023-07-13 12:31:03.361000', NULL, NULL),
(115, 'plugin::users-permissions.role.deleteRole', '2023-07-13 12:31:03.361000', '2023-07-13 12:31:03.361000', NULL, NULL),
(116, 'plugin::users-permissions.permissions.getPermissions', '2023-07-13 12:31:03.361000', '2023-07-13 12:31:03.361000', NULL, NULL),
(117, 'api::slider.slider.find', '2023-07-13 13:02:30.171000', '2023-07-13 13:02:30.171000', NULL, NULL),
(118, 'api::slider.slider.findOne', '2023-07-13 13:02:30.171000', '2023-07-13 13:02:30.171000', NULL, NULL),
(119, 'api::brand.brand.delete', '2023-07-14 15:53:14.940000', '2023-07-14 15:53:14.940000', NULL, NULL),
(120, 'api::brand.brand.update', '2023-07-14 15:53:14.940000', '2023-07-14 15:53:14.940000', NULL, NULL),
(121, 'api::brand.brand.create', '2023-07-14 15:53:14.940000', '2023-07-14 15:53:14.940000', NULL, NULL),
(122, 'api::category.category.create', '2023-07-14 15:53:35.284000', '2023-07-14 15:53:35.284000', NULL, NULL),
(123, 'api::category.category.update', '2023-07-14 15:53:35.284000', '2023-07-14 15:53:35.284000', NULL, NULL),
(124, 'api::category.category.delete', '2023-07-14 15:53:35.284000', '2023-07-14 15:53:35.284000', NULL, NULL),
(125, 'api::post.post.create', '2023-07-14 15:53:35.284000', '2023-07-14 15:53:35.284000', NULL, NULL),
(126, 'api::post.post.update', '2023-07-14 15:53:35.284000', '2023-07-14 15:53:35.284000', NULL, NULL),
(127, 'api::post.post.delete', '2023-07-14 15:53:35.284000', '2023-07-14 15:53:35.284000', NULL, NULL),
(128, 'api::product.product.create', '2023-07-14 15:53:35.284000', '2023-07-14 15:53:35.284000', NULL, NULL),
(129, 'api::product.product.update', '2023-07-14 15:53:35.284000', '2023-07-14 15:53:35.284000', NULL, NULL),
(130, 'api::product.product.delete', '2023-07-14 15:53:35.284000', '2023-07-14 15:53:35.284000', NULL, NULL),
(131, 'api::slider.slider.find', '2023-07-14 15:53:35.284000', '2023-07-14 15:53:35.284000', NULL, NULL),
(132, 'api::slider.slider.findOne', '2023-07-14 15:53:35.284000', '2023-07-14 15:53:35.284000', NULL, NULL),
(133, 'api::slider.slider.create', '2023-07-14 15:53:35.284000', '2023-07-14 15:53:35.284000', NULL, NULL),
(134, 'api::slider.slider.delete', '2023-07-14 15:53:35.284000', '2023-07-14 15:53:35.284000', NULL, NULL),
(135, 'api::slider.slider.update', '2023-07-14 15:53:35.284000', '2023-07-14 15:53:35.284000', NULL, NULL),
(136, 'api::order.order.find', '2023-07-15 11:21:39.058000', '2023-07-15 11:21:39.058000', NULL, NULL),
(137, 'api::order.order.findOne', '2023-07-15 11:21:39.058000', '2023-07-15 11:21:39.058000', NULL, NULL),
(138, 'api::order.order.create', '2023-07-15 11:21:39.058000', '2023-07-15 11:21:39.058000', NULL, NULL),
(139, 'api::order.order.update', '2023-07-15 11:21:39.058000', '2023-07-15 11:21:39.058000', NULL, NULL),
(140, 'api::orderdetail.orderdetail.find', '2023-07-15 11:21:39.058000', '2023-07-15 11:21:39.058000', NULL, NULL),
(141, 'api::order.order.delete', '2023-07-15 11:21:39.058000', '2023-07-15 11:21:39.058000', NULL, NULL),
(142, 'api::orderdetail.orderdetail.findOne', '2023-07-15 11:21:39.058000', '2023-07-15 11:21:39.058000', NULL, NULL),
(143, 'api::orderdetail.orderdetail.delete', '2023-07-15 11:21:39.058000', '2023-07-15 11:21:39.058000', NULL, NULL),
(144, 'api::orderdetail.orderdetail.update', '2023-07-15 11:21:39.058000', '2023-07-15 11:21:39.058000', NULL, NULL),
(145, 'api::orderdetail.orderdetail.create', '2023-07-15 11:21:39.058000', '2023-07-15 11:21:39.058000', NULL, NULL),
(146, 'api::brand.brand.find', '2023-07-15 11:41:57.802000', '2023-07-15 11:41:57.802000', NULL, NULL),
(147, 'api::brand.brand.findOne', '2023-07-15 11:41:57.802000', '2023-07-15 11:41:57.802000', NULL, NULL),
(148, 'api::brand.brand.create', '2023-07-15 11:41:57.802000', '2023-07-15 11:41:57.802000', NULL, NULL),
(149, 'api::brand.brand.update', '2023-07-15 11:41:57.802000', '2023-07-15 11:41:57.802000', NULL, NULL),
(150, 'api::brand.brand.delete', '2023-07-15 11:41:57.802000', '2023-07-15 11:41:57.802000', NULL, NULL),
(151, 'api::order.order.findOne', '2023-07-15 11:41:57.802000', '2023-07-15 11:41:57.802000', NULL, NULL),
(152, 'api::order.order.find', '2023-07-15 11:41:57.802000', '2023-07-15 11:41:57.802000', NULL, NULL),
(153, 'api::order.order.create', '2023-07-15 11:41:57.802000', '2023-07-15 11:41:57.802000', NULL, NULL),
(154, 'api::order.order.update', '2023-07-15 11:41:57.802000', '2023-07-15 11:41:57.802000', NULL, NULL),
(155, 'api::order.order.delete', '2023-07-15 11:41:57.802000', '2023-07-15 11:41:57.802000', NULL, NULL),
(156, 'api::orderdetail.orderdetail.find', '2023-07-15 11:41:57.802000', '2023-07-15 11:41:57.802000', NULL, NULL),
(157, 'api::orderdetail.orderdetail.findOne', '2023-07-15 11:41:57.802000', '2023-07-15 11:41:57.802000', NULL, NULL),
(158, 'api::orderdetail.orderdetail.create', '2023-07-15 11:41:57.802000', '2023-07-15 11:41:57.802000', NULL, NULL),
(159, 'api::orderdetail.orderdetail.delete', '2023-07-15 11:41:57.802000', '2023-07-15 11:41:57.802000', NULL, NULL),
(160, 'api::orderdetail.orderdetail.update', '2023-07-15 11:41:57.802000', '2023-07-15 11:41:57.802000', NULL, NULL),
(161, 'api::slider.slider.find', '2023-07-15 11:41:57.802000', '2023-07-15 11:41:57.802000', NULL, NULL),
(162, 'api::slider.slider.findOne', '2023-07-15 11:41:57.802000', '2023-07-15 11:41:57.802000', NULL, NULL),
(163, 'api::slider.slider.create', '2023-07-15 11:41:57.802000', '2023-07-15 11:41:57.802000', NULL, NULL),
(164, 'api::slider.slider.update', '2023-07-15 11:41:57.802000', '2023-07-15 11:41:57.802000', NULL, NULL),
(165, 'api::slider.slider.delete', '2023-07-15 11:41:57.802000', '2023-07-15 11:41:57.802000', NULL, NULL),
(166, 'api::brand.brand.create', '2024-01-14 17:01:11.551000', '2024-01-14 17:01:11.551000', NULL, NULL),
(167, 'api::brand.brand.findOne', '2024-01-14 17:01:11.551000', '2024-01-14 17:01:11.551000', NULL, NULL),
(168, 'api::brand.brand.find', '2024-01-14 17:01:11.551000', '2024-01-14 17:01:11.551000', NULL, NULL),
(169, 'api::category.category.create', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(170, 'api::category.category.delete', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(171, 'api::brand.brand.delete', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(172, 'api::category.category.update', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(173, 'api::brand.brand.update', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(174, 'api::order.order.findOne', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(175, 'api::order.order.find', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(176, 'api::order.order.create', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(177, 'api::order.order.update', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(178, 'api::order.order.delete', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(179, 'api::orderdetail.orderdetail.find', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(180, 'api::orderdetail.orderdetail.findOne', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(181, 'api::orderdetail.orderdetail.create', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(182, 'api::orderdetail.orderdetail.update', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(183, 'api::orderdetail.orderdetail.delete', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(184, 'api::post.post.create', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(185, 'api::post.post.update', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(186, 'api::post.post.delete', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(187, 'api::product.product.create', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(188, 'api::product.product.update', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(189, 'api::product.product.delete', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(190, 'api::slider.slider.create', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(191, 'api::slider.slider.update', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(192, 'api::slider.slider.delete', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(193, 'plugin::content-type-builder.components.getComponents', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(194, 'plugin::content-type-builder.content-types.getContentTypes', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(195, 'plugin::content-type-builder.components.getComponent', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(196, 'plugin::content-type-builder.content-types.getContentType', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(197, 'plugin::i18n.locales.listLocales', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(198, 'plugin::users-permissions.auth.changePassword', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(199, 'plugin::users-permissions.user.create', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(200, 'plugin::users-permissions.user.find', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(201, 'plugin::users-permissions.user.update', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(202, 'plugin::users-permissions.user.findOne', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(203, 'plugin::users-permissions.user.count', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(204, 'plugin::users-permissions.user.destroy', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(205, 'plugin::users-permissions.user.me', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(206, 'plugin::users-permissions.role.createRole', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(207, 'plugin::users-permissions.role.findOne', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(208, 'plugin::users-permissions.role.find', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(209, 'plugin::users-permissions.role.updateRole', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(210, 'plugin::users-permissions.role.deleteRole', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL),
(211, 'plugin::users-permissions.permissions.getPermissions', '2024-01-14 17:01:11.552000', '2024-01-14 17:01:11.552000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions_role_links`
--

CREATE TABLE `up_permissions_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `up_permissions_role_links`
--

INSERT INTO `up_permissions_role_links` (`id`, `permission_id`, `role_id`, `permission_order`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 2),
(3, 3, 2, 1),
(4, 9, 2, 2),
(5, 8, 2, 2),
(6, 6, 2, 3),
(7, 4, 2, 4),
(8, 5, 2, 5),
(9, 7, 2, 6),
(14, 14, 2, 9),
(15, 15, 2, 9),
(19, 19, 3, 1),
(20, 23, 3, 1),
(21, 26, 3, 1),
(22, 22, 3, 1),
(23, 32, 3, 1),
(24, 25, 3, 1),
(25, 20, 3, 1),
(26, 24, 3, 1),
(27, 21, 3, 1),
(28, 27, 3, 1),
(29, 28, 3, 2),
(30, 29, 3, 2),
(31, 30, 3, 2),
(32, 31, 3, 2),
(33, 33, 3, 2),
(34, 34, 3, 2),
(35, 35, 3, 2),
(36, 36, 3, 2),
(37, 37, 3, 2),
(38, 38, 3, 2),
(39, 39, 3, 3),
(40, 40, 3, 3),
(41, 41, 3, 3),
(42, 42, 3, 3),
(43, 43, 3, 3),
(44, 44, 3, 3),
(45, 46, 3, 3),
(46, 45, 3, 3),
(47, 47, 3, 3),
(48, 48, 3, 3),
(49, 49, 3, 4),
(50, 50, 3, 4),
(51, 51, 3, 4),
(52, 52, 3, 4),
(53, 53, 3, 4),
(54, 54, 3, 4),
(55, 55, 3, 4),
(56, 56, 3, 4),
(57, 57, 3, 4),
(58, 58, 3, 4),
(59, 59, 3, 5),
(60, 60, 3, 5),
(61, 61, 3, 5),
(62, 62, 3, 5),
(63, 63, 3, 5),
(64, 64, 3, 5),
(65, 65, 1, 3),
(66, 66, 1, 3),
(67, 67, 1, 3),
(68, 68, 1, 3),
(69, 69, 1, 3),
(70, 70, 1, 3),
(71, 71, 2, 10),
(72, 72, 2, 10),
(73, 74, 2, 10),
(74, 73, 2, 10),
(75, 75, 2, 10),
(76, 76, 1, 4),
(77, 77, 1, 4),
(78, 78, 1, 4),
(79, 79, 1, 5),
(80, 81, 2, 11),
(81, 80, 2, 11),
(82, 82, 2, 11),
(83, 83, 2, 11),
(90, 90, 1, 6),
(91, 91, 1, 6),
(92, 92, 1, 7),
(93, 93, 1, 7),
(94, 94, 1, 7),
(95, 95, 1, 7),
(96, 96, 1, 7),
(97, 97, 1, 7),
(98, 98, 1, 7),
(99, 99, 1, 7),
(100, 100, 1, 7),
(101, 101, 1, 7),
(102, 102, 1, 8),
(103, 103, 1, 8),
(104, 104, 1, 8),
(105, 105, 1, 8),
(106, 107, 1, 8),
(107, 106, 1, 8),
(108, 108, 1, 8),
(109, 109, 1, 8),
(110, 110, 1, 8),
(111, 111, 1, 8),
(112, 112, 1, 9),
(113, 113, 1, 9),
(114, 114, 1, 9),
(115, 115, 1, 9),
(116, 116, 1, 9),
(117, 117, 2, 12),
(118, 118, 2, 12),
(119, 121, 1, 10),
(120, 120, 1, 10),
(121, 119, 1, 10),
(122, 122, 1, 11),
(123, 123, 1, 11),
(124, 124, 1, 11),
(125, 125, 1, 11),
(126, 126, 1, 11),
(127, 127, 1, 11),
(128, 128, 1, 11),
(129, 129, 1, 11),
(130, 130, 1, 11),
(131, 131, 1, 11),
(132, 132, 1, 12),
(133, 133, 1, 12),
(134, 134, 1, 12),
(135, 135, 1, 12),
(136, 137, 1, 13),
(137, 136, 1, 13),
(138, 138, 1, 13),
(139, 139, 1, 13),
(140, 140, 1, 13),
(141, 141, 1, 13),
(142, 143, 1, 13),
(143, 144, 1, 13),
(144, 142, 1, 13),
(145, 145, 1, 13),
(146, 146, 3, 6),
(147, 147, 3, 6),
(148, 148, 3, 6),
(149, 149, 3, 6),
(150, 150, 3, 6),
(151, 153, 3, 6),
(152, 151, 3, 6),
(153, 152, 3, 6),
(154, 158, 3, 6),
(155, 154, 3, 6),
(156, 155, 3, 7),
(157, 156, 3, 7),
(158, 157, 3, 7),
(159, 159, 3, 7),
(160, 160, 3, 7),
(161, 161, 3, 7),
(162, 162, 3, 7),
(163, 163, 3, 7),
(164, 164, 3, 7),
(165, 165, 3, 7),
(166, 166, 2, 13),
(167, 167, 2, 13),
(168, 168, 2, 13),
(169, 169, 2, 13),
(170, 172, 2, 13),
(171, 174, 2, 13),
(172, 175, 2, 13),
(173, 176, 2, 13),
(174, 178, 2, 13),
(175, 170, 2, 13),
(176, 179, 2, 14),
(177, 181, 2, 14),
(178, 171, 2, 14),
(179, 173, 2, 14),
(180, 182, 2, 14),
(181, 177, 2, 14),
(182, 180, 2, 14),
(183, 184, 2, 14),
(184, 183, 2, 14),
(185, 185, 2, 14),
(186, 186, 2, 15),
(187, 188, 2, 15),
(188, 189, 2, 15),
(189, 191, 2, 15),
(190, 192, 2, 15),
(191, 193, 2, 15),
(192, 190, 2, 15),
(193, 187, 2, 15),
(194, 196, 2, 15),
(195, 199, 2, 16),
(196, 194, 2, 16),
(197, 197, 2, 16),
(198, 195, 2, 17),
(199, 198, 2, 17),
(200, 200, 2, 17),
(201, 201, 2, 17),
(202, 202, 2, 17),
(203, 203, 2, 17),
(204, 205, 2, 17),
(205, 204, 2, 17),
(206, 206, 2, 18),
(207, 207, 2, 18),
(208, 208, 2, 18),
(209, 210, 2, 18),
(210, 209, 2, 18),
(211, 211, 2, 18);

-- --------------------------------------------------------

--
-- Table structure for table `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `up_roles`
--

INSERT INTO `up_roles` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2023-06-07 18:37:56.444000', '2023-07-15 11:21:39.051000', NULL, NULL),
(2, 'Public', 'Default role given to unauthenticated user.', 'public', '2023-06-07 18:37:56.452000', '2024-01-14 17:01:11.538000', NULL, NULL),
(3, 'admin', 'dành cho trang quản trị', 'admin', '2023-06-22 12:51:11.495000', '2023-07-15 11:41:57.797000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users`
--

CREATE TABLE `up_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `up_users`
--

INSERT INTO `up_users` (`id`, `username`, `email`, `provider`, `password`, `reset_password_token`, `confirmation_token`, `confirmed`, `blocked`, `created_at`, `updated_at`, `created_by_id`, `updated_by_id`) VALUES
(10, 'thienadmin', 'hhtvlogs275@gmail.com', 'local', '$2a$10$e0BUsh6MNDVu/61wH7PsjuObBPibl9OBNVmKaUkDmlTqKhy90Z65i', NULL, NULL, 1, 0, '2023-06-22 16:05:51.835000', '2023-06-22 16:05:51.835000', NULL, NULL),
(11, 'taikhoan1', 'huynhthien91007@gmail.com', 'local', '$2a$10$1w1pyEBlO2DeQHBzkzy2du/3Dw3E/oEIQ344IMWomgbTBYyp9F0Zm', NULL, NULL, 1, 0, '2023-06-22 16:16:10.983000', '2023-06-22 16:16:10.983000', NULL, NULL),
(12, 'admin2222', 'huynhthiaaa@gmail.com', 'local', '$2a$10$Ftv5SuX8zAGsRCCK3FH78.ea4d.HPuKiwu1PsLPlp8IQ4kNcPrNKG', NULL, NULL, 1, 0, '2023-07-13 12:23:21.020000', '2023-07-13 12:23:21.020000', NULL, NULL),
(13, 'taikhoan22', 'huynhtsadhien91007@gmail.com', 'local', '$2a$10$hsODphmJtB54YEJN0oOwb.bulc54eAUCOX1HM.954mXAcMC9pYgwK', NULL, NULL, 1, 0, '2023-07-13 12:26:45.403000', '2023-07-13 12:26:45.403000', NULL, NULL),
(16, 'test', 'test@gmail.com', 'local', '$2a$10$snkjdeWP8x0U1RCp8NFQd.X8pzLPhVJYMv8woPAmCu/0jgfelvF6C', NULL, NULL, 1, 0, '2023-07-22 11:51:58.669000', '2023-07-22 11:51:58.669000', NULL, NULL),
(17, 'test1', 'test1@gmail.com', 'local', '$2a$10$4CvuBH/IqGvQkBvPyIb2e.OAas0yGKTQ5m32dOjpsUBuNj5.YDEjK', NULL, NULL, 1, 0, '2023-07-22 11:56:15.749000', '2023-07-22 11:56:15.749000', NULL, NULL),
(19, 'test123', 'abcdefghigk@gmail.com', 'local', '$2a$10$KJ5xvbGDOilrhrNKQnCLg.UDVXqg8I9cZ/Yn9yXnCCYJXccESU0cW', NULL, NULL, 1, 0, '2023-07-22 13:22:49.324000', '2023-07-22 13:22:49.324000', NULL, NULL),
(20, 'teoteote215223â', 'hhtvlogs27s5@gmail.com', 'local', '$2a$10$W.8b6b.TNwVK5OlhnCWd1eIb3.UHTelxYD/aqdbowUc/FDRKaBMSO', NULL, NULL, 1, 0, '2023-07-22 14:10:46.935000', '2023-07-22 14:10:46.935000', NULL, NULL),
(21, 'test1234', 'test1234@gmail.com', 'local', '$2a$10$1mVp1jYe7Bd9tLyYWs0C7OAV0.smaSuyVe/iqZZbnKxSx3Zj6tKKa', NULL, NULL, 1, 0, '2023-07-22 14:13:06.605000', '2023-07-22 14:13:06.605000', NULL, NULL),
(22, 'adddd', 'abcdfs@gmail.com', 'local', '$2a$10$PoYzG4sGm5qVqaDeYBGKweVkCntR5t8V5nT4e8LWuraCseea1hsPW', NULL, NULL, 1, 0, '2023-07-28 09:47:18.858000', '2023-07-28 09:47:18.858000', NULL, NULL),
(23, 'fefrewr', 'hhtvwlogs275@gmail.com', 'local', '$2a$10$5k/JlcUkjvlTRPDpFJpdveiXSnHAxnFi8BqCmZW570DjoW2Ti4c0u', NULL, NULL, 1, 0, '2023-08-22 15:42:51.051000', '2023-08-22 15:42:51.051000', NULL, NULL),
(24, 'doan', 'hhtvlogs275s@gmail.com', 'local', '$2a$10$ISKnBgRy0AGAc8k3kFGQT.ZCv3.ce5TNJQzi.rSZVk9Nvv3jaxFIS', NULL, NULL, 1, 0, '2024-01-14 17:03:12.550000', '2024-01-14 17:03:12.550000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users_role_links`
--

CREATE TABLE `up_users_role_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `up_users_role_links`
--

INSERT INTO `up_users_role_links` (`id`, `user_id`, `role_id`, `user_order`) VALUES
(10, 10, 3, 1),
(11, 11, 1, 1),
(12, 12, 1, 2),
(13, 13, 1, 3),
(16, 16, 1, 6),
(17, 17, 1, 7),
(19, 19, 1, 9),
(20, 20, 1, 10),
(21, 21, 1, 11),
(22, 22, 1, 12),
(23, 23, 1, 13),
(24, 24, 1, 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `admin_permissions_role_links_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `admin_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_roles_links_unique` (`user_id`,`role_id`),
  ADD KEY `admin_users_roles_links_fk` (`user_id`),
  ADD KEY `admin_users_roles_links_inv_fk` (`role_id`),
  ADD KEY `admin_users_roles_links_order_fk` (`role_order`),
  ADD KEY `admin_users_roles_links_order_inv_fk` (`user_order`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_created_by_id_fk` (`created_by_id`),
  ADD KEY `brands_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_created_by_id_fk` (`created_by_id`),
  ADD KEY `categories_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_files_folder_path_index` (`folder_path`),
  ADD KEY `upload_files_created_at_index` (`created_at`),
  ADD KEY `upload_files_updated_at_index` (`updated_at`),
  ADD KEY `upload_files_name_index` (`name`),
  ADD KEY `upload_files_size_index` (`size`),
  ADD KEY `upload_files_ext_index` (`ext`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `files_folder_links_unique` (`file_id`,`folder_id`),
  ADD KEY `files_folder_links_fk` (`file_id`),
  ADD KEY `files_folder_links_inv_fk` (`folder_id`),
  ADD KEY `files_folder_links_order_inv_fk` (`file_order`);

--
-- Indexes for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_related_morphs_fk` (`file_id`),
  ADD KEY `files_related_morphs_order_index` (`order`),
  ADD KEY `files_related_morphs_id_column_index` (`related_id`);

--
-- Indexes for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderdetails_created_by_id_fk` (`created_by_id`),
  ADD KEY `orderdetails_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_created_by_id_fk` (`created_by_id`),
  ADD KEY `orders_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `orders_orderdetails_links`
--
ALTER TABLE `orders_orderdetails_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_orderdetails_links_unique` (`order_id`,`orderdetail_id`),
  ADD KEY `orders_orderdetails_links_fk` (`order_id`),
  ADD KEY `orders_orderdetails_links_inv_fk` (`orderdetail_id`),
  ADD KEY `orders_orderdetails_links_order_fk` (`orderdetail_order`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_created_by_id_fk` (`created_by_id`),
  ADD KEY `posts_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_created_by_id_fk` (`created_by_id`),
  ADD KEY `products_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `products_category_links`
--
ALTER TABLE `products_category_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_category_links_unique` (`product_id`,`category_id`),
  ADD KEY `products_category_links_fk` (`product_id`),
  ADD KEY `products_category_links_inv_fk` (`category_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_created_by_id_fk` (`created_by_id`),
  ADD KEY `sliders_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_api_token_permissions_token_links_unique` (`api_token_permission_id`,`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_fk` (`api_token_permission_id`),
  ADD KEY `strapi_api_token_permissions_token_links_inv_fk` (`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_links_order_inv_fk` (`api_token_permission_order`);

--
-- Indexes for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_transfer_token_permissions_token_links_unique` (`transfer_token_permission_id`,`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_fk` (`transfer_token_permission_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_inv_fk` (`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_links_order_inv_fk` (`transfer_token_permission_order`);

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  ADD UNIQUE KEY `upload_folders_path_index` (`path`),
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_parent_links_unique` (`folder_id`,`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_fk` (`folder_id`),
  ADD KEY `upload_folders_parent_links_inv_fk` (`inv_folder_id`),
  ADD KEY `upload_folders_parent_links_order_inv_fk` (`folder_order`);

--
-- Indexes for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_permissions_role_links_unique` (`permission_id`,`role_id`),
  ADD KEY `up_permissions_role_links_fk` (`permission_id`),
  ADD KEY `up_permissions_role_links_inv_fk` (`role_id`),
  ADD KEY `up_permissions_role_links_order_inv_fk` (`permission_order`);

--
-- Indexes for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_users_role_links_unique` (`user_id`,`role_id`),
  ADD KEY `up_users_role_links_fk` (`user_id`),
  ADD KEY `up_users_role_links_inv_fk` (`role_id`),
  ADD KEY `up_users_role_links_order_inv_fk` (`user_order`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;

--
-- AUTO_INCREMENT for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=274;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT for table `orders_orderdetails_links`
--
ALTER TABLE `orders_orderdetails_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `products_category_links`
--
ALTER TABLE `products_category_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_permissions_role_links`
--
ALTER TABLE `admin_permissions_role_links`
  ADD CONSTRAINT `admin_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users_roles_links`
--
ALTER TABLE `admin_users_roles_links`
  ADD CONSTRAINT `admin_users_roles_links_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `brands_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files_folder_links`
--
ALTER TABLE `files_folder_links`
  ADD CONSTRAINT `files_folder_links_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_links_inv_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files_related_morphs`
--
ALTER TABLE `files_related_morphs`
  ADD CONSTRAINT `files_related_morphs_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orderdetails_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `orders_orderdetails_links`
--
ALTER TABLE `orders_orderdetails_links`
  ADD CONSTRAINT `orders_orderdetails_links_fk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_orderdetails_links_inv_fk` FOREIGN KEY (`orderdetail_id`) REFERENCES `orderdetails` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `posts_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `products_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `products_category_links`
--
ALTER TABLE `products_category_links`
  ADD CONSTRAINT `products_category_links_fk` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_links_inv_fk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sliders`
--
ALTER TABLE `sliders`
  ADD CONSTRAINT `sliders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `sliders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions_token_links`
--
ALTER TABLE `strapi_api_token_permissions_token_links`
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_api_token_permissions_token_links_inv_fk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD CONSTRAINT `strapi_transfer_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD CONSTRAINT `strapi_transfer_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_transfer_token_permissions_token_links`
--
ALTER TABLE `strapi_transfer_token_permissions_token_links`
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_fk` FOREIGN KEY (`transfer_token_permission_id`) REFERENCES `strapi_transfer_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_links_inv_fk` FOREIGN KEY (`transfer_token_id`) REFERENCES `strapi_transfer_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `upload_folders_parent_links`
--
ALTER TABLE `upload_folders_parent_links`
  ADD CONSTRAINT `upload_folders_parent_links_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_links_inv_fk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_permissions_role_links`
--
ALTER TABLE `up_permissions_role_links`
  ADD CONSTRAINT `up_permissions_role_links_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users_role_links`
--
ALTER TABLE `up_users_role_links`
  ADD CONSTRAINT `up_users_role_links_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_links_inv_fk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
