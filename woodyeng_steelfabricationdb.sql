-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 18, 2022 at 12:11 PM
-- Server version: 5.7.37-log-cll-lve
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `woodyeng_steelfabricationdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_jp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `description_jp` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `publish_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpublish',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `title_jp`, `description`, `description_jp`, `image`, `user_id`, `publish_status`, `created_at`, `updated_at`) VALUES
(5, 'Container House', 'コンテナハウス', 'Container house based on 20 feet and 40, use shiping container', '20フィート40フィートのコンテナハウス、輸送用コンテナを使用', 'uploads/images/category/1711383299852826.jpg', 1, 'publish', '2021-09-19 17:44:58', NULL),
(6, 'Steel Building', '鉄骨造', 'Steel Buildings stands apart from and above the rest, based primarily on our ability to offer cost-effective metal building kits of the highest quality.', 'Steel Buildingsは、主に最高品質の費用効果の高い金属製の建物キットを提供する当社の能力に基づいて、他の建物とは一線を画しています', 'uploads/images/category/1711383668576993.jpg', 1, 'publish', '2021-09-19 17:50:50', NULL),
(7, 'Paint for anti rust', '防錆塗料', 'we carefully paint as requirement of customer in our paint workshop', '塗装工場ではお客様のご要望に応じて丁寧に塗装しております', 'uploads/images/category/1711384030465652.jpg', 1, 'publish', '2021-09-19 17:56:35', NULL),
(8, 'Steel Structure Warehouse', '鉄骨構造倉庫', 'Steel structure warehouses can save construction costs and workers\' costs, compared with traditional concrete warehouses. The cost of building a steel structure warehouse is 30% to 40% lower than a typical warehouse construction cost, and it is more secure and stable', '鉄骨構造の倉庫は、従来のコンクリート倉庫と比較して、建設費と労働者の費用を節約できます。鉄骨構造の倉庫を建設するコストは、通常の倉庫建設コストよりも30％から40％低く、より安全で安定しています', 'uploads/images/category/1711384203758967.jpg', 1, 'publish', '2021-09-19 17:59:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_mails`
--

CREATE TABLE `customer_mails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companyname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `delete_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(48, '2021_09_07_044300_create_sessions_table', 1),
(155, '2014_10_12_000000_create_users_table', 2),
(156, '2014_10_12_100000_create_password_resets_table', 2),
(157, '2019_08_19_000000_create_failed_jobs_table', 2),
(158, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(159, '2021_09_02_022027_create_categories_table', 2),
(160, '2021_09_02_022059_create_products_table', 2),
(161, '2021_09_02_022150_create_product_multiple_images_table', 2),
(162, '2021_09_02_031447_create_product_multiple_videos_table', 2),
(163, '2021_09_08_065335_create_customer_mails_table', 2),
(164, '2021_09_09_022454_create_contacts_table', 2),
(165, '2021_09_09_232830_create_our_projects_table', 2),
(166, '2021_09_10_231516_create_sliders_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `our_projects`
--

CREATE TABLE `our_projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_jp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des_jp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_des_jp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpublish',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `our_projects`
--

INSERT INTO `our_projects` (`id`, `title`, `title_jp`, `short_des`, `short_des_jp`, `detail_des`, `detail_des_jp`, `thumbnail_image`, `publish_status`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 'Wilding', 'ワイルディング', 'Warehouse column welding', '倉庫の柱の荒れ', 'Warehouse column welding according to customer requirement', '顧客の要求に応じた倉庫の柱の溶接', 'uploads/images/project/thambnail/1711409028319764.jpg', 'publish', '1', '2021-09-20 00:33:55', NULL),
(6, 'Steel Cutting', '鋼の切断', 'Steel cutting operation', '鋼の切断操作', 'Steel cutting as required', '必要に応じて鋼の切断', 'uploads/images/project/thambnail/1711410032606145.jpg', 'publish', '1', '2021-09-20 00:49:53', '2021-09-20 00:59:24'),
(7, 'H bar hole', 'Hバー穴', 'H bar hole  plate hole', 'Hバー穴プレート穴', 'H bar hole  plate hole as customer required', '必要に応じてHバー穴プレート穴', 'uploads/images/project/thambnail/1711413125817875.jpg', 'publish', '1', '2021-09-20 01:39:03', NULL),
(8, 'Warehouse column', '倉庫列', 'Warehouse column structure', '倉庫の列構造', 'Warehouse column size based on design', '設計に基づく倉庫の列サイズ', 'uploads/images/project/thambnail/1711413522622907.jpg', 'publish', '1', '2021-09-20 01:45:21', NULL);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cat_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_jp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_des_jp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_des` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_des_jp` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpublish',
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cat_id`, `title`, `title_jp`, `thumbnail_image`, `short_des`, `short_des_jp`, `detail_des`, `detail_des_jp`, `publish_status`, `user_id`, `created_at`, `updated_at`) VALUES
(4, 5, 'Container House', 'コンテナハウス', 'uploads/images/product/thambnail/1711384779765571.jpg', 'Building a container home is extremely cost effective.', 'コンテナ住宅の建設は非常に費用対効果が高いです', 'Building a container home is extremely cost effective. we easily can modify shipping container to create a modern sleek look.Shipping containers are build extremely strong with few weak points making them a great starting point. Because the majority of the home is already built can have a complete home built in record time', 'コンテナ住宅の建設は非常に費用対効果が高いです。輸送用コンテナを簡単に改装して、モダンで洗練された外観にカスタマイズ致します。\r\n輸送用コンテナは非常に強力に構築されており、弱点がほとんどないため、優れています。\r\n（何がどう強力で、利点になっているのかがわかりにくいので書くなら詳細を書いた方がよさそう？）\r\nコンテナにより基礎は出来上がっているため迅速な着工、完成が実現可能です。', 'publish', 1, '2021-09-19 18:08:30', '2022-05-16 22:11:15'),
(5, 5, 'Restaurent', 'コーヒーショップ', 'uploads/images/product/thambnail/1711386162224624.jpg', 'Shipping container was transformed into a chic coffee shop', '輸送用コンテナはシックなコーヒーショップに変身しました', 'Shipping container was transformed into a chic coffee shop that designed for easy installation and incorporates repurposed and recycled materials to make it as Eco-conscious as possible', '輸送用コンテナは、設置が簡単なように設計され、再利用およびリサイクルされた材料を組み込んで可能な限り環境に配慮したシックなコーヒーショップに変わりました', 'publish', 1, '2021-09-19 18:30:28', '2021-09-19 20:56:09'),
(6, 5, 'Office', 'オフィス', 'uploads/images/product/thambnail/1711387899653800.jpg', 'Container house can be use as office', 'コンテナハウスはオフィスとして使用できます', 'Container house can be use as office', 'Container house can be use as office', 'publish', 1, '2021-09-19 18:58:05', NULL),
(7, 5, 'Shop', 'ショップ', 'uploads/images/product/thambnail/1711394329602484.jpg', 'Container house for shop', 'ショップのコンテナハウス', 'We can customize various type of shop as requirement of customer by container.', 'コンテナごとにお客様のご要望に応じて様々なタイプのお店をカスタマイズできます。', 'publish', 1, '2021-09-19 20:40:17', NULL),
(8, 6, 'Steel Building', '鉄骨の建物', 'uploads/images/product/thambnail/1711399977067771.jpg', 'Metal is cheaper than wood', '金属は木より安い', 'Metal is cheaper than wood, with an average of $19-$25 per sq ft for a steel building and $20-$35 per sq ft for a wood building. Also, using metal in your build has a lower lifetime cost due to near-zero maintenance, and it can be nearly 100% salvaged and sold if it is ever torn down', '金属は木よりも安価で、鉄骨造の建物の場合は1平方フィートあたり平均19〜25ドル、木造の建物の場合は1平方フィートあたり20〜35ドルです。 また、ビルドに金属を使用すると、メンテナンスがほぼゼロになるため、ライフタイムコストが低くなり、取り壊された場合でもほぼ100％回収して販売できます。', 'publish', 1, '2021-09-19 22:10:03', NULL),
(9, 6, 'Welding', '溶接', 'uploads/images/product/thambnail/1711400590449386.jpg', 'Welding  pieces of metal', '金属片の溶接', 'Welding  pieces of metal together to forms a permanent bond in which the metals are heated to a melting point, mixed together and then cooled, creating a single object', '金属片を溶接して永久結合を形成し、金属を融点まで加熱し、混合してから冷却し、単一のオブジェクトを作成します', 'publish', 1, '2021-09-19 22:19:48', NULL),
(10, 6, 'Steel cutting and hole', 'カット鋼', 'uploads/images/product/thambnail/1711402612061431.jpg', 'Cut steel in particular size', '特定のサイズにカット鋼', 'When plate and sheet is formed at the mill, it is usually just beginning its fabrication journey. Many different operations can be performed on the material in order for it to serve a specific purpose and provide a value to the end customer. Hole punching is a shearing process that is used to create holes in material sheet and plate.', 'プレートとシートが工場で形成されるとき、それは通常、その製造の旅を始めたばかりです。 特定の目的を果たし、最終顧客に価値を提供するために、材料に対してさまざまな操作を実行できます。 穴あけは、材料シートとプレートに穴を作成するために使用されるせん断プロセスです。', 'publish', 1, '2021-09-19 22:38:02', '2021-09-19 22:51:56'),
(11, 7, 'Pain for anti rust', '防錆のための痛み', 'uploads/images/product/thambnail/1711404404530797.jpg', 'Steel painting for anti rust', '防錆用鋼塗装', 'If the surface still has some rust after all loose rust has been removed', '緩い錆をすべて取り除いた後も表面に錆が残っている場合', 'publish', 1, '2021-09-19 23:20:25', NULL),
(12, 7, 'Column Painting', '柱の絵', 'uploads/images/product/thambnail/1711405955333144.jpg', 'Column Painting for anti rust', '防錆用柱塗装', 'Anti-Rust Painting Steel Columns for Warehouse', '倉庫用防錆塗装鋼柱', 'publish', 1, '2021-09-19 23:45:04', NULL),
(13, 8, 'Warehouse', '倉庫', 'uploads/images/product/thambnail/1711406927234581.jpg', 'Warehouse design and construction', '倉庫の設計と建設', 'We made steel warehouse that meet your exacting specifications and requirements', '私たちはあなたの厳しい仕様と要件を満たす鋼倉庫を作りました', 'publish', 1, '2021-09-20 00:00:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_multiple_images`
--

CREATE TABLE `product_multiple_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpublish',
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_multiple_images`
--

INSERT INTO `product_multiple_images` (`id`, `product_id`, `image`, `publish_status`, `user_id`, `created_at`, `updated_at`) VALUES
(18, 4, 'uploads/images/product/multipleimage/1711385515743743.jpg', 'publish', 1, '2021-09-19 18:20:12', NULL),
(19, 4, 'uploads/images/product/multipleimage/1711385515952782.jpg', 'publish', 1, '2021-09-19 18:20:12', NULL),
(27, 4, 'uploads/images/product/multipleimage/1711385517299695.jpg', 'publish', 1, '2021-09-19 18:20:13', NULL),
(28, 4, 'uploads/images/product/multipleimage/1711385517452739.jpg', 'publish', 1, '2021-09-19 18:20:13', NULL),
(35, 5, 'uploads/images/product/multipleimage/1711387125799347.jpg', 'publish', 1, '2021-09-19 18:45:47', NULL),
(36, 5, 'uploads/images/product/multipleimage/1711387125974274.jpg', 'publish', 1, '2021-09-19 18:45:47', NULL),
(39, 5, 'uploads/images/product/multipleimage/1711387126539393.jpg', 'publish', 1, '2021-09-19 18:45:48', NULL),
(43, 5, 'uploads/images/product/multipleimage/1711387127282208.jpg', 'publish', 1, '2021-09-19 18:45:48', NULL),
(45, 5, 'uploads/images/product/multipleimage/1711387127718032.jpg', 'publish', 1, '2021-09-19 18:45:49', NULL),
(46, 4, 'uploads/images/product/multipleimage/1711389065008848.jpg', 'publish', 1, '2021-09-19 19:16:36', NULL),
(47, 4, 'uploads/images/product/multipleimage/1711389065186008.jpg', 'publish', 1, '2021-09-19 19:16:37', NULL),
(48, 4, 'uploads/images/product/multipleimage/1711389065394701.jpg', 'publish', 1, '2021-09-19 19:16:37', NULL),
(49, 4, 'uploads/images/product/multipleimage/1711389065551247.jpg', 'publish', 1, '2021-09-19 19:16:37', NULL),
(50, 6, 'uploads/images/product/multipleimage/1711389956294654.jpg', 'publish', 1, '2021-09-19 19:30:46', NULL),
(51, 6, 'uploads/images/product/multipleimage/1711389956481804.jpg', 'publish', 1, '2021-09-19 19:30:47', NULL),
(53, 6, 'uploads/images/product/multipleimage/1711389958264225.jpg', 'publish', 1, '2021-09-19 19:30:49', NULL),
(54, 7, 'uploads/images/product/multipleimage/1711394613957594.jpg', 'publish', 1, '2021-09-19 20:44:48', NULL),
(55, 8, 'uploads/images/product/multipleimage/1711400129007847.jpg', 'publish', 1, '2021-09-19 22:12:28', NULL),
(56, 8, 'uploads/images/product/multipleimage/1711400129330233.jpg', 'publish', 1, '2021-09-19 22:12:28', NULL),
(57, 8, 'uploads/images/product/multipleimage/1711400129625027.jpg', 'publish', 1, '2021-09-19 22:12:29', NULL),
(58, 9, 'uploads/images/product/multipleimage/1711400641831511.jpg', 'publish', 1, '2021-09-19 22:20:37', NULL),
(59, 10, 'uploads/images/product/multipleimage/1711402007383307.jpg', 'publish', 1, '2021-09-19 22:42:19', NULL),
(60, 10, 'uploads/images/product/multipleimage/1711403187306838.jpg', 'publish', 1, '2021-09-19 22:51:16', '2021-09-19 23:01:05'),
(66, 8, 'uploads/images/product/multipleimage/1711403693447117.jpg', 'publish', 1, '2021-09-19 23:09:07', NULL),
(67, 8, 'uploads/images/product/multipleimage/1711403693630076.jpg', 'publish', 1, '2021-09-19 23:09:07', NULL),
(68, 8, 'uploads/images/product/multipleimage/1711403693794496.jpg', 'publish', 1, '2021-09-19 23:09:07', NULL),
(69, 8, 'uploads/images/product/multipleimage/1711403693953725.jpg', 'publish', 1, '2021-09-19 23:09:08', NULL),
(70, 8, 'uploads/images/product/multipleimage/1711403694169472.jpg', 'publish', 1, '2021-09-19 23:09:08', NULL),
(71, 8, 'uploads/images/product/multipleimage/1711403694335757.jpg', 'publish', 1, '2021-09-19 23:09:08', NULL),
(72, 9, 'uploads/images/product/multipleimage/1711403836688510.jpg', 'publish', 1, '2021-09-19 23:11:24', NULL),
(73, 11, 'uploads/images/product/multipleimage/1711405238848673.jpg', 'publish', 1, '2021-09-19 23:33:41', NULL),
(74, 11, 'uploads/images/product/multipleimage/1711405239100550.jpg', 'publish', 1, '2021-09-19 23:33:41', NULL),
(75, 11, 'uploads/images/product/multipleimage/1711405239312826.jpg', 'publish', 1, '2021-09-19 23:33:41', NULL),
(76, 11, 'uploads/images/product/multipleimage/1711405239522810.jpg', 'publish', 1, '2021-09-19 23:33:42', NULL),
(77, 11, 'uploads/images/product/multipleimage/1711405239795244.jpg', 'publish', 1, '2021-09-19 23:33:42', NULL),
(78, 11, 'uploads/images/product/multipleimage/1711405240029334.jpg', 'publish', 1, '2021-09-19 23:33:42', NULL),
(79, 11, 'uploads/images/product/multipleimage/1711405240251416.jpg', 'publish', 1, '2021-09-19 23:33:42', NULL),
(80, 13, 'uploads/images/product/multipleimage/1711407137226495.jpg', 'publish', 1, '2021-09-20 00:03:51', NULL),
(81, 13, 'uploads/images/product/multipleimage/1711407137367894.jpg', 'publish', 1, '2021-09-20 00:03:51', NULL),
(82, 13, 'uploads/images/product/multipleimage/1711407137494824.jpg', 'publish', 1, '2021-09-20 00:03:52', NULL),
(83, 13, 'uploads/images/product/multipleimage/1711407137699755.jpg', 'publish', 1, '2021-09-20 00:03:52', NULL),
(84, 13, 'uploads/images/product/multipleimage/1711407137860174.jpg', 'publish', 1, '2021-09-20 00:03:52', NULL),
(85, 13, 'uploads/images/product/multipleimage/1711407137983411.jpg', 'publish', 1, '2021-09-20 00:03:52', NULL),
(86, 10, 'uploads/images/product/multipleimage/1719194763030173.jpg', 'publish', 1, '2021-12-14 23:04:50', NULL),
(87, 10, 'uploads/images/product/multipleimage/1719194763157501.jpg', 'publish', 1, '2021-12-14 23:04:50', NULL),
(88, 10, 'uploads/images/product/multipleimage/1719194763267317.jpg', 'publish', 1, '2021-12-14 23:04:50', NULL),
(89, 10, 'uploads/images/product/multipleimage/1719194763374008.jpg', 'publish', 1, '2021-12-14 23:04:50', NULL),
(90, 10, 'uploads/images/product/multipleimage/1719194763482301.jpg', 'publish', 1, '2021-12-14 23:04:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_multiple_videos`
--

CREATE TABLE `product_multiple_videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpublish',
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_jp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle_jp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpublish',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `title_jp`, `subtitle`, `subtitle_jp`, `slider_image`, `publish_status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '', '', '', '', 'uploads/images/slider/1711382143058829.jpg', 'publish', '1', '2021-09-13 21:09:02', '2021-09-19 17:26:35'),
(4, '', '', '', '', 'uploads/images/slider/1711382576059442.jpg', 'publish', '1', '2021-09-19 17:33:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '2',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 3, 'Super Admin', 'admin@woodyltd.com', '2021-09-13 21:05:53', '$2y$10$sGRvJhrftVdHa/BzVc1Mcux5sZpsRN94ghULtJbsElFoU84u/DQd.', 'HwZV0W2s8TXSwLMNVu2h3FsqtgUTt0cItlvZD3C3CxJCPGwE9j97pk8NY2nw', '2021-09-13 21:05:53', '2021-09-13 21:05:53');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visitor_ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visit_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_visit` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `visitor_ip`, `visit_date`, `total_visit`, `created_at`, `updated_at`) VALUES
(1, '36.99.136.136', '2021-10-29 03:00:45', 1, '2021-10-28 19:00:45', NULL),
(2, '35.243.227.179', '2021-10-29 04:02:25', 1, '2021-10-28 20:02:25', NULL),
(3, '111.7.100.21', '2021-10-30 08:44:30', 1, '2021-10-30 00:44:30', '2021-10-30 00:44:37'),
(4, '121.1.189.146', '2021-10-30 13:32:34', 1, '2021-10-30 05:32:34', '2021-11-30 00:52:26'),
(5, '69.164.220.126', '2021-10-31 08:08:38', 1, '2021-10-31 00:08:38', NULL),
(6, '92.118.160.13', '2021-10-31 15:12:47', 1, '2021-10-31 07:12:47', '2022-01-17 21:10:19'),
(7, '104.131.52.169', '2021-10-31 16:07:56', 1, '2021-10-31 08:07:56', NULL),
(8, '92.118.160.61', '2021-11-01 05:08:22', 1, '2021-10-31 21:08:22', '2022-01-16 03:07:03'),
(9, '121.1.189.146', '2021-11-02 08:21:22', 1, '2021-11-02 00:21:22', '2021-11-30 00:52:26'),
(10, '103.140.113.227', '2021-11-02 13:57:35', 1, '2021-11-02 05:57:35', '2021-11-02 05:59:15'),
(11, '202.231.177.68', '2021-11-02 13:57:36', 1, '2021-11-02 05:57:36', NULL),
(12, '103.140.113.227', '2021-11-02 13:59:12', 1, '2021-11-02 05:59:12', '2021-11-02 05:59:15'),
(13, '119.83.219.66', '2021-11-02 16:23:56', 1, '2021-11-02 08:23:56', NULL),
(14, '159.203.124.202', '2021-11-04 10:27:41', 1, '2021-11-04 02:27:41', NULL),
(15, '165.22.38.14', '2021-11-04 10:29:27', 1, '2021-11-04 02:29:27', NULL),
(16, '121.1.189.146', '2021-11-04 10:47:27', 1, '2021-11-04 02:47:27', '2021-11-30 00:52:26'),
(17, '117.24.14.242', '2021-11-05 03:40:38', 1, '2021-11-04 19:40:38', '2021-11-21 12:20:37'),
(18, '121.1.189.146', '2021-11-05 05:20:54', 1, '2021-11-04 21:20:54', '2021-11-30 00:52:26'),
(19, '132.232.75.2', '2021-11-06 07:34:36', 1, '2021-11-05 23:34:36', '2021-11-05 23:34:44'),
(20, '121.1.189.146', '2021-11-06 09:31:39', 1, '2021-11-06 01:31:39', '2021-11-30 00:52:26'),
(21, '117.24.14.242', '2021-11-06 22:20:58', 1, '2021-11-06 14:20:58', '2021-11-21 12:20:37'),
(22, '92.118.160.37', '2021-11-07 05:09:11', 1, '2021-11-06 21:09:11', '2022-01-16 02:09:47'),
(23, '35.231.187.8', '2021-11-07 14:15:26', 1, '2021-11-07 06:15:26', NULL),
(24, '117.24.14.242', '2021-11-08 00:33:06', 1, '2021-11-07 16:33:06', '2021-11-21 12:20:37'),
(25, '121.1.189.146', '2021-11-09 06:46:43', 1, '2021-11-08 22:46:43', '2021-11-30 00:52:26'),
(26, '34.77.162.15', '2021-11-09 07:20:10', 1, '2021-11-08 23:20:10', '2022-01-18 14:43:24'),
(27, '121.1.189.146', '2021-11-09 15:16:07', 1, '2021-11-09 07:16:07', '2021-11-30 00:52:26'),
(28, '40.77.167.34', '2021-11-09 21:10:27', 1, '2021-11-09 13:10:27', NULL),
(29, '121.1.189.146', '2021-11-10 08:11:45', 1, '2021-11-10 00:11:45', '2021-11-30 00:52:26'),
(30, '34.86.35.27', '2021-11-11 21:45:17', 1, '2021-11-11 13:45:17', NULL),
(31, '121.1.189.146', '2021-11-12 01:56:16', 1, '2021-11-11 17:56:16', '2021-11-30 00:52:26'),
(32, '18.133.193.170', '2021-11-12 02:53:59', 1, '2021-11-11 18:53:59', NULL),
(33, '121.1.189.146', '2021-11-12 06:18:10', 1, '2021-11-11 22:18:10', '2021-11-30 00:52:26'),
(34, '3.249.223.26', '2021-11-12 19:44:55', 1, '2021-11-12 11:44:55', NULL),
(35, '52.208.1.90', '2021-11-12 19:45:03', 1, '2021-11-12 11:45:03', NULL),
(36, '34.74.181.250', '2021-11-13 12:59:48', 1, '2021-11-13 04:59:48', NULL),
(37, '92.118.160.41', '2021-11-14 21:56:22', 1, '2021-11-14 13:56:22', '2022-03-14 09:37:44'),
(38, '111.76.18.213', '2021-11-15 08:17:04', 1, '2021-11-15 00:17:04', NULL),
(39, '121.1.189.146', '2021-11-15 09:49:50', 1, '2021-11-15 01:49:50', '2021-11-30 00:52:26'),
(40, '66.249.71.167', '2021-11-15 12:27:41', 1, '2021-11-15 04:27:41', '2021-12-06 01:47:07'),
(41, '66.249.68.85', '2021-11-15 12:48:12', 1, '2021-11-15 04:48:12', NULL),
(42, '66.249.68.81', '2021-11-15 12:50:03', 1, '2021-11-15 04:50:03', NULL),
(43, '92.118.160.37', '2021-11-15 19:30:48', 1, '2021-11-15 11:30:48', '2022-01-16 02:09:47'),
(44, '121.1.189.146', '2021-11-16 02:39:44', 1, '2021-11-15 18:39:44', '2021-11-30 00:52:26'),
(45, '34.77.162.23', '2021-11-16 10:05:00', 1, '2021-11-16 02:05:00', NULL),
(46, '121.1.189.146', '2021-11-16 10:06:50', 1, '2021-11-16 02:06:50', '2021-11-30 00:52:26'),
(47, '45.152.199.132', '2021-11-16 19:39:48', 1, '2021-11-16 11:39:48', NULL),
(48, '34.96.130.2', '2021-11-16 21:09:02', 1, '2021-11-16 13:09:02', NULL),
(49, '121.1.189.146', '2021-11-17 01:12:50', 1, '2021-11-16 17:12:50', '2021-11-30 00:52:26'),
(50, '34.242.24.144', '2021-11-18 02:30:43', 1, '2021-11-17 18:30:43', NULL),
(51, '121.1.189.146', '2021-11-18 07:07:10', 1, '2021-11-17 23:07:10', '2021-11-30 00:52:26'),
(52, '66.249.71.170', '2021-11-18 09:55:35', 1, '2021-11-18 01:55:35', NULL),
(53, '66.249.71.167', '2021-11-18 10:42:01', 1, '2021-11-18 02:42:01', '2021-12-06 01:47:07'),
(54, '126.194.104.101', '2021-11-18 10:53:17', 1, '2021-11-18 02:53:17', NULL),
(55, '121.1.189.146', '2021-11-18 11:58:07', 1, '2021-11-18 03:58:07', '2021-11-30 00:52:26'),
(56, '34.86.35.7', '2021-11-18 23:39:00', 1, '2021-11-18 15:39:00', NULL),
(57, '103.140.113.239', '2021-11-19 13:15:00', 1, '2021-11-19 05:15:00', '2021-11-19 06:05:43'),
(58, '52.30.177.42', '2021-11-19 22:39:14', 1, '2021-11-19 14:39:14', NULL),
(59, '34.77.162.18', '2021-11-20 05:45:23', 1, '2021-11-19 21:45:23', '2021-11-23 06:56:21'),
(60, '92.118.160.13', '2021-11-20 07:10:00', 1, '2021-11-19 23:10:00', '2022-01-17 21:10:19'),
(61, '92.118.160.41', '2021-11-20 14:04:49', 1, '2021-11-20 06:04:49', '2022-03-14 09:37:44'),
(62, '106.72.51.64', '2021-11-21 05:09:24', 1, '2021-11-20 21:09:24', '2021-11-28 04:29:17'),
(63, '108.5.183.203', '2021-11-21 17:42:22', 1, '2021-11-21 09:42:22', NULL),
(64, '117.24.14.242', '2021-11-21 20:20:37', 1, '2021-11-21 12:20:37', NULL),
(65, '162.142.125.41', '2021-11-22 04:12:49', 1, '2021-11-21 20:12:49', '2021-11-21 20:12:50'),
(66, '52.48.67.114', '2021-11-22 05:10:23', 1, '2021-11-21 21:10:23', NULL),
(67, '175.177.44.221', '2021-11-22 15:16:23', 1, '2021-11-22 07:16:23', NULL),
(68, '34.77.162.4', '2021-11-23 10:23:14', 1, '2021-11-23 02:23:14', NULL),
(69, '34.77.162.18', '2021-11-23 14:56:21', 1, '2021-11-23 06:56:21', NULL),
(70, '121.1.189.146', '2021-11-24 02:50:19', 1, '2021-11-23 18:50:19', '2021-11-30 00:52:26'),
(71, '212.57.22.98', '2021-11-25 09:26:02', 1, '2021-11-25 01:26:02', NULL),
(72, '185.11.15.132', '2021-11-25 09:26:03', 1, '2021-11-25 01:26:03', NULL),
(73, '17.121.113.173', '2021-11-25 20:26:54', 1, '2021-11-25 12:26:54', NULL),
(74, '51.158.108.61', '2021-11-26 03:26:37', 1, '2021-11-25 19:26:37', '2022-04-26 02:53:25'),
(75, '118.70.128.113', '2021-11-26 07:28:55', 1, '2021-11-25 23:28:55', '2021-11-25 23:30:03'),
(76, '51.158.98.24', '2021-11-26 21:39:32', 1, '2021-11-26 13:39:32', NULL),
(77, '106.72.51.64', '2021-11-28 12:29:17', 1, '2021-11-28 04:29:17', NULL),
(78, '106.53.82.40', '2021-11-28 13:18:06', 1, '2021-11-28 05:18:06', '2021-11-28 05:18:09'),
(79, '14.10.140.224', '2021-11-28 16:37:45', 1, '2021-11-28 08:37:45', '2021-12-02 23:20:49'),
(80, '121.1.189.146', '2021-11-30 08:52:03', 1, '2021-11-30 00:52:03', '2021-11-30 00:52:26'),
(81, '14.10.140.224', '2021-12-01 02:06:22', 1, '2021-11-30 18:06:22', '2021-12-02 23:20:49'),
(82, '202.208.159.20', '2021-12-01 08:31:41', 1, '2021-12-01 00:31:41', '2022-01-05 18:24:12'),
(83, '66.249.71.164', '2021-12-01 10:30:41', 1, '2021-12-01 02:30:41', '2021-12-01 16:54:41'),
(84, '202.208.159.20', '2021-12-02 12:54:25', 1, '2021-12-02 04:54:25', '2022-01-05 18:24:12'),
(85, '14.10.140.224', '2021-12-03 07:20:49', 1, '2021-12-02 23:20:49', NULL),
(86, '117.65.158.12', '2021-12-03 09:18:00', 1, '2021-12-03 01:18:00', NULL),
(87, '130.245.169.39', '2021-12-03 14:44:25', 1, '2021-12-03 06:44:25', NULL),
(88, '130.245.169.39', '2021-12-03 14:44:25', 1, '2021-12-03 06:44:25', NULL),
(89, '205.169.39.55', '2021-12-03 14:56:31', 1, '2021-12-03 06:56:31', NULL),
(90, '54.154.86.14', '2021-12-03 17:27:05', 1, '2021-12-03 09:27:05', NULL),
(91, '202.208.159.20', '2021-12-04 04:12:34', 1, '2021-12-03 20:12:34', '2022-01-05 18:24:12'),
(92, '195.154.61.206', '2021-12-04 08:13:46', 1, '2021-12-04 00:13:46', NULL),
(93, '51.15.191.81', '2021-12-04 08:15:55', 1, '2021-12-04 00:15:55', NULL),
(94, '62.210.5.253', '2021-12-04 09:36:21', 1, '2021-12-04 01:36:21', NULL),
(95, '195.154.62.232', '2021-12-04 09:42:50', 1, '2021-12-04 01:42:50', NULL),
(96, '51.254.49.97', '2021-12-04 10:25:33', 1, '2021-12-04 02:25:33', NULL),
(97, '51.254.49.107', '2021-12-04 10:55:50', 1, '2021-12-04 02:55:50', NULL),
(98, '121.5.226.36', '2021-12-04 23:37:30', 1, '2021-12-04 15:37:30', '2021-12-04 15:45:44'),
(99, '62.4.14.198', '2021-12-05 15:18:02', 1, '2021-12-05 07:18:02', NULL),
(100, '51.254.49.101', '2021-12-05 16:43:25', 1, '2021-12-05 08:43:25', NULL),
(101, '202.208.159.20', '2021-12-06 01:33:44', 1, '2021-12-05 17:33:44', '2022-01-05 18:24:12'),
(102, '66.249.71.167', '2021-12-06 09:30:09', 1, '2021-12-06 01:30:09', '2021-12-06 01:47:07'),
(103, '66.249.71.21', '2021-12-07 00:15:35', 1, '2021-12-06 16:15:35', '2022-04-28 20:43:44'),
(104, '174.138.52.96', '2021-12-07 01:01:58', 1, '2021-12-06 17:01:58', NULL),
(105, '159.65.37.222', '2021-12-07 02:21:22', 1, '2021-12-06 18:21:22', NULL),
(106, '202.208.159.20', '2021-12-07 05:00:07', 1, '2021-12-06 21:00:07', '2022-01-05 18:24:12'),
(107, '35.181.155.42', '2021-12-09 12:53:58', 1, '2021-12-09 04:53:58', NULL),
(108, '202.208.159.20', '2021-12-10 08:31:02', 1, '2021-12-10 00:31:02', '2022-01-05 18:24:12'),
(109, '66.249.71.21', '2021-12-11 03:44:55', 1, '2021-12-10 19:44:55', '2022-04-28 20:43:44'),
(110, '123.6.49.4', '2021-12-11 04:45:46', 1, '2021-12-10 20:45:46', NULL),
(111, '202.208.159.20', '2021-12-11 05:13:03', 1, '2021-12-10 21:13:03', '2022-01-05 18:24:12'),
(112, '35.212.72.131', '2021-12-13 02:01:18', 1, '2021-12-12 18:01:18', NULL),
(113, '202.208.159.20', '2021-12-13 02:57:20', 1, '2021-12-12 18:57:20', '2022-01-05 18:24:12'),
(114, '52.91.73.40', '2021-12-14 21:00:54', 1, '2021-12-14 13:00:54', NULL),
(115, '202.208.159.20', '2021-12-15 06:15:26', 1, '2021-12-14 22:15:26', '2022-01-05 18:24:12'),
(116, '66.249.71.24', '2021-12-15 15:46:23', 1, '2021-12-15 07:46:23', '2022-04-04 02:56:00'),
(117, '66.249.71.21', '2021-12-15 15:57:04', 1, '2021-12-15 07:57:04', '2022-04-28 20:43:44'),
(118, '128.199.127.143', '2021-12-16 04:59:31', 1, '2021-12-15 20:59:31', '2021-12-20 02:34:54'),
(119, '202.208.159.20', '2021-12-16 11:41:57', 1, '2021-12-16 03:41:57', '2022-01-05 18:24:12'),
(120, '103.134.43.119', '2021-12-16 19:53:22', 1, '2021-12-16 11:53:22', '2021-12-16 11:53:26'),
(121, '66.249.71.24', '2021-12-16 23:38:51', 1, '2021-12-16 15:38:51', '2022-04-04 02:56:00'),
(122, '66.249.71.18', '2021-12-16 23:46:53', 1, '2021-12-16 15:46:53', '2022-05-15 05:29:14'),
(123, '167.94.138.41', '2021-12-17 15:46:16', 1, '2021-12-17 07:46:16', '2021-12-17 07:46:16'),
(124, '66.249.71.18', '2021-12-18 02:40:11', 1, '2021-12-17 18:40:11', '2022-05-15 05:29:14'),
(125, '35.243.210.242', '2021-12-18 03:49:03', 1, '2021-12-17 19:49:03', NULL),
(126, '66.249.71.21', '2021-12-18 04:35:38', 1, '2021-12-17 20:35:38', '2022-04-28 20:43:44'),
(127, '202.208.159.20', '2021-12-18 10:45:50', 1, '2021-12-18 02:45:50', '2022-01-05 18:24:12'),
(128, '66.249.71.18', '2021-12-20 00:22:00', 1, '2021-12-19 16:22:00', '2022-05-15 05:29:14'),
(129, '128.199.127.143', '2021-12-20 10:34:54', 1, '2021-12-20 02:34:54', NULL),
(130, '220.176.214.20', '2021-12-21 09:46:50', 1, '2021-12-21 01:46:50', '2021-12-21 01:46:51'),
(131, '66.249.71.18', '2021-12-21 14:59:54', 1, '2021-12-21 06:59:54', '2022-05-15 05:29:14'),
(132, '66.249.71.21', '2021-12-22 01:58:33', 1, '2021-12-21 17:58:33', '2022-04-28 20:43:44'),
(133, '66.249.71.24', '2021-12-22 12:20:25', 1, '2021-12-22 04:20:25', '2022-04-04 02:56:00'),
(134, '66.249.71.18', '2021-12-22 13:01:18', 1, '2021-12-22 05:01:18', '2022-05-15 05:29:14'),
(135, '66.249.71.21', '2021-12-23 16:53:03', 1, '2021-12-23 08:53:03', '2022-04-28 20:43:44'),
(136, '66.249.71.24', '2021-12-23 19:33:28', 1, '2021-12-23 11:33:28', '2022-04-04 02:56:00'),
(137, '104.42.150.85', '2021-12-24 06:28:04', 1, '2021-12-23 22:28:04', NULL),
(138, '34.244.159.191', '2021-12-25 07:22:21', 1, '2021-12-24 23:22:21', NULL),
(139, '72.13.46.3', '2021-12-25 23:16:25', 1, '2021-12-25 15:16:25', NULL),
(140, '51.15.205.3', '2021-12-27 15:04:44', 1, '2021-12-27 07:04:44', NULL),
(141, '34.86.35.19', '2021-12-28 09:28:58', 1, '2021-12-28 01:28:58', NULL),
(142, '66.249.71.18', '2021-12-28 12:32:45', 1, '2021-12-28 04:32:45', '2022-05-15 05:29:14'),
(143, '51.158.108.61', '2021-12-28 19:56:38', 1, '2021-12-28 11:56:38', '2022-04-26 02:53:25'),
(144, '34.86.35.22', '2021-12-28 21:27:57', 1, '2021-12-28 13:27:57', NULL),
(145, '34.86.35.14', '2021-12-31 04:11:19', 1, '2021-12-30 20:11:19', NULL),
(146, '34.96.130.3', '2021-12-31 11:07:53', 1, '2021-12-31 03:07:53', '2022-03-03 12:37:16'),
(147, '34.96.130.17', '2022-01-01 02:38:55', 1, '2021-12-31 18:38:55', NULL),
(148, '92.118.160.41', '2022-01-01 17:46:00', 1, '2022-01-01 09:46:00', '2022-03-14 09:37:44'),
(149, '92.118.160.17', '2022-01-02 10:30:56', 1, '2022-01-02 02:30:56', NULL),
(150, '92.118.160.61', '2022-01-02 18:03:58', 1, '2022-01-02 10:03:58', '2022-01-16 03:07:03'),
(151, '45.129.18.149', '2022-01-02 20:43:58', 1, '2022-01-02 12:43:58', NULL),
(152, '92.118.160.13', '2022-01-03 03:26:13', 1, '2022-01-02 19:26:13', '2022-01-17 21:10:19'),
(153, '34.86.35.2', '2022-01-03 21:35:48', 1, '2022-01-03 13:35:48', NULL),
(154, '34.96.130.1', '2022-01-04 01:05:00', 1, '2022-01-03 17:05:00', NULL),
(155, '34.96.130.13', '2022-01-04 11:38:29', 1, '2022-01-04 03:38:29', NULL),
(156, '54.234.204.200', '2022-01-04 17:24:43', 1, '2022-01-04 09:24:43', NULL),
(157, '202.208.159.20', '2022-01-06 02:24:12', 1, '2022-01-05 18:24:12', NULL),
(158, '153.156.71.216', '2022-01-06 02:29:37', 1, '2022-01-05 18:29:37', NULL),
(159, '66.249.71.24', '2022-01-06 16:24:36', 1, '2022-01-06 08:24:36', '2022-04-04 02:56:00'),
(160, '66.249.71.18', '2022-01-06 16:24:57', 1, '2022-01-06 08:24:57', '2022-05-15 05:29:14'),
(161, '66.249.71.21', '2022-01-07 01:38:19', 1, '2022-01-06 17:38:19', '2022-04-28 20:43:44'),
(162, '66.249.71.24', '2022-01-07 02:36:39', 1, '2022-01-06 18:36:39', '2022-04-04 02:56:00'),
(163, '34.96.130.3', '2022-01-07 11:19:50', 1, '2022-01-07 03:19:50', '2022-03-03 12:37:16'),
(164, '34.76.168.140', '2022-01-07 15:49:49', 1, '2022-01-07 07:49:49', NULL),
(165, '54.36.148.124', '2022-01-07 18:05:14', 1, '2022-01-07 10:05:14', '2022-05-02 07:09:23'),
(166, '45.129.18.234', '2022-01-07 21:01:52', 1, '2022-01-07 13:01:52', NULL),
(167, '34.96.130.28', '2022-01-07 21:20:35', 1, '2022-01-07 13:20:35', NULL),
(168, '34.77.162.20', '2022-01-08 00:36:08', 1, '2022-01-07 16:36:08', NULL),
(169, '14.3.184.209', '2022-01-08 01:47:01', 1, '2022-01-07 17:47:01', '2022-01-26 23:54:49'),
(170, '34.77.162.14', '2022-01-08 03:01:35', 1, '2022-01-07 19:01:35', NULL),
(171, '164.90.143.175', '2022-01-08 04:50:39', 1, '2022-01-07 20:50:39', NULL),
(172, '167.71.102.35', '2022-01-08 05:38:01', 1, '2022-01-07 21:38:01', NULL),
(173, '66.249.71.18', '2022-01-08 06:52:26', 1, '2022-01-07 22:52:26', '2022-05-15 05:29:14'),
(174, '92.118.160.1', '2022-01-08 08:31:45', 1, '2022-01-08 00:31:45', '2022-02-25 19:34:48'),
(175, '92.118.160.37', '2022-01-08 08:50:29', 1, '2022-01-08 00:50:29', '2022-01-16 02:09:47'),
(176, '66.249.71.21', '2022-01-08 09:08:41', 1, '2022-01-08 01:08:41', '2022-04-28 20:43:44'),
(177, '92.118.160.37', '2022-01-08 11:27:46', 1, '2022-01-08 03:27:46', '2022-01-16 02:09:47'),
(178, '66.249.71.18', '2022-01-08 19:02:17', 1, '2022-01-08 11:02:17', '2022-05-15 05:29:14'),
(179, '66.249.71.24', '2022-01-08 19:15:26', 1, '2022-01-08 11:15:26', '2022-04-04 02:56:00'),
(180, '66.249.71.18', '2022-01-08 19:15:37', 1, '2022-01-08 11:15:37', '2022-05-15 05:29:14'),
(181, '44.234.27.237', '2022-01-08 22:51:58', 1, '2022-01-08 14:51:58', NULL),
(182, '66.249.68.83', '2022-01-09 12:52:44', 1, '2022-01-09 04:52:44', NULL),
(183, '66.249.71.18', '2022-01-09 12:54:02', 1, '2022-01-09 04:54:02', '2022-05-15 05:29:14'),
(184, '34.75.100.57', '2022-01-09 15:04:36', 1, '2022-01-09 07:04:36', NULL),
(185, '66.249.71.18', '2022-01-09 16:21:54', 1, '2022-01-09 08:21:54', '2022-05-15 05:29:14'),
(186, '92.118.160.13', '2022-01-09 23:44:56', 1, '2022-01-09 15:44:56', '2022-01-17 21:10:19'),
(187, '34.77.162.16', '2022-01-11 01:35:11', 1, '2022-01-10 17:35:11', NULL),
(188, '14.3.184.209', '2022-01-11 08:42:12', 1, '2022-01-11 00:42:12', '2022-01-26 23:54:49'),
(189, '34.96.130.3', '2022-01-11 10:26:32', 1, '2022-01-11 02:26:32', '2022-03-03 12:37:16'),
(190, '34.96.130.8', '2022-01-11 12:36:00', 1, '2022-01-11 04:36:00', '2022-03-04 03:30:20'),
(191, '34.77.162.24', '2022-01-11 23:57:30', 1, '2022-01-11 15:57:30', NULL),
(192, '66.249.71.18', '2022-01-12 06:10:34', 1, '2022-01-11 22:10:34', '2022-05-15 05:29:14'),
(193, '66.249.71.24', '2022-01-12 06:11:59', 1, '2022-01-11 22:11:59', '2022-04-04 02:56:00'),
(194, '66.249.71.18', '2022-01-12 17:10:04', 1, '2022-01-12 09:10:04', '2022-05-15 05:29:14'),
(195, '66.249.71.21', '2022-01-12 17:23:26', 1, '2022-01-12 09:23:26', '2022-04-28 20:43:44'),
(196, '66.249.71.18', '2022-01-13 02:52:31', 1, '2022-01-12 18:52:31', '2022-05-15 05:29:14'),
(197, '34.86.35.25', '2022-01-14 13:44:14', 1, '2022-01-14 05:44:14', NULL),
(198, '34.77.162.19', '2022-01-14 15:08:14', 1, '2022-01-14 07:08:14', '2022-02-25 04:54:59'),
(199, '34.86.35.31', '2022-01-14 23:28:27', 1, '2022-01-14 15:28:27', '2022-03-11 17:24:22'),
(200, '45.129.18.151', '2022-01-15 05:02:07', 1, '2022-01-14 21:02:07', NULL),
(201, '92.118.160.37', '2022-01-16 10:09:47', 1, '2022-01-16 02:09:47', NULL),
(202, '92.118.160.61', '2022-01-16 11:07:03', 1, '2022-01-16 03:07:03', NULL),
(203, '14.3.184.209', '2022-01-17 09:10:54', 1, '2022-01-17 01:10:54', '2022-01-26 23:54:49'),
(204, '143.92.56.239', '2022-01-17 14:22:45', 1, '2022-01-17 06:22:45', '2022-04-02 05:30:41'),
(205, '92.118.160.41', '2022-01-18 01:57:52', 1, '2022-01-17 17:57:52', '2022-03-14 09:37:44'),
(206, '92.118.160.13', '2022-01-18 05:10:19', 1, '2022-01-17 21:10:19', NULL),
(207, '34.73.156.163', '2022-01-18 08:29:31', 1, '2022-01-18 00:29:31', NULL),
(208, '34.77.162.15', '2022-01-18 22:43:24', 1, '2022-01-18 14:43:24', NULL),
(209, '34.96.130.16', '2022-01-19 02:33:49', 1, '2022-01-18 18:33:49', NULL),
(210, '34.96.130.12', '2022-01-19 05:01:52', 1, '2022-01-18 21:01:52', NULL),
(211, '185.119.81.104', '2022-01-20 07:53:20', 1, '2022-01-19 23:53:20', '2022-02-14 21:44:59'),
(212, '51.158.109.3', '2022-01-21 03:43:46', 1, '2022-01-20 19:43:46', NULL),
(213, '89.38.227.139', '2022-01-21 20:44:39', 1, '2022-01-21 12:44:39', NULL),
(214, '66.249.71.177', '2022-01-21 23:11:40', 1, '2022-01-21 15:11:40', '2022-01-21 16:25:26'),
(215, '66.249.71.179', '2022-01-22 00:37:44', 1, '2022-01-21 16:37:44', NULL),
(216, '66.249.71.18', '2022-01-22 00:43:52', 1, '2022-01-21 16:43:52', '2022-05-15 05:29:14'),
(217, '143.92.56.239', '2022-01-22 04:26:22', 1, '2022-01-21 20:26:22', '2022-04-02 05:30:41'),
(218, '54.36.148.124', '2022-01-22 11:36:48', 1, '2022-01-22 03:36:48', '2022-05-02 07:09:23'),
(219, '143.92.56.239', '2022-01-23 09:00:56', 1, '2022-01-23 01:00:56', '2022-04-02 05:30:41'),
(220, '14.3.184.209', '2022-01-24 03:44:06', 1, '2022-01-23 19:44:06', '2022-01-26 23:54:49'),
(221, '42.236.10.114', '2022-01-24 15:52:05', 1, '2022-01-24 07:52:05', NULL),
(222, '14.3.184.209', '2022-01-26 12:47:42', 1, '2022-01-26 04:47:42', '2022-01-26 23:54:49'),
(223, '143.92.56.239', '2022-01-27 05:48:02', 1, '2022-01-26 21:48:02', '2022-04-02 05:30:41'),
(224, '66.249.71.24', '2022-01-27 06:35:55', 1, '2022-01-26 22:35:55', '2022-04-04 02:56:00'),
(225, '66.249.71.21', '2022-01-27 06:38:09', 1, '2022-01-26 22:38:09', '2022-04-28 20:43:44'),
(226, '14.3.184.209', '2022-01-27 07:54:49', 1, '2022-01-26 23:54:49', NULL),
(227, '66.249.71.24', '2022-01-27 09:55:07', 1, '2022-01-27 01:55:07', '2022-04-04 02:56:00'),
(228, '35.85.230.208', '2022-01-27 20:57:13', 1, '2022-01-27 12:57:13', NULL),
(229, '80.255.5.196', '2022-01-28 14:12:55', 1, '2022-01-28 06:12:55', NULL),
(230, '143.92.56.239', '2022-01-29 04:28:07', 1, '2022-01-28 20:28:07', '2022-04-02 05:30:41'),
(231, '221.130.37.173', '2022-01-31 01:13:47', 1, '2022-01-30 17:13:47', NULL),
(232, '160.152.129.180', '2022-01-31 09:42:46', 1, '2022-01-31 01:42:46', NULL),
(233, '66.249.71.21', '2022-01-31 15:25:30', 1, '2022-01-31 07:25:30', '2022-04-28 20:43:44'),
(234, '66.249.71.181', '2022-02-01 10:53:24', 1, '2022-02-01 02:53:24', NULL),
(235, '185.119.81.104', '2022-02-02 06:58:39', 1, '2022-02-01 22:58:39', '2022-02-14 21:44:59'),
(236, '66.249.71.24', '2022-02-03 13:27:55', 1, '2022-02-03 05:27:55', '2022-04-04 02:56:00'),
(237, '66.249.71.21', '2022-02-03 13:32:52', 1, '2022-02-03 05:32:52', '2022-04-28 20:43:44'),
(238, '66.249.71.24', '2022-02-03 17:25:09', 1, '2022-02-03 09:25:09', '2022-04-04 02:56:00'),
(239, '54.36.148.124', '2022-02-05 01:15:11', 1, '2022-02-04 17:15:11', '2022-05-02 07:09:23'),
(240, '107.150.57.37', '2022-02-05 13:05:00', 1, '2022-02-05 05:05:00', NULL),
(241, '5.9.70.72', '2022-02-05 13:49:55', 1, '2022-02-05 05:49:55', NULL),
(242, '63.35.162.86', '2022-02-05 17:31:11', 1, '2022-02-05 09:31:11', NULL),
(243, '167.71.186.213', '2022-02-05 21:14:16', 1, '2022-02-05 13:14:16', NULL),
(244, '165.227.100.46', '2022-02-05 21:26:24', 1, '2022-02-05 13:26:24', NULL),
(245, '17.121.112.210', '2022-02-06 11:22:39', 1, '2022-02-06 03:22:39', NULL),
(246, '133.201.148.0', '2022-02-06 14:16:34', 1, '2022-02-06 06:16:34', '2022-02-06 06:26:38'),
(247, '103.248.236.98', '2022-02-06 14:29:24', 1, '2022-02-06 06:29:24', '2022-02-06 06:35:07'),
(248, '103.15.42.199', '2022-02-06 14:29:27', 1, '2022-02-06 06:29:27', NULL),
(249, '103.248.236.98', '2022-02-06 14:29:51', 1, '2022-02-06 06:29:51', '2022-02-06 06:35:07'),
(250, '66.249.71.21', '2022-02-06 18:24:47', 1, '2022-02-06 10:24:47', '2022-04-28 20:43:44'),
(251, '35.190.219.27', '2022-02-07 09:46:14', 1, '2022-02-07 01:46:14', NULL),
(252, '34.73.31.205', '2022-02-07 12:36:14', 1, '2022-02-07 04:36:14', NULL),
(253, '34.138.216.172', '2022-02-07 14:27:25', 1, '2022-02-07 06:27:25', NULL),
(254, '34.138.23.246', '2022-02-07 16:11:33', 1, '2022-02-07 08:11:33', NULL),
(255, '35.237.250.14', '2022-02-07 18:00:18', 1, '2022-02-07 10:00:18', NULL),
(256, '66.249.71.24', '2022-02-08 15:09:39', 1, '2022-02-08 07:09:39', '2022-04-04 02:56:00'),
(257, '143.92.56.239', '2022-02-10 07:36:48', 1, '2022-02-09 23:36:48', '2022-04-02 05:30:41'),
(258, '185.119.81.104', '2022-02-10 11:02:00', 1, '2022-02-10 03:02:00', '2022-02-14 21:44:59'),
(259, '35.231.179.57', '2022-02-11 23:35:05', 1, '2022-02-11 15:35:05', NULL),
(260, '34.139.156.115', '2022-02-12 01:26:32', 1, '2022-02-11 17:26:32', NULL),
(261, '35.243.151.212', '2022-02-12 03:03:51', 1, '2022-02-11 19:03:51', '2022-03-18 07:53:27'),
(262, '66.249.71.21', '2022-02-12 12:55:36', 1, '2022-02-12 04:55:36', '2022-04-28 20:43:44'),
(263, '66.249.71.18', '2022-02-13 00:09:59', 1, '2022-02-12 16:09:59', '2022-05-15 05:29:14'),
(264, '52.47.121.20', '2022-02-14 08:58:39', 1, '2022-02-14 00:58:39', NULL),
(265, '66.249.71.21', '2022-02-14 15:50:50', 1, '2022-02-14 07:50:50', '2022-04-28 20:43:44'),
(266, '51.158.124.23', '2022-02-15 04:38:26', 1, '2022-02-14 20:38:26', NULL),
(267, '185.119.81.104', '2022-02-15 05:44:59', 1, '2022-02-14 21:44:59', NULL),
(268, '66.249.71.21', '2022-02-16 05:53:24', 1, '2022-02-15 21:53:24', '2022-04-28 20:43:44'),
(269, '66.249.71.18', '2022-02-16 07:00:44', 1, '2022-02-15 23:00:44', '2022-05-15 05:29:14'),
(270, '51.15.247.214', '2022-02-17 15:22:16', 1, '2022-02-17 07:22:16', '2022-04-22 07:30:18'),
(271, '163.172.180.25', '2022-02-18 05:06:59', 1, '2022-02-17 21:06:59', NULL),
(272, '40.88.21.235', '2022-02-18 05:58:03', 1, '2022-02-17 21:58:03', '2022-02-23 17:59:16'),
(273, '180.235.60.232', '2022-02-18 07:02:11', 1, '2022-02-17 23:02:11', '2022-05-17 00:25:40'),
(274, '35.243.207.89', '2022-02-18 11:50:56', 1, '2022-02-18 03:50:56', NULL),
(275, '54.36.148.124', '2022-02-18 23:57:35', 1, '2022-02-18 15:57:35', '2022-05-02 07:09:23'),
(276, '17.121.114.10', '2022-02-20 01:08:00', 1, '2022-02-19 17:08:00', NULL),
(277, '126.161.33.163', '2022-02-20 02:24:56', 1, '2022-02-19 18:24:56', NULL),
(278, '58.145.190.247', '2022-02-20 13:44:11', 1, '2022-02-20 05:44:11', NULL),
(279, '66.249.71.24', '2022-02-22 01:40:34', 1, '2022-02-21 17:40:34', '2022-04-04 02:56:00'),
(280, '34.77.162.19', '2022-02-22 05:58:37', 1, '2022-02-21 21:58:37', '2022-02-25 04:54:59'),
(281, '66.249.71.18', '2022-02-22 09:54:28', 1, '2022-02-22 01:54:28', '2022-05-15 05:29:14'),
(282, '34.77.162.9', '2022-02-22 23:14:28', 1, '2022-02-22 15:14:28', NULL),
(283, '40.88.21.235', '2022-02-24 01:59:16', 1, '2022-02-23 17:59:16', NULL),
(284, '66.249.72.211', '2022-02-24 03:13:19', 1, '2022-02-23 19:13:19', NULL),
(285, '66.249.72.209', '2022-02-24 03:25:56', 1, '2022-02-23 19:25:56', '2022-02-23 21:29:13'),
(286, '51.68.178.28', '2022-02-24 04:09:47', 1, '2022-02-23 20:09:47', NULL),
(287, '66.249.72.209', '2022-02-24 05:29:13', 1, '2022-02-23 21:29:13', NULL),
(288, '66.249.71.21', '2022-02-25 02:08:25', 1, '2022-02-24 18:08:25', '2022-04-28 20:43:44'),
(289, '34.77.162.19', '2022-02-25 12:54:59', 1, '2022-02-25 04:54:59', NULL),
(290, '34.86.35.12', '2022-02-25 16:21:40', 1, '2022-02-25 08:21:40', '2022-03-04 17:10:06'),
(291, '17.121.112.192', '2022-02-25 17:34:15', 1, '2022-02-25 09:34:15', NULL),
(292, '34.86.35.12', '2022-02-25 20:02:33', 1, '2022-02-25 12:02:33', '2022-03-04 17:10:06'),
(293, '34.86.35.23', '2022-02-26 03:20:19', 1, '2022-02-25 19:20:19', NULL),
(294, '92.118.160.1', '2022-02-26 03:34:48', 1, '2022-02-25 19:34:48', NULL),
(295, '103.140.113.236', '2022-02-27 01:00:10', 1, '2022-02-26 17:00:10', '2022-02-26 17:00:11'),
(296, '207.46.13.39', '2022-02-27 01:26:03', 1, '2022-02-26 17:26:03', '2022-03-10 23:13:32'),
(297, '66.249.71.18', '2022-02-27 07:30:28', 1, '2022-02-26 23:30:28', '2022-05-15 05:29:14'),
(298, '207.46.13.39', '2022-02-27 14:36:17', 1, '2022-02-27 06:36:17', '2022-03-10 23:13:32'),
(299, '124.223.60.26', '2022-02-27 22:41:07', 1, '2022-02-27 14:41:07', '2022-05-01 22:30:27'),
(300, '185.16.237.59', '2022-02-28 01:29:28', 1, '2022-02-27 17:29:28', NULL),
(301, '207.46.13.39', '2022-02-28 02:00:02', 1, '2022-02-27 18:00:02', '2022-03-10 23:13:32'),
(302, '34.96.130.29', '2022-02-28 19:08:45', 1, '2022-02-28 11:08:45', NULL),
(303, '207.46.13.39', '2022-03-01 02:33:42', 1, '2022-02-28 18:33:42', '2022-03-10 23:13:32'),
(304, '14.3.188.31', '2022-03-01 09:07:40', 1, '2022-03-01 01:07:40', '2022-05-17 00:53:05'),
(305, '66.249.71.18', '2022-03-01 09:52:25', 1, '2022-03-01 01:52:25', '2022-05-15 05:29:14'),
(306, '14.3.188.31', '2022-03-01 13:00:06', 1, '2022-03-01 05:00:06', '2022-05-17 00:53:05'),
(307, '34.77.162.17', '2022-03-01 13:18:39', 1, '2022-03-01 05:18:39', NULL),
(308, '207.46.13.39', '2022-03-01 15:38:27', 1, '2022-03-01 07:38:27', '2022-03-10 23:13:32'),
(309, '34.96.130.11', '2022-03-02 00:16:33', 1, '2022-03-01 16:16:33', NULL),
(310, '207.46.13.39', '2022-03-02 03:03:41', 1, '2022-03-01 19:03:41', '2022-03-10 23:13:32'),
(311, '5.255.231.206', '2022-03-02 11:15:16', 1, '2022-03-02 03:15:16', NULL),
(312, '66.249.71.21', '2022-03-02 14:56:54', 1, '2022-03-02 06:56:54', '2022-04-28 20:43:44'),
(313, '184.69.88.150', '2022-03-02 21:51:56', 1, '2022-03-02 13:51:56', NULL),
(314, '207.46.13.39', '2022-03-03 00:23:12', 1, '2022-03-02 16:23:12', '2022-03-10 23:13:32'),
(315, '27.115.124.101', '2022-03-03 03:07:16', 1, '2022-03-02 19:07:16', NULL),
(316, '42.3.54.122', '2022-03-03 03:15:02', 1, '2022-03-02 19:15:02', NULL),
(317, '42.236.10.75', '2022-03-03 03:17:21', 1, '2022-03-02 19:17:21', NULL),
(318, '50.7.61.96', '2022-03-03 03:17:52', 1, '2022-03-02 19:17:52', NULL),
(319, '207.46.13.39', '2022-03-03 12:28:20', 1, '2022-03-03 04:28:20', '2022-03-10 23:13:32'),
(320, '66.249.71.18', '2022-03-03 16:19:33', 1, '2022-03-03 08:19:33', '2022-05-15 05:29:14'),
(321, '185.191.171.37', '2022-03-03 16:34:14', 1, '2022-03-03 08:34:14', NULL),
(322, '34.96.130.3', '2022-03-03 20:37:16', 1, '2022-03-03 12:37:16', NULL),
(323, '35.81.164.198', '2022-03-03 22:20:53', 1, '2022-03-03 14:20:53', NULL),
(324, '34.215.109.192', '2022-03-03 23:57:42', 1, '2022-03-03 15:57:42', NULL),
(325, '207.46.13.39', '2022-03-04 01:00:51', 1, '2022-03-03 17:00:51', '2022-03-10 23:13:32'),
(326, '34.218.247.44', '2022-03-04 01:05:08', 1, '2022-03-03 17:05:08', NULL),
(327, '34.217.46.167', '2022-03-04 01:20:07', 1, '2022-03-03 17:20:07', NULL),
(328, '14.3.188.31', '2022-03-04 05:34:46', 1, '2022-03-03 21:34:46', '2022-05-17 00:53:05'),
(329, '34.96.130.8', '2022-03-04 11:30:20', 1, '2022-03-04 03:30:20', NULL),
(330, '66.249.71.21', '2022-03-04 18:34:27', 1, '2022-03-04 10:34:27', '2022-04-28 20:43:44'),
(331, '207.46.13.39', '2022-03-05 00:42:37', 1, '2022-03-04 16:42:37', '2022-03-10 23:13:32'),
(332, '34.86.35.12', '2022-03-05 01:10:06', 1, '2022-03-04 17:10:06', NULL),
(333, '207.46.13.39', '2022-03-05 12:29:14', 1, '2022-03-05 04:29:14', '2022-03-10 23:13:32'),
(334, '54.36.148.124', '2022-03-05 12:43:56', 1, '2022-03-05 04:43:56', '2022-05-02 07:09:23'),
(335, '66.249.71.21', '2022-03-05 19:29:47', 1, '2022-03-05 11:29:47', '2022-04-28 20:43:44'),
(336, '207.46.13.39', '2022-03-06 00:12:00', 1, '2022-03-05 16:12:00', '2022-03-10 23:13:32'),
(337, '17.121.112.80', '2022-03-06 10:39:22', 1, '2022-03-06 02:39:22', NULL),
(338, '66.249.71.18', '2022-03-06 19:58:50', 1, '2022-03-06 11:58:50', '2022-05-15 05:29:14'),
(339, '207.46.13.39', '2022-03-06 23:41:12', 1, '2022-03-06 15:41:12', '2022-03-10 23:13:32'),
(340, '36.37.198.0', '2022-03-07 04:32:57', 1, '2022-03-06 20:32:57', '2022-03-06 20:32:57'),
(341, '106.55.250.60', '2022-03-07 15:37:20', 1, '2022-03-07 07:37:20', NULL),
(342, '207.46.13.39', '2022-03-07 23:13:06', 1, '2022-03-07 15:13:06', '2022-03-10 23:13:32'),
(343, '66.249.71.21', '2022-03-08 01:07:03', 1, '2022-03-07 17:07:03', '2022-04-28 20:43:44'),
(344, '34.96.130.5', '2022-03-08 19:40:42', 1, '2022-03-08 11:40:42', NULL),
(345, '66.249.71.21', '2022-03-08 20:06:57', 1, '2022-03-08 12:06:57', '2022-04-28 20:43:44'),
(346, '66.249.71.18', '2022-03-08 21:05:55', 1, '2022-03-08 13:05:55', '2022-05-15 05:29:14'),
(347, '207.46.13.39', '2022-03-08 22:10:18', 1, '2022-03-08 14:10:18', '2022-03-10 23:13:32'),
(348, '18.234.104.74', '2022-03-09 00:33:32', 1, '2022-03-08 16:33:32', NULL),
(349, '207.46.13.39', '2022-03-09 08:15:45', 1, '2022-03-09 00:15:45', '2022-03-10 23:13:32'),
(350, '143.92.56.239', '2022-03-09 14:51:38', 1, '2022-03-09 06:51:38', '2022-04-02 05:30:41'),
(351, '207.46.13.39', '2022-03-09 21:12:58', 1, '2022-03-09 13:12:58', '2022-03-10 23:13:32'),
(352, '182.2.202.210', '2022-03-10 03:40:29', 1, '2022-03-09 19:40:29', NULL),
(353, '167.172.248.132', '2022-03-10 04:50:45', 1, '2022-03-09 20:50:45', NULL),
(354, '66.249.71.24', '2022-03-10 04:52:57', 1, '2022-03-09 20:52:57', '2022-04-04 02:56:00'),
(355, '167.172.19.51', '2022-03-10 06:12:13', 1, '2022-03-09 22:12:13', NULL),
(356, '207.46.13.39', '2022-03-10 07:43:38', 1, '2022-03-09 23:43:38', '2022-03-10 23:13:32'),
(357, '40.115.213.119', '2022-03-11 07:59:15', 1, '2022-03-10 23:59:15', NULL),
(358, '157.55.39.59', '2022-03-11 20:04:34', 1, '2022-03-11 12:04:34', '2022-03-12 08:17:00'),
(359, '34.86.35.31', '2022-03-12 01:24:22', 1, '2022-03-11 17:24:22', NULL),
(360, '157.55.39.59', '2022-03-12 06:37:15', 1, '2022-03-11 22:37:15', '2022-03-12 08:17:00'),
(361, '66.249.71.18', '2022-03-13 16:40:58', 1, '2022-03-13 08:40:58', '2022-05-15 05:29:14'),
(362, '23.82.33.65', '2022-03-14 05:34:34', 1, '2022-03-13 21:34:34', NULL),
(363, '41.10.149.248', '2022-03-14 09:42:48', 1, '2022-03-14 01:42:48', NULL),
(364, '66.249.71.18', '2022-03-14 12:19:36', 1, '2022-03-14 04:19:36', '2022-05-15 05:29:14'),
(365, '103.140.113.232', '2022-03-14 13:37:50', 1, '2022-03-14 05:37:50', '2022-03-14 05:39:54'),
(366, '219.113.86.4', '2022-03-14 13:38:32', 1, '2022-03-14 05:38:32', NULL),
(367, '103.140.113.232', '2022-03-14 13:39:31', 1, '2022-03-14 05:39:31', '2022-03-14 05:39:54'),
(368, '216.244.66.229', '2022-03-14 13:55:27', 1, '2022-03-14 05:55:27', NULL),
(369, '92.118.160.41', '2022-03-14 17:37:44', 1, '2022-03-14 09:37:44', NULL),
(370, '34.86.35.17', '2022-03-15 07:13:21', 1, '2022-03-14 23:13:21', NULL),
(371, '49.37.42.188', '2022-03-15 08:22:33', 1, '2022-03-15 00:22:33', NULL),
(372, '202.189.7.242', '2022-03-16 02:44:11', 1, '2022-03-15 18:44:11', NULL),
(373, '143.92.56.239', '2022-03-16 09:58:23', 1, '2022-03-16 01:58:23', '2022-04-02 05:30:42'),
(374, '27.124.45.75', '2022-03-17 15:27:02', 1, '2022-03-17 07:27:02', '2022-03-20 16:46:09'),
(375, '34.86.35.0', '2022-03-17 22:42:29', 1, '2022-03-17 14:42:29', NULL),
(376, '3.135.205.140', '2022-03-18 09:41:56', 1, '2022-03-18 01:41:56', NULL),
(377, '51.158.103.247', '2022-03-18 13:41:07', 1, '2022-03-18 05:41:07', NULL),
(378, '216.107.129.124', '2022-03-18 14:43:55', 1, '2022-03-18 06:43:55', NULL),
(379, '163.172.148.199', '2022-03-18 15:05:00', 1, '2022-03-18 07:05:00', NULL),
(380, '35.243.151.212', '2022-03-18 15:53:27', 1, '2022-03-18 07:53:27', NULL),
(381, '72.13.62.43', '2022-03-18 23:04:38', 1, '2022-03-18 15:04:38', NULL),
(382, '54.36.148.124', '2022-03-19 22:40:21', 1, '2022-03-19 14:40:21', '2022-05-02 07:09:23'),
(383, '52.53.198.146', '2022-03-20 04:52:17', 1, '2022-03-19 20:52:17', NULL),
(384, '17.121.114.109', '2022-03-20 10:15:00', 1, '2022-03-20 02:15:00', NULL),
(385, '14.3.188.31', '2022-03-20 13:16:41', 1, '2022-03-20 05:16:41', '2022-05-17 00:53:05'),
(386, '27.124.45.75', '2022-03-21 00:46:09', 1, '2022-03-20 16:46:09', NULL),
(387, '212.115.42.245', '2022-03-21 12:37:18', 1, '2022-03-21 04:37:18', NULL),
(388, '14.3.188.31', '2022-03-22 10:41:18', 1, '2022-03-22 02:41:18', '2022-05-17 00:53:05'),
(389, '89.136.38.194', '2022-03-22 19:53:49', 1, '2022-03-22 11:53:49', NULL),
(390, '35.187.176.112', '2022-03-23 20:08:17', 1, '2022-03-23 12:08:17', NULL),
(391, '157.55.39.52', '2022-03-24 12:34:43', 1, '2022-03-24 04:34:43', NULL),
(392, '51.15.195.246', '2022-03-25 14:26:56', 1, '2022-03-25 06:26:56', NULL),
(393, '17.121.113.103', '2022-03-25 18:12:41', 1, '2022-03-25 10:12:41', NULL),
(394, '42.192.173.236', '2022-03-25 22:12:28', 1, '2022-03-25 14:12:28', NULL),
(395, '148.153.98.51', '2022-03-26 07:26:57', 1, '2022-03-25 23:26:57', NULL),
(396, '126.208.102.149', '2022-03-26 12:38:43', 1, '2022-03-26 04:38:43', NULL),
(397, '222.186.175.12', '2022-03-28 19:20:39', 1, '2022-03-28 11:20:39', NULL),
(398, '5.45.207.96', '2022-03-29 10:05:52', 1, '2022-03-29 02:05:52', NULL),
(399, '49.36.176.59', '2022-03-30 05:36:49', 1, '2022-03-29 21:36:49', '2022-03-29 21:37:10'),
(400, '103.159.44.186', '2022-03-30 05:59:16', 1, '2022-03-29 21:59:16', '2022-03-29 21:59:16'),
(401, '202.181.19.249', '2022-03-31 04:35:57', 1, '2022-03-30 20:35:57', NULL),
(402, '103.127.93.181', '2022-03-31 13:31:02', 1, '2022-03-31 05:31:02', NULL),
(403, '126.47.153.89', '2022-03-31 14:09:51', 1, '2022-03-31 06:09:51', '2022-03-31 06:10:25'),
(404, '185.191.171.14', '2022-03-31 14:46:23', 1, '2022-03-31 06:46:23', NULL),
(405, '124.223.60.26', '2022-03-31 19:44:53', 1, '2022-03-31 11:44:53', '2022-05-01 22:30:27'),
(406, '156.146.38.130', '2022-04-02 12:02:37', 1, '2022-04-02 04:02:37', NULL),
(407, '143.92.56.239', '2022-04-02 13:30:42', 1, '2022-04-02 05:30:42', NULL),
(408, '17.121.112.14', '2022-04-02 23:04:56', 1, '2022-04-02 15:04:56', NULL),
(409, '34.74.130.16', '2022-04-03 08:44:20', 1, '2022-04-03 00:44:20', NULL),
(410, '14.3.188.31', '2022-04-03 10:57:24', 1, '2022-04-03 02:57:24', '2022-05-17 00:53:05'),
(411, '54.36.148.124', '2022-04-03 20:48:39', 1, '2022-04-03 12:48:39', '2022-05-02 07:09:23'),
(412, '66.249.71.21', '2022-04-04 01:50:35', 1, '2022-04-03 17:50:35', '2022-04-28 20:43:44'),
(413, '66.249.71.24', '2022-04-04 10:56:00', 1, '2022-04-04 02:56:00', NULL),
(414, '167.172.247.19', '2022-04-05 22:23:37', 1, '2022-04-05 14:23:37', NULL),
(415, '161.35.136.68', '2022-04-05 22:42:07', 1, '2022-04-05 14:42:07', NULL),
(416, '66.249.89.91', '2022-04-07 07:22:20', 1, '2022-04-06 23:22:20', '2022-05-15 19:30:22'),
(417, '3.133.141.11', '2022-04-07 11:40:03', 1, '2022-04-07 03:40:03', NULL),
(418, '34.217.11.213', '2022-04-07 15:11:18', 1, '2022-04-07 07:11:18', NULL),
(419, '45.121.219.5', '2022-04-08 01:28:45', 1, '2022-04-07 17:28:45', NULL),
(420, '103.15.42.200', '2022-04-08 01:28:46', 1, '2022-04-07 17:28:46', NULL),
(421, '114.4.4.134', '2022-04-08 01:28:46', 1, '2022-04-07 17:28:46', NULL),
(422, '163.53.140.69', '2022-04-08 01:28:46', 1, '2022-04-07 17:28:46', NULL),
(423, '114.4.4.198', '2022-04-08 01:28:46', 1, '2022-04-07 17:28:46', NULL),
(424, '103.26.211.5', '2022-04-08 01:28:46', 1, '2022-04-07 17:28:46', NULL),
(425, '124.223.60.26', '2022-04-09 13:33:21', 1, '2022-04-09 05:33:21', '2022-05-01 22:30:27'),
(426, '66.249.71.21', '2022-04-09 15:04:17', 1, '2022-04-09 07:04:17', '2022-04-28 20:43:44'),
(427, '139.155.243.177', '2022-04-11 02:52:25', 1, '2022-04-10 18:52:25', NULL),
(428, '18.134.163.8', '2022-04-13 13:13:53', 1, '2022-04-13 05:13:53', NULL),
(429, '222.163.57.9', '2022-04-14 13:28:05', 1, '2022-04-14 05:28:05', NULL),
(430, '14.3.188.31', '2022-04-15 12:31:25', 1, '2022-04-15 04:31:25', '2022-05-17 00:53:05'),
(431, '101.111.96.73', '2022-04-15 12:54:03', 1, '2022-04-15 04:54:03', '2022-05-05 16:06:10'),
(432, '17.121.114.93', '2022-04-15 21:28:10', 1, '2022-04-15 13:28:10', NULL),
(433, '104.196.165.78', '2022-04-17 05:32:48', 1, '2022-04-16 21:32:48', NULL),
(434, '54.36.148.124', '2022-04-18 07:04:40', 1, '2022-04-17 23:04:40', '2022-05-02 07:09:23'),
(435, '151.106.120.184', '2022-04-18 07:09:14', 1, '2022-04-17 23:09:14', '2022-04-17 23:09:17'),
(436, '47.90.120.64', '2022-04-18 08:57:38', 1, '2022-04-18 00:57:38', NULL),
(437, '51.255.62.13', '2022-04-18 10:05:09', 1, '2022-04-18 02:05:09', NULL),
(438, '210.149.163.68', '2022-04-18 10:13:54', 1, '2022-04-18 02:13:54', NULL),
(439, '219.76.137.192', '2022-04-18 11:17:51', 1, '2022-04-18 03:17:51', '2022-04-21 02:34:59'),
(440, '51.254.49.110', '2022-04-18 13:04:38', 1, '2022-04-18 05:04:38', NULL),
(441, '35.237.199.72', '2022-04-18 19:24:36', 1, '2022-04-18 11:24:36', NULL),
(442, '124.223.60.26', '2022-04-19 03:02:26', 1, '2022-04-18 19:02:26', '2022-05-01 22:30:27'),
(443, '3.92.48.22', '2022-04-19 07:14:26', 1, '2022-04-18 23:14:26', NULL),
(444, '74.125.150.81', '2022-04-20 11:55:12', 1, '2022-04-20 03:55:12', NULL),
(445, '112.197.13.72', '2022-04-20 18:23:35', 1, '2022-04-20 10:23:35', NULL),
(446, '202.122.198.228', '2022-04-21 00:54:43', 1, '2022-04-20 16:54:43', NULL),
(447, '103.242.58.100', '2022-04-21 01:29:52', 1, '2022-04-20 17:29:52', NULL),
(448, '219.76.137.192', '2022-04-21 10:34:59', 1, '2022-04-21 02:34:59', NULL),
(449, '205.210.31.14', '2022-04-22 06:31:53', 1, '2022-04-21 22:31:53', NULL),
(450, '198.235.24.29', '2022-04-22 11:56:15', 1, '2022-04-22 03:56:15', NULL),
(451, '51.15.247.214', '2022-04-22 15:30:18', 1, '2022-04-22 07:30:18', NULL),
(452, '17.121.114.26', '2022-04-23 01:12:24', 1, '2022-04-22 17:12:24', NULL),
(453, '66.115.149.41', '2022-04-23 21:31:54', 1, '2022-04-23 13:31:54', NULL),
(454, '3.135.209.204', '2022-04-24 01:31:58', 1, '2022-04-23 17:31:58', NULL),
(455, '35.237.231.239', '2022-04-24 23:44:14', 1, '2022-04-24 15:44:14', NULL),
(456, '192.99.18.122', '2022-04-25 03:58:06', 1, '2022-04-24 19:58:06', '2022-04-24 19:58:14'),
(457, '180.235.60.232', '2022-04-25 06:40:00', 1, '2022-04-24 22:40:00', '2022-05-17 00:25:40'),
(458, '198.235.24.130', '2022-04-26 02:49:24', 1, '2022-04-25 18:49:24', NULL),
(459, '198.235.24.22', '2022-04-26 10:30:21', 1, '2022-04-26 02:30:21', NULL),
(460, '51.158.108.61', '2022-04-26 10:53:25', 1, '2022-04-26 02:53:25', NULL),
(461, '180.235.60.232', '2022-04-27 01:27:47', 1, '2022-04-26 17:27:47', '2022-05-17 00:25:40'),
(462, '210.139.253.9', '2022-04-27 07:44:42', 1, '2022-04-26 23:44:42', NULL),
(463, '180.235.60.232', '2022-04-27 07:44:49', 1, '2022-04-26 23:44:49', '2022-05-17 00:25:40'),
(464, '14.3.188.31', '2022-04-28 02:10:21', 1, '2022-04-27 18:10:21', '2022-05-17 00:53:05'),
(465, '180.235.60.232', '2022-04-28 02:10:40', 1, '2022-04-27 18:10:40', '2022-05-17 00:25:40'),
(466, '14.3.188.31', '2022-04-28 02:13:28', 1, '2022-04-27 18:13:28', '2022-05-17 00:53:05'),
(467, '180.235.60.232', '2022-04-28 02:14:49', 1, '2022-04-27 18:14:49', '2022-05-17 00:25:40'),
(468, '54.212.206.114', '2022-04-28 13:23:42', 1, '2022-04-28 05:23:42', NULL),
(469, '66.249.71.21', '2022-04-29 04:43:44', 1, '2022-04-28 20:43:44', NULL),
(470, '198.235.24.16', '2022-04-29 08:47:02', 1, '2022-04-29 00:47:02', NULL),
(471, '66.249.89.79', '2022-04-29 10:41:49', 1, '2022-04-29 02:41:49', NULL),
(472, '205.210.31.13', '2022-04-30 04:49:43', 1, '2022-04-29 20:49:43', NULL),
(473, '180.235.60.232', '2022-05-02 02:49:58', 1, '2022-05-01 18:49:58', '2022-05-17 00:25:40'),
(474, '124.223.60.26', '2022-05-02 06:30:27', 1, '2022-05-01 22:30:27', NULL),
(475, '54.36.148.124', '2022-05-02 15:09:23', 1, '2022-05-02 07:09:23', NULL),
(476, '154.160.1.105', '2022-05-02 23:10:43', 1, '2022-05-02 15:10:43', NULL),
(477, '171.22.76.21', '2022-05-03 02:09:28', 1, '2022-05-02 18:09:28', NULL),
(478, '205.210.31.23', '2022-05-04 01:13:46', 1, '2022-05-03 17:13:46', NULL),
(479, '205.210.31.130', '2022-05-04 03:52:59', 1, '2022-05-03 19:52:59', NULL),
(480, '205.210.31.157', '2022-05-04 07:35:38', 1, '2022-05-03 23:35:38', NULL),
(481, '34.220.197.171', '2022-05-05 15:42:26', 1, '2022-05-05 07:42:26', '2022-05-05 07:42:29'),
(482, '101.111.96.73', '2022-05-06 00:06:10', 1, '2022-05-05 16:06:10', NULL),
(483, '192.99.110.158', '2022-05-06 23:27:01', 1, '2022-05-06 15:27:01', NULL),
(484, '198.235.24.9', '2022-05-06 23:32:56', 1, '2022-05-06 15:32:56', NULL),
(485, '198.235.24.150', '2022-05-07 00:01:51', 1, '2022-05-06 16:01:51', NULL),
(486, '74.125.150.12', '2022-05-07 15:25:47', 1, '2022-05-07 07:25:47', NULL),
(487, '205.210.31.9', '2022-05-08 05:59:40', 1, '2022-05-07 21:59:40', NULL),
(488, '159.203.126.203', '2022-05-08 15:56:39', 1, '2022-05-08 07:56:39', NULL),
(489, '143.198.29.9', '2022-05-08 16:49:26', 1, '2022-05-08 08:49:26', NULL),
(490, '35.237.206.237', '2022-05-09 14:02:44', 1, '2022-05-09 06:02:44', NULL),
(491, '77.88.5.89', '2022-05-10 04:39:07', 1, '2022-05-09 20:39:07', NULL),
(492, '77.88.5.3', '2022-05-10 04:40:13', 1, '2022-05-09 20:40:13', NULL),
(493, '14.3.188.31', '2022-05-10 09:47:42', 1, '2022-05-10 01:47:42', '2022-05-17 00:53:05'),
(494, '198.235.24.26', '2022-05-10 12:19:14', 1, '2022-05-10 04:19:14', NULL),
(495, '205.210.31.20', '2022-05-12 23:04:52', 1, '2022-05-12 15:04:52', NULL),
(496, '180.235.60.232', '2022-05-13 09:00:58', 1, '2022-05-13 01:00:58', '2022-05-17 00:25:40'),
(497, '3.144.158.235', '2022-05-15 11:20:29', 1, '2022-05-15 03:20:29', NULL),
(498, '66.249.71.18', '2022-05-15 12:12:45', 1, '2022-05-15 04:12:45', '2022-05-15 05:29:14'),
(499, '66.249.89.91', '2022-05-16 03:30:22', 1, '2022-05-15 19:30:22', NULL),
(500, '119.18.151.41', '2022-05-16 07:56:25', 1, '2022-05-15 23:56:25', NULL),
(501, '34.74.41.187', '2022-05-16 15:31:15', 1, '2022-05-16 07:31:15', NULL),
(502, '65.0.66.106', '2022-05-16 23:08:06', 1, '2022-05-16 15:08:06', NULL),
(503, '14.3.188.31', '2022-05-17 05:37:07', 1, '2022-05-16 21:37:07', '2022-05-17 00:53:05'),
(504, '51.222.253.6', '2022-05-17 05:40:20', 1, '2022-05-16 21:40:20', NULL),
(505, '14.3.188.31', '2022-05-17 05:45:07', 1, '2022-05-16 21:45:07', '2022-05-17 00:53:05'),
(506, '180.235.60.232', '2022-05-17 06:16:24', 1, '2022-05-16 22:16:24', '2022-05-17 00:25:40'),
(507, '14.3.188.31', '2022-05-17 07:07:47', 1, '2022-05-16 23:07:47', '2022-05-17 00:53:05'),
(508, '180.235.60.232', '2022-05-17 08:25:40', 1, '2022-05-17 00:25:40', NULL),
(509, '14.3.188.31', '2022-05-17 08:47:51', 1, '2022-05-17 00:47:51', '2022-05-17 00:53:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_mails`
--
ALTER TABLE `customer_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `our_projects`
--
ALTER TABLE `our_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_multiple_images`
--
ALTER TABLE `product_multiple_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_multiple_videos`
--
ALTER TABLE `product_multiple_videos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_mails`
--
ALTER TABLE `customer_mails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `our_projects`
--
ALTER TABLE `our_projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_multiple_images`
--
ALTER TABLE `product_multiple_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `product_multiple_videos`
--
ALTER TABLE `product_multiple_videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=510;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
