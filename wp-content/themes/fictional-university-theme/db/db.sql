-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 23, 2021 at 08:46 AM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `wp_fictionaluniversity`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
                                  `meta_id` bigint(20) UNSIGNED NOT NULL,
                                  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
                                  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
                                  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
                               `comment_ID` bigint(20) UNSIGNED NOT NULL,
                               `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
                               `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
                               `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                               `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                               `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                               `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
                               `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
                               `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
                               `comment_karma` int(11) NOT NULL DEFAULT '0',
                               `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
                               `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                               `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
                               `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
                               `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-09-02 09:32:54', '2020-09-02 09:32:54', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
                            `link_id` bigint(20) UNSIGNED NOT NULL,
                            `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
                            `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
                            `link_rating` int(11) NOT NULL DEFAULT '0',
                            `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
                            `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
                            `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
                              `option_id` bigint(20) UNSIGNED NOT NULL,
                              `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                              `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
                              `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://fictional-university:8888/', 'yes'),
(2, 'home', 'http://fictional-university:8888/', 'yes'),
(3, 'blogname', 'Fictional University', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'yourname@yourdomain.mamp', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:183:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:11:\"campuses/?$\";s:26:\"index.php?post_type=campus\";s:41:\"campuses/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:36:\"campuses/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=campus&feed=$matches[1]\";s:28:\"campuses/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=campus&paged=$matches[1]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:11:\"programs/?$\";s:27:\"index.php?post_type=program\";s:41:\"programs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:36:\"programs/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:28:\"programs/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=program&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"campuses/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"campuses/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"campuses/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"campuses/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"campuses/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"campuses/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"campuses/([^/]+)/embed/?$\";s:39:\"index.php?campus=$matches[1]&embed=true\";s:29:\"campuses/([^/]+)/trackback/?$\";s:33:\"index.php?campus=$matches[1]&tb=1\";s:49:\"campuses/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:44:\"campuses/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?campus=$matches[1]&feed=$matches[2]\";s:37:\"campuses/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&paged=$matches[2]\";s:44:\"campuses/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?campus=$matches[1]&cpage=$matches[2]\";s:33:\"campuses/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?campus=$matches[1]&page=$matches[2]\";s:25:\"campuses/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"campuses/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"campuses/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"campuses/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"campuses/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"campuses/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"programs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"programs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"programs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"programs/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:29:\"programs/([^/]+)/trackback/?$\";s:34:\"index.php?program=$matches[1]&tb=1\";s:49:\"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:44:\"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:37:\"programs/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:44:\"programs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&cpage=$matches[2]\";s:33:\"programs/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?program=$matches[1]&page=$matches[2]\";s:25:\"programs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"programs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"programs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"professor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"professor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"professor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"professor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"professor/([^/]+)/embed/?$\";s:42:\"index.php?professor=$matches[1]&embed=true\";s:30:\"professor/([^/]+)/trackback/?$\";s:36:\"index.php?professor=$matches[1]&tb=1\";s:38:\"professor/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&paged=$matches[2]\";s:45:\"professor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&cpage=$matches[2]\";s:34:\"professor/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?professor=$matches[1]&page=$matches[2]\";s:26:\"professor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"professor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"professor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"professor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=36&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:39:\"manual-image-crop/manual-image-crop.php\";i:3;s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'fictional-university-theme', 'yes'),
(41, 'stylesheet', 'fictional-university-theme', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '38', 'yes'),
(82, 'page_on_front', '36', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1614591174', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:7:{i:1616484775;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1616491974;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1616491975;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1616491995;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1616491996;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1616664775;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1600957658;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(130, 'can_compress_scripts', '1', 'no'),
(143, 'finished_updating_comment_type', '1', 'yes'),
(146, 'WPLANG', '', 'yes'),
(147, 'new_admin_email', 'yourname@yourdomain.mamp', 'yes'),
(176, '_transient_health-check-site-status-result', '{\"good\":10,\"recommended\":10,\"critical\":0}', 'yes'),
(191, 'current_theme', 'Fictional University', 'yes'),
(192, 'theme_mods_fictional-university-theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:18:\"headerMenuLocation\";i:2;s:17:\"footerLocationOne\";i:3;s:17:\"footerLocationTwo\";i:4;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(193, 'theme_switched', '', 'yes'),
(227, 'recently_activated', 'a:0:{}', 'yes'),
(231, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(247, 'category_children', 'a:0:{}', 'yes'),
(270, 'recovery_mode_email_last_sent', '1601140770', 'yes'),
(285, 'acf_version', '5.9.1', 'yes'),
(339, 'mic_make2x', 'true', 'yes'),
(432, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"yourname@yourdomain.mamp\";s:7:\"version\";s:5:\"5.5.3\";s:9:\"timestamp\";i:1604421411;}', 'no'),
(562, '_site_transient_timeout_theme_roots', '1616486494', 'no'),
(563, '_site_transient_theme_roots', 'a:1:{s:26:\"fictional-university-theme\";s:7:\"/themes\";}', 'no'),
(565, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:5:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.7-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.7-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.6.2\";s:7:\"version\";s:5:\"5.6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.6.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.6.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.6.1-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.6.1\";s:7:\"version\";s:5:\"5.6.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1616484699;s:15:\"version_checked\";s:5:\"5.5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(566, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1616484699;s:7:\"checked\";a:1:{s:26:\"fictional-university-theme\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(567, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1616484700;s:7:\"checked\";a:6:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.1\";s:19:\"akismet/akismet.php\";s:5:\"4.1.6\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.6\";s:9:\"hello.php\";s:5:\"1.7.2\";s:39:\"manual-image-crop/manual-image-crop.php\";s:4:\"1.12\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:5:\"3.1.3\";}s:8:\"response\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.6.2\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.7\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:35:\"w.org/plugins/regenerate-thumbnails\";s:4:\"slug\";s:21:\"regenerate-thumbnails\";s:6:\"plugin\";s:47:\"regenerate-thumbnails/regenerate-thumbnails.php\";s:11:\"new_version\";s:5:\"3.1.5\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/regenerate-thumbnails/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/regenerate-thumbnails.3.1.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390\";s:2:\"1x\";s:76:\"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.7\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"manual-image-crop/manual-image-crop.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/manual-image-crop\";s:4:\"slug\";s:17:\"manual-image-crop\";s:6:\"plugin\";s:39:\"manual-image-crop/manual-image-crop.php\";s:11:\"new_version\";s:4:\"1.12\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/manual-image-crop/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/manual-image-crop.1.12.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-256x256.png?rev=1154913\";s:2:\"1x\";s:70:\"https://ps.w.org/manual-image-crop/assets/icon-128x128.png?rev=1154913\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/manual-image-crop/assets/banner-1544x500.jpg?rev=781224\";s:2:\"1x\";s:71:\"https://ps.w.org/manual-image-crop/assets/banner-772x250.jpg?rev=781224\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(568, '_site_transient_timeout_php_check_fb6df547cfb7d95cb9b49b8301cad3ab', '1617089501', 'no'),
(569, '_site_transient_php_check_fb6df547cfb7d95cb9b49b8301cad3ab', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
                               `meta_id` bigint(20) UNSIGNED NOT NULL,
                               `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
                               `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
                               `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_lock', '1601011427:1'),
(5, 8, '_edit_lock', '1601011905:1'),
(7, 10, '_edit_lock', '1601040082:1'),
(8, 3, '_edit_lock', '1601024185:1'),
(9, 13, '_edit_lock', '1601296653:1'),
(10, 15, '_edit_lock', '1601026736:1'),
(11, 17, '_edit_lock', '1601028669:1'),
(12, 21, '_edit_last', '1'),
(13, 21, '_edit_lock', '1601027516:1'),
(14, 23, '_menu_item_type', 'custom'),
(15, 23, '_menu_item_menu_item_parent', '0'),
(16, 23, '_menu_item_object_id', '23'),
(17, 23, '_menu_item_object', 'custom'),
(18, 23, '_menu_item_target', ''),
(19, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(20, 23, '_menu_item_xfn', ''),
(21, 23, '_menu_item_url', 'http://fictional-university:8888/'),
(22, 23, '_menu_item_orphaned', '1601041400'),
(23, 24, '_menu_item_type', 'post_type'),
(24, 24, '_menu_item_menu_item_parent', '0'),
(25, 24, '_menu_item_object_id', '3'),
(26, 24, '_menu_item_object', 'page'),
(27, 24, '_menu_item_target', ''),
(28, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(29, 24, '_menu_item_xfn', ''),
(30, 24, '_menu_item_url', ''),
(32, 25, '_menu_item_type', 'post_type'),
(33, 25, '_menu_item_menu_item_parent', '0'),
(34, 25, '_menu_item_object_id', '21'),
(35, 25, '_menu_item_object', 'page'),
(36, 25, '_menu_item_target', ''),
(37, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(38, 25, '_menu_item_xfn', ''),
(39, 25, '_menu_item_url', ''),
(40, 25, '_menu_item_orphaned', '1601041401'),
(41, 26, '_menu_item_type', 'post_type'),
(42, 26, '_menu_item_menu_item_parent', '0'),
(43, 26, '_menu_item_object_id', '13'),
(44, 26, '_menu_item_object', 'page'),
(45, 26, '_menu_item_target', ''),
(46, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(47, 26, '_menu_item_xfn', ''),
(48, 26, '_menu_item_url', ''),
(50, 27, '_menu_item_type', 'post_type'),
(51, 27, '_menu_item_menu_item_parent', '0'),
(52, 27, '_menu_item_object_id', '17'),
(53, 27, '_menu_item_object', 'page'),
(54, 27, '_menu_item_target', ''),
(55, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 27, '_menu_item_xfn', ''),
(57, 27, '_menu_item_url', ''),
(58, 27, '_menu_item_orphaned', '1601041401'),
(59, 28, '_menu_item_type', 'post_type'),
(60, 28, '_menu_item_menu_item_parent', '0'),
(61, 28, '_menu_item_object_id', '15'),
(62, 28, '_menu_item_object', 'page'),
(63, 28, '_menu_item_target', ''),
(64, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(65, 28, '_menu_item_xfn', ''),
(66, 28, '_menu_item_url', ''),
(67, 28, '_menu_item_orphaned', '1601041401'),
(68, 29, '_menu_item_type', 'post_type'),
(69, 29, '_menu_item_menu_item_parent', '0'),
(70, 29, '_menu_item_object_id', '2'),
(71, 29, '_menu_item_object', 'page'),
(72, 29, '_menu_item_target', ''),
(73, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(74, 29, '_menu_item_xfn', ''),
(75, 29, '_menu_item_url', ''),
(76, 29, '_menu_item_orphaned', '1601041401'),
(77, 30, '_menu_item_type', 'post_type'),
(78, 30, '_menu_item_menu_item_parent', '0'),
(79, 30, '_menu_item_object_id', '10'),
(80, 30, '_menu_item_object', 'page'),
(81, 30, '_menu_item_target', ''),
(82, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(83, 30, '_menu_item_xfn', ''),
(84, 30, '_menu_item_url', ''),
(85, 30, '_menu_item_orphaned', '1601041401'),
(86, 31, '_menu_item_type', 'post_type'),
(87, 31, '_menu_item_menu_item_parent', '0'),
(88, 31, '_menu_item_object_id', '2'),
(89, 31, '_menu_item_object', 'page'),
(90, 31, '_menu_item_target', ''),
(91, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(92, 31, '_menu_item_xfn', ''),
(93, 31, '_menu_item_url', ''),
(95, 32, '_menu_item_type', 'post_type'),
(96, 32, '_menu_item_menu_item_parent', '0'),
(97, 32, '_menu_item_object_id', '21'),
(98, 32, '_menu_item_object', 'page'),
(99, 32, '_menu_item_target', ''),
(100, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(101, 32, '_menu_item_xfn', ''),
(102, 32, '_menu_item_url', ''),
(113, 34, '_menu_item_type', 'custom'),
(114, 34, '_menu_item_menu_item_parent', '0'),
(115, 34, '_menu_item_object_id', '34'),
(116, 34, '_menu_item_object', 'custom'),
(117, 34, '_menu_item_target', ''),
(118, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(119, 34, '_menu_item_xfn', ''),
(120, 34, '_menu_item_url', 'https://google.com'),
(122, 35, '_menu_item_type', 'custom'),
(123, 35, '_menu_item_menu_item_parent', '0'),
(124, 35, '_menu_item_object_id', '35'),
(125, 35, '_menu_item_object', 'custom'),
(126, 35, '_menu_item_target', ''),
(127, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(128, 35, '_menu_item_xfn', ''),
(129, 35, '_menu_item_url', 'https://chapoba.org'),
(131, 36, '_edit_last', '1'),
(132, 36, '_edit_lock', '1601044036:1'),
(133, 38, '_edit_last', '1'),
(134, 38, '_edit_lock', '1601043938:1'),
(135, 40, '_edit_last', '1'),
(136, 40, '_edit_lock', '1601156156:1'),
(137, 42, '_edit_last', '1'),
(138, 42, '_edit_lock', '1612863214:1'),
(139, 43, '_edit_last', '1'),
(140, 43, '_edit_lock', '1612885149:1'),
(141, 44, '_edit_last', '1'),
(142, 44, '_edit_lock', '1612862950:1'),
(144, 48, '_edit_last', '1'),
(145, 48, '_edit_lock', '1601159184:1'),
(146, 44, 'event_date', '20210219'),
(147, 44, '_event_date', 'field_5f6fba98dfe3c'),
(148, 43, 'event_date', '20210407'),
(149, 43, '_event_date', 'field_5f6fba98dfe3c'),
(150, 42, 'event_date', '20161222'),
(151, 42, '_event_date', 'field_5f6fba98dfe3c'),
(152, 50, '_edit_last', '1'),
(153, 50, '_edit_lock', '1612863295:1'),
(154, 50, 'event_date', '20201231'),
(155, 50, '_event_date', 'field_5f6fba98dfe3c'),
(156, 51, '_edit_last', '1'),
(157, 51, '_edit_lock', '1601211698:1'),
(158, 53, '_edit_last', '1'),
(159, 53, '_edit_lock', '1601212545:1'),
(160, 53, 'event_date', '20161231'),
(161, 53, '_event_date', 'field_5f6fba98dfe3c'),
(162, 54, '_edit_last', '1'),
(163, 54, '_edit_lock', '1601329000:1'),
(164, 55, '_edit_last', '1'),
(165, 55, '_edit_lock', '1605139304:1'),
(166, 56, '_edit_last', '1'),
(167, 56, '_edit_lock', '1601217841:1'),
(168, 57, '_edit_last', '1'),
(169, 57, '_edit_lock', '1601282460:1'),
(170, 43, 'related_programs', 'a:2:{i:0;s:2:\"55\";i:1;s:2:\"54\";}'),
(171, 43, '_related_programs', 'field_5f70aa060d591'),
(172, 59, '_edit_last', '1'),
(173, 59, '_edit_lock', '1601288338:1'),
(174, 60, '_edit_last', '1'),
(175, 60, '_edit_lock', '1601289414:1'),
(176, 60, 'related_programs', 'a:1:{i:0;s:2:\"55\";}'),
(177, 60, '_related_programs', 'field_5f70aa060d591'),
(178, 61, '_wp_attached_file', '2020/09/barksalot-scaled.jpg'),
(179, 61, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:28:\"2020/09/barksalot-scaled.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"barksalot-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"barksalot-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"barksalot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"barksalot-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"barksalot-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:23:\"barksalot-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:21:\"barksalot-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:21:\"barksalot-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"barksalot.jpg\";}'),
(180, 60, '_thumbnail_id', '61'),
(181, 62, '_wp_attached_file', '2020/09/meowsalot-scaled.jpg'),
(182, 62, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:28:\"2020/09/meowsalot-scaled.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"meowsalot-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"meowsalot-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"meowsalot-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"meowsalot-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"meowsalot-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:23:\"meowsalot-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:21:\"meowsalot-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:21:\"meowsalot-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:13:\"meowsalot.jpg\";s:15:\"micSelectedArea\";a:1:{s:18:\"professorLandscape\";a:5:{s:1:\"x\";s:2:\"40\";s:1:\"y\";s:2:\"20\";s:1:\"w\";s:3:\"360\";s:1:\"h\";s:18:\"234.00000000000585\";s:5:\"scale\";s:4:\"5.12\";}}}'),
(183, 59, '_thumbnail_id', '62'),
(184, 59, 'related_programs', 'a:1:{i:0;s:2:\"55\";}'),
(185, 59, '_related_programs', 'field_5f70aa060d591'),
(186, 63, '_edit_last', '1'),
(187, 63, '_edit_lock', '1601285618:1'),
(188, 64, '_edit_last', '1'),
(189, 64, '_edit_lock', '1601286306:1'),
(193, 64, 'related_programs', 'a:1:{i:0;s:2:\"54\";}'),
(194, 64, '_related_programs', 'field_5f70aa060d591'),
(195, 66, '_wp_attached_file', '2020/09/frog-bio-scaled.jpg'),
(196, 66, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1999;s:4:\"file\";s:27:\"2020/09/frog-bio-scaled.jpg\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"frog-bio-300x234.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:234;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"frog-bio-1024x800.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:800;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"frog-bio-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"frog-bio-768x600.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"frog-bio-1536x1199.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1199;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"frog-bio-2048x1599.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1599;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:20:\"frog-bio-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:20:\"frog-bio-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"frog-bio.jpg\";}'),
(197, 64, '_thumbnail_id', '66'),
(198, 66, '_edit_lock', '1601286863:1'),
(199, 66, '_edit_last', '1'),
(200, 68, '_edit_last', '1'),
(201, 68, '_edit_lock', '1601289388:1'),
(202, 71, '_wp_attached_file', '2020/09/field-scaled.jpg'),
(203, 71, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:24:\"2020/09/field-scaled.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"field-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"field-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"field-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"field-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"field-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:19:\"field-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:17:\"field-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:17:\"field-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:18:\"field-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:9:\"field.jpg\";}'),
(204, 60, 'page_banner_subtitle', 'The leading voice on barking and biology. '),
(205, 60, '_page_banner_subtitle', 'field_5f71baa4c7cd9'),
(206, 60, 'page_banner_background_image', '71'),
(207, 60, '_page_banner_background_image', 'field_5f71babbc7cda'),
(208, 72, '_wp_attached_file', '2020/09/building-scaled.jpg'),
(209, 72, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1709;s:4:\"file\";s:27:\"2020/09/building-scaled.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"building-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"building-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"building-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"building-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"building-1536x1025.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1025;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"building-2048x1367.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1367;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:20:\"building-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:20:\"building-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:21:\"building-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"building.jpg\";}'),
(210, 13, '_edit_last', '1'),
(211, 13, 'page_banner_subtitle', 'We are a great school that has around for long time.'),
(212, 13, '_page_banner_subtitle', 'field_5f71baa4c7cd9'),
(213, 13, 'page_banner_background_image', '72'),
(214, 13, '_page_banner_background_image', 'field_5f71babbc7cda'),
(215, 73, 'page_banner_subtitle', 'We are a great school tht has around for long time.'),
(216, 73, '_page_banner_subtitle', 'field_5f71baa4c7cd9'),
(217, 73, 'page_banner_background_image', '72'),
(218, 73, '_page_banner_background_image', 'field_5f71babbc7cda'),
(219, 74, 'page_banner_subtitle', 'We are a great school that has around for long time.'),
(220, 74, '_page_banner_subtitle', 'field_5f71baa4c7cd9'),
(221, 74, 'page_banner_background_image', '72'),
(222, 74, '_page_banner_background_image', 'field_5f71babbc7cda'),
(223, 75, '_wp_attached_file', '2020/09/notebook-scaled.jpg'),
(224, 75, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1922;s:4:\"file\";s:27:\"2020/09/notebook-scaled.jpg\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"notebook-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"notebook-1024x769.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:769;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"notebook-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"notebook-768x577.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:577;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:22:\"notebook-1536x1153.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1153;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:22:\"notebook-2048x1538.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"professorLandscape\";a:4:{s:4:\"file\";s:20:\"notebook-400x260.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:17:\"professorPortrait\";a:4:{s:4:\"file\";s:20:\"notebook-480x650.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:650;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"pageBanner\";a:4:{s:4:\"file\";s:21:\"notebook-1500x350.jpg\";s:5:\"width\";i:1500;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:12:\"notebook.jpg\";}'),
(225, 44, 'page_banner_subtitle', 'The greatest day of year.'),
(226, 44, '_page_banner_subtitle', 'field_5f71baa4c7cd9'),
(227, 44, 'page_banner_background_image', '75'),
(228, 44, '_page_banner_background_image', 'field_5f71babbc7cda'),
(229, 44, 'related_programs', ''),
(230, 44, '_related_programs', 'field_5f70aa060d591'),
(231, 76, '_edit_last', '1'),
(232, 76, '_edit_lock', '1601323410:1'),
(233, 76, 'page_banner_subtitle', 'A beautiful campus in the heart of downtown.'),
(234, 76, '_page_banner_subtitle', 'field_5f71baa4c7cd9'),
(235, 76, 'page_banner_background_image', ''),
(236, 76, '_page_banner_background_image', 'field_5f71babbc7cda'),
(237, 77, '_edit_last', '1'),
(238, 77, '_edit_lock', '1601323883:1'),
(239, 77, 'page_banner_subtitle', ''),
(240, 77, '_page_banner_subtitle', 'field_5f71baa4c7cd9'),
(241, 77, 'page_banner_background_image', ''),
(242, 77, '_page_banner_background_image', 'field_5f71babbc7cda'),
(243, 78, '_edit_last', '1'),
(244, 78, '_edit_lock', '1601321790:1'),
(245, 76, 'map_location', 'a:14:{s:7:\"address\";s:38:\"260 W 76th St, New York, NY 10023, USA\";s:3:\"lat\";d:40.78221542481805;s:3:\"lng\";d:-73.98240678950194;s:4:\"zoom\";i:14;s:8:\"place_id\";s:27:\"ChIJ0TRKLYhYwokR_QIw0nZ5l3E\";s:13:\"street_number\";s:3:\"260\";s:11:\"street_name\";s:16:\"West 76th Street\";s:17:\"street_name_short\";s:9:\"W 76th St\";s:4:\"city\";s:8:\"New York\";s:5:\"state\";s:8:\"New York\";s:11:\"state_short\";s:2:\"NY\";s:9:\"post_code\";s:5:\"10023\";s:7:\"country\";s:13:\"United States\";s:13:\"country_short\";s:2:\"US\";}'),
(246, 76, '_map_location', 'field_5f7239f34091c'),
(247, 77, 'map_location', 'a:11:{s:7:\"address\";s:28:\"Manhattan, New York, NY, USA\";s:3:\"lat\";d:40.7830603;s:3:\"lng\";d:-73.9712488;s:4:\"zoom\";i:14;s:8:\"place_id\";s:27:\"ChIJYeZuBI9YwokRjMDs_IEyCwo\";s:4:\"name\";s:9:\"Manhattan\";s:4:\"city\";s:8:\"New York\";s:5:\"state\";s:8:\"New York\";s:11:\"state_short\";s:2:\"NY\";s:7:\"country\";s:13:\"United States\";s:13:\"country_short\";s:2:\"US\";}'),
(248, 77, '_map_location', 'field_5f7239f34091c'),
(249, 80, '_edit_last', '1'),
(250, 80, '_edit_lock', '1601328978:1'),
(251, 54, 'page_banner_subtitle', ''),
(252, 54, '_page_banner_subtitle', 'field_5f71baa4c7cd9'),
(253, 54, 'page_banner_background_image', ''),
(254, 54, '_page_banner_background_image', 'field_5f71babbc7cda'),
(255, 54, 'related_campus', 'a:1:{i:0;s:2:\"76\";}'),
(256, 54, '_related_campus', 'field_5f725798e7830'),
(257, 83, '_edit_last', '1'),
(258, 83, 'page_banner_subtitle', ''),
(259, 83, '_page_banner_subtitle', 'field_5f71baa4c7cd9'),
(260, 83, 'page_banner_background_image', ''),
(261, 83, '_page_banner_background_image', 'field_5f71babbc7cda'),
(262, 84, 'page_banner_subtitle', ''),
(263, 84, '_page_banner_subtitle', 'field_5f71baa4c7cd9'),
(264, 84, 'page_banner_background_image', ''),
(265, 84, '_page_banner_background_image', 'field_5f71babbc7cda'),
(266, 83, '_edit_lock', '1601841781:1'),
(267, 86, '_edit_last', '1'),
(268, 86, '_edit_lock', '1605885297:1'),
(270, 86, 'page_banner_subtitle', ''),
(271, 86, '_page_banner_subtitle', 'field_5f71baa4c7cd9'),
(272, 86, 'page_banner_background_image', ''),
(273, 86, '_page_banner_background_image', 'field_5f71babbc7cda'),
(274, 87, 'page_banner_subtitle', ''),
(275, 87, '_page_banner_subtitle', 'field_5f71baa4c7cd9'),
(276, 87, 'page_banner_background_image', ''),
(277, 87, '_page_banner_background_image', 'field_5f71babbc7cda'),
(278, 43, 'page_banner_subtitle', ''),
(279, 43, '_page_banner_subtitle', 'field_5f71baa4c7cd9'),
(280, 43, 'page_banner_background_image', ''),
(281, 43, '_page_banner_background_image', 'field_5f71babbc7cda');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
                            `ID` bigint(20) UNSIGNED NOT NULL,
                            `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
                            `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
                            `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
                            `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
                            `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
                            `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
                            `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
                            `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
                            `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
                            `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
                            `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
                            `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
                            `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
                            `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
                            `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
                            `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `menu_order` int(11) NOT NULL DEFAULT '0',
                            `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
                            `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-09-02 09:32:54', '2020-09-02 09:32:54', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-09-02 09:32:54', '2020-09-02 09:32:54', '', 0, 'http://fictional-university:8888/?p=1', 0, 'post', '', 1),
(2, 1, '2020-09-02 09:32:54', '2020-09-02 09:32:54', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://fictional-university:8888/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-09-02 09:32:54', '2020-09-02 09:32:54', '', 0, 'http://fictional-university:8888/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-09-02 09:32:54', '2020-09-02 09:32:54', '<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our website address is: http://fictional-university:8888/.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What personal data we collect and why we collect it</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Comments</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Media</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Contact forms</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Embedded content from other websites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Analytics</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Your contact information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Additional information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>How we protect your data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What data breach procedures we have in place</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What third parties we receive data from</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What automated decision making and/or profiling we do with user data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Industry regulatory disclosure requirements</h3>\n<!-- /wp:heading -->', 'Privacy Policy', '', 'publish', 'closed', 'open', '', 'privacy-policy', '', '', '2020-09-25 08:57:28', '2020-09-25 08:57:28', '', 0, 'http://fictional-university:8888/?page_id=3', 0, 'page', '', 0),
(6, 1, '2020-09-25 05:25:59', '2020-09-25 05:25:59', '<!-- wp:paragraph -->\n<p><em>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</em></p>\n<!-- /wp:paragraph -->', 'Test post', '', 'publish', 'open', 'open', '', 'test-post', '', '', '2020-09-25 05:25:59', '2020-09-25 05:25:59', '', 0, 'http://fictional-university:8888/?p=6', 0, 'post', '', 0),
(7, 1, '2020-09-25 05:25:59', '2020-09-25 05:25:59', '<!-- wp:paragraph -->\n<p><em>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</em></p>\n<!-- /wp:paragraph -->', 'Test post', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2020-09-25 05:25:59', '2020-09-25 05:25:59', '', 6, 'http://fictional-university:8888/2020/09/25/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2020-09-25 05:26:37', '2020-09-25 05:26:37', '<!-- wp:paragraph -->\n<p><em>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</em></p>\n<!-- /wp:paragraph -->', 'Second post', '', 'publish', 'open', 'open', '', 'second-post', '', '', '2020-09-25 05:26:37', '2020-09-25 05:26:37', '', 0, 'http://fictional-university:8888/?p=8', 0, 'post', '', 0),
(9, 1, '2020-09-25 05:26:37', '2020-09-25 05:26:37', '<!-- wp:paragraph -->\n<p><em>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</em></p>\n<!-- /wp:paragraph -->', 'Second post', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2020-09-25 05:26:37', '2020-09-25 05:26:37', '', 8, 'http://fictional-university:8888/2020/09/25/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2020-09-25 05:53:41', '2020-09-25 05:53:41', '<!-- wp:paragraph -->\n<p><em>Hodor. Hodor hodor, hodor. Hodor hodor hodor hodor hodor. Hodor. Hodor! Hodor hodor, hodor; hodor hodor hodor. Hodor. Hodor hodor; hodor hodor - hodor, hodor, hodor hodor. Hodor, hodor. Hodor. Hodor, hodor hodor hodor; hodor hodor; hodor hodor hodor! Hodor hodor HODOR! Hodor hodor... Hodor hodor hodor...</em></p>\n<!-- /wp:paragraph -->', 'Test 123', '', 'publish', 'closed', 'closed', '', 'test-123', '', '', '2020-09-25 05:53:41', '2020-09-25 05:53:41', '', 0, 'http://fictional-university:8888/?page_id=10', 0, 'page', '', 0),
(11, 1, '2020-09-25 05:53:41', '2020-09-25 05:53:41', '<!-- wp:paragraph -->\n<p><em>Hodor. Hodor hodor, hodor. Hodor hodor hodor hodor hodor. Hodor. Hodor! Hodor hodor, hodor; hodor hodor hodor. Hodor. Hodor hodor; hodor hodor - hodor, hodor, hodor hodor. Hodor, hodor. Hodor. Hodor, hodor hodor hodor; hodor hodor; hodor hodor hodor! Hodor hodor HODOR! Hodor hodor... Hodor hodor hodor...</em></p>\n<!-- /wp:paragraph -->', 'Test 123', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-09-25 05:53:41', '2020-09-25 05:53:41', '', 10, 'http://fictional-university:8888/2020/09/25/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2020-09-25 08:57:28', '2020-09-25 08:57:28', '<!-- wp:heading -->\n<h2>Who we are</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Our website address is: http://fictional-university:8888/.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What personal data we collect and why we collect it</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Comments</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor’s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Media</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Contact forms</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Cookies</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select \"Remember Me\", your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Embedded content from other websites</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Analytics</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Who we share your data with</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>How long we retain your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>What rights you have over your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Where we send your data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Your contact information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading -->\n<h2>Additional information</h2>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>How we protect your data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What data breach procedures we have in place</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What third parties we receive data from</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>What automated decision making and/or profiling we do with user data</h3>\n<!-- /wp:heading -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3>Industry regulatory disclosure requirements</h3>\n<!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2020-09-25 08:57:28', '2020-09-25 08:57:28', '', 3, 'http://fictional-university:8888/2020/09/25/3-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2020-09-25 08:59:34', '2020-09-25 08:59:34', '<!-- wp:paragraph -->\r\n<p>This is about page content.<em>Zombie ipsum reversus ab viral inferno, nam rick grimes malum cerebro. De carne lumbering animata corpora quaeritis. Summus brains sit​​, morbo vel maleficia? De apocalypsi gorger omero undead survivor dictum mauris. Hi mindless mortuis soulless creaturas, imo evil stalking monstra adventus resi dentevil vultus comedat cerebella viventium.</em></p>\r\n<!-- /wp:paragraph -->', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2020-09-28 12:39:42', '2020-09-28 12:39:42', '', 0, 'http://fictional-university:8888/?page_id=13', 0, 'page', '', 0),
(14, 1, '2020-09-25 08:59:34', '2020-09-25 08:59:34', '<!-- wp:paragraph -->\n<p>This is about page content.<em>Zombie ipsum reversus ab viral inferno, nam rick grimes malum cerebro. De carne lumbering animata corpora quaeritis. Summus brains sit​​, morbo vel maleficia? De apocalypsi gorger omero undead survivor dictum mauris. Hi mindless mortuis soulless creaturas, imo evil stalking monstra adventus resi dentevil vultus comedat cerebella viventium.</em></p>\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-09-25 08:59:34', '2020-09-25 08:59:34', '', 13, 'http://fictional-university:8888/2020/09/25/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-09-25 09:33:45', '2020-09-25 09:33:45', '<!-- wp:paragraph -->\n<p><em>Cupcake ipsum dolor. Sit amet marshmallow topping cheesecake muffin. Halvah croissant candy canes bonbon candy. Apple pie jelly beans topping carrot cake danish tart cake cheesecake. Muffin danish chocolate soufflé pastry icing bonbon oat cake. Powder cake jujubes oat cake. Lemon drops tootsie roll marshmallow halvah carrot cake.</em></p>\n<!-- /wp:paragraph -->', 'Our History', '', 'publish', 'closed', 'closed', '', 'our-history', '', '', '2020-09-25 09:33:45', '2020-09-25 09:33:45', '', 13, 'http://fictional-university:8888/?page_id=15', 0, 'page', '', 0),
(16, 1, '2020-09-25 09:33:45', '2020-09-25 09:33:45', '<!-- wp:paragraph -->\n<p><em>Cupcake ipsum dolor. Sit amet marshmallow topping cheesecake muffin. Halvah croissant candy canes bonbon candy. Apple pie jelly beans topping carrot cake danish tart cake cheesecake. Muffin danish chocolate soufflé pastry icing bonbon oat cake. Powder cake jujubes oat cake. Lemon drops tootsie roll marshmallow halvah carrot cake.</em></p>\n<!-- /wp:paragraph -->', 'Our History', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-09-25 09:33:45', '2020-09-25 09:33:45', '', 15, 'http://fictional-university:8888/2020/09/25/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2020-09-25 09:34:18', '2020-09-25 09:34:18', '<!-- wp:paragraph -->\n<p><em>Cupcake ipsum dolor. Sit amet marshmallow topping cheesecake muffin. Halvah croissant candy canes bonbon candy. Apple pie jelly beans topping carrot cake danish tart cake cheesecake. Muffin danish chocolate soufflé pastry icing bonbon oat cake. Powder cake jujubes oat cake. Lemon drops tootsie roll marshmallow halvah carrot cake.</em></p>\n<!-- /wp:paragraph -->', 'Our Goals', '', 'publish', 'closed', 'closed', '', 'our-goals', '', '', '2020-09-25 09:51:35', '2020-09-25 09:51:35', '', 13, 'http://fictional-university:8888/?page_id=17', 0, 'page', '', 0),
(18, 1, '2020-09-25 09:34:18', '2020-09-25 09:34:18', '<!-- wp:paragraph -->\n<p><em>Cupcake ipsum dolor. Sit amet marshmallow topping cheesecake muffin. Halvah croissant candy canes bonbon candy. Apple pie jelly beans topping carrot cake danish tart cake cheesecake. Muffin danish chocolate soufflé pastry icing bonbon oat cake. Powder cake jujubes oat cake. Lemon drops tootsie roll marshmallow halvah carrot cake.</em></p>\n<!-- /wp:paragraph -->', 'Our History', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-09-25 09:34:18', '2020-09-25 09:34:18', '', 17, 'http://fictional-university:8888/2020/09/25/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2020-09-25 09:42:17', '2020-09-25 09:42:17', '<!-- wp:paragraph -->\n<p><em>Cupcake ipsum dolor. Sit amet marshmallow topping cheesecake muffin. Halvah croissant candy canes bonbon candy. Apple pie jelly beans topping carrot cake danish tart cake cheesecake. Muffin danish chocolate soufflé pastry icing bonbon oat cake. Powder cake jujubes oat cake. Lemon drops tootsie roll marshmallow halvah carrot cake.</em></p>\n<!-- /wp:paragraph -->', 'Our Goals', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-09-25 09:42:17', '2020-09-25 09:42:17', '', 17, 'http://fictional-university:8888/2020/09/25/17-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2020-09-25 09:42:40', '2020-09-25 09:42:40', '<!-- wp:paragraph -->\n<p><em>Cupcake ipsum dolor. Sit amet marshmallow topping cheesecake muffin. Halvah croissant candy canes bonbon candy. Apple pie jelly beans topping carrot cake danish tart cake cheesecake. Muffin danish chocolate soufflé pastry icing bonbon oat cake. Powder cake jujubes oat cake. Lemon drops tootsie roll marshmallow halvah carrot cake.</em></p>\n<!-- /wp:paragraph -->', 'Our Goals', '', 'inherit', 'closed', 'closed', '', '17-autosave-v1', '', '', '2020-09-25 09:42:40', '2020-09-25 09:42:40', '', 17, 'http://fictional-university:8888/2020/09/25/17-autosave-v1/', 0, 'revision', '', 0),
(21, 1, '2020-09-25 09:54:08', '2020-09-25 09:54:08', 'Just say anything, George, say what ever\'s natural, the first thing that comes to your mind. Take that you mutated son-of-a-bitch. My pine, why you. You space bastard, you killed a pine. You do? Yeah, it\'s 8:00. Hey, McFly, I thought I told you never to come in here. Well it\'s gonna cost you. How much money you got on you?', 'Cookie Policy', '', 'publish', 'closed', 'closed', '', 'cookie-policy', '', '', '2020-09-25 09:54:08', '2020-09-25 09:54:08', '', 3, 'http://fictional-university:8888/?page_id=21', 0, 'page', '', 0),
(22, 1, '2020-09-25 09:54:08', '2020-09-25 09:54:08', 'Just say anything, George, say what ever\'s natural, the first thing that comes to your mind. Take that you mutated son-of-a-bitch. My pine, why you. You space bastard, you killed a pine. You do? Yeah, it\'s 8:00. Hey, McFly, I thought I told you never to come in here. Well it\'s gonna cost you. How much money you got on you?', 'Cookie Policy', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2020-09-25 09:54:08', '2020-09-25 09:54:08', '', 21, 'http://fictional-university:8888/2020/09/25/21-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2020-09-25 13:43:20', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-09-25 13:43:20', '0000-00-00 00:00:00', '', 0, 'http://fictional-university:8888/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2020-09-25 13:44:26', '2020-09-25 13:44:26', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2020-09-25 13:44:48', '2020-09-25 13:44:48', '', 0, 'http://fictional-university:8888/?p=24', 1, 'nav_menu_item', '', 0),
(25, 1, '2020-09-25 13:43:20', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-09-25 13:43:20', '0000-00-00 00:00:00', '', 3, 'http://fictional-university:8888/?p=25', 1, 'nav_menu_item', '', 0),
(26, 1, '2020-09-25 13:44:26', '2020-09-25 13:44:26', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2020-09-25 13:44:48', '2020-09-25 13:44:48', '', 0, 'http://fictional-university:8888/?p=26', 2, 'nav_menu_item', '', 0),
(27, 1, '2020-09-25 13:43:21', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-09-25 13:43:21', '0000-00-00 00:00:00', '', 13, 'http://fictional-university:8888/?p=27', 1, 'nav_menu_item', '', 0),
(28, 1, '2020-09-25 13:43:21', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-09-25 13:43:21', '0000-00-00 00:00:00', '', 13, 'http://fictional-university:8888/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2020-09-25 13:43:21', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-09-25 13:43:21', '0000-00-00 00:00:00', '', 0, 'http://fictional-university:8888/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2020-09-25 13:43:21', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-09-25 13:43:21', '0000-00-00 00:00:00', '', 0, 'http://fictional-university:8888/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2020-09-25 13:55:49', '2020-09-25 13:55:49', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2020-09-25 13:55:49', '2020-09-25 13:55:49', '', 0, 'http://fictional-university:8888/?p=31', 1, 'nav_menu_item', '', 0),
(32, 1, '2020-09-25 13:55:49', '2020-09-25 13:55:49', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2020-09-25 13:55:49', '2020-09-25 13:55:49', '', 3, 'http://fictional-university:8888/?p=32', 2, 'nav_menu_item', '', 0),
(34, 1, '2020-09-25 13:57:17', '2020-09-25 13:57:17', '', 'Google', '', 'publish', 'closed', 'closed', '', 'google', '', '', '2020-09-25 13:58:02', '2020-09-25 13:58:02', '', 0, 'http://fictional-university:8888/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2020-09-25 13:57:17', '2020-09-25 13:57:17', '', 'Chapoba', '', 'publish', 'closed', 'closed', '', 'chapoba', '', '', '2020-09-25 13:58:02', '2020-09-25 13:58:02', '', 0, 'http://fictional-university:8888/?p=35', 2, 'nav_menu_item', '', 0),
(36, 1, '2020-09-25 14:27:45', '2020-09-25 14:27:45', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2020-09-25 14:27:45', '2020-09-25 14:27:45', '', 0, 'http://fictional-university:8888/?page_id=36', 0, 'page', '', 0),
(37, 1, '2020-09-25 14:27:45', '2020-09-25 14:27:45', '', 'Home', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2020-09-25 14:27:45', '2020-09-25 14:27:45', '', 36, 'http://fictional-university:8888/2020/09/25/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2020-09-25 14:27:55', '2020-09-25 14:27:55', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2020-09-25 14:27:55', '2020-09-25 14:27:55', '', 0, 'http://fictional-university:8888/?page_id=38', 0, 'page', '', 0),
(39, 1, '2020-09-25 14:27:55', '2020-09-25 14:27:55', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2020-09-25 14:27:55', '2020-09-25 14:27:55', '', 38, 'http://fictional-university:8888/2020/09/25/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2020-09-25 14:55:29', '2020-09-25 14:55:29', 'Busey ipsum dolor sit amet. Have you urinated? Have you drained your bladder? Are you free? Because if you haven\'t it will only come out later. I\'m giving you some information that your bodily fluids may penetrate your clothing fibre\'s without warning.It\'s OK to get Rib-grease on your face, because you\'re allowing people to see that you\'re proud of these ribs.', 'We Won An Award!', 'We won another award this year.', 'publish', 'open', 'open', '', 'we-won-an-award', '', '', '2020-09-26 21:23:30', '2020-09-26 21:23:30', '', 0, 'http://fictional-university:8888/?p=40', 0, 'post', '', 0),
(41, 1, '2020-09-25 14:55:29', '2020-09-25 14:55:29', 'Busey ipsum dolor sit amet. Have you urinated? Have you drained your bladder? Are you free? Because if you haven\'t it will only come out later. I\'m giving you some information that your bodily fluids may penetrate your clothing fibre\'s without warning.It\'s OK to get Rib-grease on your face, because you\'re allowing people to see that you\'re proud of these ribs.', 'We Won An Award!', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-09-25 14:55:29', '2020-09-25 14:55:29', '', 40, 'http://fictional-university:8888/2020/09/25/40-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2020-09-26 17:35:35', '2020-09-26 17:35:35', 'ust say anything, George, say what ever\'s natural, the first thing that comes to your mind. Take that you mutated son-of-a-bitch. My pine, why you. You space bastard, you killed a pine. You do? Yeah, it\'s 8:00. Hey, McFly, I thought I told you never to come in here. Well it\'s gonna cost you. How much money you got on you?', 'Math Meetup', '', 'publish', 'closed', 'closed', '', 'math-meetup', '', '', '2020-09-26 22:48:55', '2020-09-26 22:48:55', '', 0, 'http://fictional-university:8888/?post_type=event&#038;p=42', 0, 'event', '', 0),
(43, 1, '2020-09-26 17:36:02', '2020-09-26 17:36:02', 'ust say anything, George, say what ever\'s natural, the first thing that comes to your mind. Take that you mutated son-of-a-bitch. My pine, why you. You space bastard, you killed a pine. You do? Yeah, it\'s 8:00. Hey, McFly, I thought I told you never to come in here. Well it\'s gonna cost you. How much money you got on you?', 'The Science of Cats', '', 'publish', 'closed', 'closed', '', 'the-science-of-cats', '', '', '2021-02-09 09:46:20', '2021-02-09 09:46:20', '', 0, 'http://fictional-university:8888/?post_type=event&#038;p=43', 0, 'event', '', 0),
(44, 1, '2020-09-26 17:36:24', '2020-09-26 17:36:24', 'ust say anything, George, say what ever\'s natural, the first thing that comes to your mind. Take that you mutated son-of-a-bitch. My pine, why you. You space bastard, you killed a pine. You do? Yeah, it\'s 8:00. Hey, McFly, I thought I told you never to come in here. Well it\'s gonna cost you. How much money you got on you?', 'Poetry Day', 'Poetry day gone to be amazing.', 'publish', 'closed', 'closed', '', 'poetry-day', '', '', '2021-02-09 09:31:29', '2021-02-09 09:31:29', '', 0, 'http://fictional-university:8888/?post_type=event&#038;p=44', 0, 'event', '', 0),
(46, 1, '2020-09-26 21:23:30', '2020-09-26 21:23:30', 'Busey ipsum dolor sit amet. Have you urinated? Have you drained your bladder? Are you free? Because if you haven\'t it will only come out later. I\'m giving you some information that your bodily fluids may penetrate your clothing fibre\'s without warning.It\'s OK to get Rib-grease on your face, because you\'re allowing people to see that you\'re proud of these ribs.', 'We Won An Award!', 'We won another award this year.', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2020-09-26 21:23:30', '2020-09-26 21:23:30', '', 40, 'http://fictional-university:8888/2020/09/26/40-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2020-09-26 21:45:30', '2020-09-26 21:45:30', 'ust say anything, George, say what ever\'s natural, the first thing that comes to your mind. Take that you mutated son-of-a-bitch. My pine, why you. You space bastard, you killed a pine. You do? Yeah, it\'s 8:00. Hey, McFly, I thought I told you never to come in here. Well it\'s gonna cost you. How much money you got on you?', 'Poetry Day', 'Poetry da gone to be amazing', 'inherit', 'closed', 'closed', '', '44-autosave-v1', '', '', '2020-09-26 21:45:30', '2020-09-26 21:45:30', '', 44, 'http://fictional-university:8888/2020/09/26/44-autosave-v1/', 0, 'revision', '', 0),
(48, 1, '2020-09-26 22:05:13', '2020-09-26 22:05:13', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Event Date', 'event-date', 'publish', 'closed', 'closed', '', 'group_5f6fba82a3c75', '', '', '2020-09-26 22:05:13', '2020-09-26 22:05:13', '', 0, 'http://fictional-university:8888/?post_type=acf-field-group&#038;p=48', 0, 'acf-field-group', '', 0),
(49, 1, '2020-09-26 22:05:13', '2020-09-26 22:05:13', 'a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"d/m/Y\";s:13:\"return_format\";s:3:\"Ymd\";s:9:\"first_day\";i:1;}', 'Event date', 'event_date', 'publish', 'closed', 'closed', '', 'field_5f6fba98dfe3c', '', '', '2020-09-26 22:05:13', '2020-09-26 22:05:13', '', 48, 'http://fictional-university:8888/?post_type=acf-field&p=49', 0, 'acf-field', '', 0),
(50, 1, '2020-09-27 13:00:29', '2020-09-27 13:00:29', 'Cupcake ipsum dolor. Sit amet marshmallow topping cheesecake muffin. Halvah croissant candy canes bonbon candy. Apple pie jelly beans topping carrot cake danish tart cake cheesecake. Muffin danish chocolate soufflé pastry icing bonbon oat cake. Powder cake jujubes oat cake. Lemon drops tootsie roll marshmallow halvah carrot cake.', 'Winter Study Night', '', 'publish', 'closed', 'closed', '', 'winter-study-night', '', '', '2020-09-27 13:00:29', '2020-09-27 13:00:29', '', 0, 'http://fictional-university:8888/?post_type=event&#038;p=50', 0, 'event', '', 0),
(51, 1, '2020-09-27 13:03:54', '2020-09-27 13:03:54', '', 'Past Events', '', 'publish', 'closed', 'closed', '', 'past-events', '', '', '2020-09-27 13:03:54', '2020-09-27 13:03:54', '', 0, 'http://fictional-university:8888/?page_id=51', 0, 'page', '', 0),
(52, 1, '2020-09-27 13:03:54', '2020-09-27 13:03:54', '', 'Past Events', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2020-09-27 13:03:54', '2020-09-27 13:03:54', '', 51, 'http://fictional-university:8888/2020/09/27/51-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2020-09-27 13:17:51', '2020-09-27 13:17:51', 'Space, the final frontier. These are the voyages of the Starship Enterprise. Its five-year mission: to explore strange new worlds, to seek out new life and new civilizations, to boldly go where no man has gone before. Many say exploration is part of our destiny, but it’s actually our duty to future generations and their quest to ensure the survival of the human species.', 'New year 2016', '', 'publish', 'closed', 'closed', '', 'new-year-2016', '', '', '2020-09-27 13:17:51', '2020-09-27 13:17:51', '', 0, 'http://fictional-university:8888/?post_type=event&#038;p=53', 0, 'event', '', 0),
(54, 1, '2020-09-27 14:45:54', '2020-09-27 14:45:54', 'Nori grape silver beet broccoli kombu beet greens fava bean potato quandong celery. Bunya nuts black-eyed pea prairie turnip leek lentil turnip greens parsnip. Sea lettuce lettuce water chestnut eggplant winter purslane fennel azuki bean earthnut pea sierra leone bologi leek soko chicory celtuce parsley jícama salsify.', 'Math', '', 'publish', 'closed', 'closed', '', 'math', '', '', '2020-09-28 21:38:57', '2020-09-28 21:38:57', '', 0, 'http://fictional-university:8888/?post_type=program&#038;p=54', 0, 'program', '', 0),
(55, 1, '2020-09-27 14:46:06', '2020-09-27 14:46:06', 'Nori grape silver beet broccoli kombu beet greens fava bean potato quandong celery. Bunya nuts black-eyed pea prairie turnip leek lentil turnip greens parsnip. Sea lettuce lettuce water chestnut eggplant winter purslane fennel azuki bean earthnut pea sierra leone bologi leek soko chicory celtuce parsley jícama salsify.', 'Biology', '', 'publish', 'closed', 'closed', '', 'biology', '', '', '2020-09-28 09:01:11', '2020-09-28 09:01:11', '', 0, 'http://fictional-university:8888/?post_type=program&#038;p=55', 0, 'program', '', 0),
(56, 1, '2020-09-27 14:46:21', '2020-09-27 14:46:21', 'Nori grape silver beet broccoli kombu beet greens fava bean potato quandong celery. Bunya nuts black-eyed pea prairie turnip leek lentil turnip greens parsnip. Sea lettuce lettuce water chestnut eggplant winter purslane fennel azuki bean earthnut pea sierra leone bologi leek soko chicory celtuce parsley jícama salsify.', 'English', '', 'publish', 'closed', 'closed', '', 'english', '', '', '2020-09-27 14:46:21', '2020-09-27 14:46:21', '', 0, 'http://fictional-university:8888/?post_type=program&#038;p=56', 0, 'program', '', 0),
(57, 1, '2020-09-27 15:06:35', '2020-09-27 15:06:35', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"professor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Related Program', 'related-program', 'publish', 'closed', 'closed', '', 'group_5f70a9ebc892a', '', '', '2020-09-28 08:43:15', '2020-09-28 08:43:15', '', 0, 'http://fictional-university:8888/?post_type=acf-field-group&#038;p=57', 0, 'acf-field-group', '', 0),
(58, 1, '2020-09-27 15:06:36', '2020-09-27 15:06:36', 'a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}', 'related Program(s)', 'related_programs', 'publish', 'closed', 'closed', '', 'field_5f70aa060d591', '', '', '2020-09-27 15:06:36', '2020-09-27 15:06:36', '', 57, 'http://fictional-university:8888/?post_type=acf-field&p=58', 0, 'acf-field', '', 0),
(59, 1, '2020-09-28 08:36:32', '2020-09-28 08:36:32', 'Well, the way they make shows is, they make one show. That show\'s called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if they\'re going to make more shows. Some pilots get picked and become television programs. Some don\'t, become nothing. She starred in one of the ones that became nothing.', 'Dr. Meowsalot', '', 'publish', 'closed', 'closed', '', 'dr-meowsalot', '', '', '2020-09-28 10:21:11', '2020-09-28 10:21:11', '', 0, 'http://fictional-university:8888/?post_type=professor&#038;p=59', 0, 'professor', '', 0),
(60, 1, '2020-09-28 08:36:57', '2020-09-28 08:36:57', 'Well, the way they make shows is, they make one show. That show\'s called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if they\'re going to make more shows. Some pilots get picked and become television programs. Some don\'t, become nothing. She starred in one of the ones that became nothing.', 'Dr. Barksalot', '', 'publish', 'closed', 'closed', '', 'dr-barksalot', '', '', '2020-09-28 10:33:19', '2020-09-28 10:33:19', '', 0, 'http://fictional-university:8888/?post_type=professor&#038;p=60', 0, 'professor', '', 0),
(61, 1, '2020-09-28 09:13:02', '2020-09-28 09:13:02', '', 'barksalot', '', 'inherit', 'open', 'closed', '', 'barksalot', '', '', '2020-09-28 09:13:02', '2020-09-28 09:13:02', '', 60, 'http://fictional-university:8888/wp-content/uploads/2020/09/barksalot.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 1, '2020-09-28 09:14:32', '2020-09-28 09:14:32', '', 'meowsalot', '', 'inherit', 'open', 'closed', '', 'meowsalot', '', '', '2020-09-28 09:14:32', '2020-09-28 09:14:32', '', 59, 'http://fictional-university:8888/wp-content/uploads/2020/09/meowsalot.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2020-09-28 09:33:38', '0000-00-00 00:00:00', '', 'Dr. Froggerson', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-09-28 09:33:38', '2020-09-28 09:33:38', '', 0, 'http://fictional-university:8888/?post_type=program&#038;p=63', 0, 'program', '', 0),
(64, 1, '2020-09-28 09:42:58', '2020-09-28 09:42:58', 'Pommy ipsum smeg head whizz morris dancers come hither, bugger codswallop gob. Taking the mick middle class bog roll bow ties are cool posh nosh off t\'shop, stew and dumps taking the mick know your onions pulled a right corker \'tis, anorak mince pies tosser warts and all knackered, complete mare stupendous proper on the beat.', 'Dr. Froggerson', '', 'publish', 'closed', 'closed', '', 'dr-frogerson', '', '', '2020-09-28 09:46:38', '2020-09-28 09:46:38', '', 0, 'http://fictional-university:8888/?post_type=professor&#038;p=64', 0, 'professor', '', 0),
(66, 1, '2020-09-28 09:45:37', '2020-09-28 09:45:37', '', 'frog-bio', '', 'inherit', 'open', 'closed', '', 'frog-bio', '', '', '2020-09-28 09:52:31', '2020-09-28 09:52:31', '', 64, 'http://fictional-university:8888/wp-content/uploads/2020/09/frog-bio.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2020-09-28 09:46:23', '2020-09-28 09:46:23', 'Pommy ipsum smeg head whizz morris dancers come hither, bugger codswallop gob. Taking the mick middle class bog roll bow ties are cool posh nosh off t\'shop, stew and dumps taking the mick know your onions pulled a right corker \'tis, anorak mince pies tosser warts and all knackered, complete mare stupendous proper on the beat.', 'Dr. Froggerson', '', 'inherit', 'closed', 'closed', '', '64-autosave-v1', '', '', '2020-09-28 09:46:23', '2020-09-28 09:46:23', '', 64, 'http://fictional-university:8888/2020/09/28/64-autosave-v1/', 0, 'revision', '', 0),
(68, 1, '2020-09-28 10:29:40', '2020-09-28 10:29:40', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Page Banner', 'page-banner', 'publish', 'closed', 'closed', '', 'group_5f71ba9985ca3', '', '', '2020-09-28 10:30:02', '2020-09-28 10:30:02', '', 0, 'http://fictional-university:8888/?post_type=acf-field-group&#038;p=68', 0, 'acf-field-group', '', 0),
(69, 1, '2020-09-28 10:29:40', '2020-09-28 10:29:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Page Banner Subtitle', 'page_banner_subtitle', 'publish', 'closed', 'closed', '', 'field_5f71baa4c7cd9', '', '', '2020-09-28 10:30:02', '2020-09-28 10:30:02', '', 68, 'http://fictional-university:8888/?post_type=acf-field&#038;p=69', 0, 'acf-field', '', 0),
(70, 1, '2020-09-28 10:29:40', '2020-09-28 10:29:40', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Page Banner background Image', 'page_banner_background_image', 'publish', 'closed', 'closed', '', 'field_5f71babbc7cda', '', '', '2020-09-28 10:29:40', '2020-09-28 10:29:40', '', 68, 'http://fictional-university:8888/?post_type=acf-field&p=70', 1, 'acf-field', '', 0),
(71, 1, '2020-09-28 10:33:00', '2020-09-28 10:33:00', '', 'field', '', 'inherit', 'open', 'closed', '', 'field', '', '', '2020-09-28 10:33:00', '2020-09-28 10:33:00', '', 60, 'http://fictional-university:8888/wp-content/uploads/2020/09/field.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2020-09-28 10:57:13', '2020-09-28 10:57:13', '', 'building', '', 'inherit', 'open', 'closed', '', 'building', '', '', '2020-09-28 10:57:13', '2020-09-28 10:57:13', '', 13, 'http://fictional-university:8888/wp-content/uploads/2020/09/building.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2020-09-28 10:57:45', '2020-09-28 10:57:45', '<!-- wp:paragraph -->\r\n<p>This is about page content.<em>Zombie ipsum reversus ab viral inferno, nam rick grimes malum cerebro. De carne lumbering animata corpora quaeritis. Summus brains sit​​, morbo vel maleficia? De apocalypsi gorger omero undead survivor dictum mauris. Hi mindless mortuis soulless creaturas, imo evil stalking monstra adventus resi dentevil vultus comedat cerebella viventium.</em></p>\r\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-09-28 10:57:45', '2020-09-28 10:57:45', '', 13, 'http://fictional-university:8888/2020/09/28/13-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2020-09-28 12:39:42', '2020-09-28 12:39:42', '<!-- wp:paragraph -->\r\n<p>This is about page content.<em>Zombie ipsum reversus ab viral inferno, nam rick grimes malum cerebro. De carne lumbering animata corpora quaeritis. Summus brains sit​​, morbo vel maleficia? De apocalypsi gorger omero undead survivor dictum mauris. Hi mindless mortuis soulless creaturas, imo evil stalking monstra adventus resi dentevil vultus comedat cerebella viventium.</em></p>\r\n<!-- /wp:paragraph -->', 'About Us', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-09-28 12:39:42', '2020-09-28 12:39:42', '', 13, 'http://fictional-university:8888/2020/09/28/13-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2020-09-28 13:19:27', '2020-09-28 13:19:27', '', 'notebook', '', 'inherit', 'open', 'closed', '', 'notebook', '', '', '2020-09-28 13:19:27', '2020-09-28 13:19:27', '', 44, 'http://fictional-university:8888/wp-content/uploads/2020/09/notebook.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2020-09-28 19:28:48', '2020-09-28 19:28:48', 'Sportacus andrew weatherall goose Refined gentlemen super mario des lynam alpha trion zap rowsdower, omar sharif old man in pub burt reynolds alpha trion sportacus villain Refined gentlemen zap rowsdower funny walk super mario frightfully nice andrew weatherall des lynam goose. Semi beard cream bun disaster alpha trion?', 'Downtown West', '', 'publish', 'closed', 'closed', '', 'downtown-west', '', '', '2020-09-28 20:05:49', '2020-09-28 20:05:49', '', 0, 'http://fictional-university:8888/?post_type=campus&#038;p=76', 0, 'campus', '', 0),
(77, 1, '2020-09-28 19:29:33', '2020-09-28 19:29:33', 'Sportacus andrew weatherall goose Refined gentlemen super mario des lynam alpha trion zap rowsdower, omar sharif old man in pub burt reynolds alpha trion sportacus villain Refined gentlemen zap rowsdower funny walk super mario frightfully nice andrew weatherall des lynam goose. Semi beard cream bun disaster alpha trion?', 'Downtown East', '', 'publish', 'closed', 'closed', '', 'downtown-east', '', '', '2020-09-28 20:13:42', '2020-09-28 20:13:42', '', 0, 'http://fictional-university:8888/?post_type=campus&#038;p=77', 0, 'campus', '', 0),
(78, 1, '2020-09-28 19:38:41', '2020-09-28 19:38:41', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"campus\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Map Location', 'map-location', 'publish', 'closed', 'closed', '', 'group_5f7239e2673b7', '', '', '2020-09-28 19:38:41', '2020-09-28 19:38:41', '', 0, 'http://fictional-university:8888/?post_type=acf-field-group&#038;p=78', 0, 'acf-field-group', '', 0),
(79, 1, '2020-09-28 19:38:41', '2020-09-28 19:38:41', 'a:9:{s:4:\"type\";s:10:\"google_map\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"center_lat\";s:0:\"\";s:10:\"center_lng\";s:0:\"\";s:4:\"zoom\";s:0:\"\";s:6:\"height\";s:0:\"\";}', 'Map Location', 'map_location', 'publish', 'closed', 'closed', '', 'field_5f7239f34091c', '', '', '2020-09-28 19:38:41', '2020-09-28 19:38:41', '', 78, 'http://fictional-university:8888/?post_type=acf-field&p=79', 0, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(80, 1, '2020-09-28 21:38:35', '2020-09-28 21:38:35', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"program\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Related Campus(es)', 'related-campuses', 'publish', 'closed', 'closed', '', 'group_5f72577a75d02', '', '', '2020-09-28 21:38:35', '2020-09-28 21:38:35', '', 0, 'http://fictional-university:8888/?post_type=acf-field-group&#038;p=80', 0, 'acf-field-group', '', 0),
(81, 1, '2020-09-28 21:38:35', '2020-09-28 21:38:35', 'a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:6:\"campus\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:1:{i:0;s:6:\"search\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}', 'Related Campus(es)', 'related_campus', 'publish', 'closed', 'closed', '', 'field_5f725798e7830', '', '', '2020-09-28 21:38:35', '2020-09-28 21:38:35', '', 80, 'http://fictional-university:8888/?post_type=acf-field&p=81', 0, 'acf-field', '', 0),
(83, 1, '2020-10-04 20:04:39', '2020-10-04 20:04:39', '', 'Search', '', 'publish', 'closed', 'closed', '', 'search', '', '', '2020-10-04 20:04:39', '2020-10-04 20:04:39', '', 0, 'http://fictional-university:8888/?page_id=83', 0, 'page', '', 0),
(84, 1, '2020-10-04 20:04:39', '2020-10-04 20:04:39', '', 'Search', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2020-10-04 20:04:39', '2020-10-04 20:04:39', '', 83, 'http://fictional-university:8888/2020/10/04/83-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2020-11-20 15:17:09', '2020-11-20 15:17:09', 'Lorem Ipsum is the single greatest threat. We are not - we are not keeping up with other websites. Lorem Ipsum best not make any more threats to your website. It will be met with fire and fury like the world has never seen. Does everybody know that pig named Lorem Ipsum? An ‘extremely credible source’ has called my office and told me that Barack Obama’s placeholder text is a fraud.', 'Biology is cool!', '', 'publish', 'open', 'open', '', 'biology-is-cool', '', '', '2020-11-20 15:17:09', '2020-11-20 15:17:09', '', 0, 'http://fictional-university:8888/?p=86', 0, 'post', '', 0),
(87, 1, '2020-11-20 15:17:09', '2020-11-20 15:17:09', 'Lorem Ipsum is the single greatest threat. We are not - we are not keeping up with other websites. Lorem Ipsum best not make any more threats to your website. It will be met with fire and fury like the world has never seen. Does everybody know that pig named Lorem Ipsum? An ‘extremely credible source’ has called my office and told me that Barack Obama’s placeholder text is a fraud.', 'Biology is cool!', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2020-11-20 15:17:09', '2020-11-20 15:17:09', '', 86, 'http://fictional-university:8888/2020/11/20/86-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
                               `meta_id` bigint(20) UNSIGNED NOT NULL,
                               `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
                               `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
                               `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
                            `term_id` bigint(20) UNSIGNED NOT NULL,
                            `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'My Main Header Menu', 'my-main-header-menu', 0),
(3, 'Footer Location One', 'footer-location-one', 0),
(4, 'Footer Location Two', 'footer-location-two', 0),
(5, 'Awards', 'awards', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
                                         `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
                                         `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
                                         `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 1, 0),
(8, 1, 0),
(24, 2, 0),
(26, 2, 0),
(31, 3, 0),
(32, 3, 0),
(34, 4, 0),
(35, 4, 0),
(40, 5, 0),
(86, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
                                    `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
                                    `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
                                    `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                                    `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
                                    `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
                                    `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 2),
(3, 3, 'nav_menu', '', 0, 2),
(4, 4, 'nav_menu', '', 0, 2),
(5, 5, 'category', 'We love for Blog Awards', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
                               `umeta_id` bigint(20) UNSIGNED NOT NULL,
                               `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
                               `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
                               `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'John'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', '\"The precision of the analysis makes the quality of the result\"\r\n\r\nMy passion for the web began with a meeting, today I made my job.\r\n\r\nCurious and challenging man, I consolidate my achievements by working on various personal projects. In addition I am in permanent watch, and that in the concern of answering the customer needs best.'),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '88'),
(18, 1, 'session_tokens', 'a:1:{s:64:\"11eb2237106881976982771cf05ee1c8b1ea478ae3993d10877e3e62920b81e0\";a:4:{s:10:\"expiration\";i:1613035839;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.96 Safari/537.36\";s:5:\"login\";i:1612863039;}}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'nav_menu_recently_edited', '4'),
(22, 1, 'closedpostboxes_post', 'a:0:{}'),
(23, 1, 'metaboxhidden_post', 'a:6:{i:0;s:13:\"trackbacksdiv\";i:1;s:10:\"postcustom\";i:2;s:16:\"commentstatusdiv\";i:3;s:11:\"commentsdiv\";i:4;s:7:\"slugdiv\";i:5;s:9:\"authordiv\";}'),
(24, 1, 'wp_user-settings', 'libraryContent=browse&cats=pop'),
(25, 1, 'wp_user-settings-time', '1605885426');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
                            `ID` bigint(20) UNSIGNED NOT NULL,
                            `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
                            `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `user_status` int(11) NOT NULL DEFAULT '0',
                            `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin_FU', '$P$B7uZxIezKAfGQvShB/aeWWl3IKzR6a0', 'admin_fu', 'yourname@yourdomain.mamp', 'http://fictional-university:8888/', '2020-09-02 09:32:54', '', 0, 'John');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
    ADD PRIMARY KEY (`meta_id`),
    ADD KEY `comment_id` (`comment_id`),
    ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
    ADD PRIMARY KEY (`comment_ID`),
    ADD KEY `comment_post_ID` (`comment_post_ID`),
    ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
    ADD KEY `comment_date_gmt` (`comment_date_gmt`),
    ADD KEY `comment_parent` (`comment_parent`),
    ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
    ADD PRIMARY KEY (`link_id`),
    ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
    ADD PRIMARY KEY (`option_id`),
    ADD UNIQUE KEY `option_name` (`option_name`),
    ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
    ADD PRIMARY KEY (`meta_id`),
    ADD KEY `post_id` (`post_id`),
    ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
    ADD PRIMARY KEY (`ID`),
    ADD KEY `post_name` (`post_name`(191)),
    ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
    ADD KEY `post_parent` (`post_parent`),
    ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
    ADD PRIMARY KEY (`meta_id`),
    ADD KEY `term_id` (`term_id`),
    ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
    ADD PRIMARY KEY (`term_id`),
    ADD KEY `slug` (`slug`(191)),
    ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
    ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
    ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
    ADD PRIMARY KEY (`term_taxonomy_id`),
    ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
    ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
    ADD PRIMARY KEY (`umeta_id`),
    ADD KEY `user_id` (`user_id`),
    ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
    ADD PRIMARY KEY (`ID`),
    ADD KEY `user_login_key` (`user_login`),
    ADD KEY `user_nicename` (`user_nicename`),
    ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
    MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
    MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
    MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
    MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=570;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
    MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
    MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
    MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
    MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
    MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
    MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
    MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
