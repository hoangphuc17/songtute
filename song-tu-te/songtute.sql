-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 19, 2018 lúc 03:58 PM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB
-- Phiên bản PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `songtute`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hpk_commentmeta`
--

CREATE TABLE `hpk_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hpk_comments`
--

CREATE TABLE `hpk_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hpk_links`
--

CREATE TABLE `hpk_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hpk_options`
--

CREATE TABLE `hpk_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hpk_options`
--

INSERT INTO `hpk_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://khuyen.local/songtute.vn', 'yes'),
(2, 'home', 'http://khuyen.local/songtute.vn', 'yes'),
(3, 'blogname', 'Sống Tử Tế', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%-%post_id%.html', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:39:\"admin-columns-pro/admin-columns-pro.php\";i:1;s:33:\"admin-menu-editor/menu-editor.php\";i:2;s:34:\"advanced-custom-fields-pro/acf.php\";i:3;s:59:\"custom-post-type-permalinks/custom-post-type-permalinks.php\";i:4;s:22:\"songtute-cms/index.php\";i:5;s:24:\"wordpress-seo/wp-seo.php\";i:6;s:53:\"wpfront-user-role-editor/wpfront-user-role-editor.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:67:\"C:\\xampp\\htdocs\\songtute.vn/wp-content/themes/stt_theme/archive.php\";i:1;s:65:\"C:\\xampp\\htdocs\\songtute.vn/wp-content/themes/stt_theme/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'stt_theme', 'yes'),
(41, 'stylesheet', 'stt_theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:59:\"custom-post-type-permalinks/custom-post-type-permalinks.php\";a:2:{i:0;s:4:\"CPTP\";i:1;s:9:\"uninstall\";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'hpk_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:86:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"manage_admin_columns\";b:1;s:20:\"wpseo_manage_options\";b:1;s:10:\"list_roles\";b:1;s:12:\"create_roles\";b:1;s:10:\"edit_roles\";b:1;s:12:\"delete_roles\";b:1;s:15:\"edit_role_menus\";b:1;s:27:\"edit_posts_role_permissions\";b:1;s:27:\"edit_pages_role_permissions\";b:1;s:25:\"edit_nav_menu_permissions\";b:1;s:23:\"edit_content_shortcodes\";b:1;s:25:\"delete_content_shortcodes\";b:1;s:20:\"edit_login_redirects\";b:1;s:22:\"delete_login_redirects\";b:1;s:15:\"bulk_edit_roles\";b:1;s:23:\"edit_widget_permissions\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;s:23:\"edit_users_higher_level\";b:1;s:25:\"delete_users_higher_level\";b:1;s:26:\"promote_users_higher_level\";b:1;s:29:\"promote_users_to_higher_level\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:40:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:15:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:42:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:41:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:16:\"edit_attachments\";b:1;s:18:\"delete_attachments\";b:1;s:23:\"read_others_attachments\";b:1;s:23:\"edit_others_attachments\";b:1;s:25:\"delete_others_attachments\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:6:{i:1542640795;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1542644395;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1542651898;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1542715722;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1542717484;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1541765384;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.8.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1542638996;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(121, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1542639002;s:7:\"checked\";a:2:{s:12:\"bk the 11-08\";s:5:\"1.0.0\";s:9:\"stt_theme\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(124, 'can_compress_scripts', '1', 'no'),
(138, 'current_theme', 'stt_theme', 'yes'),
(139, 'theme_mods_stt_theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(145, 'recently_activated', 'a:0:{}', 'yes'),
(146, 'ac_capabilities_set', '1', 'no'),
(147, 'ac_version', '3.1.8', 'yes'),
(148, 'acp_version', '4.2.9', 'yes'),
(149, 'acf_version', '5.7.7', 'yes'),
(154, 'cpupdate_cac-pro', '', 'no'),
(155, 'cpupdate_cac-pro_expiry_date', '0', 'no'),
(156, 'cpupdate_cac-pro_renewal_discount', '0', 'no'),
(162, 'cpac_options_playlist__default', 'a:12:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:5:\"title\";s:5:\"Title\";s:10:\"categories\";s:10:\"Categories\";s:14:\"taxonomy-level\";s:6:\"Levels\";s:19:\"taxonomy-instructor\";s:11:\"Instructors\";s:4:\"date\";s:4:\"Date\";s:11:\"wpseo-links\";s:242:\"<span class=\"yoast-linked-to yoast-column-header-has-tooltip\" data-label=\"Number of internal links in this post. See &quot;Yoast Columns&quot; text in the help tab for more info.\"><span class=\"screen-reader-text\"># links in post</span></span>\";s:11:\"wpseo-score\";s:217:\"<span class=\"yoast-tooltip yoast-tooltip-n yoast-tooltip-alt\" data-label=\"SEO score\"><span class=\"yoast-column-seo-score yoast-column-header-has-tooltip\"><span class=\"screen-reader-text\">SEO score</span></span></span>\";s:23:\"wpseo-score-readability\";s:235:\"<span class=\"yoast-tooltip yoast-tooltip-n yoast-tooltip-alt\" data-label=\"Readability score\"><span class=\"yoast-column-readability yoast-column-header-has-tooltip\"><span class=\"screen-reader-text\">Readability score</span></span></span>\";s:11:\"wpseo-title\";s:9:\"SEO Title\";s:14:\"wpseo-metadesc\";s:10:\"Meta Desc.\";s:13:\"wpseo-focuskw\";s:8:\"Focus KW\";}', 'yes'),
(163, 'ac_sorting_playlist_default', 'a:8:{s:5:\"title\";s:5:\"title\";s:6:\"parent\";s:6:\"parent\";s:8:\"comments\";s:13:\"comment_count\";s:4:\"date\";a:2:{i:0;s:4:\"date\";i:1;b:1;}s:11:\"wpseo-links\";s:11:\"wpseo-links\";s:12:\"wpseo-linked\";s:12:\"wpseo-linked\";s:14:\"wpseo-metadesc\";s:14:\"wpseo-metadesc\";s:13:\"wpseo-focuskw\";s:13:\"wpseo-focuskw\";}', 'yes'),
(164, 'ac_cache_data_371e5d606c013ac1411cab20d89a37f2', 'a:0:{}', 'no'),
(165, 'ac_cache_expires_371e5d606c013ac1411cab20d89a37f2', '1542551991', 'no'),
(217, 'cpac_options_recipe__default', 'a:12:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:5:\"title\";s:5:\"Title\";s:10:\"categories\";s:10:\"Categories\";s:13:\"taxonomy-type\";s:5:\"Types\";s:19:\"taxonomy-instructor\";s:11:\"Instructors\";s:4:\"date\";s:4:\"Date\";s:11:\"wpseo-links\";s:242:\"<span class=\"yoast-linked-to yoast-column-header-has-tooltip\" data-label=\"Number of internal links in this post. See &quot;Yoast Columns&quot; text in the help tab for more info.\"><span class=\"screen-reader-text\"># links in post</span></span>\";s:11:\"wpseo-score\";s:217:\"<span class=\"yoast-tooltip yoast-tooltip-n yoast-tooltip-alt\" data-label=\"SEO score\"><span class=\"yoast-column-seo-score yoast-column-header-has-tooltip\"><span class=\"screen-reader-text\">SEO score</span></span></span>\";s:23:\"wpseo-score-readability\";s:235:\"<span class=\"yoast-tooltip yoast-tooltip-n yoast-tooltip-alt\" data-label=\"Readability score\"><span class=\"yoast-column-readability yoast-column-header-has-tooltip\"><span class=\"screen-reader-text\">Readability score</span></span></span>\";s:11:\"wpseo-title\";s:9:\"SEO Title\";s:14:\"wpseo-metadesc\";s:10:\"Meta Desc.\";s:13:\"wpseo-focuskw\";s:8:\"Focus KW\";}', 'yes'),
(218, 'ac_sorting_recipe_default', 'a:8:{s:5:\"title\";s:5:\"title\";s:6:\"parent\";s:6:\"parent\";s:8:\"comments\";s:13:\"comment_count\";s:4:\"date\";a:2:{i:0;s:4:\"date\";i:1;b:1;}s:11:\"wpseo-links\";s:11:\"wpseo-links\";s:12:\"wpseo-linked\";s:12:\"wpseo-linked\";s:14:\"wpseo-metadesc\";s:14:\"wpseo-metadesc\";s:13:\"wpseo-focuskw\";s:13:\"wpseo-focuskw\";}', 'yes'),
(219, 'cpac_options_wp-taxonomy_category__default', 'a:7:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:4:\"name\";s:4:\"Name\";s:11:\"description\";s:11:\"Description\";s:11:\"wpseo-score\";s:217:\"<span class=\"yoast-tooltip yoast-tooltip-n yoast-tooltip-alt\" data-label=\"SEO score\"><span class=\"yoast-column-seo-score yoast-column-header-has-tooltip\"><span class=\"screen-reader-text\">SEO score</span></span></span>\";s:23:\"wpseo-score-readability\";s:235:\"<span class=\"yoast-tooltip yoast-tooltip-n yoast-tooltip-alt\" data-label=\"Readability score\"><span class=\"yoast-column-readability yoast-column-header-has-tooltip\"><span class=\"screen-reader-text\">Readability score</span></span></span>\";s:4:\"slug\";s:4:\"Slug\";s:5:\"posts\";s:5:\"Count\";}', 'yes'),
(220, 'ac_sorting_wp-taxonomy_category_default', 'a:5:{s:4:\"name\";s:4:\"name\";s:11:\"description\";s:11:\"description\";s:4:\"slug\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";s:5:\"links\";s:5:\"count\";}', 'yes'),
(221, 'cpac_options_wp-taxonomy_intructor__default', 'a:5:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:4:\"name\";s:4:\"Name\";s:11:\"description\";s:11:\"Description\";s:4:\"slug\";s:4:\"Slug\";s:5:\"posts\";s:5:\"Count\";}', 'yes'),
(222, 'ac_sorting_wp-taxonomy_intructor_default', 'a:5:{s:4:\"name\";s:4:\"name\";s:11:\"description\";s:11:\"description\";s:4:\"slug\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";s:5:\"links\";s:5:\"count\";}', 'yes'),
(223, 'ac_cache_data_7adc5e939c5c9a7c988e0cfc05b267be', 'a:0:{}', 'no'),
(224, 'ac_cache_expires_7adc5e939c5c9a7c988e0cfc05b267be', '1542390353', 'no'),
(237, 'cptp_version', '3.2.2', 'yes'),
(238, 'queue_flush_rules', '0', 'yes'),
(239, 'no_taxonomy_structure', '1', 'yes'),
(240, 'add_post_type_for_tax', '', 'yes'),
(241, 'playlist_structure', '/%category%/%postname%-%post_id%.html', 'yes'),
(242, 'recipe_structure', '/%category%/%postname%-%post_id%.html', 'yes'),
(243, 'cptp_permalink_checked', '3.2.2', 'yes'),
(246, 'cpac_options_post__default', 'a:14:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:5:\"title\";s:5:\"Title\";s:6:\"author\";s:6:\"Author\";s:10:\"categories\";s:10:\"Categories\";s:4:\"tags\";s:4:\"Tags\";s:19:\"taxonomy-instructor\";s:11:\"Instructors\";s:8:\"comments\";s:111:\"<span class=\"vers comment-grey-bubble\" title=\"Comments\"><span class=\"screen-reader-text\">Comments</span></span>\";s:4:\"date\";s:4:\"Date\";s:11:\"wpseo-links\";s:242:\"<span class=\"yoast-linked-to yoast-column-header-has-tooltip\" data-label=\"Number of internal links in this post. See &quot;Yoast Columns&quot; text in the help tab for more info.\"><span class=\"screen-reader-text\"># links in post</span></span>\";s:11:\"wpseo-score\";s:217:\"<span class=\"yoast-tooltip yoast-tooltip-n yoast-tooltip-alt\" data-label=\"SEO score\"><span class=\"yoast-column-seo-score yoast-column-header-has-tooltip\"><span class=\"screen-reader-text\">SEO score</span></span></span>\";s:23:\"wpseo-score-readability\";s:235:\"<span class=\"yoast-tooltip yoast-tooltip-n yoast-tooltip-alt\" data-label=\"Readability score\"><span class=\"yoast-column-readability yoast-column-header-has-tooltip\"><span class=\"screen-reader-text\">Readability score</span></span></span>\";s:11:\"wpseo-title\";s:9:\"SEO Title\";s:14:\"wpseo-metadesc\";s:10:\"Meta Desc.\";s:13:\"wpseo-focuskw\";s:8:\"Focus KW\";}', 'yes'),
(247, 'ac_sorting_post_default', 'a:8:{s:5:\"title\";s:5:\"title\";s:6:\"parent\";s:6:\"parent\";s:8:\"comments\";s:13:\"comment_count\";s:4:\"date\";a:2:{i:0;s:4:\"date\";i:1;b:1;}s:11:\"wpseo-links\";s:11:\"wpseo-links\";s:12:\"wpseo-linked\";s:12:\"wpseo-linked\";s:14:\"wpseo-metadesc\";s:14:\"wpseo-metadesc\";s:13:\"wpseo-focuskw\";s:13:\"wpseo-focuskw\";}', 'yes'),
(249, 'ac_cache_data_4b46a9e7220a587dfffa2fd88e5ddb0d', 'a:0:{}', 'no'),
(250, 'ac_cache_expires_4b46a9e7220a587dfffa2fd88e5ddb0d', '1542558842', 'no'),
(253, 'wpseo', 'a:19:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:3:\"9.1\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:0:\"\";s:20:\"has_multiple_authors\";s:0:\"\";s:16:\"environment_type\";s:0:\"\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:1;s:18:\"first_activated_on\";i:1542047098;}', 'yes'),
(254, 'wpseo_titles', 'a:102:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:0;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:63:\"You searched for %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:35:\"Page not found %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:0;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:25:\"Error 404: Page not found\";s:29:\"breadcrumbs-display-blog-page\";b:1;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:12:\"Archives for\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:4:\"Home\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:16:\"You searched for\";s:15:\"breadcrumbs-sep\";s:7:\"&raquo;\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:0:\"\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:0:\"\";s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:23:\"post_types-post-maintax\";i:0;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:23:\"post_types-page-maintax\";i:0;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:29:\"post_types-attachment-maintax\";i:0;s:14:\"title-playlist\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:17:\"metadesc-playlist\";s:0:\"\";s:16:\"noindex-playlist\";b:0;s:17:\"showdate-playlist\";b:0;s:27:\"display-metabox-pt-playlist\";b:1;s:27:\"post_types-playlist-maintax\";i:0;s:24:\"title-ptarchive-playlist\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:27:\"metadesc-ptarchive-playlist\";s:0:\"\";s:26:\"bctitle-ptarchive-playlist\";s:0:\"\";s:26:\"noindex-ptarchive-playlist\";b:0;s:12:\"title-recipe\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:15:\"metadesc-recipe\";s:0:\"\";s:14:\"noindex-recipe\";b:0;s:15:\"showdate-recipe\";b:0;s:25:\"display-metabox-pt-recipe\";b:1;s:25:\"post_types-recipe-maintax\";i:0;s:22:\"title-ptarchive-recipe\";s:51:\"%%pt_plural%% Archive %%page%% %%sep%% %%sitename%%\";s:25:\"metadesc-ptarchive-recipe\";s:0:\"\";s:24:\"bctitle-ptarchive-recipe\";s:0:\"\";s:24:\"noindex-ptarchive-recipe\";b:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:1;s:23:\"noindex-tax-post_format\";b:1;s:15:\"title-tax-level\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:18:\"metadesc-tax-level\";s:0:\"\";s:25:\"display-metabox-tax-level\";b:1;s:17:\"noindex-tax-level\";b:0;s:23:\"taxonomy-level-ptparent\";i:0;s:14:\"title-tax-type\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:17:\"metadesc-tax-type\";s:0:\"\";s:24:\"display-metabox-tax-type\";b:1;s:16:\"noindex-tax-type\";b:0;s:22:\"taxonomy-type-ptparent\";i:0;s:19:\"title-tax-intructor\";s:53:\"%%term_title%% Archives %%page%% %%sep%% %%sitename%%\";s:22:\"metadesc-tax-intructor\";s:0:\"\";s:29:\"display-metabox-tax-intructor\";b:1;s:21:\"noindex-tax-intructor\";b:0;s:27:\"taxonomy-intructor-ptparent\";i:0;}', 'yes'),
(255, 'wpseo_social', 'a:20:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:19:\"og_default_image_id\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:21:\"og_frontpage_image_id\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(256, 'wpseo_flush_rewrite', '1', 'yes'),
(257, '_transient_timeout_wpseo_link_table_inaccessible', '1573583098', 'no'),
(258, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(259, '_transient_timeout_wpseo_meta_table_inaccessible', '1573583098', 'no'),
(260, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(264, 'wpfront-user-role-editor-db-version', '2.14.1', 'yes'),
(267, 'ws_menu_editor', 'a:24:{s:22:\"hide_advanced_settings\";b:1;s:16:\"show_extra_icons\";b:0;s:11:\"custom_menu\";N;s:19:\"custom_network_menu\";N;s:18:\"first_install_time\";i:1542047344;s:21:\"display_survey_notice\";b:1;s:17:\"plugin_db_version\";i:140;s:24:\"security_logging_enabled\";b:0;s:17:\"menu_config_scope\";s:6:\"global\";s:13:\"plugin_access\";s:14:\"manage_options\";s:15:\"allowed_user_id\";N;s:28:\"plugins_page_allowed_user_id\";N;s:27:\"show_deprecated_hide_button\";b:1;s:37:\"dashboard_hiding_confirmation_enabled\";b:1;s:21:\"submenu_icons_enabled\";s:9:\"if_custom\";s:22:\"force_custom_dashicons\";b:1;s:16:\"ui_colour_scheme\";s:7:\"classic\";s:13:\"visible_users\";a:0:{}s:23:\"show_plugin_menu_notice\";b:1;s:20:\"unused_item_position\";s:8:\"relative\";s:23:\"unused_item_permissions\";s:9:\"unchanged\";s:15:\"error_verbosity\";i:2;s:20:\"compress_custom_menu\";b:0;s:16:\"is_active_module\";a:1:{s:19:\"highlight-new-menus\";b:0;}}', 'yes'),
(288, 'cpac_options_zone__default', 'a:3:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:5:\"title\";s:5:\"Title\";s:4:\"date\";s:4:\"Date\";}', 'yes'),
(289, 'ac_sorting_zone_default', 'a:4:{s:5:\"title\";s:5:\"title\";s:6:\"parent\";s:6:\"parent\";s:8:\"comments\";s:13:\"comment_count\";s:4:\"date\";a:2:{i:0;s:4:\"date\";i:1;b:1;}}', 'yes'),
(299, 'wpseo_taxonomy_meta', 'a:2:{s:8:\"category\";a:8:{i:1;a:3:{s:13:\"wpseo_focuskw\";s:13:\"Uncategorized\";s:13:\"wpseo_linkdex\";s:2:\"21\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:6;a:3:{s:13:\"wpseo_focuskw\";s:13:\"Dinh dưỡng\";s:13:\"wpseo_linkdex\";s:2:\"37\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:7;a:3:{s:13:\"wpseo_focuskw\";s:11:\"Ẩm thực\";s:13:\"wpseo_linkdex\";s:2:\"39\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:9;a:3:{s:13:\"wpseo_focuskw\";s:14:\"Địa điểm\";s:13:\"wpseo_linkdex\";s:2:\"37\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:10;a:3:{s:13:\"wpseo_focuskw\";s:11:\"Sự kiện\";s:13:\"wpseo_linkdex\";s:2:\"37\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:8;a:3:{s:13:\"wpseo_focuskw\";s:11:\"Ý tưởng\";s:13:\"wpseo_linkdex\";s:2:\"37\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:5;a:3:{s:13:\"wpseo_focuskw\";s:7:\"Fitness\";s:13:\"wpseo_linkdex\";s:2:\"37\";s:19:\"wpseo_content_score\";s:2:\"30\";}i:2;a:3:{s:13:\"wpseo_focuskw\";s:13:\"Tập luyện\";s:13:\"wpseo_linkdex\";s:2:\"37\";s:19:\"wpseo_content_score\";s:2:\"30\";}}s:10:\"instructor\";a:3:{i:31;a:3:{s:13:\"wpseo_focuskw\";s:12:\"Khắc Nhât\";s:13:\"wpseo_linkdex\";s:2:\"26\";s:19:\"wpseo_content_score\";s:2:\"60\";}i:33;a:3:{s:13:\"wpseo_focuskw\";s:13:\"Quỳnh Trân\";s:13:\"wpseo_linkdex\";s:2:\"36\";s:19:\"wpseo_content_score\";s:2:\"90\";}i:27;a:3:{s:13:\"wpseo_focuskw\";s:10:\"Lê Tuấn\";s:13:\"wpseo_linkdex\";s:2:\"36\";s:19:\"wpseo_content_score\";s:2:\"60\";}}}', 'yes'),
(310, 'cpac_options_wp-taxonomy_level__default', 'a:7:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:4:\"name\";s:4:\"Name\";s:11:\"description\";s:11:\"Description\";s:11:\"wpseo-score\";s:217:\"<span class=\"yoast-tooltip yoast-tooltip-n yoast-tooltip-alt\" data-label=\"SEO score\"><span class=\"yoast-column-seo-score yoast-column-header-has-tooltip\"><span class=\"screen-reader-text\">SEO score</span></span></span>\";s:23:\"wpseo-score-readability\";s:235:\"<span class=\"yoast-tooltip yoast-tooltip-n yoast-tooltip-alt\" data-label=\"Readability score\"><span class=\"yoast-column-readability yoast-column-header-has-tooltip\"><span class=\"screen-reader-text\">Readability score</span></span></span>\";s:4:\"slug\";s:4:\"Slug\";s:5:\"posts\";s:5:\"Count\";}', 'yes'),
(311, 'ac_sorting_wp-taxonomy_level_default', 'a:5:{s:4:\"name\";s:4:\"name\";s:11:\"description\";s:11:\"description\";s:4:\"slug\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";s:5:\"links\";s:5:\"count\";}', 'yes'),
(315, 'level_children', 'a:0:{}', 'yes'),
(316, 'cpac_options_wp-taxonomy_instructor__default', 'a:7:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:4:\"name\";s:4:\"Name\";s:11:\"description\";s:11:\"Description\";s:11:\"wpseo-score\";s:217:\"<span class=\"yoast-tooltip yoast-tooltip-n yoast-tooltip-alt\" data-label=\"SEO score\"><span class=\"yoast-column-seo-score yoast-column-header-has-tooltip\"><span class=\"screen-reader-text\">SEO score</span></span></span>\";s:23:\"wpseo-score-readability\";s:235:\"<span class=\"yoast-tooltip yoast-tooltip-n yoast-tooltip-alt\" data-label=\"Readability score\"><span class=\"yoast-column-readability yoast-column-header-has-tooltip\"><span class=\"screen-reader-text\">Readability score</span></span></span>\";s:4:\"slug\";s:4:\"Slug\";s:5:\"posts\";s:5:\"Count\";}', 'yes'),
(317, 'ac_sorting_wp-taxonomy_instructor_default', 'a:5:{s:4:\"name\";s:4:\"name\";s:11:\"description\";s:11:\"description\";s:4:\"slug\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";s:5:\"links\";s:5:\"count\";}', 'yes'),
(324, '_site_transient_timeout_browser_17f3d26182d9fe752067c86c00b249fd', '1542731105', 'no'),
(325, '_site_transient_browser_17f3d26182d9fe752067c86c00b249fd', 'a:10:{s:4:\"name\";s:14:\"Microsoft Edge\";s:7:\"version\";s:8:\"17.17134\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:8:\"15.15063\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(328, 'WPLANG', '', 'yes'),
(329, 'new_admin_email', 'admin@gmail.com', 'yes'),
(336, 'cpac_options_page__default', 'a:11:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:5:\"title\";s:5:\"Title\";s:6:\"author\";s:6:\"Author\";s:8:\"comments\";s:111:\"<span class=\"vers comment-grey-bubble\" title=\"Comments\"><span class=\"screen-reader-text\">Comments</span></span>\";s:4:\"date\";s:4:\"Date\";s:11:\"wpseo-links\";s:242:\"<span class=\"yoast-linked-to yoast-column-header-has-tooltip\" data-label=\"Number of internal links in this post. See &quot;Yoast Columns&quot; text in the help tab for more info.\"><span class=\"screen-reader-text\"># links in post</span></span>\";s:11:\"wpseo-score\";s:217:\"<span class=\"yoast-tooltip yoast-tooltip-n yoast-tooltip-alt\" data-label=\"SEO score\"><span class=\"yoast-column-seo-score yoast-column-header-has-tooltip\"><span class=\"screen-reader-text\">SEO score</span></span></span>\";s:23:\"wpseo-score-readability\";s:235:\"<span class=\"yoast-tooltip yoast-tooltip-n yoast-tooltip-alt\" data-label=\"Readability score\"><span class=\"yoast-column-readability yoast-column-header-has-tooltip\"><span class=\"screen-reader-text\">Readability score</span></span></span>\";s:11:\"wpseo-title\";s:9:\"SEO Title\";s:14:\"wpseo-metadesc\";s:10:\"Meta Desc.\";s:13:\"wpseo-focuskw\";s:8:\"Focus KW\";}', 'yes'),
(337, 'ac_sorting_page_default', 'a:8:{s:5:\"title\";s:5:\"title\";s:6:\"parent\";s:6:\"parent\";s:8:\"comments\";s:13:\"comment_count\";s:4:\"date\";a:2:{i:0;s:4:\"date\";i:1;b:1;}s:11:\"wpseo-links\";s:11:\"wpseo-links\";s:12:\"wpseo-linked\";s:12:\"wpseo-linked\";s:14:\"wpseo-metadesc\";s:14:\"wpseo-metadesc\";s:13:\"wpseo-focuskw\";s:13:\"wpseo-focuskw\";}', 'yes'),
(340, '_site_transient_timeout_browser_4921673eb5362163c99e340a10b62f97', '1542733766', 'no'),
(341, '_site_transient_browser_4921673eb5362163c99e340a10b62f97', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"70.0.3538.77\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(363, '_site_transient_timeout_browser_6a940169901f1b643c4e59a55f1be5cc', '1542739294', 'no'),
(364, '_site_transient_browser_6a940169901f1b643c4e59a55f1be5cc', 'a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:6:\"12.0.1\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.apple.com/safari/\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/safari.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/safari.png?1\";s:15:\"current_version\";s:2:\"11\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(370, '_site_transient_timeout_browser_88948936c8355fa92108d4448c2520d0', '1542810667', 'no'),
(371, '_site_transient_browser_88948936c8355fa92108d4448c2520d0', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"70.0.3538.102\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(428, '_site_transient_timeout_browser_f1ec2b71e863713ddf4f8b2c468c45e4', '1542897839', 'no'),
(429, '_site_transient_browser_f1ec2b71e863713ddf4f8b2c468c45e4', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"70.0.3538.102\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(466, '_transient_timeout_ac-deprecated-message-count', '1542990024', 'no'),
(467, '_transient_ac-deprecated-message-count', '0', 'no'),
(469, '_transient_timeout__cpac_renewal_check', '1542990039', 'no'),
(470, '_transient__cpac_renewal_check', '1', 'no');
INSERT INTO `hpk_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(545, 'rewrite_rules', 'a:206:{s:11:\"playlist/?$\";s:28:\"index.php?post_type=playlist\";s:41:\"playlist/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=playlist&feed=$matches[1]\";s:36:\"playlist/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=playlist&feed=$matches[1]\";s:28:\"playlist/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=playlist&paged=$matches[1]\";s:83:\"playlist/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]&post_type=playlist\";s:78:\"playlist/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]&post_type=playlist\";s:71:\"playlist/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:100:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]&post_type=playlist\";s:53:\"playlist/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&post_type=playlist\";s:70:\"playlist/date/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:83:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]&post_type=playlist\";s:65:\"playlist/date/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:83:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]&post_type=playlist\";s:58:\"playlist/date/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:84:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]&post_type=playlist\";s:40:\"playlist/date/([0-9]{4})/([0-9]{1,2})/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&post_type=playlist\";s:57:\"playlist/date/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:62:\"index.php?year=$matches[1]&feed=$matches[2]&post_type=playlist\";s:52:\"playlist/date/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:62:\"index.php?year=$matches[1]&feed=$matches[2]&post_type=playlist\";s:45:\"playlist/date/([0-9]{4})/page/?([0-9]{1,})/?$\";s:63:\"index.php?year=$matches[1]&paged=$matches[2]&post_type=playlist\";s:27:\"playlist/date/([0-9]{4})/?$\";s:45:\"index.php?year=$matches[1]&post_type=playlist\";s:44:\"playlist/author/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?author_name=$matches[1]&paged=$matches[2]&post_type=playlist\";s:26:\"playlist/author/([^/]+)/?$\";s:52:\"index.php?author_name=$matches[1]&post_type=playlist\";s:46:\"playlist/category/([^/]+)/page/?([0-9]{1,})/?$\";s:72:\"index.php?category_name=$matches[1]&paged=$matches[2]&post_type=playlist\";s:28:\"playlist/category/([^/]+)/?$\";s:54:\"index.php?category_name=$matches[1]&post_type=playlist\";s:9:\"recipe/?$\";s:26:\"index.php?post_type=recipe\";s:39:\"recipe/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=recipe&feed=$matches[1]\";s:34:\"recipe/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=recipe&feed=$matches[1]\";s:26:\"recipe/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=recipe&paged=$matches[1]\";s:81:\"recipe/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]&post_type=recipe\";s:76:\"recipe/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]&post_type=recipe\";s:69:\"recipe/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]&post_type=recipe\";s:51:\"recipe/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&post_type=recipe\";s:68:\"recipe/date/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]&post_type=recipe\";s:63:\"recipe/date/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]&post_type=recipe\";s:56:\"recipe/date/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]&post_type=recipe\";s:38:\"recipe/date/([0-9]{4})/([0-9]{1,2})/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&post_type=recipe\";s:55:\"recipe/date/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?year=$matches[1]&feed=$matches[2]&post_type=recipe\";s:50:\"recipe/date/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:60:\"index.php?year=$matches[1]&feed=$matches[2]&post_type=recipe\";s:43:\"recipe/date/([0-9]{4})/page/?([0-9]{1,})/?$\";s:61:\"index.php?year=$matches[1]&paged=$matches[2]&post_type=recipe\";s:25:\"recipe/date/([0-9]{4})/?$\";s:43:\"index.php?year=$matches[1]&post_type=recipe\";s:42:\"recipe/author/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?author_name=$matches[1]&paged=$matches[2]&post_type=recipe\";s:24:\"recipe/author/([^/]+)/?$\";s:50:\"index.php?author_name=$matches[1]&post_type=recipe\";s:44:\"recipe/category/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&paged=$matches[2]&post_type=recipe\";s:26:\"recipe/category/([^/]+)/?$\";s:52:\"index.php?category_name=$matches[1]&post_type=recipe\";s:7:\"zone/?$\";s:24:\"index.php?post_type=zone\";s:37:\"zone/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=zone&feed=$matches[1]\";s:32:\"zone/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=zone&feed=$matches[1]\";s:24:\"zone/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=zone&paged=$matches[1]\";s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:25:\"index.php?xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?type=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?type=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:37:\"index.php?type=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?type=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:26:\"index.php?type=$matches[1]\";s:52:\"playlist/.+?/[^/]+-[0-9]+.html/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:62:\"playlist/.+?/[^/]+-[0-9]+.html/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:82:\"playlist/.+?/[^/]+-[0-9]+.html/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:77:\"playlist/.+?/[^/]+-[0-9]+.html/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:77:\"playlist/.+?/[^/]+-[0-9]+.html/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:58:\"playlist/.+?/[^/]+-[0-9]+.html/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:47:\"(playlist)/(.+?)/([^/]+)-([0-9]+).html/embed/?$\";s:117:\"index.php?post_type=playlist&slug=$matches[1]&category_name=$matches[2]&playlist=$matches[3]&p=$matches[4]&embed=true\";s:51:\"(playlist)/(.+?)/([^/]+)-([0-9]+).html/trackback/?$\";s:111:\"index.php?post_type=playlist&slug=$matches[1]&category_name=$matches[2]&playlist=$matches[3]&p=$matches[4]&tb=1\";s:71:\"(playlist)/(.+?)/([^/]+)-([0-9]+).html/feed/(feed|rdf|rss|rss2|atom)/?$\";s:123:\"index.php?post_type=playlist&slug=$matches[1]&category_name=$matches[2]&playlist=$matches[3]&p=$matches[4]&feed=$matches[5]\";s:66:\"(playlist)/(.+?)/([^/]+)-([0-9]+).html/(feed|rdf|rss|rss2|atom)/?$\";s:123:\"index.php?post_type=playlist&slug=$matches[1]&category_name=$matches[2]&playlist=$matches[3]&p=$matches[4]&feed=$matches[5]\";s:59:\"(playlist)/(.+?)/([^/]+)-([0-9]+).html/page/?([0-9]{1,})/?$\";s:124:\"index.php?post_type=playlist&slug=$matches[1]&category_name=$matches[2]&playlist=$matches[3]&p=$matches[4]&paged=$matches[5]\";s:66:\"(playlist)/(.+?)/([^/]+)-([0-9]+).html/comment-page-([0-9]{1,})/?$\";s:124:\"index.php?post_type=playlist&slug=$matches[1]&category_name=$matches[2]&playlist=$matches[3]&p=$matches[4]&cpage=$matches[5]\";s:55:\"(playlist)/(.+?)/([^/]+)-([0-9]+).html(?:/([0-9]+))?/?$\";s:123:\"index.php?post_type=playlist&slug=$matches[1]&category_name=$matches[2]&playlist=$matches[3]&p=$matches[4]&page=$matches[5]\";s:41:\"playlist/.+?/[^/]+-[0-9]+.html/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"playlist/.+?/[^/]+-[0-9]+.html/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"playlist/.+?/[^/]+-[0-9]+.html/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"playlist/.+?/[^/]+-[0-9]+.html/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"playlist/.+?/[^/]+-[0-9]+.html/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"playlist/.+?/[^/]+-[0-9]+.html/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:50:\"recipe/.+?/[^/]+-[0-9]+.html/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:60:\"recipe/.+?/[^/]+-[0-9]+.html/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:80:\"recipe/.+?/[^/]+-[0-9]+.html/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:75:\"recipe/.+?/[^/]+-[0-9]+.html/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:75:\"recipe/.+?/[^/]+-[0-9]+.html/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:56:\"recipe/.+?/[^/]+-[0-9]+.html/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:45:\"(recipe)/(.+?)/([^/]+)-([0-9]+).html/embed/?$\";s:113:\"index.php?post_type=recipe&slug=$matches[1]&category_name=$matches[2]&recipe=$matches[3]&p=$matches[4]&embed=true\";s:49:\"(recipe)/(.+?)/([^/]+)-([0-9]+).html/trackback/?$\";s:107:\"index.php?post_type=recipe&slug=$matches[1]&category_name=$matches[2]&recipe=$matches[3]&p=$matches[4]&tb=1\";s:69:\"(recipe)/(.+?)/([^/]+)-([0-9]+).html/feed/(feed|rdf|rss|rss2|atom)/?$\";s:119:\"index.php?post_type=recipe&slug=$matches[1]&category_name=$matches[2]&recipe=$matches[3]&p=$matches[4]&feed=$matches[5]\";s:64:\"(recipe)/(.+?)/([^/]+)-([0-9]+).html/(feed|rdf|rss|rss2|atom)/?$\";s:119:\"index.php?post_type=recipe&slug=$matches[1]&category_name=$matches[2]&recipe=$matches[3]&p=$matches[4]&feed=$matches[5]\";s:57:\"(recipe)/(.+?)/([^/]+)-([0-9]+).html/page/?([0-9]{1,})/?$\";s:120:\"index.php?post_type=recipe&slug=$matches[1]&category_name=$matches[2]&recipe=$matches[3]&p=$matches[4]&paged=$matches[5]\";s:64:\"(recipe)/(.+?)/([^/]+)-([0-9]+).html/comment-page-([0-9]{1,})/?$\";s:120:\"index.php?post_type=recipe&slug=$matches[1]&category_name=$matches[2]&recipe=$matches[3]&p=$matches[4]&cpage=$matches[5]\";s:53:\"(recipe)/(.+?)/([^/]+)-([0-9]+).html(?:/([0-9]+))?/?$\";s:119:\"index.php?post_type=recipe&slug=$matches[1]&category_name=$matches[2]&recipe=$matches[3]&p=$matches[4]&page=$matches[5]\";s:39:\"recipe/.+?/[^/]+-[0-9]+.html/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"recipe/.+?/[^/]+-[0-9]+.html/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"recipe/.+?/[^/]+-[0-9]+.html/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"recipe/.+?/[^/]+-[0-9]+.html/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"recipe/.+?/[^/]+-[0-9]+.html/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"recipe/.+?/[^/]+-[0-9]+.html/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"zone/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"zone/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"zone/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"zone/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"zone/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"zone/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"zone/([^/]+)/embed/?$\";s:37:\"index.php?zone=$matches[1]&embed=true\";s:25:\"zone/([^/]+)/trackback/?$\";s:31:\"index.php?zone=$matches[1]&tb=1\";s:45:\"zone/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?zone=$matches[1]&feed=$matches[2]\";s:40:\"zone/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?zone=$matches[1]&feed=$matches[2]\";s:33:\"zone/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?zone=$matches[1]&paged=$matches[2]\";s:40:\"zone/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?zone=$matches[1]&cpage=$matches[2]\";s:29:\"zone/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?zone=$matches[1]&page=$matches[2]\";s:21:\"zone/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"zone/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"zone/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"zone/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"zone/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"zone/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:46:\"level/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?level=$matches[1]&feed=$matches[2]\";s:41:\"level/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?level=$matches[1]&feed=$matches[2]\";s:22:\"level/([^/]+)/embed/?$\";s:38:\"index.php?level=$matches[1]&embed=true\";s:34:\"level/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?level=$matches[1]&paged=$matches[2]\";s:16:\"level/([^/]+)/?$\";s:27:\"index.php?level=$matches[1]\";s:51:\"instructor/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?instructor=$matches[1]&feed=$matches[2]\";s:46:\"instructor/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?instructor=$matches[1]&feed=$matches[2]\";s:27:\"instructor/([^/]+)/embed/?$\";s:43:\"index.php?instructor=$matches[1]&embed=true\";s:39:\"instructor/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?instructor=$matches[1]&paged=$matches[2]\";s:21:\"instructor/([^/]+)/?$\";s:32:\"index.php?instructor=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:74:\"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:69:\"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:50:\"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:62:\"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:44:\"date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:61:\"date/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:56:\"date/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:37:\"date/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:49:\"date/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:31:\"date/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:48:\"date/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:43:\"date/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:24:\"date/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:36:\"date/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:18:\"date/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:43:\".+?/[^/]+-[0-9]+.html/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\".+?/[^/]+-[0-9]+.html/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\".+?/[^/]+-[0-9]+.html/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\".+?/[^/]+-[0-9]+.html/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\".+?/[^/]+-[0-9]+.html/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\".+?/[^/]+-[0-9]+.html/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"(.+?)/([^/]+)-([0-9]+).html/embed/?$\";s:77:\"index.php?category_name=$matches[1]&name=$matches[2]&p=$matches[3]&embed=true\";s:40:\"(.+?)/([^/]+)-([0-9]+).html/trackback/?$\";s:71:\"index.php?category_name=$matches[1]&name=$matches[2]&p=$matches[3]&tb=1\";s:60:\"(.+?)/([^/]+)-([0-9]+).html/feed/(feed|rdf|rss|rss2|atom)/?$\";s:83:\"index.php?category_name=$matches[1]&name=$matches[2]&p=$matches[3]&feed=$matches[4]\";s:55:\"(.+?)/([^/]+)-([0-9]+).html/(feed|rdf|rss|rss2|atom)/?$\";s:83:\"index.php?category_name=$matches[1]&name=$matches[2]&p=$matches[3]&feed=$matches[4]\";s:48:\"(.+?)/([^/]+)-([0-9]+).html/page/?([0-9]{1,})/?$\";s:84:\"index.php?category_name=$matches[1]&name=$matches[2]&p=$matches[3]&paged=$matches[4]\";s:55:\"(.+?)/([^/]+)-([0-9]+).html/comment-page-([0-9]{1,})/?$\";s:84:\"index.php?category_name=$matches[1]&name=$matches[2]&p=$matches[3]&cpage=$matches[4]\";s:44:\"(.+?)/([^/]+)-([0-9]+).html(?:/([0-9]+))?/?$\";s:83:\"index.php?category_name=$matches[1]&name=$matches[2]&p=$matches[3]&page=$matches[4]\";s:32:\".+?/[^/]+-[0-9]+.html/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\".+?/[^/]+-[0-9]+.html/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\".+?/[^/]+-[0-9]+.html/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\".+?/[^/]+-[0-9]+.html/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\".+?/[^/]+-[0-9]+.html/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\".+?/[^/]+-[0-9]+.html/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(546, 'category_children', 'a:3:{i:2;a:2:{i:0;i:1;i:1;i:5;}i:3;a:2:{i:0;i:6;i:1;i:7;}i:4;a:3:{i:0;i:8;i:1;i:9;i:2;i:10;}}', 'yes'),
(557, '_site_transient_timeout_theme_roots', '1542640801', 'no'),
(558, '_site_transient_theme_roots', 'a:2:{s:12:\"bk the 11-08\";s:7:\"/themes\";s:9:\"stt_theme\";s:7:\"/themes\";}', 'no'),
(559, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1542639003;s:7:\"checked\";a:7:{s:39:\"admin-columns-pro/admin-columns-pro.php\";s:5:\"4.2.9\";s:33:\"admin-menu-editor/menu-editor.php\";s:5:\"1.8.5\";s:34:\"advanced-custom-fields-pro/acf.php\";s:6:\"5.6.10\";s:59:\"custom-post-type-permalinks/custom-post-type-permalinks.php\";s:5:\"3.2.2\";s:22:\"songtute-cms/index.php\";s:3:\"1.0\";s:53:\"wpfront-user-role-editor/wpfront-user-role-editor.php\";s:6:\"2.14.1\";s:24:\"wordpress-seo/wp-seo.php\";s:3:\"9.1\";}s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.7.7\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:5:\"4.9.9\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:33:\"admin-menu-editor/menu-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/admin-menu-editor\";s:4:\"slug\";s:17:\"admin-menu-editor\";s:6:\"plugin\";s:33:\"admin-menu-editor/menu-editor.php\";s:11:\"new_version\";s:5:\"1.8.5\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/admin-menu-editor/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/admin-menu-editor.1.8.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/admin-menu-editor/assets/icon-128x128.png?rev=1418604\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/admin-menu-editor/assets/banner-772x250.png?rev=1419590\";}s:11:\"banners_rtl\";a:0:{}}s:59:\"custom-post-type-permalinks/custom-post-type-permalinks.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/custom-post-type-permalinks\";s:4:\"slug\";s:27:\"custom-post-type-permalinks\";s:6:\"plugin\";s:59:\"custom-post-type-permalinks/custom-post-type-permalinks.php\";s:11:\"new_version\";s:5:\"3.2.2\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/custom-post-type-permalinks/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/custom-post-type-permalinks.3.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/custom-post-type-permalinks/assets/icon-256x256.png?rev=1044337\";s:2:\"1x\";s:80:\"https://ps.w.org/custom-post-type-permalinks/assets/icon-128x128.png?rev=1044337\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/custom-post-type-permalinks/assets/banner-1544x500.png?rev=1044335\";s:2:\"1x\";s:81:\"https://ps.w.org/custom-post-type-permalinks/assets/banner-772x250.png?rev=785437\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"wpfront-user-role-editor/wpfront-user-role-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/wpfront-user-role-editor\";s:4:\"slug\";s:24:\"wpfront-user-role-editor\";s:6:\"plugin\";s:53:\"wpfront-user-role-editor/wpfront-user-role-editor.php\";s:11:\"new_version\";s:6:\"2.14.1\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/wpfront-user-role-editor/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/wpfront-user-role-editor.2.14.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/wpfront-user-role-editor/assets/icon-256x256.png?rev=1022726\";s:2:\"1x\";s:69:\"https://ps.w.org/wpfront-user-role-editor/assets/icon.svg?rev=1022723\";s:3:\"svg\";s:69:\"https://ps.w.org/wpfront-user-role-editor/assets/icon.svg?rev=1022723\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/wpfront-user-role-editor/assets/banner-772x250.png?rev=875133\";}s:11:\"banners_rtl\";a:0:{}}s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:3:\"9.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/wordpress-seo.9.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1946641\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}}}}', 'no');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hpk_postmeta`
--

CREATE TABLE `hpk_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hpk_postmeta`
--

INSERT INTO `hpk_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 14, '_edit_last', '1'),
(4, 14, '_edit_lock', '1542044752:1'),
(5, 21, '_edit_last', '1'),
(6, 21, '_edit_lock', '1542046820:1'),
(7, 33, '_edit_last', '1'),
(8, 33, '_edit_lock', '1542385449:1'),
(9, 99, '_edit_last', '1'),
(10, 99, '_edit_lock', '1542039984:1'),
(11, 100, '_edit_last', '1'),
(12, 100, '_edit_lock', '1542046441:1'),
(13, 125, '_edit_last', '1'),
(14, 125, '_edit_lock', '1542047064:1'),
(16, 100, '_wp_trash_meta_status', 'draft'),
(17, 100, '_wp_trash_meta_time', '1542046831'),
(18, 100, '_wp_desired_post_slug', ''),
(19, 99, '_wp_trash_meta_status', 'draft'),
(20, 99, '_wp_trash_meta_time', '1542046831'),
(21, 99, '_wp_desired_post_slug', ''),
(22, 130, '_edit_last', '1'),
(23, 130, '_edit_lock', '1542294377:1'),
(24, 134, '_edit_last', '1'),
(25, 134, '_edit_lock', '1542296697:1'),
(26, 144, '_edit_last', '1'),
(27, 144, '_edit_lock', '1542293607:1'),
(28, 147, '_edit_last', '1'),
(29, 147, '_edit_lock', '1542295859:1'),
(30, 150, '_edit_last', '1'),
(31, 150, 'stt_home_lastest_0_stt_home_lastest_sub', ''),
(32, 150, '_stt_home_lastest_0_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(33, 150, 'stt_home_lastest_1_stt_home_lastest_sub', ''),
(34, 150, '_stt_home_lastest_1_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(35, 150, 'stt_home_lastest_2_stt_home_lastest_sub', ''),
(36, 150, '_stt_home_lastest_2_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(37, 150, 'stt_home_lastest_3_stt_home_lastest_sub', ''),
(38, 150, '_stt_home_lastest_3_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(39, 150, 'stt_home_lastest_4_stt_home_lastest_sub', ''),
(40, 150, '_stt_home_lastest_4_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(41, 150, 'stt_home_lastest_5_stt_home_lastest_sub', ''),
(42, 150, '_stt_home_lastest_5_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(43, 150, 'stt_home_lastest_6_stt_home_lastest_sub', ''),
(44, 150, '_stt_home_lastest_6_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(45, 150, 'stt_home_lastest', '7'),
(46, 150, '_stt_home_lastest', 'field_5beae64ecf13c'),
(47, 150, 'stt_home_instructor_0_stt_home_instructor_sub', ''),
(48, 150, '_stt_home_instructor_0_stt_home_instructor_sub', 'field_5beae7cc84249'),
(49, 150, 'stt_home_instructor_1_stt_home_instructor_sub', ''),
(50, 150, '_stt_home_instructor_1_stt_home_instructor_sub', 'field_5beae7cc84249'),
(51, 150, 'stt_home_instructor_2_stt_home_instructor_sub', ''),
(52, 150, '_stt_home_instructor_2_stt_home_instructor_sub', 'field_5beae7cc84249'),
(53, 150, 'stt_home_instructor_3_stt_home_instructor_sub', ''),
(54, 150, '_stt_home_instructor_3_stt_home_instructor_sub', 'field_5beae7cc84249'),
(55, 150, 'stt_home_instructor_4_stt_home_instructor_sub', ''),
(56, 150, '_stt_home_instructor_4_stt_home_instructor_sub', 'field_5beae7cc84249'),
(57, 150, 'stt_home_instructor_5_stt_home_instructor_sub', ''),
(58, 150, '_stt_home_instructor_5_stt_home_instructor_sub', 'field_5beae7cc84249'),
(59, 150, 'stt_home_instructor_6_stt_home_instructor_sub', ''),
(60, 150, '_stt_home_instructor_6_stt_home_instructor_sub', 'field_5beae7cc84249'),
(61, 150, 'stt_home_instructor_7_stt_home_instructor_sub', ''),
(62, 150, '_stt_home_instructor_7_stt_home_instructor_sub', 'field_5beae7cc84249'),
(63, 150, 'stt_home_instructor_8_stt_home_instructor_sub', ''),
(64, 150, '_stt_home_instructor_8_stt_home_instructor_sub', 'field_5beae7cc84249'),
(65, 150, 'stt_home_instructor_9_stt_home_instructor_sub', ''),
(66, 150, '_stt_home_instructor_9_stt_home_instructor_sub', 'field_5beae7cc84249'),
(67, 150, 'stt_home_instructor_10_stt_home_instructor_sub', ''),
(68, 150, '_stt_home_instructor_10_stt_home_instructor_sub', 'field_5beae7cc84249'),
(69, 150, 'stt_home_instructor', '11'),
(70, 150, '_stt_home_instructor', 'field_5beae74084248'),
(71, 150, 'stt_home_cate_0_stt_home_cate_sub', ''),
(72, 150, '_stt_home_cate_0_stt_home_cate_sub', 'field_5beae16b7f40f'),
(73, 150, 'stt_home_cate_1_stt_home_cate_sub', ''),
(74, 150, '_stt_home_cate_1_stt_home_cate_sub', 'field_5beae16b7f40f'),
(75, 150, 'stt_home_cate_2_stt_home_cate_sub', ''),
(76, 150, '_stt_home_cate_2_stt_home_cate_sub', 'field_5beae16b7f40f'),
(77, 150, 'stt_home_cate_3_stt_home_cate_sub', ''),
(78, 150, '_stt_home_cate_3_stt_home_cate_sub', 'field_5beae16b7f40f'),
(79, 150, 'stt_home_cate_4_stt_home_cate_sub', ''),
(80, 150, '_stt_home_cate_4_stt_home_cate_sub', 'field_5beae16b7f40f'),
(81, 150, 'stt_home_cate_5_stt_home_cate_sub', ''),
(82, 150, '_stt_home_cate_5_stt_home_cate_sub', 'field_5beae16b7f40f'),
(83, 150, 'stt_home_cate_6_stt_home_cate_sub', ''),
(84, 150, '_stt_home_cate_6_stt_home_cate_sub', 'field_5beae16b7f40f'),
(85, 150, 'stt_home_cate', '7'),
(86, 150, '_stt_home_cate', 'field_5beae1277f40e'),
(87, 150, 'stt_home_top_0_stt_home_top_sub', '161'),
(88, 150, '_stt_home_top_0_stt_home_top_sub', 'field_5beadd459ad7a'),
(89, 150, 'stt_home_top_1_stt_home_top_sub', '165'),
(90, 150, '_stt_home_top_1_stt_home_top_sub', 'field_5beadd459ad7a'),
(91, 150, 'stt_home_top_2_stt_home_top_sub', ''),
(92, 150, '_stt_home_top_2_stt_home_top_sub', 'field_5beadd459ad7a'),
(93, 150, 'stt_home_top', '3'),
(94, 150, '_stt_home_top', 'field_5beadd019ad79'),
(95, 150, '_edit_lock', '1542209363:1'),
(96, 153, '_edit_last', '1'),
(97, 153, 'stt_home_lastest_0_stt_home_lastest_sub', ''),
(98, 153, '_stt_home_lastest_0_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(99, 153, 'stt_home_lastest_1_stt_home_lastest_sub', ''),
(100, 153, '_stt_home_lastest_1_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(101, 153, 'stt_home_lastest_2_stt_home_lastest_sub', ''),
(102, 153, '_stt_home_lastest_2_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(103, 153, 'stt_home_lastest_3_stt_home_lastest_sub', ''),
(104, 153, '_stt_home_lastest_3_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(105, 153, 'stt_home_lastest_4_stt_home_lastest_sub', ''),
(106, 153, '_stt_home_lastest_4_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(107, 153, 'stt_home_lastest_5_stt_home_lastest_sub', ''),
(108, 153, '_stt_home_lastest_5_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(109, 153, 'stt_home_lastest_6_stt_home_lastest_sub', ''),
(110, 153, '_stt_home_lastest_6_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(111, 153, 'stt_home_lastest', '7'),
(112, 153, '_stt_home_lastest', 'field_5beae64ecf13c'),
(113, 153, 'stt_home_instructor_0_stt_home_instructor_sub', ''),
(114, 153, '_stt_home_instructor_0_stt_home_instructor_sub', 'field_5beae7cc84249'),
(115, 153, 'stt_home_instructor_1_stt_home_instructor_sub', ''),
(116, 153, '_stt_home_instructor_1_stt_home_instructor_sub', 'field_5beae7cc84249'),
(117, 153, 'stt_home_instructor_2_stt_home_instructor_sub', ''),
(118, 153, '_stt_home_instructor_2_stt_home_instructor_sub', 'field_5beae7cc84249'),
(119, 153, 'stt_home_instructor_3_stt_home_instructor_sub', ''),
(120, 153, '_stt_home_instructor_3_stt_home_instructor_sub', 'field_5beae7cc84249'),
(121, 153, 'stt_home_instructor_4_stt_home_instructor_sub', ''),
(122, 153, '_stt_home_instructor_4_stt_home_instructor_sub', 'field_5beae7cc84249'),
(123, 153, 'stt_home_instructor_5_stt_home_instructor_sub', ''),
(124, 153, '_stt_home_instructor_5_stt_home_instructor_sub', 'field_5beae7cc84249'),
(125, 153, 'stt_home_instructor_6_stt_home_instructor_sub', ''),
(126, 153, '_stt_home_instructor_6_stt_home_instructor_sub', 'field_5beae7cc84249'),
(127, 153, 'stt_home_instructor_7_stt_home_instructor_sub', ''),
(128, 153, '_stt_home_instructor_7_stt_home_instructor_sub', 'field_5beae7cc84249'),
(129, 153, 'stt_home_instructor_8_stt_home_instructor_sub', ''),
(130, 153, '_stt_home_instructor_8_stt_home_instructor_sub', 'field_5beae7cc84249'),
(131, 153, 'stt_home_instructor_9_stt_home_instructor_sub', ''),
(132, 153, '_stt_home_instructor_9_stt_home_instructor_sub', 'field_5beae7cc84249'),
(133, 153, 'stt_home_instructor_10_stt_home_instructor_sub', ''),
(134, 153, '_stt_home_instructor_10_stt_home_instructor_sub', 'field_5beae7cc84249'),
(135, 153, 'stt_home_instructor', '11'),
(136, 153, '_stt_home_instructor', 'field_5beae74084248'),
(137, 153, 'stt_home_cate_0_stt_home_cate_sub', '7'),
(138, 153, '_stt_home_cate_0_stt_home_cate_sub', 'field_5beae16b7f40f'),
(139, 153, 'stt_home_cate_1_stt_home_cate_sub', ''),
(140, 153, '_stt_home_cate_1_stt_home_cate_sub', 'field_5beae16b7f40f'),
(141, 153, 'stt_home_cate_2_stt_home_cate_sub', '10'),
(142, 153, '_stt_home_cate_2_stt_home_cate_sub', 'field_5beae16b7f40f'),
(143, 153, 'stt_home_cate_3_stt_home_cate_sub', ''),
(144, 153, '_stt_home_cate_3_stt_home_cate_sub', 'field_5beae16b7f40f'),
(145, 153, 'stt_home_cate_4_stt_home_cate_sub', ''),
(146, 153, '_stt_home_cate_4_stt_home_cate_sub', 'field_5beae16b7f40f'),
(147, 153, 'stt_home_cate_5_stt_home_cate_sub', ''),
(148, 153, '_stt_home_cate_5_stt_home_cate_sub', 'field_5beae16b7f40f'),
(149, 153, 'stt_home_cate_6_stt_home_cate_sub', ''),
(150, 153, '_stt_home_cate_6_stt_home_cate_sub', 'field_5beae16b7f40f'),
(151, 153, 'stt_home_cate', '7'),
(152, 153, '_stt_home_cate', 'field_5beae1277f40e'),
(153, 153, 'stt_home_top_0_stt_home_top_sub', ''),
(154, 153, '_stt_home_top_0_stt_home_top_sub', 'field_5beadd459ad7a'),
(155, 153, 'stt_home_top_1_stt_home_top_sub', ''),
(156, 153, '_stt_home_top_1_stt_home_top_sub', 'field_5beadd459ad7a'),
(157, 153, 'stt_home_top_2_stt_home_top_sub', ''),
(158, 153, '_stt_home_top_2_stt_home_top_sub', 'field_5beadd459ad7a'),
(159, 153, 'stt_home_top', '3'),
(160, 153, '_stt_home_top', 'field_5beadd019ad79'),
(161, 153, '_edit_lock', '1542295735:1'),
(162, 154, '_edit_last', '1'),
(163, 154, 'stt_home_lastest_0_stt_home_lastest_sub', '180'),
(164, 154, '_stt_home_lastest_0_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(165, 154, 'stt_home_lastest_1_stt_home_lastest_sub', ''),
(166, 154, '_stt_home_lastest_1_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(167, 154, 'stt_home_lastest_2_stt_home_lastest_sub', '165'),
(168, 154, '_stt_home_lastest_2_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(169, 154, 'stt_home_lastest_3_stt_home_lastest_sub', ''),
(170, 154, '_stt_home_lastest_3_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(171, 154, 'stt_home_lastest_4_stt_home_lastest_sub', ''),
(172, 154, '_stt_home_lastest_4_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(173, 154, 'stt_home_lastest_5_stt_home_lastest_sub', ''),
(174, 154, '_stt_home_lastest_5_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(175, 154, 'stt_home_lastest_6_stt_home_lastest_sub', '180'),
(176, 154, '_stt_home_lastest_6_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(177, 154, 'stt_home_lastest', '8'),
(178, 154, '_stt_home_lastest', 'field_5beae64ecf13c'),
(179, 154, 'stt_home_instructor_0_stt_home_instructor_sub', ''),
(180, 154, '_stt_home_instructor_0_stt_home_instructor_sub', 'field_5beae7cc84249'),
(181, 154, 'stt_home_instructor_1_stt_home_instructor_sub', ''),
(182, 154, '_stt_home_instructor_1_stt_home_instructor_sub', 'field_5beae7cc84249'),
(183, 154, 'stt_home_instructor_2_stt_home_instructor_sub', ''),
(184, 154, '_stt_home_instructor_2_stt_home_instructor_sub', 'field_5beae7cc84249'),
(185, 154, 'stt_home_instructor_3_stt_home_instructor_sub', ''),
(186, 154, '_stt_home_instructor_3_stt_home_instructor_sub', 'field_5beae7cc84249'),
(187, 154, 'stt_home_instructor_4_stt_home_instructor_sub', ''),
(188, 154, '_stt_home_instructor_4_stt_home_instructor_sub', 'field_5beae7cc84249'),
(189, 154, 'stt_home_instructor_5_stt_home_instructor_sub', ''),
(190, 154, '_stt_home_instructor_5_stt_home_instructor_sub', 'field_5beae7cc84249'),
(191, 154, 'stt_home_instructor_6_stt_home_instructor_sub', ''),
(192, 154, '_stt_home_instructor_6_stt_home_instructor_sub', 'field_5beae7cc84249'),
(193, 154, 'stt_home_instructor_7_stt_home_instructor_sub', ''),
(194, 154, '_stt_home_instructor_7_stt_home_instructor_sub', 'field_5beae7cc84249'),
(195, 154, 'stt_home_instructor_8_stt_home_instructor_sub', ''),
(196, 154, '_stt_home_instructor_8_stt_home_instructor_sub', 'field_5beae7cc84249'),
(197, 154, 'stt_home_instructor_9_stt_home_instructor_sub', ''),
(198, 154, '_stt_home_instructor_9_stt_home_instructor_sub', 'field_5beae7cc84249'),
(199, 154, 'stt_home_instructor_10_stt_home_instructor_sub', ''),
(200, 154, '_stt_home_instructor_10_stt_home_instructor_sub', 'field_5beae7cc84249'),
(201, 154, 'stt_home_instructor', '11'),
(202, 154, '_stt_home_instructor', 'field_5beae74084248'),
(203, 154, 'stt_home_cate_0_stt_home_cate_sub', ''),
(204, 154, '_stt_home_cate_0_stt_home_cate_sub', 'field_5beae16b7f40f'),
(205, 154, 'stt_home_cate_1_stt_home_cate_sub', ''),
(206, 154, '_stt_home_cate_1_stt_home_cate_sub', 'field_5beae16b7f40f'),
(207, 154, 'stt_home_cate_2_stt_home_cate_sub', ''),
(208, 154, '_stt_home_cate_2_stt_home_cate_sub', 'field_5beae16b7f40f'),
(209, 154, 'stt_home_cate_3_stt_home_cate_sub', ''),
(210, 154, '_stt_home_cate_3_stt_home_cate_sub', 'field_5beae16b7f40f'),
(211, 154, 'stt_home_cate_4_stt_home_cate_sub', ''),
(212, 154, '_stt_home_cate_4_stt_home_cate_sub', 'field_5beae16b7f40f'),
(213, 154, 'stt_home_cate_5_stt_home_cate_sub', ''),
(214, 154, '_stt_home_cate_5_stt_home_cate_sub', 'field_5beae16b7f40f'),
(215, 154, 'stt_home_cate_6_stt_home_cate_sub', ''),
(216, 154, '_stt_home_cate_6_stt_home_cate_sub', 'field_5beae16b7f40f'),
(217, 154, 'stt_home_cate', '7'),
(218, 154, '_stt_home_cate', 'field_5beae1277f40e'),
(219, 154, 'stt_home_top_0_stt_home_top_sub', ''),
(220, 154, '_stt_home_top_0_stt_home_top_sub', 'field_5beadd459ad7a'),
(221, 154, 'stt_home_top_1_stt_home_top_sub', ''),
(222, 154, '_stt_home_top_1_stt_home_top_sub', 'field_5beadd459ad7a'),
(223, 154, 'stt_home_top_2_stt_home_top_sub', ''),
(224, 154, '_stt_home_top_2_stt_home_top_sub', 'field_5beadd459ad7a'),
(225, 154, 'stt_home_top', '3'),
(226, 154, '_stt_home_top', 'field_5beadd019ad79'),
(227, 154, '_edit_lock', '1542291446:1'),
(228, 155, '_edit_last', '1'),
(229, 155, 'stt_home_lastest_0_stt_home_lastest_sub', ''),
(230, 155, '_stt_home_lastest_0_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(231, 155, 'stt_home_lastest_1_stt_home_lastest_sub', ''),
(232, 155, '_stt_home_lastest_1_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(233, 155, 'stt_home_lastest_2_stt_home_lastest_sub', ''),
(234, 155, '_stt_home_lastest_2_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(235, 155, 'stt_home_lastest_3_stt_home_lastest_sub', ''),
(236, 155, '_stt_home_lastest_3_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(237, 155, 'stt_home_lastest_4_stt_home_lastest_sub', ''),
(238, 155, '_stt_home_lastest_4_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(239, 155, 'stt_home_lastest_5_stt_home_lastest_sub', ''),
(240, 155, '_stt_home_lastest_5_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(241, 155, 'stt_home_lastest_6_stt_home_lastest_sub', ''),
(242, 155, '_stt_home_lastest_6_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(243, 155, 'stt_home_lastest', '7'),
(244, 155, '_stt_home_lastest', 'field_5beae64ecf13c'),
(245, 155, 'stt_home_instructor_0_stt_home_instructor_sub', ''),
(246, 155, '_stt_home_instructor_0_stt_home_instructor_sub', 'field_5beae7cc84249'),
(247, 155, 'stt_home_instructor_1_stt_home_instructor_sub', ''),
(248, 155, '_stt_home_instructor_1_stt_home_instructor_sub', 'field_5beae7cc84249'),
(249, 155, 'stt_home_instructor_2_stt_home_instructor_sub', ''),
(250, 155, '_stt_home_instructor_2_stt_home_instructor_sub', 'field_5beae7cc84249'),
(251, 155, 'stt_home_instructor_3_stt_home_instructor_sub', ''),
(252, 155, '_stt_home_instructor_3_stt_home_instructor_sub', 'field_5beae7cc84249'),
(253, 155, 'stt_home_instructor_4_stt_home_instructor_sub', ''),
(254, 155, '_stt_home_instructor_4_stt_home_instructor_sub', 'field_5beae7cc84249'),
(255, 155, 'stt_home_instructor_5_stt_home_instructor_sub', ''),
(256, 155, '_stt_home_instructor_5_stt_home_instructor_sub', 'field_5beae7cc84249'),
(257, 155, 'stt_home_instructor_6_stt_home_instructor_sub', ''),
(258, 155, '_stt_home_instructor_6_stt_home_instructor_sub', 'field_5beae7cc84249'),
(259, 155, 'stt_home_instructor_7_stt_home_instructor_sub', ''),
(260, 155, '_stt_home_instructor_7_stt_home_instructor_sub', 'field_5beae7cc84249'),
(261, 155, 'stt_home_instructor_8_stt_home_instructor_sub', ''),
(262, 155, '_stt_home_instructor_8_stt_home_instructor_sub', 'field_5beae7cc84249'),
(263, 155, 'stt_home_instructor_9_stt_home_instructor_sub', ''),
(264, 155, '_stt_home_instructor_9_stt_home_instructor_sub', 'field_5beae7cc84249'),
(265, 155, 'stt_home_instructor_10_stt_home_instructor_sub', ''),
(266, 155, '_stt_home_instructor_10_stt_home_instructor_sub', 'field_5beae7cc84249'),
(267, 155, 'stt_home_instructor', '11'),
(268, 155, '_stt_home_instructor', 'field_5beae74084248'),
(269, 155, 'stt_home_cate_0_stt_home_cate_sub', ''),
(270, 155, '_stt_home_cate_0_stt_home_cate_sub', 'field_5beae16b7f40f'),
(271, 155, 'stt_home_cate_1_stt_home_cate_sub', ''),
(272, 155, '_stt_home_cate_1_stt_home_cate_sub', 'field_5beae16b7f40f'),
(273, 155, 'stt_home_cate_2_stt_home_cate_sub', ''),
(274, 155, '_stt_home_cate_2_stt_home_cate_sub', 'field_5beae16b7f40f'),
(275, 155, 'stt_home_cate_3_stt_home_cate_sub', ''),
(276, 155, '_stt_home_cate_3_stt_home_cate_sub', 'field_5beae16b7f40f'),
(277, 155, 'stt_home_cate_4_stt_home_cate_sub', ''),
(278, 155, '_stt_home_cate_4_stt_home_cate_sub', 'field_5beae16b7f40f'),
(279, 155, 'stt_home_cate_5_stt_home_cate_sub', ''),
(280, 155, '_stt_home_cate_5_stt_home_cate_sub', 'field_5beae16b7f40f'),
(281, 155, 'stt_home_cate_6_stt_home_cate_sub', ''),
(282, 155, '_stt_home_cate_6_stt_home_cate_sub', 'field_5beae16b7f40f'),
(283, 155, 'stt_home_cate', '7'),
(284, 155, '_stt_home_cate', 'field_5beae1277f40e'),
(285, 155, 'stt_home_top_0_stt_home_top_sub', ''),
(286, 155, '_stt_home_top_0_stt_home_top_sub', 'field_5beadd459ad7a'),
(287, 155, 'stt_home_top_1_stt_home_top_sub', ''),
(288, 155, '_stt_home_top_1_stt_home_top_sub', 'field_5beadd459ad7a'),
(289, 155, 'stt_home_top_2_stt_home_top_sub', ''),
(290, 155, '_stt_home_top_2_stt_home_top_sub', 'field_5beadd459ad7a'),
(291, 155, 'stt_home_top', '3'),
(292, 155, '_stt_home_top', 'field_5beadd019ad79'),
(293, 155, '_edit_lock', '1542222299:1'),
(298, 159, '_edit_last', '1'),
(299, 159, '_edit_lock', '1542556128:1'),
(300, 161, '_edit_last', '1'),
(301, 161, '_edit_lock', '1542389782:1'),
(302, 163, '_edit_last', '1'),
(303, 163, '_edit_lock', '1542390364:1'),
(304, 164, '_wp_attached_file', '2018/11/mon-an-ngay-tet.jpg'),
(305, 164, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:675;s:6:\"height\";i:353;s:4:\"file\";s:27:\"2018/11/mon-an-ngay-tet.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"mon-an-ngay-tet-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"mon-an-ngay-tet-300x157.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(306, 161, 'pl_thoi_luong', '6983'),
(307, 161, '_pl_thoi_luong', 'field_5be58a8f5eda6'),
(308, 161, 'pl_videos_0_pl_link_youtube', 'https://www.youtube.com/watch?v=tSV62mVSG9c'),
(309, 161, '_pl_videos_0_pl_link_youtube', 'field_5be58ae55eda8'),
(310, 161, 'pl_videos_0_pl_title', 'Hướng dẫn tập Yoga đơn giản tại nhà|15 phút tập Yoga mỗi ngày|Full HD ✔'),
(311, 161, '_pl_videos_0_pl_title', 'field_5be59c675eda9'),
(312, 161, 'pl_videos_0_pl_description', '-Website: http://www.khoe24h.vn/'),
(313, 161, '_pl_videos_0_pl_description', 'field_5be59c8d5edaa'),
(314, 161, 'pl_videos_0_pl_video_length', '818'),
(315, 161, '_pl_videos_0_pl_video_length', 'field_5be59cb85edab'),
(316, 161, 'pl_videos_0_pl_video_id', 'tSV62mVSG9c'),
(317, 161, '_pl_videos_0_pl_video_id', 'field_5be5ab72f2277'),
(318, 161, 'pl_videos_1_pl_link_youtube', 'https://www.youtube.com/watch?v=JUZ_6Yh9eUw'),
(319, 161, '_pl_videos_1_pl_link_youtube', 'field_5be58ae55eda8'),
(320, 161, 'pl_videos_1_pl_title', 'Yoga cơ bản tại nhà - Bài 1: Kéo dãn, làm mềm cơ và khớp để có thể luyện tập Yoga cùng Nguyễn Hiếu'),
(321, 161, '_pl_videos_1_pl_title', 'field_5be59c675eda9'),
(322, 161, 'pl_videos_1_pl_description', 'Đăng ký nhận bộ quà tặng 101 bài tập Yoga: https://zenlife.vn/qua-tang/ '),
(323, 161, '_pl_videos_1_pl_description', 'field_5be59c8d5edaa'),
(324, 161, 'pl_videos_1_pl_video_length', '1688'),
(325, 161, '_pl_videos_1_pl_video_length', 'field_5be59cb85edab'),
(326, 161, 'pl_videos_1_pl_video_id', 'JUZ_6Yh9eUw'),
(327, 161, '_pl_videos_1_pl_video_id', 'field_5be5ab72f2277'),
(328, 161, 'pl_videos_2_pl_link_youtube', 'https://www.youtube.com/watch?v=xqEjt-eQK9U'),
(329, 161, '_pl_videos_2_pl_link_youtube', 'field_5be58ae55eda8'),
(330, 161, 'pl_videos_2_pl_title', 'Yoga tại nhà - Ngày 1 Yoga giảm eo thần kỳ cùng Nguyễn Hiếu Yoga'),
(331, 161, '_pl_videos_2_pl_title', 'field_5be59c675eda9'),
(332, 161, 'pl_videos_2_pl_description', 'Đăng ký nhận bộ quà tặng 101 bài tập Yoga: https://zenlife.vn/qua-tang/ '),
(333, 161, '_pl_videos_2_pl_description', 'field_5be59c8d5edaa'),
(334, 161, 'pl_videos_2_pl_video_length', '925'),
(335, 161, '_pl_videos_2_pl_video_length', 'field_5be59cb85edab'),
(336, 161, 'pl_videos_2_pl_video_id', 'xqEjt-eQK9U'),
(337, 161, '_pl_videos_2_pl_video_id', 'field_5be5ab72f2277'),
(338, 161, 'pl_videos_3_pl_link_youtube', 'https://www.youtube.com/watch?v=O74hpixvgvM'),
(339, 161, '_pl_videos_3_pl_link_youtube', 'field_5be58ae55eda8'),
(340, 161, 'pl_videos_3_pl_title', 'YOGA Nguyễn Hiếu - Tổng hợp 5 ngày giảm eo'),
(341, 161, '_pl_videos_3_pl_title', 'field_5be59c675eda9'),
(342, 161, 'pl_videos_3_pl_description', ''),
(343, 161, '_pl_videos_3_pl_description', 'field_5be59c8d5edaa'),
(344, 161, 'pl_videos_3_pl_video_length', '3552'),
(345, 161, '_pl_videos_3_pl_video_length', 'field_5be59cb85edab'),
(346, 161, 'pl_videos_3_pl_video_id', 'O74hpixvgvM'),
(347, 161, '_pl_videos_3_pl_video_id', 'field_5be5ab72f2277'),
(348, 161, 'pl_videos', '4'),
(349, 161, '_pl_videos', 'field_5be58abd5eda7'),
(350, 161, '_yoast_wpseo_primary_category', '2'),
(351, 161, '_yoast_wpseo_primary_level', ''),
(352, 161, '_yoast_wpseo_content_score', '30'),
(353, 163, 'rc_thoi_gian_nau', '86'),
(354, 163, '_rc_thoi_gian_nau', 'field_5be59ceb09b60'),
(355, 163, 'rc_link_youtube', 'https://www.youtube.com/watch?v=IaIOvYskdss'),
(356, 163, '_rc_link_youtube', 'field_5be5a33b09b61'),
(357, 163, 'rc_serving_size', '7'),
(358, 163, '_rc_serving_size', 'field_5be5a41c09b62'),
(359, 163, 'rc_steps_0_rc_time', '5:00'),
(360, 163, '_rc_steps_0_rc_time', 'field_5be5a45209b64'),
(361, 163, 'rc_steps_0_rc_description', 'nấu ăn bước 1'),
(362, 163, '_rc_steps_0_rc_description', 'field_5be5a77509b65'),
(363, 163, 'rc_steps', '1'),
(364, 163, '_rc_steps', 'field_5be5a43109b63'),
(365, 163, 'rc_nguyen_lieu_0_rc_ten_nguyen_lieu', 'rau'),
(366, 163, '_rc_nguyen_lieu_0_rc_ten_nguyen_lieu', 'field_5be5a7fd09b67'),
(367, 163, 'rc_nguyen_lieu_0_rc_don_vi', '2kg'),
(368, 163, '_rc_nguyen_lieu_0_rc_don_vi', 'field_5be5a81e09b68'),
(369, 163, 'rc_nguyen_lieu', '1'),
(370, 163, '_rc_nguyen_lieu', 'field_5be5a79609b66'),
(371, 163, 'rc_gallery', 'a:1:{i:0;s:3:\"164\";}'),
(372, 163, '_rc_gallery', 'field_5be5a83f09b6a'),
(373, 163, '_yoast_wpseo_primary_category', '3'),
(374, 163, '_yoast_wpseo_primary_type', ''),
(375, 163, '_yoast_wpseo_content_score', '30'),
(376, 167, '_edit_last', '1'),
(377, 167, '_edit_lock', '1542389797:1'),
(378, 168, '_edit_last', '1'),
(379, 168, '_edit_lock', '1542390364:1'),
(382, 170, '_wp_attached_file', '2018/11/1389142773-gio-xao12.jpg'),
(383, 170, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:375;s:4:\"file\";s:32:\"2018/11/1389142773-gio-xao12.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"1389142773-gio-xao12-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"1389142773-gio-xao12-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(384, 168, 'rc_thoi_gian_nau', '34'),
(385, 168, '_rc_thoi_gian_nau', 'field_5be59ceb09b60'),
(386, 168, 'rc_link_youtube', 'https://www.youtube.com/watch?v=IaIOvYskdss'),
(387, 168, '_rc_link_youtube', 'field_5be5a33b09b61'),
(388, 168, 'rc_serving_size', '5'),
(389, 168, '_rc_serving_size', 'field_5be5a41c09b62'),
(390, 168, 'rc_steps_0_rc_time', '1'),
(391, 168, '_rc_steps_0_rc_time', 'field_5be5a45209b64'),
(392, 168, 'rc_steps_0_rc_description', 'cho thịt vào và nấu'),
(393, 168, '_rc_steps_0_rc_description', 'field_5be5a77509b65'),
(394, 168, 'rc_steps', '1'),
(395, 168, '_rc_steps', 'field_5be5a43109b63'),
(396, 168, 'rc_nguyen_lieu_0_rc_ten_nguyen_lieu', 'Thịt heo'),
(397, 168, '_rc_nguyen_lieu_0_rc_ten_nguyen_lieu', 'field_5be5a7fd09b67'),
(398, 168, 'rc_nguyen_lieu_0_rc_don_vi', '30'),
(399, 168, '_rc_nguyen_lieu_0_rc_don_vi', 'field_5be5a81e09b68'),
(400, 168, 'rc_nguyen_lieu', '1'),
(401, 168, '_rc_nguyen_lieu', 'field_5be5a79609b66'),
(402, 168, 'rc_gallery', ''),
(403, 168, '_rc_gallery', 'field_5be5a83f09b6a'),
(404, 168, '_yoast_wpseo_primary_category', '3'),
(405, 168, '_yoast_wpseo_primary_type', ''),
(406, 168, '_yoast_wpseo_content_score', '30'),
(407, 173, '_wp_attached_file', '2018/11/samp01.png'),
(408, 173, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:269;s:6:\"height\";i:179;s:4:\"file\";s:18:\"2018/11/samp01.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"samp01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(409, 167, 'pl_thoi_luong', '6121'),
(410, 167, '_pl_thoi_luong', 'field_5be58a8f5eda6'),
(411, 167, 'pl_videos_0_pl_link_youtube', 'https://www.youtube.com/watch?v=CcASKiC7jHA'),
(412, 167, '_pl_videos_0_pl_link_youtube', 'field_5be58ae55eda8'),
(413, 167, 'pl_videos_0_pl_title', 'Yoga tại nhà: 7 ngày giảm mỡ bụng, thu gọn vòng eo cùng Nguyễn Hiếu Yoga'),
(414, 167, '_pl_videos_0_pl_title', 'field_5be59c675eda9'),
(415, 167, 'pl_videos_0_pl_description', 'Đăng ký nhận bộ quà tặng 101 bài tập Yoga: https://zenlife.vn/qua-tang/ '),
(416, 167, '_pl_videos_0_pl_description', 'field_5be59c8d5edaa'),
(417, 167, 'pl_videos_0_pl_video_length', '1556'),
(418, 167, '_pl_videos_0_pl_video_length', 'field_5be59cb85edab'),
(419, 167, 'pl_videos_0_pl_video_id', 'CcASKiC7jHA'),
(420, 167, '_pl_videos_0_pl_video_id', 'field_5be5ab72f2277'),
(421, 167, 'pl_videos_1_pl_link_youtube', 'https://www.youtube.com/watch?v=jB08xhiP36o'),
(422, 167, '_pl_videos_1_pl_link_youtube', 'field_5be58ae55eda8'),
(423, 167, 'pl_videos_1_pl_title', 'Yoga tại nhà: 7 ngày giảm mỡ bụng cùng Nguyễn Hiếu Yoga.'),
(424, 167, '_pl_videos_1_pl_title', 'field_5be59c675eda9'),
(425, 167, 'pl_videos_1_pl_description', 'Đăng ký nhận bộ quà tặng 101 bài tập Yoga: https://zenlife.vn/qua-tang/ '),
(426, 167, '_pl_videos_1_pl_description', 'field_5be59c8d5edaa'),
(427, 167, 'pl_videos_1_pl_video_length', '1591'),
(428, 167, '_pl_videos_1_pl_video_length', 'field_5be59cb85edab'),
(429, 167, 'pl_videos_1_pl_video_id', 'jB08xhiP36o'),
(430, 167, '_pl_videos_1_pl_video_id', 'field_5be5ab72f2277'),
(431, 167, 'pl_videos_2_pl_link_youtube', 'https://www.youtube.com/watch?v=feTZWv7SEes'),
(432, 167, '_pl_videos_2_pl_link_youtube', 'field_5be58ae55eda8'),
(433, 167, 'pl_videos_2_pl_title', 'Yoga tại nhà: 7 ngày đánh tan mỡ bụng cùng Nguyễn Hiếu Yoga'),
(434, 167, '_pl_videos_2_pl_title', 'field_5be59c675eda9'),
(435, 167, 'pl_videos_2_pl_description', 'Đăng ký nhận bộ quà tặng 101 bài tập Yoga: https://zenlife.vn/qua-tang/ '),
(436, 167, '_pl_videos_2_pl_description', 'field_5be59c8d5edaa'),
(437, 167, 'pl_videos_2_pl_video_length', '1383'),
(438, 167, '_pl_videos_2_pl_video_length', 'field_5be59cb85edab'),
(439, 167, 'pl_videos_2_pl_video_id', 'feTZWv7SEes'),
(440, 167, '_pl_videos_2_pl_video_id', 'field_5be5ab72f2277'),
(441, 167, 'pl_videos_3_pl_link_youtube', 'https://www.youtube.com/watch?v=jB08xhiP36o'),
(442, 167, '_pl_videos_3_pl_link_youtube', 'field_5be58ae55eda8'),
(443, 167, 'pl_videos_3_pl_title', 'Yoga tại nhà: 7 ngày giảm mỡ bụng cùng Nguyễn Hiếu Yoga.'),
(444, 167, '_pl_videos_3_pl_title', 'field_5be59c675eda9'),
(445, 167, 'pl_videos_3_pl_description', 'Đăng ký nhận bộ quà tặng 101 bài tập Yoga: https://zenlife.vn/qua-tang/ '),
(446, 167, '_pl_videos_3_pl_description', 'field_5be59c8d5edaa'),
(447, 167, 'pl_videos_3_pl_video_length', '1591'),
(448, 167, '_pl_videos_3_pl_video_length', 'field_5be59cb85edab'),
(449, 167, 'pl_videos_3_pl_video_id', 'jB08xhiP36o'),
(450, 167, '_pl_videos_3_pl_video_id', 'field_5be5ab72f2277'),
(451, 167, 'pl_videos', '4'),
(452, 167, '_pl_videos', 'field_5be58abd5eda7'),
(453, 167, '_yoast_wpseo_primary_category', '2'),
(454, 167, '_yoast_wpseo_primary_level', '11'),
(455, 167, '_yoast_wpseo_content_score', '30'),
(461, 167, '_oembed_92ee551668471f9f57ef4996ccda48c5', '<iframe width=\"320\" height=\"180\" src=\"https://www.youtube.com/embed/CcASKiC7jHA?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(462, 167, '_oembed_time_92ee551668471f9f57ef4996ccda48c5', '1542129779'),
(479, 181, '_wp_attached_file', '2018/11/download.jpg'),
(480, 181, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:259;s:6:\"height\";i:194;s:4:\"file\";s:20:\"2018/11/download.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"download-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(481, 167, '_thumbnail_id', '181'),
(482, 182, '_edit_last', '1'),
(483, 182, '_edit_lock', '1542390293:1'),
(484, 161, '_oembed_37d35c721c022ae9f449b9225fd1bc41', '<iframe width=\"320\" height=\"180\" src=\"https://www.youtube.com/embed/tSV62mVSG9c?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(485, 161, '_oembed_time_37d35c721c022ae9f449b9225fd1bc41', '1542131107'),
(486, 161, '_oembed_6b3c7b2615ae30d4f309b5bd95f90903', '<iframe width=\"320\" height=\"180\" src=\"https://www.youtube.com/embed/O74hpixvgvM?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(487, 161, '_oembed_time_6b3c7b2615ae30d4f309b5bd95f90903', '1542131117'),
(488, 184, '_wp_attached_file', '2018/11/download-1.jpg'),
(489, 184, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:259;s:6:\"height\";i:194;s:4:\"file\";s:22:\"2018/11/download-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"download-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(490, 185, '_wp_attached_file', '2018/11/download-1-1.jpg'),
(491, 185, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:275;s:6:\"height\";i:183;s:4:\"file\";s:24:\"2018/11/download-1-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"download-1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(492, 161, '_thumbnail_id', '185'),
(493, 186, '_wp_attached_file', '2018/11/images.jpeg'),
(494, 186, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:259;s:6:\"height\";i:194;s:4:\"file\";s:19:\"2018/11/images.jpeg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"images-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(495, 161, '_oembed_84eae5f5d62eb01e327537ab23a4095e', '<iframe width=\"320\" height=\"180\" src=\"https://www.youtube.com/embed/xqEjt-eQK9U?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(496, 161, '_oembed_time_84eae5f5d62eb01e327537ab23a4095e', '1542131176'),
(497, 187, '_edit_last', '1'),
(498, 187, '_edit_lock', '1542553321:1'),
(499, 187, 'pl_thoi_luong', '2366'),
(500, 187, '_pl_thoi_luong', 'field_5be58a8f5eda6'),
(501, 187, 'pl_videos_0_pl_link_youtube', 'https://www.youtube.com/watch?v=q4Rx3bZYj2A'),
(502, 187, '_pl_videos_0_pl_link_youtube', 'field_5be58ae55eda8'),
(503, 187, 'pl_videos_0_pl_title', 'Bài tập Yoga đầy đủ - Gia tăng sức mạnh: kích hoạt luân Xa của sức mạnh cùng Nguyễn Hiếu Yoga'),
(504, 187, '_pl_videos_0_pl_title', 'field_5be59c675eda9'),
(505, 187, 'pl_videos_0_pl_description', 'Đăng ký nhận bộ quà tặng 101 bài tập Yoga: https://zenlife.vn/qua-tang/ '),
(506, 187, '_pl_videos_0_pl_description', 'field_5be59c8d5edaa'),
(507, 187, 'pl_videos_0_pl_video_length', '2366'),
(508, 187, '_pl_videos_0_pl_video_length', 'field_5be59cb85edab'),
(509, 187, 'pl_videos_0_pl_video_id', 'q4Rx3bZYj2A'),
(510, 187, '_pl_videos_0_pl_video_id', 'field_5be5ab72f2277'),
(511, 187, 'pl_videos', '1'),
(512, 187, '_pl_videos', 'field_5be58abd5eda7'),
(513, 187, '_yoast_wpseo_primary_category', '2'),
(514, 187, '_yoast_wpseo_primary_level', ''),
(515, 187, '_yoast_wpseo_content_score', '30'),
(516, 182, '_thumbnail_id', '251'),
(517, 182, 'rc_thoi_gian_nau', '6000'),
(518, 182, '_rc_thoi_gian_nau', 'field_5be59ceb09b60'),
(519, 182, 'rc_link_youtube', 'https://www.youtube.com/watch?v=5TbN0Lnp1MU'),
(520, 182, '_rc_link_youtube', 'field_5be5a33b09b61'),
(521, 182, 'rc_serving_size', '3'),
(522, 182, '_rc_serving_size', 'field_5be5a41c09b62'),
(523, 182, 'rc_steps_0_rc_time', '2'),
(524, 182, '_rc_steps_0_rc_time', 'field_5be5a45209b64'),
(525, 182, 'rc_steps_0_rc_description', 'nau an'),
(526, 182, '_rc_steps_0_rc_description', 'field_5be5a77509b65'),
(527, 182, 'rc_steps', '1'),
(528, 182, '_rc_steps', 'field_5be5a43109b63'),
(529, 182, 'rc_nguyen_lieu_0_rc_ten_nguyen_lieu', 'suon xao chua ngot'),
(530, 182, '_rc_nguyen_lieu_0_rc_ten_nguyen_lieu', 'field_5be5a7fd09b67'),
(531, 182, 'rc_nguyen_lieu_0_rc_don_vi', '2kg'),
(532, 182, '_rc_nguyen_lieu_0_rc_don_vi', 'field_5be5a81e09b68'),
(533, 182, 'rc_nguyen_lieu', '1'),
(534, 182, '_rc_nguyen_lieu', 'field_5be5a79609b66'),
(535, 182, 'rc_gallery', 'a:1:{i:0;s:3:\"186\";}'),
(536, 182, '_rc_gallery', 'field_5be5a83f09b6a'),
(537, 182, '_yoast_wpseo_primary_category', '3'),
(538, 182, '_yoast_wpseo_primary_type', ''),
(539, 182, '_yoast_wpseo_content_score', '30'),
(540, 125, '_wp_trash_meta_status', 'draft'),
(541, 125, '_wp_trash_meta_time', '1542131223'),
(542, 125, '_wp_desired_post_slug', ''),
(543, 168, '_thumbnail_id', '248'),
(544, 163, '_thumbnail_id', '252'),
(545, 2, '_edit_lock', '1542132805:1'),
(546, 154, 'stt_home_lastest_7_stt_home_lastest_sub', ''),
(547, 154, '_stt_home_lastest_7_stt_home_lastest_sub', 'field_5beae65ccf13d'),
(548, 189, '_edit_last', '1'),
(549, 189, '_edit_lock', '1542294215:1'),
(550, 194, '_edit_last', '1'),
(551, 194, 'sst_cate_train_top', ''),
(552, 194, '_sst_cate_train_top', 'field_5bed878fbc7e0'),
(553, 194, '_edit_lock', '1542294028:1'),
(554, 195, '_edit_last', '1'),
(555, 195, '_edit_lock', '1542524156:1'),
(556, 198, '_edit_last', '1'),
(557, 198, 'sst_cate_train_instructor', '5'),
(558, 198, '_sst_cate_train_instructor', 'field_5bed8b6668bfd'),
(559, 198, '_edit_lock', '1542520871:1'),
(560, 161, '_oembed_c2529a0bf64d0add218cc4d487ca660c', '{{unknown}}'),
(561, 199, '_wp_attached_file', '2018/11/10l_jj14_darack_uav33_live.jpg'),
(562, 199, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:38:\"2018/11/10l_jj14_darack_uav33_live.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"10l_jj14_darack_uav33_live-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"10l_jj14_darack_uav33_live-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"10l_jj14_darack_uav33_live-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"thumbnail-zise-1\";a:4:{s:4:\"file\";s:38:\"10l_jj14_darack_uav33_live-477x358.jpg\";s:5:\"width\";i:477;s:6:\"height\";i:358;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(563, 200, '_wp_attached_file', '2018/11/hay01.png'),
(564, 200, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:476;s:6:\"height\";i:550;s:4:\"file\";s:17:\"2018/11/hay01.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"hay01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"hay01-260x300.png\";s:5:\"width\";i:260;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"thumbnail-zise-1\";a:4:{s:4:\"file\";s:17:\"hay01-310x358.png\";s:5:\"width\";i:310;s:6:\"height\";i:358;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(565, 201, '_wp_attached_file', '2018/11/hay02.png'),
(566, 201, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:476;s:6:\"height\";i:550;s:4:\"file\";s:17:\"2018/11/hay02.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"hay02-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"hay02-260x300.png\";s:5:\"width\";i:260;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"thumbnail-zise-1\";a:4:{s:4:\"file\";s:17:\"hay02-310x358.png\";s:5:\"width\";i:310;s:6:\"height\";i:358;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(567, 202, '_wp_attached_file', '2018/11/hay03.png'),
(568, 202, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:476;s:6:\"height\";i:550;s:4:\"file\";s:17:\"2018/11/hay03.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"hay03-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"hay03-260x300.png\";s:5:\"width\";i:260;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"thumbnail-zise-1\";a:4:{s:4:\"file\";s:17:\"hay03-310x358.png\";s:5:\"width\";i:310;s:6:\"height\";i:358;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(569, 203, '_wp_attached_file', '2018/11/hay04.png'),
(570, 203, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:476;s:6:\"height\";i:550;s:4:\"file\";s:17:\"2018/11/hay04.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"hay04-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"hay04-260x300.png\";s:5:\"width\";i:260;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"thumbnail-zise-1\";a:4:{s:4:\"file\";s:17:\"hay04-310x358.png\";s:5:\"width\";i:310;s:6:\"height\";i:358;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(571, 204, '_wp_attached_file', '2018/11/hay05.png'),
(572, 204, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:476;s:6:\"height\";i:550;s:4:\"file\";s:17:\"2018/11/hay05.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"hay05-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"hay05-260x300.png\";s:5:\"width\";i:260;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"thumbnail-zise-1\";a:4:{s:4:\"file\";s:17:\"hay05-310x358.png\";s:5:\"width\";i:310;s:6:\"height\";i:358;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(573, 205, '_wp_attached_file', '2018/11/hay06.png'),
(574, 205, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:476;s:6:\"height\";i:550;s:4:\"file\";s:17:\"2018/11/hay06.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"hay06-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"hay06-260x300.png\";s:5:\"width\";i:260;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"thumbnail-zise-1\";a:4:{s:4:\"file\";s:17:\"hay06-310x358.png\";s:5:\"width\";i:310;s:6:\"height\";i:358;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(575, 206, '_wp_attached_file', '2018/11/hay07.png'),
(576, 206, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:476;s:6:\"height\";i:550;s:4:\"file\";s:17:\"2018/11/hay07.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"hay07-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"hay07-260x300.png\";s:5:\"width\";i:260;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"thumbnail-zise-1\";a:4:{s:4:\"file\";s:17:\"hay07-310x358.png\";s:5:\"width\";i:310;s:6:\"height\";i:358;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(589, 210, '_edit_last', '1'),
(590, 210, '_edit_lock', '1542388885:1'),
(591, 211, '_edit_last', '1'),
(592, 211, '_edit_lock', '1542386969:1'),
(593, 222, '_wp_attached_file', '2018/11/images.jpg'),
(594, 222, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:229;s:6:\"height\";i:220;s:4:\"file\";s:18:\"2018/11/images.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"images-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(595, 223, '_wp_attached_file', '2018/11/c95231e843115d36470e527c902aa7aa-illustrations-dots.jpg'),
(596, 223, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:236;s:6:\"height\";i:268;s:4:\"file\";s:63:\"2018/11/c95231e843115d36470e527c902aa7aa-illustrations-dots.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:63:\"c95231e843115d36470e527c902aa7aa-illustrations-dots-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(597, 224, '_wp_attached_file', '2018/11/hau-due-mat-troi-1460439180-783720-1476109545.jpg'),
(598, 224, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:479;s:6:\"height\";i:479;s:4:\"file\";s:57:\"2018/11/hau-due-mat-troi-1460439180-783720-1476109545.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:57:\"hau-due-mat-troi-1460439180-783720-1476109545-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:57:\"hau-due-mat-troi-1460439180-783720-1476109545-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"thumbnail-zise-1\";a:4:{s:4:\"file\";s:57:\"hau-due-mat-troi-1460439180-783720-1476109545-358x358.jpg\";s:5:\"width\";i:358;s:6:\"height\";i:358;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(599, 225, '_wp_attached_file', '2018/11/anh-avatar-dep-8.jpg'),
(600, 225, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:28:\"2018/11/anh-avatar-dep-8.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"anh-avatar-dep-8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(601, 226, '_wp_attached_file', '2018/11/avatar-facebook-dep.jpg'),
(602, 226, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:31:\"2018/11/avatar-facebook-dep.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"avatar-facebook-dep-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(603, 227, '_wp_attached_file', '2018/11/6a6258dfd7b006b0b30dae752171b205f8b9382b28818-alK4Sk_fw658.png');
INSERT INTO `hpk_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(604, 227, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:615;s:6:\"height\";i:881;s:4:\"file\";s:70:\"2018/11/6a6258dfd7b006b0b30dae752171b205f8b9382b28818-alK4Sk_fw658.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:70:\"6a6258dfd7b006b0b30dae752171b205f8b9382b28818-alK4Sk_fw658-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:70:\"6a6258dfd7b006b0b30dae752171b205f8b9382b28818-alK4Sk_fw658-209x300.png\";s:5:\"width\";i:209;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"thumbnail-zise-1\";a:4:{s:4:\"file\";s:70:\"6a6258dfd7b006b0b30dae752171b205f8b9382b28818-alK4Sk_fw658-250x358.png\";s:5:\"width\";i:250;s:6:\"height\";i:358;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(605, 228, '_wp_attached_file', '2018/11/avatar-doi-dep-1_015655450.jpg'),
(606, 228, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:380;s:6:\"height\";i:420;s:4:\"file\";s:38:\"2018/11/avatar-doi-dep-1_015655450.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"avatar-doi-dep-1_015655450-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"avatar-doi-dep-1_015655450-271x300.jpg\";s:5:\"width\";i:271;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"thumbnail-zise-1\";a:4:{s:4:\"file\";s:38:\"avatar-doi-dep-1_015655450-324x358.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:358;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(607, 230, '_wp_attached_file', '2018/11/avatar-doi-dep-3_015655481.jpg'),
(608, 230, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:380;s:6:\"height\";i:420;s:4:\"file\";s:38:\"2018/11/avatar-doi-dep-3_015655481.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"avatar-doi-dep-3_015655481-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"avatar-doi-dep-3_015655481-271x300.jpg\";s:5:\"width\";i:271;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"thumbnail-zise-1\";a:4:{s:4:\"file\";s:38:\"avatar-doi-dep-3_015655481-324x358.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:358;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(609, 231, '_wp_attached_file', '2018/11/images-1.jpg'),
(610, 231, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:229;s:6:\"height\";i:220;s:4:\"file\";s:20:\"2018/11/images-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"images-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(611, 232, '_wp_attached_file', '2018/11/naruto_avatar_by_ace_hyperhandshockz-d5k1bz9.png'),
(612, 232, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:621;s:6:\"height\";i:555;s:4:\"file\";s:56:\"2018/11/naruto_avatar_by_ace_hyperhandshockz-d5k1bz9.png\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"naruto_avatar_by_ace_hyperhandshockz-d5k1bz9-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:56:\"naruto_avatar_by_ace_hyperhandshockz-d5k1bz9-300x268.png\";s:5:\"width\";i:300;s:6:\"height\";i:268;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"thumbnail-zise-1\";a:4:{s:4:\"file\";s:56:\"naruto_avatar_by_ace_hyperhandshockz-d5k1bz9-401x358.png\";s:5:\"width\";i:401;s:6:\"height\";i:358;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(613, 233, '_wp_attached_file', '2018/11/anh2.jpg'),
(614, 233, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:414;s:4:\"file\";s:16:\"2018/11/anh2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"anh2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"anh2-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"thumbnail-zise-1\";a:4:{s:4:\"file\";s:16:\"anh2-519x358.jpg\";s:5:\"width\";i:519;s:6:\"height\";i:358;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(615, 210, '_thumbnail_id', '233'),
(618, 210, '_yoast_wpseo_content_score', '30'),
(619, 210, 'instructor_field', '34'),
(620, 210, '_instructor_field', 'field_5beef06577e70'),
(621, 234, 'instructor_field', '34'),
(622, 234, '_instructor_field', 'field_5beef06577e70'),
(623, 210, '_yoast_wpseo_primary_category', '2'),
(624, 210, 'enclosure', 'https://kenh14cdn.com/2018/10/31/7-1540999456111416836399.gif.mp4\n1066302\nvideo/mp4\n'),
(625, 235, '_edit_last', '1'),
(626, 235, '_edit_lock', '1542389038:1'),
(627, 236, '_wp_attached_file', '2018/11/bai-tap-yoga-giam-can-hieu-qua-2.jpg'),
(628, 236, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:378;s:4:\"file\";s:44:\"2018/11/bai-tap-yoga-giam-can-hieu-qua-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"bai-tap-yoga-giam-can-hieu-qua-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:44:\"bai-tap-yoga-giam-can-hieu-qua-2-300x189.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:189;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"thumbnail-zise-1\";a:4:{s:4:\"file\";s:44:\"bai-tap-yoga-giam-can-hieu-qua-2-538x339.jpg\";s:5:\"width\";i:538;s:6:\"height\";i:339;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(629, 235, '_thumbnail_id', '236'),
(632, 235, '_yoast_wpseo_content_score', '60'),
(633, 235, 'instructor_field', '32'),
(634, 235, '_instructor_field', 'field_5beef06577e70'),
(635, 237, 'instructor_field', '32'),
(636, 237, '_instructor_field', 'field_5beef06577e70'),
(637, 235, '_yoast_wpseo_primary_category', '2'),
(638, 239, '_wp_attached_file', '2018/11/tap-yoga-vat-va-lam-chu-khong-don-gian-dau-3cc.jpg'),
(639, 239, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:360;s:4:\"file\";s:58:\"2018/11/tap-yoga-vat-va-lam-chu-khong-don-gian-dau-3cc.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:58:\"tap-yoga-vat-va-lam-chu-khong-don-gian-dau-3cc-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:58:\"tap-yoga-vat-va-lam-chu-khong-don-gian-dau-3cc-300x216.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:216;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"thumbnail-zise-1\";a:4:{s:4:\"file\";s:58:\"tap-yoga-vat-va-lam-chu-khong-don-gian-dau-3cc-497x358.jpg\";s:5:\"width\";i:497;s:6:\"height\";i:358;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(640, 238, '_edit_last', '1'),
(641, 238, '_edit_lock', '1542389151:1'),
(642, 238, '_thumbnail_id', '239'),
(645, 238, '_yoast_wpseo_content_score', '60'),
(646, 238, 'instructor_field', '29'),
(647, 238, '_instructor_field', 'field_5beef06577e70'),
(648, 240, 'instructor_field', '29'),
(649, 240, '_instructor_field', 'field_5beef06577e70'),
(650, 238, '_yoast_wpseo_primary_category', '2'),
(651, 161, 'instructor_field', '31'),
(652, 161, '_instructor_field', 'field_5beef06577e70'),
(653, 246, '_wp_attached_file', '2018/11/yoga-bay-la-gi-co-tot-khong-ft8002.jpg'),
(654, 246, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:450;s:4:\"file\";s:46:\"2018/11/yoga-bay-la-gi-co-tot-khong-ft8002.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"yoga-bay-la-gi-co-tot-khong-ft8002-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"yoga-bay-la-gi-co-tot-khong-ft8002-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:46:\"yoga-bay-la-gi-co-tot-khong-ft8002-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"thumbnail-zise-1\";a:4:{s:4:\"file\";s:46:\"yoga-bay-la-gi-co-tot-khong-ft8002-538x303.jpg\";s:5:\"width\";i:538;s:6:\"height\";i:303;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(655, 187, '_thumbnail_id', '246'),
(656, 187, 'instructor_field', '27'),
(657, 187, '_instructor_field', 'field_5beef06577e70'),
(658, 167, 'instructor_field', '28'),
(659, 167, '_instructor_field', 'field_5beef06577e70'),
(660, 248, '_wp_attached_file', '2018/11/recipe20117-636314858520455156.png'),
(661, 248, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:500;s:4:\"file\";s:42:\"2018/11/recipe20117-636314858520455156.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"recipe20117-636314858520455156-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"recipe20117-636314858520455156-300x188.png\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"recipe20117-636314858520455156-768x480.png\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:9:\"image/png\";}s:16:\"thumbnail-zise-1\";a:4:{s:4:\"file\";s:42:\"recipe20117-636314858520455156-538x336.png\";s:5:\"width\";i:538;s:6:\"height\";i:336;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(662, 251, '_wp_attached_file', '2018/11/cooky-recipe-cover-r35784.jpeg'),
(663, 251, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:500;s:4:\"file\";s:38:\"2018/11/cooky-recipe-cover-r35784.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:38:\"cooky-recipe-cover-r35784-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:38:\"cooky-recipe-cover-r35784-300x188.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:38:\"cooky-recipe-cover-r35784-768x480.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"thumbnail-zise-1\";a:4:{s:4:\"file\";s:38:\"cooky-recipe-cover-r35784-538x336.jpeg\";s:5:\"width\";i:538;s:6:\"height\";i:336;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(664, 252, '_wp_attached_file', '2018/11/yoga-bay-la-gi-co-tot-khong-ft8002-1.jpg'),
(665, 252, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:500;s:4:\"file\";s:48:\"2018/11/yoga-bay-la-gi-co-tot-khong-ft8002-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:48:\"yoga-bay-la-gi-co-tot-khong-ft8002-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:48:\"yoga-bay-la-gi-co-tot-khong-ft8002-1-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:48:\"yoga-bay-la-gi-co-tot-khong-ft8002-1-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"thumbnail-zise-1\";a:4:{s:4:\"file\";s:48:\"yoga-bay-la-gi-co-tot-khong-ft8002-1-538x336.jpg\";s:5:\"width\";i:538;s:6:\"height\";i:336;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(666, 182, 'instructor_field', '29'),
(667, 182, '_instructor_field', 'field_5beef06577e70'),
(668, 168, 'instructor_field', '29'),
(669, 168, '_instructor_field', 'field_5beef06577e70'),
(670, 163, 'instructor_field', '29'),
(671, 163, '_instructor_field', 'field_5beef06577e70'),
(672, 253, '_wp_attached_file', '2018/11/avatar-facebook-dep-1.jpg'),
(673, 253, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:457;s:6:\"height\";i:450;s:4:\"file\";s:33:\"2018/11/avatar-facebook-dep-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"avatar-facebook-dep-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"avatar-facebook-dep-1-300x295.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:295;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:16:\"thumbnail-zise-1\";a:4:{s:4:\"file\";s:33:\"avatar-facebook-dep-1-364x358.jpg\";s:5:\"width\";i:364;s:6:\"height\";i:358;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(674, 198, 'sst_cate_train_instructor_0_sst_cate_train_instructor_sub', '34'),
(675, 198, '_sst_cate_train_instructor_0_sst_cate_train_instructor_sub', 'field_5bed8b9468bfe'),
(676, 198, 'sst_cate_train_instructor_1_sst_cate_train_instructor_sub', ''),
(677, 198, '_sst_cate_train_instructor_1_sst_cate_train_instructor_sub', 'field_5bed8b9468bfe'),
(678, 198, 'sst_cate_train_instructor_2_sst_cate_train_instructor_sub', ''),
(679, 198, '_sst_cate_train_instructor_2_sst_cate_train_instructor_sub', 'field_5bed8b9468bfe'),
(680, 198, 'sst_cate_train_instructor_3_sst_cate_train_instructor_sub', ''),
(681, 198, '_sst_cate_train_instructor_3_sst_cate_train_instructor_sub', 'field_5bed8b9468bfe'),
(682, 198, 'sst_cate_train_instructor_4_sst_cate_train_instructor_sub', ''),
(683, 198, '_sst_cate_train_instructor_4_sst_cate_train_instructor_sub', 'field_5bed8b9468bfe'),
(684, 257, '_edit_last', '1'),
(685, 257, '_edit_lock', '1542561992:1'),
(686, 259, '_edit_last', '1'),
(687, 259, '_edit_lock', '1542561991:1'),
(688, 261, '_edit_last', '1'),
(689, 261, '_edit_lock', '1542561986:1'),
(690, 263, '_edit_last', '1'),
(691, 263, '_edit_lock', '1542561986:1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hpk_posts`
--

CREATE TABLE `hpk_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hpk_posts`
--

INSERT INTO `hpk_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2018-11-08 16:19:55', '2018-11-08 16:19:55', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/songtute.vn/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-11-08 16:19:55', '2018-11-08 16:19:55', '', 0, 'http://localhost/songtute.vn/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-11-08 16:19:55', '2018-11-08 16:19:55', '<h2>Who we are</h2><p>Our website address is: http://localhost/songtute.vn.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-11-08 16:19:55', '2018-11-08 16:19:55', '', 0, 'http://localhost/songtute.vn/?page_id=3', 0, 'page', '', 0),
(14, 1, '2018-11-09 14:42:34', '2018-11-09 14:42:34', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"playlist\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Playlist', 'playlist', 'publish', 'closed', 'closed', '', 'group_5be58a7e92904', '', '', '2018-11-12 17:35:25', '2018-11-12 17:35:25', '', 0, 'http://localhost/songtute.vn/?post_type=acf-field-group&#038;p=14', 0, 'acf-field-group', '', 0),
(15, 1, '2018-11-09 14:42:34', '2018-11-09 14:42:34', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:8:\"dis-none\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Thời lượng', 'pl_thoi_luong', 'publish', 'closed', 'closed', '', 'field_5be58a8f5eda6', '', '', '2018-11-09 16:23:09', '2018-11-09 16:23:09', '', 14, 'http://localhost/songtute.vn/?post_type=acf-field&#038;p=15', 0, 'acf-field', '', 0),
(16, 1, '2018-11-09 14:42:34', '2018-11-09 14:42:34', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:1;s:3:\"max\";s:0:\"\";s:6:\"layout\";s:3:\"row\";s:12:\"button_label\";s:11:\"Thêm video\";}', 'Videos', 'pl_videos', 'publish', 'closed', 'closed', '', 'field_5be58abd5eda7', '', '', '2018-11-12 16:09:51', '2018-11-12 16:09:51', '', 14, 'http://localhost/songtute.vn/?post_type=acf-field&#038;p=16', 1, 'acf-field', '', 0),
(17, 1, '2018-11-09 14:42:34', '2018-11-09 14:42:34', 'a:7:{s:4:\"type\";s:6:\"oembed\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:5:\"width\";i:320;s:6:\"height\";i:180;}', 'Link youtube', 'pl_link_youtube', 'publish', 'closed', 'closed', '', 'field_5be58ae55eda8', '', '', '2018-11-12 17:35:25', '2018-11-12 17:35:25', '', 16, 'http://localhost/songtute.vn/?post_type=acf-field&#038;p=17', 0, 'acf-field', '', 0),
(18, 1, '2018-11-09 14:42:34', '2018-11-09 14:42:34', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'pl_title', 'publish', 'closed', 'closed', '', 'field_5be59c675eda9', '', '', '2018-11-09 14:42:34', '2018-11-09 14:42:34', '', 16, 'http://localhost/songtute.vn/?post_type=acf-field&p=18', 1, 'acf-field', '', 0),
(19, 1, '2018-11-09 14:42:34', '2018-11-09 14:42:34', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Description', 'pl_description', 'publish', 'closed', 'closed', '', 'field_5be59c8d5edaa', '', '', '2018-11-12 16:28:27', '2018-11-12 16:28:27', '', 16, 'http://localhost/songtute.vn/?post_type=acf-field&#038;p=19', 2, 'acf-field', '', 0),
(20, 1, '2018-11-09 14:42:34', '2018-11-09 14:42:34', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:8:\"dis-none\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Video length', 'pl_video_length', 'publish', 'closed', 'closed', '', 'field_5be59cb85edab', '', '', '2018-11-12 17:33:22', '2018-11-12 17:33:22', '', 16, 'http://localhost/songtute.vn/?post_type=acf-field&#038;p=20', 3, 'acf-field', '', 0),
(21, 1, '2018-11-09 15:33:44', '2018-11-09 15:33:44', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"recipe\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Recipe', 'recipe', 'publish', 'closed', 'closed', '', 'group_5be59ce230117', '', '', '2018-11-12 18:22:26', '2018-11-12 18:22:26', '', 0, 'http://localhost/songtute.vn/?post_type=acf-field-group&#038;p=21', 0, 'acf-field-group', '', 0),
(22, 1, '2018-11-09 15:33:44', '2018-11-09 15:33:44', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Thời gian nấu', 'rc_thoi_gian_nau', 'publish', 'closed', 'closed', '', 'field_5be59ceb09b60', '', '', '2018-11-09 15:33:44', '2018-11-09 15:33:44', '', 21, 'http://localhost/songtute.vn/?post_type=acf-field&p=22', 0, 'acf-field', '', 0),
(23, 1, '2018-11-09 15:33:44', '2018-11-09 15:33:44', 'a:7:{s:4:\"type\";s:6:\"oembed\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";}', 'Video', 'rc_link_youtube', 'publish', 'closed', 'closed', '', 'field_5be5a33b09b61', '', '', '2018-11-12 17:47:59', '2018-11-12 17:47:59', '', 21, 'http://localhost/songtute.vn/?post_type=acf-field&#038;p=23', 1, 'acf-field', '', 0),
(24, 1, '2018-11-09 15:33:44', '2018-11-09 15:33:44', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Serving size', 'rc_serving_size', 'publish', 'closed', 'closed', '', 'field_5be5a41c09b62', '', '', '2018-11-09 15:33:44', '2018-11-09 15:33:44', '', 21, 'http://localhost/songtute.vn/?post_type=acf-field&p=24', 2, 'acf-field', '', 0),
(25, 1, '2018-11-09 15:33:44', '2018-11-09 15:33:44', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:1;s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Steps', 'rc_steps', 'publish', 'closed', 'closed', '', 'field_5be5a43109b63', '', '', '2018-11-12 18:22:26', '2018-11-12 18:22:26', '', 21, 'http://localhost/songtute.vn/?post_type=acf-field&#038;p=25', 3, 'acf-field', '', 0),
(26, 1, '2018-11-09 15:33:44', '2018-11-09 15:33:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Time', 'rc_time', 'publish', 'closed', 'closed', '', 'field_5be5a45209b64', '', '', '2018-11-12 17:57:40', '2018-11-12 17:57:40', '', 25, 'http://localhost/songtute.vn/?post_type=acf-field&#038;p=26', 0, 'acf-field', '', 0),
(27, 1, '2018-11-09 15:33:44', '2018-11-09 15:33:44', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Description', 'rc_description', 'publish', 'closed', 'closed', '', 'field_5be5a77509b65', '', '', '2018-11-12 17:57:40', '2018-11-12 17:57:40', '', 25, 'http://localhost/songtute.vn/?post_type=acf-field&#038;p=27', 1, 'acf-field', '', 0),
(28, 1, '2018-11-09 15:33:44', '2018-11-09 15:33:44', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:1;s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Nguyên liệu', 'rc_nguyen_lieu', 'publish', 'closed', 'closed', '', 'field_5be5a79609b66', '', '', '2018-11-12 18:22:26', '2018-11-12 18:22:26', '', 21, 'http://localhost/songtute.vn/?post_type=acf-field&#038;p=28', 4, 'acf-field', '', 0),
(29, 1, '2018-11-09 15:33:44', '2018-11-09 15:33:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Tên nguyên liệu', 'rc_ten_nguyen_lieu', 'publish', 'closed', 'closed', '', 'field_5be5a7fd09b67', '', '', '2018-11-12 17:47:15', '2018-11-12 17:47:15', '', 28, 'http://localhost/songtute.vn/?post_type=acf-field&#038;p=29', 0, 'acf-field', '', 0),
(30, 1, '2018-11-09 15:33:44', '2018-11-09 15:33:44', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Đơn vị', 'rc_don_vi', 'publish', 'closed', 'closed', '', 'field_5be5a81e09b68', '', '', '2018-11-12 17:47:15', '2018-11-12 17:47:15', '', 28, 'http://localhost/songtute.vn/?post_type=acf-field&#038;p=30', 1, 'acf-field', '', 0),
(31, 1, '2018-11-09 15:33:44', '2018-11-09 15:33:44', 'a:16:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"insert\";s:6:\"append\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Gallery', 'rc_gallery', 'publish', 'closed', 'closed', '', 'field_5be5a83f09b6a', '', '', '2018-11-09 15:33:44', '2018-11-09 15:33:44', '', 21, 'http://localhost/songtute.vn/?post_type=acf-field&p=31', 5, 'acf-field', '', 0),
(33, 1, '2018-11-09 15:39:57', '2018-11-09 15:39:57', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"instructor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Instructor', 'instructor', 'publish', 'closed', 'closed', '', 'group_5be5a90928f23', '', '', '2018-11-13 15:37:09', '2018-11-13 15:37:09', '', 0, 'http://localhost/songtute.vn/?post_type=acf-field-group&#038;p=33', 0, 'acf-field-group', '', 0),
(34, 1, '2018-11-09 15:39:57', '2018-11-09 15:39:57', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link facebook', 'instr_link', 'publish', 'closed', 'closed', '', 'field_5be5a90da45b9', '', '', '2018-11-09 15:39:57', '2018-11-09 15:39:57', '', 33, 'http://localhost/songtute.vn/?post_type=acf-field&p=34', 0, 'acf-field', '', 0),
(35, 1, '2018-11-09 15:39:57', '2018-11-09 15:39:57', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Avatar', 'instr_avatar', 'publish', 'closed', 'closed', '', 'field_5be5a9b4a45ba', '', '', '2018-11-09 15:39:57', '2018-11-09 15:39:57', '', 33, 'http://localhost/songtute.vn/?post_type=acf-field&p=35', 1, 'acf-field', '', 0),
(36, 1, '2018-11-09 15:39:57', '2018-11-09 15:39:57', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Cover', 'instr_cover', 'publish', 'closed', 'closed', '', 'field_5be5aa13a45bb', '', '', '2018-11-09 15:52:19', '2018-11-09 15:52:19', '', 33, 'http://localhost/songtute.vn/?post_type=acf-field&#038;p=36', 2, 'acf-field', '', 0),
(37, 1, '2018-11-09 15:39:57', '2018-11-09 15:39:57', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Title', 'instr_title', 'publish', 'closed', 'closed', '', 'field_5be5aa35a45bc', '', '', '2018-11-09 15:52:19', '2018-11-09 15:52:19', '', 33, 'http://localhost/songtute.vn/?post_type=acf-field&#038;p=37', 3, 'acf-field', '', 0),
(43, 1, '2018-11-09 15:51:13', '2018-11-09 15:51:13', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:8:\"dis-none\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'video id', 'pl_video_id', 'publish', 'closed', 'closed', '', 'field_5be5ab72f2277', '', '', '2018-11-12 16:28:27', '2018-11-12 16:28:27', '', 16, 'http://localhost/songtute.vn/?post_type=acf-field&#038;p=43', 4, 'acf-field', '', 0),
(51, 1, '2018-11-10 15:42:06', '2018-11-10 15:42:06', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', '200fdd6d9b37146612e0ab3dd38669cc', '', '', '2018-11-10 15:42:06', '2018-11-10 15:42:06', '', 0, 'http://localhost/songtute.vn/2018/11/10/200fdd6d9b37146612e0ab3dd38669cc/', 0, 'oembed_cache', '', 0),
(52, 1, '2018-11-10 15:43:10', '2018-11-10 15:43:10', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', '3771b99c305408d6a83c09384a0b5dbe', '', '', '2018-11-10 15:43:10', '2018-11-10 15:43:10', '', 0, 'http://localhost/songtute.vn/2018/11/10/3771b99c305408d6a83c09384a0b5dbe/', 0, 'oembed_cache', '', 0),
(63, 1, '2018-11-10 16:19:51', '2018-11-10 16:19:51', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', '2e0b6e3113b2808af7bd31c174422260', '', '', '2018-11-10 16:19:51', '2018-11-10 16:19:51', '', 0, 'http://localhost/songtute.vn/2018/11/10/2e0b6e3113b2808af7bd31c174422260/', 0, 'oembed_cache', '', 0),
(79, 1, '2018-11-12 15:32:43', '2018-11-12 15:32:43', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', '54d5bd87e160eb87bc410142e048637d', '', '', '2018-11-12 15:32:43', '2018-11-12 15:32:43', '', 0, 'http://localhost/songtute.vn/2018/11/12/54d5bd87e160eb87bc410142e048637d/', 0, 'oembed_cache', '', 0),
(99, 1, '2018-11-12 18:20:31', '2018-11-12 18:20:31', '', '', '', 'trash', 'closed', 'closed', '', '__trashed-2', '', '', '2018-11-12 18:20:31', '2018-11-12 18:20:31', '', 0, 'http://localhost/songtute.vn/?post_type=playlist&#038;p=99', 0, 'playlist', '', 0),
(100, 1, '2018-11-12 18:20:31', '2018-11-12 18:20:31', '', 'AAAAAAAAAAAAAAAAA', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-11-12 18:20:31', '2018-11-12 18:20:31', '', 0, 'http://localhost/songtute.vn/?post_type=playlist&#038;p=100', 0, 'playlist', '', 0),
(110, 1, '2018-11-12 17:33:53', '2018-11-12 17:33:53', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', '86a9c84f03b1677b686d86bb76018d87', '', '', '2018-11-12 17:33:53', '2018-11-12 17:33:53', '', 0, 'http://localhost/songtute.vn/2018/11/12/86a9c84f03b1677b686d86bb76018d87/', 0, 'oembed_cache', '', 0),
(113, 1, '2018-11-12 17:43:03', '2018-11-12 17:43:03', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', '2ce06d31feb2c9debba91c1108726fd5', '', '', '2018-11-12 17:43:03', '2018-11-12 17:43:03', '', 0, 'http://localhost/songtute.vn/2018/11/12/2ce06d31feb2c9debba91c1108726fd5/', 0, 'oembed_cache', '', 0),
(125, 1, '2018-11-13 17:47:03', '2018-11-13 17:47:03', '', 'AAAAAA', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2018-11-13 17:47:03', '2018-11-13 17:47:03', '', 0, 'http://localhost/songtute.vn/?post_type=recipe&#038;p=125', 0, 'recipe', '', 0),
(128, 1, '2018-11-13 14:06:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-13 14:06:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/songtute.vn/?post_type=acf-field-group&p=128', 0, 'acf-field-group', '', 0),
(129, 1, '2018-11-13 14:17:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-13 14:17:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/songtute.vn/?post_type=acf-field-group&p=129', 0, 'acf-field-group', '', 0),
(130, 1, '2018-11-13 14:21:16', '2018-11-13 14:21:16', 'a:7:{s:8:\"location\";a:1:{i:0;a:3:{i:0;a:3:{s:5:\"param\";s:17:\"current_user_role\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"administrator\";}i:1;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"zone\";}i:2;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"150\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Home Top 3 bài', 'home-top-3-bai', 'publish', 'closed', 'closed', '', 'group_5beadcf5d7936', '', '', '2018-11-14 15:34:54', '2018-11-14 15:34:54', '', 0, 'http://localhost/songtute.vn/?post_type=acf-field-group&#038;p=130', 0, 'acf-field-group', '', 0),
(131, 1, '2018-11-13 14:21:16', '2018-11-13 14:21:16', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:19:\"field_5beadd459ad7a\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:3;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Chọn 3 bài top trang chủ', 'stt_home_top', 'publish', 'closed', 'closed', '', 'field_5beadd019ad79', '', '', '2018-11-13 18:28:49', '2018-11-13 18:28:49', '', 130, 'http://localhost/songtute.vn/?post_type=acf-field&#038;p=131', 0, 'acf-field', '', 0),
(132, 1, '2018-11-13 14:21:16', '2018-11-13 14:21:16', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:3:{i:0;s:8:\"playlist\";i:1;s:4:\"post\";i:2;s:6:\"recipe\";}s:8:\"taxonomy\";a:0:{}s:10:\"allow_null\";i:1;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', '', 'stt_home_top_sub', 'publish', 'closed', 'closed', '', 'field_5beadd459ad7a', '', '', '2018-11-14 15:34:54', '2018-11-14 15:34:54', '', 131, 'http://localhost/songtute.vn/?post_type=acf-field&#038;p=132', 0, 'acf-field', '', 0),
(133, 1, '2018-11-13 14:34:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-13 14:34:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/songtute.vn/?post_type=acf-field-group&p=133', 0, 'acf-field-group', '', 0),
(134, 1, '2018-11-13 14:42:05', '2018-11-13 14:42:05', 'a:7:{s:8:\"location\";a:1:{i:0;a:3:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"zone\";}i:1;a:3:{s:5:\"param\";s:17:\"current_user_role\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"administrator\";}i:2;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"153\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Home Chuyên Mục', 'home-chuyen-muc', 'publish', 'closed', 'closed', '', 'group_5beae0fb8732c', '', '', '2018-11-14 15:33:07', '2018-11-14 15:33:07', '', 0, 'http://localhost/songtute.vn/?post_type=acf-field-group&#038;p=134', 0, 'acf-field-group', '', 0),
(135, 1, '2018-11-13 14:42:05', '2018-11-13 14:42:05', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:7;s:3:\"max\";i:7;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Chọn chuyện mục trang chủ', 'stt_home_cate', 'publish', 'closed', 'closed', '', 'field_5beae1277f40e', '', '', '2018-11-13 14:45:46', '2018-11-13 14:45:46', '', 134, 'http://localhost/songtute.vn/?post_type=acf-field&#038;p=135', 0, 'acf-field', '', 0),
(136, 1, '2018-11-13 14:42:05', '2018-11-13 14:42:05', 'a:13:{s:4:\"type\";s:8:\"taxonomy\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:8:\"taxonomy\";s:8:\"category\";s:10:\"field_type\";s:6:\"select\";s:10:\"allow_null\";i:1;s:8:\"add_term\";i:1;s:10:\"save_terms\";i:0;s:10:\"load_terms\";i:0;s:13:\"return_format\";s:6:\"object\";s:8:\"multiple\";i:0;}', '', 'stt_home_cate_sub', 'publish', 'closed', 'closed', '', 'field_5beae16b7f40f', '', '', '2018-11-14 15:33:07', '2018-11-14 15:33:07', '', 135, 'http://localhost/songtute.vn/?post_type=acf-field&#038;p=136', 0, 'acf-field', '', 0),
(137, 1, '2018-11-13 14:42:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-13 14:42:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/songtute.vn/?post_type=zone&p=137', 0, 'zone', '', 0),
(138, 1, '2018-11-13 14:43:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-13 14:43:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/songtute.vn/?post_type=zone&p=138', 0, 'zone', '', 0),
(139, 1, '2018-11-13 14:44:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-13 14:44:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/songtute.vn/?post_type=zone&p=139', 0, 'zone', '', 0),
(140, 1, '2018-11-13 14:45:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-13 14:45:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/songtute.vn/?post_type=zone&p=140', 0, 'zone', '', 0),
(141, 1, '2018-11-13 14:46:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-13 14:46:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/songtute.vn/?post_type=zone&p=141', 0, 'zone', '', 0),
(142, 1, '2018-11-13 14:48:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-13 14:48:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/songtute.vn/?post_type=zone&p=142', 0, 'zone', '', 0),
(143, 1, '2018-11-13 14:50:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-13 14:50:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/songtute.vn/?post_type=zone&p=143', 0, 'zone', '', 0),
(144, 1, '2018-11-13 14:58:52', '2018-11-13 14:58:52', 'a:7:{s:8:\"location\";a:1:{i:0;a:3:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"zone\";}i:1;a:3:{s:5:\"param\";s:17:\"current_user_role\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"administrator\";}i:2;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"154\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Home bài mới nhất', 'home-bai-moi-nhat', 'publish', 'closed', 'closed', '', 'group_5beae4b77742d', '', '', '2018-11-14 15:34:06', '2018-11-14 15:34:06', '', 0, 'http://localhost/songtute.vn/?post_type=acf-field-group&#038;p=144', 0, 'acf-field-group', '', 0),
(145, 1, '2018-11-13 14:58:52', '2018-11-13 14:58:52', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:8;s:3:\"max\";i:8;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Chọn bài viết mới nhất', 'stt_home_lastest', 'publish', 'closed', 'closed', '', 'field_5beae64ecf13c', '', '', '2018-11-14 14:43:23', '2018-11-14 14:43:23', '', 144, 'http://localhost/songtute.vn/?post_type=acf-field&#038;p=145', 0, 'acf-field', '', 0),
(146, 1, '2018-11-13 14:58:52', '2018-11-13 14:58:52', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:0:{}s:8:\"taxonomy\";a:0:{}s:10:\"allow_null\";i:1;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', '', 'stt_home_lastest_sub', 'publish', 'closed', 'closed', '', 'field_5beae65ccf13d', '', '', '2018-11-14 15:34:06', '2018-11-14 15:34:06', '', 145, 'http://localhost/songtute.vn/?post_type=acf-field&#038;p=146', 0, 'acf-field', '', 0),
(147, 1, '2018-11-13 15:05:14', '2018-11-13 15:05:14', 'a:7:{s:8:\"location\";a:1:{i:0;a:3:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"zone\";}i:1;a:3:{s:5:\"param\";s:17:\"current_user_role\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"administrator\";}i:2;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"155\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Home cộng đồng người tử tế', 'home-cong-dong-nguoi-tu-te', 'publish', 'closed', 'closed', '', 'group_5beae7292cf11', '', '', '2018-11-14 19:07:45', '2018-11-14 19:07:45', '', 0, 'http://localhost/songtute.vn/?post_type=acf-field-group&#038;p=147', 0, 'acf-field-group', '', 0),
(148, 1, '2018-11-13 15:05:14', '2018-11-13 15:05:14', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:11;s:3:\"max\";i:11;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Chọn instructor trang chủ', 'stt_home_instructor', 'publish', 'closed', 'closed', '', 'field_5beae74084248', '', '', '2018-11-13 15:06:28', '2018-11-13 15:06:28', '', 147, 'http://localhost/songtute.vn/?post_type=acf-field&#038;p=148', 0, 'acf-field', '', 0),
(149, 1, '2018-11-13 15:05:14', '2018-11-13 15:05:14', 'a:13:{s:4:\"type\";s:8:\"taxonomy\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:8:\"taxonomy\";s:10:\"instructor\";s:10:\"field_type\";s:6:\"select\";s:10:\"allow_null\";i:1;s:8:\"add_term\";i:1;s:10:\"save_terms\";i:0;s:10:\"load_terms\";i:0;s:13:\"return_format\";s:6:\"object\";s:8:\"multiple\";i:0;}', '', 'stt_home_instructor_sub', 'publish', 'closed', 'closed', '', 'field_5beae7cc84249', '', '', '2018-11-14 19:07:45', '2018-11-14 19:07:45', '', 148, 'http://localhost/songtute.vn/?post_type=acf-field&#038;p=149', 0, 'acf-field', '', 0),
(150, 1, '2018-11-13 15:07:10', '2018-11-13 15:07:10', '', 'Home top 3 bài', '', 'publish', 'closed', 'closed', '', 'home-top-3-bai', '', '', '2018-11-13 18:29:05', '2018-11-13 18:29:05', '', 0, 'http://localhost/songtute.vn/?post_type=zone&#038;p=150', 0, 'zone', '', 0),
(151, 1, '2018-11-13 15:07:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-13 15:07:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/songtute.vn/?post_type=zone&p=151', 0, 'zone', '', 0),
(152, 1, '2018-11-13 15:07:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-13 15:07:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/songtute.vn/?post_type=zone&p=152', 0, 'zone', '', 0),
(153, 1, '2018-11-13 15:07:58', '2018-11-13 15:07:58', '', 'Home chuyên mục', '', 'publish', 'closed', 'closed', '', 'home-chuyen-muc', '', '', '2018-11-15 15:28:23', '2018-11-15 15:28:23', '', 0, 'http://localhost/songtute.vn/?post_type=zone&#038;p=153', 0, 'zone', '', 0),
(154, 1, '2018-11-13 15:08:21', '2018-11-13 15:08:21', '', 'Home bài mới nhất', '', 'publish', 'closed', 'closed', '', 'home-bai-moi-nhat', '', '', '2018-11-15 14:14:31', '2018-11-15 14:14:31', '', 0, 'http://localhost/songtute.vn/?post_type=zone&#038;p=154', 0, 'zone', '', 0),
(155, 1, '2018-11-13 15:09:15', '2018-11-13 15:09:15', '', 'Home cộng đồng tử tế', '', 'publish', 'closed', 'closed', '', 'home-cong-dong-tu-te', '', '', '2018-11-13 15:09:15', '2018-11-13 15:09:15', '', 0, 'http://localhost/songtute.vn/?post_type=zone&#038;p=155', 0, 'zone', '', 0),
(158, 1, '2018-11-13 15:18:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-13 15:18:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/songtute.vn/?post_type=acf-field-group&p=158', 0, 'acf-field-group', '', 0),
(159, 1, '2018-11-13 15:22:15', '2018-11-13 15:22:15', 'a:7:{s:8:\"location\";a:1:{i:0;a:2:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"category\";}i:1;a:3:{s:5:\"param\";s:17:\"current_user_role\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"administrator\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Category', 'category', 'publish', 'closed', 'closed', '', 'group_5beaeb5b95511', '', '', '2018-11-18 15:37:22', '2018-11-18 15:37:22', '', 0, 'http://localhost/songtute.vn/?post_type=acf-field-group&#038;p=159', 0, 'acf-field-group', '', 0),
(160, 1, '2018-11-13 15:22:15', '2018-11-13 15:22:15', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";i:380;s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Hình ảnh', 'cate_thumbnail', 'publish', 'closed', 'closed', '', 'field_5beaeb6eb69e4', '', '', '2018-11-13 15:22:35', '2018-11-13 15:22:35', '', 159, 'http://localhost/songtute.vn/?post_type=acf-field&#038;p=160', 0, 'acf-field', '', 0),
(161, 1, '2018-11-13 17:18:47', '2018-11-13 17:18:47', '', 'Yoga cơ bản – Bài tập cho cổ và vai', 'Có mặt tại hàng trăm quốc gia trên toàn thế giới, là ưu tiên số 1 trong tất cả các “bí kíp” kéo dài sức khỏe, vẻ đẹp thanh xuân và tuổi thọ, Yoga được biết đến là “phép màu” trong phòng tập thể dục thể thao khắp hành tinh. ', 'publish', 'closed', 'closed', '', 'demo-playlist-1', '', '', '2018-11-16 17:37:23', '2018-11-16 17:37:23', '', 0, 'http://localhost/songtute.vn/?post_type=playlist&#038;p=161', 0, 'playlist', '', 0),
(162, 1, '2018-11-13 17:02:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-13 17:02:32', '0000-00-00 00:00:00', '', 0, 'http://hpk.dev/songtute.vn/?p=162', 0, 'post', '', 0),
(163, 1, '2018-11-13 17:19:02', '2018-11-13 17:19:02', '', 'Cá hồi nướng cà ri', 'Thưởng thức món cá hồi nướng cà ri thơm ngon, nóng hổi lại có chút cay cay thật hấp dẫn. Món chính bữa cơm gia đình cũng nên thay đổi vị chút ít nhỉ, ngoài ra, đây cũng sẽ là gợi ý thú vị của buổi tiệc của nhà bạn đấy.', 'publish', 'closed', 'closed', '', 'demo-recipe-1', '', '', '2018-11-16 17:45:35', '2018-11-16 17:45:35', '', 0, 'http://khuyen.local/songtute.vn/?post_type=recipe&#038;p=163', 0, 'recipe', '', 0),
(164, 1, '2018-11-13 17:18:31', '2018-11-13 17:18:31', '', 'mon-an-ngay-tet', '', 'inherit', 'open', 'closed', '', 'mon-an-ngay-tet', '', '', '2018-11-13 17:18:34', '2018-11-13 17:18:34', '', 163, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/mon-an-ngay-tet.jpg', 0, 'attachment', 'image/jpeg', 0),
(166, 1, '2018-11-13 17:18:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-13 17:18:56', '0000-00-00 00:00:00', '', 0, 'http://khuyen.local/songtute.vn/?post_type=playlist&p=166', 0, 'playlist', '', 0),
(167, 1, '2018-11-13 17:22:49', '2018-11-13 17:22:49', '', 'Yoga cơ bản – Tư thế xoay vai', 'Yoga là phương pháp tập luyện đòi hỏi sự kết hợp cao độ của tinh thần và thể xác tại cùng một thời điểm. ', 'publish', 'closed', 'closed', '', 'demo-playlist-2', '', '', '2018-11-16 17:37:21', '2018-11-16 17:37:21', '', 0, 'http://khuyen.local/songtute.vn/?post_type=playlist&#038;p=167', 0, 'playlist', '', 0),
(168, 1, '2018-11-13 17:21:52', '2018-11-13 17:21:52', '', 'Gà nướng ớt kiểu Châu Phi', 'Gà nướng kiểu Châu Phi với phần sốt ướp gà tới 15 loại gia vị khác nhau thấm đẫm trong từng thớ thịt, một món gà nướng không thể cưỡng lại cho mỗi dịp party đó nha.', 'publish', 'closed', 'closed', '', 'demo-recipe-2', '', '', '2018-11-16 17:45:33', '2018-11-16 17:45:33', '', 0, 'http://khuyen.local/songtute.vn/?post_type=recipe&#038;p=168', 0, 'recipe', '', 0),
(169, 1, '2018-11-13 17:19:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-13 17:19:40', '0000-00-00 00:00:00', '', 0, 'http://khuyen.local/songtute.vn/?p=169', 0, 'post', '', 0),
(170, 1, '2018-11-13 17:21:43', '2018-11-13 17:21:43', '', '1389142773-gio-xao12', '', 'inherit', 'open', 'closed', '', '1389142773-gio-xao12', '', '', '2018-11-13 17:21:46', '2018-11-13 17:21:46', '', 168, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/1389142773-gio-xao12.jpg', 0, 'attachment', 'image/jpeg', 0),
(171, 1, '2018-11-13 17:21:51', '2018-11-13 17:21:51', '<iframe width=\"320\" height=\"180\" src=\"https://www.youtube.com/embed/CcASKiC7jHA?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '', '', 'publish', 'closed', 'closed', '', '92ee551668471f9f57ef4996ccda48c5', '', '', '2018-11-13 17:21:51', '2018-11-13 17:21:51', '', 0, 'http://khuyen.local/songtute.vn/yoga/92ee551668471f9f57ef4996ccda48c5-171.html', 0, 'oembed_cache', '', 0),
(172, 1, '2018-11-13 17:22:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-13 17:22:05', '0000-00-00 00:00:00', '', 0, 'http://khuyen.local/songtute.vn/?p=172', 0, 'post', '', 0),
(173, 1, '2018-11-13 17:22:43', '2018-11-13 17:22:43', '', 'samp01', '', 'inherit', 'open', 'closed', '', 'samp01', '', '', '2018-11-13 17:22:43', '2018-11-13 17:22:43', '', 0, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/samp01.png', 0, 'attachment', 'image/png', 0),
(178, 1, '2018-11-13 17:24:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-13 17:24:45', '0000-00-00 00:00:00', '', 0, 'http://khuyen.local/songtute.vn/?p=178', 0, 'post', '', 0),
(181, 1, '2018-11-13 17:44:33', '2018-11-13 17:44:33', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2018-11-13 17:44:33', '2018-11-13 17:44:33', '', 167, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/download.jpg', 0, 'attachment', 'image/jpeg', 0),
(182, 1, '2018-11-13 17:46:55', '2018-11-13 17:46:55', '', 'Thịt bò nướng mè rang', 'Buổi tối quây quần bên gia đình luôn cần hơn hết những bữa ăn ngon. Không còn gì bằng một bữa tối với những cuộn salad gói thịt bò nướng mè bên trong, thịt dai dai thơm lừng mùi mè rang, chấm nước mắm tỏi ớt. ', 'publish', 'closed', 'closed', '', 'demo-recipe-3', '', '', '2018-11-16 17:45:31', '2018-11-16 17:45:31', '', 0, 'http://khuyen.local/songtute.vn/?post_type=recipe&#038;p=182', 0, 'recipe', '', 0),
(183, 1, '2018-11-13 17:45:31', '2018-11-13 17:45:31', '{{unknown}}', '', '', 'publish', 'closed', 'closed', '', '01d60a1df50df9c8c172b01a2f855e22', '', '', '2018-11-13 17:45:31', '2018-11-13 17:45:31', '', 0, 'http://khuyen.local/songtute.vn/yoga/01d60a1df50df9c8c172b01a2f855e22-183.html', 0, 'oembed_cache', '', 0),
(184, 1, '2018-11-13 17:45:51', '2018-11-13 17:45:51', '', 'download', '', 'inherit', 'open', 'closed', '', 'download-2', '', '', '2018-11-13 17:45:51', '2018-11-13 17:45:51', '', 161, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/download-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(185, 1, '2018-11-13 17:45:57', '2018-11-13 17:45:57', '', 'download (1)', '', 'inherit', 'open', 'closed', '', 'download-1', '', '', '2018-11-13 17:45:57', '2018-11-13 17:45:57', '', 161, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/download-1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(186, 1, '2018-11-13 17:46:08', '2018-11-13 17:46:08', '', 'images', '', 'inherit', 'open', 'closed', '', 'images', '', '', '2018-11-13 17:46:08', '2018-11-13 17:46:08', '', 182, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/images.jpeg', 0, 'attachment', 'image/jpeg', 0),
(187, 1, '2018-11-13 17:46:39', '2018-11-13 17:46:39', '', 'Yoga cơ bản – Tư thế xoay eo', 'Yoga phù hợp cho mọi lứa tuổi, giới tính, mọi thể trạng, tình trạng sức khỏe và đáp ứng tất cả nhu cầu về hình thể cũng như lợi ích sức khỏe lâu dài.', 'publish', 'closed', 'closed', '', 'demo-playlist-3', '', '', '2018-11-18 14:39:57', '2018-11-18 14:39:57', '', 0, 'http://khuyen.local/songtute.vn/?post_type=playlist&#038;p=187', 0, 'playlist', '', 0),
(188, 1, '2018-11-15 14:44:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-15 14:44:14', '0000-00-00 00:00:00', '', 0, 'http://khuyen.local/songtute.vn/?post_type=zone&p=188', 0, 'zone', '', 0),
(189, 1, '2018-11-15 15:00:36', '2018-11-15 15:00:36', 'a:7:{s:8:\"location\";a:1:{i:0;a:3:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"zone\";}i:1;a:3:{s:5:\"param\";s:17:\"current_user_role\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"administrator\";}i:2;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"194\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Chuyên mục tập luyện top 3 bài', 'chuyen-muc-tap-luyen-top-3-bai', 'publish', 'closed', 'closed', '', 'group_5bed86973be34', '', '', '2018-11-15 15:02:46', '2018-11-15 15:02:46', '', 0, 'http://khuyen.local/songtute.vn/?post_type=acf-field-group&#038;p=189', 0, 'acf-field-group', '', 0),
(191, 1, '2018-11-15 15:00:36', '2018-11-15 15:00:36', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:3;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Chọn 3 bài chuyên mục tập luyện', 'sst_cate_train_top', 'publish', 'closed', 'closed', '', 'field_5bed878fbc7e0', '', '', '2018-11-15 15:00:36', '2018-11-15 15:00:36', '', 189, 'http://khuyen.local/songtute.vn/?post_type=acf-field&p=191', 0, 'acf-field', '', 0),
(192, 1, '2018-11-15 15:00:36', '2018-11-15 15:00:36', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:3:{i:0;s:8:\"playlist\";i:1;s:6:\"recipe\";i:2;s:4:\"post\";}s:8:\"taxonomy\";a:0:{}s:10:\"allow_null\";i:1;s:8:\"multiple\";i:0;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', '', 'sst_cate_train_top_sub', 'publish', 'closed', 'closed', '', 'field_5bed87c2bc7e1', '', '', '2018-11-15 15:00:36', '2018-11-15 15:00:36', '', 191, 'http://khuyen.local/songtute.vn/?post_type=acf-field&p=192', 0, 'acf-field', '', 0),
(193, 1, '2018-11-15 15:00:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-11-15 15:00:44', '0000-00-00 00:00:00', '', 0, 'http://khuyen.local/songtute.vn/?post_type=acf-field-group&p=193', 0, 'acf-field-group', '', 0),
(194, 1, '2018-11-15 15:02:03', '2018-11-15 15:02:03', '', 'Chuyện mục tập luyện top 3 bài', '', 'publish', 'closed', 'closed', '', 'chuyen-muc-tap-luyen-top-3-bai', '', '', '2018-11-15 15:02:03', '2018-11-15 15:02:03', '', 0, 'http://khuyen.local/songtute.vn/?post_type=zone&#038;p=194', 0, 'zone', '', 0),
(195, 1, '2018-11-15 15:09:15', '2018-11-15 15:09:15', 'a:7:{s:8:\"location\";a:1:{i:0;a:3:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"zone\";}i:1;a:3:{s:5:\"param\";s:17:\"current_user_role\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:13:\"administrator\";}i:2;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"198\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Chuyên mục tập luyện instructors', 'chuyen-muc-tap-luyen-instructors', 'publish', 'closed', 'closed', '', 'group_5bed8b58366d9', '', '', '2018-11-18 06:02:56', '2018-11-18 06:02:56', '', 0, 'http://khuyen.local/songtute.vn/?post_type=acf-field-group&#038;p=195', 0, 'acf-field-group', '', 0);
INSERT INTO `hpk_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(196, 1, '2018-11-15 15:09:15', '2018-11-15 15:09:15', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:5;s:3:\"max\";i:5;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Chọn instructors chuyện mục tập luyện', 'sst_cate_train_instructor', 'publish', 'closed', 'closed', '', 'field_5bed8b6668bfd', '', '', '2018-11-18 06:02:56', '2018-11-18 06:02:56', '', 195, 'http://khuyen.local/songtute.vn/?post_type=acf-field&#038;p=196', 0, 'acf-field', '', 0),
(197, 1, '2018-11-15 15:09:15', '2018-11-15 15:09:15', 'a:13:{s:4:\"type\";s:8:\"taxonomy\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:8:\"taxonomy\";s:10:\"instructor\";s:10:\"field_type\";s:6:\"select\";s:10:\"allow_null\";i:1;s:8:\"add_term\";i:1;s:10:\"save_terms\";i:0;s:10:\"load_terms\";i:0;s:13:\"return_format\";s:6:\"object\";s:8:\"multiple\";i:0;}', '', 'sst_cate_train_instructor_sub', 'publish', 'closed', 'closed', '', 'field_5bed8b9468bfe', '', '', '2018-11-15 15:09:15', '2018-11-15 15:09:15', '', 196, 'http://khuyen.local/songtute.vn/?post_type=acf-field&p=197', 0, 'acf-field', '', 0),
(198, 1, '2018-11-15 15:10:38', '2018-11-15 15:10:38', '', 'Chuyên mục tập luyện instructors', '', 'publish', 'closed', 'closed', '', 'chuyen-muc-tap-luyen-instructors', '', '', '2018-11-18 06:01:58', '2018-11-18 06:01:58', '', 0, 'http://khuyen.local/songtute.vn/?post_type=zone&#038;p=198', 0, 'zone', '', 0),
(199, 1, '2018-11-15 18:02:35', '2018-11-15 18:02:35', '', '10l_jj14_darack_uav33_live', '', 'inherit', 'open', 'closed', '', '10l_jj14_darack_uav33_live', '', '', '2018-11-15 18:02:37', '2018-11-15 18:02:37', '', 0, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/10l_jj14_darack_uav33_live.jpg', 0, 'attachment', 'image/jpeg', 0),
(200, 1, '2018-11-15 18:04:13', '2018-11-15 18:04:13', '', 'hay01', '', 'inherit', 'open', 'closed', '', 'hay01', '', '', '2018-11-16 17:50:30', '2018-11-16 17:50:30', '', 0, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/hay01.png', 0, 'attachment', 'image/png', 0),
(201, 1, '2018-11-15 18:04:35', '2018-11-15 18:04:35', '', 'hay02', '', 'inherit', 'open', 'closed', '', 'hay02', '', '', '2018-11-16 17:50:50', '2018-11-16 17:50:50', '', 0, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/hay02.png', 0, 'attachment', 'image/png', 0),
(202, 1, '2018-11-15 18:04:53', '2018-11-15 18:04:53', '', 'hay03', '', 'inherit', 'open', 'closed', '', 'hay03', '', '', '2018-11-16 17:49:20', '2018-11-16 17:49:20', '', 0, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/hay03.png', 0, 'attachment', 'image/png', 0),
(203, 1, '2018-11-15 18:05:19', '2018-11-15 18:05:19', '', 'hay04', '', 'inherit', 'open', 'closed', '', 'hay04', '', '', '2018-11-16 17:48:48', '2018-11-16 17:48:48', '', 0, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/hay04.png', 0, 'attachment', 'image/png', 0),
(204, 1, '2018-11-15 18:05:40', '2018-11-15 18:05:40', '', 'hay05', '', 'inherit', 'open', 'closed', '', 'hay05', '', '', '2018-11-15 18:05:41', '2018-11-15 18:05:41', '', 0, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/hay05.png', 0, 'attachment', 'image/png', 0),
(205, 1, '2018-11-15 18:05:57', '2018-11-15 18:05:57', '', 'hay06', '', 'inherit', 'open', 'closed', '', 'hay06', '', '', '2018-11-16 17:49:39', '2018-11-16 17:49:39', '', 0, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/hay06.png', 0, 'attachment', 'image/png', 0),
(206, 1, '2018-11-15 18:06:22', '2018-11-15 18:06:22', '', 'hay07', '', 'inherit', 'open', 'closed', '', 'hay07', '', '', '2018-11-16 17:50:01', '2018-11-16 17:50:01', '', 0, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/hay07.png', 0, 'attachment', 'image/png', 0),
(207, 1, '2018-11-15 18:23:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-15 18:23:46', '0000-00-00 00:00:00', '', 0, 'http://khuyen.local/songtute.vn/?p=207', 0, 'post', '', 0),
(208, 1, '2018-11-16 16:20:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-16 16:20:57', '0000-00-00 00:00:00', '', 0, 'http://khuyen.local/songtute.vn/?p=208', 0, 'post', '', 0),
(210, 1, '2018-11-16 17:23:35', '2018-11-16 17:23:35', 'Nó là một chuỗi các bài tập giúp con người một phương cách hợp tự nhiên và chế ngự bệnh tật, đẩy lùi stress... Ngoài ra, yoga cũng giúp người tập trẻ hơn, đẹp hơn.\r\n\r\n<strong>Yoga và những tác dụng tốt cho <a title=\"sức khỏe \" href=\"https://suckhoedoisong.vn/tags242/suc-khoe.tag\" target=\"_blank\" rel=\"noopener\">sức khỏe</a></strong>\r\n\r\nYoga không phải là giải phẫu thẩm mỹ. Nghĩa là không chỉ ngày một ngày hai là người tập có thể đạt được vẻ đẹp như mong muốn. Sự thăng bằng trong tâm hồn và thể xác chính là những gì mà yoga sẽ mang đến cho người tập. Yoga đòi hỏi người tập phải có lòng kiên trì và lòng tin để đạt đến trạng thái như mình mong muốn, do chính mình cố gắng mà được. Tác dụng cơ bản của yoga là mang đến sự <a title=\"khỏe mạnh \" href=\"https://suckhoedoisong.vn/tags8924/khoe-manh.tag\" target=\"_blank\" rel=\"noopener\">khỏe mạnh</a> từ bên trong và chính những điều đó mang lại cho người ta một sắc diện tươi trẻ, rạng rỡ.\r\n\r\nViệc luyện tập thường xuyên sẽ giúp kích thích sự <a title=\"tuần hoàn máu \" href=\"https://suckhoedoisong.vn/tags19429/tuan-hoan-mau.tag\" target=\"_blank\" rel=\"noopener\">tuần hoàn máu</a>, giúp tăng hiệu quả của hệ tiêu hóa, giải được các độc tố bên trong cơ thể. Không chỉ thế, tập yoga còn giúp người tập có một giấc ngủ sâu hơn và ngon hơn. Nhờ đó làn da cũng trở nên khỏe mạnh, loại bỏ được mụn, nám và các vết nhăn.\r\n\r\nĐối với thai phụ, mỗi một động tác yoga tác động thật sâu vào hệ thống tuyến nội tiết giúp người mẹ lấy lại sự cân bằng trong việc tiết ra hormon trong cơ thể, đem lại sự linh hoạt uyển chuyển cho cơ bắp, loại bỏ các chứng nhức mỏi, phù nề. Mỗi chuyển động của một động tác yoga đều vận hành theo hơi thở của thai phụ, đi sâu vào thần kinh, tạo sự vững mạnh về tâm trí và linh hồn. Hầu như tất cả những sự khó chịu trong thai kỳ đều đến từ tâm lý, với yoga bạn có thể an tâm khi cơ thể bạn linh hoạt khoẻ mạnh, tâm trí cân bằng, linh hồn kết nối yêu thương.\r\n\r\n<strong>Phối hợp tập yoga trong liệu pháp làm đẹp</strong>\r\n\r\nNhận thấy những tác dụng tuyệt vời của yoga, người ta đã áp dụng vào việc chăm sóc sắc đẹp. Kết hợp liệu pháp thiền trong thiết kế không gian, sử dụng tiếng động của nước, màu sắc, kết hợp với các sản phẩm làm đẹp như tinh dầu, kem dưỡng, cùng những thao tác <a title=\"massage da đầu \" href=\"https://suckhoedoisong.vn/tags23716/massage-da-dau.tag\" target=\"_blank\" rel=\"noopener\">massage</a> nhẹ nhàng... đã mang lại cảm giác thư giãn thật sự. Đi cùng với việc trút bỏ hết ưu phiền, hòa mình trong thế giới thiên nhiên, spa còn cho bạn làn da mịn màng, hồng hào và trẻ trung. Xu hướng hiện nay là kết hợp giữa spa và thiền để đem đến cho con người sự thanh thoát tận cùng.\r\n\r\nhttps://kenh14cdn.com/2018/10/31/7-1540999456111416836399.gif.mp4', 'Hãy thay đổi cơ thể bạn với 9 bài tập yoga cơ bản tại nhà', 'Yoga đã được biết đến trong nhiều thế kỷ và các nghiên cứu đã chứng minh rằng tập luyện yoga thường xuyên có thể cải thiện đáng kể sức khỏe thể chất và tinh thần của bạn. Dưới đây là 9 động tác cơ bản có thể tập tại nhà sẽ giúp thay đổi cơ thể bạn.', 'publish', 'open', 'open', '', 'hay-thay-doi-co-the-ban-voi-9-bai-tap-yoga-co-ban-tai-nha', '', '', '2018-11-16 17:23:35', '2018-11-16 17:23:35', '', 0, 'http://khuyen.local/songtute.vn/?p=210', 0, 'post', '', 0),
(211, 1, '2018-11-16 16:33:38', '2018-11-16 16:33:38', 'a:7:{s:8:\"location\";a:3:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"playlist\";}}i:2;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"recipe\";}}}s:8:\"position\";s:4:\"side\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Người hướng dẫn', 'nguoi-huong-dan', 'publish', 'closed', 'closed', '', 'group_5beef0184053d', '', '', '2018-11-16 16:34:39', '2018-11-16 16:34:39', '', 0, 'http://khuyen.local/songtute.vn/?post_type=acf-field-group&#038;p=211', 0, 'acf-field-group', '', 0),
(212, 1, '2018-11-16 16:33:38', '2018-11-16 16:33:38', 'a:13:{s:4:\"type\";s:8:\"taxonomy\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:8:\"taxonomy\";s:10:\"instructor\";s:10:\"field_type\";s:6:\"select\";s:10:\"allow_null\";i:0;s:8:\"add_term\";i:1;s:10:\"save_terms\";i:0;s:10:\"load_terms\";i:0;s:13:\"return_format\";s:6:\"object\";s:8:\"multiple\";i:0;}', '', 'instructor_field', 'publish', 'closed', 'closed', '', 'field_5beef06577e70', '', '', '2018-11-16 16:34:39', '2018-11-16 16:34:39', '', 211, 'http://khuyen.local/songtute.vn/?post_type=acf-field&#038;p=212', 0, 'acf-field', '', 0),
(213, 1, '2018-11-16 16:34:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-16 16:34:06', '0000-00-00 00:00:00', '', 0, 'http://khuyen.local/songtute.vn/?p=213', 0, 'post', '', 0),
(214, 1, '2018-11-16 16:37:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-16 16:37:14', '0000-00-00 00:00:00', '', 0, 'http://khuyen.local/songtute.vn/?p=214', 0, 'post', '', 0),
(215, 1, '2018-11-16 16:39:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-16 16:39:36', '0000-00-00 00:00:00', '', 0, 'http://khuyen.local/songtute.vn/?p=215', 0, 'post', '', 0),
(216, 1, '2018-11-16 16:42:11', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-16 16:42:11', '0000-00-00 00:00:00', '', 0, 'http://khuyen.local/songtute.vn/?p=216', 0, 'post', '', 0),
(217, 1, '2018-11-16 16:42:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-16 16:42:33', '0000-00-00 00:00:00', '', 0, 'http://khuyen.local/songtute.vn/?p=217', 0, 'post', '', 0),
(218, 1, '2018-11-16 16:42:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-16 16:42:44', '0000-00-00 00:00:00', '', 0, 'http://khuyen.local/songtute.vn/?p=218', 0, 'post', '', 0),
(219, 1, '2018-11-16 16:43:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-16 16:43:43', '0000-00-00 00:00:00', '', 0, 'http://khuyen.local/songtute.vn/?p=219', 0, 'post', '', 0),
(220, 1, '2018-11-16 16:52:59', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-16 16:52:59', '0000-00-00 00:00:00', '', 0, 'http://khuyen.local/songtute.vn/?p=220', 0, 'post', '', 0),
(221, 1, '2018-11-16 16:53:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-16 16:53:44', '0000-00-00 00:00:00', '', 0, 'http://khuyen.local/songtute.vn/?p=221', 0, 'post', '', 0),
(222, 1, '2018-11-16 17:00:57', '2018-11-16 17:00:57', '', 'images', '', 'inherit', 'open', 'closed', '', 'images-2', '', '', '2018-11-16 17:18:29', '2018-11-16 17:18:29', '', 0, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/images.jpg', 0, 'attachment', 'image/jpeg', 0),
(223, 1, '2018-11-16 17:02:28', '2018-11-16 17:02:28', '', 'c95231e843115d36470e527c902aa7aa--illustrations-dots', '', 'inherit', 'open', 'closed', '', 'c95231e843115d36470e527c902aa7aa-illustrations-dots', '', '', '2018-11-16 17:02:37', '2018-11-16 17:02:37', '', 0, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/c95231e843115d36470e527c902aa7aa-illustrations-dots.jpg', 0, 'attachment', 'image/jpeg', 0),
(224, 1, '2018-11-16 17:03:13', '2018-11-16 17:03:13', '', 'hau-due-mat-troi-1460439180-783720-1476109545', '', 'inherit', 'open', 'closed', '', 'hau-due-mat-troi-1460439180-783720-1476109545', '', '', '2018-11-16 17:03:20', '2018-11-16 17:03:20', '', 0, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/hau-due-mat-troi-1460439180-783720-1476109545.jpg', 0, 'attachment', 'image/jpeg', 0),
(225, 1, '2018-11-16 17:04:27', '2018-11-16 17:04:27', '', 'anh-avatar-dep-8', '', 'inherit', 'open', 'closed', '', 'anh-avatar-dep-8', '', '', '2018-11-16 17:04:35', '2018-11-16 17:04:35', '', 0, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/anh-avatar-dep-8.jpg', 0, 'attachment', 'image/jpeg', 0),
(226, 1, '2018-11-16 17:05:43', '2018-11-16 17:05:43', '', 'avatar-facebook-dep', '', 'inherit', 'open', 'closed', '', 'avatar-facebook-dep', '', '', '2018-11-16 17:05:51', '2018-11-16 17:05:51', '', 0, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/avatar-facebook-dep.jpg', 0, 'attachment', 'image/jpeg', 0),
(227, 1, '2018-11-16 17:14:54', '2018-11-16 17:14:54', '', '6a6258dfd7b006b0b30dae752171b205f8b9382b28818-alK4Sk_fw658', '', 'inherit', 'open', 'closed', '', '6a6258dfd7b006b0b30dae752171b205f8b9382b28818-alk4sk_fw658', '', '', '2018-11-16 17:15:01', '2018-11-16 17:15:01', '', 0, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/6a6258dfd7b006b0b30dae752171b205f8b9382b28818-alK4Sk_fw658.png', 0, 'attachment', 'image/png', 0),
(228, 1, '2018-11-16 17:15:39', '2018-11-16 17:15:39', '', 'avatar-doi-dep-1_015655450', '', 'inherit', 'open', 'closed', '', 'avatar-doi-dep-1_015655450', '', '', '2018-11-16 17:15:47', '2018-11-16 17:15:47', '', 0, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/avatar-doi-dep-1_015655450.jpg', 0, 'attachment', 'image/jpeg', 0),
(229, 1, '2018-11-16 17:16:34', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-16 17:16:34', '0000-00-00 00:00:00', '', 0, 'http://khuyen.local/songtute.vn/?p=229', 0, 'post', '', 0),
(230, 1, '2018-11-16 17:17:20', '2018-11-16 17:17:20', '', 'avatar-doi-dep-3_015655481', '', 'inherit', 'open', 'closed', '', 'avatar-doi-dep-3_015655481', '', '', '2018-11-16 17:17:27', '2018-11-16 17:17:27', '', 0, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/avatar-doi-dep-3_015655481.jpg', 0, 'attachment', 'image/jpeg', 0),
(231, 1, '2018-11-16 17:18:22', '2018-11-16 17:18:22', '', 'images', '', 'inherit', 'open', 'closed', '', 'images-3', '', '', '2018-11-18 06:03:50', '2018-11-18 06:03:50', '', 0, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/images-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(232, 1, '2018-11-16 17:19:20', '2018-11-16 17:19:20', '', 'naruto_avatar_by_ace_hyperhandshockz-d5k1bz9', '', 'inherit', 'open', 'closed', '', 'naruto_avatar_by_ace_hyperhandshockz-d5k1bz9', '', '', '2018-11-16 17:19:26', '2018-11-16 17:19:26', '', 0, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/naruto_avatar_by_ace_hyperhandshockz-d5k1bz9.png', 0, 'attachment', 'image/png', 0),
(233, 1, '2018-11-16 17:23:23', '2018-11-16 17:23:23', '', 'anh2', '', 'inherit', 'open', 'closed', '', 'anh2', '', '', '2018-11-16 17:23:23', '2018-11-16 17:23:23', '', 210, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/anh2.jpg', 0, 'attachment', 'image/jpeg', 0),
(234, 1, '2018-11-16 17:23:35', '2018-11-16 17:23:35', 'Nó là một chuỗi các bài tập giúp con người một phương cách hợp tự nhiên và chế ngự bệnh tật, đẩy lùi stress... Ngoài ra, yoga cũng giúp người tập trẻ hơn, đẹp hơn.\r\n\r\n<strong>Yoga và những tác dụng tốt cho <a title=\"sức khỏe \" href=\"https://suckhoedoisong.vn/tags242/suc-khoe.tag\" target=\"_blank\" rel=\"noopener\">sức khỏe</a></strong>\r\n\r\nYoga không phải là giải phẫu thẩm mỹ. Nghĩa là không chỉ ngày một ngày hai là người tập có thể đạt được vẻ đẹp như mong muốn. Sự thăng bằng trong tâm hồn và thể xác chính là những gì mà yoga sẽ mang đến cho người tập. Yoga đòi hỏi người tập phải có lòng kiên trì và lòng tin để đạt đến trạng thái như mình mong muốn, do chính mình cố gắng mà được. Tác dụng cơ bản của yoga là mang đến sự <a title=\"khỏe mạnh \" href=\"https://suckhoedoisong.vn/tags8924/khoe-manh.tag\" target=\"_blank\" rel=\"noopener\">khỏe mạnh</a> từ bên trong và chính những điều đó mang lại cho người ta một sắc diện tươi trẻ, rạng rỡ.\r\n\r\nViệc luyện tập thường xuyên sẽ giúp kích thích sự <a title=\"tuần hoàn máu \" href=\"https://suckhoedoisong.vn/tags19429/tuan-hoan-mau.tag\" target=\"_blank\" rel=\"noopener\">tuần hoàn máu</a>, giúp tăng hiệu quả của hệ tiêu hóa, giải được các độc tố bên trong cơ thể. Không chỉ thế, tập yoga còn giúp người tập có một giấc ngủ sâu hơn và ngon hơn. Nhờ đó làn da cũng trở nên khỏe mạnh, loại bỏ được mụn, nám và các vết nhăn.\r\n\r\nĐối với thai phụ, mỗi một động tác yoga tác động thật sâu vào hệ thống tuyến nội tiết giúp người mẹ lấy lại sự cân bằng trong việc tiết ra hormon trong cơ thể, đem lại sự linh hoạt uyển chuyển cho cơ bắp, loại bỏ các chứng nhức mỏi, phù nề. Mỗi chuyển động của một động tác yoga đều vận hành theo hơi thở của thai phụ, đi sâu vào thần kinh, tạo sự vững mạnh về tâm trí và linh hồn. Hầu như tất cả những sự khó chịu trong thai kỳ đều đến từ tâm lý, với yoga bạn có thể an tâm khi cơ thể bạn linh hoạt khoẻ mạnh, tâm trí cân bằng, linh hồn kết nối yêu thương.\r\n\r\n<strong>Phối hợp tập yoga trong liệu pháp làm đẹp</strong>\r\n\r\nNhận thấy những tác dụng tuyệt vời của yoga, người ta đã áp dụng vào việc chăm sóc sắc đẹp. Kết hợp liệu pháp thiền trong thiết kế không gian, sử dụng tiếng động của nước, màu sắc, kết hợp với các sản phẩm làm đẹp như tinh dầu, kem dưỡng, cùng những thao tác <a title=\"massage da đầu \" href=\"https://suckhoedoisong.vn/tags23716/massage-da-dau.tag\" target=\"_blank\" rel=\"noopener\">massage</a> nhẹ nhàng... đã mang lại cảm giác thư giãn thật sự. Đi cùng với việc trút bỏ hết ưu phiền, hòa mình trong thế giới thiên nhiên, spa còn cho bạn làn da mịn màng, hồng hào và trẻ trung. Xu hướng hiện nay là kết hợp giữa spa và thiền để đem đến cho con người sự thanh thoát tận cùng.\r\n\r\nhttps://kenh14cdn.com/2018/10/31/7-1540999456111416836399.gif.mp4', 'Hãy thay đổi cơ thể bạn với 9 bài tập yoga cơ bản tại nhà', 'Yoga đã được biết đến trong nhiều thế kỷ và các nghiên cứu đã chứng minh rằng tập luyện yoga thường xuyên có thể cải thiện đáng kể sức khỏe thể chất và tinh thần của bạn. Dưới đây là 9 động tác cơ bản có thể tập tại nhà sẽ giúp thay đổi cơ thể bạn.', 'inherit', 'closed', 'closed', '', '210-revision-v1', '', '', '2018-11-16 17:23:35', '2018-11-16 17:23:35', '', 210, 'http://khuyen.local/songtute.vn/yoga/210-revision-v1-234.html', 0, 'revision', '', 0),
(235, 1, '2018-11-16 17:25:49', '2018-11-16 17:25:49', 'Sjana Earp nổi tiếng khắp thế giới với những bức ảnh chụp các tư thế yoga đẹp mê hồn, những chuyến du lịch sang trọng và cách nhìn cuộc sống lúc nào cũng đầy lạc quan. Thế nhưng ít ai biết rằng đã có thời, người đẹp Australia này đắm chìm trong trầm cảm, bị dày vò bởi cảm giác \"mình là kẻ vô dụng\" và suy nghĩ muốn tự kết liễu cuộc đời mình.\r\n<div class=\"VCSortableInPreviewMode LayoutAlbumWrapper alignJustify\">\r\n<div class=\"LayoutAlbumContent\">\r\n<div class=\"LayoutAlbumRow\"><img class=\"aligncenter\" src=\"https://kenh14cdn.com/thumb_w/660/2018/10/9/yoga-1-15390626154141565170679-15390763109781488092895.jpg\" alt=\"Yoga Ä&amp;#227; cá»©u sá»ng ngÆ°á»i Äáº¹p n&amp;#224;y: Tá»« chá» tráº§m cáº£m vá»i cáº£m gi&amp;#225;c v&amp;#244; dá»¥ng trá» th&amp;#224;nh &amp;quot;ng&amp;#244;i sao&amp;quot; c&amp;#243; tá»i 1,4 triá»u lÆ°á»£t follow tr&amp;#234;n máº¡ng x&amp;#227; há»i - áº¢nh 1.\" /></div>\r\n<div></div>\r\n<div>Thật may mắn khi ngôi sao 23 tuổi đã có thể tìm kiếm biện pháp điều trị và chuyển biến theo hướng tích cực. Giờ đây, Sjana đã có hơn 1,4 triệu người theo dõi và có tình yêu sâu sắc dành cho yoga.</div>\r\n</div>\r\n</div>', 'Yoga đã cứu sống người đẹp này: Từ chỗ trầm cảm với cảm giác vô dụng trở thành \"ngôi sao\" có tới 1,4 triệu lượt follow trên mạng xã hội', 'Giờ đây, Sjana đã có hơn 1,4 triệu người theo dõi và có tình yêu sâu sắc dành cho yoga.', 'publish', 'open', 'open', '', 'yoga-da-cuu-song-nguoi-dep-nay-tu-cho-tram-cam-voi-cam-giac-vo-dung-tro-thanh-ngoi-sao-co-toi-14-trieu-luot-follow-tren-mang-xa-hoi', '', '', '2018-11-16 17:25:49', '2018-11-16 17:25:49', '', 0, 'http://khuyen.local/songtute.vn/?p=235', 0, 'post', '', 0),
(236, 1, '2018-11-16 17:25:42', '2018-11-16 17:25:42', '', 'bai-tap-yoga-giam-can-hieu-qua-2', '', 'inherit', 'open', 'closed', '', 'bai-tap-yoga-giam-can-hieu-qua-2', '', '', '2018-11-16 17:25:42', '2018-11-16 17:25:42', '', 235, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/bai-tap-yoga-giam-can-hieu-qua-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(237, 1, '2018-11-16 17:25:49', '2018-11-16 17:25:49', 'Sjana Earp nổi tiếng khắp thế giới với những bức ảnh chụp các tư thế yoga đẹp mê hồn, những chuyến du lịch sang trọng và cách nhìn cuộc sống lúc nào cũng đầy lạc quan. Thế nhưng ít ai biết rằng đã có thời, người đẹp Australia này đắm chìm trong trầm cảm, bị dày vò bởi cảm giác \"mình là kẻ vô dụng\" và suy nghĩ muốn tự kết liễu cuộc đời mình.\r\n<div class=\"VCSortableInPreviewMode LayoutAlbumWrapper alignJustify\">\r\n<div class=\"LayoutAlbumContent\">\r\n<div class=\"LayoutAlbumRow\"><img class=\"aligncenter\" src=\"https://kenh14cdn.com/thumb_w/660/2018/10/9/yoga-1-15390626154141565170679-15390763109781488092895.jpg\" alt=\"Yoga Ä&amp;#227; cá»©u sá»ng ngÆ°á»i Äáº¹p n&amp;#224;y: Tá»« chá» tráº§m cáº£m vá»i cáº£m gi&amp;#225;c v&amp;#244; dá»¥ng trá» th&amp;#224;nh &amp;quot;ng&amp;#244;i sao&amp;quot; c&amp;#243; tá»i 1,4 triá»u lÆ°á»£t follow tr&amp;#234;n máº¡ng x&amp;#227; há»i - áº¢nh 1.\" /></div>\r\n<div></div>\r\n<div>Thật may mắn khi ngôi sao 23 tuổi đã có thể tìm kiếm biện pháp điều trị và chuyển biến theo hướng tích cực. Giờ đây, Sjana đã có hơn 1,4 triệu người theo dõi và có tình yêu sâu sắc dành cho yoga.</div>\r\n</div>\r\n</div>', 'Yoga đã cứu sống người đẹp này: Từ chỗ trầm cảm với cảm giác vô dụng trở thành \"ngôi sao\" có tới 1,4 triệu lượt follow trên mạng xã hội', 'Giờ đây, Sjana đã có hơn 1,4 triệu người theo dõi và có tình yêu sâu sắc dành cho yoga.', 'inherit', 'closed', 'closed', '', '235-revision-v1', '', '', '2018-11-16 17:25:49', '2018-11-16 17:25:49', '', 235, 'http://khuyen.local/songtute.vn/yoga/235-revision-v1-237.html', 0, 'revision', '', 0),
(238, 1, '2018-11-16 17:28:02', '2018-11-16 17:28:02', '<b>Lớp học yoga dưới nước tại đảo Hurawalhi, Madilves</b>\r\n\r\n&nbsp;\r\n\r\n<img class=\"aligncenter\" src=\"https://kenh14cdn.com/2018/8/8/photo-1-15336936305612045096520.jpg\" alt=\"Nhá»¯ng lá»p há»c yoga Äáº·c biá»t nháº¥t tháº¿ giá»i - áº¢nh 1.\" />\r\n\r\nKhu nghỉ dưỡng 5 sao Madilves bắt đầu tổ chức lớp học yoga dưới đáy biển đầu tiên trên thế giới vào đầu năm 2018 tại đây. Trong 60 phút của mỗi buổi học, học viên sẽ được thư giãn không chỉ bởi các bài tập tại đây mà còn được ngắm nhìn toàn cảnh ra ngoài đại dương.', 'Những lớp học yoga đặc biệt nhất thế giới', 'Những địa điểm học yoga đặc biệt này sẽ giúp bạn thư giãn sau những ngày dài làm việc mệt mỏi.', 'publish', 'open', 'open', '', 'nhung-lop-hoc-yoga-dac-biet-nhat-the-gioi', '', '', '2018-11-16 17:28:02', '2018-11-16 17:28:02', '', 0, 'http://khuyen.local/songtute.vn/?p=238', 0, 'post', '', 0),
(239, 1, '2018-11-16 17:27:05', '2018-11-16 17:27:05', '', 'tap-yoga-vat-va-lam-chu-khong-don-gian-dau-3cc', '', 'inherit', 'open', 'closed', '', 'tap-yoga-vat-va-lam-chu-khong-don-gian-dau-3cc', '', '', '2018-11-16 17:27:05', '2018-11-16 17:27:05', '', 238, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/tap-yoga-vat-va-lam-chu-khong-don-gian-dau-3cc.jpg', 0, 'attachment', 'image/jpeg', 0),
(240, 1, '2018-11-16 17:28:02', '2018-11-16 17:28:02', '<b>Lớp học yoga dưới nước tại đảo Hurawalhi, Madilves</b>\r\n\r\n&nbsp;\r\n\r\n<img class=\"aligncenter\" src=\"https://kenh14cdn.com/2018/8/8/photo-1-15336936305612045096520.jpg\" alt=\"Nhá»¯ng lá»p há»c yoga Äáº·c biá»t nháº¥t tháº¿ giá»i - áº¢nh 1.\" />\r\n\r\nKhu nghỉ dưỡng 5 sao Madilves bắt đầu tổ chức lớp học yoga dưới đáy biển đầu tiên trên thế giới vào đầu năm 2018 tại đây. Trong 60 phút của mỗi buổi học, học viên sẽ được thư giãn không chỉ bởi các bài tập tại đây mà còn được ngắm nhìn toàn cảnh ra ngoài đại dương.', 'Những lớp học yoga đặc biệt nhất thế giới', 'Những địa điểm học yoga đặc biệt này sẽ giúp bạn thư giãn sau những ngày dài làm việc mệt mỏi.', 'inherit', 'closed', 'closed', '', '238-revision-v1', '', '', '2018-11-16 17:28:02', '2018-11-16 17:28:02', '', 238, 'http://khuyen.local/songtute.vn/yoga/238-revision-v1-240.html', 0, 'revision', '', 0),
(241, 1, '2018-11-16 17:28:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-16 17:28:15', '0000-00-00 00:00:00', '', 0, 'http://khuyen.local/songtute.vn/?p=241', 0, 'post', '', 0),
(242, 1, '2018-11-16 17:30:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-16 17:30:24', '0000-00-00 00:00:00', '', 0, 'http://khuyen.local/songtute.vn/?p=242', 0, 'post', '', 0),
(243, 1, '2018-11-16 17:36:47', '2018-11-16 17:36:47', '', 'Yoga cơ bản – Tư thế xoay vai', 'Yoga là phương pháp tập luyện đòi hỏi sự kết hợp cao độ của tinh thần và thể xác tại cùng một thời điểm. ', 'inherit', 'closed', 'closed', '', '167-autosave-v1', '', '', '2018-11-16 17:36:47', '2018-11-16 17:36:47', '', 167, 'http://khuyen.local/songtute.vn/yoga/167-autosave-v1-243.html', 0, 'revision', '', 0),
(244, 1, '2018-11-16 17:36:52', '2018-11-16 17:36:52', '', 'Yoga cơ bản – Tư thế xoay eo', 'Yoga phù hợp cho mọi lứa tuổi, giới tính, mọi thể trạng, tình trạng sức khỏe và đáp ứng tất cả nhu cầu về hình thể cũng như lợi ích sức khỏe lâu dài.', 'inherit', 'closed', 'closed', '', '187-autosave-v1', '', '', '2018-11-16 17:36:52', '2018-11-16 17:36:52', '', 187, 'http://khuyen.local/songtute.vn/yoga/187-autosave-v1-244.html', 0, 'revision', '', 0),
(245, 1, '2018-11-16 17:36:21', '2018-11-16 17:36:21', '', 'Yoga cơ bản – Bài tập cho cổ và vai', 'Có mặt tại hàng trăm quốc gia trên toàn thế giới, là ưu tiên số 1 trong tất cả các “bí kíp” kéo dài sức khỏe, vẻ đẹp thanh xuân và tuổi thọ, Yoga được biết đến là “phép màu” trong phòng tập thể dục thể thao khắp hành tinh. ', 'inherit', 'closed', 'closed', '', '161-autosave-v1', '', '', '2018-11-16 17:36:21', '2018-11-16 17:36:21', '', 161, 'http://khuyen.local/songtute.vn/yoga/161-autosave-v1-245.html', 0, 'revision', '', 0),
(246, 1, '2018-11-16 17:37:11', '2018-11-16 17:37:11', '', 'yoga-bay-la-gi-co-tot-khong-ft8002', '', 'inherit', 'open', 'closed', '', 'yoga-bay-la-gi-co-tot-khong-ft8002', '', '', '2018-11-16 17:37:11', '2018-11-16 17:37:11', '', 187, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/yoga-bay-la-gi-co-tot-khong-ft8002.jpg', 0, 'attachment', 'image/jpeg', 0),
(247, 1, '2018-11-16 17:44:41', '2018-11-16 17:44:41', '', 'Cá hồi nướng cà ri', 'Thưởng thức món cá hồi nướng cà ri thơm ngon, nóng hổi lại có chút cay cay thật hấp dẫn. Món chính bữa cơm gia đình cũng nên thay đổi vị chút ít nhỉ, ngoài ra, đây cũng sẽ là gợi ý thú vị của buổi tiệc của nhà bạn đấy.', 'inherit', 'closed', 'closed', '', '163-autosave-v1', '', '', '2018-11-16 17:44:41', '2018-11-16 17:44:41', '', 163, 'http://khuyen.local/songtute.vn/yoga/163-autosave-v1-247.html', 0, 'revision', '', 0),
(248, 1, '2018-11-16 17:43:46', '2018-11-16 17:43:46', '', 'recipe20117-636314858520455156', '', 'inherit', 'open', 'closed', '', 'recipe20117-636314858520455156', '', '', '2018-11-16 17:43:46', '2018-11-16 17:43:46', '', 168, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/recipe20117-636314858520455156.png', 0, 'attachment', 'image/png', 0),
(249, 1, '2018-11-16 17:44:22', '2018-11-16 17:44:22', '', 'Gà nướng ớt kiểu Châu Phi', 'Gà nướng kiểu Châu Phi với phần sốt ướp gà tới 15 loại gia vị khác nhau thấm đẫm trong từng thớ thịt, một món gà nướng không thể cưỡng lại cho mỗi dịp party đó nha.', 'inherit', 'closed', 'closed', '', '168-autosave-v1', '', '', '2018-11-16 17:44:22', '2018-11-16 17:44:22', '', 168, 'http://khuyen.local/songtute.vn/yoga/168-autosave-v1-249.html', 0, 'revision', '', 0),
(250, 1, '2018-11-16 17:44:24', '2018-11-16 17:44:24', '', 'Thịt bò nướng mè rang', '', 'inherit', 'closed', 'closed', '', '182-autosave-v1', '', '', '2018-11-16 17:44:24', '2018-11-16 17:44:24', '', 182, 'http://khuyen.local/songtute.vn/yoga/182-autosave-v1-250.html', 0, 'revision', '', 0),
(251, 1, '2018-11-16 17:44:45', '2018-11-16 17:44:45', '', 'cooky-recipe-cover-r35784', '', 'inherit', 'open', 'closed', '', 'cooky-recipe-cover-r35784', '', '', '2018-11-16 17:44:45', '2018-11-16 17:44:45', '', 182, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/cooky-recipe-cover-r35784.jpeg', 0, 'attachment', 'image/jpeg', 0),
(252, 1, '2018-11-16 17:45:00', '2018-11-16 17:45:00', '', 'yoga-bay-la-gi-co-tot-khong-ft8002', '', 'inherit', 'open', 'closed', '', 'yoga-bay-la-gi-co-tot-khong-ft8002-2', '', '', '2018-11-16 17:45:00', '2018-11-16 17:45:00', '', 163, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/yoga-bay-la-gi-co-tot-khong-ft8002-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(253, 1, '2018-11-16 17:53:10', '2018-11-16 17:53:10', '', 'avatar-facebook-dep-1', '', 'inherit', 'open', 'closed', '', 'avatar-facebook-dep-1', '', '', '2018-11-16 17:53:12', '2018-11-16 17:53:12', '', 0, 'http://khuyen.local/songtute.vn/wp-content/uploads/2018/11/avatar-facebook-dep-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(254, 1, '2018-11-18 05:20:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-18 05:20:21', '0000-00-00 00:00:00', '', 0, 'http://khuyen.local/songtute.vn/?p=254', 0, 'post', '', 0),
(255, 1, '2018-11-18 15:36:50', '2018-11-18 15:36:50', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Giới thiệu về chuyên mục', 'cate_sapo', 'publish', 'closed', 'closed', '', 'field_5bf186a2e4f24', '', '', '2018-11-18 15:37:22', '2018-11-18 15:37:22', '', 159, 'http://khuyen.local/songtute.vn/?post_type=acf-field&#038;p=255', 1, 'acf-field', '', 0),
(256, 1, '2018-11-18 16:46:43', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-18 16:46:43', '0000-00-00 00:00:00', '', 0, 'http://khuyen.local/songtute.vn/?p=256', 0, 'post', '', 0),
(257, 1, '2018-11-18 17:06:50', '2018-11-18 17:06:50', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Post Info', 'post-info', 'publish', 'closed', 'closed', '', 'group_5bf19885c35e0', '', '', '2018-11-18 17:28:49', '2018-11-18 17:28:49', '', 0, 'http://khuyen.local/songtute.vn/?post_type=acf-field-group&#038;p=257', 0, 'acf-field-group', '', 0),
(258, 1, '2018-11-18 17:06:50', '2018-11-18 17:06:50', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:3:{i:0;s:4:\"post\";i:1;s:6:\"recipe\";i:2;s:8:\"playlist\";}s:8:\"taxonomy\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:1;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'Các tin liên quan', 'post_related_items', 'publish', 'closed', 'closed', '', 'field_5bf19891ce96c', '', '', '2018-11-18 17:28:49', '2018-11-18 17:28:49', '', 257, 'http://khuyen.local/songtute.vn/?post_type=acf-field&#038;p=258', 0, 'acf-field', '', 0),
(259, 1, '2018-11-18 17:22:55', '2018-11-18 17:22:55', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"recipe\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Food info', 'food-info', 'publish', 'closed', 'closed', '', 'group_5bf19c3071d7b', '', '', '2018-11-18 17:28:19', '2018-11-18 17:28:19', '', 0, 'http://khuyen.local/songtute.vn/?post_type=acf-field-group&#038;p=259', 0, 'acf-field-group', '', 0),
(260, 1, '2018-11-18 17:22:55', '2018-11-18 17:22:55', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:6:\"recipe\";}s:8:\"taxonomy\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:1;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'Các món liên quan', 'recipe_related_items', 'publish', 'closed', 'closed', '', 'field_5bf19c8eba6b3', '', '', '2018-11-18 17:28:19', '2018-11-18 17:28:19', '', 259, 'http://khuyen.local/songtute.vn/?post_type=acf-field&#038;p=260', 0, 'acf-field', '', 0),
(261, 1, '2018-11-18 17:24:07', '2018-11-18 17:24:07', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"playlist\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Playlist Info', 'playlist-info', 'publish', 'closed', 'closed', '', 'group_5bf19ff73aca5', '', '', '2018-11-18 17:28:41', '2018-11-18 17:28:41', '', 0, 'http://khuyen.local/songtute.vn/?post_type=acf-field-group&#038;p=261', 0, 'acf-field-group', '', 0),
(262, 1, '2018-11-18 17:24:07', '2018-11-18 17:24:07', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:8:\"playlist\";}s:8:\"taxonomy\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:1;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'Các lớp liên quan', 'playlist_related_items', 'publish', 'closed', 'closed', '', 'field_5bf1a00181707', '', '', '2018-11-18 17:28:41', '2018-11-18 17:28:41', '', 261, 'http://khuyen.local/songtute.vn/?post_type=acf-field&#038;p=262', 0, 'acf-field', '', 0),
(263, 1, '2018-11-18 17:27:33', '2018-11-18 17:27:33', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"instructor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Instructor Info', 'instructor-info', 'publish', 'closed', 'closed', '', 'group_5bf1a041d7d24', '', '', '2018-11-18 17:27:33', '2018-11-18 17:27:33', '', 0, 'http://khuyen.local/songtute.vn/?post_type=acf-field-group&#038;p=263', 0, 'acf-field-group', '', 0),
(264, 1, '2018-11-18 17:27:33', '2018-11-18 17:27:33', 'a:11:{s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:0:{}s:8:\"taxonomy\";a:0:{}s:10:\"allow_null\";i:0;s:8:\"multiple\";i:1;s:13:\"return_format\";s:6:\"object\";s:2:\"ui\";i:1;}', 'Các lớp liên quan', 'instr_related_items', 'publish', 'closed', 'closed', '', 'field_5bf1a056073aa', '', '', '2018-11-18 17:27:33', '2018-11-18 17:27:33', '', 263, 'http://khuyen.local/songtute.vn/?post_type=acf-field&p=264', 0, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hpk_termmeta`
--

CREATE TABLE `hpk_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hpk_termmeta`
--

INSERT INTO `hpk_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(97, 7, 'cate_thumbnail', '203'),
(98, 7, '_cate_thumbnail', 'field_5beaeb6eb69e4'),
(99, 9, 'cate_thumbnail', '205'),
(100, 9, '_cate_thumbnail', 'field_5beaeb6eb69e4'),
(101, 10, 'cate_thumbnail', '206'),
(102, 10, '_cate_thumbnail', 'field_5beaeb6eb69e4'),
(103, 8, 'cate_thumbnail', '204'),
(104, 8, '_cate_thumbnail', 'field_5beaeb6eb69e4'),
(105, 5, 'cate_thumbnail', '200'),
(106, 5, '_cate_thumbnail', 'field_5beaeb6eb69e4'),
(107, 1, 'cate_thumbnail', '201'),
(108, 1, '_cate_thumbnail', 'field_5beaeb6eb69e4'),
(109, 27, 'instr_link', 'https://www.facebook.com/khuyen.tran.3950178'),
(110, 27, '_instr_link', 'field_5be5a90da45b9'),
(111, 27, 'instr_avatar', '222'),
(112, 27, '_instr_avatar', 'field_5be5a9b4a45ba'),
(113, 27, 'instr_cover', '231'),
(114, 27, '_instr_cover', 'field_5be5aa13a45bb'),
(115, 27, 'instr_title', 'Yoga Master'),
(116, 27, '_instr_title', 'field_5be5aa35a45bc'),
(117, 28, 'instr_link', 'https://www.facebook.com/khuyen.tran.3950178'),
(118, 28, '_instr_link', 'field_5be5a90da45b9'),
(119, 28, 'instr_avatar', '223'),
(120, 28, '_instr_avatar', 'field_5be5a9b4a45ba'),
(121, 28, 'instr_cover', '223'),
(122, 28, '_instr_cover', 'field_5be5aa13a45bb'),
(123, 28, 'instr_title', 'Food master'),
(124, 28, '_instr_title', 'field_5be5aa35a45bc'),
(125, 29, 'instr_link', 'https://www.facebook.com/khuyen.tran.3950178'),
(126, 29, '_instr_link', 'field_5be5a90da45b9'),
(127, 29, 'instr_avatar', '224'),
(128, 29, '_instr_avatar', 'field_5be5a9b4a45ba'),
(129, 29, 'instr_cover', '224'),
(130, 29, '_instr_cover', 'field_5be5aa13a45bb'),
(131, 29, 'instr_title', 'Food master'),
(132, 29, '_instr_title', 'field_5be5aa35a45bc'),
(133, 30, 'instr_link', 'https://www.facebook.com/khuyen.tran.3950178'),
(134, 30, '_instr_link', 'field_5be5a90da45b9'),
(135, 30, 'instr_avatar', '225'),
(136, 30, '_instr_avatar', 'field_5be5a9b4a45ba'),
(137, 30, 'instr_cover', '225'),
(138, 30, '_instr_cover', 'field_5be5aa13a45bb'),
(139, 30, 'instr_title', 'Yoga Master'),
(140, 30, '_instr_title', 'field_5be5aa35a45bc'),
(141, 31, 'instr_link', 'https://www.facebook.com/khuyen.tran.3950178'),
(142, 31, '_instr_link', 'field_5be5a90da45b9'),
(143, 31, 'instr_avatar', '226'),
(144, 31, '_instr_avatar', 'field_5be5a9b4a45ba'),
(145, 31, 'instr_cover', '226'),
(146, 31, '_instr_cover', 'field_5be5aa13a45bb'),
(147, 31, 'instr_title', 'Travel master'),
(148, 31, '_instr_title', 'field_5be5aa35a45bc'),
(149, 32, 'instr_link', 'https://www.facebook.com/khuyen.tran.3950178'),
(150, 32, '_instr_link', 'field_5be5a90da45b9'),
(151, 32, 'instr_avatar', '227'),
(152, 32, '_instr_avatar', 'field_5be5a9b4a45ba'),
(153, 32, 'instr_cover', '227'),
(154, 32, '_instr_cover', 'field_5be5aa13a45bb'),
(155, 32, 'instr_title', 'Yoga Master'),
(156, 32, '_instr_title', 'field_5be5aa35a45bc'),
(157, 33, 'instr_link', 'https://www.facebook.com/khuyen.tran.3950178'),
(158, 33, '_instr_link', 'field_5be5a90da45b9'),
(159, 33, 'instr_avatar', '228'),
(160, 33, '_instr_avatar', 'field_5be5a9b4a45ba'),
(161, 33, 'instr_cover', '228'),
(162, 33, '_instr_cover', 'field_5be5aa13a45bb'),
(163, 33, 'instr_title', 'Food master'),
(164, 33, '_instr_title', 'field_5be5aa35a45bc'),
(165, 34, 'instr_link', 'https://www.facebook.com/khuyen.tran.3950178'),
(166, 34, '_instr_link', 'field_5be5a90da45b9'),
(167, 34, 'instr_avatar', '230'),
(168, 34, '_instr_avatar', 'field_5be5a9b4a45ba'),
(169, 34, 'instr_cover', '230'),
(170, 34, '_instr_cover', 'field_5be5aa13a45bb'),
(171, 34, 'instr_title', 'Travel master'),
(172, 34, '_instr_title', 'field_5be5aa35a45bc'),
(173, 35, 'instr_link', 'https://www.facebook.com/khuyen.tran.3950178'),
(174, 35, '_instr_link', 'field_5be5a90da45b9'),
(175, 35, 'instr_avatar', '231'),
(176, 35, '_instr_avatar', 'field_5be5a9b4a45ba'),
(177, 35, 'instr_cover', '222'),
(178, 35, '_instr_cover', 'field_5be5aa13a45bb'),
(179, 35, 'instr_title', 'Travel master'),
(180, 35, '_instr_title', 'field_5be5aa35a45bc'),
(181, 36, 'instr_link', 'https://www.facebook.com/khuyen.tran.3950178'),
(182, 36, '_instr_link', 'field_5be5a90da45b9'),
(183, 36, 'instr_avatar', '232'),
(184, 36, '_instr_avatar', 'field_5be5a9b4a45ba'),
(185, 36, 'instr_cover', '232'),
(186, 36, '_instr_cover', 'field_5be5aa13a45bb'),
(187, 36, 'instr_title', 'Travel master'),
(188, 36, '_instr_title', 'field_5be5aa35a45bc'),
(189, 6, 'cate_thumbnail', '202'),
(190, 6, '_cate_thumbnail', 'field_5beaeb6eb69e4'),
(191, 37, 'instr_link', 'https://www.facebook.com/khuyen.tran.3950178'),
(192, 37, '_instr_link', 'field_5be5a90da45b9'),
(193, 37, 'instr_avatar', '253'),
(194, 37, '_instr_avatar', 'field_5be5a9b4a45ba'),
(195, 37, 'instr_cover', ''),
(196, 37, '_instr_cover', 'field_5be5aa13a45bb'),
(197, 37, 'instr_title', 'Travel master'),
(198, 37, '_instr_title', 'field_5be5aa35a45bc'),
(199, 2, 'cate_thumbnail', ''),
(200, 2, '_cate_thumbnail', 'field_5beaeb6eb69e4'),
(201, 2, 'cate_sapo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed libero magna, auctor vitae risus sed, fermentum sollicitudin sem. Quisque vel lorem id est malesuada rhoncus quis dapibus mi. Duis fringilla nunc nec mi pharetra tincidunt.'),
(202, 2, '_cate_sapo', 'field_5bf186a2e4f24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hpk_terms`
--

CREATE TABLE `hpk_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hpk_terms`
--

INSERT INTO `hpk_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Yoga', 'yoga', 0),
(2, 'Tập luyện', 'tap-luyen', 0),
(3, 'Ăn uống', 'an-uong', 0),
(4, 'Khám phá', 'kham-pha', 0),
(5, 'Fitness', 'fitness', 0),
(6, 'Dinh dưỡng', 'dinh-duong', 0),
(7, 'Ẩm thực', 'am-thuc', 0),
(8, 'Ý tưởng', 'y-tuong', 0),
(9, 'Địa điểm', 'dia-diem', 0),
(10, 'Sự kiện', 'su-kien', 0),
(11, 'Beginner', 'beginner', 0),
(12, 'Advanced', 'advanced', 0),
(13, 'Medium', 'medium', 0),
(27, 'Lê Tuấn', 'le-tuan', 0),
(28, 'Lê Nam', 'le-nam', 0),
(29, 'Nguyễn Nhi', 'nguyen-nhi', 0),
(30, 'Trần Nam', 'tran-nam', 0),
(31, 'Khắc Nhật', 'khac-nhat', 0),
(32, 'Bích Thảo', 'bich-thao', 0),
(33, 'Quỳnh Trân', 'quynh-tran', 0),
(34, 'Bích Phương', 'bich-phuong', 0),
(35, 'Thành Đạt', 'thanh-dat', 0),
(36, 'Quốc Anh', 'quoc-anh', 0),
(37, 'Ngọc Nhân', 'ngoc-nhan', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hpk_term_relationships`
--

CREATE TABLE `hpk_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hpk_term_relationships`
--

INSERT INTO `hpk_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(161, 1, 0),
(161, 2, 0),
(161, 11, 0),
(163, 3, 0),
(163, 6, 0),
(167, 1, 0),
(167, 2, 0),
(167, 11, 0),
(168, 3, 0),
(168, 7, 0),
(182, 3, 0),
(182, 7, 0),
(187, 1, 0),
(187, 2, 0),
(210, 1, 0),
(210, 2, 0),
(235, 1, 0),
(235, 2, 0),
(238, 1, 0),
(238, 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hpk_term_taxonomy`
--

CREATE TABLE `hpk_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hpk_term_taxonomy`
--

INSERT INTO `hpk_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 2, 6),
(2, 2, 'category', '', 0, 6),
(3, 3, 'category', '', 0, 3),
(4, 4, 'category', '', 0, 0),
(5, 5, 'category', '', 2, 0),
(6, 6, 'category', '', 3, 1),
(7, 7, 'category', '', 3, 2),
(8, 8, 'category', '', 4, 0),
(9, 9, 'category', '', 4, 0),
(10, 10, 'category', '', 4, 0),
(11, 11, 'level', '', 0, 2),
(12, 12, 'level', '', 0, 0),
(13, 13, 'level', '', 0, 0),
(27, 27, 'instructor', 'Nước mắt là dấu hiệu cho sự bất lực của tâm hồn trong việc kìm nén cảm xúc và duy trì mệnh lệnh với bản thân.', 0, 0),
(28, 28, 'instructor', 'Bệnh nhân nào cũng đem theo bên trong người thầy thuốc của chính bản thân mình.', 0, 0),
(29, 29, 'instructor', 'Con người giống như cửa sổ kính nhuộm màu. Họ bừng sáng và lấp lánh khi trời nắng và sáng sủa; nhưng khi mặt trời lặn, vẻ đẹp thực sự của họ chỉ lộ ra nếu có ánh sáng từ bên trong.', 0, 0),
(30, 30, 'instructor', 'Điều nằm sau bạn và điều nằm trước bạn không bằng được điều nằm trong bạn.', 0, 0),
(31, 31, 'instructor', 'Rốt cuộc chính những người có cuộc sống nội tâm sâu sắc và chân thực mới có thể đối phó tốt nhất với những điều khó chịu của cuộc sống bên ngoài.', 0, 0),
(32, 32, 'instructor', 'Hãy đi theo ánh trăng nội tâm của bạn; đừng che dấu sự điên rồ.', 0, 0),
(33, 33, 'instructor', 'Tôi sợ điều nằm trong bản thân mình hơn là điều đến từ ngoại cảnh.', 0, 0),
(34, 34, 'instructor', 'Người không có cuộc sống bên trong là nô lệ của môi trường bên ngoài.', 0, 0),
(35, 35, 'instructor', 'Điều gì nằm lại sau chúng ta và điều gì đang chờ chúng ta phía trước chỉ là những chuyện nhỏ nhặt nếu so sánh với điều sống trong bản thân ta.', 0, 0),
(36, 36, 'instructor', 'Đạo đức là những hành động mà một người làm để hoàn thiện tính cách nội tâm của mình.', 0, 0),
(37, 37, 'instructor', 'Sống yên vui! Bình thản, thanh bình!', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hpk_usermeta`
--

CREATE TABLE `hpk_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hpk_usermeta`
--

INSERT INTO `hpk_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'hpk_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'hpk_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,custom-post-type-permalinks-settings,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"94be34d208977f8ab16f8f8ee85ff3459338bf62e47363e003bfea409fe0a4e2\";a:4:{s:10:\"expiration\";i:1542691201;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36\";s:5:\"login\";i:1542518401;}}'),
(17, 1, 'hpk_dashboard_quick_press_last_post_id', '208'),
(18, 1, 'ac-first-login-timestamp', '1541768398'),
(19, 1, 'meta-box-order_playlist', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:48:\"submitdiv,categorydiv,leveldiv,tagsdiv-intructor\";s:6:\"normal\";s:79:\"acf-group_5be5a90928f23,acf-group_5be58a7e92904,acf-group_5be59ce230117,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(20, 1, 'screen_layout_playlist', '2'),
(22, 1, 'meta-box-order_zone', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:199:\"acf-group_5beaeb5b95511,acf-group_5beae4b77742d,acf-group_5beae7292cf11,acf-group_5beae0fb8732c,acf-group_5beadcf5d7936,acf-group_5be5a90928f23,acf-group_5be58a7e92904,acf-group_5be59ce230117,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(23, 1, 'screen_layout_zone', '2'),
(24, 1, 'closedpostboxes_zone', 'a:0:{}'),
(25, 1, 'metaboxhidden_zone', 'a:11:{i:0;s:23:\"acf-group_5beef0184053d\";i:1;s:23:\"acf-group_5bed86973be34\";i:2;s:23:\"acf-group_5beaeb5b95511\";i:3;s:23:\"acf-group_5beae4b77742d\";i:4;s:23:\"acf-group_5beae7292cf11\";i:5;s:23:\"acf-group_5beae0fb8732c\";i:6;s:23:\"acf-group_5beadcf5d7936\";i:7;s:23:\"acf-group_5be5a90928f23\";i:8;s:23:\"acf-group_5be58a7e92904\";i:9;s:23:\"acf-group_5be59ce230117\";i:10;s:7:\"slugdiv\";}'),
(27, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(28, 1, 'closedpostboxes_post', 'a:1:{i:0;s:10:\"wpseo_meta\";}'),
(29, 1, 'metaboxhidden_post', 'a:14:{i:0;s:23:\"acf-group_5beaeb5b95511\";i:1;s:23:\"acf-group_5bed8b58366d9\";i:2;s:23:\"acf-group_5bed86973be34\";i:3;s:23:\"acf-group_5beae4b77742d\";i:4;s:23:\"acf-group_5beae0fb8732c\";i:5;s:23:\"acf-group_5beae7292cf11\";i:6;s:23:\"acf-group_5beadcf5d7936\";i:7;s:23:\"acf-group_5be5a90928f23\";i:8;s:23:\"acf-group_5be58a7e92904\";i:9;s:23:\"acf-group_5be59ce230117\";i:10;s:13:\"trackbacksdiv\";i:11;s:16:\"commentstatusdiv\";i:12;s:7:\"slugdiv\";i:13;s:9:\"authordiv\";}'),
(30, 1, 'hpk_user-settings', 'libraryContent=browse'),
(31, 1, 'hpk_user-settings-time', '1542129540'),
(33, 1, 'acf_user_settings', 'a:0:{}'),
(35, 1, 'closedpostboxes_playlist', 'a:0:{}'),
(36, 1, 'metaboxhidden_playlist', 'a:10:{i:0;s:23:\"acf-group_5beaeb5b95511\";i:1;s:23:\"acf-group_5bed8b58366d9\";i:2;s:23:\"acf-group_5bed86973be34\";i:3;s:23:\"acf-group_5beae4b77742d\";i:4;s:23:\"acf-group_5beae0fb8732c\";i:5;s:23:\"acf-group_5beae7292cf11\";i:6;s:23:\"acf-group_5beadcf5d7936\";i:7;s:23:\"acf-group_5be5a90928f23\";i:8;s:23:\"acf-group_5be59ce230117\";i:9;s:7:\"slugdiv\";}'),
(37, 1, 'hpk_yoast_notifications', 'a:2:{i:0;a:2:{s:7:\"message\";s:174:\"Don\'t miss your crawl errors: <a href=\"http://khuyen.local/songtute.vn/wp-admin/admin.php?page=wpseo_search_console&tab=settings\">connect with Google Search Console here</a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:336:\"You still have the default WordPress tagline, even an empty one is probably better. <a href=\"http://khuyen.local/songtute.vn/wp-admin/customize.php?autofocus[control]=blogdescription&amp;url=http%3A%2F%2Fkhuyen.local%2Fsongtute.vn%2Fwp-admin%2Fpost.php%3Fpost%3D257%26action%3Dedit%26message%3D1\">You can fix this in the customizer</a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:28:\"wpseo-dismiss-tagline-notice\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(38, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(39, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hpk_users`
--

CREATE TABLE `hpk_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hpk_users`
--

INSERT INTO `hpk_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BgMKXtVQD4ToZiqCwU9vK08S5c4pqW1', 'admin', 'admin@gmail.com', '', '2018-11-08 16:19:55', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hpk_wpfront_ure_options`
--

CREATE TABLE `hpk_wpfront_ure_options` (
  `id` bigint(20) NOT NULL,
  `option_name` varchar(250) DEFAULT NULL,
  `option_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `hpk_wpfront_ure_options`
--

INSERT INTO `hpk_wpfront_ure_options` (`id`, `option_name`, `option_value`) VALUES
(1, 'hpk_wpfront_ure_options-db-version', '2.14.1'),
(2, 'attachment_capabilities_processed', '1'),
(3, 'user_permission_capabilities_processed', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hpk_yoast_seo_links`
--

CREATE TABLE `hpk_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hpk_yoast_seo_links`
--

INSERT INTO `hpk_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`) VALUES
(14, 'https://suckhoedoisong.vn/tags242/suc-khoe.tag', 210, 0, 'external'),
(15, 'https://suckhoedoisong.vn/tags8924/khoe-manh.tag', 210, 0, 'external'),
(16, 'https://suckhoedoisong.vn/tags19429/tuan-hoan-mau.tag', 210, 0, 'external'),
(17, 'https://suckhoedoisong.vn/tags23716/massage-da-dau.tag', 210, 0, 'external'),
(18, 'https://kenh14cdn.com/2018/10/31/7-1540999456111416836399.gif.mp4', 210, 0, 'external');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hpk_yoast_seo_meta`
--

CREATE TABLE `hpk_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hpk_yoast_seo_meta`
--

INSERT INTO `hpk_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(1, 0, 0),
(4, 0, 0),
(5, 0, 0),
(6, 0, 0),
(7, 0, 0),
(8, 0, 0),
(9, 0, 0),
(10, 0, 0),
(11, 0, 0),
(12, 0, 0),
(13, 0, 0),
(32, 0, 0),
(38, 0, 0),
(39, 0, 0),
(40, 0, 0),
(41, 0, 0),
(42, 0, 0),
(44, 0, 0),
(45, 0, 0),
(46, 0, 0),
(47, 0, 0),
(48, 0, 0),
(49, 0, 0),
(50, 0, 0),
(53, 0, 0),
(54, 0, 0),
(55, 0, 0),
(56, 0, 0),
(57, 0, 0),
(58, 0, 0),
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0),
(67, 0, 0),
(68, 0, 0),
(69, 0, 0),
(70, 0, 0),
(71, 0, 0),
(72, 0, 0),
(73, 0, 0),
(74, 0, 0),
(75, 0, 0),
(76, 0, 0),
(77, 0, 0),
(78, 0, 0),
(80, 0, 0),
(81, 0, 0),
(82, 0, 0),
(83, 0, 0),
(84, 0, 0),
(85, 0, 0),
(86, 0, 0),
(87, 0, 0),
(88, 0, 0),
(89, 0, 0),
(90, 0, 0),
(91, 0, 0),
(92, 0, 0),
(93, 0, 0),
(94, 0, 0),
(95, 0, 0),
(96, 0, 0),
(97, 0, 0),
(98, 0, 0),
(101, 0, 0),
(102, 0, 0),
(103, 0, 0),
(104, 0, 0),
(105, 0, 0),
(106, 0, 0),
(107, 0, 0),
(108, 0, 0),
(109, 0, 0),
(111, 0, 0),
(112, 0, 0),
(114, 0, 0),
(115, 0, 0),
(116, 0, 0),
(117, 0, 0),
(118, 0, 0),
(119, 0, 0),
(120, 0, 0),
(121, 0, 0),
(122, 0, 0),
(123, 0, 0),
(124, 0, 0),
(126, 0, 0),
(127, 0, 0),
(156, 0, 0),
(157, 0, 0),
(161, 0, 0),
(163, 0, 0),
(165, 0, 0),
(167, 0, 0),
(168, 0, 0),
(174, 0, 0),
(175, 0, 0),
(176, 0, 0),
(177, 0, 0),
(179, 0, 0),
(180, 0, 0),
(182, 0, 0),
(187, 0, 0),
(188, 0, 0),
(190, 0, 0),
(209, 0, 0),
(210, 0, 0),
(235, 0, 0),
(238, 0, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `hpk_commentmeta`
--
ALTER TABLE `hpk_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `hpk_comments`
--
ALTER TABLE `hpk_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Chỉ mục cho bảng `hpk_links`
--
ALTER TABLE `hpk_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Chỉ mục cho bảng `hpk_options`
--
ALTER TABLE `hpk_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Chỉ mục cho bảng `hpk_postmeta`
--
ALTER TABLE `hpk_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `hpk_posts`
--
ALTER TABLE `hpk_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Chỉ mục cho bảng `hpk_termmeta`
--
ALTER TABLE `hpk_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `hpk_terms`
--
ALTER TABLE `hpk_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Chỉ mục cho bảng `hpk_term_relationships`
--
ALTER TABLE `hpk_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Chỉ mục cho bảng `hpk_term_taxonomy`
--
ALTER TABLE `hpk_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Chỉ mục cho bảng `hpk_usermeta`
--
ALTER TABLE `hpk_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Chỉ mục cho bảng `hpk_users`
--
ALTER TABLE `hpk_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Chỉ mục cho bảng `hpk_wpfront_ure_options`
--
ALTER TABLE `hpk_wpfront_ure_options`
  ADD UNIQUE KEY `id` (`id`);

--
-- Chỉ mục cho bảng `hpk_yoast_seo_links`
--
ALTER TABLE `hpk_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Chỉ mục cho bảng `hpk_yoast_seo_meta`
--
ALTER TABLE `hpk_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `hpk_commentmeta`
--
ALTER TABLE `hpk_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hpk_comments`
--
ALTER TABLE `hpk_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hpk_links`
--
ALTER TABLE `hpk_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hpk_options`
--
ALTER TABLE `hpk_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=560;

--
-- AUTO_INCREMENT cho bảng `hpk_postmeta`
--
ALTER TABLE `hpk_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=692;

--
-- AUTO_INCREMENT cho bảng `hpk_posts`
--
ALTER TABLE `hpk_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT cho bảng `hpk_termmeta`
--
ALTER TABLE `hpk_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT cho bảng `hpk_terms`
--
ALTER TABLE `hpk_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `hpk_term_taxonomy`
--
ALTER TABLE `hpk_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `hpk_usermeta`
--
ALTER TABLE `hpk_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `hpk_users`
--
ALTER TABLE `hpk_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `hpk_wpfront_ure_options`
--
ALTER TABLE `hpk_wpfront_ure_options`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `hpk_yoast_seo_links`
--
ALTER TABLE `hpk_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
